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

      let(:load_balancer) { LoadBalancer.new('lb-name', :config => config) }

      let(:listeners) { ListenerCollection.new(load_balancer) }

      context '#create' do

        it 'calls #create_load_balancer_listeners on the client' do

          client.should_receive(:create_load_balancer_listeners).with(
            :load_balancer_name => load_balancer.name,
            :listeners => [{
              :load_balancer_port => 80,
              :protocol => 'TCP',
              :instance_port => 81,
              :instance_protocol => 'HTTP',
              :ssl_certificate_id => 'server-cert-arn',
            }]
          )

          listeners.create(
            :port => 80,
            :protocol => :tcp,
            :instance_port => 81,
            :instance_protocol => :http,
            :server_certificate => 'server-cert-arn')

        end

        it 'accepts IAM server certificates' do

          cert = IAM::ServerCertificate.new('cert-id')
          cert.stub(:arn).and_return('cert-arn')

          client.should_receive(:create_load_balancer_listeners).with(
            :load_balancer_name => load_balancer.name,
            :listeners => [{
              :load_balancer_port => 80,
              :protocol => 'TCP',
              :instance_port => 81,
              :instance_protocol => 'HTTP',
              :ssl_certificate_id => cert.arn,
            }]
          )

          listeners.create(
            :port => 80,
            :protocol => :tcp,
            :instance_port => 81,
            :instance_protocol => :http,
            :server_certificate => cert)

        end

        it 'returns a listener' do

          l = listeners.create(
            :port => 80,
            :protocol => :tcp,
            :instance_port => 81,
            :instance_protocol => :http)

          l.should be_an(ELB::Listener)
          l.config.should == config
          l.port.should == 80

        end

      end

      context '#[]' do

        it 'returns a listener' do
          listeners[80].should be_a(Listener)
        end

        it 'returns a listener with the proper load balancer' do
          listeners[80].load_balancer.should == listeners.load_balancer
        end

        it 'returns a listener with the proper config' do
          listeners[80].config.should == listeners.config
        end

        it 'returns a listener with the correct port' do
          listeners[82].port.should == 82
        end

        it 'accepts port as a string' do
          listeners['80'].port.should == 80
        end

      end

      context '#each' do

        let(:response) { client.stub_for(:describe_load_balancers) }

        before(:each) do

          listeners = []

          listeners << {
            :listener => {
              :load_balancer_port => 80,
              :protocol => 'TCP',
              :instance_port => 81,
              :instance_protocol => 'HTTP',
            }
          }

          listeners << {
            :listener => {
              :load_balancer_port => 443,
              :protocol => 'HTTPS',
              :instance_port => 443,
              :instance_protocol => 'HTTPS',
              :ssl_certificate_id => 'cert-arn',
            }
          }

          lb = {
            :load_balancer_name => load_balancer.name,
            :listener_descriptions => listeners,
          }

          response.data[:load_balancer_descriptions] = [lb]

        end

        it 'yields once for each listener on the load balancer' do
          listeners.to_a.size.should == 2
        end

        it 'yield listeners' do
          listeners.each {|l| l.should be_a(Listener) }
        end

        it 'yields listeners with configs' do
          listeners.each {|l| l.config.should == listeners.config }
        end

        it 'yields populated listeners' do
          list = listeners.to_a
          list[0].port.should == 80
          list[0].protocol.should == :tcp
          list[0].instance_port.should == 81
          list[0].instance_protocol.should == :http
          list[0].server_certificate.should == nil
          list[1].port.should == 443
          list[1].protocol.should == :https
          list[1].instance_port.should == 443
          list[1].instance_protocol.should == :https
        end

      end

    end
  end
end
