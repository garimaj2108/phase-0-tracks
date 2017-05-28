class WordGuess
  def initialize
    @guess_count = 0
  end

  def guess_limit(user_one_input)
    while @guess_count < user_one_input.length
      @guess_count += 1
  end

end
