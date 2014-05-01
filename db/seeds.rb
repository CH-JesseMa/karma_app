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

bill = User.create(user_name: "slappy", name: "Bill", email: "bill@bill.com", password: "123", is_admin: true, skills: "ruby, rails
  music", location: "brooklyn", profile: "Hi I'm Bill I can write ruby methods like a mofo! CSS? notsomuch...", image_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Bill_Clinton.jpg/440px-Bill_Clinton.jpg", points: 120)


nick = User.create(user_name: "HaveshRimp", name: "Nick", email: "nick@nick.com", password: "123", is_admin: true, skills: "sheep-herding", location: "brooklyn", profile: "Hi I'm nick I'm a sheepherder, can you help me with javascript?", image_url: "http://dick.mckay.org/html/images/SheepHerderOnRoad.jpg", points: 100)

jon = User.create(user_name: "Bichar", name: "Jon", email: "jon@jon.com", password: "123", is_admin: false, skills: "basketball", location: "brooklyn", profile: "Hi I'm Jon and I can teach you to shoot hoops", image_url: "http://i2.cdn.turner.com/nba/nba/history/legends/john-stockton/john-stockton.jpg", points: 80 )

jesse = User.create(user_name: "JesseLaw", name: "Jesse", email: "jesse@jesse.com", password: "123", is_admin: false, skills: "SEO, testing, Law", location: "NYC", profile: "Hi I'm Jesse and I'm awesome with testing... Travis especially!", image_url: "http://img.tfd.com/WEAL/weal_05_img1059.jpg", points: 90)

russel = User.create(user_name: "calm/collected", name: "Ruscrowe", email: "russcrowe@ruscrowe.com", password: "123", is_admin: false, skills: "Acting, Hitting people with old telephones", location: "TV", profile: "Hi I'm Ruscrowe and I can help you learn to sword fughting, dark scene scapes, and more...", image_url: "http://cdn03.cdn.justjared.com/wp-content/uploads/2012/10/fists-crowe/russell-crowe-iron-fists-screening-27.JPG", points: 400)

jolly = User.create(user_name: "big ploppy", name: "GreenGiant", email: "greengiant@greengiant.com", password: "123", is_admin: false, skills: "Being Green, Selling Canned Goods, Food Longevity", location: "aisle 7", profile: "Hi I'm the Jolly Green Giant, I grow peas", image_url: "http://adweek.blogs.com/photos/uncategorized/jollygreen_1.jpg", points: 320)

msmorton = User.create(user_name: "salty pants", name: "Ms.Morton", email: "msmorton@msmorton.com",
  password: "123", is_admin: false, skills: "slingin salt, staying dry", location: "aisle 6", profile: "Hi I'm that salt girl with the unbrella I can help you keep your food dry", image_url: "http://carboncostume.com/wordpress/wp-content/uploads/2013/01/mortonsaltumbrellagirl.png", points: 113)

post1 = Post.create(karma_value: 25, post_type: "offer", title: "Lawn Mow", content: "Hi I'm the Giant and I can help you mow your lawn really fast!", image_url: "http://redbeacon.s3.amazonaws.com/homeguides%2Farticles%2Fthumbs%2F5_tips_for_lawn_mowing_that_you_may_not_have_known.jpg.600x275_q85_crop.jpg", user_id: jolly.id )

post2 = Post.create(karma_value: 50, post_type: "request", title: "looking for an apartment", content: "Hi I'm the Salt girl and I really need to get out of this rain storm!", image_url: "http://semmickphoto.com/wp-content/uploads/symbiostock_rf_content/3054-hiker-in-forest-wearing-raincoat-and-boots.jpg", user_id: msmorton.id)

post3 = Post.create(karma_value: 35, post_type: "offer", title: "I can help with Rspec testing", content: "Hi I'm Jesse and I'm offering to teach you about Rspec testing and giving speeches", image_url: "http://americanradioworks.publicradio.org/features/sayitplain/images/jjackson.jpg", user_id: jesse.id)

post4 = Post.create(karma_value: 50, post_type: "request", title: "HELP ME!", content: "Hi I'm NIck and I desperately need help with anything to do with testing! I will give you 50 karma points and / or can teach you about sheep herding.", image_url: "http://raddium.com/wp-content/uploads/2012/06/test1.jpg", user_id: nick.id)

post5 = Post.create(karma_value: 20, post_type: "offer", title: "Can help you play basketball better", content: "I'm Jon and I can totally help you with your dribbling and jump shot skills!", image_url: "http://i.ytimg.com/vi/35hOPD3IxSg/0.jpg", user_id: jon.id)

post6 = Post.create(karma_value: 60, post_type: "request", title: "I need help remaining calm", content: "Hi if you can help me relax I will pay you 60 karma points!!!!!!!", image_url: "http://keepyourprince.com/wp-content/uploads/2013/12/calmclearcomposed.jpg", user_id: russel.id )

post7 = Post.create(karma_value: 40, post_type: "offer", title: "I can help you write ruby methods", content: "Hi I can offer to help you learn to write kick ass ruby methods", image_url: "http://www.codeproject.com/KB/cross-platform/Ruby_Dynamic_Methods/Ruby_Dynamic_Methods.jpg", user_id: bill.id)

post8 = Post.create(karma_value: 50, post_type: "request", title: "Need help shopping for clothes", content: "Hi I'm the fricken jolly green giant and I need a new shirt! somebody please help me out!", image_url: "http://blog.clothes2order.com/wp-content/uploads/2010/12/101991_largest_T-shirt_QAPCO.jpg", user_id: jolly.id)


transaction1 = Transaction.create(requester_id:jolly.id, servicer_id: msmorton.id, requester_agree: true, servicer_agree: true, requester_complete: true, servicer_complete: true, point_value: 50, post_id: post8.id)

transaction2 = Transaction.create(requester_id:
  bill.id, servicer_id: russel.id, requester_agree: true, servicer_agree: true, requester_complete: false, servicer_complete: true, point_value: 40, post_id: post7.id)

transaction3 = Transaction.create(requester_id: msmorton.id, servicer_id: jon.id, requester_agree: true, servicer_agree: true, requester_complete: true, servicer_complete: false, point_value: 50, post_id: post2.id )





