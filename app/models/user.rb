class User < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 15 }
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: %r{^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$},
                    message: "You must enter a valid email address.", :multiline => true }
end
