# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Player.destroy_all
Team.destroy_all

5.times do 
    Team.create(name:Faker::Sports::Basketball.team)
end

teams = Team.all 
10.times do 
    Player.create(name: Faker::Sports::Basketball.player, number: rand(1..99), team:teams[rand(0..4)])
end