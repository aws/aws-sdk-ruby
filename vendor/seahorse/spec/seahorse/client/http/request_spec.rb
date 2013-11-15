require 'spec_helper'
require 'stringio'

module Seahorse
  module Client
    module Http
      describe Request do

        def request(*args) Request.new(*args) end

        describe '#endpoint' do

          it 'defaults to nil' do
            expect(request.endpoint).to eq(nil)
          end

          it 'can be set in the constructor' do
            endpoint = 'http://foo.com/'
            req = request(endpoint: endpoint)
            expect(req.endpoint).to eq(endpoint)
          end

        end

        describe '#http_method' do

          it 'defaults to GET' do
            expect(request.http_method).to eq('GET')
          end

          it 'can be set in the constructor' do
            req = request(http_method: 'POST')
            expect(req.http_method).to eq('POST')
          end

        end

        describe '#headers' do

          it 'defaults to a Http::Headers' do
            expect(request.headers).to be_kind_of(Headers)
          end

          it 'provides a default user agent' do
            expect(request.headers.to_h).to eq(
              'user-agent' => "Seahorse/#{Seahorse::VERSION}"
            )
          end

          it 'sets a default user agent' do
            ua = request.headers['User-Agent']
            expect(ua).to eq("Seahorse/#{Seahorse::VERSION}")
          end

          it 'does not set the user-agent when given in the constructor' do
            req = request(headers: { 'User-Agent' => 'ua' })
            expect(req.headers['User-Agent']).to eq('ua')
          end

          it 'casts incoming headers as a Http::Headers object' do
            req = request(headers: { 'User-Agent' => 'ua' })
            expect(req.headers).to be_kind_of(Http::Headers)
          end

        end

        describe '#body' do

          it 'defaults to an empty IO-like object' do
            expect(request.body.read).to eq('')
          end

          it 'can be set in the constructor' do
            body = StringIO.new('body')
            expect(request(body: body).body).to be(body)
          end

          it 'can be set as a string in the constructor' do
            req = request(body: 'body')
            expect(req.body).to be_a(PlainStringIO)
            expect(req.body.read).to eq('body')
          end

          it 'converts nil bodies into empty io objects' do
            req = request
            req.body = nil
            expect(req.body.read).to eq('')
          end

          it 'can be set as a string in accessor' do
            req = request
            req.body = 'body'
            expect(req.body).to be_a(PlainStringIO)
            expect(req.body.read).to eq('body')
          end

        end
      end
    end
  end
end
