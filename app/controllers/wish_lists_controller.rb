class WishListsController < ApplicationController
  before_action :product_params only: [:create, :destroy]

  def create
    WishList.create(user_id: current_user.id, production_id: params[:id])
  end

  def destroy
    WishList.find_by(user_id: current_user.id, production_id: params[:id]).destroy
  end

  private

  def product_params
    @production = Production.find(params[:id])
  end
end