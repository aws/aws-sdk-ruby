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
  class Route53
    describe HostedZone do

      let(:config) { stub_config }

      let(:client) { config.route_53_client }

      let(:hosted_zone) { HostedZone.new('ABCDEF', :config => config) }

      let(:response) { client.stub_for(:get_hosted_zone) }

      let(:now) { Time.now }

      let(:details) {{
        :id => '/hostedzone/ABCDEF',
        :name => 'example.com.',
        :caller_reference => "CreateHostedZone, ABCDEF, #{Time.now.httpdate}",
        :config => {
          :comment => 'this is an example.',
        },
        :resource_record_set_count => 108,
        :delegation_set => [
          'ns1.example.com.',
          'ns2.example.com.',
        ],
      }}

      before(:each) do
        response.data[:hosted_zone] = details
        client.stub(:get_hosted_zone).and_return(response)
      end

      context '#id' do

        it 'returns plain id' do
          hosted_zone.id.should == details[:id].sub(%r!^/hostedzone/!, '')
        end

      end

      shared_examples_for "hosted zone attribute" do |attr_name|

        it 'returns the attribute value' do
          hosted_zone.send(attr_name).should == details[attr_name]
        end

      end

      it_behaves_like "hosted zone attribute", :name
      it_behaves_like "hosted zone attribute", :caller_reference
      it_behaves_like "hosted zone attribute", :resource_record_set_count
      it_behaves_like "hosted zone attribute", :delegation_set

      context '#configuration' do

        it 'populates from the :config response data' do
          hosted_zone.configuration.should eq(details[:config])
        end

      end

      context '#exists?' do

        it 'returns true if it can be described' do
          response.data[:hosted_zone] = details # not empty
          hosted_zone.exists?.should == true
        end

        it 'returns false if it can not be found' do
          response.data[:hosted_zone] = {} # empty
          hosted_zone.exists?.should == false
        end

      end

      context '#delete' do

        it 'calls #delete_hosted_zone on the client' do
          response = client.stub_for(:delete_hosted_zone)
          response.data[:change_info] = {
            :id => '012345',
            :status => 'PENDING',
            :submitted_at => now,
          }
          client.stub(:delete_hosted_zone).and_return(response)
          client.should_receive(:delete_hosted_zone)
          hosted_zone.delete.should be_a(Route53::ChangeInfo)
        end

      end
    end
  end
end
