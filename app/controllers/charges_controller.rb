class ChargesController < ApplicationController
  def new
    @product = Product.find(params[:id])
  end

  def create
    #amount in cents
    @product = Product.find(params[:id])

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @product.price * 100,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
    end
end
