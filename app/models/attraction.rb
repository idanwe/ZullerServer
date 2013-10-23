require 'music_enums'

class Attraction
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::FullTextSearch
  extend Enumerize

  field :name, type: String
  field :phone_number, type: String
  field :contact_name, type: String
  field :contact_phone_number, type: String
  field :min_age, type: Integer
  field :logo_url, type: String
  field :photos_url, type: Array
  field :facebook_url, type: String

  field :musics, type: Array
  enumerize :musics, in: Music.for_select, multiple: true

  field :weight, type: Integer

  # deals - embed array <Deal>
  # available_credits - embed array <Credit>
  # owner - embed <User>

  validates_presence_of :name

  fulltext_search_in :name, filters: { at_the_future: lambda { |x| x.date.to_time > Time.now } }
end