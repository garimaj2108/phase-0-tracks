=begin
module Shout
  def self.yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def self.yelling_happily
    puts "I am sooooooo happpyyyyy!!!"
  end

end

mood1 = Shout.yell_angrily("Aarghh")
mood2 = Shout.yelling_happily
=end

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(song)
    puts "I am sooooooo happpyyyyy!!! I am gonna listen to my happy song, #{song}"
  end
end

