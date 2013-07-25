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

module Seahorse::Client::Http
  describe Headers do

    def headers
      @headers ||= Headers.new
    end

    it 'provides indifferent access to symbolized keys' do
      headers[:key] = 'value'
      headers[:key].must_equal('value')
      headers['key'].must_equal('value')
    end

    it 'provides indifferent access to string keys' do
      headers['key'] = 'value'
      headers['key'].must_equal('value')
      headers[:key].must_equal('value')
    end

    it 'stringifies values' do
      headers['key'] = 123
      headers['key'].must_equal('123')
    end

    it 'can be seeded by the constructor' do
      hash = { 'abc' => '123' }
      headers = Headers.new(hash)
      headers.to_hash.must_equal(hash)
    end

    describe '#to_hash' do

      it 'returns a regular hash' do
        headers[:abc] = 'xyz'
        headers.to_hash.must_equal({ 'abc' => 'xyz' })
      end

      it 'is aliased as #to_h' do
        headers[:abc] = 'xyz'
        headers.to_h.must_equal({ 'abc' => 'xyz' })
      end

      it 'returns a new hash that protects internal state' do
        headers['abc'] = 'xyz'
        headers.to_hash['abc'] = 'mno'
        headers['abc'].must_equal('xyz')
      end

    end

    describe '#update' do

      it 'accepts a hash, updating self' do
        headers.update(:abc => 123, 'xyz' => '234')
        headers['abc'].must_equal('123')
        headers['xyz'].must_equal('234')
      end

    end

    describe '#each' do

      it 'is enumerable' do
        headers.must_be_kind_of(Enumerable)
      end

      it 'returns nil if a block is given' do
        ret = headers.each {}
        ret.must_equal(nil)
      end

      it 'returns an Enumerator if a block is not given' do
        headers.each.must_be_kind_of(Enumerator)
      end

      it 'yields headers keys and values' do
        headers['key1'] = 'value1'
        headers['key2'] = 'value2'
        yielded = []
        headers.each do |key, value|
          yielded << [key, value]
        end
        yielded.sort_by(&:first).must_equal([
          ['key1', 'value1'],
          ['key2', 'value2'],
        ])
      end

      it 'is aliased as #each_pair' do
        headers['key1'] = 'value1'
        headers['key2'] = 'value2'
        yielded = []
        headers.each_pair do |key, value|
          yielded << [key, value]
        end
        yielded.sort_by(&:first).must_equal([
          ['key1', 'value1'],
          ['key2', 'value2'],
        ])
      end

    end

    describe '#key?' do

      it 'returns true if the header has been set' do
        headers['foo'] = 'bar'
        headers.key?('foo').must_equal(true)
      end

      it 'returns false if the header has not been set' do
        headers.key?('foo').must_equal(false)
      end

      it 'is aliased as #has_key?' do
        headers['foo'] = 'bar'
        headers.has_key?('foo').must_equal(true)
      end

      it 'is aliased as #include?' do
        headers['foo'] = 'bar'
        headers.include?('foo').must_equal(true)
      end

    end
  end
end
