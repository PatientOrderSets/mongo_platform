class Lunch
  include Mongoid::Document
  belongs_to :user, :foreign_key => 'user_id'
  belongs_to :restaurant, :foreign_key => 'restaurant_id'

  field :user_id,         type: Moped::BSON::ObjectId
  field :restaurant_id,   type: Moped::BSON::ObjectId
  field :food_item,       type: String
  field :cost,            type: Float
  field :rating,          type: Integer
  field :lunch_date,      type: Date

end
