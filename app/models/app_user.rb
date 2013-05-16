class AppUser
  include Mongoid::Document
  field :deviseIdentifier, type: String
  field :fbToken, type: String
  field :fbName, type: String
  field :age, type: Integer
  field :pastAttractions, type: Hash
  field :musicPreferences, type: Array

  # field :location, type: GeoLocation
  # credites - embed many <Credit>
end