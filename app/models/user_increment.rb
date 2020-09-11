class UserIncrement < ApplicationRecord
  belongs_to :user, required: true

  validates_presence_of :user
  validates_numericality_of :current, greater_than: 0, only_integer: true
end
