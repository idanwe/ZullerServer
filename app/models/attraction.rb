class Attraction
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :address, type: String
  field :phone_number, type: String
  field :contact_phone, type: String
  field :min_age, type: Integer
  field :logo, type: String
  field :music, type: Array

  field :weight, type: Integer

  # deals - embed array <Deal>
  # available_credits - embed array <Credit>
  # owner - embed <User>

  validates_presence_of :name, :address
end