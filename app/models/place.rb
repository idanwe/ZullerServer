class Place < Attraction
  field :address, type: String
  field :opening_hours, type: Time #DateRange
  field :menu, type: String
  field :alcohol_prices, type: Hash

  has_many :parties, class_name: 'Party', inverse_of: :host
  has_many :lines, class_name: 'Line', inverse_of: :host
  
  validates_presence_of :address
end