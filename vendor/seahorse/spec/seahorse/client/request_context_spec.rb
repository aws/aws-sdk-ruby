require 'spec_helper'

module Seahorse
  module Client
    describe RequestContext do

      describe '#operation_name' do

        it 'defaults to nil' do
          expect(RequestContext.new.operation_name).to be(nil)
        end

        it 'can be set in the constructor' do
          context = RequestContext.new(operation_name: 'operation_name')
          expect(context.operation_name).to eq('operation_name')
        end

      end

      describe '#params' do

        it 'defaults to a empty hash' do
          expect(RequestContext.new.params).to eq({})
        end

        it 'can be set in the constructor' do
          params = Object.new
          expect(RequestContext.new(params: params).params).to be(params)
        end

      end

      describe '#config' do

        it 'defaults to nil' do
          expect(RequestContext.new.config).to be(nil)
        end

        it 'can be set in the constructor' do
          config = Object.new
          expect(RequestContext.new(config: config).config).to be(config)
        end

      end

      describe '#retry_count' do

        it 'defaults to 0' do
          expect(RequestContext.new.retry_count).to eq(0)
        end

        it 'can be incremented' do
          context = RequestContext.new
          context.increment_retry_count!
          context.increment_retry_count!
          expect(context.retry_count).to eq(2)
        end

      end

      describe '#http_request' do

        it 'defaults to a Http::Request object' do
          expect(RequestContext.new.http_request).to be_kind_of(Http::Request)
        end

        it 'can be set in the constructor' do
          http_req = Object.new
          context = RequestContext.new(http_request: http_req)
          expect(context.http_request).to be(http_req)
        end

      end

      describe '#http_response' do

        it 'defaults to a Http::Response object' do
          expect(RequestContext.new.http_response).to be_kind_of(Http::Response)
        end

        it 'can be set in the constructor' do
          http_resp = Object.new
          context = RequestContext.new(http_response: http_resp)
          expect(context.http_response).to be(http_resp)
        end

      end

      describe 'metadata' do

        it 'returns nil for non-set keys' do
          context = RequestContext.new
          expect(context[:color]).to eq(nil)
        end

        it 'can be set via #[]=' do
          context = RequestContext.new
          context[:color] = 'red'
          expect(context[:color]).to eq('red')
        end

      end
    end
  end
end
