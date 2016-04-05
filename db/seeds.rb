# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# data = JSON.parse(File.read("db/exercises_data.json"))
# Exercise.destroy_all
# Exercise.create!(data)

Exercise.destroy_all
Drink.destroy_all
Users.destroy_all
Days.destroy_all

Exercise.create(exercise_name: "Stationary Bike", calories_burned: 8, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Elliptical", calories_burned: 11, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Running", calories_burned: 11, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Pull Ups", calories_burned: 9, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Push-ups", calories_burned: 9, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Sit-ups", calories_burned: 9, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Pilates", calories_burned: 3, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Yoga", calories_burned: 3, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Crunches", calories_burned: 3, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Aerobics", calories_burned: 8, quantity:'', reps:'', day:'')
Exercise.create(exercise_name: "Dancing", calories_burned: 5, quantity:'', reps:'', day:'')


Drink.create(drink_type:"glass of red wine", calorie_count:80)
Drink.create(drink_type:"glass of white wine", calorie_count:80)
Drink.create(drink_type:"bottle or can of beer", calorie_count:144)
Drink.create(drink_type:"shot of scotch", calorie_count:65)
Drink.create(drink_type:"shot of vodka", calorie_count:64)
Drink.create(drink_type:"pint of beer", calorie_count:280)
