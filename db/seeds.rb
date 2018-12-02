Feedback.destroy_all
Masterpitch.destroy_all
Pitch.destroy_all
User.destroy_all

10.times do
User.create!(
  first_name:Faker::GameOfThrones.character,
  last_name:Faker::GameOfThrones.house ,
  description: Faker::GameOfThrones.quote,
  photo: Faker::LoremPixel.image("100x100"),
  email:Faker::Internet.email,
  password: "123456"

  )
end

10.times do
Pitch.create!(
  user_id: User.first.id,
  name:Faker::SiliconValley.invention,
  topic:Faker::WorldCup.team,
  duration: 1,
  target: Faker::VentureBros.organization,
  transcript:Faker::Lorem.paragraph
)
end


Feedback.create!(
  user_id:User.first.id,
  pitch_id:Pitch.first.id,
  value:3,
  value_comment:Faker::Lorem.paragraph,
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


10.times do
Masterpitch.create!(
  presenter_name:Faker::Simpsons.character,
  topic:Faker::Hacker.noun,
  duration:1,
  target: Faker::TheFreshPrinceOfBelAir.celebrity,
  transcript: Faker::Lorem.paragraph,
  description: Faker::Lorem.sentence
)
end


p "#{User.count} user exist"
p "#{Pitch.count} pitches exist"
p "#{Masterpitch.count} master pitches exist"
p "#{Feedback.count} feedbacks exist"

