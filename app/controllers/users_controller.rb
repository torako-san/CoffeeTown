class UsersController < ApplicationController
  def show
    @shops = Shop.where(user_id: current_user.id).includes(:user).order("created_at DESC")
  end
end
