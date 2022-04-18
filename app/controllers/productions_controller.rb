class ProductionsController < ApplicationController
  before_action :set_production, only: [:edit, :show, :update]

  def edit
  end

  def update
  end

  def show
  end

  private
  def set_production
    @production = Production.find(params[:shop_id])
  end

end