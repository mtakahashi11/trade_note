class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @trade = Trade.find(params[:id])
  end
end
