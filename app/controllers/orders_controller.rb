class OrdersController < ApplicationController
  def create
    flash[:success] = "Your order was created successfully!"
    redirect_to "/orders/:id"
  end

  def show
    render 'show.html.erb'
  end
end
