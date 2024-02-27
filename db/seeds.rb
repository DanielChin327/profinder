require 'open-uri'
require 'nokogiri'

8.times do
  user = User.create!(
  email: Faker::Internet.safe_email,
  password: '123123'
)
  gender = 'all'
  age = 'all'
  ethnicity = 'all'

  url = "https://this-person-does-not-exist.com/new?gender=#{gender}&age=#{age}&etnic=#{ethnicity}"
  json = URI.open(url).string
  src = JSON.parse(json)['src']
  photo_url = "https://this-person-does-not-exist.com#{src}"
  file = URI.open(photo_url)
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

legal_service = Service.create(title: "Legal",
  price: ["10000 per a hour", "20000 per a hour", "30000 per a hour"].sample,
  description: "I've been advising and representing clients in criminal or civil proceedings and in other legal matters for more than 20 years in Japan.",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Attorney", "Law", "Lawyer"]
  )

dental_service = Service.create(title: "Tooth Whitening",
  price: ["5000 per a session", "10000 per a session", "20000 per a session"].sample,
  description: "Making your smile ten times brighter.",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Dentist","Oral Hygene", "Beauty Clinic"]
  )

catering_service = Service.create(title: "Catering",
  price: ["5000 per an event", "10000 per an event", "20000 per an event"].sample,
  description: "Delivering something delicious to everywhere",
  schedule: "Monday through Friday. 9am to 5pm.",
  category: ["Cooking", "Partying", "Meal Preparation"]
  )

real_estae_service = Service.create(title: "Real Estate",
    price: "Free of Charge",
    description: "Introducing your new home in Japan",
    schedule: "Monday through Friday. 9am to 5pm.",
    category: ["Apartment", "Housing"]
    )
