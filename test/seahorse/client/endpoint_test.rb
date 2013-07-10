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
    describe Endpoint do

      it 'is a string' do
        Endpoint.new('foo.com').must_be_kind_of(String)
      end

      describe 'constructor' do

        it 'can be constructed from a string' do
          Endpoint.new('abc.com').must_be_kind_of(Endpoint)
        end

        it 'can be constructed from a URI::HTTP' do
          uri = 'http://foo.com'
          Endpoint.new(URI.parse(uri)).must_equal(uri)
        end

        it 'can be constructed from a URI::HTTPS' do
          uri = 'https://foo.com'
          Endpoint.new(URI.parse(uri)).must_equal(uri)
        end

        it 'can be constructed from an Endpoint' do
          endpoint1 = Endpoint.new('abc.com')
          endpoint2 = Endpoint.new(endpoint1) # copy constructor
          endpoint1.must_equal(endpoint2)
        end

        it 'raises an error if you pass non valid enpoint' do
          assert_raises(URI::InvalidURIError) do
            Endpoint.new(Class.new)
          end
        end

      end

      describe '#scheme' do

        it 'can be specified in the constructor' do
          Endpoint.new('http://foo.com').scheme.must_equal('http')
          Endpoint.new('https://foo.com').scheme.must_equal('https')
        end

        it 'defaults to https when not passed to constructor' do
          Endpoint.new('foo.com').scheme.must_equal('https')
        end

        it 'looks for the :ssl_default options when picking the default scheme' do
          Endpoint.new('foo.com', ssl_default: false).scheme.must_equal('http')
        end

      end

      describe '#http?' do

        it 'returns true if the scheme is http' do
          Endpoint.new('http://foo.com').http?.must_equal(true)
        end

        it 'returns false if the scheme is not http' do
          Endpoint.new('https://foo.com').http?.must_equal(false)
        end

      end

      describe '#https?' do

        it 'returns true if the scheme is https' do
          Endpoint.new('https://foo.com').https?.must_equal(true)
        end

        it 'returns false if the scheme is not https' do
          Endpoint.new('http://foo.com').https?.must_equal(false)
        end

      end

      describe '#host' do

        it 'is passed into the constructor' do
          Endpoint.new('foo.com').host.must_equal('foo.com')
          Endpoint.new('abc.mno.xyz').host.must_equal('abc.mno.xyz')
        end

      end

      describe '#port' do

        it 'defaults to 80 for http endpoints' do
          Endpoint.new('http://foo.com').port.must_equal(80)
        end

        it 'defaults to 443 for https endpoints' do
          Endpoint.new('https://foo.com').port.must_equal(443)
        end

        it 'can be specified in the constructor' do
          Endpoint.new('http://foo.com:123').port.must_equal(123)
          Endpoint.new('foo.com:321').port.must_equal(321)
        end

      end

    end
  end
end
