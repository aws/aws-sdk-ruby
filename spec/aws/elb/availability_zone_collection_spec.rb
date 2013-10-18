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
  class ELB
    describe AvailabilityZoneCollection do

      let(:config) { stub_config }

      let(:client) { config.elb_client }

      let(:load_balancer) { LoadBalancer.new('lb-name', :config => config) }

      let(:zones) { load_balancer.availability_zones }

      context '#enable' do

        it 'accepts availability zone names' do

          client.should_receive(:enable_availability_zones_for_load_balancer).
            with(
              :load_balancer_name => load_balancer.name,
              :availability_zones => %w(az1 az2))

          zones.enable('az1', 'az2')

        end

        it 'accepts availability zone objects' do

          client.should_receive(:enable_availability_zones_for_load_balancer).
            with(
              :load_balancer_name => load_balancer.name,
              :availability_zones => %w(az1 az2))


          zones.enable([
            EC2::AvailabilityZone.new('az1'),
            EC2::AvailabilityZone.new('az2'),
          ])

        end

        it 'returns nil' do
          zones.enable('az1').should == nil
        end

      end

      context '#disable' do

        it 'accepts availability zone names' do

          client.should_receive(:disable_availability_zones_for_load_balancer).
            with(
              :load_balancer_name => load_balancer.name,
              :availability_zones => %w(az1 az2))

          zones.disable('az1', 'az2')

        end

        it 'accepts availability zone objects' do

          client.should_receive(:disable_availability_zones_for_load_balancer).
            with(
              :load_balancer_name => load_balancer.name,
              :availability_zones => %w(az1 az2))

          zones.disable([
            EC2::AvailabilityZone.new('az1'),
            EC2::AvailabilityZone.new('az2'),
          ])

        end

        it 'returns nil' do
          zones.disable('az1').should == nil
        end

      end

      context '#each' do

        let(:response) { client.stub_for(:describe_load_balancers) }

        before(:each) do
          response.data[:load_balancer_descriptions] = [
            {
              :load_balancer_name => load_balancer.name,
              :availability_zones => %w(az1 az2 az3),
            },
          ]
        end

        it 'yields availability zone objects' do
          zones.to_a.should == [
            EC2::AvailabilityZone.new('az1', :config => config),
            EC2::AvailabilityZone.new('az2', :config => config),
            EC2::AvailabilityZone.new('az3', :config => config),
          ]
        end


      end

    end
  end
end
