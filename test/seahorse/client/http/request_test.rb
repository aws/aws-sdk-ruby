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
    module Http
      describe Request do

        describe '#endpoint' do

          it 'defaults to nil' do
            Request.new.endpoint.must_equal(nil)
          end

          it 'can be set' do
            endpoint = Endpoint.new('domain.com')
            req = Request.new
            req.endpoint = endpoint
            req.endpoint.must_be_same_as(endpoint)
          end

        end

        describe '#headers' do

          it 'defaults to an empty header hash' do
            Request.new.headers.must_be_kind_of(HeaderHash)
          end

        end

      end
    end
  end
end
