require 'spec_helper'
require 'pp'

module Seahorse
  module Client
    describe Response do

      describe '#inspect' do

        it 'returns the inspect string for the data' do
          resp = Response.new
          resp.data = double('data')
          expect(resp.inspect).to eq(resp.data.pretty_inspect)
        end

        it 'returns the default inspect if data is not set' do
          expect(Response.new.inspect).to include('#<Seahorse::Client::Response:')
        end

      end

      describe '#data' do

        it 'can be set' do
          data = double('data')
          resp = Response.new
          resp.data = data
          expect(resp.data).to be(data)
        end

        it 'can be accessed via method_missing on the response' do
          data = double('data', foo: 'bar')
          resp = Response.new
          resp.data = data
          expect(resp.foo).to be(data.foo)
        end

        it 'correctly answers respond_to?' do
          data = double('data', foo: 'bar')
          resp = Response.new
          resp.data = data
          expect(resp.respond_to?(:foo)).to be(true)
        end

      end

      describe '#context' do

        it 'defaults to a new context' do
          expect(Response.new.context).to be_kind_of(RequestContext)
        end

        it 'can be set in the constructor' do
          context = RequestContext.new
          expect(Response.new(context: context).context).to be(context)
        end

      end

      describe '#http_request' do

        it 'returns the context #http_request' do
          http_request = Http::Request.new
          context = RequestContext.new(http_request: http_request)
          resp = Response.new(context: context)
          expect(resp.http_request).to be(http_request)
        end

      end

      describe '#http_response' do

        it 'returns the context #http_response' do
          http_response = Http::Response.new
          context = RequestContext.new(http_response: http_response)
          resp = Response.new(context: context)
          expect(resp.http_response).to be(http_response)
        end

      end

      describe 'callbacks' do

        let(:http_resp) { Http::Response.new }

        let(:response) {
          Response.new(context: RequestContext.new(http_response: http_resp))
        }

        describe '#on_complete' do

          it 'triggers the callback when a response is received' do
            http_resp.status_code = 200
            expect { |b| response.on_complete(&b) }.to yield_control
          end

          it 'does not trigger when when a response is not received' do
            http_resp.status_code = 0
            expect { |b| response.on_complete(&b) }.not_to yield_control
          end

        end

        describe '#on_success' do

          it 'triggers the callback when response has a ~ 200 status code' do
            http_resp.status_code = 0
            expect { |b| response.on_success(&b) }.not_to yield_control
            http_resp.status_code = 200
            expect { |b| response.on_success(&b) }.to yield_control
            http_resp.status_code = 299
            expect { |b| response.on_success(&b) }.to yield_control
            http_resp.status_code = 300
            expect { |b| response.on_success(&b) }.not_to yield_control
          end

        end

        describe '#on_redirect' do

          it 'triggers the callback when response has a ~ 300 status code' do
            http_resp.status_code = 200
            expect { |b| response.on_redirect(&b) }.not_to yield_control
            http_resp.status_code = 304
            expect { |b| response.on_redirect(&b) }.to yield_control
            http_resp.status_code = 307
            expect { |b| response.on_redirect(&b) }.to yield_control
            http_resp.status_code = 400
            expect { |b| response.on_redirect(&b) }.not_to yield_control
          end

        end

        describe '#on_error' do

          it 'triggers the callback when response has a ~ 400-500 code' do
            http_resp.status_code = 0
            expect { |b| response.on_error(&b) }.not_to yield_control
            http_resp.status_code = 200
            expect { |b| response.on_error(&b) }.not_to yield_control
            http_resp.status_code = 300
            expect { |b| response.on_error(&b) }.not_to yield_control
            http_resp.status_code = 400
            expect { |b| response.on_error(&b) }.to yield_control
            http_resp.status_code = 500
            expect { |b| response.on_error(&b) }.to yield_control
          end

        end

        describe '#on_failure' do

          it 'triggers the callback when a response is not received' do
            http_resp.status_code = 0
            expect { |b| response.on_failure(&b) }.to yield_control
            http_resp.status_code = 200
            expect { |b| response.on_failure(&b) }.not_to yield_control
            http_resp.status_code = 300
            expect { |b| response.on_failure(&b) }.not_to yield_control
            http_resp.status_code = 400
            expect { |b| response.on_failure(&b) }.not_to yield_control
            http_resp.status_code = 500
            expect { |b| response.on_failure(&b) }.not_to yield_control
          end

        end

      end
    end
  end
end
