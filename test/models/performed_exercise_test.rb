require 'test_helper'

class PerformedExerciseTest < ActiveSupport::TestCase
  test "test past_3_days" do
    assert PerformedExercise.past_3_days.length >= 1
  end
end
