MUSICS = {
  pop: 0,
  electronic: 1,
  rock: 2,
  alternative: 3,
  israeli: 4,
  israeli_rock: 5,
  traditional: 6,
  dubstep: 7,
  trance: 8,
  dance: 9,
  raggae: 9,
  metal: 10,
  hiphop: 11
}

class Attraction
  include Mongoid::Document
  include Mongoid::Timestamps
  include SimpleEnum::Mongoid
  
  field :name, type: String
  field :phone_number, type: String
  field :contact_phone, type: String
  field :min_age, type: Integer
  field :logo, type: String
  # field :music, type: Array
  as_enum :music, MUSICS
  
  # [
  #  :pop, :electronic, :rock, :alternative,
  #  :israeli, :israeli_rock, :traditional,
  #  :dubstep, :trance, :dance, :raggae,
  #  :metal, :hiphop
  # ]

# 0.pop
# 1.electronic
# 2.rock
# 3.alternative
# 4.israeli
# 5.israeli Rock
# 6.traditional
# 7.dubstep
# 8.trance
# 9.dance
# 10.raggae
# 11.metal
# 12.hiphop

  field :weight, type: Integer

  # deals - embed array <Deal>
  # available_credits - embed array <Credit>
  # owner - embed <User>

  validates_presence_of :name
end