class StoreController < ApplicationController
  include CurrentCart
    before_action :set_view_count, only: [:index]
  def index
    @products = Product.order(:title)
    @index_view_count = session[:index_view_count]
  end
end
