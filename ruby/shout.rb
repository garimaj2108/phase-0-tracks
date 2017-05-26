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

class Male
  include Shout
end

  class Female
    include Shout
  end

  tom = Male.new
  tom.yell_angrily("Buzz off")
  tom.yelling_happily("La di da di..")

  samantha = Female.new
  samantha.yell_angrily("Aaarghhh")
  samantha.yelling_happily("Its a beautiful day..")






