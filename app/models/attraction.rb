require 'music_enums'

class Attraction
  include Mongoid::Document
  include Mongoid::Timestamps
  extend Enumerize

  field :name, type: String
  field :phone_number, type: String
  field :contact_phone, type: String
  field :min_age, type: Integer
  field :logo_url, type: String

  field :musics, type: Array
  enumerize :musics, in: Music.for_select, multiple: true

  field :weight, type: Integer

  # deals - embed array <Deal>
  # available_credits - embed array <Credit>
  # owner - embed <User>

  validates_presence_of :name
end