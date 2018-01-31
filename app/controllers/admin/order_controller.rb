class Admin::OrderController < ApplicationController
  def index
    @order = Inquiry.all
  end
  def show
    @order = Inquiry.find(params[:id])
  end
end
