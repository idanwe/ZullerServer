# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Bar.create({
  name: "Grega",
  logo: "url/gregaLogo",
  minAge: "20",
  address: "Herzelia, Harash 1",
  date: Time.new(2013, 4, 14),
  weight: "1",
  phoneNumber: "034124141",
  music: [
    "main_stream",
    "rock",
  ]
})

Bar.create({
  name: "Margoza",
  logo: "url/margozaLogo",
  minAge: "20",
  address: "Tel Aviv, Oley Ziun 1",
  date: Time.new(2013, 5, 21),
  weight: "5",
  phoneNumber: "034124141",
  music: [
    "main stream",
    "flok rock",
  ]
})

Bar.create({
  name: "Friends",
  logo: "url/friendsLogo",
  minAge: "18",
  address: "Tel Aviv, Dobnov 1",
  date: Time.new(2013, 5, 22),
  weight: "5",
  phoneNumber: "034124141",
  music: [
    "main stream",
    "flok rock",
  ]
})

Club.create({
  name: "Clara",
  logo: "url/claraLogo",
  minAge: "22",
  address: "Tel Aviv, Kaufman 1",
  date: Time.new(2013, 5, 19),
  weight: "5",
  phoneNumber: "0525252433",
  music: [
    "main stream",
    "pop",
    "house"
  ]
})

Club.create({
  name: "Dizingof",
  logo: "url/dizingofLogo",
  minAge: "20",
  address: "Tel Aviv, Dizingof 1",
  date: Time.new(2013, 5, 18),
  weight: "5",
  phoneNumber: "036543211",
  music: [
    "main stream",
    "pop",
    "house"
  ]
})
