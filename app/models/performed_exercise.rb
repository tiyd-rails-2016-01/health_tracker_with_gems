class PerformedExercise < ActiveRecord::Base
  validates :exercise_type_id, presence: true
  validates :duration, presence: true
  validates :done_on, presence: true

  def self.past_3_days
     PerformedExercise.where(:done_on => (Time.now - 3.days)..Time.now).order(:done_on)
  end
end
