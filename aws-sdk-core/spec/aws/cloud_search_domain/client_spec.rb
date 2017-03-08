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

      it 'signs requests when credentials given' do
        creds = Credentials.new('akid', 'secret')
        endpoint = 'https://domain.us-west-1.amazonaws.com'
        csd = Client.new(endpoint: endpoint, credentials: creds)
        csd.handle(NoSendHandler, step: :send)
        resp = csd.search(query: 'query')
        auth = resp.context.http_request.headers['Authorization']
        expect(auth).to match(/^AWS4-HMAC-SHA256/)
        expect(auth).to match('us-west-1')
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

      it 'use `POST` for #search operation' do
        creds = Credentials.new('akid', 'secret')
        endpoint = 'https://domain.us-west-1.amazonaws.com'
        csd = Client.new(endpoint: endpoint, credentials: creds)
        csd.handle(NoSendHandler, step: :send)
        resp = csd.search(query: 'query')
        expect(resp.context.http_request.http_method).to eql('POST')
        expect(resp.context.http_request.endpoint.query).to be_nil
        expect(resp.context.http_request.body_contents).to eql('format=sdk&pretty=true&q=query')
        expect(resp.context.http_request.headers['Content-Type']).to eql('application/x-www-form-urlencoded')
        expect(resp.context.http_request.headers['Content-Length']).to eql('30')
      end

    end
  end
end
