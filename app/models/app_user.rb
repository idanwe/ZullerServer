class AppUser
  include Mongoid::Document
  field :deviseIdentifier, type: String
  field :fbToken, type: String
  field :fbName, type: String
  field :age, type: Integer
  field :musicPreferences, type: Array
  field :pastAttractions, type: Hash

  # field :location, type: GeoLocation
  # credites - embed many <Credit>
end