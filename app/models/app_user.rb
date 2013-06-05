require 'music_enums'

class AppUser
  include Mongoid::Document
  include Mongoid::Timestamps
  extend Enumerize

  field :deviseIdentifier, type: String
  field :fbToken, type: String
  field :fbName, type: String
  field :age, type: Integer
  
  field :musicalPreferences, type: Array
  enumerize :musicalPreferences, in: Music.for_select, multiple: true

  field :pastAttractions, type: Hash

  # field :location, type: GeoLocation
  # credites - embed many <Credit>
end