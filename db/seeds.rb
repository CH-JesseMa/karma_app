# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Post.destroy_all
Transaction.destroy_all

# bill = User.create(name: "Bill", email: "bill@bill.com", password: "abcd1234", password_confirmation: "abcd1234", points: 10, user_name: "generationloss")
# jon = User.create(name: "Jon", email: "jon@jon.com", password: "abcd1234", password_confirmation: "abcd1234", points: 10, user_name: "Bichar")
# admin = User.create(name: "admin", email: "admin@admin.com", password: "alligator", password_confirmation: "alligator", is_admin: true, user_name: "admin")

# poast = Post.create(karma_value: 5, is_open: true, post_type: "offer", title: "Hey how's it goin", content: "Hey how's it goin?", user_id: bill.id)
# Post.create(karma_value: 2, is_open: true, post_type: "request", title: "Are you Sancho?", content: "No, you are not Sancho.", user_id: jon.id)


# Transaction.create(requester_id: jon.id, servicer_id: bill.id, requester_complete: false, servicer_complete: false, is_complete: false, point_value: poast.karma_value, post_id: poast.id)
# Transaction.create(requester_id: bill.id, servicer_id: jon.id)

