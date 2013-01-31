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
    describe ChangeBatch do

      let(:config) { stub_config }

      let(:client) { config.route_53_client }

      let(:change_batch) {
        batch = ChangeBatch.new('ABCDEF', :comment => 'a comment', :config => config)
        batch << CreateRequest.new('foo.example.com.', 'A', :resource_records => [{:value => '192.168.1.1'}])
        batch << DeleteRequest.new('bar.example.com.', 'CNAME')
        batch << DeleteRequest.new('baz.example.com.', 'A')
        batch << CreateRequest.new('baz.example.com.', 'A', :resource_records => [{:value => '192.168.1.3'}])
        batch
      }

      let(:response) { client.stub_for(:change_resource_record_sets) }

      let(:details) {{
        :id => '012345',
        :status => 'PENDING',
        :submitted_at => now,
      }}

      let(:now) {
        Time.now
      }

      before(:each) do
        response.data[:change_info] = details
        client.stub(:change_resource_record_sets).and_return(response)
      end

      context '#to_hash' do

        it 'returns hash' do
          change_batch.to_hash.should be_a(Hash)
          change_batch.to_hash[:change_batch][:changes].length.should == change_batch.length
        end

      end

      context '#call' do

        it 'returns change info' do
          response.data[:change_resource_record_sets] = details # not empty
          change_batch.call.should be_a(ChangeInfo)
        end

      end
    end
  end
end
