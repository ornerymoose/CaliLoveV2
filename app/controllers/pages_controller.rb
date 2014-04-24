class PagesController < ApplicationController
  def about
  	@cart = current_cart
  end

  def contact
  	@cart = current_cart
  end

  def customer_service
  	@cart = current_cart
  end

  def subscribe
  	@cart = current_cart
  end
end
