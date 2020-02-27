require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(username: "testme", password: "test1234")
  end
  
  test "username should be present" do
    @user.username = ""
    assert_not @user.valid?
  end
  
  test "username should not be too short" do
    @user.username = "a"
    assert_not @user.valid?
  end
  
  test "username should not be too long" do
    @user.username = "a" * 16
    assert_not @user.valid?
  end
  
  test "username should be unique and not case sensitive" do
    @user.save
    @user2 = User.new(username: "TestMe", password: "test1234")
    assert_not @user2.valid?
  end
end
