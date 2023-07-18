# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

(20..120).each do |id|
    Operation.create(
        amount: Faker::Number.decimal(l_digits: 3, r_digits: 3),
        odate: Faker::Time.backward(days: 60, period: :evening),
        description: Faker::Hobby.activity,
        category_id: Faker::Number.between(from: 4, to: 12)
    )
    end    
