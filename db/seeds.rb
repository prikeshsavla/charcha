# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

100.times do 
    p = Post.create(title: Faker::Company.catch_phrase, content: Faker::Lorem.paragraph(sentence_count: (3..5).to_a.sample, supplemental: true) , created_at: Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today) )
    (2..5).to_a.sample.times do 
        p.comments.create!(content: Faker::Quote.famous_last_words, created_at: Faker::Date.between(from: p.created_at, to: 1.year.from_now))
    end
end