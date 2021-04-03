class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @trades = Trade.includes(:user).order('created_at DESC')
  end

  def destroy
    trade = Trade.find(params[:id])
    trade.destroy
    redirect_to root_path
  end

end
