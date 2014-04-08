# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class SimpleWorkflow
    describe ActivityType do

      config_attributes = [
        :default_task_heartbeat_timeout,
        :default_task_schedule_to_close_timeout,
        :default_task_schedule_to_start_timeout,
        :default_task_start_to_close_timeout,
      ]

      it_should_behave_like("a simple workflow type", config_attributes) do

        let(:config) { stub_config }
        let(:client) { config.simple_workflow_client }
        let(:domain) { Domain.new('domain-name', :config => config) }
        let(:type)   { ActivityType.new(domain, 'name', 'version') }

        let(:type_class)       { ActivityType }
        let(:describe_method)  { :describe_activity_type }
        let(:deprecate_method) { :deprecate_activity_type }

      end
    end
  end
end
