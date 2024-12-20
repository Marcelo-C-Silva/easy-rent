class CustomersController < ApplicationController
  before_action :load_customer, only: [:show, :edit, :update, :destroy]
  def index
    @customers = Customer.order(:name)   
  end

  def show

  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new customer_params
  end

  def edit
  
  end

  def update

  end

  def destroy

  end

  private

  def load_customer
    @customers = Customer.find params[:id]
  end
end
