class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
    before_action :set_cart
    before_action :set_view_count, only: [:index]
  def index
    @products = Product.order(:title)
    @index_view_count = session[:index_view_count]
  end
end
