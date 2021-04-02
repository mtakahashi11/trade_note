class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @trades = Trade.includes(:user).order('created_at DESC')
  end
end
