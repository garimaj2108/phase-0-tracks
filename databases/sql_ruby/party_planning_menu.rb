# OPERATION PARTY PLANNING MENU!
# This interface is designed to help you with any party that you host.
# This interface will provide users with menu options

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database

db = SQLite3::Database.new("party_menu.db")
db.results_as_hash = true


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

create_table_cmd_2 = <<-SQL
  CREATE TABLE IF NOT EXISTS menu(
    menu_id INTEGER PRIMARY KEY,
    app_id INTEGER,
    main_courses_id INTEGER,
    desserts_id INTEGER,
    FOREIGN KEY(app_id) REFERENCES appetizers(appetizer_id),
    FOREIGN KEY(main_courses_id) REFERENCES main_course(main_course_id),
    FOREIGN KEY(desserts_id) REFERENCES dessert(dessert_id)
  )
SQL


# create a kittens table (if it's not there already)
db.execute(create_table)
db.execute(create_table_cmd)
db.execute(create_table_cmd_1)
db.execute(create_table_cmd_2)


# add a test kitten
#db.execute("INSERT INTO appetizers (appetizer_name, appetizer_description) VALUES ('hummus', 'ground garbanzo beans seasoned with garlic and roasted red chilli peppers')")
#db.execute("DELETE FROM appetizers WHERE appetizer_id = 1")


# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion

def create_appetizers(db, appetizer_name, appetizer_description)
  db.execute("INSERT INTO appetizers (appetizer_name, appetizer_description) VALUES (?, ?)", [appetizer_name, appetizer_description])
end

def create_main_course(db, name, main_course_descr)
  db.execute("INSERT INTO main_course (name, main_course_descr) VALUES (?, ?)", [name, main_course_descr])
end

def create_dessert(db, dessert_name, dessert_description)
  db.execute("INSERT INTO dessert (dessert_name, dessert_description) VALUES (?, ?)", [dessert_name, dessert_description])
end

def create_menu(db, app_id, main_courses_id, desserts_id)
  db.execute("INSERT INTO menu (app_id, main_courses_id, desserts_id) VALUES (?, ?, ?)", [app_id, main_courses_id, desserts_id])
end

def view_menu(db)
  db.execute("SELECT appetizers.appetizer_name, appetizers.appetizer_description, main_course.name, main_course.main_course_descr, dessert.dessert_name, dessert.dessert_description
   FROM appetizers, main_course, dessert JOIN menu ON (menu.app_id = appetizers.appetizer_id AND menu.main_courses_id = main_course.main_course_id AND menu.desserts_id = dessert.dessert_id)")
end

def view_menu_1(db)
  db.execute("SELECT appetizers.appetizer_name, appetizers.appetizer_description, main_course.name, main_course.main_course_descr, dessert.dessert_name, dessert.dessert_description
   FROM appetizers, main_course, dessert JOIN menu ON (menu.app_id = appetizers.appetizer_id AND menu.main_courses_id = main_course.main_course_id AND menu.desserts_id = dessert.dessert_id) WHERE menu.menu_id < 5 ")
end

def view_menu_2(db)
  db.execute("SELECT appetizers.appetizer_name, appetizers.appetizer_description, main_course.name, main_course.main_course_descr, dessert.dessert_name, dessert.dessert_description
   FROM appetizers, main_course, dessert JOIN menu ON (menu.app_id = appetizers.appetizer_id AND menu.main_courses_id = main_course.main_course_id AND menu.desserts_id = dessert.dessert_id) WHERE menu.menu_id > 10 AND menu.menu_id < 14")
end





puts "Welcome to Menu Management System!"
puts "This system will help you maintain and manage your menu options!'\n'"
puts "Enter the table name that you would like to update (appetizers/ main course/ dessert/ no update)"
table_name = gets.chomp

if table_name == "appetizers"
  while true
    puts "Please enter a appetizer name!(Enter DONE to exit)"
    app_name = gets.chomp
    break if app_name == "DONE"
    puts "Enter appetizer description:"
    app_description = gets.chomp
    create_appetizers(db, app_name, app_description)
  end
end

if table_name == "main course"
  while true
    puts "Please enter a Main_course name! (Enter DONE to exit)"
    main_course_name = gets.chomp
    break if main_course_name == "DONE"
    puts "Enter Main course description:"
    main_course_description = gets.chomp
    create_main_course(db, main_course_name, main_course_description)
  end
end

if table_name == "dessert"
  while true
  puts "Please enter a Dessert name! (Enter DONE to exit)"
  dessert_name = gets.chomp
  break if dessert_name == "DONE"
  puts "Enter Dessert description:"
  dessert_description = gets.chomp
  create_dessert(db, dessert_name, dessert_description)
  end
end

if table_name == "no update"
  puts "The table is up to date"
end

puts "Please enter if you would like to set Menu options (YES / NO)"
set_menu = gets.chomp
if set_menu == "YES"
  #count = 0
  while true
    puts "To exit anytime in the program, type 0"
    puts "Enter appetizer id (1 - 10)"
    appetizer_idd = gets.to_i
    puts "Enter main_course id (1 - 10)"
    main_course_idd = gets.to_i
    puts "Enter dessert id (1 - 10)"
    dessert_idd = gets.to_i
    break if appetizer_idd == 0
    break if main_course_idd == 0
    break if dessert_idd == 0
    create_menu(db, appetizer_idd, main_course_idd, dessert_idd)
    #count += 1
    #puts "This is menu #{count}"
  end

elsif set_menu == "NO"
  puts "You chose not to set any menu options!"
end

puts "The menu options are:'\n'"
menu_1 = view_menu(db)
menu_2 = view_menu_1(db)
menu_3 = view_menu_2(db)

puts "The FIRST MENU OPTION IS COMPREHENSIVE."
p menu_1
puts "'\n'"
puts "HERE IS THE SECOND MENU OPTION"
p menu_2
puts "'\n'"
puts "AND HERE COMES THE THIRD OPTION"
p menu_3
puts "'\n'"
puts "Thank You, Goodbye!"





# explore ORM by retrieving data
#app_1 = db.execute("SELECT * FROM appetizers")
#puts app_1.class
#p app_1

