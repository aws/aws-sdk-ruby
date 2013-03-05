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
  class AutoScaling
    describe LaunchConfiguration do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:activity) { Activity.new('name', :config => config) }

      let(:response) { client.stub_for(:describe_scaling_activities) }

      let(:now) { Time.now }

      let(:groups) { [] }

      let(:details) {{
        :activity_id => activity.id,
        :auto_scaling_group_name => 'group',
        :cause => 'cause',
        :description => 'desc',
        :details => 'details',
        :end_time => now,
        :start_time => now,
        :progress => 100,
        :status_code => 'code',
        :status_message => 'msg',
      }}

      before(:each) do
        response.data[:activities] = [details]
        client.stub(:describe_scaling_activities).and_return(response)
      end

      context '#id' do

        it 'is set in the constructor' do
          Activity.new('id').id.should == 'id'
        end

      end

      shared_examples_for "activity attribute" do |attr_name|

        it 'describes scaling activities to fetch attribute' do

          client.should_receive(:describe_scaling_activities).
            with(:activity_ids => [activity.id]).
            and_return(response)

          activity.send(attr_name)

        end

        it 'returns the attribute value' do
          activity.send(attr_name).should == details[attr_name]
        end

      end

      it_behaves_like "activity attribute", :auto_scaling_group_name
      it_behaves_like "activity attribute", :cause
      it_behaves_like "activity attribute", :description
      it_behaves_like "activity attribute", :details
      it_behaves_like "activity attribute", :end_time
      it_behaves_like "activity attribute", :start_time
      it_behaves_like "activity attribute", :progress
      it_behaves_like "activity attribute", :status_code
      it_behaves_like "activity attribute", :status_message

      context '#group' do

        it 'returns an auto scaling group' do
          activity.group.should == Group.new('group', :config => config)
        end

      end

      context '#exists?' do

        it 'returns true if it can be described' do
          response.data[:activities] = [{}] # not empty
          activity.exists?.should == true
        end

        it 'returns false if it can not be found' do
          response.data[:activities] = [] # empty
          activity.exists?.should == false
        end

      end

    end
  end
end
