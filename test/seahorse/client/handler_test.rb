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
    describe Handler do

      it 'can be constructed with another handler' do
        Handler.new(Handler.new)
      end

      it 'responds to #call' do
        Handler.new.must_respond_to(:call)
      end

      it 'chains #call to the nested handler' do
        handler = Minitest::Mock.new
        handler.expect(:call, 'response', ['request'])
        Handler.new(handler).call('request')
        assert handler.verify
      end

      it 'returns the response from the nested handler' do
        handler = Minitest::Mock.new
        handler.expect(:call, 'special-response', ['request'])
        Handler.new(handler).call('request').must_equal('special-response')
      end

    end
  end
end
