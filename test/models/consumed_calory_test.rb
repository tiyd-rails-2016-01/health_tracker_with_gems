require 'test_helper'

class ConsumedCaloryTest < ActiveSupport::TestCase
  test "calculate net calories" do
    assert_equal ConsumedCalory.get_net_calories("2016-03-04"), 2600
  end
end
