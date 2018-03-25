# frozen_string_literal: true

require_relative '../../spec_helper'
require 'pp'

module Seahorse
  module Client
    describe Response do
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

      describe 'callbacks' do

        let(:http_resp) { Http::Response.new }

        let(:response) {
          Response.new(context: RequestContext.new(http_response: http_resp))
        }

        describe '#on' do

          it 'triggers the callback when status code matches' do
            http_resp.signal_done(
              status_code: 200,
              headers: {},
              body: '')
            expect { |b| response.on(200,&b) }.to yield_control
          end

          it 'triggers the callback when status code included' do
            http_resp.signal_done(
              status_code: 307,
              headers: {},
              body: '')
            expect { |b| response.on(300..599,&b) }.to yield_control
          end

          it 'does not trigger when when a response is not included' do
            http_resp.signal_done(
              status_code: 300,
              headers: {},
              body: '')
            expect { |b| response.on(200..299,&b) }.not_to yield_control
          end

          it 'returns self' do
            http_resp.signal_done(
              status_code: 300,
              headers: {},
              body: '')
            expect(response.on(300) { |r| }).to be(response)
          end

        end

      end
    end
  end
end
