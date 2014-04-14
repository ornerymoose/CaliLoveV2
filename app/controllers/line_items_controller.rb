class LineItemsController < InheritedResources::Base
  def create
    @cart = current_cart
    product = Product.find(params[:product_id])
    #@line_item = @cart.add_product(product.id)
    size = params[:product][:size]
    color = params[:product][:color]
    @line_item = @cart.add_product(product.id, size, color)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to root_url,
          notice: 'You have added an item to your cart.' }
        format.js { @current_item = @line_item }
        format.json { render json: @line_item,
          status: :created, location: @line_item }
      else
        format.html { render action: "new" }
        format.json { render json: @line_item.errors,
          status: :unprocessable_entity }
      end
    end
  end
end
