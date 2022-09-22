class BlingReportsController < ApplicationController

  def index
    @products = BlingService.get_products
  end

  def stock_error
    @products = BlingService.get_stock_error
  end

  def all_stock
    @products = BlingService.get_all_stock
  end
end
