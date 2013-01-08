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
  class EC2
    describe Region do

      let(:region) { Region.new('name') }

      context '#name' do

        it 'is set by the constructor' do
          Region.new('region-name').name.should eq('region-name')
        end

      end

      context '#endpoint' do

        it 'defaults to the standard ec2 pattern' do
          Region.new('name').endpoint.should eq('ec2.name.amazonaws.com')
        end

        it 'can be overriden in the constructor' do
          region = Region.new('name', :endpoint => 'endpoint')
          region.endpoint.should eq('endpoint')
        end

      end

      context '#client' do

        it 'returns a client with the proper ec2 endpoint' do
          region.client.should be_a(EC2::Client)
          region.client.config.ec2_endpoint.should eq(region.endpoint)
        end

      end

      context '#config' do

        it 'returns a configuration with the proper ec2 endpoint' do
          region.config.ec2_endpoint.should eq(region.endpoint)
        end

      end

      context '#exists?' do

        it 'describes regions and returns true when no error is raised' do
          region.client.should_receive(:describe_regions).
            with(:region_names => [region.name])
          region.exists?.should eq(true)
        end

        it 'returns false if describe_regions raises an error' do
          err = AWS::EC2::Errors::InvalidParameterValue.new('err')
          region.client.should_receive(:describe_regions).and_raise(err)
          region.exists?.should eq(false)
        end

      end

      it 'should respond to all the methods of EC2 except #regions' do
        (EC2.instance_methods.map { |m| m.to_sym } - [:regions]).each do |m|
          region.should respond_to(m)
        end
      end

    end
  end
end
