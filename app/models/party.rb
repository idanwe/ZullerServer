class Party < Event
  belongs_to :bar
  # embedded_in :bar, :inverse_of => :parties
  # belongs_to :place

end