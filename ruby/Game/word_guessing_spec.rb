require_relative 'word_guessing'

describe WordGuess do
  let(:new_game) { WordGuess.new }

  it "contains an array of all stored letters" do
    expect(new_game.guess_store).to eq ["u","n","i","c","o","r"]
  end

end
