require 'open-uri'
require 'nokogiri'

puts "Cleaning the DB..."
Service.destroy_all
User.destroy_all
Review.destroy_all
puts "Creating users..."

age = rand(25..60).to_s
ethnicity = 'all'
# USER ACCOUNTS...
user_dan_chin = User.create!(
  username: "DanChin",
  email: "danchin327@gmail.com",
  password: "123456",
  phonenumber: "03-3224-9999",
  linkedin_profile: "https://www.linkedin.com/in/username",
  bio: "Working on becoming a software developer.",
  contact_email: "danchin327@gmail.com",
  website_url: "n/a",
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=30&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
user_dan_chin.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

user_jane_doe = User.create!(
  username: "JaneDoe",
  email: "janedoe@example.com",
  password: "123456",
  phonenumber: "03-3224-8888",
  linkedin_profile: "https://www.linkedin.com/in/janedoe",
  bio: "Enthusiastic about learning new technologies.",
  contact_email: "contact@janedoe.com",
  website_url: "https://janedoe.com"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
user_jane_doe.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

user_john_smith = User.create!(
  username: "JohnSmith",
  email: "johnsmith@example.com",
  password: "123456",
  phonenumber: "03-3224-7777",
  linkedin_profile: "https://www.linkedin.com/in/johnsmith",
  bio: "Passionate about web development and open-source projects.",
  contact_email: "contact@johnsmith.com",
  website_url: "https://johnsmith.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
user_john_smith.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

# PROFESSIONAL USER ACCOUNTS...
professional_jamie_flavor = User.create!(
  username: "JamieFlavor",
  email: "jamieflavor@example.com",
  password: "123456",
  phonenumber: "03-3226-0101",
  linkedin_profile: "https://www.linkedin.com/in/jamieflavor",
  bio: "Innovative chef with a passion for creating memorable dining experiences. Specializing in fusion cuisine.",
  contact_email: "jamie@culinaryarts.com",
  website_url: "https://jamieflavor.cuisine"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_jamie_flavor.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_chris_justice = User.create!(
  username: "ChrisJustice",
  email: "chrisjustice@example.com",
  password: "123456",
  phonenumber: "03-3226-0303",
  linkedin_profile: "https://www.linkedin.com/in/chrisjustice",
  bio: "Dedicated attorney specializing in civil rights law. Committed to providing top-notch legal representation.",
  contact_email: "chris@justicelaw.com",
  website_url: "https://chrisjustice.law"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_chris_justice.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_sam_smiles = User.create!(
  username: "SamSmiles",
  email: "samsmiles@example.com",
  password: "123456",
  phonenumber: "03-3226-0404",
  linkedin_profile: "https://www.linkedin.com/in/samsmiles",
  bio: "Experienced dentist focused on comprehensive care and patient comfort. Specializing in cosmetic dentistry.",
  contact_email: "sam@smilesdental.com",
  website_url: "https://samsmiles.dental"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_sam_smiles.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_ava_shutter = User.create!(
  username: "AvaShutter",
  email: "avashutter@example.com",
  password: "123456",
  phonenumber: "03-3226-0202",
  linkedin_profile: "https://www.linkedin.com/in/avashutter",
  bio: "Professional photographer with a keen eye for capturing life's moments. Specializes in portrait and event photography.",
  contact_email: "ava@shutterpix.com",
  website_url: "https://avashutter.photography"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_ava_shutter.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_lee_numbers = User.create!(
  username: "LeeNumbers",
  email: "leenumbers@example.com",
  password: "123456",
  phonenumber: "03-3226-0505",
  linkedin_profile: "https://www.linkedin.com/in/leenumbers",
  bio: "Detail-oriented accountant with expertise in tax planning and financial analysis. Helping businesses and individuals achieve financial health.",
  contact_email: "lee@numbersaccounting.com",
  website_url: "https://leenumbers.accountant"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_lee_numbers.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
professional_alex_taylor = User.create!(
  username: "AlexTaylor",
  email: "alextaylor@example.com",
  password: "123456",
  phonenumber: "03-3225-1111",
  linkedin_profile: "https://www.linkedin.com/in/alextaylor",
  bio: "Full-stack developer with a focus on Ruby on Rails and React.",
  contact_email: "alex@developers.com",
  website_url: "https://alextaylor.dev"
)
url = "https://this-person-does-not-exist.com/new?gender=#female&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_alex_taylor.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_morgan_bailey = User.create!(
  username: "MorganBailey",
  email: "morganbailey@example.com",
  password: "123456",
  phonenumber: "03-3225-2222",
  linkedin_profile: "https://www.linkedin.com/in/morganbailey",
  bio: "Digital marketer with a passion for SEO and SEM strategies.",
  contact_email: "morgan@marketingpros.com",
  website_url: "https://morganbailey.marketing"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_morgan_bailey.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_christina_jones = User.create!(
  username: "ChristinaJones",
  email: "christinajones@example.com",
  password: "123456",
  phonenumber: "03-3225-3333",
  linkedin_profile: "https://www.linkedin.com/in/chrisjones",
  bio: "Graphic designer specializing in branding and UX/UI design.",
  contact_email: "christina@designhub.com",
  website_url: "https://christinajones.design"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_christina_jones.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_kim_parker = User.create!(
  username: "KimParker",
  email: "kimparker@example.com",
  password: "123456",
  phonenumber: "03-3225-4444",
  linkedin_profile: "https://www.linkedin.com/in/kimparker",
  bio: "Freelance writer and content creator.",
  contact_email: "kim@contentworld.com",
  website_url: "n/a"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_kim_parker.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_lee_jordan = User.create!(
  username: "LeeJordan",
  email: "leejordan@example.com",
  password: "123456",
  phonenumber: "03-3225-5555",
  linkedin_profile: "https://www.linkedin.com/in/leejordan",
  bio: "Project manager with extensive experience in IT projects.",
  contact_email: "lee@projectmasters.com",
  website_url: "https://leejordan.pm"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_lee_jordan.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_sam_rivera = User.create!(
  username: "SamRivera",
  email: "samrivera@example.com",
  password: "123456",
  phonenumber: "03-3225-6666",
  linkedin_profile: "https://www.linkedin.com/in/samrivera",
  bio: "Data scientist focused on machine learning and AI.",
  contact_email: "sam@datascience.com",
  website_url: "https://samrivera.ai"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_sam_rivera.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_taylor_green = User.create!(
  username: "TaylorGreen",
  email: "taylorgreen@example.com",
  password: "123456",
  phonenumber: "03-3225-7777",
  linkedin_profile: "https://www.linkedin.com/in/taylorgreen",
  bio: "Cybersecurity expert specializing in vulnerability assessment.",
  contact_email: "taylor@securetech.com",
  website_url: "https://taylorgreen.security"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_taylor_green.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_jordan_casey = User.create!(
  username: "JordanCasey",
  email: "jordancasey@example.com",
  password: "123456",
  phonenumber: "03-3225-8888",
  linkedin_profile: "https://www.linkedin.com/in/jordancasey",
  bio: "Mobile app developer with a love for Android and Flutter.",
  contact_email: "jordan@appdevs.com",
  website_url: "https://jordancasey.apps"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_jordan_casey.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_casey_lee = User.create!(
  username: "CaseyLee",
  email: "caseylee@example.com",
  password: "123456",
  phonenumber: "03-3225-9999",
  linkedin_profile: "https://www.linkedin.com/in/caseylee",
  bio: "Entrepreneur and startup consultant.",
  contact_email: "casey@startupworld.com",
  website_url: "n/a"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_casey_lee.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_alex_morgan = User.create!(
  username: "AlexMorgan",
  email: "alexmorgan@example.com",
  password: "123456",
  phonenumber: "03-3226-0000",
  linkedin_profile: "https://www.linkedin.com/in/alexmorgan",
  bio: "UI/UX designer passionate about creating intuitive user experiences.",
  contact_email: "alex@uidesign.com",
  website_url: "https://alexmorgan.design"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_alex_morgan.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_jordan_flex = User.create!(
  username: "JordanFlex",
  email: "jordanflex@example.com",
  password: "123456",
  phonenumber: "03-3226-0789",
  linkedin_profile: "https://www.linkedin.com/in/jordanflex",
  bio: "Certified gym coach with a passion for helping individuals achieve their fitness goals. Specializes in personalized training programs and nutrition coaching.",
  contact_email: "jordan@flexfit.com",
  website_url: "https://jordanflexfit.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_jordan_flex.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_dr_emily_hart = User.create!(
  username: "DrEmilyHart",
  email: "emilyhart@example.com",
  password: "123456",
  phonenumber: "03-3227-0456",
  linkedin_profile: "https://www.linkedin.com/in/dremilyhart",
  bio: "Board-certified general practitioner with a focus on preventative care, chronic disease management, and holistic health approaches. Committed to empowering patients through education and personalized care.",
  contact_email: "drhart@healthclinic.com",
  website_url: "https://drhartclinic.com"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_dr_emily_hart.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_mia_tanaka = User.create!(
  username: "MiaTanaka",
  email: "miatanaka@example.com",
  password: "123456",
  phonenumber: "03-3229-5678",
  linkedin_profile: "https://www.linkedin.com/in/miatanaka",
  bio: "Experienced real estate agent dedicated to helping foreigners find their perfect home in Japan. Specializes in rentals, purchases, and navigating the real estate market for non-native speakers.",
  contact_email: "mia@realestatejp.com",
  website_url: "https://miatanakarealestate.com"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=#{ethnicity}"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_mia_tanaka.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_akira_sato = User.create!(
  username: "AkiraSato",
  email: "akirasato@example.com",
  password: "123456",
  phonenumber: "03-3230-6789",
  linkedin_profile: "https://www.linkedin.com/in/akirasato",
  bio: "Passionate language instructor with over 10 years of experience teaching Japanese to students from around the world. Specializes in tailored language programs, cultural immersion, and business Japanese.",
  contact_email: "akira@japaneselanguage.com",
  website_url: "https://akirasatojapanese.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_akira_sato.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_naomi_kato = User.create!(
  username: "NaomiKato",
  email: "naomikato@example.com",
  password: "123456",
  phonenumber: "03-3230-7890",
  linkedin_profile: "https://www.linkedin.com/in/naomikato",
  bio: "Experienced education consultant dedicated to assisting expatriate families with schooling options in Japan. Expertise in international and local schooling systems, bilingual education, and cultural integration within educational settings.",
  contact_email: "naomi@edusupport.jp",
  website_url: "https://naomikatoeducationservices.jp"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_naomi_kato.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_hiroshi_takahashi = User.create!(
  username: "HiroshiTakahashi",
  email: "hiroshitakahashi@example.com",
  password: "123456",
  phonenumber: "03-3344-5566",
  linkedin_profile: "https://www.linkedin.com/in/hiroshitakahashi",
  bio: "Certified financial advisor with extensive experience in helping expatriates manage their finances in Japan. Expertise in investment strategies, tax optimization, and retirement planning within the Japanese financial system.",
  contact_email: "hiroshi@finadvisory.jp",
  website_url: "https://hiroshifinancialadvisory.jp"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_hiroshi_takahashi.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

puts "Creating Service Seeds..."
# SERVICE SEEDS...
catering_jamie_flavor = Service.create!(
title: "Catering",
price: "15000 per 10 meals (purchase only in per 10 pack)",
description: "Business meetings, weddings, we do it all!",
schedule: "Call for availability",
user: professional_jamie_flavor,
category: "Cooking, Partying, Meal Preparation, Event Planning"
)
catering_jamie_flavor_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709211669/profinder/photo-1672826979217-7156a305acf5_tjgghf.avif"
catering_jamie_flavor_file = URI.open(catering_jamie_flavor_url)
catering_jamie_flavor.photo.attach(io: catering_jamie_flavor_file, filename: "catering_jamie_flavor_image", content_type: "image/avif")

home_cooking_lessons_jamie_flavor = Service.create!(
  title: "Home Cooking Lessons",
  price: "5000 per lesson",
  description: "Learn to cook like a pro from the comfort of your home. Jamie Flavor brings his expertise in fusion cuisine directly to your kitchen.",
  schedule: "Weekends, 10 AM - 2 PM",
  user: professional_jamie_flavor,
  category: "Cooking Lessons, Home Cooking, Fusion Cuisine, Culinary Skills"
)
home_cooking_lessons_jamie_flavor_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709251589/profinder/photo-1466637574441-749b8f19452f_ao8omi.avif"
home_cooking_lessons_jamie_flavor_file = URI.open(home_cooking_lessons_jamie_flavor_url)
home_cooking_lessons_jamie_flavor.photo.attach(
  io: home_cooking_lessons_jamie_flavor_file,
  filename: "home_cooking_lessons_jamie_flavor_image.avif",
  content_type: "image/avif"
)

meal_planning_nutrition_jamie_flavor = Service.create!(
  title: "Meal Planning and Nutrition Consultation",
  price: "8000 per consultation",
  description: "Customized meal planning and nutrition advice to fit your lifestyle. Jamie Flavor combines his culinary expertise with a focus on health and wellness.",
  schedule: "By appointment",
  user: professional_jamie_flavor,
  category: "Meal Planning, Nutrition, Healthy Eating, Lifestyle"
)
meal_planning_nutrition_jamie_flavor_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709251684/profinder/photo-1463740839922-2d3b7e426a56_xdghku.avif"
meal_planning_nutrition_jamie_flavor_file = URI.open(meal_planning_nutrition_jamie_flavor_url)
meal_planning_nutrition_jamie_flavor.photo.attach(
  io: meal_planning_nutrition_jamie_flavor_file,
  filename: "meal_planning_nutrition_jamie_flavor_image.avif",
  content_type: "image/avif"
)

legal_consultation_chris_justice = Service.create!(
  title: "Legal Consultation",
  price: "50000 per case",
  description: "Comprehensive legal services for individuals and businesses. Specializing in civil rights, contract law, and dispute resolution.",
  schedule: "Weekdays 9 AM to 5 PM",
  user: professional_chris_justice,
  category: "Legal Advice, Civil Rights, Contract Law, Dispute Resolution"
)
legal_consultation_chris_justice_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709219309/profinder/premium_photo-1694281930514-4f4a760538de_prrjux.avif"
legal_consultation_chris_justice_file = URI.open(legal_consultation_chris_justice_url)
legal_consultation_chris_justice.photo.attach(
  io: legal_consultation_chris_justice_file,
  filename: "legal_consultation_chris_justice_image.avif",
  content_type: "image/avif"
)

startup_legal_advisory_chris_justice = Service.create!(
  title: "Startup Legal Advisory",
  price: "35000 per consultation",
  description: "Navigate the legal landscape of starting a business with confidence. Chris Justice offers expert advice on incorporation, intellectual property, contracts, and compliance.",
  schedule: "Weekdays 9 AM to 5 PM",
  user: professional_chris_justice,
  category: "Startup Law, Intellectual Property, Contracts, Compliance"
)
startup_legal_advisory_chris_justice_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709251765/profinder/photo-1589829545856-d10d557cf95f_bxs6x4.avif"
startup_legal_advisory_chris_justice_file = URI.open(startup_legal_advisory_chris_justice_url)
startup_legal_advisory_chris_justice.photo.attach(
  io: startup_legal_advisory_chris_justice_file,
  filename: "startup_legal_advisory_chris_justice_image.avif",
  content_type: "image/avif"
)

immigration_documentation_assistance_chris_justice = Service.create!(
  title: "Immigration Documentation Assistance",
  price: "10000 per hour",
  description: "Expert assistance with immigration documentation, including visa applications, residency registration, and naturalization paperwork. Chris Justice helps simplify the complex immigration process, ensuring your documentation is accurate and submitted timely.",
  schedule: "Weekdays, 9 AM - 5 PM (Appointment needed)",
  user: professional_chris_justice,
  category: "Immigration Law, Visa Assistance, Residency Registration, Naturalization Support"
)
immigration_documentation_assistance_chris_justice_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709254287/profinder/photo-1654163600175-efc47ce20b29_wzmc1o.avif"
immigration_documentation_assistance_chris_justice_file = URI.open(immigration_documentation_assistance_chris_justice_url)
immigration_documentation_assistance_chris_justice.photo.attach(
  io: immigration_documentation_assistance_chris_justice_file,
  filename: "immigration_documentation_assistance_chris_justice_image.avif",
  content_type: "image/avif"
)

dental_services_sam_smiles = Service.create!(
  title: "Comprehensive Dental Care",
  price: "20000 per visit",
  description: "Experienced dentist focused on comprehensive care and patient comfort. Specializing in cosmetic dentistry.",
  schedule: "Mon to Fri, 8 AM - 3 PM",
  user: professional_sam_smiles,
  category: "Dentistry, Cosmetic Dentistry, Oral Health, Patient Care"
)
dental_services_sam_smiles_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709225911/profinder/premium_photo-1661277793925-9a74734a8fd9_fmjmep.avif"
dental_services_sam_smiles_file = URI.open(dental_services_sam_smiles_url)
dental_services_sam_smiles.photo.attach(
  io: dental_services_sam_smiles_file,
  filename: "dental_services_sam_smiles_image.avif",
  content_type: "image/avif"
)

cosmetic_dentistry_sam_smiles = Service.create!(
  title: "Cosmetic Dentistry",
  price: "20000 per procedure",
  description: "Transform your smile with our cosmetic dentistry services. From teeth whitening to veneers, Dr. Sam Smiles offers a range of procedures to enhance your smile.",
  schedule: "Mon to Fri, 8 AM - 3 PM",
  user: professional_sam_smiles,
  category: "Teeth Whitening, Veneers, Cosmetic Procedures, Smile Makeover"
)
cosmetic_dentistry_sam_smiles_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709252495/profinder/photo-1525893277997-207c04d47d65_f926xz.avif"
cosmetic_dentistry_sam_smiles_file = URI.open(cosmetic_dentistry_sam_smiles_url)
cosmetic_dentistry_sam_smiles.photo.attach(
  io: cosmetic_dentistry_sam_smiles_file,
  filename: "cosmetic_dentistry_sam_smiles_image.avif",
  content_type: "image/avif"
)

emergency_dental_services_sam_smiles = Service.create!(
  title: "Emergency Dental Services",
  price: "Fee varies on treatment",
  description: "Immediate dental care when you need it most. Dr. Sam Smiles provides urgent treatment for dental emergencies, including pain relief, infections, and accidents.",
  schedule: "24/7 for emergencies",
  user: professional_sam_smiles,
  category: "Urgent Care, Pain Relief, Infection Treatment, Accidental Damage"
)
emergency_dental_services_sam_smiles_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709252561/profinder/photo-1616391182219-e080b4d1043a_xde22k.avif"
emergency_dental_services_sam_smiles_file = URI.open(emergency_dental_services_sam_smiles_url)
emergency_dental_services_sam_smiles.photo.attach(
  io: emergency_dental_services_sam_smiles_file,
  filename: "emergency_dental_services_sam_smiles_image.avif",
  content_type: "image/avif"
)

photography_ava_shutter = Service.create!(
  title: "Professional Photography",
  price: "10000 per session",
  description: "Capture life's moments with professional photography. Specializes in portrait and event photography.",
  schedule: "By appointment",
  user: professional_ava_shutter,
  category: "Photography, Portraits, Events, Lifestyle"
)
photography_ava_shutter_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709225852/profinder/photo-1505739998589-00fc191ce01d_z09h8x.avif"
photography_ava_shutter_file = URI.open(photography_ava_shutter_url)
photography_ava_shutter.photo.attach(
  io: photography_ava_shutter_file,
  filename: "photography_ava_shutter_image.avif",
  content_type: "image/avif"
)

wedding_photography_ava_shutter = Service.create!(
  title: "Wedding Photography",
  price: "30000 per event",
  description: "Capture your special day with Ava Shutter's wedding photography. Offering a blend of candid moments and posed portraits to forever memorialize your celebration.",
  schedule: "By appointment",
  user: professional_ava_shutter,
  category: "Weddings, Event Photography, Portraits, Candid Shots"
)
wedding_photography_ava_shutter_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709252685/profinder/photo-1533091090875-1ff4acc497dd_nzj4fq.avif"
wedding_photography_ava_shutter_file = URI.open(wedding_photography_ava_shutter_url)
wedding_photography_ava_shutter.photo.attach(
  io: wedding_photography_ava_shutter_file,
  filename: "wedding_photography_ava_shutter_image.avif",
  content_type: "image/avif"
)

photography_lessons_ava_shutter = Service.create!(
  title: "Photography Lessons",
  price: "20000 per 4-session package",
  description: "Learn the art of photography with Ava Shutter. From basics to advanced techniques, these lessons cover various aspects of photography tailored to your skill level.",
  schedule: "Weekends, 9 AM - 1 PM",
  user: professional_ava_shutter,
  category: "Photography Basics, Advanced Techniques, Camera Handling, Photo Editing"
)
photography_lessons_ava_shutter_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709252753/profinder/photo-1613235577937-9ac3eed992fc_h613nn.avif"
photography_lessons_ava_shutter_file = URI.open(photography_lessons_ava_shutter_url)
photography_lessons_ava_shutter.photo.attach(
  io: photography_lessons_ava_shutter_file,
  filename: "photography_lessons_ava_shutter_image.avif",
  content_type: "image/avif"
)

accounting_lee_numbers = Service.create!(
  title: "Accounting and Financial Planning",
  price: "25000 per consultation",
  description: "Detail-oriented accountant with expertise in tax planning and financial analysis. Helping businesses and individuals achieve financial health.",
  schedule: "Mon to Fri, 9 AM - 4 PM",
  user: professional_lee_numbers,
  category: "Accounting, Tax Planning, Financial Analysis, Consultation"
)
accounting_lee_numbers_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226014/profinder/photo-1457904375453-3e1fc2fc76f4_gs4ebe.avif"
accounting_lee_numbers_file = URI.open(accounting_lee_numbers_url)
accounting_lee_numbers.photo.attach(
  io: accounting_lee_numbers_file,
  filename: "accounting_lee_numbers_image.avif",
  content_type: "image/avif"
)

personal_finance_consulting_lee_numbers = Service.create!(
  title: "Personal Finance Consulting",
  price: "15000 per consultation",
  description: "Gain control over your finances with expert advice from Lee Numbers. Offering personalized consulting on budgeting, saving, investing, and tax planning.",
  schedule: "Weekdays 9 AM to 4 PM",
  user: professional_lee_numbers,
  category: "Budgeting, Saving, Investing, Tax Planning"
)
personal_finance_consulting_lee_numbers_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253055/profinder/premium_photo-1661775845874-a3722dfb75b9_jbev01.avif"
personal_finance_consulting_lee_numbers_file = URI.open(personal_finance_consulting_lee_numbers_url)
personal_finance_consulting_lee_numbers.photo.attach(
  io: personal_finance_consulting_lee_numbers_file,
  filename: "personal_finance_consulting_lee_numbers_image.avif",
  content_type: "image/avif"
)

tax_return_assistance_lee_numbers = Service.create!(
  title: "Tax Return Assistance",
  price: "12000 per filing",
  description: "Simplify your tax season with professional tax return assistance from Lee Numbers. From personal filings to small business taxes, ensure accuracy and maximize your returns.",
  schedule: "January - April, Weekdays 9 AM to 6 PM",
  user: professional_lee_numbers,
  category: "Tax Filing, Tax Optimization, Small Business Taxes, Personal Taxes"
)
tax_return_assistance_lee_numbers_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253198/profinder/premium_photo-1679923913530-16c91821a213_dmei8k.avif"
tax_return_assistance_lee_numbers_file = URI.open(tax_return_assistance_lee_numbers_url)
tax_return_assistance_lee_numbers.photo.attach(
  io: tax_return_assistance_lee_numbers_file,
  filename: "tax_return_assistance_lee_numbers_image.avif",
  content_type: "image/avif"
)

full_stack_dev_alex_taylor = Service.create!(
  title: "Full-stack Development",
  price: "40000 per project",
  description: "End-to-end web development services from database to front-end, leveraging the latest technologies for robust and scalable applications.",
  schedule: "Mon to Fri, 10 AM - 7 PM",
  user: professional_alex_taylor,
  category: "Web Development, Mobile Applications, Software Engineering, Technology Solutions"
)
full_stack_dev_alex_taylor_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226239/profinder/photo-1629904853893-c2c8981a1dc5_hk9lzk.avif"
full_stack_dev_alex_taylor_file = URI.open(full_stack_dev_alex_taylor_url)
full_stack_dev_alex_taylor.photo.attach(
  io: full_stack_dev_alex_taylor_file,
  filename: "full_stack_dev_alex_taylor_image.avif",
  content_type: "image/avif"
)

puts "Still making Service Seeds...."

digital_marketing_morgan_bailey = Service.create!(
  title: "Digital Marketing Solutions",
  price: "20000 per campaign",
  description: "Boost your brand's online presence with our comprehensive digital marketing services, including SEO, content marketing, and social media management.",
  schedule: "Flexible scheduling available",
  user: professional_morgan_bailey,
  category: "SEO, Social Media, Content Marketing, Brand Strategy"
)
digital_marketing_morgan_bailey_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709219657/profinder/photo-1611926653458-09294b3142bf_ra5fip.avif"
digital_marketing_morgan_bailey_file = URI.open(digital_marketing_morgan_bailey_url)
digital_marketing_morgan_bailey.photo.attach(
  io: digital_marketing_morgan_bailey_file,
  filename: "digital_marketing_morgan_bailey_image",
  content_type: "image/avif"
)

graphic_design_christina_jones = Service.create!(
  title: "Graphic Design Services",
  price: "10000 per design",
  description: "Creative and impactful graphic design solutions for your branding, marketing materials, and digital presence. From logos to websites, bring your vision to life.",
  schedule: "Mon to Fri, 9 AM - 6 PM",
  user: professional_christina_jones,
  category: "Branding, UI/UX Design, Print Materials, Digital Media"
)
graphic_design_christina_jones_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709224433/profinder/premium_photo-1661281347096-4a250151f422_uoc40q.avif"
graphic_design_christina_jones_file = URI.open(graphic_design_christina_jones_url)
graphic_design_christina_jones.photo.attach(
  io: graphic_design_christina_jones_file,
  filename: "graphic_design_christina_jones_image.avif",
  content_type: "image/avif"
)

freelance_writing_kim_parker = Service.create!(
  title: "Freelance Writing Services",
  price: "10000 per article",
  description: "Elevate your content with engaging, SEO-optimized articles crafted by a professional freelance writer. Specializing in blog posts, web content, and editorials.",
  schedule: "Project-based timelines",
  user: professional_kim_parker,
  category: "Content Writing, SEO Optimization, Blogging, Editorial Writing"
)
freelance_writing_kim_parker_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709219971/profinder/photo-1505682634904-d7c8d95cdc50_qrgyqt.avif"
freelance_writing_kim_parker_file = URI.open(freelance_writing_kim_parker_url)
freelance_writing_kim_parker.photo.attach(
  io: freelance_writing_kim_parker_file,
  filename: "freelance_writing_kim_parker_image",
  content_type: "image/avif"
)

project_management_lee_jordan = Service.create!(
  title: "Comprehensive Project Management",
  price: "30000 per project", # Simplified flat rate pricing
  description: "Expert project management for IT, construction, and event planning, ensuring your projects are completed efficiently and effectively.",
  schedule: "Mon to Fri, 9 AM - 5 PM",
  user: professional_lee_jordan,
  category: "IT Projects, Construction Management, Event Planning, Budgeting & Planning"
)
project_management_lee_jordan_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709220582/profinder/photo-1531403009284-440f080d1e12_s7hrcn.avif"
project_management_lee_jordan_file = URI.open(project_management_lee_jordan_url)
project_management_lee_jordan.photo.attach(
  io: project_management_lee_jordan_file,
  filename: "project_management_lee_jordan_image",
  content_type: "image/avif"
)

data_science_consulting_sam_rivera = Service.create!(
  title: "Data Science Consulting",
  price: "55000 per analysis",
  description: "Expert data science consulting services to help you leverage big data for actionable insights, with a focus on machine learning and predictive analytics.",
  schedule: "By appointment",
  user: professional_sam_rivera,
  category: "Big Data, Predictive Analytics, Machine Learning, Data Visualization"
)
data_science_consulting_sam_rivera_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226771/profinder/photo-1551288049-bebda4e38f71_ct9ljo.avif"
data_science_consulting_sam_rivera_file = URI.open(data_science_consulting_sam_rivera_url)
data_science_consulting_sam_rivera.photo.attach(
  io: data_science_consulting_sam_rivera_file,
  filename: "data_science_consulting_sam_rivera_image.avif",
  content_type: "image/avif"
)

cybersecurity_taylor_green = Service.create!(
  title: "Cybersecurity Consultation Services",
  price: "12000 per hour", # Clear hourly rate
  description: "Protect your digital assets with cutting-edge cybersecurity strategies. Offering threat assessment, system fortification, and emergency response.",
  schedule: "By appointment",
  user: professional_taylor_green,
  category: "Cybersecurity, Threat Assessment, IT Fortification, Cyber Emergency Response"
)
cybersecurity_taylor_green_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709220634/profinder/photo-1614064548237-096f735f344f_ylukgy.avif"
cybersecurity_taylor_green_file = URI.open(cybersecurity_taylor_green_url)
cybersecurity_taylor_green.photo.attach(
  io: cybersecurity_taylor_green_file,
  filename: "cybersecurity_taylor_green_image",
  content_type: "image/avif"
)

mobile_app_dev_jordan_casey = Service.create!(
  title: "Mobile App Development",
  price: "75000 per app",
  description: "Innovative mobile app development services for iOS and Android. Specializing in user-centric design and seamless functionality.",
  schedule: "Mon to Fri, 9 AM - 6 PM",
  user: professional_jordan_casey,
  category: "iOS Development, Android Development, Cross-Platform Solutions, App Design"
)
mobile_app_dev_jordan_casey_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226865/profinder/photo-1512941937669-90a1b58e7e9c_iumuap.avif"
mobile_app_dev_jordan_casey_file = URI.open(mobile_app_dev_jordan_casey_url)
mobile_app_dev_jordan_casey.photo.attach(
  io: mobile_app_dev_jordan_casey_file,
  filename: "mobile_app_dev_jordan_casey_image.avif",
  content_type: "image/avif"
)

startup_consulting_casey_lee = Service.create!(
  title: "Startup Consulting",
  price: "30000 per consultation",
  description: "Strategic startup consulting services to help entrepreneurs navigate the complexities of launching and growing a successful business.",
  schedule: "By appointment",
  user: professional_casey_lee,
  category: "Business Strategy, Financial Planning, Market Analysis, Growth Hacking"
)
startup_consulting_casey_lee_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226923/profinder/photo-1556761175-5973dc0f32e7_vdenan.avif"
startup_consulting_casey_lee_file = URI.open(startup_consulting_casey_lee_url)
startup_consulting_casey_lee.photo.attach(
  io: startup_consulting_casey_lee_file,
  filename: "startup_consulting_casey_lee_image.avif",
  content_type: "image/avif"
)

ui_ux_design_alex_morgan = Service.create!(
  title: "UI/UX Design Services",
  price: "40000 per project",
  description: "Creating intuitive and engaging user interfaces for web and mobile applications, with a focus on user experience and design thinking.",
  schedule: "Mon to Fri, 10 AM - 5 PM",
  user: professional_alex_morgan,
  category: "User Interface Design, User Experience Design, Interactive Design, Prototype Testing"
)
ui_ux_design_alex_morgan_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226996/profinder/photo-1522542550221-31fd19575a2d_ei8adx.avif"
ui_ux_design_alex_morgan_file = URI.open(ui_ux_design_alex_morgan_url)
ui_ux_design_alex_morgan.photo.attach(
  io: ui_ux_design_alex_morgan_file,
  filename: "ui_ux_design_alex_morgan_image.avif",
  content_type: "image/avif"
)

personal_training_jordan_flex = Service.create!(
  title: "Personal Training",
  price: "10000 per session",
  description: "Customized personal training programs designed to meet your fitness goals. Whether it's weight loss, muscle gain, or improved athletic performance, Jordan Flex will guide you every step of the way.",
  schedule: "By appointment",
  user: professional_jordan_flex,
  category: "Personal Training, Fitness, Weight Loss, Muscle Gain"
)
personal_training_jordan_flex_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253394/profinder/photo-1571019614242-c5c5dee9f50b_gf81lw.avif"
personal_training_jordan_flex_file = URI.open(personal_training_jordan_flex_url)
personal_training_jordan_flex.photo.attach(
  io: personal_training_jordan_flex_file,
  filename: "personal_training_jordan_flex_image.avif",
  content_type: "image/avif"
)

nutrition_coaching_jordan_flex = Service.create!(
  title: "Nutrition Coaching",
  price: "8000 per consultation",
  description: "Achieve your health and fitness goals faster with tailored nutrition coaching. Jordan Flex offers expert advice on diet planning, meal prep, and nutrition strategies to complement your training regimen.",
  schedule: "By appointment",
  user: professional_jordan_flex,
  category: "Nutrition, Diet Planning, Meal Prep, Health Goals"
)
nutrition_coaching_jordan_flex_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253458/profinder/photo-1535914254981-b5012eebbd15_gex0nq.avif"
nutrition_coaching_jordan_flex_file = URI.open(nutrition_coaching_jordan_flex_url)
nutrition_coaching_jordan_flex.photo.attach(
  io: nutrition_coaching_jordan_flex_file,
  filename: "nutrition_coaching_jordan_flex_image.avif",
  content_type: "image/avif"
)

general_health_checkups = Service.create!(
  title: "General Health Checkups",
  price: "12000 (Health insurance accepted)",
  description: "Routine health checkups for all ages to monitor health status, detect early signs of disease, and discuss lifestyle habits for long-term wellness.",
  schedule: "Weekdays, 9 AM - 5 PM",
  user: professional_dr_emily_hart,
  category: "Routine Checkup, Disease Prevention, Health Monitoring, Lifestyle Guidance"
)
general_health_checkups_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253986/profinder/photo-1576766125535-b04e15fd0273_g5fuku.avif"
general_health_checkups_file = URI.open(general_health_checkups_url)
general_health_checkups.photo.attach(
  io: general_health_checkups_file,
  filename: "general_health_checkups_image.avif",
  content_type: "image/avif"
)

comprehensive_health_screenings = Service.create!(
  title: "Comprehensive Health Screenings",
  price: "15000 (Health insurance accepted)",
  description: "Extensive health screenings to assess risk factors and identify early signs of diseases. Tailored advice on prevention and lifestyle modifications for optimal health.",
  schedule: "Weekdays, 9 AM - 4 PM",
  user: professional_dr_emily_hart,
  category: "Preventative Care, Health Screening, Risk Assessment, Lifestyle Advice"
)
comprehensive_health_screenings_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253904/profinder/photo-1505751172876-fa1923c5c528_ypizoc.avif"
comprehensive_health_screenings_file = URI.open(comprehensive_health_screenings_url)
comprehensive_health_screenings.photo.attach(
  io: comprehensive_health_screenings_file,
  filename: "comprehensive_health_screenings_image.avif",
  content_type: "image/avif"
)

rental_assistance_for_foreigners = Service.create!(
  title: "Rental Assistance for Foreigners",
  price: "Free Consultation",
  description: "Comprehensive assistance finding and securing rental properties in Japan, tailored to the needs of foreigners. Includes property viewings, negotiation with landlords, and understanding rental agreements.",
  schedule: "By appointment",
  user: professional_mia_tanaka,
  category: "Rentals, Leasing Assistance, Negotiation, Contract Explanation"
)
rental_assistance_for_foreigners_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709254453/profinder/premium_photo-1661775953246-410e3a33977c_gam9ox.avif"
rental_assistance_for_foreigners_file = URI.open(rental_assistance_for_foreigners_url)
rental_assistance_for_foreigners.photo.attach(
  io: rental_assistance_for_foreigners_file,
  filename: "rental_assistance_for_foreigners_image.avif",
  content_type: "image/avif"
)

home_purchase_consultation = Service.create!(
  title: "Home Purchase Consultation",
  price: "Free Consultation",
  description: "Expert guidance through the process of purchasing a home in Japan, from property search to closing. Services include market analysis, property inspections, negotiation, and legal paperwork.",
  schedule: "By appointment",
  user: professional_mia_tanaka,
  category: "Home Buying, Market Analysis, Property Inspection, Legal Paperwork"
)
home_purchase_consultation_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709254531/profinder/photo-1480796927426-f609979314bd_dwh6wd.avif"
home_purchase_consultation_file = URI.open(home_purchase_consultation_url)
home_purchase_consultation.photo.attach(
  io: home_purchase_consultation_file,
  filename: "home_purchase_consultation_image.avif",
  content_type: "image/avif"
)

personalized_japanese_language_lessons = Service.create!(
  title: "Personalized Japanese Language Lessons",
  price: "5000 per hour",
  description: "Customized Japanese language lessons tailored to your learning style and goals. From beginner to advanced levels, improve your language skills effectively with one-on-one instruction.",
  schedule: "Flexible scheduling available",
  user: professional_akira_sato,
  category: "Language Learning, Personalized Instruction, All Levels, One-on-One Lessons"
)
personalized_japanese_language_lessons_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709254947/profinder/photo-1511342802705-a7b79a427eb5_aldoi6.avif"
personalized_japanese_language_lessons_file = URI.open(personalized_japanese_language_lessons_url)
personalized_japanese_language_lessons.photo.attach(
  io: personalized_japanese_language_lessons_file,
  filename: "personalized_japanese_language_lessons_image.avif",
  content_type: "image/avif"
)

business_japanese_and_cultural_etiquette = Service.create!(
  title: "Business Japanese and Cultural Etiquette",
  price: "6000 per hour",
  description: "Master business Japanese and understand the nuances of Japanese corporate culture. Ideal for professionals seeking to work in Japan or collaborate with Japanese companies.",
  schedule: "By appointment",
  user: professional_akira_sato,
  category: "Business Japanese, Cultural Etiquette, Professional Language Use, Corporate Culture"
)
business_japanese_and_cultural_etiquette_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709255002/profinder/photo-1473167146081-90eecb675695_d1jp1z.avif"
business_japanese_and_cultural_etiquette_file = URI.open(business_japanese_and_cultural_etiquette_url)
business_japanese_and_cultural_etiquette.photo.attach(
  io: business_japanese_and_cultural_etiquette_file,
  filename: "business_japanese_and_cultural_etiquette_image.avif",
  content_type: "image/avif"
)

schooling_options_consultation = Service.create!(
  title: "Schooling Options Consultation for Expatriate Families",
  price: "25000 per consultation",
  description: "Personalized consultation services to help expatriate families understand and navigate the schooling options available in Japan. From international schools that offer curricula in English to local Japanese schools that provide immersion experiences, Naomi Kato offers insights, application assistance, and strategies for educational success in Japan.",
  schedule: "By appointment",
  user: professional_naomi_kato,
  category: "International Schools, Local Education System, Bilingual Education, School Application Assistance"
)
schooling_options_consultation_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709255238/profinder/photo-1617721926586-4eecce739745_llychr.avif"
schooling_options_consultation_file = URI.open(schooling_options_consultation_url)
schooling_options_consultation.photo.attach(
  io: schooling_options_consultation_file,
  filename: "schooling_options_consultation_image.avif",
  content_type: "image/avif"
)

investment_planning_strategy = Service.create!(
  title: "Investment Planning and Strategy",
  price: "30000 per session",
  description: "Tailored investment planning and strategy sessions designed to help expatriates maximize their returns while navigating the complexities of investing in Japan. From stocks and bonds to real estate investments, Hiroshi Takahashi provides expert advice to grow your portfolio.",
  schedule: "By appointment",
  user: professional_hiroshi_takahashi,
  category: "Investment Planning, Portfolio Management, Financial Strategy, Expatriate Finance"
)
investment_planning_strategy_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709255367/profinder/premium_photo-1661688996907-2b2d12d35f9f_tyuhac.avif"
investment_planning_strategy_file = URI.open(investment_planning_strategy_url)
investment_planning_strategy.photo.attach(
  io: investment_planning_strategy_file,
  filename: "investment_planning_strategy_image.avif",
  content_type: "image/avif"
)

tax_optimization_filing_assistance = Service.create!(
  title: "Tax Optimization and Filing Assistance",
  price: "20000 per session",
  description: "Comprehensive service offering personalized tax optimization strategies and filing assistance for expatriates living in Japan. Hiroshi Takahashi ensures you understand your tax obligations and can take advantage of all applicable tax benefits.",
  schedule: "January - March, Weekdays 9 AM - 5 PM",
  user: professional_hiroshi_takahashi,
  category: "Tax Filing, Tax Optimization, Expatriate Taxation, Financial Planning"
)
tax_optimization_filing_assistance_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709255423/profinder/premium_photo-1661639419961-6158e94e4f47_wuklpt.avif"
tax_optimization_filing_assistance_file = URI.open(tax_optimization_filing_assistance_url)
tax_optimization_filing_assistance.photo.attach(
  io: tax_optimization_filing_assistance_file,
  filename: "tax_optimization_filing_assistance_image.avif",
  content_type: "image/avif"
)


# user1 = User.create!(
#   username: "Daniel Chin",
#   email: "danchin327@gmail.com",
#   password: "123456"
# )

# 8.times do
#   user = User.create!(email: Faker::Internet.email,
#                       password: '123123')
#   gender = 'all'
#   age = 'all'
#   ethnicity = 'all'

  # url = "https://this-person-does-not-exist.com/new?gender=#{gender}&age=#{age}&etnic=#{ethnicity}"
  # json = URI.open(url).string
  # src = JSON.parse(json)['src']
  # p photo_url = "https://this-person-does-not-exist.com#{src}"
  # file = URI.open(photo_url)
  # user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
# end

# immigration_guidance = Service.create!(title: "Immigration Procedure Guidance",
#   price: ["10000 per a hour", "20000 per a hour", "30000 per a hour"].sample,
#   description: "I've been advising and representing clients in criminal or civil proceedings and in other legal matters for more than 20 years in Japan.",
#   schedule: "Monday through Friday. 9am to 5pm.",
#   category: ["Attorney", "Law", "Lawyer"].sample,
#   user: User.all.sample
#   )

# teeth_whitening = Service.create!(title: "Tooth Whitening",
#   price: ["5000 per a session", "10000 per a session", "20000 per a session"].sample,
#   description: "Making your smile ten times brighter.",
#   schedule: "Monday through Friday. 9am to 5pm.",
#   category: ["Dentist","Oral Hygene", "Beauty Clinic"].sample,
#   user: User.all.sample
#   )

# catering = Service.create!(title: "Catering",
#   price: ["5000 per an event", "10000 per an event", "20000 per an event"].sample,
#   description: "Delivering something delicious to everywhere",
#   schedule: "Monday through Friday. 9am to 5pm.",
#   category: ["Cooking", "Partying", "Meal Preparation"].sample,
#   user: User.all.sample
#   )

# real_estate = Service.create!(title: "Real Estate",
#   price: "Free of Charge",
#   description: "Introducing your new home in Japan",
#   schedule: "Monday through Friday. 9am to 5pm.",
#   category: ["Apartment", "Housing"].sample,
#   user: User.all.sample
# )

# Service.all.first(2).each do |service|
# Bookmark.create!(
#   service: service,
#   user: user1
# )
# end

# Review.create!(rating: 4,
# comment: "Speaks very good english and service is excellent as well.",
# eng_rating: 5,
# service: Service.all.sample,
# user: user1
# )

# Review.create!(rating: 1,
#   comment: "Spoke no english and service is terrible.",
#   eng_rating: 1,
#   service: Service.all.sample,
#   user: user1
# )

# Review.create!(rating: 4,
#   comment: "Services are fantastic. Staff can speak enough englisg to get the job done.",
#   eng_rating: 3,
#   service: Service.all.sample,
#   user: user1
# )

puts "DB Seeds completed."
