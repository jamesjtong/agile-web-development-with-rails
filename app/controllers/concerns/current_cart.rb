module CurrentCart
  extend ActiveSupport::Concern

  private

   def set_cart 
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end

    def set_view_count
      session[:index_view_count] ||= 0
      session[:index_view_count] += 1
    end

end