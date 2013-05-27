class Party < Event
  belongs_to :host, class_name: 'Place', inverse_of: :parties# validate: ture
end 