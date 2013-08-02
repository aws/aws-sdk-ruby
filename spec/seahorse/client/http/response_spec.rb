# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'spec_helper'

module Seahorse
  module Client
    module Http
      describe Response do

        describe '#status_code' do

          it 'defaults to nil' do
            expect(Response.new.status_code).to eq(nil)
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

      end
    end
  end
end
