class UserIncrementsController < ApplicationController
  def increment
    current_user.user_increment.increment
    render json: { current: current_user.user_increment.current }
  end
end
