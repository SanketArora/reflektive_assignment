# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_luke = User.create(name: "Luke")
user_leia = User.create(name: "Leia")
user_vader = User.create(name: "Darth Vader")
user_han = User.create(name: "Han")
user_fett = User.create(name: "Boba Fett")
user_jabba = User.create(name: "Jabba")
post1 = user_luke.posts.create(content: "First post")
post1.comments.create(content: "First comment", user: user_leia)
post1.comments.create(content: "Second comment", user: user_han)

post2 = user_vader.posts.create(content: "Second post")
post2.comments.create(content: "Third comment", user: user_fett)
post2.comments.create(content: "Fourth comment", user: user_jabba)
