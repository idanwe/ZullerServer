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
  field :area_preferences, type: Array
  field :drinking_preferences, type: Array
  field :musical_preferences, type: Array
  enumerize :musical_preferences, in: Music.for_select, multiple: true

  field :past_attractions, type: Hash

  # field :location, type: GeoLocation
  # credites - embed many <Credit>
end