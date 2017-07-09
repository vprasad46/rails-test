require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup 
  	@user  = User.new(name: "Vishwa Prasad", email: "vprasad46@gmail.com")
  end

  test "should be valid" do
  	assert @user.valid?
  end

  test "name should not be blank" do
  	@user.name = "      "
   assert_not @user.valid?
  end

  test "email should not be blank" do
    @user.email = "      "
   assert_not @user.valid?
  end
  
  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
end
