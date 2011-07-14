# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

  describe EC2 do

    let(:config) { stub_config }

    let(:ec2) do
      EC2.new(:config => config)
    end

    it_behaves_like 'a class that accepts configuration', :ec2_client

    shared_examples_for 'ec2 top level collection' do |method, klass|

      it "should return an instance of #{klass}" do
        ec2.send(method).should be_an(klass)
      end

      it 'should pass the config' do
        ec2.send(method).config.should == ec2.config
      end

    end

    context '#instances' do
      it_should_behave_like 'ec2 top level collection', :instances, EC2::InstanceCollection
    end

    context '#security_groups' do
      it_should_behave_like 'ec2 top level collection', :security_groups, EC2::SecurityGroupCollection
    end

    context '#elastic_ips' do
      it_should_behave_like 'ec2 top level collection', :elastic_ips, EC2::ElasticIpCollection
    end

    context '#key_pairs' do
      it_should_behave_like 'ec2 top level collection', :key_pairs, EC2::KeyPairCollection
    end

    context '#tags' do
      it_should_behave_like 'ec2 top level collection', :tags, EC2::TagCollection
    end

    context '#regions' do
      it_should_behave_like 'ec2 top level collection', :regions, EC2::RegionCollection
    end

    context '#availability_zones' do
      it_should_behave_like 'ec2 top level collection', :availability_zones, EC2::AvailabilityZoneCollection
    end

    context '#images' do
      it_should_behave_like 'ec2 top level collection', :images, EC2::ImageCollection
    end

    context '#reserved_instances' do
      it_should_behave_like 'ec2 top level collection', :reserved_instances, EC2::ReservedInstancesCollection
    end

    context '#reserved_instance_offerings' do
      it_should_behave_like 'ec2 top level collection', :reserved_instances_offerings, EC2::ReservedInstancesOfferingCollection
    end

    context '#volumes' do
      it_should_behave_like 'ec2 top level collection', :volumes, EC2::VolumeCollection
    end

  end

end
