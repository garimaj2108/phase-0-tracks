# OPERATION PARTY PLANNING MENU!
# This interface is designed to help you with any party that you host.
# This interface will provide users with menu options

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database

db = SQLite3::Database.new("party_menu.db")
#db.results_as_hash = true


# learn about fancy string delimiters

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS appetizers(
    appetizer_id INTEGER PRIMARY KEY,
    appetizer_name VARCHAR(255),
    appetizer_description VARCHAR(255)
  )
SQL

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS main_course(
    main_course_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    main_course_descr VARCHAR(255)
  )
SQL

create_table_cmd_1 = <<-SQL
  CREATE TABLE IF NOT EXISTS dessert(
    dessert_id INTEGER PRIMARY KEY,
    dessert_name VARCHAR(255),
    dessert_description VARCHAR(255)
  )
SQL



# create a kittens table (if it's not there already)
db.execute(create_table)
db.execute(create_table_cmd)
db.execute(create_table_cmd_1)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

