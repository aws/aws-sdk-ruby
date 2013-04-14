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
  class CloudFormation
    describe StackSummaryCollection do

      let(:config) { stub_config }

      let(:client) { config.cloud_formation_client }

      let(:summaries) { StackSummaryCollection.new(:config => config) }

      context '#with_status' do

        it 'returns a stack collection' do
          summaries.with_status(:create_in_progress).should
            be_a(StackSummaryCollection)
        end

        it 'returns a collection with the proper config' do
          summaries.with_status(:create_in_progress).config.should == config
        end

        it 'passes the status filter to #list_stacks when enumerated' do

          client.should_receive(:list_stacks).
            with(:stack_status_filter => ['CREATE_IN_PROGRESS']).
            and_return(client.stub_for(:list_stacks))

          summaries.with_status('CREATE_IN_PROGRESS').to_a

        end

        it 'up-cases the status before calling #list_stacks' do

          client.should_receive(:list_stacks).
            with(:stack_status_filter => ['CREATE_IN_PROGRESS']).
            and_return(client.stub_for(:list_stacks))

          summaries.with_status(:create_in_progress).to_a

        end

        it 'accepts statuses in an array' do

          client.should_receive(:list_stacks).
            with(:stack_status_filter => %w(ABC_XYZ MNO)).
            and_return(client.stub_for(:list_stacks))

          summaries.with_status(:abc_xyz, 'mno').to_a

        end

        it 'accepts statuses as a list' do

          client.should_receive(:list_stacks).
            with(:stack_status_filter => %w(ABC MNO XYZ)).
            and_return(client.stub_for(:list_stacks))

          summaries.with_status(:abc, :mno, :xyz).to_a

        end

      end

      it_behaves_like "a pageable collection" do

        let(:collection)      { summaries }
        let(:client_method)   { :list_stacks }
        let(:request_options) {{}}
        let(:now)             { Time.now }
        let(:member_class)    { Hash }

        def stub_n_members response, n
          response.data[:stack_summaries] = (1..n).map do |i|
            {
              :creation_time => now,
              :last_updated_time => now,
              :stack_name => "stack-#{i}",
              :stack_id => "stack-id-#{i}",
              :stack_status => "STATUS_VALUE",
              :stack_status_reason => "status-reason",
              :deletion_time => now,
              :template_description => 'template-desc',
            }
          end
        end

        it 'yields populated stack summaries' do
          stub_n_members(response, 2)
          summaries.to_a.should == [
            {
              :creation_time => now,
              :last_updated_time => now,
              :stack_name => "stack-1",
              :stack_id => "stack-id-1",
              :stack_status => "STATUS_VALUE",
              :stack_status_reason => "status-reason",
              :deletion_time => now,
              :template_description => 'template-desc',
            },
            {
              :creation_time => now,
              :last_updated_time => now,
              :stack_name => "stack-2",
              :stack_id => "stack-id-2",
              :stack_status => "STATUS_VALUE",
              :stack_status_reason => "status-reason",
              :deletion_time => now,
              :template_description => 'template-desc',
            },
          ]
        end

      end

    end
  end
end
