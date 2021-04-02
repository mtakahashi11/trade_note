class TradesController < ApplicationController
  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)
    if @trade.save
      redirect_to user_path(@trade.user)
    else
      render :new
    end
  end
  
  private
  def trade_params
    params.require(:trade).permit(:date, :time, :currency_id, :type_id, :entry, :exit, :holding_time_id, :pip, :fee, :profit_loss, :win_lose_id).merge(user_id: current_user.id)
  end
end