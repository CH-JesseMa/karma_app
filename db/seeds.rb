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

bill = User.create(name: "Bill", email: "bill@bill.com", password: "123", is_admin: true, skills: "ruby, rails
  music", location: "brooklyn", profile: "Hi I'm Bill I can write ruby methods like a mofo! CSS? notsomuch...", image_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Bill_Clinton.jpg/440px-Bill_Clinton.jpg", points: 120)


nick = User.create(name: "Nick", email: "nick@nick.com", password: "123", is_admin: true, skills: "sheep-herding", location: "brooklyn", profile: "Hi I'm nick I'm a sheepherder, can you help me with javascript?", image_url: "http://dick.mckay.org/html/images/SheepHerderOnRoad.jpg", points: 100)

jon = User.create(name: "Jon", email: "jon@jon.com", password: "123", is_admin: false, skills: "basketball", location: "brooklyn", profile: "Hi I'm Jon and I can teach you to shoot hoops", image_url: "http://i2.cdn.turner.com/nba/nba/history/legends/john-stockton/john-stockton.jpg", points: 80 )

jesse = User.create(name: "Jesse", email: "jesse@jesse.com", password: "123", is_admin: false, skills: "SEO, testing, Law", location: "NYC", profile: "Hi I'm Jesse and I'm awesome with testing... Travis especially!", image_url: "http://img.tfd.com/WEAL/weal_05_img1059.jpg", points: 90)

russel = User.create(name: "Ruscrowe", email: "russcrowe@ruscrowe.com", password: "123", is_admin: false, skills: "Acting, Hitting people with old telephones", location: "TV", profile: "Hi I'm Ruscrowe and I can help you learn to sword fughting, dark scene scapes, and more...", image_url: "http://cdn03.cdn.justjared.com/wp-content/uploads/2012/10/fists-crowe/russell-crowe-iron-fists-screening-27.JPG", points: 400)

jolly = User.create(name: "GreenGiant", email: "greengiant@greengiant.com", password: "123", is_admin: false, skills: "Being Green, Selling Canned Goods, Food Longevity", location: "aisle 7", profile: "Hi I'm the Jolly Green Giant, I grow peas", image_url: "http://adweek.blogs.com/photos/uncategorized/jollygreen_1.jpg", points: 320)

msmorton = User.create(name: "Ms.Morton", email: "msmorton@msmorton.com",
  password: "123", is_admin: false, skills: "slingin salt, staying dry", location: "aisle 6", profile: "Hi I'm that salt girl with the unbrella I can help you keep your food dry", image_url: "http://carboncostume.com/wordpress/wp-content/uploads/2013/01/mortonsaltumbrellagirl.png", points: 113)

