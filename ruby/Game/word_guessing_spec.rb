require_relative 'word_guessing'

describe WordGuess do
  let(:new_game) { WordGuess.new("unicorn".split('')) }

  it "has a readable input_word" do
    expect(new_game.input_word).to eq ["u","n","i","c","o","r","n"]
  end

  it "input_word should equal new_game.guess_store" do
    expect(new_game.guess_store).to eq ["_","_","_","_","_","_","_"]
  end


end
