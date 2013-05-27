class Line < Event
  belongs_to :host, class_name: 'Place', inverse_of: :lines
end
