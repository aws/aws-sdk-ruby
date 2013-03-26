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
    describe NotificationConfiguration do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:group) { Group.new('group-name', :config => config) }

      let(:notification_config) {
        NotificationConfiguration.new(group, 'topic-arn', %w(t1 t2))
      }

      context '#group' do

        it 'returns the group' do
          notification_config.group.should == group
        end

      end

      context '#topic_arn' do

        it 'returns the topic arn string' do
          notification_config.topic_arn.should == 'topic-arn'
        end

      end

      context '#topic' do

        it 'returns the sns topic' do
          notification_config.topic.should be_a(SNS::Topic)
          notification_config.topic.arn.should == 'topic-arn'
          notification_config.topic.config.should == config
        end

      end

      context '#notification_types' do

        it 'returns the notification type string' do
          notification_config.notification_types.should == %w(t1 t2)
        end

      end

      context '#delete' do

        it 'calls #delete_notification_configuration on the client' do
          client.should_receive(:delete_notification_configuration).with(
            :auto_scaling_group_name => group.name,
            :topic_arn => 'topic-arn')
          notification_config.delete
        end

      end

      context '#eql?' do

        it 'returns true if they share the same group and topic' do
          n1 = NotificationConfiguration.new(group, 'topic-arn', [])
          n2 = NotificationConfiguration.new(group, 'topic-arn', [])
          n1.should == n2
        end

        it 'returns false if they have different topics' do
          n1 = NotificationConfiguration.new(group, 'topic-arn', [])
          n2 = NotificationConfiguration.new(group, 'topic2-arn', [])
          n1.should_not == n2
        end

        it 'returns false if they have different groups' do
          g1 = Group.new('g1')
          g2 = Group.new('g2')
          n1 = NotificationConfiguration.new(g1, 'topic-arn', [])
          n2 = NotificationConfiguration.new(g2, 'topic-arn', [])
          n1.should_not == n2
        end

      end

    end
  end
end
