class User < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 15 }
end
