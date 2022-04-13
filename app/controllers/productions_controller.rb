class ProductionsController < ApplicationController
  def index
    @production = Production.all
  end

  def show
  end
end