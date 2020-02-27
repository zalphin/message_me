require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.create(username: "testme", password: "test1234")
    @message = Message.new(body: "This is a body of a message", user_id: @user)
  end
  
  test "Message must be present" do
    @message.body = " "
    assert_not @message.valid?
  end
end
