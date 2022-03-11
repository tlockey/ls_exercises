class GuessingGame
  # DEFINING CONSTANTS
  RANGE = 1..100
  MAX_GUESSES = 7

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

  def initialize
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
    @number = rand(RANGE)
  end

  def play_game
    result = nil
    MAX_GUESSES.downto(1) do |guesses_left|
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
    print "Enter a number between 1 and 100: "
    guess = gets.chomp.to_i
    loop do
      break if valid_guess?(guess)
      puts "Invalid guess. Enter a number between #{RANGE.first} and #{RANGE.last}:"
      guess = gets.chomp.to_i
    end # end guess validation
    guess
  end

  def check_guess(guess)
    return :match if guess == @number
    guess > @number ? :high : :low
  end

  def valid_guess?(number)
    RANGE.cover?(number)
  end
end

game = GuessingGame.new
game.play
# puts game.get_number
# puts game.valid_guess?(1000) == false
# puts game.valid_guess?(21) == true

=begin

You have 7 guesses remaining.
Enter a number between 1 and 100: 104
Invalid guess. Enter a number between 1 and 100: 50
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 1 and 100: 75
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 85
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 0
Invalid guess. Enter a number between 1 and 100: 80

You have 3 guesses remaining.
Enter a number between 1 and 100: 81
That's the number!

You won!

game.play

You have 7 guesses remaining.
Enter a number between 1 and 100: 50
Your guess is too high.

You have 6 guesses remaining.
Enter a number between 1 and 100: 25
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 37
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 31
Your guess is too low.

You have 3 guesses remaining.
Enter a number between 1 and 100: 34
Your guess is too high.

You have 2 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have 1 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have no more guesses. You lost!

=end
