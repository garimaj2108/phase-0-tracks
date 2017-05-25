# Declared a Santa class
class Santa

# Instance method speak greets for holidays!
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

# This instance method takes a cookie type as parameter
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

# Ruby special method initialize
  def initialize
    puts "Initializing Santa instance..."
  end

end
