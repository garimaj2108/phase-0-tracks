# OPERATION MENU MANAGAEMENT!
# This interface is designed to help any event manager or a restaurateur manage the menus.
# This interface will provide users with options to add items to teh menu and make updates to them

# Required gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database
db = SQLite3::Database.new("party_menu.db")
db.results_as_hash = true


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

# ----------------------------------------------------
# add a test appetizer
#db.execute("INSERT INTO appetizers (appetizer_name, appetizer_description) VALUES ('hummus', 'ground garbanzo beans seasoned with garlic and roasted red chilli peppers')")

# delete the test appetizer
#db.execute("DELETE FROM appetizers WHERE appetizer_id = 1")

# ----------------------------------------------------

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

# ----------------------------------------------------

# Select which columns to display and join the menu table with appetizers, main_course and dessert tables
# Displays menu
def view_menu(db)
  menu_one = db.execute("SELECT menu.menu_id, appetizers.appetizer_name, appetizers.appetizer_description, main_course.name, main_course.main_course_descr, dessert.dessert_name, dessert.dessert_description
   FROM appetizers, main_course, dessert JOIN menu ON (menu.app_id = appetizers.appetizer_id AND menu.main_courses_id = main_course.main_course_id AND menu.desserts_id = dessert.dessert_id)")
  response = ""
  menu_one.each do |menu_item|
    response << "Appetizer: #{menu_item['appetizer_name']}, "
    response << "Appetizer description: #{menu_item['appetizer_description']}, "
    response << "Main course: #{menu_item['name']}, "
    response << "Main course description: #{menu_item['main_course_descr']}, "
    response <<  "Dessert: #{menu_item['dessert_name']}, "
    response << "Dessert description: #{menu_item['dessert_description']} "
  end
  response
end

# Select which columns to display,join the menu table with appetizers, main_course and dessert table and provide a conditional to display specific rows
def view_menu_1(db)
  menu_two = db.execute("SELECT menu.menu_id, appetizers.appetizer_name, appetizers.appetizer_description, main_course.name, main_course.main_course_descr, dessert.dessert_name, dessert.dessert_description
   FROM appetizers, main_course, dessert JOIN menu ON (menu.app_id = appetizers.appetizer_id AND menu.main_courses_id = main_course.main_course_id AND menu.desserts_id = dessert.dessert_id) WHERE menu.menu_id < 5 ")
  response_1 = ""
  menu_two.each do |menu_item|
    response_1 << "Appetizer: #{menu_item['appetizer_name']}, "
    response_1 << "Appetizer description: #{menu_item['appetizer_description']}, "
    response_1 << "Main course: #{menu_item['name']}, "
    response_1 << "Main course description: #{menu_item['main_course_descr']}, "
    response_1 <<  "Dessert: #{menu_item['dessert_name']}, "
    response_1 << "Dessert description: #{menu_item['dessert_description']} "
  end
  response_1
end

# Select which columns to display,join the menu table with appetizers, main_course and dessert table and provide a conditional to display specific rows
def view_menu_2(db)
  menu_three = db.execute("SELECT menu.menu_id, appetizers.appetizer_name, appetizers.appetizer_description, main_course.name, main_course.main_course_descr, dessert.dessert_name, dessert.dessert_description
   FROM appetizers, main_course, dessert JOIN menu ON (menu.app_id = appetizers.appetizer_id AND menu.main_courses_id = main_course.main_course_id AND menu.desserts_id = dessert.dessert_id) WHERE menu.menu_id > 10 AND menu.menu_id < 14")
  response_2 = ""
  menu_three.each do |menu_item|
    response_2 << "Appetizer: #{menu_item['appetizer_name']}, "
    response_2 << "Appetizer description: #{menu_item['appetizer_description']}, "
    response_2 << "Main course: #{menu_item['name']}, "
    response_2 << "Main course description: #{menu_item['main_course_descr']}, "
    response_2 <<  "Dessert: #{menu_item['dessert_name']}, "
    response_2 << "Dessert description: #{menu_item['dessert_description']} "
  end
  response_2
end

def dessert_update(db, dessert_id, dessert_name, dessert_description)
  db.execute("UPDATE dessert SET dessert_name = '#{dessert_name}', dessert_description = '#{dessert_description}' WHERE dessert_id = '#{dessert_id}'")
end

def appetizer_update(db, appetizer_id, appetizer_name, appetizer_description)
  db.execute("UPDATE appetizers SET appetizer_name = '#{appetizer_name}', appetizer_description = '#{appetizer_description}' WHERE appetizer_id = '#{appetizer_id}'")
end

def main_course_update(db, main_course_id, main_course_name, main_course_description)
  db.execute("UPDATE main_course SET name = '#{main_course_name}', main_course_descr = '#{main_course_description}' WHERE main_course_id = '#{main_course_id}'")
end

# ----------------------------------------------------

# Driver Code
puts "Welcome to Menu Management System!"
puts "This system will help you maintain and manage your menu options!'\n'"

# Based on user input, a specific table will be selected for addition of items
puts "Enter the table name that you would like to update (appetizers/ main course/ dessert/ no update)"
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
if table_name == "no update"
  puts "The table is up to date"
end

# To select and update menu combinations
puts "Please enter if you would like to set Menu options (yes / no)"
set_menu = gets.chomp
if set_menu == "yes"
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

elsif set_menu == "no"
  puts "You chose not to set any menu options!"
end

# ----------------------------------------------------
puts "Would you like to update any table? (yes / no)"
user_response = gets.chomp
if user_response == "yes"
  puts "To exit anytime in the program, type 0 whre numbers have to be entered or enter DONE"

  puts "Which table would you like to update (appetizer, main Course OR dessert)"
  table_update = gets.chomp
  if table_update == "dessert"
    while true
    puts "Enter the dessert id to be updated :"
    dessert_id = gets.to_i
    break if dessert_id == 0
    puts "Enter dessert name :"
    dessert_name = gets.chomp
    break if dessert_name == "DONE"
    puts "Enter dessert description"
    dessert_description = gets.chomp
    break if dessert_description == "DONE"
    dessert_update(db, dessert_id, dessert_name, dessert_description)
    end
  end

  if table_update == "appetizer"
    while true
    puts "Enter the appetizer id to be updated :"
    appetizer_id = gets.to_i
    break if appetizer_id == 0
    puts "Enter appetizer name :"
    appetizer_name = gets.chomp
    break if appetizer_name == "DONE"
    puts "Enter appetizer description"
    appetizer_description = gets.chomp
    break if appetizer_description == "DONE"
    appetizer_update(db, appetizer_id, appetizer_name, appetizer_description)
    end
  end

  if table_update == "main course"
    while true
    puts "Enter the main course id to be updated :"
    main_course_id = gets.to_i
    break if main_course_id == 0
    puts "Enter main course name :"
    main_course_name = gets.chomp
    break if main_course_name == "DONE"
    puts "Enter main course description"
    main_course_description = gets.chomp
    break if main_course_description == "DONE"
    main_course_update(db, main_course_id, main_course_name, main_course_description)
    end
  end
end

if user_response == "no"
  puts "The tables are up to date!"
end

# ----------------------------------------------------

# To view the different menu combinations
menu_1 = view_menu(db)
menu_2 = view_menu_1(db)
menu_3 = view_menu_2(db)

puts "Select menu option to view (menu_1, menu_2, menu_3)"
menu_view = gets.chomp
if menu_view == "menu_1"
  puts "The FIRST MENU OPTION IS A COMPREHENSIVE LIST."
  puts menu_1
elsif menu_view == "menu_2"
  puts "HERE IS THE SECOND MENU OPTION !"
  p menu_2
elsif menu_view == "menu_3"
  puts "THE THIRD MENU OPTION:"
  p menu_3
else
  puts " Please enter correct menu option for viewing!"
end

puts "Thank You, Goodbye!"

