Feedback.destroy_all
Pitch.destroy_all
User.destroy_all


User.create!(
  first_name:"Thomas",
  last_name: "Freund",
  description: "I want to learn how to improve my pitch, so that I can pitch to investors.",
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544087288/IMG_20180903_144516_1.jpg" ,
  email:"tfreundc@gmail.com",
  password: "123456"

)

User.create!(
  first_name:"Yoann ",
  last_name: "Benchetrit",
  description: "I want to show people how cool sneakers are and that is why I am in this incredible site!",
  remote_photo_url: "http://res.cloudinary.com/dseugxpvh/image/upload/v1544042015/46007025_10156985427167262_4182458059290836992_o.jpg" ,
  email:" bencho@gmail.com",
  password: "123456"

)

User.create!(
  first_name:"Gabriel",
  last_name: "Zerbib",
  description: "I have my own statup, but I want to  step up my game and improve.",
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1543996114/kktcuwzmbge6ejkr91a3.jpg" ,
  email:"gabz@gmail.com",
  password: "123456"

)



Pitch.create!(
  user_id: User.first.id,
  name: "le Wagon demo Day",
  topic:"my own product",
  duration: 4,
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544091099/wagon-officiel-logo.png",
  target: "The Le wagon audience",
  transcript:Faker::Lorem.paragraph
)

Pitch.create!(
  user_id: User.first.id,
  name: "Pitch for my friends",
  topic:"Entertaining",
  duration: 2,
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544090952/anna-vander-stel-60342-unsplash.jpg",
  target: "The Le wagon audience",
  transcript:Faker::Lorem.paragraph
)

Pitch.create!(
  user_id: User.first.id,
  name: "Pitch for my Startup",
  topic:"Idea",
  duration: 3,
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544090590/mike-mcalister-436178-unsplash.jpg",
  target: "The Le wagon audience",
  transcript:Faker::Lorem.paragraph
)

Pitch.create!(
  user_id: User.first.id,
  name: "Pitch for my school",
  topic:"Education",
  duration: 4,
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544090588/nathan-dumlao-572047-unsplash.jpg",
  target: "The Le wagon audience",
  transcript:Faker::Lorem.paragraph
)

Pitch.create!(
  user_id: User.first.id,
  name: "Pitch for my weeding",
  topic:"My fabulous wife",
  duration: 3,
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544090586/designecologist-600480-unsplash.jpg",
  target: "The Le wagon audience",
  transcript:Faker::Lorem.paragraph
)

Pitch.create!(
  user_id: User.first.id,
  name: "Pitch for event",
  topic:"Entertaining",
  duration: 1,
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544090592/priscilla-du-preez-697316-unsplash.jpg",
  transcript:Faker::Lorem.paragraph
)

Pitch.create!(
  user_id: User.first.id,
  name: "Pitch online",
  topic:"Discover",
  duration: 6,
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544090780/melany-rochester-777860-unsplash.jpg",
  target: "The Le wagon audience",
  transcript:Faker::Lorem.paragraph
)

Pitch.create!(
  user_id: User.first.id,
  name: "Pitch my Sneakers",
  topic:"Benchneak",
  duration: 6,
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544092056/lefteris-kallergis-499890-unsplash.jpg",
  target: "The Le wagon audience",
  transcript:Faker::Lorem.paragraph
)



p "#{User.count} user exist"
p "#{Pitch.count} pitches exist"
p "#{Feedback.count} feedbacks exist"
