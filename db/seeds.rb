# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
User.destroy_all
Gossip.destroy_all


# seed for city
10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip
  )
end

# seed for user
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6, max_length: 8),
    age: Faker::Number.between(from: 18, to: 50),
    city_id: City.all.sample.id
  )
end

# seed for gossip
10.times do
  Gossip.create!(
    title: Faker::Hipster.word,
    text: Faker::Hipster.paragraph_by_chars(characters: 25, supplemental: false),
    user_id: User.all.sample.id
  )
end


# seed for comment
10.times do
  Comment.create!(
    body: Faker::Lorem.paragraph(sentence_count: 2),
    gossip_id: Gossip.all.sample.id
  )
end

# Single seeds
#city 
# c = City.create(name: "Boston", zip_code: "02134")

#User
# u = User.create(first_name: "Tom", last_name: "Lee", email: "tom@tom.com", age: 25, city_id: 1, password: "tomlee25")

#Gossip

# g = Gossip.create(title: "hello", text: "Guess who's back?", user_id: 1)
