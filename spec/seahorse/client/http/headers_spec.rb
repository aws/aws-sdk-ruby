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
    module Http
      describe Headers do

        def headers
          @headers ||= Headers.new
        end

        it 'provides indifferent access to symbolized keys' do
          headers[:key] = 'value'
          headers[:key].should eq('value')
          headers['key'].should eq('value')
        end

        it 'provides indifferent access to string keys' do
          headers['key'] = 'value'
          headers['key'].should eq('value')
          headers[:key].should eq('value')
        end

        it 'stringifies values' do
          headers['key'] = 123
          headers['key'].should eq('123')
        end

        it 'can be seeded by the constructor' do
          hash = { 'abc' => '123' }
          headers = Headers.new(hash)
          headers.to_hash.should eq(hash)
        end

        describe '#to_hash' do

          it 'returns a regular hash' do
            headers[:abc] = 'xyz'
            headers.to_hash.should eq({ 'abc' => 'xyz' })
          end

          it 'is aliased as #to_h' do
            headers[:abc] = 'xyz'
            headers.to_h.should eq({ 'abc' => 'xyz' })
          end

          it 'returns a new hash that protects internal state' do
            headers['abc'] = 'xyz'
            headers.to_hash['abc'] = 'mno'
            headers['abc'].should eq('xyz')
          end

        end

        describe '#update' do

          it 'accepts a hash, updating self' do
            headers.update(:abc => 123, 'xyz' => '234')
            headers['abc'].should eq('123')
            headers['xyz'].should eq('234')
          end

        end

        describe '#each' do

          it 'is enumerable' do
            headers.should be_kind_of(Enumerable)
          end

          it 'returns nil if a block is given' do
            ret = headers.each {}
            ret.should eq(nil)
          end

          it 'returns an Enumerator if a block is not given' do
            headers.each.should be_kind_of(Enumerator)
          end

          it 'yields headers keys and values' do
            headers['key1'] = 'value1'
            headers['key2'] = 'value2'
            yielded = []
            headers.each do |key, value|
              yielded << [key, value]
            end
            yielded.sort_by(&:first).should eq([
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
            yielded.sort_by(&:first).should eq([
              ['key1', 'value1'],
              ['key2', 'value2'],
            ])
          end

        end

        describe '#key?' do

          it 'returns true if the header has been set' do
            headers['foo'] = 'bar'
            headers.key?('foo').should eq(true)
          end

          it 'returns false if the header has not been set' do
            headers.key?('foo').should eq(false)
          end

          it 'is aliased as #has_key?' do
            headers['foo'] = 'bar'
            headers.has_key?('foo').should eq(true)
          end

          it 'is aliased as #include?' do
            headers['foo'] = 'bar'
            headers.include?('foo').should eq(true)
          end

        end
      end
    end
  end
end
