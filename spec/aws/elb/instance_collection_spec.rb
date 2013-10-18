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

    describe InstanceCollection do

      let(:config) { stub_config }

      let(:client) { config.elb_client }

      let(:load_balancer) { LoadBalancer.new('lb-name', :config => config) }

      let(:instances) { InstanceCollection.new(load_balancer) }

      context '#[]' do

        it 'returns an ec2 instance object' do
          instance = instances['i-1234']
          instance.should be_a(EC2::Instance)
        end

        it 'returns an ec2 instance object with the correct configuration' do
          instance = instances['i-1234']
          instance.config.should == config
        end

        it 'returns an ec2 instance that responds to #elb_health' do
          instance = instances['i-1234']
          instance.should respond_to(:elb_health)
        end

        context '#elb_health' do

          let(:response) { client.stub_for(:describe_instance_health) }

          before(:each) do
            response.data[:instance_states] = [
              {
                :description => 'description',
                :instance_id => 'i-1234',
                :reason_code => 'reason-code',
                :state => 'state',
              },
            ]
          end

          it 'calls #describe_instance_health on the client' do

            client.should_receive(:describe_instance_health).with(
              :load_balancer_name => load_balancer.name,
              :instances => [{ :instance_id => 'i-1234' }]
            ).and_return(response)

            instances['i-1234'].elb_health.should == {
                :description => 'description',
                :reason_code => 'reason-code',
                :state => 'state',
            }

          end

        end

        context '#load_balancer' do

          it 'returns the load balancer' do
            instances['i-12346'].load_balancer.should == instances.load_balancer
          end

        end

        context '#remove_from_load_balancer' do

          it 'calls deregister for the instance' do

            client.should_receive(:deregister_instances_from_load_balancer).with(
              :load_balancer_name => load_balancer.name,
              :instances => [{ :instance_id => 'i-123456' }])

            instances['i-123456'].remove_from_load_balancer

          end

        end

      end

      context '#health' do

        let(:response) { client.stub_for(:describe_instance_health) }

        let(:instance_states) {[
          {
            :description => 'desc-1',
            :instance_id => 'i-123456',
            :reason_code => 'reason-code-1',
            :state => 'state-1',
          }, {
            :description => 'desc-2',
            :instance_id => 'i-223456',
            :reason_code => 'reason-code-2',
            :state => 'state-2',
          },
        ]}

        before(:each) do
          response.data[:instance_states] = instance_states
          client.stub(:describe_instance_health).and_return(response)
        end

        it 'calls #describe_instance_health' do

          client.should_receive(:describe_instance_health).
            with(:load_balancer_name => load_balancer.name).
            and_return(response)

          instances.health

        end

        it 'returns an array of hashes' do
          instances.health.should == [
            {
              :description => 'desc-1',
              :instance => instances['i-123456'],
              :reason_code => 'reason-code-1',
              :state => 'state-1',
            },
            {
              :description => 'desc-2',
              :instance => instances['i-223456'],
              :reason_code => 'reason-code-2',
              :state => 'state-2',
            },
          ]
        end

        it 'accepts instances ids' do
          client.should_receive(:describe_instance_health).with(
            :load_balancer_name => load_balancer.name,
            :instances => [
              { :instance_id => 'i-1234' },
              { :instance_id => 'i-2234' },
          ]).and_return(response)
          instances.health('i-1234', 'i-2234')
        end

        it 'accepts instances' do

          client.should_receive(:describe_instance_health).with(
            :load_balancer_name => load_balancer.name,
            :instances => [
              { :instance_id => 'i-1234' },
              { :instance_id => 'i-2234' },
          ]).and_return(response)

          ec2 = EC2.new(:config => config)
          ec2_instances = []
          ec2_instances << ec2.instances['i-1234']
          ec2_instances << ec2.instances['i-2234']
          instances.health(ec2_instances)

        end

      end

      context '#register' do

        it 'calls register on the client' do
          client.should_receive(:register_instances_with_load_balancer).with(
            :load_balancer_name => load_balancer.name,
            :instances => [
              { :instance_id => 'i-1234' },
              { :instance_id => 'i-2234' },
            ]
          )
          ec2 = EC2.new(:config => config)
          instances.register('i-1234', ec2.instances['i-2234'])
        end

      end

      context '#deregister' do

        it 'calls deregister on the client' do
          client.should_receive(:deregister_instances_from_load_balancer).with(
            :load_balancer_name => load_balancer.name,
            :instances => [
              { :instance_id => 'i-1234' },
              { :instance_id => 'i-2234' },
            ]
          )

          ec2 = EC2.new(:config => config)

          instances.deregister('i-1234', ec2.instances['i-2234'])
        end

      end

      context '#each' do

        let(:response) { client.stub_for(:describe_load_balancers) }

        before(:each) do

          descriptions = [
            {
              :load_balancer_name => load_balancer.name,
              :instances => [
                { :instance_id => 'i-1' },
                { :instance_id => 'i-2' },
              ]
            }
          ]

          response.data[:load_balancer_descriptions] = descriptions

          client.stub(:describe_load_balancers).and_return(response)

        end

        it 'yields instance objects' do

          instances.to_a.should == [
            instances['i-1'],
            instances['i-2'],
          ]

        end

      end

    end
  end
end
