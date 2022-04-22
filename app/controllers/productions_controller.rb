class ProductionsController < ApplicationController
  before_action :set_production, only: [:edit, :show, :update]

  def edit
    unless @production.user_id == current_user.id 
      redirect_to root_path
    end
  end

  def update
    if @production.update(production_params)    
      redirect_to shop_production_path
    else
      render :edit
    end
  end

  def show
  end

  private
  def set_production
    @production = Production.find(params[:id])
  end

  def production_params
    params.require(:production).permit(:production_name,  :purchase_date, :coffee_beans_type,
       :farm_name, :product_report, :product_category_id, :coffee_blend_id, :degree_of_roasting_id, 
       :country_of_origin_id, :carefully_selected_method_id, :sweetness_id, :acidity_id, :bitter_taste_id, :flavor_id, images: []).merge(user_id: current_user.id)
  end

end