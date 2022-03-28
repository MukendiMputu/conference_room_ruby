require "test_helper"

class EventTest < ActiveSupport::TestCase
  test "events count" do
    assert_equal 2, Event.count
  end
end
