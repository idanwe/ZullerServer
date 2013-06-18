class Line < Event
  belongs_to :host, class_name: 'Place', inverse_of: :lines

  validates_presence_of :host

  def address
    self.host.address
  end

end