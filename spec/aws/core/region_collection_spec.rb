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

require 'spec_helper'

module AWS
  module Core
    describe RegionCollection do

      let(:regions) { RegionCollection.new }

      context '#[]' do

        it 'returns a region' do
          regions['name'].should be_a(Region)
        end

        it 'returns a region with the given name' do
          regions['name'].name.should eq('name')
        end

      end

      context '#each' do

        let(:json) { File.read(File.join(AWS::ROOT, 'endpoints.json')) }

        before(:each) { Net::HTTP.stub(:get).and_return(json) }

        before(:each) { described_class.clear! }

        it 'should be enumerable' do
          regions.should be_an(Enumerable)
        end

        it 'yields Region objects' do
          yielded = false
          regions.each do |region|
            region.should be_a(Region)
            yielded = true
          end
          yielded.should be(true)
        end

        it 'loads data from the hosted endpoints.json file' do
          host = 'aws-sdk-configurations.amazonwebservices.com'
          path = '/endpoints.json'
          Net::HTTP.should_receive(:get).with(host, path).and_return(json)
          regions.map(&:name)
        end

        it 'loads data from the hosted endpoints.json file behind a proxy' do
          host = 'aws-sdk-configurations.amazonwebservices.com'
          path = '/endpoints.json'
          stub_proxy_uri = URI.parse('http://127.0.0.1:8080')
          http = double "http"
          AWS.config.stub(:proxy_uri) { stub_proxy_uri }
          Net::HTTP.should_receive(:Proxy).with('127.0.0.1', 8080) { http }
          http.should_receive(:get).with(host, path) { json }
          regions.map(&:name)
        end

        it 'enumerates public regions from the endpoints.json file' do
          regions.map(&:name).sort.should eq(%w(
            us-east-1 us-west-1 us-west-2 eu-west-1 ap-northeast-1
            ap-southeast-1 ap-southeast-2 sa-east-1
          ).sort)
        end

        it 'caches the endpoints.json file' do
          Net::HTTP.should_receive(:get).exactly(1).times.and_return(json)
          regions.map(&:name)
          regions.map(&:name)
        end

        context 'with service' do

          it 'provides access to services with a global endpoint via any region' do
            AWS::IAM.global_endpoint?.should be(true)
            AWS::IAM.regions.map(&:name).should eq(['us-east-1'])
            AWS.regions['fake-region'].iam.client.config.iam_region.should eq('us-east-1')
          end

        end

      end

    end
  end
end
