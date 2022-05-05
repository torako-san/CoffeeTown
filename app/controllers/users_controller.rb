class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @shop = @user.shops
  end
end