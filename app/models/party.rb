class Party < Event
  belongs_to :host, class_name: 'Place', inverse_of: :parties, validate: true

  def address
    self.host.address
  end
end 