class Attraction
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :min_age, type: Integer
  field :logo, type: String
  field :phone_number, type: String
  field :music, type: Array
  field :weight, type: Integer

  field :date, type: Time
  # validates_presence_of :name, :min_age, :address, :date, :phone_number
end
