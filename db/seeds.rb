# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database.....'
Artwork.destroy_all

url1 = 'https://payload.cargocollective.com/1/22/726497/12334190/debord_1750.jpg'
url2 = 'https://payload.cargocollective.com/1/22/726497/12334185/Sans-titre-1_1750.jpg'
url3 = 'https://payload.cargocollective.com/1/22/726497/12334185/Magnesia-copie_1750.jpg'
url4 = 'https://payload.cargocollective.com/1/22/726497/12334190/revele_1750.jpg'
url5 = 'https://payload.cargocollective.com/1/22/726497/12334190/tri-eau_1750.jpg'
url6 ='https://payload.cargocollective.com/1/22/726497/12334185/infinitions--2_1750.jpg'

puts 'Creating artworks...'

cyclique = Artwork.new(name: 'Débordement cyclique', category: 'gravure', user_id: 1, availability: 'free')
bienheureux = Artwork.new(name:'77 bienheureux et leur conscience collective', category:'sculpture', user_id: 1, availability: 'free')
magnesia = Artwork.new(name:'Magnésia', category: 'sculpture', user_id: 1, availability: 'free')
revele = Artwork.new(name: 'Révèle', category: 'Peinture', user_id: 1, availability: 'free')
trio = Artwork.new(name: 'trie eau', category: 'Peinture', user_id: 1, availability: 'free')
infinition = Artwork.new(name: 'infinition', category: 'sculpture', user_id: 1, availability: 'free')


cyclique.remote_photo_url = url1
cyclique.save
bienheureux.remote_photo_url = url2
bienheureux.save
magnesia.remote_photo_url = url3
magnesia.save
revele.remote_photo_url = url4
revele.save
trio.remote_photo_url = url5
trio.save
infinition.remote_photo_url = url6
infinition.save

puts 'Finished!'
