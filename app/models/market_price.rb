class MarketPrice < ApplicationRecord
  has_many :stocks, dependent: :nullify
  validates :currency, uniqueness: { scope: :value_cents }
end
