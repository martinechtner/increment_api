class User < ApplicationRecord
  has_one :user_increment, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  after_create :create_user_increment

  private

    def create_user_increment
      UserIncrement.create(user: self, current: 1)
    end
end
