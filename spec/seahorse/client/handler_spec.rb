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
    describe Handler do

      let(:context) { RequestContext.new }
      let(:response) { Response.new }

      it 'provides access to the nested handler' do
        handler = Handler.new
        expect(Handler.new(handler).handler).to be(handler)
      end

      it 'responds to #call' do
        expect(Handler.new).to respond_to(:call)
      end

      it 'chains #call to the nested handler' do
        handler = double('handler')
        expect(handler).to receive(:call).with(context) { response }
        Handler.new(handler).call(context)
      end

      it 'returns the response from the nested handler' do
        handler = double('handler')
        expect(handler).to receive(:call).with(context) { response }
        expect(Handler.new(handler).call(context)).to be(response)
      end

      describe '#inspect' do

        it 'overrides class name for anonymous handler' do
          handler = Class.new(Handler).new
          expect(handler.inspect).to eql '#<UnnamedHandler @handler=nil>'
        end
      end
    end
  end
end
