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

    describe AvailabilityZone do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:zone) { AvailabilityZone.new('name', :config => config) }

      it_should_behave_like "an ec2 resource object"

      context '#initialize' do

        it 'should set name' do
          zone.name.should == "name"
        end

        it 'should set region' do
          region = Region.new("foo", :config => config)
          AvailabilityZone.new("name", :region => region).region.
            should == region
        end

        it 'should set by name' do
          AvailabilityZone.new("name", :region_name => 'foo').region.
            should == Region.new("foo", :config => config)
        end

      end

      context '#to_s' do

        it 'should return the zone name' do
          zone.to_s.should == "name"
        end

      end

      shared_examples_for "availability zone attribute" do

        let(:resp) { client.new_stub_for(:describe_availability_zones) }

        before(:each) do
          resp.data[:availability_zone_info] = [
            { :zone_name => 'name', response_field => response_value },
          ]
          client.stub(:describe_availability_zones).and_return(resp)
        end

        it 'should call describe_availability_zones' do
          client.should_receive(:describe_availability_zones).
            with(:zone_names => ["name"]).
            and_return(resp)
          zone.send(attribute)
        end

      end

      context '#region' do

        let(:attribute) { :region }
        let(:response_field) { :region_name }
        let(:response_value) { "foo" }

        it_should_behave_like "availability zone attribute" do

          it 'should pass the name' do
            zone.region.name.should == "foo"
          end

          it 'should return a region object' do
            zone.region.should be_a(Region)
          end

          it 'should memoize the result' do
            client.should_receive(:describe_availability_zones).once
            2.times { zone.region }
          end

        end

      end

      context '#state' do

        let(:attribute) { :state }
        let(:response_field) { :zone_state }
        let(:response_value) { "available" }

        it_should_behave_like "availability zone attribute" do

          it 'should symbol-ize the result' do
            zone.state.should == :available
          end

        end

      end

      context '#messages' do

        let(:attribute) { :messages }
        let(:response_field) { :message_set }
        let(:response_value) { [
          { :message => "something" },
          { :message => "something else" },
        ]}

        it_should_behave_like "availability zone attribute" do

          it 'should return a list of strings' do
            zone.messages.should == ["something", "something else"]
          end

        end

      end

    end

  end
end
