# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


# A /contact route that displays an address
get '/contact' do
  "Jane works at 333 Market Street, San Fancisco!"
end


# A /contact route that displays an address using route parameters (extra, just to practice)
get '/contacts/:person/:address_line_1/:city/:state/:pin' do
  person = params[:person]
  address_line_1 = params[:address_line_1]
  city = params[:city]
  state = params[:state]
  pin = params[:pin]
  "#{person}'s Address : #{address_line_1}, #{city}, #{state}, #{pin}."
end

# A /great_job route that says "Good job, [person's name]!", if query parameter given, else the route simply says "Good job!"

get '/great_job/' do
  person_name = params[:person_name]
  if person_name
    "Good job, #{person_name}"
  else
    "Good job!"
  end
end

# A route that uses route parameters to add two numbers and respond with the result.

get '/calculation/:first_num/:second_num' do
  first_num = params[:first_num].to_i
  second_num = params[:second_num].to_i
  third_num = first_num + second_num
  "The total for entered numbers is #{first_num} + #{second_num} =  #{third_num}"
end

# route allows user to search the database by campus
get '/students/campus/:campus' do
  campus = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  campus.to_s
end

# Is Sinatra the only web app library in Ruby? What are some others?
# Ruby on Rails
# Volt
# Cramp
# Lattice etc...

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# Heroku
# Datamapper etc..

# What is meant by the term web stack?
# A Web stack is the collection of software required for Web development. At a minimum, a Web stack contains an operating system (OS), a programming language, database software and a Web server.