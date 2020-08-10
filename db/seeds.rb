# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rich_dad_poor_dad = Book.create(title: "Rich Dad Poor Dad", description: " What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not!" , author: "Robert T. Kiyosaki",  format: "Kindle", image: "richdadpoordad",  genre_id: 1)
the_riches_man_in_babylon = Book.create(title: "The Richest Man in Babylon", description: " Beloved by millions, this timeless classic holds the key to all you desire and everything you wish to accomplish. This is the book that reveals the secret to personal wealth." , author: "George S. Clason",  format: "Physical", image: "therichestmaninbabylon",  genre_id: 1)