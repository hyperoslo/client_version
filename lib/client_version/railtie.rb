class ClientVersion
  # Railtie to use the ClientVersion middleware.
  class Railtie < Rails::Railtie
    initializer 'client_version.use_middleware' do |app|
      app.middleware.insert 0, ClientVersion
    end
  end
end
