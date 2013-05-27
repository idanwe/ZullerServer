class Event < Attraction
  field :duration, type: Time #DateRange
  # hosts - belong to <Place>
end