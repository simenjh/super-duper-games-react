# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ratchet = Game.create(
  name: "Ratchet & Clank",
  hero_headline: "Die motherfucker",
  hero_description: "Shangala bangala!"
)

ratchet.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/assets/images/featured-images/clank.jpg'),
  filename: 'clank.jpg',
  content_type: 'application/jpg'
)

ratchet.hero_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/assets/images/ratchet_hero.jpg'),
  filename: 'ratchet_hero.jpg',
  content_type: 'application/jpg'
)



rayman = Game.create(
  name: "Rayman",
  hero_headline: "Die motherfucker",
  hero_description: "Shangala bangala!"
)

rayman.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/assets/images/featured-images/rayman.png'),
  filename: 'rayman.jpg',
  content_type: 'application/png'
)

rayman.hero_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/assets/images/rayman.jpg'),
  filename: 'rayman.jpg',
  content_type: 'application/jpg'
)



gta = Game.create(
  name: "GTA: San Andreas",
  hero_description: "Shangala bangala!"
)

gta.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/assets/images/featured-images/gta_san_andreas.jpg'),
  filename: 'gta_san_andreas.jpg',
  content_type: 'application/jpg'
)



fifa = Game.create(
  name: "Fifa 15",
  hero_description: "Shangala bangala!"
)

fifa.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/assets/images/featured-images/fifa.jpg'),
  filename: 'fifa.jpg',
  content_type: 'application/jpg'
)



big_mutha = Game.create(
  name: "Big Mutha Truckers",
  hero_description: "Shangala bangala!"
)

big_mutha.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/assets/images/featured-images/big_mutha_truckers.jpeg'),
  filename: 'big_mutha_truckers.jpeg',
  content_type: 'application/jpeg'
)
