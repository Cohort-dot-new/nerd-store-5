class OrdersController < ApplicationController
  def create
    order = Order.new(user_id: current_user.id, quantity: params[:quantity])
    order.save
    flash[:success] = "Your order was created successfully!"
    redirect_to "/orders/:id"
  end

  def show
    render 'show.html.erb'
  end
end
