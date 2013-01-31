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
    describe Listener do

      let(:config) { stub_config }

      let(:client) { config.elb_client }

      let(:load_balancer) { LoadBalancer.new('lb-name', :config => config) }

      let(:listener) { Listener.new(load_balancer, 80) }

      let(:desc_response) { client.stub_for(:describe_load_balancers) }

      let(:description) {{
        :listener => {
          :load_balancer_port => 80,
          :protocol => 'TCP',
          :instance_port => 81,
          :instance_protocol => 'HTTP',
          :ssl_certificate_id => 'server-cert-arn',
        }
      }}

      before(:each) do

        listeners = [description]

        lb = {
          :load_balancer_name => load_balancer.name,
          :listener_descriptions => listeners,
        }

        desc_response.data[:load_balancer_descriptions] = [lb]

      end

      context '#load_balancer' do

        it 'returns the load balancer' do
          listener.load_balancer.should == load_balancer
        end

        it 'has the right config' do
          listener.config.should == config
        end

      end

      context '#port' do

        it 'returns the port' do
          listener.port.should == 80
        end

        it 'stringifies the port' do
          Listener.new(load_balancer, '443').port.should == 443
        end

      end

      context '#protocol' do

        it 'returns the protocol as a symbol' do
          listener.protocol.should == :tcp
        end

      end

      context '#instance_port' do

        it 'returns the isntance port as an integer' do
          listener.instance_port.should == 81
        end

      end

      context '#instance_protocol' do

        it 'returns the isntance protocol as a symbol' do
          listener.instance_protocol.should == :http
        end

      end

      context '#server_certificate' do


        it 'returns the iam server certificate that has the matching arn' do
          cert = double('iam-server-certificate', :arn => 'server-cert-arn')
          IAM.stub_chain(:new, :server_certificates).and_return([cert])
          listener.server_certificate.should == cert
        end

      end

      context '#server_certificate=' do

        it 'sends the server cert arn as ssl_certificate_id' do

          cert = IAM.new(:config => config).server_certificates['cert-id']
          cert.stub(:arn).and_return('abc')

          client.should_receive(:set_load_balancer_listener_ssl_certificate).
            with(
              :load_balancer_name => load_balancer.name,
              :load_balancer_port => listener.port,
              :ssl_certificate_id => cert.arn)

          listener.server_certificate = cert

        end

      end

      context '#policy' do

        it 'describes the load balancer to get the policy' do

          response = client.stub_for(:describe_load_balancers)

          response.data[:load_balancer_descriptions] = [
            {
              :load_balancer_name => load_balancer.name,
              :listener_descriptions => [
                {
                  :listener => { :load_balancer_port => listener.port },
                  :policy_names => ['policy-name-1']
                }
              ]
            }
          ]

          client.stub(:describe_load_balancers).and_return(response)

          listener.policy.should == load_balancer.policies['policy-name-1']

        end

      end

      context '#policy=' do

        it 'accepts policy names' do

          client.should_receive(:set_load_balancer_policies_of_listener).with(
            :load_balancer_name => load_balancer.name,
            :load_balancer_port => listener.port,
            :policy_names => ['policy-name'])

          listener.policy = 'policy-name'

        end

        it 'accepts policy objects' do

          policy = load_balancer.policies['policy-name']

          client.should_receive(:set_load_balancer_policies_of_listener).with(
            :load_balancer_name => load_balancer.name,
            :load_balancer_port => listener.port,
            :policy_names => [policy.name])

          listener.policy = policy

        end

      end

      context '#remove_policy' do

        it 'sends no policy names' do
          client.should_receive(:set_load_balancer_policies_of_listener).with(
            :load_balancer_name => load_balancer.name,
            :load_balancer_port => listener.port,
            :policy_names => [])
          listener.remove_policy
        end

      end

      context '#exists?' do

        it 'returns false if the load balancer does not exist' do

          # no load balancers defined
          response = client.stub_for(:describe_load_balancers)
          response.data[:load_balancer_descriptions] = []
          client.stub(:describe_load_balancers).and_return(response)

          listener.exists?.should == false

        end

        it 'returns false if the load balancer policy does not exist' do

          response = client.stub_for(:describe_load_balancers)
          response.data[:load_balancer_descriptions] = [
            {
              :load_balancer_name => load_balancer.name,
              :listener_descriptions => [],
            }
          ]
          client.stub(:describe_load_balancers).and_return(response)

          listener.exists?.should == false

        end

        it 'returns true if the load balancer policy is described' do

          response = client.stub_for(:describe_load_balancers)
          response.data[:load_balancer_descriptions] = [
            {
              :load_balancer_name => load_balancer.name,
              :listener_descriptions => [
                { :listener => { :load_balancer_port => listener.port } },
              ]
            }
          ]

          client.stub(:describe_load_balancers).and_return(response)

          listener.exists?.should == true

        end

      end

      context '#delete' do

        it 'calls delete_load_balancer_listeners on the client' do
          client.should_receive(:delete_load_balancer_listeners).with(
            :load_balancer_name => load_balancer.name,
            :load_balancer_ports => [listener.port])
          listener.delete
        end

      end

    end
  end
end
