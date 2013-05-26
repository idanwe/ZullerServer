class Club < Place
  # has_many :parties
  embeds_many :parties

end
