class Place < Attraction
  field :opening_hours, type: Time #DateRange
  field :menu, type: String
  field :alcohol_prices, type: Hash

  # has_many :parties
  # has_many :lines
end