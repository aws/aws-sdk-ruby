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

    describe LoadBalancerCollection do

      let(:config) { stub_config }

      let(:client) { config.elb_client }

      let(:load_balancers) { described_class.new(:config => config) }

      context '#create' do

        let(:response) { client.stub_for(:create_load_balancer) }

        before(:each) do
          response.data[:dns_name] = 'lb-dns-name'
          client.stub(:create_load_balancer).and_return(response)
        end

        def new_load_balancer
          load_balancers.create('load-balancer-name',
            :availability_zones => 'us-east-1a',
            :listeners => {
              :port => 443,
              :protocol => :https,
              :instance_port => 443,
              :instance_protocol => :https,
              :server_certificate => 'cert-arn',
            })
        end

        it 'returns a load balancer' do
          load_balancer = new_load_balancer
          load_balancer.should be_a(LoadBalancer)
        end

        it 'returns a load balancer with the correct name' do
          load_balancer = new_load_balancer
          load_balancer.name.should == 'load-balancer-name'
        end

        it 'returns a load balancer with the correct config' do
          load_balancer = new_load_balancer
          load_balancer.config.should == load_balancers.config
        end

        it 'returns a load balancer with the dns_name populated' do
          load_balancer = new_load_balancer
          load_balancer.dns_name.should == 'lb-dns-name'
        end

        it 'calls #create_load_balancer on the client' do
          client.should_receive(:create_load_balancer).with(
            :load_balancer_name => 'load-balancer-name',
            :availability_zones => ['us-east-1a'],
            :listeners => [{
              :load_balancer_port => 443,
              :protocol => 'HTTPS',
              :instance_port => 443,
              :instance_protocol => 'HTTPS',
              :ssl_certificate_id => 'cert-arn'
            }]
          )
          new_load_balancer
        end

        it 'accepts a list of subnet ids' do
          client.should_receive(:create_load_balancer).with(
            :load_balancer_name => 'name',
            :subnets => %w(id1 id2 id3))
          load_balancers.create('name', :subnets => %w(id1 id2 id3))
        end

        it 'accepts a list of subnets objects' do
          subnets = []
          subnets << EC2::Subnet.new('id1')
          subnets << EC2::Subnet.new('id2')
          subnets << EC2::Subnet.new('id3')
          client.should_receive(:create_load_balancer).with(
            :load_balancer_name => 'name',
            :subnets => %w(id1 id2 id3))
          load_balancers.create('name', :subnets => subnets)
        end

        it 'accepts a list of security group ids' do
          client.should_receive(:create_load_balancer).with(
            :load_balancer_name => 'name',
            :security_groups => %w(id1 id2 id3))
          load_balancers.create('name', :security_groups => %w(id1 id2 id3))
        end

        it 'accepts a list of security group objects' do
          groups = []
          groups << EC2::SecurityGroup.new('id1')
          groups << EC2::SecurityGroup.new('id2')
          groups << EC2::SecurityGroup.new('id3')
          client.should_receive(:create_load_balancer).with(
            :load_balancer_name => 'name',
            :security_groups => %w(id1 id2 id3))
          load_balancers.create('name', :security_groups => groups)
        end

        it 'accepts a scheme' do
          client.should_receive(:create_load_balancer).with(
            :load_balancer_name => 'name',
            :scheme => 'internal')
          load_balancers.create('name', :scheme => 'internal')
        end

      end

      context '#[]' do

        it 'returns a load balancer' do
          load_balancers['name'].should be_a(LoadBalancer)
        end

        it 'returns the load balancer with the given name' do
          load_balancers['name'].name.should == 'name'
        end

        it 'accepts load balancer names as symbols' do
          load_balancers[:name].name.should == 'name'
        end

        it 'returns a load balancer with the correct config' do
          load_balancers[:name].config.should == load_balancers.config
        end

      end

      it_should_behave_like "a simple collection" do

        let(:collection) { load_balancers }
        let(:client_method) { :describe_load_balancers }
        let(:now) { Time.now }
        let(:request_options) {{}}

        it_should_behave_like "a collection that yields models" do
          let(:member_class)  { LoadBalancer }
        end

        def stub_n_members response, n
          balancers = (1..n).collect do |i|
            { :load_balancer_name => "name-#{i}" }
          end
          response.data[:load_balancer_descriptions] = balancers
        end

      end

    end

  end
end
