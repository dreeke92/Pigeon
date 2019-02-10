# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying old records..."

Donation.destroy_all
Follow.destroy_all
Like.destroy_all
Post.destroy_all
Rating.destroy_all
Comment.destroy_all
CharityThemePreference.destroy_all
CharityTypePreference.destroy_all
CharityThemeRelation.destroy_all
CharityTypeRelation.destroy_all
CharityTheme.destroy_all
CharityType.destroy_all
Charity.destroy_all
User.destroy_all


puts "Downloading charity photos..."

photo_red_cross = 'https://www.icrc.org/sites/default/themes/icrc_theme/images/en/logo-small.png'
photo_wwf ='https://wwf.be/themes/wwf-be/dist/images/vector/logo.svg'
photo_green_peace = 'https://www.greenpeace.org/nl/wp-content/themes/planet4-master-theme/images/gp-logo.svg'
photo_oxfam = 'https://www.oxfam.org/sites/all/themes/oxfamzen/logo.png'

puts "Downloading user photos..."

photo_dree = 'https://avatars0.githubusercontent.com/u/43139321?v=4'
photo_steven = 'https://avatars2.githubusercontent.com/u/41968309?v=4'
photo_kenny = 'https://avatars1.githubusercontent.com/u/26207944?v=4'
photo_frederik = 'https://avatars0.githubusercontent.com/u/43231640?v=4'
photo_inou = 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/yzmhkgececsz46relki9.jpg'
photo_ellyn = 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/ul03dampdb9to6qumjcj.jpg'
photo_dharam = 'https://avatars3.githubusercontent.com/u/28381425?v=4'
photo_elijah = 'https://avatars2.githubusercontent.com/u/1316776?v=4'
photo_hilmar = 'https://avatars0.githubusercontent.com/u/43231640?v=4'
photo_jethro = 'https://avatars3.githubusercontent.com/u/35604636?v=4'
photo_john = 'https://avatars2.githubusercontent.com/u/93381?v=4'
photo_jonas = 'https://avatars2.githubusercontent.com/u/43283863?v=4'
photo_jules = 'https://avatars2.githubusercontent.com/u/38872895?v=4'
photo_merlin = 'https://avatars3.githubusercontent.com/u/40541966?v=4'
photo_owain = 'https://avatars0.githubusercontent.com/u/23619296?v=4'
photo_paul = 'https://avatars1.githubusercontent.com/u/43411286?v=4'
photo_roger = 'https://avatars0.githubusercontent.com/u/23165579?v=4'
photo_shawkat = 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/rkifvnfts1c76wqsbrqh.jpg'
photo_stephen = 'https://avatars2.githubusercontent.com/u/41954899?v=4'
photo_victor = 'https://avatars1.githubusercontent.com/u/42962239?v=4'
photo_william = 'https://avatars3.githubusercontent.com/u/27657581?v=4'

puts "Creating users..."

steven = User.create!(email: 'steven.vaneecke@gmail.com', password: "123456", first_name: "Steven", last_name: "Van Eecke")
kenny = User.create!(email: 'kenny.cuoq@gmail.com', password: "123456", first_name: "Kenny", last_name: "Cuoq")
frederik = User.create!(email: 'frederik.hossak@gmail.com', password: "123456", first_name: "Frederik", last_name: "Hossak")
dree = User.create!(email: 'andreasava@hotmail.com', password: "123456", first_name: "Andreas", last_name: "Van Assche")
inou = User.create!(email: 'inou.ridder@gmail.com', password: "123456", first_name: "Inou", last_name: "Ridder")
dharam = User.create!(email: 'a@a.com', password: "123456", first_name: "Dharam", last_name: "Whabi")
elijah = User.create!(email: 'b@b.com', password: "123456", first_name: "Elijah", last_name: "Chancey")
ellyn = User.create!(email: 'c@c.com', password: "123456", first_name: "Ellyn", last_name: "Bouscasse")
hilmar = User.create!(email: 'd@d.com', password: "123456", first_name: "Hilmar", last_name: "Orth")
jethro = User.create!(email: 'e@a.com', password: "123456", first_name: "Jethro", last_name: "Williams")
john = User.create!(email: 'p@a.com', password: "123456", first_name: "John", last_name: "Ferreira")
jonas = User.create!(email: 'o@a.com', password: "123456", first_name: "Jonas", last_name: "Dieterle")
jules = User.create!(email: 'an@a.com', password: "123456", first_name: "Jules", last_name: "Jamet")
merlin = User.create!(email: 'am@a.com', password: "123456", first_name: "Merlin", last_name: "Hannemann")
owain = User.create!(email: 'al@a.com', password: "123456", first_name: "Owain", last_name: "Skyrme")
paul = User.create!(email: 'ak@a.com', password: "123456", first_name: "Paul", last_name: "Guadagnin")
roger = User.create!(email: 'aj@a.com', password: "123456", first_name: "Roger", last_name: "G")
shawkat = User.create!(email: 'ag@a.com', password: "123456", first_name: "Shawkat", last_name: "Shami")
stephen = User.create!(email: 'h@a.com', password: "123456", first_name: "Stephen", last_name: "Schuez")
victor = User.create!(email: 'f@a.com', password: "123456", first_name: "Victor", last_name: "King")
william = User.create!(email: 'g@a.com', password: "123456", first_name: "William", last_name: "Oleson")


