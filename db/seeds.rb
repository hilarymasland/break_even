# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
data = JSON.parse(File.read("db/exercises_data.json"))
Exercise.destroy_all
Exercise.create!(data)
Days.destroy_all
Days.create!(data)
