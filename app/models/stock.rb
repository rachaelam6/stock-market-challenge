class Stock < ApplicationRecord
  belongs_to :bearer
  belongs_to :market_price
  validates :bearer_id, uniqueness: true
end
