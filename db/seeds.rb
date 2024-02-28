require 'open-uri'
require 'nokogiri'

puts "Cleaning the DB..."
Service.destroy_all
User.destroy_all
puts "Creating users..."

user1 = User.create!(
  username: "Daniel Chin",
  email: "danchin327@gmail.com",
  password: "123456"
)

8.times do
  user = User.create!(email: Faker::Internet.email,
                      password: '123123')
  gender = 'all'
  age = 'all'
  ethnicity = 'all'

  url = "https://this-person-does-not-exist.com/new?gender=#{gender}&age=#{age}&etnic=#{ethnicity}"
  json = URI.open(url).string
  src = JSON.parse(json)['src']
  p photo_url = "https://this-person-does-not-exist.com#{src}"
  file = URI.open(photo_url)
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

Service.create!(title: "Legal",
  price: ["10000 per a hour", "20000 per a hour", "30000 per a hour"].sample,
  description: "I've been advising and representing clients in criminal or civil proceedings and in other legal matters for more than 20 years in Japan.",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Attorney", "Law", "Lawyer"].sample,
  user: User.all.sample
  )

Service.create!(title: "Tooth Whitening",
  price: ["5000 per a session", "10000 per a session", "20000 per a session"].sample,
  description: "Making your smile ten times brighter.",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Dentist","Oral Hygene", "Beauty Clinic"].sample,
  user: User.all.sample
  )

Service.create!(title: "Catering",
  price: ["5000 per an event", "10000 per an event", "20000 per an event"].sample,
  description: "Delivering something delicious to everywhere",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Cooking", "Partying", "Meal Preparation"].sample,
  user: User.all.sample
  )

Service.create!(title: "Real Estate",
  price: "Free of Charge",
  description: "Introducing your new home in Japan",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Apartment", "Housing"].sample,
  user: User.all.sample
)

Service.all.first(2).each do |service|
Bookmark.create!(
  service: service,
  user: user1
)
end
