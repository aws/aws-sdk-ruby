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

require 'test_helper'

module Seahorse
  class Client
    describe NetHttpHandler do

      def config
        @config ||= Configuration.new
      end

      def handler
        @handler ||= NetHttpHandler.new(config)
      end

      it 'is a Handler' do
        NetHttpHandler.new(config).must_be_kind_of(Handler)
      end

      describe '#call' do

        def context
          @context ||= RequestContext.new
        end

        it 'returns a response object' do
          handler.call(context).must_be_kind_of(Response)
        end

        it 'returns a response with the given context' do
          handler.call(context).context.must_be_same_as(context)
        end

        it 'emits :http_headers'

        it 'emits :http_data'

        it 'emits :http_done'

      end
    end
  end
end
