class Line < Event
  belongs_to :host, class_name: 'Place', inverse_of: :lines, validate: true

  def address
    self.host.address
  end
end