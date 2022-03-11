class GuessingGame
  # DEFINING CONSTANTS

  RESULT_OF_GUESS_MESSAGE = {
    high: "Your number is too high.",
    low: "Your number is too low.",
    match: "That's the number!"
  }.freeze

  WIN_OR_LOSE = {
    high:  :lose,
    low:   :lose,
    match: :win
  }.freeze

  RESULT_OF_GAME_MESSAGE = {
    win: "You won!",
    lose: "You have no more guesses. You lost!"
  }.freeze

  def initialize(min=1, max=100)
    @range = (min..max)
    @max_guesses = Math.log2(@range.size).to_i + 1
    @number = nil
  end

  def play
    reset
    game_result = play_game
    display_game_end_message(game_result)
  end # end play

  private 

  def display_game_end_message(game_result)
    puts RESULT_OF_GAME_MESSAGE[game_result]
  end

  def reset
    @number = rand(@range)
  end

  def play_game
    result = nil
    @max_guesses.downto(1) do |guesses_left|
      display_remaining_guesses(guesses_left)
      result = check_guess(obtain_one_guess)
      puts RESULT_OF_GUESS_MESSAGE[result]
      puts ""
      break if result == :match
    end
    WIN_OR_LOSE[result]
  end

  def display_remaining_guesses(guesses_left)
    case guesses_left
    when 1 then puts "You have 1 guess remaining."
    else puts "You have #{guesses_left} remaining guesses."
    end
  end

  def obtain_one_guess
    print "Enter a number between #{@range.first} and #{@range.last}: "
    guess = gets.chomp.to_i
    loop do
      break if valid_guess?(guess)
      print "Invalid guess. Enter a number between #{@range.first} and #{@range.last}: "
      guess = gets.chomp.to_i
    end # end guess validation
    guess
  end

  def check_guess(guess)
    return :match if guess == @number
    guess > @number ? :high : :low
  end

  def valid_guess?(number)
    @range.cover?(number)
  end
end

game = GuessingGame.new(501, 1500)
game.play

=begin


You have 10 guesses remaining.
Enter a number between 501 and 1500: 104
Invalid guess. Enter a number between 501 and 1500: 1000
Your guess is too low.

You have 9 guesses remaining.
Enter a number between 501 and 1500: 1250
Your guess is too low.

You have 8 guesses remaining.
Enter a number between 501 and 1500: 1375
Your guess is too high.

You have 7 guesses remaining.
Enter a number between 501 and 1500: 80
Invalid guess. Enter a number between 501 and 1500: 1312
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 501 and 1500: 1343
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 501 and 1500: 1359
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 501 and 1500: 1351
Your guess is too high.

You have 3 guesses remaining.
Enter a number between 501 and 1500: 1355
That's the number!

You won!

game.play
You have 10 guesses remaining.
Enter a number between 501 and 1500: 1000
Your guess is too high.

You have 9 guesses remaining.
Enter a number between 501 and 1500: 750
Your guess is too low.

You have 8 guesses remaining.
Enter a number between 501 and 1500: 875
Your guess is too high.

You have 7 guesses remaining.
Enter a number between 501 and 1500: 812
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 501 and 1500: 843
Your guess is too high.

You have 5 guesses remaining.
Enter a number between 501 and 1500: 820
Your guess is too low.

You have 4 guesses remaining.
Enter a number between 501 and 1500: 830
Your guess is too low.

You have 3 guesses remaining.
Enter a number between 501 and 1500: 835
Your guess is too low.

You have 2 guesses remaining.
Enter a number between 501 and 1500: 836
Your guess is too low.

You have 1 guesses remaining.
Enter a number between 501 and 1500: 837
Your guess is too low.

You have no more guesses. You lost!
=end
