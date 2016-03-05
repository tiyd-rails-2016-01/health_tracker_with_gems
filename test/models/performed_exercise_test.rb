require 'test_helper'

class PerformedExerciseTest < ActiveSupport::TestCase
  test "test weekly activity" do
    assert PerformedExercise.weekly_activity.length > 1
  end
end
