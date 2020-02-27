# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Eric", password: "test1234")
User.create(username: "Bob", password: "test1234")
User.create(username: "gammy", password: "test1234")
User.create(username: "zalphin", password: "test1234")
User.create(username: "gigglyflibbits", password: "test1234")

Message.create(body: "hello there how are you", user: User.first)
Message.create(body: "I'm fine how are you?", user: User.last)