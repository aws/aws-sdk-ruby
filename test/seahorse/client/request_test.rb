# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

      def client
        @client ||= Object.new
      end

      describe '#client' do

        it 'is set in the constructor' do
          Request.new(client, 'operation_name').client.must_be_same_as(client)
        end

      end

      describe '#operation_name' do

        it 'is set in the constructor' do
          req = Request.new(client, 'operation_name')
          req.operation_name.must_equal('operation_name')
        end

      end

      describe '#params' do

        it 'defaults to an empty hash' do
          Request.new(client, 'operation_name').params.must_equal({})
        end

        it 'can be set in the constructor' do
          params = {}
          req = Request.new(client, 'operation_name', params)
          req.params.must_be_same_as(params)
        end

      end

      describe '#send' do

        it 'returns a Response object' do
          Request.new(client, 'operation_name').send.must_be_kind_of(Response)
        end

      end

    end
  end
end
