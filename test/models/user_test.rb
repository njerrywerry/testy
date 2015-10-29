require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "saves with valid attributes" do
    user = User.new(
    name: "name",
    age: "age",
    email: "name@example.com"
    )
    assert !user.save
  end
end
