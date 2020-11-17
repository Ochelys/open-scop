# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
    Company.create([{name: Faker::Name.last_name, nominal_share_value: Faker::Number.number(digits: 3)}])
end

20.times do
    Partner.create([{name: Faker::Name.last_name, company_id: Faker::Number.between(from: 1, to: 4)}])
end
