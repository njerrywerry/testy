require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user1 = users(:user1)
    @user2 = users(:user2)
  end

  test "saves with valid attributes" do
    user = User.new(
    name: "name",
    age: "age",
    email: "name@example.com"
    )
    assert !user.save
  end

  test "validates attributes presence" do
    @user1.name = nil
    @user1.age = nil
    @user1.email = nil

    assert_not @user1.valid?
  end

  test "validates email uniqueness" do
    @user1.email = @user2.email

    assert_not @user1.valid?
  end

  test "email validity" do
    @user1.email = "sly@njeri.com"

    assert_match %r{^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$}, "sly@njeri.com"
  end

end
