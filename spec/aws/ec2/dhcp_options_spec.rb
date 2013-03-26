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
    describe DHCPOptions do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:dhcp_options) { DHCPOptions.new('id', :config => config) }

      it_should_behave_like "an ec2 resource object"

      it_should_behave_like "a tagged ec2 item" do
        let(:describe_call) { :describe_dhcp_options }
        let(:taggable) { dhcp_options }
        def stub_tags(resp, tags)
          resp.data[:dhcp_options_set] = [
            { :dhcp_options_id => 'id', :tag_set => tags },
          ]
        end
      end

      context '#dhcp_options_id' do

        it 'returns the dhcp options id passed in' do
          dhcp_options.dhcp_options_id.should == 'id'
        end

        it 'is aliased as #id' do
          dhcp_options.id.should == dhcp_options.dhcp_options_id
        end

      end

      context '#delete' do

        it 'calls #delete_dhcp_options on the client' do
          client.should_receive(:delete_dhcp_options).
            with(:dhcp_options_id => dhcp_options.id)
          dhcp_options.delete
        end

      end

      context '#associate' do

        it 'calls #associate_dhcp_options on the client' do
          client.should_receive(:associate_dhcp_options).with(
            :dhcp_options_id => dhcp_options.id,
            :vpc_id => 'vpc-123')
          dhcp_options.associate 'vpc-123'
        end

        it 'accepts a vpc object' do
          client.should_receive(:associate_dhcp_options).with(
            :dhcp_options_id => dhcp_options.id,
            :vpc_id => 'vpc-123')
          dhcp_options.associate VPC.new('vpc-123')
        end

      end

      context 'existing' do

        let(:response) { client.stub_for(:describe_dhcp_options) }

        before(:each) do
          response.data[:dhcp_options_set] = [
            {
              :dhcp_options_id => dhcp_options.id,
              :dhcp_configuration_set => [
                {
                  :key => 'domain-name',
                  :value_set => [{ :value => 'a' }]
                }, {
                  :key => 'domain-name-servers',
                  :value_set => [{ :value => 'b' }, { :value => 'c' }]
                }, {
                  :key => 'ntp-servers',
                  :value_set => [{ :value => 'd' }, { :value => 'e' }]
                }, {
                  :key => 'netbios-name-servers',
                  :value_set => [{ :value => 'f' }, { :value => 'g' }]
                },
                {
                  :key => 'netbios-node-type',
                  :value_set => [{ :value => '2' }]
                },
              ]
            }
          ]
          client.stub(:describe_dhcp_options).and_return(response)
        end

        context '#configuration' do

          it 'returns the configuration as a hash' do
            dhcp_options.configuration.should == {
              :domain_name => 'a',
              :domain_name_servers => %w(b c),
              :ntp_servers => %w(d e),
              :netbios_name_servers => %w(f g),
              :netbios_node_type => 2,
            }
          end

        end

        context '#exists?' do

          it 'calls #describe_dhcp_options to determine if it exists' do
            client.should_receive(:describe_dhcp_options).
              with(:dhcp_options_ids => [dhcp_options.id]).
              and_return(response)
            dhcp_options.exists?
          end

          it 'returns true if it can be described' do
            dhcp_options.exists?.should == true
          end

          it 'returns false if an error is raised trying to describe it' do
            client.stub(:describe_dhcp_options).
              and_raise(Errors::InvalidDhcpOptionID::NotFound.new('msg'))
            dhcp_options.exists?.should == false
          end

        end

      end

    end
  end
end