users = []
users << steven
users << kenny
users << frederik
users << dree
users << inou
users << ellyn
users << dharam
users << elijah
users << hilmar
users << jethro
users << john
users << jonas
users << jules
users << merlin
users << owain
users << paul
users << roger
users << shawkat
users << stephen
users << victor
users << william

admins = []
admins << steven
admins << dree

puts "Creating charities..."

red_cross = Charity.new(name: "Red Cross", description: "The ICRC is an independent, neutral organization ensuring humanitarian protection and assistance for victims of armed conflict and other situations of violence. ", website_url: "https://www.icrc.org/en", phone_number: "+41 22 734 60 01", email: 'red@cross.com', geographical_reach: "International", category: "Humanitarian aid", status: 'Accepted', user_id: steven.id, internal_rating: 5)
red_cross.remote_photo_url = photo_red_cross
red_cross.status = "confirmed"
red_cross.save!

wwf = Charity.new(name: "WWF", description: "Our mission is to build a future in which people live in harmony with nature. From our experience as the world's leading independent conservation body, we know that the well-being of people, wildlife and the environment are closely linked. ", website_url: "https://www.wwf.org", phone_number: "0499 70 86 41", email: 'koen.stuyck@wwf.be', geographical_reach: "International", category: "Animal rights", status: 'Accepted', user_id: kenny.id, internal_rating: 4)
wwf.remote_photo_url = photo_wwf
wwf.status = "confirmed"
wwf.long_description = "The World Wide Fund for Nature (WWF) is an international non-governmental organization founded in 1961, working in the field of the wilderness preservation, and the reduction of human impact on the environment.[4] It was formerly named the World Wildlife Fund, which remains its official name in Canada and the United States.[4]

WWF is the world's largest conservation organization with over five million supporters worldwide, working in more than 100 countries, supporting around 1,300 conservation and environmental projects.[5] They have invested over $1 billion in more than 12,000 conservation initiatives since 1995.[6] WWF is a foundation with 55% of funding from individuals and bequests, 19% from government sources (such as the World Bank, DFID, USAID) and 8% from corporations in 2014.[7][8]

WWF aims to stop the degradation of the planet's natural environment and to build a future in which humans live in harmony with nature.[9] The Living Planet Report is published every two years by WWF since 1998; it is based on a Living Planet Index and ecological footprint calculation.[4] In addition, WWF has launched several notable worldwide campaigns including Earth Hour and Debt-for-Nature Swap, and its current work is organized around these six areas: food, climate, freshwater, wildlife, forests, and oceans."
wwf.save!

green_peace = Charity.new(name: "Grean Peace", description: "Imagine a world where forests flourish and oceans are full of life. Where energy is as clean as a mountain stream. Where everyone has security, dignity and joy. We can’t build this future alone, but we can build it together.", website_url: "https://www.greenpeace.org/international/", phone_number: "+32 2 274 0200", email: 'info.be@greenpeace.org', geographical_reach: "International", category: "Animal rights", status: 'Accepted', user_id: dree.id, internal_rating: 4)
green_peace.remote_photo_url = photo_green_peace
green_peace.status = "confirmed"
green_peace.save!

oxfam = Charity.new(name: "Oxfam", description: "While the richest continue to enjoy booming fortunes, nearly half of the world's population is living on less than $5.50 a day. Inequality is keeping people trapped in poverty. Let’s step up the fight against it and beat poverty for good. Join us now.", website_url: "https://www.oxfam.org//", phone_number: "+254 722 20041", email: 'oxfamsol@oxfamsol.be', geographical_reach: "International", category: "Inequality", status: 'Accepted', user_id: frederik.id, internal_rating: 4)
oxfam.remote_photo_url = photo_oxfam
oxfam.status = "confirmed"
oxfam.save!

