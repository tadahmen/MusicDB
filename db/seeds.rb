Artist.destroy_all
otis = Artist.create({ name: "Otis Redding", voice:"soulful"})
celine = Artist.create({ name: "Celine Dion", voice:"aweful"})

Song.destroy_all
security = Song.create({ name: "Security", artist_id: otis.id, good_for_mood:true}) #or 'artist_id: otis.id' or 'artist: otis'
try = Song.create({ name: "Try a little tenderness", artist: otis, good_for_mood:true})
titanic = Song.create({name:"My heart will go on", artist: celine, good_for_mood:false})
where = Song.create({name:"Where does my heart beat now", artist: celine, good_for_mood:false})

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
