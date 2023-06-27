class AddForeignKeysToStockAndMarketPrice < ActiveRecord::Migration[7.0]
    def change
      add_reference :stocks, :bearer, foreign_key: true
      add_reference :stocks, :market_price, foreign_key: true
    end
end
