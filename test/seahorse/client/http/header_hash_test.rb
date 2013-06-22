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
      describe HeaderHash do

        def hash
          @hash ||= HeaderHash.new
        end

        it 'provides indifferent access to symbolized keys' do
          hash[:key] = 'value'
          hash[:key].must_equal('value')
          hash['key'].must_equal('value')
        end

        it 'provides indifferent access to string keys' do
          hash['key'] = 'value'
          hash['key'].must_equal('value')
          hash[:key].must_equal('value')
        end

        it 'stringifies values' do
          hash['key'] = 123
          hash['key'].must_equal('123')
        end

        describe '#to_hash' do

          it 'returns a regular hash' do
            hash[:abc] = 'xyz'
            hash.to_hash.must_equal({ 'abc' => 'xyz' })
          end

          it 'is aliased as #to_h' do
            hash[:abc] = 'xyz'
            hash.to_h.must_equal({ 'abc' => 'xyz' })
          end

          it 'returns a new hash that protects internal state' do
            hash['abc'] = 'xyz'
            hash.to_hash['abc'] = 'mno'
            hash['abc'].must_equal('xyz')
          end

        end

        describe '#each' do

          it 'is enumerable' do
            hash.must_be_kind_of(Enumerable)
          end

          it 'returns nil if a block is given' do
            ret = hash.each {}
            ret.must_equal(nil)
          end

          it 'returns an Enumerator if a block is not given' do
            hash.each.must_be_kind_of(Enumerator)
          end

          it 'yields hash keys and values' do
            hash['key1'] = 'value1'
            hash['key2'] = 'value2'
            yielded = []
            hash.each do |key, value|
              yielded << [key, value]
            end
            yielded.sort_by(&:first).must_equal([
              ['key1', 'value1'],
              ['key2', 'value2'],
            ])
          end

          it 'is aliased as #each_pair' do
            hash['key1'] = 'value1'
            hash['key2'] = 'value2'
            yielded = []
            hash.each_pair do |key, value|
              yielded << [key, value]
            end
            yielded.sort_by(&:first).must_equal([
              ['key1', 'value1'],
              ['key2', 'value2'],
            ])
          end

        end


      end
    end
  end
end
