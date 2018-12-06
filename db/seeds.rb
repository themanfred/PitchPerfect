Feedback.destroy_all
Masterpitch.destroy_all
Pitch.destroy_all
User.destroy_all


User.create!(
  first_name:"Thomas",
  last_name: "Freund",
  description: "I want to learn how to improve my pitch, so that I can pitch to investors.",
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1543056848/lbzuns67if1kw691lzpk.jpg" ,
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
  name: Le Wagon pitch,
  topic: Presenting Pitch Perfect,
  duration: 4,
  remote_photo_url: "https://res.cloudinary.com/dseugxpvh/image/upload/v1544042406/home_facebook_card-c24af70e1ea78ec96cdf28f926fc76eb3ce3ecaf973042255492aa1de7727393.jpg",
  target: Public,
  transcript:Faker::Lorem.paragraph
)



Feedback.create!(
  user_id:User.first.id,
  pitch_id:Pitch.first.id,
  value:3,
  value_comment:This could have improved,
  quality:2,
  quality_comment:Faker::Lorem.paragraph,
  clarity: 2,
  clarity_comment: Faker::Lorem.paragraph,
  pace:4,
  pace_comment:Faker::Lorem.paragraph,
  body_language:3,
  body_language_comment:Faker::Lorem.paragraph,
  language:2,
  language_comment:Faker::Lorem.paragraph,
  comment:Faker::Lorem.paragraph
)


p "#{User.count} user exist"
p "#{Pitch.count} pitches exist"
p "#{Feedback.count} feedbacks exist"

