class LunchGoal
  include Mongoid::Document
  embedded_in :user

  field :start_date,        type: Date
  field :end_date,          type: Date
  field :goal_amount,       type: Float
  field :total_spent,       type: Float
end
