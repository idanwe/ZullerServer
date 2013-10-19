class Party < Event
  belongs_to :host, class_name: 'Place', inverse_of: :parties

  validates_presence_of :host

  def address
    self.host.address
  end

  def as_json(options={})
    json = super options
    json["address"] = self.host.address
  end
end