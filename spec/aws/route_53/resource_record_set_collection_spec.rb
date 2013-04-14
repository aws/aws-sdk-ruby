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
    describe ResourceRecordSetCollection do

      let(:config) { stub_config }

      let(:client) { config.route_53_client }

      let(:rrsets) { ResourceRecordSetCollection.new('ABCDEF', :config => config) }

      let(:create_opts) {{
        :hosted_zone_id => 'ABCDEF',
        :change_batch => {
          :changes => [
            {
              :action => 'CREATE',
              :resource_record_set => details,
            },
          ],
        }
      }}

      let(:now) {
        Time.now
      }

      let(:response) {
        client.stub_for(:list_resource_record_sets)
      }

      let(:details) {{
        :name => 'baz.example.com.',
        :type => 'CNAME',
        :ttl => 300,
        :resource_records => [
          { :value => 'bar.example.com.' },
        ],
      }}

      let(:create_response) {
        client.stub_for(:change_resource_record_sets)
      }

      let(:create_details) {{
        :id => '0123456',
        :status => 'PENDING',
        :submitted_at => now,
        :comment => 'comment',
      }}

      before(:each) do
        response.data[:resource_record_sets] = [ details ]
        client.stub(:list_resource_record_sets).and_return(response)

        create_response.data[:change_info] = create_details
        client.stub(:change_resource_record_sets).and_return(create_response)
      end

      context '#create' do

        it 'calls #change_resource_record_sets on the client' do
          client.should_receive(:change_resource_record_sets).with(create_opts)
          rrsets.create(details[:name], details[:type], details)
        end

        it 'returns a resource record set' do
          client.should_receive(:change_resource_record_sets)
          rrsets.create(details[:name], details[:type], details).should be_a(ResourceRecordSet)
        end

        it 'returns a resource record set with the proper config' do
          client.should_receive(:change_resource_record_sets)
          rrsets.create(details[:name], details[:type], details).config.should eq(config)
        end

      end

      context '#[]' do

        it 'returns a resource record set' do
          rrset = rrsets[details[:name], details[:type]]
          rrset.should be_a(ResourceRecordSet)
          rrset.name.should == details[:name]
          rrset.type.should == details[:type]
          rrset.config.should == config
        end

      end

      context '#each' do

        def stub_n_members response, n
          response.data[:resource_record_sets] = (1..n).map { |i|
            {
              :name => "ns#{i}.example.com.",
              :type => 'NS',
              :resource_records => [
                {:value => "172.16.0.#{i}"},
              ],
            }
          }
        end

        it 'yields resource record sets' do
          stub_n_members(response, 2)
          rrsets.count.should == 2
          rrsets.each { |a| a.should be_a(ResourceRecordSet) }
          rrsets.each { |a| a.config.should == config }
          rrsets.map(&:name).should == %w(ns1.example.com. ns2.example.com.)
        end

      end

    end
  end
end
