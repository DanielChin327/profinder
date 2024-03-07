require 'open-uri'
require 'nokogiri'

puts "Cleaning the DB..."
Service.destroy_all
User.destroy_all
Review.destroy_all
Booking.destroy_all

puts "Creating users..."

age = rand(25..60).to_s
ethnicity = 'asian'
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

user_Yoshio_Kaneko = User.create!(
  username: "YoshioKaneko",
  email: "kanekoyoshio007@gmail.com",
  password: "123456",
  phonenumber: "03-3224-9999",
  linkedin_profile: "https://www.linkedin.com/in/username",
  bio: "Working on becoming a software developer.",
  contact_email: "kanekoyoshio007@gmail.com",
  website_url: "n/a",
  address: "1 Chome-2-3 Shibuya, Tokyo"
)
yoshio_url = "https://res.cloudinary.com/diidd6j2o/image/upload/v1709788914/yoshio_s_icon_fminsx.png"
file = URI.open(yoshio_url)
user_Yoshio_Kaneko.photo.attach(io: file, filename: 'yoshio_s_icon_fminsx.png', content_type: 'image/png')
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

professional_ayumi_takahashi = User.create!(
  username: "AyumiTakahashi",
  email: "ayumitakahashi@example.com",
  password: "123456",
  phonenumber: "03-3456-7890",
  linkedin_profile: "https://www.linkedin.com/in/ayumitakahashi",
  bio: "Certified tax consultant with a focus on providing comprehensive tax planning and filing services for expatriates living in Japan. Expertise in international tax law to optimize your tax position.",
  contact_email: "ayumi@takahashitax.com",
  website_url: "https://takahashitax.com"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=40&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_ayumi_takahashi.photo.attach(io: file, filename: 'ayumi_takahashi.png', content_type: 'image/png')

sleep(1)
min = 35.71722
max =  35.74280
min2 = 139.70200
max2 = 139.72484
expatriate_tax_consultation_ayumi = Service.create!(
  title: "Ayumi's Expatriate Tax Consultation",
  price: "20000 per session",
  description: "Navigate Japan's tax landscape with ease. I offer personalized tax consultation and filing services tailored to the unique needs of expatriates. Ensure compliance and optimize your tax situation with expert advice.",
  schedule: "Weekdays, 9 AM to 5 PM",
  user: professional_ayumi_takahashi,
  category: "Expatriate Finance, Tax Consultation, International Tax Law",
  address: "3 Chome-12-9 Toshima, Toshima City, Tokyo 132-0013",
  latitude: rand(min..max),
  longitude: rand(min2..max2)
)
expatriate_tax_consultation_ayumi_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709789414/profinder/istockphoto-1416399964-612x612_esd47o.jpg"
expatriate_tax_consultation_ayumi_file = URI.open(expatriate_tax_consultation_ayumi_url)
expatriate_tax_consultation_ayumi.photo.attach(
  io: expatriate_tax_consultation_ayumi_file,
  filename: "expatriate_tax_consultation_ayumi.jpg",
  content_type: "image/jpeg"
)

review_dan_chin_ayumi_finance = Review.create!(
  rating: 3,
  comment: "Ayumi's tax consultation service fit what I was looking for. Her deep understanding of both Japanese and international tax laws made my tax filing process stress-free. She provided clear guidance in English, which was crucial for me as an expat. Her professionalism and thorough approach to tax planning have saved me a significant amount in taxes. Highly recommended for any expatriates struggling with their tax situation in Japan.",
  eng_rating: 5,
  user: user_dan_chin,
  service: expatriate_tax_consultation_ayumi
)

professional_hiroki_nakamura = User.create!(
  username: "HirokiNakamura",
  email: "hirokinakamura@example.com",
  password: "123456",
  phonenumber: "03-6677-8899",
  linkedin_profile: "https://www.linkedin.com/in/hirokinakamura",
  bio: "Innovative financial analyst with expertise in market trends, investment opportunities, and economic strategies tailored for the expatriate community in Japan. I’m here to help you make informed decisions that align with your financial goals.",
  contact_email: "hiroki@nakamurafinancial.com",
  website_url: "https://nakamurafinancial.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=35&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_hiroki_nakamura.photo.attach(io: file, filename: 'hiroki_nakamura.png', content_type: 'image/png')

sleep(1)
market_insight_consultation_hiroki = Service.create!(
  title: "Hiroki's Market Insight and Finance Consultation",
  price: "25000 per session",
  description: "Gain unparalleled insights into Japan's financial market with Hiroki Nakamura. From identifying robust investment opportunities to understanding the latest market trends, my service is designed to equip expatriates with the knowledge to thrive financially in Japan.",
  schedule: "Weekdays, 10 AM to 6 PM",
  user: professional_hiroki_nakamura,
  category: "Market Analysis, Finance Consulting, Expatriate Advising",
  address: "5 Chome-11-2 Minato, Tokyo 108-0075"
)
market_insight_consultation_hiroki_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709789814/profinder/istockphoto-516011106-612x612_dgx2dn.jpg"
market_insight_consultation_hiroki_file = URI.open(market_insight_consultation_hiroki_url)
market_insight_consultation_hiroki.photo.attach(
  io: market_insight_consultation_hiroki_file,
  filename: "market_insight_consultation_hiroki.jpg",
  content_type: "image/jpeg"
)

review_dan_chin_hiroki_finance = Review.create!(
  rating: 5,
  comment: "Hiroki's consultation opened my eyes to several lucrative investment avenues within Japan's unique market environment. His detailed analysis and understanding of economic indicators have been invaluable. Moreover, his ability to explain complex financial concepts in English has made planning my investments much more accessible. A must-have service for any expat serious about investing in Japan.",
  eng_rating: 5,
  user: user_dan_chin,
  service: market_insight_consultation_hiroki
)

professional_yumi_fujita = User.create!(
  username: "YumiFujita",
  email: "yumifujita@example.com",
  password: "123456",
  phonenumber: "03-5597-8844",
  linkedin_profile: "https://www.linkedin.com/in/yumifujita",
  bio: "Expert in personal financial planning and estate management with a passion for helping expatriates in Japan secure their financial future. With over 15 years of experience, I offer personalized advice to ensure your wealth grows and is protected.",
  contact_email: "contact@fujitafinancial.com",
  website_url: "https://fujitafinancial.com"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=45&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_yumi_fujita.photo.attach(io: file, filename: 'yumi_fujita.png', content_type: 'image/png')

sleep(1)
min = 35.705924
max = 35.718641
min2 = 139.784154
max2 = 139.793281
personal_finance_planning_yumi = Service.create!(
  title: "Yumi's Personal Finance & Estate Planning",
  price: "35000 per session",
  description: "Empower your financial future in Japan with comprehensive personal finance and estate planning. Tailored to expatriates, my service ensures your financial security, from investment strategies to estate management, all catered to your unique needs.",
  schedule: "By appointment, Monday to Friday, 9 AM to 6 PM",
  user: professional_yumi_fujita,
  category: "Personal Finance, Estate Planning, Expatriate Services",
  address: "4 Chome-6-1 Chuo, Chuo City, Tokyo 279-0002",
  latitude: rand(min..max),
  longitude: rand(min2..max2)
)
personal_finance_planning_yumi_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709789942/profinder/istockphoto-1201563792-612x612_aljqhd.jpg"
personal_finance_planning_yumi_file = URI.open(personal_finance_planning_yumi_url)
personal_finance_planning_yumi.photo.attach(
  io: personal_finance_planning_yumi_file,
  filename: "personal_finance_planning_yumi.jpg",
  content_type: "image/jpeg"
)

review_jane_doe_yumi_finance = Review.create!(
  rating: 3,
  comment: "Yumi Fujita's expertise in personal finance and estate planning has been incredibly valuable to me and my family. Her personalized approach and understanding of the expatriate financial landscape in Japan have provided us with peace of mind and a clear path to financial security. Yumi's fluent English and comprehensive advice make her services highly recommendable to any expat seeking financial planning assistance.",
  eng_rating: 3,
  user: user_jane_doe,
  service: personal_finance_planning_yumi
)

professional_kenji_sato = User.create!(
  username: "KenjiSato",
  email: "kenjisato@example.com",
  password: "123456",
  phonenumber: "03-6688-7744",
  linkedin_profile: "https://www.linkedin.com/in/kenjisato",
  bio: "Skilled in investment management and financial advisory for the expatriate community in Japan. My goal is to navigate you through the complexities of investing and financial planning in a foreign country.",
  contact_email: "kenji@sato-investments.com",
  website_url: "https://sato-investments.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=50&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_kenji_sato.photo.attach(io: file, filename: 'kenji_sato.png', content_type: 'image/png')

sleep(1)
min = 35.68262
max = 35.76914
min2 = 139.784154
max2 = 139.793281
investment_management_kenji = Service.create!(
  title: "Kenji's Investment Management Solutions",
  price: "30000 per session",
  description: "Offering tailored investment management solutions for expatriates in Japan. Whether you're new to investing or looking to diversify your portfolio, I provide the guidance needed to make informed decisions.",
  schedule: "By appointment, Monday to Friday, 9 AM to 5 PM",
  user: professional_kenji_sato,
  category: "Investment Management, Financial Advisory, Expatriate Finance",
  address: "2 Chome-17-8 Chuo, Chuo City, Tokyo 131-0045",
  latitude: rand(min..max),
  longitude: rand(min2..max2)
)
personal_finance_planning_kenji_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709790137/profinder/istockphoto-950597484-612x612_ins8tn.jpg"
personal_finance_planning_kenji_file = URI.open(personal_finance_planning_kenji_url)
investment_management_kenji.photo.attach(
  io: personal_finance_planning_kenji_file,
  filename: "investment_management_kenji.jpg",
  content_type: "image/jpeg"
)

review_jane_doe_kenji_finance = Review.create!(
  rating: 3,
  comment: "Attended Kenji's investment management session hoping for deep insights into Japan's market. While Kenji shared valuable information, the session didn't delve as deeply into advanced strategies as I had hoped. Additionally, the language barrier slightly affected the flow of information; his English was serviceable but not fluent. It was an alright experience, probably more suited to those new to the investment scene.",
  eng_rating: 3,
  user: user_jane_doe,
  service: investment_management_kenji
)

professional_takumi_watanabe = User.create!(
  username: "TakumiWatanabe",
  email: "takumiwatanabe@example.com",
  password: "123456",
  phonenumber: "03-4489-7766",
  linkedin_profile: "https://www.linkedin.com/in/takumiwatanabe",
  bio: "A seasoned financial planner with over 20 years of experience, I specialize in helping expatriates manage their finances in Japan. My expertise includes tax optimization, retirement planning, and investment strategies tailored to the unique challenges faced by foreigners.",
  contact_email: "takumi@watanabefinancial.com",
  website_url: "https://watanabefinancial.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=50&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_takumi_watanabe.photo.attach(io: file, filename: 'takumi_watanabe.png', content_type: 'image/png')

sleep(1)
min = 35.705924
max = 35.718641
min2 = 139.784154
max2 = 139.793281
expat_financial_planning_takumi = Service.create!(
  title: "Takumi's Expat Finance Planning Service",
  price: "30000 per session",
  description: "I offer expert financial planning services designed for expatriates living in Japan, covering everything from tax optimization to investment advice. My approach is personalized, ensuring you make the most out of your finances while abroad.",
  schedule: "Weekdays, 9 AM to 5 PM",
  user: professional_takumi_watanabe,
  category: "Financial Planning, Tax Optimization, Investment Advice",
  address: "1 Chome-4-5 Taito, Taito City, Tokyo 135-0016",
  latitude: rand(min..max),
  longitude: rand(min2..max2)
)
expat_financial_planning_takumi_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709790872/profinder/istockphoto-1450340570-612x612_qjkp7j.jpg"
expat_financial_planning_takumi_file = URI.open(expat_financial_planning_takumi_url)
expat_financial_planning_takumi.photo.attach(
  io: expat_financial_planning_takumi_file,
  filename: "expat_financial_planning_takumi.jpg",
  content_type: "image/jpeg"
)

review_jane_doe_takumi_finance = Review.create!(
  rating: 3,
  comment: "Takumi's advice was comprehensive, covering all the basics of expat financial planning. While the session provided a good starting point, I found it somewhat generic, lacking in tailored strategies that I was hoping for. Additionally, while Takumi's English is good, there were moments where clearer communication could have enhanced the experience.",
  eng_rating: 3,
  user: user_jane_doe,
  service: expat_financial_planning_takumi
)

professional_emi_kobayashi = User.create!(
  username: "EmiKobayashi",
  email: "emikobayashi@example.com",
  password: "123456",
  phonenumber: "03-5577-3344",
  linkedin_profile: "https://www.linkedin.com/in/emikobayashi",
  bio: "With a decade of experience in wealth management and expatriate financial services, I'm committed to helping foreign residents in Japan navigate their financial landscape. My services are designed to offer comprehensive solutions for saving, investing, and financial planning in a foreign context.",
  contact_email: "emi@kobayashifinancial.com",
  website_url: "https://kobayashifinancial.com"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=40&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_emi_kobayashi.photo.attach(io: file, filename: 'emi_kobayashi.png', content_type: 'image/png')

sleep(1)
wealth_management_emi = Service.create!(
  title: "Emi's Wealth Management for Expatriates",
  price: "28000 per session",
  description: "Tailored wealth management services designed for expatriates in Japan. I provide personalized investment advice, financial planning, and tax strategy to help you secure and grow your wealth abroad.",
  schedule: "By appointment, Monday to Friday, 9 AM to 6 PM",
  user: professional_emi_kobayashi,
  category: "Wealth Management, Financial Planning, Expatriate Finance",
  address: "3 Chome-2-11 Minato, Tokyo 108-0075"
)
emi_wealth_management_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709790067/profinder/istockphoto-1335507515-612x612_n24x6f.jpg"
emi_wealth_management_file = URI.open(emi_wealth_management_url)
wealth_management_emi.photo.attach(
  io: emi_wealth_management_file,
  filename: "wealth_management_emi.jpg",
  content_type: "image/jpeg"
)

review_dan_chin_emi_finance = Review.create!(
  rating: 3,
  comment: "Emi's sessions were insightful to a degree, providing a solid overview of wealth management for someone like me living abroad. However, I was expecting more customized advice tailored to my specific situation. While Emi was clearly knowledgeable, the sessions could benefit from a deeper dive into personal finance strategies for expatriates.",
  eng_rating: 3,
  user: user_dan_chin,
  service: wealth_management_emi
)

professional_haruto_nagase = User.create!(
  username: "HarutoNagase",
  email: "harutonagase@example.com",
  password: "123456",
  phonenumber: "03-6689-1010",
  linkedin_profile: "https://www.linkedin.com/in/harutonagase",
  bio: "Specializing in retirement planning and wealth management for expatriates in Japan, I combine local expertise with a global perspective to help you navigate the complexities of financial planning abroad.",
  contact_email: "haruto@nagasefinance.com",
  website_url: "https://nagasefinance.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=45&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_haruto_nagase.photo.attach(io: file, filename: 'haruto_nagase.png', content_type: 'image/png')

sleep(1)
min = 35.705924
max = 35.718641
min2 = 139.784154
max2 = 139.793281
expatriate_retirement_planning_haruto = Service.create!(
  title: "Haruto's Retirement Planning for Expatriates",
  price: "32000 per session",
  description: "Expert retirement planning services tailored for expatriates living in Japan. From investments to savings, I ensure you're on the right track for a comfortable retirement abroad.",
  schedule: "By appointment, Monday to Friday, 10 AM to 7 PM",
  user: professional_haruto_nagase,
  category: "Retirement Planning, Wealth Management, Expatriate Finance",
  address: "3 Chome-4-1 Taito, Taito City, Tokyo 135-0016",
  latitude: rand(min..max),
  longitude: rand(min2..max2)
)

expatriate_retirement_planning_haruto_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709791268/profinder/istockphoto-486547364-612x612_oxefg6.jpg"
expatriate_retirement_planning_haruto_file = URI.open(expatriate_retirement_planning_haruto_url)
expatriate_retirement_planning_haruto.photo.attach(
  io: expatriate_retirement_planning_haruto_file,
  filename: "expatriate_retirement_planning_haruto.jpg",
  content_type: "image/jpeg"
)

review_jane_doe_haruto_finance = Review.create!(
  rating: 4,
  comment: "Haruto's retirement planning session offered a lot of valuable insights, especially in terms of long-term investment strategies tailored for expatriates in Japan. His understanding of the local financial environment, combined with a practical approach, made the advice very applicable. Though the session was highly informative, a bit more customization to align with my specific financial goals would have made it perfect.",
  eng_rating: 4,
  user: user_jane_doe,
  service: expatriate_retirement_planning_haruto
)


professional_kazuo_tanaka = User.create!(
  username: "KazuoTanaka",
  email: "kazuotanaka@example.com",
  password: "123456",
  phonenumber: "03-3227-8901",
  linkedin_profile: "https://www.linkedin.com/in/kazuotanaka",
  bio: "Experienced and reliable plumber with over 15 years of experience in residential and commercial plumbing. Specializing in installations, repairs, and maintenance.",
  contact_email: "kazuo@plumbingsolutions.com",
  website_url: "https://kazuotanakaplumbing.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=40&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_kazuo_tanaka.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_haruto_nagasaki = User.create!(
  username: "HarutoNagasaki",
  email: "harutonagasaki@example.com",
  password: "123456",
  phonenumber: "03-3229-5678",
  linkedin_profile: "https://www.linkedin.com/in/harutonagasaki",
  bio: "Certified car technician with a passion for automotive repair and maintenance. Expert in diagnostics, engine repair, and performance enhancements.",
  contact_email: "haruto@cartechzone.com",
  website_url: "https://harutonagasaki.cartech.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=35&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_haruto_nagasaki.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

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

professional_tanaka_sousuke = User.create!(
  username: "tanakasousuke",
  email: "tanakasousuke@example.com",
  password: "123456",
  phonenumber: "03-3226-0505",
  linkedin_profile: "https://www.linkedin.com/in/tanakasousuke",
  bio: "Detail-oriented accountant with expertise in tax planning and financial analysis. Helping businesses and individuals achieve financial health.",
  contact_email: "tanaka@sousukeaccounting.com",
  website_url: "https://tanakasousuke.accountant"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_tanaka_sousuke.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_haruka_saito = User.create!(
  username: "HarukaSaito",
  email: "harukasaito@example.com",
  password: "123456",
  phonenumber: "03-3344-5566",
  linkedin_profile: "https://www.linkedin.com/in/harukasaito",
  bio: "Experienced financial advisor specializing in retirement planning and expatriate investment strategies. Committed to helping you achieve your financial goals and ensure a secure future.",
  contact_email: "haruka@saitofinancial.com",
  website_url: "https://saitofinancial.com"
)
url = "https://this-person-does-not-exist.com/new?gender=female&age=#{age}&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_haruka_saito.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

professional_haruki_matsuda = User.create!(
  username: "HarukiMatsuda",
  email: "harukimatsuda@example.com",
  password: "123456",
  phonenumber: "03-3344-5567",
  linkedin_profile: "https://www.linkedin.com/in/harukimatsuda",
  bio: "Experienced mover with over a decade of helping families relocate smoothly. Specializing in efficient, stress-free moves.",
  contact_email: "matsuda@movingexperts.jp",
  website_url: "https://harukimatsuda.moving"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=#{age}&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
p photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_haruki_matsuda.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')


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
sleep(1)
general_plumbing_maintenance_kazuo = Service.create!(
  title: "General Plumbing Maintenance & Installation",
  price: "10000 per hour",
  description: "Expert plumbing maintenance and new installations. From fixing drips and leaks to installing new fixtures and appliances, Kazuo Tanaka ensures your plumbing is in top condition.",
  schedule: "Weekdays, 9 AM - 5 PM",
  user: professional_kazuo_tanaka,
  category: "Plumbing Maintenance, Fixture Installation, Appliance Installation, Leak Repairs",
  address: "4 Chome-2-8 Nakano, Nakano, Tokyo"
)
general_plumbing_maintenance_kazuo_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709559625/profinder/cq5dam.web.1280.1280_c7lmcq.jpg"
general_plumbing_maintenance_kazuo_file = URI.open(general_plumbing_maintenance_kazuo_url)
general_plumbing_maintenance_kazuo.photo.attach(
  io: general_plumbing_maintenance_kazuo_file,
  filename: "general_plumbing_maintenance_kazuo_image.avif",
  content_type: "image/avif"
)
sleep(1)
plumbing_emergency_service_kazuo = Service.create!(
  title: "24/7 Plumbing Emergency Service",
  price: "15000 per call-out",
  description: "Immediate response for all your plumbing emergencies. Leak repairs, pipe blockages, heating issues, and more. Kazuo Tanaka brings expertise and peace of mind, anytime.",
  schedule: "Available 24/7",
  user: professional_kazuo_tanaka,
  category: "Plumbing, Emergency Repair, Leak Repair, Blockages",
  address: "4 Chome-2-8 Nakano, Nakano, Tokyo"
)
plumbing_emergency_service_kazuo_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709559362/profinder/photo-1585704032915-c3400ca199e7_dwz6ku.avif"
plumbing_emergency_service_kazuo_file = URI.open(plumbing_emergency_service_kazuo_url)
plumbing_emergency_service_kazuo.photo.attach(
  io: plumbing_emergency_service_kazuo_file,
  filename: "plumbing_emergency_service_kazuo_image.avif",
  content_type: "image/avif"
)
sleep(1)
car_diagnostic_repair_haruto = Service.create!(
  title: "Car Diagnostic & Repair",
  price: "15000 per session",
  description: "Comprehensive car diagnostic and repair service to identify and fix issues. Using the latest technology, Haruto nagasaki ensures your vehicle is running smoothly and efficiently.",
  schedule: "Weekdays, 9 AM - 6 PM",
  user: professional_haruto_nagasaki,
  category: "Car Repair, Diagnostic, Maintenance, Vehicle Service",
  address: "2 Chome-11-3 Shibuya, Tokyo"
)
car_diagnostic_repair_haruto_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709560058/profinder/photo-1498887960847-2a5e46312788_ixbmrm.avif"
car_diagnostic_repair_haruto_file = URI.open(car_diagnostic_repair_haruto_url)
car_diagnostic_repair_haruto.photo.attach(
  io: car_diagnostic_repair_haruto_file,
  filename: "car_diagnostic_repair_haruto_image.avif",
  content_type: "image/avif"
)
sleep(1)
regular_maintenance_checkup_haruto = Service.create!(
  title: "Regular Maintenance & Check-up",
  price: "12000 per check-up",
  description: "Keep your car in top condition with regular maintenance and check-ups. Haruto nagasaki covers everything from oil changes to brake checks to ensure your safety and vehicle's longevity.",
  schedule: "By appointment",
  user: professional_haruto_nagasaki,
  category: "Regular Maintenance, Safety Check, Vehicle Longevity, Oil Change",
  address: "2 Chome-11-3 Shibuya, Tokyo"
)
regular_maintenance_checkup_haruto_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709559992/profinder/photo-1486262715619-67b85e0b08d3_fw60bk.avif"
regular_maintenance_checkup_haruto_file = URI.open(regular_maintenance_checkup_haruto_url)
regular_maintenance_checkup_haruto.photo.attach(
  io: regular_maintenance_checkup_haruto_file,
  filename: "regular_maintenance_checkup_haruto_image.avif",
  content_type: "image/avif"
)
sleep(1)
emergency_roadside_assistance_haruto = Service.create!(
  title: "Emergency Roadside Assistance",
  price: "Variable based on service required",
  description: "Haruto nagasaki provides emergency roadside assistance for sudden breakdowns or accidents. Quick response, towing, and on-the-spot repairs to get you back on the road safely.",
  schedule: "24/7",
  user: professional_haruto_nagasaki,
  category: "Roadside Assistance, Emergency Service, Towing, On-the-Spot Repair",
  address: "2 Chome-11-3 Shibuya, Tokyo"
)
emergency_roadside_assistance_haruto_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709559956/profinder/photo-1569176330438-fa1ed1042542_eeran4.avif"
emergency_roadside_assistance_haruto_file = URI.open(emergency_roadside_assistance_haruto_url)
emergency_roadside_assistance_haruto.photo.attach(
  io: emergency_roadside_assistance_haruto_file,
  filename: "emergency_roadside_assistance_haruto_image.avif",
  content_type: "image/avif"
)

sleep(1)
catering_jamie_flavor = Service.create!(
title: "Catering",
price: "15000 per 10 meals (purchase only in per 10 pack)",
description: "Business meetings, weddings, we do it all!",
schedule: "Call for availability",
user: professional_jamie_flavor,
category: "Cooking, Partying, Meal Preparation, Event Planning",
address: "2 Chome-11-3 Meguro, Tokyo"
)
catering_jamie_flavor_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709211669/profinder/photo-1672826979217-7156a305acf5_tjgghf.avif"
catering_jamie_flavor_file = URI.open(catering_jamie_flavor_url)
catering_jamie_flavor.photo.attach(io: catering_jamie_flavor_file, filename: "catering_jamie_flavor_image", content_type: "image/avif")
sleep(1)
home_cooking_lessons_jamie_flavor = Service.create!(
  title: "Home Cooking Lessons",
  price: "5000 per lesson",
  description: "Learn to cook like a pro from the comfort of your home. Jamie Flavor brings his expertise in fusion cuisine directly to your kitchen.",
  schedule: "Weekends, 10 AM - 2 PM",
  user: professional_jamie_flavor,
  category: "Cooking Lessons, Home Cooking, Fusion Cuisine, Culinary Skills",
  address: "2 Chome-11-3 Meguro, Tokyo"
)
home_cooking_lessons_jamie_flavor_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709251589/profinder/photo-1466637574441-749b8f19452f_ao8omi.avif"
home_cooking_lessons_jamie_flavor_file = URI.open(home_cooking_lessons_jamie_flavor_url)
home_cooking_lessons_jamie_flavor.photo.attach(
  io: home_cooking_lessons_jamie_flavor_file,
  filename: "home_cooking_lessons_jamie_flavor_image.avif",
  content_type: "image/avif"
)
sleep(1)
meal_planning_nutrition_jamie_flavor = Service.create!(
  title: "Meal Planning and Nutrition Consultation",
  price: "8000 per consultation",
  description: "Customized meal planning and nutrition advice to fit your lifestyle. Jamie Flavor combines his culinary expertise with a focus on health and wellness.",
  schedule: "By appointment",
  user: professional_jamie_flavor,
  category: "Meal Planning, Nutrition, Healthy Eating, Lifestyle",
  address: "2 Chome-11-3 Meguro, Tokyo"
)
meal_planning_nutrition_jamie_flavor_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709251684/profinder/photo-1463740839922-2d3b7e426a56_xdghku.avif"
meal_planning_nutrition_jamie_flavor_file = URI.open(meal_planning_nutrition_jamie_flavor_url)
meal_planning_nutrition_jamie_flavor.photo.attach(
  io: meal_planning_nutrition_jamie_flavor_file,
  filename: "meal_planning_nutrition_jamie_flavor_image.avif",
  content_type: "image/avif"
)
sleep(1)
legal_consultation_chris_justice = Service.create!(
  title: "Legal Consultation",
  price: "50000 per case",
  description: "Comprehensive legal services for individuals and businesses. Specializing in civil rights, contract law, and dispute resolution.",
  schedule: "Weekdays 9 AM to 5 PM",
  user: professional_chris_justice,
  category: "Legal Advice, Civil Rights, Contract Law, Dispute Resolution",
  address: "2 Chome-10-1 Shibuya, Shibuya, Tokyo"
)
legal_consultation_chris_justice_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709219309/profinder/premium_photo-1694281930514-4f4a760538de_prrjux.avif"
legal_consultation_chris_justice_file = URI.open(legal_consultation_chris_justice_url)
legal_consultation_chris_justice.photo.attach(
  io: legal_consultation_chris_justice_file,
  filename: "legal_consultation_chris_justice_image.avif",
  content_type: "image/avif"
)
sleep(1)
startup_legal_advisory_chris_justice = Service.create!(
  title: "Startup Legal Advisory",
  price: "35000 per consultation",
  description: "Navigate the legal landscape of starting a business with confidence. Chris Justice offers expert advice on incorporation, intellectual property, contracts, and compliance.",
  schedule: "Weekdays 9 AM to 5 PM",
  user: professional_chris_justice,
  category: "Startup Law, Intellectual Property, Contracts, Compliance",
  address: "2 Chome-10-1 Shibuya, Shibuya, Tokyo"
)
startup_legal_advisory_chris_justice_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709251765/profinder/photo-1589829545856-d10d557cf95f_bxs6x4.avif"
startup_legal_advisory_chris_justice_file = URI.open(startup_legal_advisory_chris_justice_url)
startup_legal_advisory_chris_justice.photo.attach(
  io: startup_legal_advisory_chris_justice_file,
  filename: "startup_legal_advisory_chris_justice_image.avif",
  content_type: "image/avif"
)
sleep(1)
immigration_documentation_assistance_chris_justice = Service.create!(
  title: "Immigration Documentation Assistance",
  price: "10000 per hour",
  description: "Expert assistance with immigration documentation, including visa applications, residency registration, and naturalization paperwork. Chris Justice helps simplify the complex immigration process, ensuring your documentation is accurate and submitted timely.",
  schedule: "Weekdays, 9 AM - 5 PM (Appointment needed)",
  user: professional_chris_justice,
  category: "Immigration Law, Visa Assistance, Residency Registration, Naturalization Support",
  address: "2 Chome-10-1 Shibuya, Shibuya, Tokyo"

)
immigration_documentation_assistance_chris_justice_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709254287/profinder/photo-1654163600175-efc47ce20b29_wzmc1o.avif"
immigration_documentation_assistance_chris_justice_file = URI.open(immigration_documentation_assistance_chris_justice_url)
immigration_documentation_assistance_chris_justice.photo.attach(
  io: immigration_documentation_assistance_chris_justice_file,
  filename: "immigration_documentation_assistance_chris_justice_image.avif",
  content_type: "image/avif"
)
sleep(1)
dental_services_sam_smiles = Service.create!(
  title: "Comprehensive Dental Care",
  price: "20000 per visit",
  description: "Experienced dentist focused on comprehensive care and patient comfort. Specializing in cosmetic dentistry.",
  schedule: "Mon to Fri, 8 AM - 3 PM",
  user: professional_sam_smiles,
  category: "Dentistry, Cosmetic Dentistry, Oral Health, Patient Care",
  address: "5 Chome-6-1 Asakusa, Taito, Tokyo"
)
dental_services_sam_smiles_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709225911/profinder/premium_photo-1661277793925-9a74734a8fd9_fmjmep.avif"
dental_services_sam_smiles_file = URI.open(dental_services_sam_smiles_url)
dental_services_sam_smiles.photo.attach(
  io: dental_services_sam_smiles_file,
  filename: "dental_services_sam_smiles_image.avif",
  content_type: "image/avif"
)
sleep(1)
cosmetic_dentistry_sam_smiles = Service.create!(
  title: "Cosmetic Dentistry",
  price: "20000 per procedure",
  description: "Transform your smile with our cosmetic dentistry services. From teeth whitening to veneers, Dr. Sam Smiles offers a range of procedures to enhance your smile.",
  schedule: "Mon to Fri, 8 AM - 3 PM",
  user: professional_sam_smiles,
  category: "Teeth Whitening, Veneers, Cosmetic Procedures, Smile Makeover",
  address:  "1 Chome-9-7 Minato, Tokyo"
)
cosmetic_dentistry_sam_smiles_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709252495/profinder/photo-1525893277997-207c04d47d65_f926xz.avif"
cosmetic_dentistry_sam_smiles_file = URI.open(cosmetic_dentistry_sam_smiles_url)
cosmetic_dentistry_sam_smiles.photo.attach(
  io: cosmetic_dentistry_sam_smiles_file,
  filename: "cosmetic_dentistry_sam_smiles_image.avif",
  content_type: "image/avif"
)
sleep(1)
emergency_dental_services_sam_smiles = Service.create!(
  title: "Emergency Dental Services",
  price: "Fee varies on treatment",
  description: "Immediate dental care when you need it most. Dr. Sam Smiles provides urgent treatment for dental emergencies, including pain relief, infections, and accidents.",
  schedule: "24/7 for emergencies",
  user: professional_sam_smiles,
  category: "Urgent Care, Pain Relief, Infection Treatment, Accidental Damage",
  address: "1 Chome-9-7 Minato, Tokyo"
)
emergency_dental_services_sam_smiles_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709252561/profinder/photo-1616391182219-e080b4d1043a_xde22k.avif"
emergency_dental_services_sam_smiles_file = URI.open(emergency_dental_services_sam_smiles_url)
emergency_dental_services_sam_smiles.photo.attach(
  io: emergency_dental_services_sam_smiles_file,
  filename: "emergency_dental_services_sam_smiles_image.avif",
  content_type: "image/avif"
)
sleep(1)
photography_ava_shutter = Service.create!(
  title: "Professional Photography",
  price: "10000 per session",
  description: "Capture life's moments with professional photography. Specializes in portrait and event photography.",
  schedule: "By appointment",
  user: professional_ava_shutter,
  category: "Photography, Portraits, Events, Lifestyle",
  address: "4 Chome-11-5 Taito, Tokyo"
)
photography_ava_shutter_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709225852/profinder/photo-1505739998589-00fc191ce01d_z09h8x.avif"
photography_ava_shutter_file = URI.open(photography_ava_shutter_url)
photography_ava_shutter.photo.attach(
  io: photography_ava_shutter_file,
  filename: "photography_ava_shutter_image.avif",
  content_type: "image/avif"
)
sleep(1)
wedding_photography_ava_shutter = Service.create!(
  title: "Wedding Photography",
  price: "30000 per event",
  description: "Capture your special day with Ava Shutter's wedding photography. Offering a blend of candid moments and posed portraits to forever memorialize your celebration.",
  schedule: "By appointment",
  user: professional_ava_shutter,
  category: "Weddings, Event Photography, Portraits, Candid Shots",
  address: "4 Chome-11-5 Taito, Tokyo"
)
wedding_photography_ava_shutter_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709252685/profinder/photo-1533091090875-1ff4acc497dd_nzj4fq.avif"
wedding_photography_ava_shutter_file = URI.open(wedding_photography_ava_shutter_url)
wedding_photography_ava_shutter.photo.attach(
  io: wedding_photography_ava_shutter_file,
  filename: "wedding_photography_ava_shutter_image.avif",
  content_type: "image/avif"
)
sleep(1)
photography_lessons_ava_shutter = Service.create!(
  title: "Photography Lessons",
  price: "20000 per 4-session package",
  description: "Learn the art of photography with Ava Shutter. From basics to advanced techniques, these lessons cover various aspects of photography tailored to your skill level.",
  schedule: "Weekends, 9 AM - 1 PM",
  user: professional_ava_shutter,
  category: "Photography Basics, Advanced Techniques, Camera Handling, Photo Editing",
  address: "4 Chome-11-5 Taito, Tokyo"
)
photography_lessons_ava_shutter_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709252753/profinder/photo-1613235577937-9ac3eed992fc_h613nn.avif"
photography_lessons_ava_shutter_file = URI.open(photography_lessons_ava_shutter_url)
photography_lessons_ava_shutter.photo.attach(
  io: photography_lessons_ava_shutter_file,
  filename: "photography_lessons_ava_shutter_image.avif",
  content_type: "image/avif"
)
sleep(1)
accounting_tanaka_sousuke = Service.create!(
  title: "Sousuke's Accounting and Financial Planning Help",
  price: "35000 per consultation",
  description: "Detail-oriented accountant with expertise in tax planning and financial analysis. Helping businesses and individuals achieve financial health.",
  schedule: "Mon to Fri, 9 AM - 4 PM",
  user: professional_tanaka_sousuke,
  category: "Accounting, Tax Planning, Finance Analysis, Consultation",
  address: "6 Chome-10-2 Roppongi, Minato, Tokyo"
)
accounting_tanaka_sousuke_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226014/profinder/photo-1457904375453-3e1fc2fc76f4_gs4ebe.avif"
accounting_tanaka_sousuke_file = URI.open(accounting_tanaka_sousuke_url)
accounting_tanaka_sousuke.photo.attach(
  io: accounting_tanaka_sousuke_file,
  filename: "accounting_tanaka_sousuke_image.avif",
  content_type: "image/avif"
)
sleep(1)
tax_return_assistance_tanaka_sousuke = Service.create!(
  title: "Sousuke Tax Return Assistance",
  price: "12000 per filing",
  description: "Simplify your tax season with professional tax return assistance from Tanaka Sousuke. From personal filings to small business taxes, ensure accuracy and maximize your returns.",
  schedule: "January - April, Weekdays 9 AM to 6 PM",
  user: professional_tanaka_sousuke,
  category: "Tax Filing, Tax Optimization, Small Business Taxes, Personal Taxes",
  address: "6 Chome-10-2 Roppongi, Minato, Tokyo"
)
tax_return_assistance_tanaka_sousuke_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253198/profinder/premium_photo-1679923913530-16c91821a213_dmei8k.avif"
tax_return_assistance_tanaka_sousuke_file = URI.open(tax_return_assistance_tanaka_sousuke_url)
tax_return_assistance_tanaka_sousuke.photo.attach(
  io: tax_return_assistance_tanaka_sousuke_file,
  filename: "tax_return_assistance_tanaka_sousuke_image.avif",
  content_type: "image/avif"
)

sleep(1)
min = 35.71722
max = 35.74280
min2 = 139.70200
max2 = 139.72484
haruka_expatriate_finance_planning = Service.create!(
  title: "Haruka's Guide to Expatriate Finance & Investment",
  price: "30000 per session",
  description: "Navigate the financial landscape of Japan and beyond with Haruka Saito's expert advice. Tailored specifically for expatriates, this service covers portfolio building, retirement planning, and tax-efficient investing to secure your financial future.",
  schedule: "By appointment, Monday to Friday, 9 AM to 6 PM",
  user: professional_haruka_saito,
  category: "Expatriate Finance, Financial Planning, Investment Strategy, Retirement Solutions",
  address: "5 Chome-15-2 Toshima, Toshima City, Tokyo 120-0015",
  latitude: rand(min..max),
  longitude: rand(min2..max2)
)
haruka_expatriate_finance_planning_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709783543/profinder/1000_F_368736660_DE9gx7FXf8tWp9D0A7q0yvVo4lS7isMl_bsvpbd.jpg"
haruka_expatriate_finance_planning_file = URI.open(haruka_expatriate_finance_planning_url)
haruka_expatriate_finance_planning.photo.attach(
  io: haruka_expatriate_finance_planning_file,
  filename: "haruka_expatriate_finance_planning_image.avif",
  content_type: "image/avif"
) unless haruka_expatriate_finance_planning_url.empty?


sleep(1)
house_moving_service_haruki_matsuda = Service.create!(
  title: "House Moving Services",
  price: "Contact for quote",
  description: "Make your next move hassle-free with our professional moving services. From packing to transportation, we ensure your belongings are safely moved to your new home.",
  schedule: "Available by appointment",
  user: professional_haruki_matsuda,
  category: "Moving, Relocation, Packing, Transportation",
  address: "2 Chome-11-3 Nishi-Shinjuku, Shinjuku-ku, Tokyo"
)
house_moving_service_haruki_matsuda_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709695460/profinder/1269a1eb3876359e12db52fb253c0c8ea760ac9b_is8npy.webp"
house_moving_service_haruki_matsuda_file = URI.open(house_moving_service_haruki_matsuda_url)
house_moving_service_haruki_matsuda.photo.attach(
  io: house_moving_service_haruki_matsuda_file,
  filename: "house_moving_service_haruki_matsuda_image.avif",
  content_type: "image/avif"
)

sleep(1)
full_stack_dev_alex_taylor = Service.create!(
  title: "Full-stack Development",
  price: "50000 per ",
  description: "End-to-end web development services from database to front-end, leveraging the latest technologies for robust and scalable applications.",
  schedule: "Mon to Fri, 10 AM - 7 PM",
  user: professional_alex_taylor,
  category: "Web Development, Mobile Applications, Software Engineering, Technology Solutions",
  address: "5 Chome-14-10 Sengoku, Bunkyo, Tokyo"
)
full_stack_dev_alex_taylor_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226239/profinder/photo-1629904853893-c2c8981a1dc5_hk9lzk.avif"
full_stack_dev_alex_taylor_file = URI.open(full_stack_dev_alex_taylor_url)
full_stack_dev_alex_taylor.photo.attach(
  io: full_stack_dev_alex_taylor_file,
  filename: "full_stack_dev_alex_taylor_image.avif",
  content_type: "image/avif"
)

puts "Still Making Service Seeds...."
sleep(1)
digital_marketing_morgan_bailey = Service.create!(
  title: "Digital Marketing Solutions",
  price: "20000 per campaign",
  description: "Boost your brand's online presence with our comprehensive digital marketing services, including SEO, content marketing, and social media management.",
  schedule: "Flexible scheduling available",
  user: professional_morgan_bailey,
  category: "SEO, Social Media, Content Marketing, Brand Strategy",
  address: "6 Chome-10-2 Roppongi, Minato, Tokyo"
)
digital_marketing_morgan_bailey_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709219657/profinder/photo-1611926653458-09294b3142bf_ra5fip.avif"
digital_marketing_morgan_bailey_file = URI.open(digital_marketing_morgan_bailey_url)
digital_marketing_morgan_bailey.photo.attach(
  io: digital_marketing_morgan_bailey_file,
  filename: "digital_marketing_morgan_bailey_image",
  content_type: "image/avif"
)
sleep(1)
graphic_design_christina_jones = Service.create!(
  title: "Graphic Design Services",
  price: "10000 per design",
  description: "Creative and impactful graphic design solutions for your branding, marketing materials, and digital presence. From logos to websites, bring your vision to life.",
  schedule: "Mon to Fri, 9 AM - 6 PM",
  user: professional_christina_jones,
  category: "Branding, UI/UX Design, Print Materials, Digital Media",
  address: "7 Chome-5-3 Ginza, Chuo, Tokyo"
)
graphic_design_christina_jones_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709224433/profinder/premium_photo-1661281347096-4a250151f422_uoc40q.avif"
graphic_design_christina_jones_file = URI.open(graphic_design_christina_jones_url)
graphic_design_christina_jones.photo.attach(
  io: graphic_design_christina_jones_file,
  filename: "graphic_design_christina_jones_image.avif",
  content_type: "image/avif"
)
sleep(1)
freelance_writing_kim_parker = Service.create!(
  title: "Freelance Writing Services",
  price: "10000 per article",
  description: "Elevate your content with engaging, SEO-optimized articles crafted by a professional freelance writer. Specializing in blog posts, web content, and editorials.",
  schedule: "Project-based timelines",
  user: professional_kim_parker,
  category: "Content Writing, SEO Optimization, Blogging, Editorial Writing",
  address: "4 Chome-2-8 Nakano, Nakano, Tokyo"
)
freelance_writing_kim_parker_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709219971/profinder/photo-1505682634904-d7c8d95cdc50_qrgyqt.avif"
freelance_writing_kim_parker_file = URI.open(freelance_writing_kim_parker_url)
freelance_writing_kim_parker.photo.attach(
  io: freelance_writing_kim_parker_file,
  filename: "freelance_writing_kim_parker_image",
  content_type: "image/avif"
)
sleep(1)
project_management_lee_jordan = Service.create!(
  title: "Comprehensive Project Management",
  price: "30000 per project", # Simplified flat rate pricing
  description: "Expert project management for IT, construction, and event planning, ensuring your projects are completed efficiently and effectively.",
  schedule: "Mon to Fri, 9 AM - 5 PM",
  user: professional_lee_jordan,
  category: "IT Projects, Construction Management, Event Planning, Budgeting & Planning",
  address: "5 Chome-12-7 Koenji, Suginami, Tokyo"
)
project_management_lee_jordan_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709220582/profinder/photo-1531403009284-440f080d1e12_s7hrcn.avif"
project_management_lee_jordan_file = URI.open(project_management_lee_jordan_url)
project_management_lee_jordan.photo.attach(
  io: project_management_lee_jordan_file,
  filename: "project_management_lee_jordan_image",
  content_type: "image/avif"
)
sleep(1)
data_science_consulting_sam_rivera = Service.create!(
  title: "Data Science Consulting",
  price: "55000 per analysis",
  description: "Expert data science consulting services to help you leverage big data for actionable insights, with a focus on machine learning and predictive analytics.",
  schedule: "By appointment",
  user: professional_sam_rivera,
  category: "Big Data, Predictive Analytics, Machine Learning, Data Visualization",
  address: "8 Chome-3-22 Ikebukuro, Toshima, Tokyo"
)
data_science_consulting_sam_rivera_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226771/profinder/photo-1551288049-bebda4e38f71_ct9ljo.avif"
data_science_consulting_sam_rivera_file = URI.open(data_science_consulting_sam_rivera_url)
data_science_consulting_sam_rivera.photo.attach(
  io: data_science_consulting_sam_rivera_file,
  filename: "data_science_consulting_sam_rivera_image.avif",
  content_type: "image/avif"
)
sleep(1)
cybersecurity_taylor_green = Service.create!(
  title: "Cybersecurity Consultation Services",
  price: "12000 per hour", # Clear hourly rate
  description: "Protect your digital assets with cutting-edge cybersecurity strategies. Offering threat assessment, system fortification, and emergency response.",
  schedule: "By appointment",
  user: professional_taylor_green,
  category: "Cybersecurity, Threat Assessment, IT Fortification, Cyber Emergency Response",
  address: "5 Chome-2-1 Roppongi, Tokyo"
)
cybersecurity_taylor_green_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709220634/profinder/photo-1614064548237-096f735f344f_ylukgy.avif"
cybersecurity_taylor_green_file = URI.open(cybersecurity_taylor_green_url)
cybersecurity_taylor_green.photo.attach(
  io: cybersecurity_taylor_green_file,
  filename: "cybersecurity_taylor_green_image",
  content_type: "image/avif"
)
sleep(1)
mobile_app_dev_jordan_casey = Service.create!(
  title: "Mobile App Development",
  price: "75000 per app",
  description: "Innovative mobile app development services for iOS and Android. Specializing in user-centric design and seamless functionality.",
  schedule: "Mon to Fri, 9 AM - 6 PM",
  user: professional_jordan_casey,
  category: "iOS Development, Android Development, Cross-Platform Solutions, App Design",
  address: "9 Chome-4-7 Akihabara, Tokyo"
)
mobile_app_dev_jordan_casey_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226865/profinder/photo-1512941937669-90a1b58e7e9c_iumuap.avif"
mobile_app_dev_jordan_casey_file = URI.open(mobile_app_dev_jordan_casey_url)
mobile_app_dev_jordan_casey.photo.attach(
  io: mobile_app_dev_jordan_casey_file,
  filename: "mobile_app_dev_jordan_casey_image.avif",
  content_type: "image/avif"
)
sleep(1)
startup_consulting_casey_lee = Service.create!(
  title: "Finance Consulting",
  price: "30000 per consultation",
  description: "Strategic startup consulting services to help entrepreneurs navigate the complexities of launching and growing a successful business.",
  schedule: "By appointment",
  user: professional_casey_lee,
  category: "Business Strategy, Finance Planning, Market Analysis, Growth Hacking",
  address: "2 Chome-18-5 Ebisu, Shibuya, Tokyo"
)
startup_consulting_casey_lee_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226923/profinder/photo-1556761175-5973dc0f32e7_vdenan.avif"
startup_consulting_casey_lee_file = URI.open(startup_consulting_casey_lee_url)
startup_consulting_casey_lee.photo.attach(
  io: startup_consulting_casey_lee_file,
  filename: "startup_consulting_casey_lee_image.avif",
  content_type: "image/avif"
)
sleep(1)
ui_ux_design_alex_morgan = Service.create!(
  title: "UI/UX Design Services",
  price: "40000 per project",
  description: "Creating intuitive and engaging user interfaces for web and mobile applications, with a focus on user experience and design thinking.",
  schedule: "Mon to Fri, 10 AM - 5 PM",
  user: professional_alex_morgan,
  category: "User Interface Design, User Experience Design, Interactive Design, Prototype Testing",
  address: "3 Chome-9-2 Nihonbashi, Chuo, Tokyo"
)
ui_ux_design_alex_morgan_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709226996/profinder/photo-1522542550221-31fd19575a2d_ei8adx.avif"
ui_ux_design_alex_morgan_file = URI.open(ui_ux_design_alex_morgan_url)
ui_ux_design_alex_morgan.photo.attach(
  io: ui_ux_design_alex_morgan_file,
  filename: "ui_ux_design_alex_morgan_image.avif",
  content_type: "image/avif"
)
sleep(1)
personal_training_jordan_flex = Service.create!(
  title: "Personal Training",
  price: "10000 per session",
  description: "Customized personal training programs designed to meet your fitness goals. Whether it's weight loss, muscle gain, or improved athletic performance, Jordan Flex will guide you every step of the way.",
  schedule: "By appointment",
  user: professional_jordan_flex,
  category: "Personal Training, Fitness, Weight Loss, Muscle Gain",
  address: "7 Chome-1-8 Akasaka, Minato, Tokyo"
)
personal_training_jordan_flex_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253394/profinder/photo-1571019614242-c5c5dee9f50b_gf81lw.avif"
personal_training_jordan_flex_file = URI.open(personal_training_jordan_flex_url)
personal_training_jordan_flex.photo.attach(
  io: personal_training_jordan_flex_file,
  filename: "personal_training_jordan_flex_image.avif",
  content_type: "image/avif"
)
sleep(1)
nutrition_coaching_jordan_flex = Service.create!(
  title: "Nutrition Coaching",
  price: "8000 per consultation",
  description: "Achieve your health and fitness goals faster with tailored nutrition coaching. Jordan Flex offers expert advice on diet planning, meal prep, and nutrition strategies to complement your training regimen.",
  schedule: "By appointment",
  user: professional_jordan_flex,
  category: "Nutrition, Diet Planning, Meal Prep, Health Goals",
  address: "7 Chome-1-8 Akasaka, Minato, Tokyo"
)
nutrition_coaching_jordan_flex_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253458/profinder/photo-1535914254981-b5012eebbd15_gex0nq.avif"
nutrition_coaching_jordan_flex_file = URI.open(nutrition_coaching_jordan_flex_url)
nutrition_coaching_jordan_flex.photo.attach(
  io: nutrition_coaching_jordan_flex_file,
  filename: "nutrition_coaching_jordan_flex_image.avif",
  content_type: "image/avif"
)
sleep(1)
general_health_checkups = Service.create!(
  title: "General Health Checkups",
  price: "12000 (Health insurance accepted)",
  description: "Routine health checkups for all ages to monitor health status, detect early signs of disease, and discuss lifestyle habits for long-term wellness.",
  schedule: "Weekdays, 9 AM - 5 PM",
  user: professional_dr_emily_hart,
  category: "Routine Checkup, Disease Prevention, Health Monitoring, Lifestyle Guidance",
  address: "3 Chome-8-6 Komagome, Toshima, Tokyo"
)
general_health_checkups_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253986/profinder/photo-1576766125535-b04e15fd0273_g5fuku.avif"
general_health_checkups_file = URI.open(general_health_checkups_url)
general_health_checkups.photo.attach(
  io: general_health_checkups_file,
  filename: "general_health_checkups_image.avif",
  content_type: "image/avif"
)
sleep(1)
comprehensive_health_screenings = Service.create!(
  title: "Comprehensive Health Screenings",
  price: "15000 (Health insurance accepted)",
  description: "Extensive health screenings to assess risk factors and identify early signs of diseases. Tailored advice on prevention and lifestyle modifications for optimal health.",
  schedule: "Weekdays, 9 AM - 4 PM",
  user: professional_dr_emily_hart,
  category: "Preventative Care, Health Screening, Risk Assessment, Lifestyle Advice",
  address: "3 Chome-8-6 Komagome, Toshima, Tokyo"
)
comprehensive_health_screenings_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709253904/profinder/photo-1505751172876-fa1923c5c528_ypizoc.avif"
comprehensive_health_screenings_file = URI.open(comprehensive_health_screenings_url)
comprehensive_health_screenings.photo.attach(
  io: comprehensive_health_screenings_file,
  filename: "comprehensive_health_screenings_image.avif",
  content_type: "image/avif"
)
puts "Nearly Done With Service Seeds..."
sleep(1)
rental_assistance_for_foreigners = Service.create!(
  title: "Rental Assistance for Foreigners",
  price: "Free Consultation",
  description: "Comprehensive assistance finding and securing rental properties in Japan, tailored to the needs of foreigners. Includes property viewings, negotiation with landlords, and understanding rental agreements.",
  schedule: "By appointment",
  user: professional_mia_tanaka,
  category: "Rentals, Leasing Assistance, Negotiation, Contract Explanation",
  address: "6 Chome-12-3 Roppongi, Minato, Tokyo"
)
rental_assistance_for_foreigners_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709254453/profinder/premium_photo-1661775953246-410e3a33977c_gam9ox.avif"
rental_assistance_for_foreigners_file = URI.open(rental_assistance_for_foreigners_url)
rental_assistance_for_foreigners.photo.attach(
  io: rental_assistance_for_foreigners_file,
  filename: "rental_assistance_for_foreigners_image.avif",
  content_type: "image/avif"
)
sleep(1)
home_purchase_consultation = Service.create!(
  title: "Home Purchase Consultation",
  price: "Free Consultation",
  description: "Expert guidance through the process of purchasing a home in Japan, from property search to closing. Services include market analysis, property inspections, negotiation, and legal paperwork.",
  schedule: "By appointment",
  user: professional_mia_tanaka,
  category: "Home Buying, Market Analysis, Property Inspection, Legal Paperwork",
  address: "6 Chome-14-2 Shinagawa, Tokyo"
)
home_purchase_consultation_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709254531/profinder/photo-1480796927426-f609979314bd_dwh6wd.avif"
home_purchase_consultation_file = URI.open(home_purchase_consultation_url)
home_purchase_consultation.photo.attach(
  io: home_purchase_consultation_file,
  filename: "home_purchase_consultation_image.avif",
  content_type: "image/avif"
)
sleep(1)
personalized_japanese_language_lessons = Service.create!(
  title: "Personalized Japanese Language Lessons",
  price: "5000 per hour",
  description: "Customized Japanese language lessons tailored to your learning style and goals. From beginner to advanced levels, improve your language skills effectively with one-on-one instruction.",
  schedule: "Flexible scheduling available",
  user: professional_akira_sato,
  category: "Language Learning, Personalized Instruction, All Levels, One-on-One Lessons",
  address: "1 Chome-5-7 Nishi-Shinjuku, Tokyo"
)
personalized_japanese_language_lessons_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709254947/profinder/photo-1511342802705-a7b79a427eb5_aldoi6.avif"
personalized_japanese_language_lessons_file = URI.open(personalized_japanese_language_lessons_url)
personalized_japanese_language_lessons.photo.attach(
  io: personalized_japanese_language_lessons_file,
  filename: "personalized_japanese_language_lessons_image.avif",
  content_type: "image/avif"
)
sleep(1)
business_japanese_and_cultural_etiquette = Service.create!(
  title: "Business Japanese and Cultural Etiquette",
  price: "6000 per hour",
  description: "Master business Japanese and understand the nuances of Japanese corporate culture. Ideal for professionals seeking to work in Japan or collaborate with Japanese companies.",
  schedule: "By appointment",
  user: professional_akira_sato,
  category: "Business Japanese, Cultural Etiquette, Professional Language Use, Corporate Culture",
  address: "1 Chome-5-7 Nishi-Shinjuku, Tokyo"
)
business_japanese_and_cultural_etiquette_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709255002/profinder/photo-1473167146081-90eecb675695_d1jp1z.avif"
business_japanese_and_cultural_etiquette_file = URI.open(business_japanese_and_cultural_etiquette_url)
business_japanese_and_cultural_etiquette.photo.attach(
  io: business_japanese_and_cultural_etiquette_file,
  filename: "business_japanese_and_cultural_etiquette_image.avif",
  content_type: "image/avif"
)
sleep(1)
schooling_options_consultation = Service.create!(
  title: "Schooling Options Consultation for Expatriate Families",
  price: "25000 per consultation",
  description: "Personalized consultation services to help expatriate families understand and navigate the schooling options available in Japan. From international schools that offer curricula in English to local Japanese schools that provide immersion experiences, Naomi Kato offers insights, application assistance, and strategies for educational success in Japan.",
  schedule: "By appointment",
  user: professional_naomi_kato,
  category: "International Schools, Local Education System, Bilingual Education, School Application Assistance",
  address: "4 Chome-8-1 Ikebukuro, Tokyo"
)
schooling_options_consultation_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709255238/profinder/photo-1617721926586-4eecce739745_llychr.avif"
schooling_options_consultation_file = URI.open(schooling_options_consultation_url)
schooling_options_consultation.photo.attach(
  io: schooling_options_consultation_file,
  filename: "schooling_options_consultation_image.avif",
  content_type: "image/avif"
)
sleep(1)
investment_planning_strategy = Service.create!(
  title: "Personal Finance Planning and Strategy",
  price: "30000 per session",
  description: "Tailored investment planning and strategy sessions designed to help expatriates maximize their returns while navigating the complexities of investing in Japan. From stocks and bonds to real estate investments, Hiroshi Takahashi provides expert advice to grow your portfolio.",
  schedule: "By appointment",
  user: professional_hiroshi_takahashi,
  category: "Investment Planning, Portfolio Management, Financial Strategy, Expatriate Finance",
  address: "7 Chome-19-5 Kichijoji, Musashino, Tokyo"
)
investment_planning_strategy_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709255367/profinder/premium_photo-1661688996907-2b2d12d35f9f_tyuhac.avif"
investment_planning_strategy_file = URI.open(investment_planning_strategy_url)
investment_planning_strategy.photo.attach(
  io: investment_planning_strategy_file,
  filename: "investment_planning_strategy_image.avif",
  content_type: "image/avif"
)
sleep(1)
tax_optimization_filing_assistance = Service.create!(
  title: "Tax Optimization and Filing Assistance",
  price: "20000 per session",
  description: "Comprehensive service offering personalized tax optimization strategies and filing assistance for expatriates living in Japan. Hiroshi Takahashi ensures you understand your tax obligations and can take advantage of all applicable tax benefits.",
  schedule: "January - March, Weekdays 9 AM - 5 PM",
  user: professional_hiroshi_takahashi,
  category: "Tax Filing, Tax Optimization, Expatriate Taxation, Financial Planning",
  address: "7 Chome-19-5 Kichijoji, Musashino, Tokyo"
)
tax_optimization_filing_assistance_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709255423/profinder/premium_photo-1661639419961-6158e94e4f47_wuklpt.avif"
tax_optimization_filing_assistance_file = URI.open(tax_optimization_filing_assistance_url)
tax_optimization_filing_assistance.photo.attach(
  io: tax_optimization_filing_assistance_file,
  filename: "tax_optimization_filing_assistance_image.avif",
  content_type: "image/avif"
)

puts "Creating Review Seeds..."

review_jane_doe_photography_lessons = Review.create!(
  rating: 5,
  comment: "Ava's photography lessons were insightful and fun. She explained everything clearly in English(Native speaker), making it easy for me to follow along.",
  eng_rating: 5,
  user: user_jane_doe,
  service: photography_lessons_ava_shutter
)

review_dan_chin_investment_planning = Review.create!(
  rating: 5,
  comment: "Hiroshi made the complex world of investment understandable for a beginner like me. His English is excellent, which really helped in breaking down the financial jargon.",
  eng_rating: 5,
  user: user_dan_chin,
  service: investment_planning_strategy
)

review_john_smith_schooling_consultation = Review.create!(
  rating: 4,
  comment: "Naomi provided invaluable advice on schooling options for my children. Her fluent English and deep understanding of the Japanese education system were exactly what we needed.",
  eng_rating: 4,
  user: user_john_smith,
  service: schooling_options_consultation
)

review_emily_hart_catering_jamie_flavor = Review.create!(
  rating: 5,
  comment: "Jamie's catering service was exceptional. The fusion cuisine was a hit among my guests, and his ability to cater to dietary restrictions was impressive. His team's professionalism and clear communication in English made organizing the event seamless.",
  eng_rating: 5,
  user: professional_dr_emily_hart,
  service: catering_jamie_flavor
)

review_hiroshi_takahashi_catering_jamie_flavor = Review.create!(
  rating: 4,
  comment: "Jamie's catering for our corporate retreat was fantastic. The variety and flavors of the dishes served were outstanding. While Jamie's English is good (He is Spanish), there were a few minor communication hiccups, but nothing that impacted the overall excellent service. Highly recommend!",
  eng_rating: 4,
  user: professional_hiroshi_takahashi,
  service: catering_jamie_flavor
)

review_mia_tanaka_catering_jamie_flavor = Review.create!(
  rating: 5,
  comment: "Jamie's catering service was the highlight of our open house event. The diversity and quality of the dishes impressed everyone. Jamie, being a native speaker, effortlessly accommodated all our requests, ensuring a seamless experience. His professionalism and culinary skills truly stand out.",
  eng_rating: 5,
  user: professional_mia_tanaka,
  service: catering_jamie_flavor
)

review_dan_chin_japanese_lessons = Review.create!(
  rating: 5,
  comment: "Akira's lessons have been incredibly helpful. His approach to teaching, combined with his patience and clear explanations, has significantly improved my Japanese. As a native speaker, Akira ensures there's no language barrier in learning.",
  eng_rating: 5,
  user: user_dan_chin,
  service: personalized_japanese_language_lessons
)

review_jane_doe_japanese_lessons = Review.create!(
  rating: 5,
  comment: "Taking lessons from Akira has been a game-changer for my Japanese proficiency. His teaching method is very effective, making complex concepts easy to understand. His fluency in English is a bonus, ensuring smooth communication.",
  eng_rating: 5,
  user: user_jane_doe,
  service: personalized_japanese_language_lessons
)

review_john_smith_japanese_lessons = Review.create!(
  rating: 4,
  comment: "Akira's personalized Japanese lessons have been quite beneficial. He tailors the content to fit my learning pace, and his knowledge as a native speaker brings authenticity to the lessons. Highly recommend for anyone looking to learn Japanese.",
  eng_rating: 4,
  user: user_john_smith,
  service: personalized_japanese_language_lessons
)

review_john_smith_rental_assistance = Review.create!(
  rating: 5,
  comment: "Efficient, friendly service that made apartment hunting much easier than expected. Mia is fantastic!",
  eng_rating: 5,
  user: user_john_smith,
  service: rental_assistance_for_foreigners
)

review_jane_doe_rental_assistance = Review.create!(
  rating: 4,
  comment: "Mia was very helpful in guiding me through the rental process. Appreciated her patience and expertise.",
  eng_rating: 4,
  user: user_jane_doe,
  service: rental_assistance_for_foreigners
)

review_dan_chin_rental_assistance = Review.create!(
  rating: 5,
  comment: "The rental assistance service was a lifesaver. Found a great place in a tough market. Couldn't have done it without Mia's help.",
  eng_rating: 5,
  user: user_dan_chin,
  service: rental_assistance_for_foreigners
)

review_dan_chin_dental_services = Review.create!(
  rating: 5,
  comment: "Great experience with Dr. Sam. Professional, friendly, and the clinic is very welcoming.",
  eng_rating: 5,
  user: user_dan_chin,
  service: dental_services_sam_smiles
)

review_jane_doe_dental_services = Review.create!(
  rating: 5,
  comment: "Dr. Sam Smiles provided excellent dental care with a very gentle approach. My teeth have never felt better!",
  eng_rating: 5,
  user: user_jane_doe,
  service: dental_services_sam_smiles
)

review_john_smith_immigration_assistance_second = Review.create!(
  rating: 5,
  comment: "Second time using Chris's services for residency paperwork. As efficient and helpful as before.",
  eng_rating: 5,
  user: user_john_smith,
  service: immigration_documentation_assistance_chris_justice
)

review_jane_doe_immigration_assistance = Review.create!(
  rating: 4,
  comment: "Chris was very knowledgeable and patient throughout the visa process. Highly recommend his services.",
  eng_rating: 4,
  user: user_jane_doe,
  service: immigration_documentation_assistance_chris_justice
)

review_dan_chin_immigration_assistance = Review.create!(
  rating: 5,
  comment: "Fantastic help from Chris on navigating the immigration documentation. His attention to detail is top-notch.",
  eng_rating: 5,
  user: user_dan_chin,
  service: immigration_documentation_assistance_chris_justice
)

review_john_smith_immigration_assistance = Review.create!(
  rating: 5,
  comment: "Chris's assistance with my visa application was superb. Made the entire process smooth and stress-free.",
  eng_rating: 5,
  user: user_john_smith,
  service: immigration_documentation_assistance_chris_justice
)

review_dan_chin_business_japanese = Review.create!(
  rating: 5,
  comment: "Akira's insights into business Japanese and etiquette have been invaluable for my career in Tokyo. His lessons are practical and tailored to real-world scenarios.",
  eng_rating: 5,
  user: user_dan_chin,
  service: business_japanese_and_cultural_etiquette
)

# Reviews for pitch / demo.

review_jane_doe_business_japanese = Review.create!(
  rating: 4,
  comment: "The course on business Japanese by Akira has significantly improved my communication skills with clients and colleagues. Highly recommend for professionals.",
  eng_rating: 4,
  user: user_jane_doe,
  service: business_japanese_and_cultural_etiquette
)

review_john_smith_business_japanese = Review.create!(
  rating: 5,
  comment: "Mastering business Japanese was a challenge until I met Akira. His teaching style is engaging and effective, making complex etiquette rules easy to grasp.",
  eng_rating: 5,
  user: user_john_smith,
  service: business_japanese_and_cultural_etiquette
)

review_mia_tanaka_business_japanese = Review.create!(
  rating: 5,
  comment: "Participating in Akira's business Japanese course has been a game changer for my interactions in the Japanese market. His lessons are a must for expats.",
  eng_rating: 4,
  user: professional_mia_tanaka,
  service: business_japanese_and_cultural_etiquette
)

review_lee_jordan_business_japanese = Review.create!(
  rating: 5,
  comment: "Akira's program on business Japanese etiquette has vastly improved my professional interactions. His proficiency in English and Japanese made learning seamless.",
  eng_rating: 5,
  user: professional_lee_jordan,
  service: business_japanese_and_cultural_etiquette
)

review_emily_hart_business_japanese = Review.create!(
  rating: 4,
  comment: "Akira's expertise in business Japanese is unparalleled. His course is well-structured, providing practical skills and cultural understanding vital for success.",
  eng_rating: 4,
  user: professional_dr_emily_hart,
  service: business_japanese_and_cultural_etiquette
)

review_jane_doe_ui_ux_design = Review.create!(
  rating: 5,
  comment: "Alex's UI/UX design transformed our website. His approach to user experience is both innovative and practical, resulting in a site that's not only beautiful but user-friendly.",
  eng_rating: 5,
  user: user_jane_doe,
  service: ui_ux_design_alex_morgan
)

review_dan_chin_ui_ux_design = Review.create!(
  rating: 5,
  comment: "Working with Alex on our app's design was a game-changer. His insights into UX helped us improve user retention significantly. Highly recommend his services.",
  eng_rating: 5,
  user: user_dan_chin,
  service: ui_ux_design_alex_morgan
)

review_john_smith_ui_ux_design = Review.create!(
  rating: 4,
  comment: "Alex's expertise in UI/UX design is evident in the work he delivered. The project was on time and exceeded our expectations in terms of both aesthetics and functionality.",
  eng_rating: 5,
  user: user_john_smith,
  service: ui_ux_design_alex_morgan
)

review_naomi_kato_ui_ux_design = Review.create!(
  rating: 4,
  comment: "Alex's approach to UI/UX design is innovative and tailored. His work on our project site greatly enhanced its functionality and aesthetic appeal.",
  eng_rating: 4,
  user: professional_naomi_kato,
  service: ui_ux_design_alex_morgan
)

review_jordan_flex_full_stack_dev = Review.create!(
  rating: 5,
  comment: "Alex's development work exceeded our expectations. His innovative solutions have greatly improved our platform's performance.",
  eng_rating: 5,
  user: professional_jordan_flex,
  service: full_stack_dev_alex_taylor
)

review_emily_hart_full_stack_dev = Review.create!(
  rating: 5,
  comment: "Impressive work by Alex on our healthcare platform. His full-stack expertise is evident in the smooth operation and user-friendly design.",
  eng_rating: 5,
  user: professional_dr_emily_hart,
  service: full_stack_dev_alex_taylor
)

review_taylor_green_full_stack_dev = Review.create!(
  rating: 5,
  comment: "Alex's approach to problem-solving in development is unparalleled. Our cybersecurity app's backend is now robust thanks to him.",
  eng_rating: 5,
  user: professional_taylor_green,
  service: full_stack_dev_alex_taylor
)

review_jordan_casey_full_stack_dev = Review.create!(
  rating: 5,
  comment: "Working with Alex on our mobile app development was a great experience. His expertise in full-stack development is exceptional.",
  eng_rating: 3,
  user: professional_jordan_casey,
  service: full_stack_dev_alex_taylor
)


review_casey_lee_full_stack_dev = Review.create!(
  rating: 4,
  comment: "Alex played a critical role in the development of our startup's platform. His technical knowledge and project management skills are outstanding.",
  eng_rating: 4,
  user: professional_casey_lee,
  service: full_stack_dev_alex_taylor
)

review_lee_jordan_full_stack_dev = Review.create!(
  rating: 4,
  comment: "Our IT project benefited greatly from Alex's full-stack development skills. He's a skilled developer who can tackle any challenge.",
  eng_rating: 4,
  user: professional_lee_jordan,
  service: full_stack_dev_alex_taylor
)

review_kim_parker_full_stack_dev = Review.create!(
  rating: 5,
  comment: "Alex's dedication to our project was remarkable. His full-stack development skills brought our vision to life with efficiency and creativity.",
  eng_rating: 5,
  user: professional_kim_parker,
  service: full_stack_dev_alex_taylor
)

review_dan_chin_accounting_tanaka_sousuke = Review.create!(
  rating: 5,
  comment: "Mr. Tanaka's guidance on tax planning was invaluable. His English proficiency made communication seamless.",
  eng_rating: 5,
  user: user_dan_chin,
  service: accounting_tanaka_sousuke
)

review_jane_doe_accounting_tanaka_sousuke = Review.create!(
  rating: 4,
  comment: "Received excellent financial advice. Mr. Tanaka speaks fluent English, which was a great help.",
  eng_rating: 4,
  user: user_jane_doe,
  service: accounting_tanaka_sousuke
)

review_john_smith_accounting_tanaka_sousuke = Review.create!(
  rating: 5,
  comment: "Tanaka's expertise in financial analysis is top-notch. His ability to explain complex issues in English is impressive.",
  eng_rating: 5,
  user: user_john_smith,
  service: accounting_tanaka_sousuke
)

review_professional_ava_shutter_accounting_tanaka_sousuke = Review.create!(
  rating: 5,
  comment: "Sousuke's accounting services are thorough and reliable. Communicates clearly in English, making financial matters easier to understand.",
  eng_rating: 5,
  user: professional_ava_shutter,
  service: accounting_tanaka_sousuke
)

review_professional_mia_tanaka_accounting_tanaka_sousuke = Review.create!(
  rating: 5,
  comment: "His detailed approach to tax planning saved my business a lot. His proficiency in English is commendable.",
  eng_rating: 5,
  user: professional_mia_tanaka,
  service: accounting_tanaka_sousuke
)

review_professional_jordan_flex_accounting_tanaka_sousuke = Review.create!(
  rating: 4,
  comment: "Efficient and effective service. Tanaka san is a true professional.",
  eng_rating: 5,
  user: professional_jordan_flex,
  service: accounting_tanaka_sousuke
)

review_professional_akira_sato_accounting_tanaka_sousuke = Review.create!(
  rating: 5,
  comment: "Highly recommend Mr. Tanaka for anyone needing accounting services. Very clear communication.",
  eng_rating: 5,
  user: professional_akira_sato,
  service: accounting_tanaka_sousuke
)

review_dan_chin_house_moving_service = Review.create!(
  rating: 5,
  comment: "Haruki's team made our move stress-free. Everything was handled with care. His English was very good, making communication easy.",
  eng_rating: 5,
  user: user_dan_chin,
  service: house_moving_service_haruki_matsuda
)

review_jane_doe_house_moving_service = Review.create!(
  rating: 4,
  comment: "Very professional and efficient moving service. Haruki speaks English fluently, which was a big help.",
  eng_rating: 4,
  user: user_jane_doe,
  service: house_moving_service_haruki_matsuda
)

review_john_smith_house_moving_service = Review.create!(
  rating: 5,
  comment: "Haruki's moving service is top-notch. Quick and careful with our belongings. Plus, his English communication skills were excellent.",
  eng_rating: 5,
  user: user_john_smith,
  service: house_moving_service_haruki_matsuda
)

review_lee_jordan_house_moving_service = Review.create!(
  rating: 5,
  comment: "I'm impressed by the efficiency and care of Haruki's moving service. Fluent English made coordinating a breeze.",
  eng_rating: 5,
  user: professional_lee_jordan,
  service: house_moving_service_haruki_matsuda
)

review_sam_rivera_house_moving_service = Review.create!(
  rating: 4,
  comment: "The moving service provided by Haruki was very good. Managed everything timely and with care.",
  eng_rating: 4,
  user: professional_sam_rivera,
  service: house_moving_service_haruki_matsuda
)

review_akira_sato_investment_planning = Review.create!(
  rating: 5,
  comment: "Hiroshi's investment advice has been invaluable for understanding the Japanese market. His insights have helped me make informed decisions.",
  eng_rating: 4,
  user: professional_akira_sato,
  service: investment_planning_strategy
)

review_mia_tanaka_startup_consulting = Review.create!(
  rating: 4,
  comment: "Casey's guidance on launching my startup in Japan was crucial. Her understanding of the market and strategic advice has set me on the right path.",
  eng_rating: 3,
  user: professional_mia_tanaka,
  service: startup_consulting_casey_lee
)

review_sam_rivera_startup_consulting = Review.create!(
  rating: 5,
  comment: "Although Casey's knowledge was spot on, we had to resort to using Japanese (I'm Spanish and she is from Russia).",
  eng_rating: 2,
  user: professional_sam_rivera,
  service: startup_consulting_casey_lee
)

review_dan_chin_haruka_finance = Review.create!(
  rating: 4,
  comment: "Haruka's expertise in finance and investment strategies for expatriates in Japan is unmatched. Her personalized advice has been instrumental in navigating the complexities of the Japanese financial market, helping me make informed decisions for my future. Her clear communication and professionalism, especially in English, made the entire process smooth and understandable. Highly recommended for anyone looking for reliable finance advice.",
  eng_rating: 4,
  user: user_dan_chin,
  service: haruka_expatriate_finance_planning
)

puts "making booking seeds"

booking_yoshio_kaneko_haruki_matsuda = Booking.create!(
  start_date: Date.new(2024, 2, 1),
  end_date: Date.new(2024, 2, 3),
  status: "approved",
  service: house_moving_service_haruki_matsuda,
  user: user_Yoshio_Kaneko
)

puts "Making the final Demo Day seeds....Almost Done!"
sleep(1)
min = 35.71722
max =  35.74280
min2 = 139.70200
max2 = 139.72484
professional_masaki_kato = User.create!(
  username: "MasakiKato",
  email: "masakikato@example.com",
  password: "123456",
  phonenumber: "03-5564-7788",
  linkedin_profile: "https://www.linkedin.com/in/masaki-kato",
  bio: "Dedicated finance consultant with over a decade of experience in personal wealth management and investment strategies, specifically tailored for expatriates in Japan. Let's achieve your financial dreams together.",
  contact_email: "contact@kato-finance.com",
  website_url: "https://kato-finance.com"
)
url = "https://this-person-does-not-exist.com/new?gender=male&age=40&etnic=asian"
json = URI.open(url).string
src = JSON.parse(json)['src']
photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
professional_masaki_kato.photo.attach(io: file, filename: 'masaki_kato.png', content_type: 'image/png')

sleep(1)
kato_wealth_management = Service.create!(
  title: "Masaki Kato's Wealth Management for Expatriates",
  price: "40000 per session",
  description: "Personalized wealth management and investment strategy services designed to navigate the complexities of expatriate finances in Japan. From real estate investment to portfolio diversification, I provide the insights you need for financial success.",
  schedule: "By appointment, Monday to Friday, 10 AM to 7 PM",
  user: professional_masaki_kato,
  category: "Wealth Management, Expatriate Finance, Investment Strategy",
  address: "6 Chome-10-1 Roppongi, Minato-ku, Tokyo 106-0032"
)
kato_wealth_management_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1709781938/profinder/1000_F_138575340_yjdTiNC17ghrdmNzIlJWvX43vBpNhkdV_ckf4gn.jpg"
kato_wealth_management_file = URI.open(kato_wealth_management_url)
kato_wealth_management.photo.attach(
  io: kato_wealth_management_file,
  filename: "kato_wealth_management.jpg",
  content_type: "image/jpeg"
)

review_jane_doe_kato_finance = Review.create!(
  rating: 3,
  comment: "Working with Masaki on my financial planning has been an enlightening experience. His expertise in wealth management for expatriates in Japan is exactly what I was looking for. Masaki's ability to demystify complex investment options and tailor strategies to my unique situation has been invaluable. His proficiency in English made communication seamless, ensuring that I'm always well-informed about my financial decisions.",
  eng_rating: 3,
  user: user_jane_doe,
  service: kato_wealth_management
)












# OLD SEEDS

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


puts "DB Seeds completed."
