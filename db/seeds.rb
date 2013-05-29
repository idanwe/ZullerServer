# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Attraction.all.delete

Bar.create({
  name: "Grega",
  logo: "url/gregaLogo",
  min_age: 20,
  address: "Herzelia, Harash 1",
  opening_hours: Time.new(2013, 4, 14),
  phone_number: "034124141",
  menu: "menu example 1",
  alcohol_prices: {
    beer: 25
  },
  music: 0,
  weight: 1
})

Bar.create({
  name: "Margoza",
  logo: "url/margozaLogo",
  min_age: 20,
  address: "Tel Aviv, Oley Ziun 1",
  opening_hours: Time.new(2013, 5, 21),
  phone_number: "034124141",
  menu: "menu example 2",
  alcohol_prices: {
    beer: 25
  },
  music: 1,
  weight: 5
})

Bar.create({
  name: "Friends",
  logo: "url/friendsLogo",
  min_age: 18,
  address: "Tel Aviv, Dobnov 1",
  opening_hours: Time.new(2013, 5, 22),
  phone_number: "034124141",
  menu: "menu example 3",
  alcohol_prices: {
    beer: 25
  },
  music: 1,
  weight: 5
})

Club.create({
  name: "Clara",
  logo: "url/claraLogo",
  min_age: 22,
  address: "Tel Aviv, Kaufman 1",
  opening_hours: Time.new(2013, 5, 19),
  phone_number: "0525252433",
  menu: "menu example 4",
  alcohol_prices: {
    beer: 25
  },
  music: 0,
  weight: 5
})

Club.create({
  name: "Dizingof",
  logo: "url/dizingofLogo",
  min_age: 20,
  address: "Tel Aviv, Dizingof 1",
  opening_hours: Time.new(2013, 5, 18),
  phone_number: "036543211",
  menu: "menu example 5",
  alcohol_prices: {
    beer: 25
  },
  music: 2,
  weight: 5
})
