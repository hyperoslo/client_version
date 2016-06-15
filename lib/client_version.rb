require 'client_version/version'
require 'client_version/railtie' if defined?(Rails)

# Rack middleware that adds adds a `Client-Version` header to every response
# with the value of the `CLIENT_VERSION` environment variable.
class ClientVersion
  def initialize(app, client_version = ENV['CLIENT_VERSION'])
    @app = app
    @client_version = client_version
  end

  def call(env)
    @app.call(env).tap do |_, headers, _|
      headers['Client-Version'.freeze] = @client_version if @client_version
    end
  end
end
