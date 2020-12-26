puts '== Seeding database =='

1500.times do |i|
  price = (SecureRandom.random_number(9e5) + 1e5).to_i
  sqm = rand(100...200)
  price_per_sqm = price / sqm
  pictures = [
    'https://dywf8esi8sang.cloudfront.net/pictures/79816fc1331d139f90c5d7d5e4a927ff_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/49c8b401ee3a774d2ff3063e21033df5_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/6a346ca793a27f38c7138267b2b5348f_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/004a7d0d775c71ed167c96bae162ab04_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/8953ecf8854c9fae3f6bbac0a909095f_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/8f6b74f2a54ad662f9d857cb8609c93e_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/30aec826a800704596317fe1a8a7d1a3_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/416071dd465a74a7f6991863b365e3ae_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/cca2cdb840586f8195348e9f2f893e0f_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/b1402999210e5cd48fcc21b492443505_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/c978f158352e27033822122cdc10aa5d_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/0e8beeb632c6d449f6bca04a5637165c_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/e75e4c4d1614f5ce040a2b1325c5c05e_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/2b316e2f9fd8f15ac07e1c7a10355c0f_large.jpg',
    'https://dywf8esi8sang.cloudfront.net/pictures/987bf0105a601eb3e7c570c14df5df84_large.jpg'
  ]
  Apartment.create!(
    title: Faker::Lorem.sentence,
    price: price,
    sqm: sqm,
    price_per_sqm: price_per_sqm,
    number_of_bedrooms: rand(1...10),
    number_of_bathrooms: rand(1...10),
    picture: pictures[rand(0..pictures.size - 1)]
  )
end
