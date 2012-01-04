# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:region) { Region.new("region", :config => config) }

      let(:describe_call) { :describe_regions }

      let(:describe_opts) { { :region_names => ["region"] } }

      let(:response_id_field) { :region_name }

      let(:resource_id) { "region" }

      let(:instance) { region }

      def stub_member(resp, member)
        resp.stub(:region_info).and_return([member])
      end

      it_should_behave_like "an ec2 resource object"

      context '#initialize' do

        it 'should set the name' do
          Region.new("region").name.should == "region"
        end

        context 'with :endpoint' do

          it 'should set the endpoint' do
            described_class.new("region", :endpoint => "foo.amazonaws.com").
              endpoint.should == "foo.amazonaws.com"
          end

        end

      end

      context '#endpoint' do

        let(:attribute) { :endpoint }
        let(:response_field) { :region_endpoint }
        let(:response_value) { "foo.amazonaws.com" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 resource attribute accessor (describe call)"

      end

      context '#exists?' do

        it 'should call describe_regions with a filter' do
          client.should_receive(:describe_regions).
            with(:filters => [{ :name => "region-name",
                                :values => ["region"] }]).
            and_return(client.stub_for(:describe_regions))
          region.exists?
        end

        context 'when it exists' do

          let(:resp) { client.new_stub_for(:describe_regions) }

          before(:each) do
            resp.stub(:region_info).
              and_return([double("region",
                                 :region_endpoint => "foo.amazonaws.com")])
            client.stub(:describe_regions).and_return(resp)
          end

          it 'should return true' do
            region.exists?.should be_true
          end

        end

        context 'when it does not exist' do

          it 'should return false' do
            region.exists?.should be_false
          end

        end

      end

      shared_examples_for 'ec2 regional top-level collection' do

        let(:resp) { client.new_stub_for(:describe_regions) }

        before(:each) do
          resp.stub(:region_info).
            and_return([double("region",
                               :region_name => "region",
                               :region_endpoint => "foo.amazonaws.com")])
          client.stub(:describe_regions).and_return(resp)
        end

        it 'should configure the regional endpoint' do
          region.send(method).config.ec2_endpoint.
            should == "foo.amazonaws.com"
        end

      end

      # sanity check that we don't forget something
      it 'should respond to all the methods of EC2 except #regions' do
        (EC2.instance_methods.map { |m| m.to_sym } - [:regions]).each do |m|
          region.should respond_to(m)
        end
      end

      context '#instances' do
        let(:method) { :instances }
        it_should_behave_like 'ec2 regional top-level collection'
      end

      context '#security_groups' do
        let(:method) { :security_groups }
        it_should_behave_like 'ec2 regional top-level collection'
      end

      context '#key_pairs' do
        let(:method) { :key_pairs }
        it_should_behave_like 'ec2 regional top-level collection'
      end

      context '#elastic_ips' do
        let(:method) { :elastic_ips }
        it_should_behave_like 'ec2 regional top-level collection'
      end

      context '#tags' do
        let(:method) { :tags }
        it_should_behave_like 'ec2 regional top-level collection'
      end

      context '#availability_zones' do
        let(:method) { :availability_zones }
        it_should_behave_like 'ec2 regional top-level collection'
      end

    end

  end
end
