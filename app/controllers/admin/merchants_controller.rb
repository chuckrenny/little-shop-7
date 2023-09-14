class Admin::MerchantsController < ApplicationController
  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def edit
    @merchant = Merchant.find(params[:id])
  end

  def update
    merchant = Merchant.find(params[:id])
    if merchant.update(merchant_params)
      redirect_to "/admin/merchants/#{params[:id]}"
      flash[:notice] = "Merchant name has been updated"
    else
      redirect_to "/admin/merchants/#{params[:id]}/edit"
      flash[:alert] = "Error: #{error_message(merchant.errors)}"
    end
  end

  private

  def merchant_params
    params.permit(:name)
  end
end