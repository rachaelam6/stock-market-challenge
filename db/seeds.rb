
# Create a Bearer
bearer = Bearer.create(name: "John Doe")

# Create a MarketPrice
market_price = MarketPrice.create(currency: "USD", value_cents: 100)

# Create a Stock associated with the Bearer and MarketPrice
Stock.create(name: "Gucci", bearer: bearer, market_price: market_price) # Replace "Apple" with the desired stock name
