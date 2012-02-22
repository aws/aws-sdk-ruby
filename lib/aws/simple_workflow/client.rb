# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module AWS
  class SimpleWorkflow

    # @private
    class Client < Core::JsonClient

      API_VERSION = '2012-01-25'

      TARGET_PREFIX = "SimpleWorkflowService."

      REQUEST_CLASS = SimpleWorkflow::Request

      CACHEABLE_REQUESTS = Set[
        :count_pending_activity_tasks,
        :count_pending_decision_tasks,
        :count_closed_workflow_executions,
        :count_open_workflow_executions,
        :describe_activity_type,
        :describe_domain,
        :describe_workflow_execution,
        :describe_workflow_type,
        :get_workflow_execution_history,
        #:poll_for_decision_task, # see below for expanded logic
        :list_activity_types,
        :list_domains,
        :list_closed_workfow_executions,
        :list_open_workfow_executions,
        :list_workfow_types,
      ]

      configure_client

      private
      def cacheable_request? name, options
        if name == :poll_for_decision_task
          options.keys.include?(:next_page_token)
        else
          self.class::CACHEABLE_REQUESTS.include?(name)
        end
      end

    end
  end
end
