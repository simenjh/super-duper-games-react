# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Achievements
three = Achievement.create!(
    name: "3 in a row"
)

three.image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/achievements/three_in_a_row.png'),
  filename: 'three_in_a_row.png',
  content_type: 'application/png'
)


big_gainer = Achievement.create!(
    name: "Big gainer",
)

big_gainer.image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/achievements/big_gainer.jpg'),
  filename: 'big_gainer.jpg',
  content_type: 'application/jpg'
)


explorer = Achievement.create!(
    name: "Explorer",
)

explorer.image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/achievements/explorer.jpg'),
  filename: 'explorer.jpg',
  content_type: 'application/jpg'
)



# Games
ratchet = Game.create!(
  name: "Ratchet & Clank",
  hero_description: "Shangala bangala!",
  description: "Ratchet & Clank is a series of action platformer and third-person shooter video games. The franchise was created and developed by Insomniac Games and published by Sony Computer Entertainment for PlayStation consoles, such as PlayStation 2, PlayStation 3, PlayStation 4, and PlayStation 5, with the exclusion of Size Matters and Secret Agent Clank, which were developed by High Impact Games for the PlayStation Portable."
)

ratchet.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/featured-images/ratchet_clank.jpg'),
  filename: 'ratchet_clank.jpg',
  content_type: 'application/jpg'
)

ratchet.hero_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/hero/ratchet_hero.jpg'),
  filename: 'ratchet_hero.jpg',
  content_type: 'application/jpg'
)

ratchet.mascot_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/game-show/clank.png'),
  filename: 'clank.png',
  content_type: 'application/png'
)



rayman = Game.create!(
  name: "Rayman",
  hero_description: "Let's kill some robo-pirates",
  description: "Rayman 3: Hoodlum Havoc is a platform game, the third major installment in the Rayman series. It tells the story of how Rayman stops André, an evil black lum, from taking over the world with his army of sack-like 'Hoodlum' soldiers. Unlike the game's predecessor, Rayman 3 took a more light-hearted turn, it has sarcastic self-referential undertones and pokes fun at the platforming video game genre. It was released for the GameCube, PlayStation 2, Xbox and Microsoft Windows by Ubi Soft in 2003 and OS X by Feral Interactive in 2004."
)

rayman.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/featured-images/rayman.png'),
  filename: 'rayman.jpg',
  content_type: 'application/png'
)

rayman.hero_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/hero/rayman.jpg'),
  filename: 'rayman.jpg',
  content_type: 'application/jpg'
)

rayman.mascot_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/game-show/globox.png'),
  filename: 'globox.png',
  content_type: 'application/png'
)



gta = Game.create!(
  name: "GTA: San Andreas",
  hero_description: "Shangala bangala!",
  description: "Grand Theft Auto: San Andreas is a 2004 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh title in the Grand Theft Auto series, and the follow-up to the 2002 game Grand Theft Auto: Vice City. It was released in October 2004 for PlayStation 2, and in June 2005 for Microsoft Windows and Xbox. The game, set within an open world environment that players can explore and interact with at their leisure, focuses on the story of former gangster Carl 'CJ' Johnson, who is brought back home by the death of his mother, only to become involved in a long journey that sees him exploring the fictional U.S. state of San Andreas, which is heavily based on California and Nevada."
)

gta.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/featured-images/gta_san_andreas.jpg'),
  filename: 'gta_san_andreas.jpg',
  content_type: 'application/jpg'
)

gta.hero_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/hero/gta_hero.jpg'),
  filename: 'gta_hero.jpg',
  content_type: 'application/jpg'
)

gta.mascot_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/game-show/big_smoke.png'),
  filename: 'big_smoke.png',
  content_type: 'application/png'
)



fifa = Game.create!(
  name: "Fifa 15",
  hero_description: "Shangala bangala!",
  description: "FIFA 15 is an association football simulation video game developed by EA Canada and published by Electronic Arts. It was released on 23 September 2014 in North America, 25 September in Europe and 26 September in the United Kingdom and Ireland[1] for the PlayStation 3, PlayStation 4, PlayStation Vita, Nintendo 3DS, Wii, Xbox One, Xbox 360, Microsoft Windows, iOS, Android and Windows Phone.[2] On PC for the first time, FIFA 15 runs on EA's Ignite engine with the same features as the PlayStation 4 and Xbox One editions.[3][4] This is the final game in the FIFA series to be available on the Wii and handhelds."
)

fifa.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/featured-images/fifa.jpg'),
  filename: 'fifa.jpg',
  content_type: 'application/jpg'
)

fifa.hero_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/hero/fifa15_hero.jpg'),
  filename: 'fifa15_hero.jpg',
  content_type: 'application/jpg'
)

fifa.mascot_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/game-show/messi.png'),
  filename: 'messi.png',
  content_type: 'application/png'
)




big_mutha = Game.create!(
  name: "Big Mutha Truckers",
  hero_description: "Shangala bangala!",
  description: "Big Mutha Truckers is a racing video game developed by British studio Eutechnyx, released in 2002. Set in fictional Hick County, the game revolves around completing trips between cities, delivering goods, and competing in races while at the helm of an eighteen wheeler. The game is available on GameCube, Xbox, PlayStation 2, and PC. It met with middling critical and commercial reception, due to repetitive gameplay, dated graphics, and lackluster sound. The game uses Steppenwolf's 'Born to Be Wild' as its theme song. The sequel is Big Mutha Truckers 2. A different game of the same name was developed by Italian company Raylight Studios and released for the Game Boy Advance and Nintendo DS."
)

big_mutha.list_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/featured-images/big_mutha_truckers.jpeg'),
  filename: 'big_mutha_truckers.jpeg',
  content_type: 'application/jpeg'
)

big_mutha.hero_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/hero/big_mutha_hero.jpg'),
  filename: 'big_mutha_hero.jpg',
  content_type: 'application/jpg'
)

big_mutha.mascot_image.attach(
  io: File.open('/home/simen/programming/ruby/react-rails-test/app/client/images/game-show/bobbie_sue.jpg'),
  filename: 'bobbie_sue.jpg',
  content_type: 'application/jpg'
)
