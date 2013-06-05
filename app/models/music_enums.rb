class Music
  def self.add_item(key,value)
    @hash ||= {}
    @hash[key]=value
  end

  def self.const_missing(key)
    @hash[key]
  end

  def self.each
    @hash.each {|key,value| yield(key,value)}
  end

  def self.for_select
    music_for_select = []
    @hash.each do |key,value|
      music_for_select << [key, value]
    end
    music_for_select
  end

  self.add_item :POP, 0
  self.add_item :ELECTRONIC, 1
  self.add_item :ROCK, 2
  self.add_item :ALTERNATIVE, 3
  self.add_item :ISRAELI, 4
  self.add_item :ISRAELI_ROCK, 5
  self.add_item :TRADITIONAL, 6
  self.add_item :DUBSTEP, 7
  self.add_item :TRANCE, 8
  self.add_item :DANCE, 9
  self.add_item :RAGGAE, 10
  self.add_item :METAL, 11
  self.add_item :HIPHOP, 12
end

# module MusicEnums
#   extend Enumerize

#   enumerize :musics, in: Music.for_select, multiple: true
# end


# MUSICS = {
  #   pop: 0,
  #   electronic: 1,
  #   rock: 2,
  #   alternative: 3,
  #   israeli: 4,
  #   israeli_rock: 5,
  #   traditional: 6,
  #   dubstep: 7,
  #   trance: 8,
  #   dance: 9,
  #   raggae: 10,
  #   metal: 11,
  #   hiphop: 12
# }
