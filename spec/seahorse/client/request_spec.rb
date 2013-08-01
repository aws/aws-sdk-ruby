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
    describe Request do

      let(:handler) { -> (_) { } }
      let(:context) { RequestContext.new }
      let(:request) { Request.new(handler, context) }

      describe '#context' do

        it 'returns the request handler' do
          expect(request.handler).to be(handler)
        end

      end

      describe '#context' do

        it 'returns the request context given the constructor' do
          expect(request.context).to be(context)
        end

      end

      describe '#send' do

        it 'passes the request context to the handler' do
          handler = double('handler')
          expect(handler).to receive(:call).with(context) { Response.new }
          Request.new(handler, context).send
        end

        it 'returns the response from the handler stack' do
          resp = Response.new
          handler = lambda { |context| resp }
          expect(Request.new(handler, context).send).to be(resp)
        end

        describe 'with block argument' do

          let(:handler) do
            -> (context) do
              context.http_response.body.write('part1')
              context.http_response.body.write('part2')
              context.http_response.body.write('part3')
              Response.new(context: context)
            end
          end

          it 'streams data from the handler to the #send block' do
            data = []
            Request.new(handler, context).send { |chunk| data << chunk }
            expect(data).to eq(['part1', 'part2', 'part3'])
          end

          it 'does not buffer the response chunks' do
            response = Request.new(handler, context).send { |chunk| }
            expect(response.http_response.body.read).to eq(nil)
          end

        end
      end
    end
  end
end
