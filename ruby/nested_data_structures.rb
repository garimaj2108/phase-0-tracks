# Creating a hash to plan for a party
# Party consists of guest list, food, drinks and games
party = {
# Guest list contains a "list" or array of invitees
  :guest_list => ["John", "David", "Glenna","Patricia"],
# food_items contains four course menu options
  :food_items => {
    :appetizers => ["Cheese & Fruits", "Hummus & Pita Bread", "Nachos"],
    :drinks => ["Sangria","Hawaiian Fruit Punch"],
    :main_course => ["Ravioli","Gnocchi in Pesto"],
    :desserts => ["Strawberry shortcake","Mango mousse"]
  },

  :games => ["Taboo","Crimes against Humanity"]
}

# Commands to be tested
=begin
party[:guest_list][2] = "Rose"
party[:food_items][:appetizers].length
party[:games].replace(["Poker","Monopoly"])
party[:food_items][:main_course][1]
party[:guest_list].reverse!
party
=end