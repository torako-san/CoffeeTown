class ProductionsController < ApplicationController
  def edit
  end

  def show
    @production = Production.find(params[:shop_id])
  end
end