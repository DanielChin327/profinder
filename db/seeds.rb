require 'open-uri'
require 'nokogiri'

puts "Cleaning the DB..."
Service.destroy_all
User.destroy_all
Review.destroy_all
puts "Creating users..."

User.create!(
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

Review.create!(rating: 4,
comment: "The doctor speaks very good english and service is excellent as well.",
eng_rating: 5,
service: Service.all.sample
)

Review.create!(rating: 1,
  comment: "The doctor speaks no english and service is terrible.",
  eng_rating: 1,
  service: Service.all.sample
)

Review.create!(rating: 4,
  comment: "Thier services are fantastic. Staff can speak enough englisg to get the job done.",
  eng_rating: 3,
  service: Service.all.sample
)
