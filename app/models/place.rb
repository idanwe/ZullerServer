class Place < Attraction
  field :opening_hours, type: Time #DateRange
  field :menu, type: String
  field :alcohol_prices, type: Hash

  # has_many :events
  # child_events - embed <Event>
end