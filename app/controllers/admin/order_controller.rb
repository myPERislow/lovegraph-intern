class Admin::OrderController < ApplicationController
  def index
    @order = Inquiry.all
  end
  def show
  end
  def create
  end
end
