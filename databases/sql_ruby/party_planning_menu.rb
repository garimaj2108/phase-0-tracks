# OPERATION MENU MANAGAEMENT!
# This interface is designed to help any event manager or a restaurateur manage the menus.
# This interface will provide users with options to add items to teh menu and make updates to them

# Required gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database
db = SQLite3::Database.new("party_menu.db")
#db.results_as_hash = true


# Fancy string delimiters

# This table stores appetizer unique id, appetizer names and its description
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS appetizers(
    appetizer_id INTEGER PRIMARY KEY,
    appetizer_name VARCHAR(255),
    appetizer_description VARCHAR(255)
  )
SQL

# This table stores main_course unique id, main_course names and its description
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS main_course(
    main_course_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    main_course_descr VARCHAR(255)
  )
SQL

# This table stores dessert unique id, dessert names and its description
create_table_cmd_1 = <<-SQL
  CREATE TABLE IF NOT EXISTS dessert(
    dessert_id INTEGER PRIMARY KEY,
    dessert_name VARCHAR(255),
    dessert_description VARCHAR(255)
  )
SQL

# This table stores menu unique id, and references foreign key appetizer_id of appetizertable, main_course_id of main_course table and dessert_id of dessert table.
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


# create tables appetizers, main_course, dessert and menu (if it's not there already)
db.execute(create_table)
db.execute(create_table_cmd)
db.execute(create_table_cmd_1)
db.execute(create_table_cmd_2)

# add a test appetizer
#db.execute("INSERT INTO appetizers (appetizer_name, appetizer_description) VALUES ('hummus', 'ground garbanzo beans seasoned with garlic and roasted red chilli peppers')")

# delete the test appetizer
#db.execute("DELETE FROM appetizers WHERE appetizer_id = 1")

# Add values to the appetizer table
def create_appetizers(db, appetizer_name, appetizer_description)
  db.execute("INSERT INTO appetizers (appetizer_name, appetizer_description) VALUES (?, ?)", [appetizer_name, appetizer_description])
end

# Add values to the main_course table
def create_main_course(db, name, main_course_descr)
  db.execute("INSERT INTO main_course (name, main_course_descr) VALUES (?, ?)", [name, main_course_descr])
end

# Add values to the dessert table
def create_dessert(db, dessert_name, dessert_description)
  db.execute("INSERT INTO dessert (dessert_name, dessert_description) VALUES (?, ?)", [dessert_name, dessert_description])
end

# Add values to the menu table
def create_menu(db, app_id, main_courses_id, desserts_id)
  db.execute("INSERT INTO menu (app_id, main_courses_id, desserts_id) VALUES (?, ?, ?)", [app_id, main_courses_id, desserts_id])
end

# Select which columns to display and join the menu table with appetizers, main_course and dessert tables
def view_menu(db)
  db.execute("SELECT menu.menu_id, appetizers.appetizer_name, appetizers.appetizer_description, main_course.name, main_course.main_course_descr, dessert.dessert_name, dessert.dessert_description
   FROM appetizers, main_course, dessert JOIN menu ON (menu.app_id = appetizers.appetizer_id AND menu.main_courses_id = main_course.main_course_id AND menu.desserts_id = dessert.dessert_id)")
end

# Select which columns to display,join the menu table with appetizers, main_course and dessert table and provide a conditional to display specific rows
def view_menu_1(db)
  db.execute("SELECT menu.menu_id, appetizers.appetizer_name, appetizers.appetizer_description, main_course.name, main_course.main_course_descr, dessert.dessert_name, dessert.dessert_description
   FROM appetizers, main_course, dessert JOIN menu ON (menu.app_id = appetizers.appetizer_id AND menu.main_courses_id = main_course.main_course_id AND menu.desserts_id = dessert.dessert_id) WHERE menu.menu_id < 5 ")
end

# Select which columns to display,join the menu table with appetizers, main_course and dessert table and provide a conditional to display specific rows
def view_menu_2(db)
  db.execute("SELECT menu.menu_id, appetizers.appetizer_name, appetizers.appetizer_description, main_course.name, main_course.main_course_descr, dessert.dessert_name, dessert.dessert_description
   FROM appetizers, main_course, dessert JOIN menu ON (menu.app_id = appetizers.appetizer_id AND menu.main_courses_id = main_course.main_course_id AND menu.desserts_id = dessert.dessert_id) WHERE menu.menu_id > 10 AND menu.menu_id < 14")
end



# Driver Code
puts "Welcome to Menu Management System!"
puts "This system will help you maintain and manage your menu options!'\n'"

# Based on user input, a specific table will be selected for addition of items
puts "Enter the table name that you would like to update (appetizers/ main course/ dessert/ no additions)"
table_name = gets.chomp

if table_name == "appetizers"
  while true
    puts "Please enter a Appetizer name!(Enter DONE to exit)"
    app_name = gets.chomp
    break if app_name == "DONE"
    puts "Enter Appetizer description:"
    app_description = gets.chomp
    # Calling method to insert values into appetizers table
    create_appetizers(db, app_name, app_description)
  end
end

if table_name == "main course"
  while true
    puts "Please enter a Main Course name! (Enter DONE to exit)"
    main_course_name = gets.chomp
    break if main_course_name == "DONE"
    puts "Enter Main Course description:"
    main_course_description = gets.chomp
    # Calling method to insert values into main_course table
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
  # Calling method to insert values into dessert table
  create_dessert(db, dessert_name, dessert_description)
  end
end

# If user selects no additons, no inserts are made to the table
if table_name == "no additions"
  puts "The table is up to date"
end

# To select and update menu combinations
puts "Please enter if you would like to set Menu options (YES / NO)"
set_menu = gets.chomp
if set_menu == "YES"
  puts "To exit anytime in the program, type 0"
  while true
    puts "Enter appetizer id (1 - 10)"
    appetizer_idd = gets.to_i
    break if appetizer_idd == 0
    puts "Enter main_course id (1 - 10)"
    main_course_idd = gets.to_i
    break if main_course_idd == 0
    puts "Enter dessert id (1 - 10)"
    dessert_idd = gets.to_i
    break if dessert_idd == 0
    create_menu(db, appetizer_idd, main_course_idd, dessert_idd)
  end

elsif set_menu == "NO"
  puts "You chose not to set any menu options!"
end


# To view the different menu combinations
puts "The MENU OPTIONS ARE:'\n'"
menu_1 = view_menu(db)
menu_2 = view_menu_1(db)
menu_3 = view_menu_2(db)

puts "The FIRST MENU OPTION IS A COMPREHENSIVE LIST."
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

