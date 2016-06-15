require 'spec_helper'
require 'rack/test'

describe ClientVersion do
  include Rack::Test::Methods

  def app
    Rack::Builder.new do |app|
      app.use Rack::Lint
      app.use ClientVersion
      run proc { [200, {}, []] }
    end
  end

  describe 'requests' do
    context 'when a version is set' do
      before do
        ENV['CLIENT_VERSION'] = '1.0'
      end

      it 'mirrors the version in the Client-Version header' do
        get '/'

        expect(last_response.status).to eq(200)
        expect(last_response.headers['Client-Version']).to eq('1.0')
      end
    end

    context 'when a version is not set' do
      before do
        ENV.delete 'CLIENT_VERSION'
      end

      it 'mirrors the version in the Client-Version header' do
        get '/'

        expect(last_response.status).to eq(200)
        expect(last_response.headers).not_to have_key('Client-Version')
      end
    end
  end
end
