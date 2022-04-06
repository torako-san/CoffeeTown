class ShopsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def new
    @shop = Shop.new
  end
end