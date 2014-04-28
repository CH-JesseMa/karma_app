# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create(name: "Bill", email: "bill@bill.com", password: "abcd1234", password_confirmation: "abcd1234", karma_points: 10, user_name: "generationloss")
User.create(name: "Jon", email: "jon@jon.com", password: "abcd1234", password_confirmation: "abcd1234", karma_points: 10, user_name: "Bichar")