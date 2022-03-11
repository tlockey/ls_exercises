=begin
Problem: Create a circular queue
Rules:
- a circular queue has a limited buffer, e.g. room for only 3 objects
- when a new object is added, it follows the most recently added object
- when removing an object, it's always the object that has been in the queue longest
- when adding a new object to a full queue, the new object replaces the oldest object

Steps:
- create a container that has doesn't expand
- keep track of how recently an object has been added

CircularQueue
- has a queue composed of qeued_objects
- has objects

QueuedObject
- 


=end
class CircularQueue
  def initialize(size)
    @queue = [nil] * size
  end

  def dequeue
    return nil if empty_queue?

    @queue.each_with_index do |obj, idx|
      unless obj.nil?
        if obj.id == oldest_item.id
          oldest = obj
          @queue[idx] = nil
          return oldest.obj
        end
      end
    end
  end

  def enqueue(obj)
      @queue[next_index] = QueuedObject.new(obj)
  end

  def empty_queue?
    @queue.all?(&:nil?)
  end

  def full_queue?
    @queue.none?(&:nil?)
  end

  def next_index
    if empty_queue?
      return 0
    elsif full_queue?
      dequeue
      find_next_nil
    else
      find_next_nil
    end
  end

  def find_next_nil
    # starting from last added item
    newest_id = newest_item.id
    newest_idx = @queue.each_with_index do |obj, idx|
                    unless obj.nil? 
                      break idx if obj.id == newest_id
                    end
                 end
    # finding the first nil
    (newest_idx...@queue.size).each do |idx|
      return idx if @queue[idx].nil?
    end
    (0...newest_idx).each do |idx|
      return idx if @queue[idx].nil?
    end
  end

  def oldest_item
    queued_items.min_by { |obj| obj.id }
  end

  def newest_item
    queued_items.max_by { |obj| obj.id }
  end

  def queued_items
    @queue.reject(&:nil?)
  end
end

class QueuedObject
  attr_accessor :id, :obj

  @@count = 0
  def initialize(obj)
    @@count += 1
    @id = @@count.dup
    @obj = obj
  end
end
queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
