require 'spec_helper'

module Aws
  module CloudSearchDomain
    describe Client do

      it 'supports unsigned requests' do
        csd = Client.new(endpoint: 'http://foo.com')
        csd.handle(NoSendHandler, step: :send)
        resp = csd.search(query: 'query')
        expect(resp.context.http_request.headers['Authorization']).to be(nil)
      end

      it 'skips signing when given credentials are empty' do
        creds = Credentials.new(nil, nil)
        csd = Client.new(endpoint: 'http://foo.com', credentials: creds)
        csd.handle(NoSendHandler, step: :send)
        resp = csd.search(query: 'query')
        expect(resp.context.http_request.headers['Authorization']).to be(nil)
      end

      it 'signs reqeusts when credentials given' do
        creds = Credentials.new('akid', 'secret')
        endpoint = 'https://domain.region-name.amazonaws.com'
        csd = Client.new(endpoint: endpoint, credentials: creds)
        csd.handle(NoSendHandler, step: :send)
        resp = csd.search(query: 'query')
        auth = resp.context.http_request.headers['Authorization']
        expect(auth).to match(/^AWS4-HMAC-SHA256/)
        expect(auth).to match('region-name')
      end

      it 'ignores the globally configured region' do
        allow(Aws).to receive(:config).and_return(region:'us-west-2')
        expect {
          Client.new(endpoint:'http://foo.com')
        }.not_to raise_error
      end

      it 'can process empty response body errors' do
        csd = Client.new(endpoint: 'http://foo.com')
        csd.handle(step: :send) do |context|
          context.http_response.signal_headers(413, {})
          context.http_response.signal_done
          Seahorse::Client::Response.new(context:context)
        end
        expect {
          csd.search(query:'test')
        }.to raise_error(Errors::RequestEntityTooLarge)
      end

    end
  end
end
