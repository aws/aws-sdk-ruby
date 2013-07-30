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
      describe Endpoint do

        it 'is a string' do
          Endpoint.new('foo.com').should be_kind_of(String)
        end

        describe 'constructor' do

          it 'can be constructed from a string' do
            Endpoint.new('abc.com').should be_kind_of(Endpoint)
          end

          it 'can be constructed from a URI::HTTP' do
            uri = 'http://foo.com'
            Endpoint.new(URI.parse(uri)).should eq(uri)
          end

          it 'can be constructed from a URI::HTTPS' do
            uri = 'https://foo.com'
            Endpoint.new(URI.parse(uri)).should eq(uri)
          end

          it 'can be constructed from an Endpoint' do
            endpoint1 = Endpoint.new('abc.com')
            endpoint2 = Endpoint.new(endpoint1) # copy constructor
            endpoint1.should eq(endpoint2)
          end

          it 'raises an error if you pass non valid enpoint' do
            expect do
              Endpoint.new(Class.new)
            end.to raise_error(URI::InvalidURIError)
          end

        end

        describe '#scheme' do

          it 'can be specified in the constructor' do
            Endpoint.new('http://foo.com').scheme.should eq('http')
            Endpoint.new('https://foo.com').scheme.should eq('https')
          end

          it 'defaults to https when not passed to constructor' do
            Endpoint.new('foo.com').scheme.should eq('https')
          end

          it 'looks for the :ssl_default options when picking the default scheme' do
            Endpoint.new('foo.com', ssl_default: false).scheme.should eq('http')
          end

        end

        describe '#http?' do

          it 'returns true if the scheme is http' do
            Endpoint.new('http://foo.com').http?.should eq(true)
          end

          it 'returns false if the scheme is not http' do
            Endpoint.new('https://foo.com').http?.should eq(false)
          end

        end

        describe '#https?' do

          it 'returns true if the scheme is https' do
            Endpoint.new('https://foo.com').https?.should eq(true)
          end

          it 'returns false if the scheme is not https' do
            Endpoint.new('http://foo.com').https?.should eq(false)
          end

        end

        describe '#host' do

          it 'is passed into the constructor' do
            Endpoint.new('foo.com').host.should eq('foo.com')
            Endpoint.new('abc.mno.xyz').host.should eq('abc.mno.xyz')
          end

        end

        describe '#port' do

          it 'defaults to 80 for http endpoints' do
            Endpoint.new('http://foo.com').port.should eq(80)
          end

          it 'defaults to 443 for https endpoints' do
            Endpoint.new('https://foo.com').port.should eq(443)
          end

          it 'can be specified in the constructor' do
            Endpoint.new('http://foo.com:123').port.should eq(123)
            Endpoint.new('foo.com:321').port.should eq(321)
          end

        end
      end
    end
  end
end
