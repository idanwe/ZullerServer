class Place < Attraction
  field :opening_hours, type: Time #DateRange
  field :menu, type: String
  field :alcohol_prices, type: Hash

  has_many :parties, class_name: 'Party', inverse_of: :host
  has_many :lines, class_name: 'Line', inverse_of: :host
end