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
    describe DHCPOptionsCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { DHCPOptions }

        let(:client_method) { :describe_dhcp_options }

        def stub_two_members(resp)
          resp.data[:dhcp_options_set] = [
            { :dhcp_options_id => 'id1', :dhcp_configuration_set => [] },
            { :dhcp_options_id => 'id2', :dhcp_configuration_set => [] },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:dhcp_options) { collection }

        context '#each' do

          it 'yields dhcp options' do
            opts = collection.to_a
            opts.each{|t| t.should be_a(DHCPOptions) }
            opts.map(&:id).should == %w(id1 id2)
          end

        end

        context '#[]' do

          it 'returns a dhcp options' do
            opts = dhcp_options['id']
            opts.should be_a(DHCPOptions)
            opts.id.should == 'id'
            opts.config.should == config
          end

        end

        context '#create' do

          let(:details) {{
            :dhcp_options_id => 'id',
            :dhcp_configuration => [],
          }}

          let(:response) { client.stub_for(:create_dhcp_options) }

          before(:each) do
            response.data[:dhcp_options] = details
            client.stub(:create_dhcp_options).and_return(response)
          end

          it 'calls #create_dhcp_options on the client' do
            client.should_receive(:create_dhcp_options).
              with(:dhcp_configurations => []).
              and_return(response)
            dhcp_options.create
          end

          it 'accepts a domain name' do
            client.should_receive(:create_dhcp_options).with(
              :dhcp_configurations => [
                { :key => 'domain-name', :values => %w(domain) },
              ]
            ).and_return(response)
            dhcp_options.create :domain_name => 'domain'
          end

          it 'accepts a list of domain name servers' do
            client.should_receive(:create_dhcp_options).with(
              :dhcp_configurations => [
                { :key => 'domain-name-servers', :values => %w(abc xyz) },
              ]
            ).and_return(response)
            dhcp_options.create :domain_name_servers => %w(abc xyz)
          end

          it 'accepts a list of ntp servers' do
            client.should_receive(:create_dhcp_options).with(
              :dhcp_configurations => [
                { :key => 'ntp-servers', :values => %w(abc xyz) },
              ]
            ).and_return(response)
            dhcp_options.create :ntp_servers => %w(abc xyz)
          end

          it 'accepts a list of ntp servers' do
            client.should_receive(:create_dhcp_options).with(
              :dhcp_configurations => [
                { :key => 'netbios-name-servers', :values => %w(abc xyz) },
              ]
            ).and_return(response)
            dhcp_options.create :netbios_name_servers => %w(abc xyz)
          end

          it 'accepts a netbios node type' do
            client.should_receive(:create_dhcp_options).with(
              :dhcp_configurations => [
                { :key => 'netbios-node-type', :values => %w(2) },
              ]
            ).and_return(response)
            dhcp_options.create :netbios_node_type => 2
          end

        end
      end
    end
  end
end
