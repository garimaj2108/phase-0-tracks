class WordGuess
  attr_accessor :guess_count, :guess_store
  attr_reader :guess_index, :guessed_letters, :input_word

# initialize method
  def initialize(input_word)
    @guess_count = 0
    @input_word = input_word
    @guess_store = Array.new(input_word.length,"_")
  end

  def player_input(guessed_letters)
    @guessed_letters = guessed_letters
  end

# Method which stores and compares input of both the game users
  def word_guess
    # This is assigning the guessues from user 2 in the array as per the index or position of the input of user 1
    if @input_word.include?(@guessed_letters)
      @guess_index = @input_word.index(@guessed_letters)
      @guess_store[@guess_index] = @guessed_letters
      p @guess_store
    else
      puts "Wrong guess! Keep Trying :)"
    end
  end


  def result
    if @input_word.eql?@guess_store
      puts "Congratulations you won!"
    else
      puts "Booo! You lose, better luck next time !"
    end
  end

end # Class ends

# Driver Code
new_game = WordGuess.new("unicorn".split('')) # Initializing and creating a new object

puts "Welcome to the Word Guessing game!"
puts "Player 1: Please enter a word for your opponent to guess!"
player_1 = new_game.input_word
p player_1

puts "Player 2: Your opponent has just assigned a word for you to guess!"
display = "_ " * player_1.length
p display

puts "Start guessing..."


  while new_game.guess_count < player_1.length
    # Taking input from player two
    player_2 = gets.chomp
    # Calling word_guess method from class WordGuess
    new_game.player_input(player_2)
    if new_game.guess_store.include?new_game.guessed_letters
      new_game.guess_count -= 1
      puts "Repeated guess! Enter a different letter to guess the word!"
    end
    new_game.word_guess
    puts "You guessed #{new_game.guess_count+1} letters"
    new_game.guess_count += 1
    puts "Enter another character"
  end

# Prints final array
p new_game.guess_store
# Prints result of the game
p new_game.result



