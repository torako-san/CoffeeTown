class ProductionsController < ApplicationController
  def show
    @production = Production.find(params[:shop_id])
  end
end