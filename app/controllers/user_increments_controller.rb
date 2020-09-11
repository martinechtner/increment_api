class UserIncrementsController < ApplicationController
  def current
    render json: { current: current_user.user_increment.current }
  end

  def increment
    current_user.user_increment.increment
    render json: { current: current_user.user_increment.current }
  end

  def reset
    current_user.user_increment.update(current: params['current'])
    render json: { current: current_user.user_increment.current }
  end
end