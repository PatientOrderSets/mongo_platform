class Restaurant
  include Mongoid::Document
  has_many :lunches

  field :name,          type: String
  field :address,       type: String
  field :location,      type: Array

  before_save :set_location

  def set_location
    self.location = Geocoder.search(self.address).first.coordinates if self.address_changed? || self.new_record?
  end
end
