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

          it 'is set in the constructor' do
            Response.new(200).code.must_equal(200)
          end

          it 'is required' do
            assert_raises(ArgumentError) { Response.new }
          end

          it 'can be set as a string' do
            resp = Response.new('200')
            resp.code.must_equal(200)
          end

          it 'raises an ArgumentError if the code is not a valid number' do
            [-1,0,600].each do |code|
              assert_raises(ArgumentError) { Response.new(code) }
            end
          end

        end

        describe '#headers' do

          it 'returns a header hash' do
            Response.new(200).headers.must_be_kind_of(HeaderHash)
          end

          it 'defaults to an empty hash' do
            Response.new(200).headers.to_h.must_equal({})
          end

          it 'can be seeded in the constructor' do
            resp = Response.new(200, :abc => '123')
            resp.headers.to_hash.must_equal('abc' => '123')
          end

        end

        describe '#body' do

          it 'defaults to an empty string' do
            Response.new(200).body.must_equal('')
          end

          it 'can be set' do
            resp = Response.new(200)
            resp.body = 'abc'
            resp.body.must_equal('abc')
          end

        end

      end
    end
  end
end
