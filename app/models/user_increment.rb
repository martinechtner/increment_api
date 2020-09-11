class UserIncrement < ApplicationRecord
  belongs_to :user, required: true

  validates_presence_of :user
  validates_numericality_of :current, greater_than: 0, only_integer: true

  def increment
    self.update(current: current + 1)
  end
end
