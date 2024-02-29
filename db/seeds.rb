require 'open-uri'
require 'nokogiri'

puts "Cleaning the DB..."
Service.destroy_all
User.destroy_all
Review.destroy_all
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

  # url = https://this-person-does-not-exist.com/new?gender=#{gender}&age=#{age}&etnic=#{ethnicity}'
  # json = URI.open(url).string
  # src = JSON.parse(json)['src']
  # p photo_url = "https://this-person-does-not-exist.com#{src}"
  # file = URI.open(photo_url)
  # user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

immigration_guidance = Service.create!(title: "Immigration Procedure Guidance",
  price: ["10000 per a hour", "20000 per a hour", "30000 per a hour"].sample,
  description: "I've been advising and representing clients in criminal or civil proceedings and in other legal matters for more than 20 years in Japan.",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Attorney", "Law", "Lawyer"].sample,
  user: User.all.sample
  )
# immigration_guidance_url = "https://plus.unsplash.com/premium_photo-1663127104392-609b4c06699b?q=80&w=2436&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
# immigration_guidance_file = URI.open(immigration_guidance_url)
# immigration_guidance.photo.attach(io: immigration_guidance_file, filename: "immigration_guidance.webp", content_type: "image/webp")

teeth_whitening = Service.create!(title: "Tooth Whitening",
  price: ["5000 per a session", "10000 per a session", "20000 per a session"].sample,
  description: "Making your smile ten times brighter.",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Dentist","Oral Hygene", "Beauty Clinic"].sample,
  user: User.all.sample
  )

catering = Service.create!(title: "Catering",
  price: ["5000 per an event", "10000 per an event", "20000 per an event"].sample,
  description: "Delivering something delicious to everywhere",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Cooking", "Partying", "Meal Preparation"].sample,
  user: User.all.sample
  )

real_estate = Service.create!(title: "Real Estate",
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

Review.create!(rating: 4,
comment: "Speaks very good english and service is excellent as well.",
eng_rating: 5,
service: Service.all.sample,
user: user1
)

Review.create!(rating: 1,
  comment: "Spoke no english and service is terrible.",
  eng_rating: 1,
  service: Service.all.sample,
  user: user1
)

Review.create!(rating: 4,
  comment: "Services are fantastic. Staff can speak enough englisg to get the job done.",
  eng_rating: 3,
  service: Service.all.sample,
  user: user1
)

puts "DB Seeds completed."
