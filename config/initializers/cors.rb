Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # Update this with the actual origin URLs allowed to make requests
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
