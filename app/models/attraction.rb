class Attraction
  include Mongoid::Document
  field :name, type: String
  field :logo, type: String
  field :min_age, type: Integer
  field :address, type: String
  field :date, type: Time
  field :weight, type: Integer
  field :phone_number, type: String
  field :music, type: Array

  # validates_presence_of :name, :min_age, :address, :date, :phone_number
end
