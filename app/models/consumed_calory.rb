class ConsumedCalory < ActiveRecord::Base
  validates :total, presence: true
  validates :consumed_on, presence: true

  def self.get_net_calories(date)
    total_calories = ConsumedCalory.where(consumed_on: date).sum(:total)
    total_calories_burned = PerformedExercise.where(done_on: date).sum(:calories_burned)
    total_calories - total_calories_burned
  end

end
