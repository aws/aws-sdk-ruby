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
    describe Request do

      describe '#context' do

        it 'returns the request context given the constructor' do
          context = Object.new
          Request.new('handler', context).context.must_be_same_as(context)
        end

      end

      describe '#send' do

        it 'passes the request context to the handler' do
          handler = Minitest::Mock.new
          handler.expect(:call, nil, ['context'])
          Request.new(handler, 'context').send
          assert handler.verify
        end

        it 'returns the response from the handler stack' do
          response = Object.new
          handler = Minitest::Mock.new
          handler.expect(:call, response, ['context'])
          Request.new(handler, 'context').send.must_be_same_as(response)
        end

      end
    end
  end
end
