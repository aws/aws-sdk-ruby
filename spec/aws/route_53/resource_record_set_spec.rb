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
    describe ResourceRecordSet do

      let(:config) { stub_config }

      let(:client) { config.route_53_client }

      let(:rrset) { ResourceRecordSet.new('foo.example.com.', 'A', :set_identifier => 'foo1', :hosted_zone_id => 'ABCDEF', :config => config) }

      let(:response) { client.stub_for(:list_resource_record_sets) }

      let(:now) { Time.now }

      let(:details) {{
        :name => 'foo.example.com.',
        :type => 'A',
        :set_identifier => 'foo1',
        :weight => 100,
        :ttl => 300,
        :resource_records => [
          { :value => '192.168.0.1' },
        ],
      }}

      before(:each) do
        response.data[:resource_record_sets] = [ details ]
        client.stub(:list_resource_record_sets).and_return(response)
      end

      shared_examples_for "resource record set attribute" do |attr_name|

        it 'returns the attribute value' do
          rrset.send(attr_name).should == details[attr_name]
        end

      end

      it_behaves_like "resource record set attribute", :name
      it_behaves_like "resource record set attribute", :type
      it_behaves_like "resource record set attribute", :set_identifier
      it_behaves_like "resource record set attribute", :weight
      it_behaves_like "resource record set attribute", :region
      it_behaves_like "resource record set attribute", :ttl
      it_behaves_like "resource record set attribute", :resource_records
      it_behaves_like "resource record set attribute", :alias_target

      context '#exists?' do

        it 'returns true if it can be described' do
          response.data[:resource_record_sets] = [ details ] # not empty
          rrset.exists?.should == true
        end

        it 'returns false if it can not be found' do
          response.data[:resource_record_sets] = [ {} ] # empty
          rrset.exists?.should == false
        end

      end

      context '#delete' do

        it 'calls #change_resource_record_sets on the client' do
          response = client.stub_for(:change_resource_record_sets)
          response.data[:change_info] = {
            :id => '0123456',
            :status => 'PENDING',
            :submitted_at => now,
            :comment => 'comment',
          }
          client.stub(:change_resource_record_sets).and_return(response)
          client.should_receive(:change_resource_record_sets)
          rrset.delete.should be_a(Route53::ChangeInfo)
        end

      end
    end
  end
end