puts "Creating charity themes..."

agriculture = CharityTheme.new(name: "Agriculture")
agriculture.save!
animals = CharityTheme.new(name: "Animal rights & Protection")
animals.save!
climate = CharityTheme.new(name: "Climate Change & Environment")
climate.save!
coordination = CharityTheme.new(name: "Coordination")
coordination.save!
disaster = CharityTheme.new(name: "Disaster Management")
disaster.save!
education = CharityTheme.new(name: "Education")
education.save!
food = CharityTheme.new(name: "Food and Nutrition")
food.save!
gender = CharityTheme.new(name: "Gender")
gender.save!
health = CharityTheme.new(name: "Health")
health.save!
aids = CharityTheme.new(name: "HIV/Aids")
aids.save!
mining = CharityTheme.new(name: "Mine action")
mining.save!
peacekeeping = CharityTheme.new(name: "Peacekeeping and Peacebuilding")
peacekeeping.save!
protection = CharityTheme.new(name: "Protection and Human Rights")
protection.save!
recovery = CharityTheme.new(name: "Recovery and Reconstruction")
recovery.save!
safety = CharityTheme.new(name: "Safety and security")
safety.save!
shelter = CharityTheme.new(name: "Shelter and non-food items")
shelter.save!
water = CharityTheme.new(name: "Water sanition Hygiene")
water.save!

puts "Creating charity types..."

academic = CharityType.new(name: "Academic and Research Institutions")
academic.save!
government = CharityType.new(name: "Government")
government.save!
international = CharityType.new(name: "Internation organization")
international.save!
media = CharityType.new(name: "Media")
media.save!
ngo = CharityType.new(name: "Non-governmental Organization (NGO)")
ngo.save!
charity = CharityType.new(name: "Local charity")
charity.save!
other = CharityType.new(name: "Other")
other.save!

puts "creating posts..."

wwf_post_1 = Post.new(content: "Description decription description", charity_id: wwf.id)
wwf_post_1.save!
wwf_post_2 = Post.new(content: "Description decription description Description decription description", charity_id: wwf.id)
wwf_post_2.save!
wwf_post_3 = Post.new(content: "Description decription description Description decription description Description decription description", charity_id: wwf.id)
wwf_post_3.save!
wwf_post_4 = Post.new(content: "Description decription description Description decription description Description decription description Description decription description", charity_id: wwf.id)
wwf_post_4.save!
wwf_post_5 = Post.new(content: "Description decription description Description decription description Description decription description Description decription description Description decription description Description decription description Description decription description Description decription description", charity_id: wwf.id)
wwf_post_5.save!
wwf_post_6 = Post.new(content: "Description decription description Description decription description Description decription description Description decription description", charity_id: wwf.id)
wwf_post_6.save!
wwf_post_7 = Post.new(content: "Description decription description Description decription description Description decription description", charity_id: wwf.id)
wwf_post_7.save!

puts "Adding pictures to users..."

users.each do |user|
  case user.first_name
  when 'Steven'
    user.remote_photo_url = photo_steven
  when 'Andreas'
    user.remote_photo_url = photo_dree
  when 'Kenny'
    user.remote_photo_url = photo_kenny
  when 'Frederik'
    user.remote_photo_url = photo_frederik
  when 'Inou'
    user.remote_photo_url = photo_inou
  when 'Dharam'
   user.remote_photo_url = photo_dharam
  when 'Elijah'
   user.remote_photo_url = photo_elijah
  when 'Hilmar'
   user.remote_photo_url = photo_hilmar
  when 'Jethro'
   user.remote_photo_url = photo_jethro
  when 'John'
   user.remote_photo_url = photo_john
  when 'Jonas'
   user.remote_photo_url = photo_jonas
  when 'Jules'
   user.remote_photo_url = photo_jules
  when 'Merlin'
   user.remote_photo_url = photo_merlin
  when 'Owain'
   user.remote_photo_url = photo_owain
  when 'Paul'
   user.remote_photo_url = photo_paul
  when 'Roger'
   user.remote_photo_url = photo_roger
  when 'Shawkat'
   user.remote_photo_url = photo_shawkat
  when 'Stephen'
   user.remote_photo_url = photo_stephen
  when 'Victor'
   user.remote_photo_url = photo_victor
  when 'William'
   user.remote_photo_url = photo_william
  else
   user.remote_photo_url = photo_ellyn
  end
  user.save
end


