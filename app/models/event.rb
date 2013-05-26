class Event < Attraction
  field :duration, type: Time #DateRange

  # belongs_to :place
  # hosts - belong to <Place>
end