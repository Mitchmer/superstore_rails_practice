# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  department = Department.create(
  name: Faker::Hipster.word
  )
  10.times do
    department.products.create(
      name: Faker::Hipster.word,
      price: Faker::Number.number(2),
      body: Faker::Hipster.sentence(10)
    )
  end
end

# @departments = Department.all

#   10.times do
#   department.products.create(
#     name: Faker::Hipster.word,
#     price: Faker::Number.number(2),
#     body: Faker::Hipster.sentence(10)
#   )
#   end
# end

puts "seeded"