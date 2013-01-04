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
    describe ChangeInfo do

      let(:config) { stub_config }

      let(:client) { config.route_53_client }

      let(:change_info) { ChangeInfo.new('012345', :config => config) }

      let(:response) { client.stub_for(:get_change) }

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
        client.stub(:get_change).and_return(response)
      end

      shared_examples_for "change info attribute" do |attr_name|

        it 'returns the attribute value' do
          change_info.send(attr_name).should == details[attr_name]
        end

      end

      it_behaves_like "change info attribute", :id
      it_behaves_like "change info attribute", :status
      it_behaves_like "change info attribute", :submitted_at

      context '#exists?' do

        it 'returns true if it can be described' do
          response.data[:change_info] = details # not empty
          change_info.exists?.should == true
        end

        it 'returns false if it can not be found' do
          response.data[:change_info] = {} # empty
          change_info.exists?.should == false
        end

      end

    end
  end
end
