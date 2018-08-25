# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create ({ name: 'usuario1', email: 'usuario@gmail.com' })
user.activities.create ({ title: 'Curso de primeros auxilios', description: 'Aprender las tecnicas necesarias para brindar ayuda y reanimacion a la persona que lo reguiera con urgencia'})
5.times do
  user = User.create ({ name: Faker::Name.name, email: Faker::Internet.email })
  user.activities.create ({ title: Faker::BackToTheFuture.character, description: Faker::BackToTheFuture.quote})
end
