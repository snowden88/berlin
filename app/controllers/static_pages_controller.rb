class StaticPagesController < ApplicationController
  def index
  end
  def landing_page
    @featured_product = Product.limit(3)
  end
end
