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
    describe NotificationConfigurationCollection do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:group) { Group.new('group-name', :config => config) }

      let(:configurations) {
        NotificationConfigurationCollection.new(:group => group)
      }

      context '#group' do

        it 'returns the group' do
          configurations.group.should == group
        end

        it 'is aliased as auto_scaling_group' do
          configurations.auto_scaling_group.should == configurations.group
        end

        it 'returns nil when initialized without a group' do
          configs = NotificationConfigurationCollection.new
          configs.group.should be_nil
        end

      end

      context '#create' do

        it 'calls #put_notification_configuration on the client' do

          client.should_receive(:put_notification_configuration).with(
            :auto_scaling_group_name => group.name,
            :topic_arn => 'topic-arn',
            :notification_types => %w(type))

          configurations.create(
            :topic => 'topic-arn',
            :types => ['type'])

        end

        it 'returns a notification configuration' do

          types = %w(type1 type2)

          notification_config = configurations.create(
            :topic => 'topic-arn', :types => types)

          notification_config.group.should == group
          notification_config.topic_arn.should == 'topic-arn'
          notification_config.topic.should == SNS::Topic.new('topic-arn')
          notification_config.notification_types.should == types

        end

        it 'gets the full list of notification types if you omit types' do

          types = %w(t1 t2 t3 t4)
          resp = client.stub_for(:describe_auto_scaling_notification_types)
          resp.stub(:auto_scaling_notification_types).and_return(types)
          client.should_receive(:describe_auto_scaling_notification_types).
            and_return(resp)

          config = configurations.create(:topic => 'topic-arn')
          config.notification_types.should == types

        end

      end

      context '#each' do

        let(:resp) { client.stub_for(:describe_notification_configurations) }

        let(:details) {[
          double('c', :auto_scaling_group_name => group.name, :topic_arn => '1', :notification_type => '1'),
          double('c', :auto_scaling_group_name => group.name, :topic_arn => '1', :notification_type => '2'),
          double('c', :auto_scaling_group_name => group.name, :topic_arn => '1', :notification_type => '3'),
          double('c', :auto_scaling_group_name => group.name, :topic_arn => '1', :notification_type => '4'),
          double('c', :auto_scaling_group_name => group.name, :topic_arn => '1', :notification_type => '5'),
          double('c', :auto_scaling_group_name => group.name, :topic_arn => '2', :notification_type => '1'),
          double('c', :auto_scaling_group_name => group.name, :topic_arn => '2', :notification_type => '2'),
          double('c', :auto_scaling_group_name => group.name, :topic_arn => '2', :notification_type => '3'),
          double('c', :auto_scaling_group_name => 'other', :topic_arn => '3', :notification_type => '1'),
          double('c', :auto_scaling_group_name => 'other', :topic_arn => '3', :notification_type => '2'),
        ]}

        let(:configs) { configurations.to_a }

        before(:each) do
          resp.stub(:notification_configurations).and_return(details)
          client.stub(:describe_notification_configurations).and_return(resp)
        end

        it 'calls #describe_notification_configurations with the group name' do

          client.should_receive(:describe_notification_configurations).with(
            :auto_scaling_group_names => [group.name]).and_return(resp)

          configs

        end

        it 'omits the auto scaling name when not provided' do
          client.should_receive(:describe_notification_configurations).
            with({}).and_return(resp)
          configurations = NotificationConfigurationCollection.new(:config => config)
          configurations.to_a
        end

        it 'yeilds notification configurations' do
          configs.count.should == 3
          configs.each{|c| c.should be_a(NotificationConfiguration) }
        end

        it 'yields configurations with the proper topic arn' do
          configs.map(&:topic_arn).sort.should == %w(1 2 3)
        end

        it 'yields configurations with the proper topics' do
          configs.map(&:topic).sort_by(&:name).should == [
            SNS::Topic.new('1', :config => config),
            SNS::Topic.new('2', :config => config),
            SNS::Topic.new('3', :config => config),
          ]
        end

        it 'yields configurations with the proper group' do
          other = Group.new('other', :config => config)
          configs.map(&:group).sort_by(&:name).should == [group,group,other]
        end

        it 'yields configurations with the proper notification types' do
          configs.map(&:notification_types).sort_by(&:size).should == [
            %w(1 2),
            %w(1 2 3),
            %w(1 2 3 4 5),
          ]
        end

      end

    end
  end
end
