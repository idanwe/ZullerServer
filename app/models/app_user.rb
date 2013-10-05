require 'music_enums'

class AppUser
  include Mongoid::Document
  include Mongoid::Timestamps
  extend Enumerize

  field :device_id, type: String

  field :fb_name, type: String
  field :fb_token, type: String
  field :fb_user_id, type: String

  field :age, type: Integer
  field :area, type: Array
  field :favorite_beverage, type: Array
  field :favorite_music, type: Array
  enumerize :favorite_music, in: Music.for_select, multiple: true

  field :past_attractions, type: Hash

  # field :location, type: GeoLocation
  # credites - embed many <Credit>
end