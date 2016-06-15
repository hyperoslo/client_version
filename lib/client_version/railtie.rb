module ClientVersion
  # Railtie to use the ClientVersion middleware.
  class Railtie < Rails::Railtie
    initializer 'client_version.use_middleware' do
      app.middleware.use ClientVersion
    end
  end
end
