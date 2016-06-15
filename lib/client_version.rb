# Rack middleware that adds adds a `Client-Version` header to every response
# with the value of the `CLIENT_VERSION` environment variable.
class ClientVersion
  def self.call(env)
    new.call(env)
  end

  def initialize
    @response = Rack::Response.new
  end

  def call(*)
    set_header if configured?

    @response.finish
  end

  private

  def set_header
    @response.set_header('Client-Version', client_version)
  end

  def configured?
    ENV.key? 'CLIENT_VERSION'
  end

  def client_version
    ENV['CLIENT_VERSION']
  end
end

require 'client_version/railtie' if defined?(Rails)
