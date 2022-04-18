class ProductionsController < ApplicationController
  before_action :set_production, only: [:edit, :show, :update]

  def edit
  end

  def update
    if @production.update(production_data_params)
      redirect_to shop_production_path
    else
      render :edit
    end
  end

  def show
  end

  private
  def set_production
    @production = Production.find(params[:shop_id])
  end

end