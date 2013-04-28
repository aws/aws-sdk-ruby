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
require 'time'

module AWS
  class Route53
    describe HostedZoneCollection do

      let(:config) { stub_config }

      let(:client) { config.route_53_client }

      let(:hosted_zones) { HostedZoneCollection.new(:config => config) }

      let(:create_opts) {{
        :name => 'example.com.',
        :caller_reference => "CreateHostedZone, example.com., #{now.httpdate}",
        :hosted_zone_config => {
          :comment => 'An example.',
        },
      }}

      let(:now) {
        Time.now
      }

      let(:response) {
        client.stub_for(:create_hosted_zone)
      }

      let(:details) {{
        :id => '/hostedzone/0123456',
        :name => 'example.com.',
        :change_info => {
          :id => 'ABCDEF',
          :status => 'PENDING',
          :submitted_at => now,
        },
        :delegation_set => [
          'ns1.example.com.',
          'ns2.example.com.',
        ],
      }}

      before(:each) do
        response.data[:hosted_zone] = details
        response.data[:change_info] = { :id => 'change-id' }
        client.stub(:create_hosted_zone).and_return(response)
      end

      context '#create' do

        it 'calls #create_hosted_zone on the client' do
          client.should_receive(:create_hosted_zone).with(create_opts)
          hosted_zones.create('example.com.', :comment => 'An example.')
        end

        it 'returns a hosted zone' do
          client.should_receive(:create_hosted_zone)
          hosted_zones.create('example.com.').should be_a(HostedZone)
        end

        it 'returns a hosted zone with the proper id' do
          client.should_receive(:create_hosted_zone)
          hosted_zones.create('example.com.').id.should == details[:id].sub(%r!/hostedzone/!, '')
        end

        it 'returns a hosted zone with the proper config' do
          client.should_receive(:create_hosted_zone)
          hosted_zones.create('example.com.').config.should eq(config)
        end

      end

      context '#[]' do

        it 'returns a hosted zone' do
          hosted_zone = hosted_zones['ABCDEF']
          hosted_zone.should be_a(HostedZone)
          hosted_zone.id.should == 'ABCDEF'
          hosted_zone.config.should == config
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { hosted_zones }
        let(:client_method)   { :list_hosted_zones }
        let(:next_token_key)  { :marker }
        let(:limit_key)       { :maxitems }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:next_marker] = token
        end

        def stub_n_members response, n
          response.data[:hosted_zones] = (1..n).map { |i|
            { :id => "/hostedzone/#{i.to_s * 6}" }
          }
        end

        it 'yields hosted zones' do
          stub_n_members(response, 2)
          hosted_zones.count.should == 2
          hosted_zones.each { |a| a.should be_a(HostedZone) }
          hosted_zones.each { |a| a.config.should == config }
          hosted_zones.map(&:id).should == %w(111111 222222)
        end

      end

    end
  end
end
