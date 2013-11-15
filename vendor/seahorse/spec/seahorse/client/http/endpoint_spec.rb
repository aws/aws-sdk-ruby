require 'spec_helper'

module Seahorse
  module Client
    module Http
      describe Endpoint do
        describe 'constructor' do

          it 'can be constructed from a string' do
            expect(Endpoint.new('abc.com')).to be_kind_of(Endpoint)
          end

          it 'can be constructed from a URI::HTTP' do
            uri = 'http://foo.com/'
            expect(Endpoint.new(URI.parse(uri))).to eq(uri)
          end

          it 'can be constructed from a URI::HTTPS' do
            uri = 'https://foo.com/'
            expect(Endpoint.new(URI.parse(uri))).to eq(uri)
          end

          it 'can be constructed from an Endpoint' do
            endpoint1 = Endpoint.new('abc.com')
            endpoint2 = Endpoint.new(endpoint1) # copy constructor
            expect(endpoint1).to eq(endpoint2)
          end

          it 'raises an error if you pass non valid enpoint' do
            expect do
              Endpoint.new(Class.new)
            end.to raise_error(URI::InvalidURIError)
          end

        end

        describe '#scheme' do

          it 'can be specified in the constructor' do
            expect(Endpoint.new('http://foo.com').scheme).to eq('http')
            expect(Endpoint.new('https://foo.com').scheme).to eq('https')
          end

          it 'defaults to https when not passed to constructor' do
            expect(Endpoint.new('foo.com').scheme).to eq('https')
          end

          it 'can be changed' do
            endpoint = Endpoint.new('http://foo.com/')
            endpoint.scheme = 'https'
            expect(endpoint.port).to eq(80)
            expect(endpoint.scheme).to eq('https')
            expect(endpoint).to eq('https://foo.com:80/')
          end

        end

        describe '#http?' do

          it 'returns true if the scheme is http' do
            expect(Endpoint.new('http://foo.com').http?).to eq(true)
          end

          it 'returns false if the scheme is not http' do
            expect(Endpoint.new('https://foo.com').http?).to eq(false)
          end

        end

        describe '#https?' do

          it 'returns true if the scheme is https' do
            expect(Endpoint.new('https://foo.com').https?).to eq(true)
          end

          it 'returns false if the scheme is not https' do
            expect(Endpoint.new('http://foo.com').https?).to eq(false)
          end

        end

        describe '#host' do

          it 'is passed into the constructor' do
            expect(Endpoint.new('foo.com').host).to eq('foo.com')
            expect(Endpoint.new('abc.mno.xyz').host).to eq('abc.mno.xyz')
          end

          it 'can be changed' do
            endpoint = Endpoint.new('http://foo.com/')
            endpoint.host = 'bar.com'
            expect(endpoint.host).to eq('bar.com')
            expect(endpoint).to eq('http://bar.com/')
          end

        end

        describe '#port' do

          it 'defaults to 80 for http endpoints' do
            expect(Endpoint.new('http://foo.com').port).to eq(80)
          end

          it 'defaults to 443 for https endpoints' do
            expect(Endpoint.new('https://foo.com').port).to eq(443)
          end

          it 'can be specified in the constructor' do
            expect(Endpoint.new('http://foo.com:123').port).to eq(123)
            expect(Endpoint.new('foo.com:321').port).to eq(321)
          end

          it 'can be changed' do
            endpoint = Endpoint.new('http://foo.com/')
            endpoint.port = 443
            expect(endpoint.scheme).to eq('http')
            expect(endpoint.port).to eq(443)
            expect(endpoint).to eq('http://foo.com:443/')
          end

        end

        describe '#request_uri' do

          it 'defaults to /' do
            expect(Endpoint.new('foo.com').request_uri).to eq('/')
          end

          it 'can be set in the constructor' do
            expect(Endpoint.new('foo.com/bar?a=b').request_uri).to eq('/bar?a=b')
          end

        end

        describe '#path' do

          it 'defaults to /' do
            expect(Endpoint.new('foo.com').path).to eq('/')
          end

          it 'can be set in the constructor' do
            expect(Endpoint.new('foo.com/bar?a=b').path).to eq('/bar')
          end

        end

        describe '#querystring' do

          it 'defaults to nil' do
            expect(Endpoint.new('foo.com').querystring).to be(nil)
          end

          it 'can be set in the constructor' do
            expect(Endpoint.new('foo.com/bar?a=b').querystring).to eq('a=b')
          end

        end

        describe '#user' do

          it 'defaults to nil' do
            expect(Endpoint.new('foo.com').user).to be(nil)
          end

          it 'is parsed from the endpoint string' do
            expect(Endpoint.new('http://user@foo.com').user).to eq('user')
          end

          it 'can be set' do
            endpoint = Endpoint.new('foo.com')
            endpoint.user = 'abc'
            expect(endpoint.user).to eq('abc')
            expect(endpoint).to eq('https://abc@foo.com/')
          end

        end

        describe '#password' do

          it 'defaults to nil' do
            expect(Endpoint.new('foo.com').password).to be(nil)
          end

          it 'is parsed from the endpoint string' do
            expect(Endpoint.new('http://u:p@foo.com').password).to eq('p')
          end

          it 'can be set' do
            endpoint = Endpoint.new('foo.com')
            endpoint.user = 'u'
            endpoint.password = 'p'
            expect(endpoint.password).to eq('p')
            expect(endpoint).to eq('https://u:p@foo.com/')
          end

        end
      end
    end
  end
end
