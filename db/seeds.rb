Picture.destroy_all

50.times do
    picture = Picture.create(
      title: Faker::Music::Hiphop.artist,
      body: Faker::Quote.famous_last_words,
      price: Faker::Number.between(from: 5, to: 100),
      image_url: 
      author: Faker::Music.mambo_no_5,
    )
  end

10.times do
  tag = Tag.create(
    title: Faker::Color.color_name
  )
end

50.times do
    picture = Picture.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: ,
      phone_number: Faker::PhoneNumber.cell_phone_in_e164, 
      password:       author: Faker::Music.mambo_no_5,
    )
  end