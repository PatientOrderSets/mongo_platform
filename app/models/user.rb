class User
  include Mongoid::Document

  field :email,                 type: String
  field :first_name,            type: String
  field :last_name,             type: String
  field :password,              type: String
  field :location,              type: Array
  field :address,               type: String

  has_many :lunches

  validates_presence_of :email, :first_name, :last_name, :password, :address
  before_save :set_location

  def set_location
    self.location = Geocoder.search(self.address).first.coordinates if self.address_changed? || self.new_record?
  end
end


