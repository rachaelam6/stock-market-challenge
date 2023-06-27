class StocksController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    # @stocks = Stocks.all
  end

  def create
    stock = Stock.new(stock_params)

    if stock.save
      render json: stock, status: :created
    else
      render json: { errors: stock.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def stock_params
    params.require(:stock).permit(:name, :bearer_id, :market_price_id)
  end

end
