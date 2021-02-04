# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(username: "JohnDoe", first_name: "John", last_name: "Doe", email: "johndoe@email.com", password: "password")
v1 = u1.vacations.build(title: "vacation1", description: "test description for vacation1")
v1.save
d1 = v1.destinations.build(name: "destination1", location: "location1")
d1.save