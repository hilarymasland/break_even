# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# data = JSON.parse(File.read('db/exercises_data.json'))
# Exercise.destroy_all
# Exercise.create!(data)
data = JSON.parse(File.read("db/exercises_data.json"))
Exercise.destroy_all
Exercise.create!(data)
Drink.destroy_all
User.destroy_all
Day.destroy_all

Barbell_Bench_Press = Exercise.create(name:"Barbell Bench Press", calories_burned:"110", day: "", sets: "3", reps: "12")
Push_up = Exercise.create(name:"Push Up", calories_burned:85, day: "", sets: "3", reps: "12")
Sit_ups = Exercise.create(name:"Sit Ups", calories_burned:85, day: "", sets: "3", reps: "12")
Wide_Grip_Lat_Pulldown = Exercise.create(name:"Wide Grip Lat Pulldown", calories_burned:111, day: "", sets: "3", reps: "12")
Machine_Shoulder_Press = Exercise.create(name:"Machine Shoulder Press", calories_burned:115, day: "", sets: "3", reps: "12")
Upright_Barbell_Row = Exercise.create(name:"Upright Barbell Row", calories_burned:95, day: "", sets: "3", reps: "12")
Standing_Biceps_Cabel_Curl = Exercise.create(name:"Standing Biceps Cable Curl", calories_burned:89, day: "", sets: "3", reps: "12")
EZ_Bar_Skullcrusher = Exercise.create(name:"EZ Bar Skullcrusher", calories_burned:93, day: "", sets: "3", reps: "12")
Standing_Cable_Pushdown = Exercise.create(name:"Standing Cable Pushdown", calories_burned:81, day: "", sets: "3", reps: "12")
Machine_Preacher_Curls = Exercise.create(name:"Machine Preacher Curls", calories_burned:68, day: "", sets: "3", reps: "12")
Stationary_Bike = Exercise.create(name: "Stationary Bike", calories_burned:115, day: "", sets: "0" , reps: "12" )
Elliptical = Exercise.create(name: "Elliptical", calories_burned: 109, day: "", minute: 15 )
Running = Exercise.create(name: "Running", calories_burned: 125, day: "", minute: 15 )
Dancing = Exercise.create(name: "Dancing", calories_burned: 118, day: "", minute: 15 )
Aerobics = Exercise.create(name: "Aerobics", calories_burned: 203, day: "", minute: 15 )
Pilates = Exercise.create(name: "Pilates", calories_burned: 39, day: "", minute: 15 )


Drink.create(drink_type:'glass of red wine', calorie_count:80)
Drink.create(drink_type:'glass of white wine', calorie_count:80)
Drink.create(drink_type:'bottle or can of beer', calorie_count:144)
Drink.create(drink_type:'shot of scotch', calorie_count:65)
Drink.create(drink_type:'shot of vodka', calorie_count:64)
Drink.create(drink_type:'pint of beer', calorie_count:280)
