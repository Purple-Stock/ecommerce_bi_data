class BlingReportsController < ApplicationController

  def index
    @products = BlingService.get_products
  end
end
