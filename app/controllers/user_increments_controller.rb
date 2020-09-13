class UserIncrementsController < ApplicationController
  def current
    render json: increment_response
  end

  def increment
    current_user.user_increment.increment
    render json: increment_response
  end

  def reset
    current_user.user_increment.update(current: params['current'])
    render json: increment_response
  end

  private

    def increment_response
      { data: { current: current_user.user_increment.current } }
    end
end
