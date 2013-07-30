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

      def context
        @context ||= RequestContext.new
      end

      def response
        @response ||= Response.new
      end

      it 'provides access to the configuration' do
        config = Object.new
        Handler.new(config).config.should be(config)
      end

      it 'provides access to the nested handler' do
        handler = Handler.new('config')
        Handler.new('config', handler).handler.should be(handler)
      end

      it 'responds to #call' do
        Handler.new('config').should respond_to(:call)
      end

      it 'chains #call to the nested handler' do
        handler = double('handler')
        expect(handler).to receive(:call).with(context) { response }
        Handler.new('config', handler).call(context)
      end

      it 'returns the response from the nested handler' do
        handler = double('handler')
        expect(handler).to receive(:call).with(context) { response }
        Handler.new('config', handler).call(context).should be(response)
      end

    end
  end
end
