require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "create user successfully" do # same as def test_the_truth (without 'do')
    user = User.new
    assert_not user.save
  end
end