# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module Client
    module Http
      describe Response do

        describe '#status_code' do

          it 'defaults to 0' do
            expect(Response.new.status_code).to eq(0)
          end

          it 'can be set' do
            resp = Response.new
            resp.status_code = 500
            expect(resp.status_code).to eq(500)
          end

        end

        describe '#headers' do

          it 'is a Http::Headers' do
            expect(Response.new.headers).to be_kind_of(Headers)
          end

          it 'defaults to a empty hash' do
            expect(Response.new.headers.to_h).to eq({})
          end

          it 'can be set' do
            headers = Headers.new
            response = Response.new
            response.headers = headers
            expect(response.headers).to be(headers)
          end

        end

        describe '#body' do

          it 'defaults to an IO object' do
            expect(Response.new.body).to respond_to(:write)
            expect(Response.new.body).to respond_to(:read)
            expect(Response.new.body).to respond_to(:rewind)
          end

          it 'defaults to an empty body' do
            body = Response.new.body
            body.rewind
            expect(body.read).to eq('')
          end

          it 'can be set' do
            body = Object.new
            response = Response.new
            response.body = body
            expect(response.body).to be(body)
          end

        end

        describe '#body_contents' do

          it 'returns the body as a string' do
            response = Response.new
            response.body = StringIO.new('abc')
            expect(response.body_contents).to eq(response.body.read)
          end

        end

      end
    end
  end
end
