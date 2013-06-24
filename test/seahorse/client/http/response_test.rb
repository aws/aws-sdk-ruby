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
      describe Response do

        describe '#code' do

          it 'defaults to nil' do
            Response.new.code.must_equal(nil)
          end

          it 'can be set to a number' do
            resp = Response.new
            resp.code = 200
            resp.code.must_equal(200)
          end

          it 'can be set as a string' do
            resp = Response.new
            resp.code = '200'
            resp.code.must_equal(200)
          end

          it 'raises an ArgumentError if the code is not a valid number' do
            [-1,0,600].each do |code|
              assert_raises(ArgumentError) { Response.new.code = code }
            end
          end

        end

        describe '#headers' do

          it 'returns a header hash' do
            Response.new.headers.must_be_kind_of(HeaderHash)
          end

          it 'defaults to an empty hash' do
            Response.new.headers.to_h.must_equal({})
          end

        end

      end
    end
  end
end
