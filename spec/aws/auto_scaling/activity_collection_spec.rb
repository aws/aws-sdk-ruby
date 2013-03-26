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
    describe ActivityCollection do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:activities) { ActivityCollection.new(:config => config) }

      context '#[]' do

        it 'returns an activity' do
          activity = activities['id']
          activity.should be_an(Activity)
          activity.config.should == config
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { activities }
        let(:client_method)   { :describe_scaling_activities }
        let(:next_token_key)  { :next_token }
        let(:limit_key)       { :max_records }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:next_token] = token
        end

        def stub_n_members response, n
          response.data[:activities] = (1..n).map{|i|
            { :activity_id => i.to_s }
          }
        end

        it 'yields activities' do
          stub_n_members(response,2)
          activities.count.should == 2
          activities.each{|a| a.should be_an(Activity) }
          activities.each{|a| a.config.should == config }
          activities.map(&:id).should == %w(1 2)
        end

        it 'adds the group when provided' do

          client.should_receive(:describe_scaling_activities).
            with(:auto_scaling_group_name => 'group').
            and_return(response)

          Group.new('group', :config => config).activities.to_a

        end

      end

    end
  end
end
