class ProductionsController < ApplicationController
  def index
    @production = Production.all
  end
end
