# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module SWF
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :swf

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Returns the number of closed workflow executions within the given
      # domain that meet the specified filtering criteria.
      #
      # <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `tagFilter.tag`\: String constraint. The key is
      #     `swf:tagFilter.tag`.
      #   * `typeFilter.name`\: String constraint. The key is
      #     `swf:typeFilter.name`.
      #   * `typeFilter.version`\: String constraint. The key is
      #     `swf:typeFilter.version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain containing the workflow executions to count.
      # @option params [Types::ExecutionTimeFilter] :start_time_filter
      #   If specified, only workflow executions that meet the start time
      #   criteria of the filter are counted.
      #
      #   <note>`startTimeFilter` and `closeTimeFilter` are mutually exclusive. You must specify one of these in a request but not both.</note>
      # @option params [Types::ExecutionTimeFilter] :close_time_filter
      #   If specified, only workflow executions that meet the close time
      #   criteria of the filter are counted.
      #
      #   <note>`startTimeFilter` and `closeTimeFilter` are mutually exclusive. You must specify one of these in a request but not both.</note>
      # @option params [Types::WorkflowExecutionFilter] :execution_filter
      #   If specified, only workflow executions matching the `WorkflowId` in
      #   the filter are counted.
      #
      #   <note>`closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [Types::WorkflowTypeFilter] :type_filter
      #   If specified, indicates the type of the workflow executions to be
      #   counted.
      #
      #   <note>`closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [Types::TagFilter] :tag_filter
      #   If specified, only executions that have a tag that matches the filter
      #   are counted.
      #
      #   <note>`closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [Types::CloseStatusFilter] :close_status_filter
      #   If specified, only workflow executions that match this close status
      #   are counted. This filter has an affect only if `executionStatus` is
      #   specified as `CLOSED`.
      #
      #   <note>`closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @return [Types::WorkflowExecutionCount] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::WorkflowExecutionCount#count #count} => Integer
      #   * {Types::WorkflowExecutionCount#truncated #truncated} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.count_closed_workflow_executions({
      #     domain: "DomainName", # required
      #     start_time_filter: {
      #       oldest_date: Time.now, # required
      #       latest_date: Time.now,
      #     },
      #     close_time_filter: {
      #       oldest_date: Time.now, # required
      #       latest_date: Time.now,
      #     },
      #     execution_filter: {
      #       workflow_id: "WorkflowId", # required
      #     },
      #     type_filter: {
      #       name: "Name", # required
      #       version: "VersionOptional",
      #     },
      #     tag_filter: {
      #       tag: "Tag", # required
      #     },
      #     close_status_filter: {
      #       status: "COMPLETED", # required, accepts COMPLETED, FAILED, CANCELED, TERMINATED, CONTINUED_AS_NEW, TIMED_OUT
      #     },
      #   })
      #
      # @example Response structure
      #   resp.count #=> Integer
      #   resp.truncated #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def count_closed_workflow_executions(params = {}, options = {})
        req = build_request(:count_closed_workflow_executions, params)
        req.send_request(options)
      end

      # Returns the number of open workflow executions within the given domain
      # that meet the specified filtering criteria.
      #
      # <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `tagFilter.tag`\: String constraint. The key is
      #     `swf:tagFilter.tag`.
      #   * `typeFilter.name`\: String constraint. The key is
      #     `swf:typeFilter.name`.
      #   * `typeFilter.version`\: String constraint. The key is
      #     `swf:typeFilter.version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain containing the workflow executions to count.
      # @option params [required, Types::ExecutionTimeFilter] :start_time_filter
      #   Specifies the start time criteria that workflow executions must meet
      #   in order to be counted.
      # @option params [Types::WorkflowTypeFilter] :type_filter
      #   Specifies the type of the workflow executions to be counted.
      #
      #   <note>`executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [Types::TagFilter] :tag_filter
      #   If specified, only executions that have a tag that matches the filter
      #   are counted.
      #
      #   <note>`executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [Types::WorkflowExecutionFilter] :execution_filter
      #   If specified, only workflow executions matching the `WorkflowId` in
      #   the filter are counted.
      #
      #   <note>`executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @return [Types::WorkflowExecutionCount] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::WorkflowExecutionCount#count #count} => Integer
      #   * {Types::WorkflowExecutionCount#truncated #truncated} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.count_open_workflow_executions({
      #     domain: "DomainName", # required
      #     start_time_filter: { # required
      #       oldest_date: Time.now, # required
      #       latest_date: Time.now,
      #     },
      #     type_filter: {
      #       name: "Name", # required
      #       version: "VersionOptional",
      #     },
      #     tag_filter: {
      #       tag: "Tag", # required
      #     },
      #     execution_filter: {
      #       workflow_id: "WorkflowId", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.count #=> Integer
      #   resp.truncated #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def count_open_workflow_executions(params = {}, options = {})
        req = build_request(:count_open_workflow_executions, params)
        req.send_request(options)
      end

      # Returns the estimated number of activity tasks in the specified task
      # list. The count returned is an approximation and is not guaranteed to
      # be exact. If you specify a task list that no activity task was ever
      # scheduled in then 0 will be returned.
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the `taskList.name` parameter by using a **Condition**
      #   element with the `swf:taskList.name` key to allow the action to
      #   access only certain task lists.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain that contains the task list.
      # @option params [required, Types::TaskList] :task_list
      #   The name of the task list.
      # @return [Types::PendingTaskCount] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PendingTaskCount#count #count} => Integer
      #   * {Types::PendingTaskCount#truncated #truncated} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.count_pending_activity_tasks({
      #     domain: "DomainName", # required
      #     task_list: { # required
      #       name: "Name", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.count #=> Integer
      #   resp.truncated #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def count_pending_activity_tasks(params = {}, options = {})
        req = build_request(:count_pending_activity_tasks, params)
        req.send_request(options)
      end

      # Returns the estimated number of decision tasks in the specified task
      # list. The count returned is an approximation and is not guaranteed to
      # be exact. If you specify a task list that no decision task was ever
      # scheduled in then 0 will be returned.
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the `taskList.name` parameter by using a **Condition**
      #   element with the `swf:taskList.name` key to allow the action to
      #   access only certain task lists.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain that contains the task list.
      # @option params [required, Types::TaskList] :task_list
      #   The name of the task list.
      # @return [Types::PendingTaskCount] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PendingTaskCount#count #count} => Integer
      #   * {Types::PendingTaskCount#truncated #truncated} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.count_pending_decision_tasks({
      #     domain: "DomainName", # required
      #     task_list: { # required
      #       name: "Name", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.count #=> Integer
      #   resp.truncated #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def count_pending_decision_tasks(params = {}, options = {})
        req = build_request(:count_pending_decision_tasks, params)
        req.send_request(options)
      end

      # Deprecates the specified *activity type*. After an activity type has
      # been deprecated, you cannot create new tasks of that activity type.
      # Tasks of this type that were scheduled before the type was deprecated
      # will continue to run.
      #
      # <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `activityType.name`\: String constraint. The key is
      #     `swf:activityType.name`.
      #   * `activityType.version`\: String constraint. The key is
      #     `swf:activityType.version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain in which the activity type is registered.
      # @option params [required, Types::ActivityType] :activity_type
      #   The activity type to deprecate.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.deprecate_activity_type({
      #     domain: "DomainName", # required
      #     activity_type: { # required
      #       name: "Name", # required
      #       version: "Version", # required
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def deprecate_activity_type(params = {}, options = {})
        req = build_request(:deprecate_activity_type, params)
        req.send_request(options)
      end

      # Deprecates the specified domain. After a domain has been deprecated it
      # cannot be used to create new workflow executions or register new
      # types. However, you can still use visibility actions on this domain.
      # Deprecating a domain also deprecates all activity and workflow types
      # registered in the domain. Executions that were started before the
      # domain was deprecated will continue to run.
      #
      # <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :name
      #   The name of the domain to deprecate.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.deprecate_domain({
      #     name: "DomainName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def deprecate_domain(params = {}, options = {})
        req = build_request(:deprecate_domain, params)
        req.send_request(options)
      end

      # Deprecates the specified *workflow type*. After a workflow type has
      # been deprecated, you cannot create new executions of that type.
      # Executions that were started before the type was deprecated will
      # continue to run. A deprecated workflow type may still be used when
      # calling visibility actions.
      #
      # <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `workflowType.name`\: String constraint. The key is
      #     `swf:workflowType.name`.
      #   * `workflowType.version`\: String constraint. The key is
      #     `swf:workflowType.version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain in which the workflow type is registered.
      # @option params [required, Types::WorkflowType] :workflow_type
      #   The workflow type to deprecate.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.deprecate_workflow_type({
      #     domain: "DomainName", # required
      #     workflow_type: { # required
      #       name: "Name", # required
      #       version: "Version", # required
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def deprecate_workflow_type(params = {}, options = {})
        req = build_request(:deprecate_workflow_type, params)
        req.send_request(options)
      end

      # Returns information about the specified activity type. This includes
      # configuration settings provided when the type was registered and other
      # general information about the type.
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `activityType.name`\: String constraint. The key is
      #     `swf:activityType.name`.
      #   * `activityType.version`\: String constraint. The key is
      #     `swf:activityType.version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain in which the activity type is registered.
      # @option params [required, Types::ActivityType] :activity_type
      #   The activity type to get information about. Activity types are
      #   identified by the `name` and `version` that were supplied when the
      #   activity was registered.
      # @return [Types::ActivityTypeDetail] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ActivityTypeDetail#type_info #typeInfo} => Types::ActivityTypeInfo
      #   * {Types::ActivityTypeDetail#configuration #configuration} => Types::ActivityTypeConfiguration
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_activity_type({
      #     domain: "DomainName", # required
      #     activity_type: { # required
      #       name: "Name", # required
      #       version: "Version", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.type_info.activity_type.name #=> String
      #   resp.type_info.activity_type.version #=> String
      #   resp.type_info.status #=> String, one of "REGISTERED", "DEPRECATED"
      #   resp.type_info.description #=> String
      #   resp.type_info.creation_date #=> Time
      #   resp.type_info.deprecation_date #=> Time
      #   resp.configuration.default_task_start_to_close_timeout #=> String
      #   resp.configuration.default_task_heartbeat_timeout #=> String
      #   resp.configuration.default_task_list.name #=> String
      #   resp.configuration.default_task_priority #=> String
      #   resp.configuration.default_task_schedule_to_start_timeout #=> String
      #   resp.configuration.default_task_schedule_to_close_timeout #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_activity_type(params = {}, options = {})
        req = build_request(:describe_activity_type, params)
        req.send_request(options)
      end

      # Returns information about the specified domain, including description
      # and status.
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :name
      #   The name of the domain to describe.
      # @return [Types::DomainDetail] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DomainDetail#domain_info #domainInfo} => Types::DomainInfo
      #   * {Types::DomainDetail#configuration #configuration} => Types::DomainConfiguration
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_domain({
      #     name: "DomainName", # required
      #   })
      #
      # @example Response structure
      #   resp.domain_info.name #=> String
      #   resp.domain_info.status #=> String, one of "REGISTERED", "DEPRECATED"
      #   resp.domain_info.description #=> String
      #   resp.configuration.workflow_execution_retention_period_in_days #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_domain(params = {}, options = {})
        req = build_request(:describe_domain, params)
        req.send_request(options)
      end

      # Returns information about the specified workflow execution including
      # its type and some statistics.
      #
      # <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain containing the workflow execution.
      # @option params [required, Types::WorkflowExecution] :execution
      #   The workflow execution to describe.
      # @return [Types::WorkflowExecutionDetail] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::WorkflowExecutionDetail#execution_info #executionInfo} => Types::WorkflowExecutionInfo
      #   * {Types::WorkflowExecutionDetail#execution_configuration #executionConfiguration} => Types::WorkflowExecutionConfiguration
      #   * {Types::WorkflowExecutionDetail#open_counts #openCounts} => Types::WorkflowExecutionOpenCounts
      #   * {Types::WorkflowExecutionDetail#latest_activity_task_timestamp #latestActivityTaskTimestamp} => Time
      #   * {Types::WorkflowExecutionDetail#latest_execution_context #latestExecutionContext} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_workflow_execution({
      #     domain: "DomainName", # required
      #     execution: { # required
      #       workflow_id: "WorkflowId", # required
      #       run_id: "RunId", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.execution_info.execution.workflow_id #=> String
      #   resp.execution_info.execution.run_id #=> String
      #   resp.execution_info.workflow_type.name #=> String
      #   resp.execution_info.workflow_type.version #=> String
      #   resp.execution_info.start_timestamp #=> Time
      #   resp.execution_info.close_timestamp #=> Time
      #   resp.execution_info.execution_status #=> String, one of "OPEN", "CLOSED"
      #   resp.execution_info.close_status #=> String, one of "COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"
      #   resp.execution_info.parent.workflow_id #=> String
      #   resp.execution_info.parent.run_id #=> String
      #   resp.execution_info.tag_list #=> Array
      #   resp.execution_info.tag_list[0] #=> String
      #   resp.execution_info.cancel_requested #=> Boolean
      #   resp.execution_configuration.task_start_to_close_timeout #=> String
      #   resp.execution_configuration.execution_start_to_close_timeout #=> String
      #   resp.execution_configuration.task_list.name #=> String
      #   resp.execution_configuration.task_priority #=> String
      #   resp.execution_configuration.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.execution_configuration.lambda_role #=> String
      #   resp.open_counts.open_activity_tasks #=> Integer
      #   resp.open_counts.open_decision_tasks #=> Integer
      #   resp.open_counts.open_timers #=> Integer
      #   resp.open_counts.open_child_workflow_executions #=> Integer
      #   resp.open_counts.open_lambda_functions #=> Integer
      #   resp.latest_activity_task_timestamp #=> Time
      #   resp.latest_execution_context #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_workflow_execution(params = {}, options = {})
        req = build_request(:describe_workflow_execution, params)
        req.send_request(options)
      end

      # Returns information about the specified *workflow type*. This includes
      # configuration settings specified when the type was registered and
      # other information such as creation date, current status, and so on.
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `workflowType.name`\: String constraint. The key is
      #     `swf:workflowType.name`.
      #   * `workflowType.version`\: String constraint. The key is
      #     `swf:workflowType.version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain in which this workflow type is registered.
      # @option params [required, Types::WorkflowType] :workflow_type
      #   The workflow type to describe.
      # @return [Types::WorkflowTypeDetail] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::WorkflowTypeDetail#type_info #typeInfo} => Types::WorkflowTypeInfo
      #   * {Types::WorkflowTypeDetail#configuration #configuration} => Types::WorkflowTypeConfiguration
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_workflow_type({
      #     domain: "DomainName", # required
      #     workflow_type: { # required
      #       name: "Name", # required
      #       version: "Version", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.type_info.workflow_type.name #=> String
      #   resp.type_info.workflow_type.version #=> String
      #   resp.type_info.status #=> String, one of "REGISTERED", "DEPRECATED"
      #   resp.type_info.description #=> String
      #   resp.type_info.creation_date #=> Time
      #   resp.type_info.deprecation_date #=> Time
      #   resp.configuration.default_task_start_to_close_timeout #=> String
      #   resp.configuration.default_execution_start_to_close_timeout #=> String
      #   resp.configuration.default_task_list.name #=> String
      #   resp.configuration.default_task_priority #=> String
      #   resp.configuration.default_child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.configuration.default_lambda_role #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_workflow_type(params = {}, options = {})
        req = build_request(:describe_workflow_type, params)
        req.send_request(options)
      end

      # Returns the history of the specified workflow execution. The results
      # may be split into multiple pages. To retrieve subsequent pages, make
      # the call again using the `nextPageToken` returned by the initial call.
      #
      # <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain containing the workflow execution.
      # @option params [required, Types::WorkflowExecution] :execution
      #   Specifies the workflow execution for which to return the history.
      # @option params [String] :next_page_token
      #   If a `NextPageToken` was returned by a previous call, there are more
      #   results available. To retrieve the next page of results, make the call
      #   again using the returned token in `nextPageToken`. Keep all other
      #   arguments unchanged.
      #
      #   The configured `maximumPageSize` determines how many results can be
      #   returned in a single call.
      # @option params [Integer] :maximum_page_size
      #   The maximum number of results that will be returned per call.
      #   `nextPageToken` can be used to obtain futher pages of results. The
      #   default is 1000, which is the maximum allowed page size. You can,
      #   however, specify a page size *smaller* than the maximum.
      #
      #   This is an upper limit only; the actual number of results returned per
      #   call may be fewer than the specified maximum.
      # @option params [Boolean] :reverse_order
      #   When set to `true`, returns the events in reverse order. By default
      #   the results are returned in ascending order of the `eventTimeStamp` of
      #   the events.
      # @return [Types::History] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::History#events #events} => Array&lt;Types::HistoryEvent&gt;
      #   * {Types::History#next_page_token #nextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_workflow_execution_history({
      #     domain: "DomainName", # required
      #     execution: { # required
      #       workflow_id: "WorkflowId", # required
      #       run_id: "RunId", # required
      #     },
      #     next_page_token: "PageToken",
      #     maximum_page_size: 1,
      #     reverse_order: false,
      #   })
      #
      # @example Response structure
      #   resp.events #=> Array
      #   resp.events[0].event_timestamp #=> Time
      #   resp.events[0].event_type #=> String, one of "WorkflowExecutionStarted", "WorkflowExecutionCancelRequested", "WorkflowExecutionCompleted", "CompleteWorkflowExecutionFailed", "WorkflowExecutionFailed", "FailWorkflowExecutionFailed", "WorkflowExecutionTimedOut", "WorkflowExecutionCanceled", "CancelWorkflowExecutionFailed", "WorkflowExecutionContinuedAsNew", "ContinueAsNewWorkflowExecutionFailed", "WorkflowExecutionTerminated", "DecisionTaskScheduled", "DecisionTaskStarted", "DecisionTaskCompleted", "DecisionTaskTimedOut", "ActivityTaskScheduled", "ScheduleActivityTaskFailed", "ActivityTaskStarted", "ActivityTaskCompleted", "ActivityTaskFailed", "ActivityTaskTimedOut", "ActivityTaskCanceled", "ActivityTaskCancelRequested", "RequestCancelActivityTaskFailed", "WorkflowExecutionSignaled", "MarkerRecorded", "RecordMarkerFailed", "TimerStarted", "StartTimerFailed", "TimerFired", "TimerCanceled", "CancelTimerFailed", "StartChildWorkflowExecutionInitiated", "StartChildWorkflowExecutionFailed", "ChildWorkflowExecutionStarted", "ChildWorkflowExecutionCompleted", "ChildWorkflowExecutionFailed", "ChildWorkflowExecutionTimedOut", "ChildWorkflowExecutionCanceled", "ChildWorkflowExecutionTerminated", "SignalExternalWorkflowExecutionInitiated", "SignalExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionSignaled", "RequestCancelExternalWorkflowExecutionInitiated", "RequestCancelExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionCancelRequested", "LambdaFunctionScheduled", "LambdaFunctionStarted", "LambdaFunctionCompleted", "LambdaFunctionFailed", "LambdaFunctionTimedOut", "ScheduleLambdaFunctionFailed", "StartLambdaFunctionFailed"
      #   resp.events[0].event_id #=> Integer
      #   resp.events[0].workflow_execution_started_event_attributes.input #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.execution_start_to_close_timeout #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.task_start_to_close_timeout #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].workflow_execution_started_event_attributes.task_list.name #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.workflow_type.name #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.workflow_type.version #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.tag_list #=> Array
      #   resp.events[0].workflow_execution_started_event_attributes.tag_list[0] #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.task_priority #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.continued_execution_run_id #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.parent_workflow_execution.workflow_id #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.parent_workflow_execution.run_id #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.parent_initiated_event_id #=> Integer
      #   resp.events[0].workflow_execution_started_event_attributes.lambda_role #=> String
      #   resp.events[0].workflow_execution_completed_event_attributes.result #=> String
      #   resp.events[0].workflow_execution_completed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].complete_workflow_execution_failed_event_attributes.cause #=> String, one of "UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].complete_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_failed_event_attributes.reason #=> String
      #   resp.events[0].workflow_execution_failed_event_attributes.details #=> String
      #   resp.events[0].workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].fail_workflow_execution_failed_event_attributes.cause #=> String, one of "UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].fail_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE"
      #   resp.events[0].workflow_execution_timed_out_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].workflow_execution_canceled_event_attributes.details #=> String
      #   resp.events[0].workflow_execution_canceled_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].cancel_workflow_execution_failed_event_attributes.cause #=> String, one of "UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].cancel_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.input #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.new_execution_run_id #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.execution_start_to_close_timeout #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.task_list.name #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.task_priority #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.task_start_to_close_timeout #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.tag_list #=> Array
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.tag_list[0] #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.workflow_type.name #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.workflow_type.version #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.lambda_role #=> String
      #   resp.events[0].continue_as_new_workflow_execution_failed_event_attributes.cause #=> String, one of "UNHANDLED_DECISION", "WORKFLOW_TYPE_DEPRECATED", "WORKFLOW_TYPE_DOES_NOT_EXIST", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].continue_as_new_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_terminated_event_attributes.reason #=> String
      #   resp.events[0].workflow_execution_terminated_event_attributes.details #=> String
      #   resp.events[0].workflow_execution_terminated_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].workflow_execution_terminated_event_attributes.cause #=> String, one of "CHILD_POLICY_APPLIED", "EVENT_LIMIT_EXCEEDED", "OPERATOR_INITIATED"
      #   resp.events[0].workflow_execution_cancel_requested_event_attributes.external_workflow_execution.workflow_id #=> String
      #   resp.events[0].workflow_execution_cancel_requested_event_attributes.external_workflow_execution.run_id #=> String
      #   resp.events[0].workflow_execution_cancel_requested_event_attributes.external_initiated_event_id #=> Integer
      #   resp.events[0].workflow_execution_cancel_requested_event_attributes.cause #=> String, one of "CHILD_POLICY_APPLIED"
      #   resp.events[0].decision_task_scheduled_event_attributes.task_list.name #=> String
      #   resp.events[0].decision_task_scheduled_event_attributes.task_priority #=> String
      #   resp.events[0].decision_task_scheduled_event_attributes.start_to_close_timeout #=> String
      #   resp.events[0].decision_task_started_event_attributes.identity #=> String
      #   resp.events[0].decision_task_started_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].decision_task_completed_event_attributes.execution_context #=> String
      #   resp.events[0].decision_task_completed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].decision_task_completed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].decision_task_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE"
      #   resp.events[0].decision_task_timed_out_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].decision_task_timed_out_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_scheduled_event_attributes.activity_type.name #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.activity_type.version #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.activity_id #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.input #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.control #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.schedule_to_start_timeout #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.schedule_to_close_timeout #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.start_to_close_timeout #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.task_list.name #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.task_priority #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].activity_task_scheduled_event_attributes.heartbeat_timeout #=> String
      #   resp.events[0].activity_task_started_event_attributes.identity #=> String
      #   resp.events[0].activity_task_started_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_completed_event_attributes.result #=> String
      #   resp.events[0].activity_task_completed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_completed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_failed_event_attributes.reason #=> String
      #   resp.events[0].activity_task_failed_event_attributes.details #=> String
      #   resp.events[0].activity_task_failed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_failed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE", "SCHEDULE_TO_START", "SCHEDULE_TO_CLOSE", "HEARTBEAT"
      #   resp.events[0].activity_task_timed_out_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_timed_out_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_timed_out_event_attributes.details #=> String
      #   resp.events[0].activity_task_canceled_event_attributes.details #=> String
      #   resp.events[0].activity_task_canceled_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_canceled_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_canceled_event_attributes.latest_cancel_requested_event_id #=> Integer
      #   resp.events[0].activity_task_cancel_requested_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].activity_task_cancel_requested_event_attributes.activity_id #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.signal_name #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.input #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.external_workflow_execution.workflow_id #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.external_workflow_execution.run_id #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.external_initiated_event_id #=> Integer
      #   resp.events[0].marker_recorded_event_attributes.marker_name #=> String
      #   resp.events[0].marker_recorded_event_attributes.details #=> String
      #   resp.events[0].marker_recorded_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].record_marker_failed_event_attributes.marker_name #=> String
      #   resp.events[0].record_marker_failed_event_attributes.cause #=> String, one of "OPERATION_NOT_PERMITTED"
      #   resp.events[0].record_marker_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].timer_started_event_attributes.timer_id #=> String
      #   resp.events[0].timer_started_event_attributes.control #=> String
      #   resp.events[0].timer_started_event_attributes.start_to_fire_timeout #=> String
      #   resp.events[0].timer_started_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].timer_fired_event_attributes.timer_id #=> String
      #   resp.events[0].timer_fired_event_attributes.started_event_id #=> Integer
      #   resp.events[0].timer_canceled_event_attributes.timer_id #=> String
      #   resp.events[0].timer_canceled_event_attributes.started_event_id #=> Integer
      #   resp.events[0].timer_canceled_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_id #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_type.name #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_type.version #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.control #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.input #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.execution_start_to_close_timeout #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.task_list.name #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.task_priority #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.task_start_to_close_timeout #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.tag_list #=> Array
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.tag_list[0] #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.lambda_role #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_completed_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.result #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_completed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_failed_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.reason #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.details #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_failed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE"
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.started_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.details #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.started_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.started_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.workflow_id #=> String
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.run_id #=> String
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.signal_name #=> String
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.input #=> String
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.control #=> String
      #   resp.events[0].external_workflow_execution_signaled_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].external_workflow_execution_signaled_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].external_workflow_execution_signaled_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.workflow_id #=> String
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.run_id #=> String
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.cause #=> String, one of "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.control #=> String
      #   resp.events[0].external_workflow_execution_cancel_requested_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].external_workflow_execution_cancel_requested_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].external_workflow_execution_cancel_requested_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.workflow_id #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.run_id #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.control #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.workflow_id #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.run_id #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.cause #=> String, one of "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.control #=> String
      #   resp.events[0].schedule_activity_task_failed_event_attributes.activity_type.name #=> String
      #   resp.events[0].schedule_activity_task_failed_event_attributes.activity_type.version #=> String
      #   resp.events[0].schedule_activity_task_failed_event_attributes.activity_id #=> String
      #   resp.events[0].schedule_activity_task_failed_event_attributes.cause #=> String, one of "ACTIVITY_TYPE_DEPRECATED", "ACTIVITY_TYPE_DOES_NOT_EXIST", "ACTIVITY_ID_ALREADY_IN_USE", "OPEN_ACTIVITIES_LIMIT_EXCEEDED", "ACTIVITY_CREATION_RATE_EXCEEDED", "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED", "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].schedule_activity_task_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].request_cancel_activity_task_failed_event_attributes.activity_id #=> String
      #   resp.events[0].request_cancel_activity_task_failed_event_attributes.cause #=> String, one of "ACTIVITY_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].request_cancel_activity_task_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_timer_failed_event_attributes.timer_id #=> String
      #   resp.events[0].start_timer_failed_event_attributes.cause #=> String, one of "TIMER_ID_ALREADY_IN_USE", "OPEN_TIMERS_LIMIT_EXCEEDED", "TIMER_CREATION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].start_timer_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].cancel_timer_failed_event_attributes.timer_id #=> String
      #   resp.events[0].cancel_timer_failed_event_attributes.cause #=> String, one of "TIMER_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].cancel_timer_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.workflow_type.name #=> String
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.workflow_type.version #=> String
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.cause #=> String, one of "WORKFLOW_TYPE_DOES_NOT_EXIST", "WORKFLOW_TYPE_DEPRECATED", "OPEN_CHILDREN_LIMIT_EXCEEDED", "OPEN_WORKFLOWS_LIMIT_EXCEEDED", "CHILD_CREATION_RATE_EXCEEDED", "WORKFLOW_ALREADY_RUNNING", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.workflow_id #=> String
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.control #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.id #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.name #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.input #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.start_to_close_timeout #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].lambda_function_started_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].lambda_function_completed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].lambda_function_completed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].lambda_function_completed_event_attributes.result #=> String
      #   resp.events[0].lambda_function_failed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].lambda_function_failed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].lambda_function_failed_event_attributes.reason #=> String
      #   resp.events[0].lambda_function_failed_event_attributes.details #=> String
      #   resp.events[0].lambda_function_timed_out_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].lambda_function_timed_out_event_attributes.started_event_id #=> Integer
      #   resp.events[0].lambda_function_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE"
      #   resp.events[0].schedule_lambda_function_failed_event_attributes.id #=> String
      #   resp.events[0].schedule_lambda_function_failed_event_attributes.name #=> String
      #   resp.events[0].schedule_lambda_function_failed_event_attributes.cause #=> String, one of "ID_ALREADY_IN_USE", "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED", "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED", "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"
      #   resp.events[0].schedule_lambda_function_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_lambda_function_failed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].start_lambda_function_failed_event_attributes.cause #=> String, one of "ASSUME_ROLE_FAILED"
      #   resp.events[0].start_lambda_function_failed_event_attributes.message #=> String
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_workflow_execution_history(params = {}, options = {})
        req = build_request(:get_workflow_execution_history, params)
        req.send_request(options)
      end

      # Returns information about all activities registered in the specified
      # domain that match the specified name and registration status. The
      # result includes information like creation date, current status of the
      # activity, etc. The results may be split into multiple pages. To
      # retrieve subsequent pages, make the call again using the
      # `nextPageToken` returned by the initial call.
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain in which the activity types have been
      #   registered.
      # @option params [String] :name
      #   If specified, only lists the activity types that have this name.
      # @option params [required, String] :registration_status
      #   Specifies the registration status of the activity types to list.
      # @option params [String] :next_page_token
      #   If a `NextPageToken` was returned by a previous call, there are more
      #   results available. To retrieve the next page of results, make the call
      #   again using the returned token in `nextPageToken`. Keep all other
      #   arguments unchanged.
      #
      #   The configured `maximumPageSize` determines how many results can be
      #   returned in a single call.
      # @option params [Integer] :maximum_page_size
      #   The maximum number of results that will be returned per call.
      #   `nextPageToken` can be used to obtain futher pages of results. The
      #   default is 1000, which is the maximum allowed page size. You can,
      #   however, specify a page size *smaller* than the maximum.
      #
      #   This is an upper limit only; the actual number of results returned per
      #   call may be fewer than the specified maximum.
      # @option params [Boolean] :reverse_order
      #   When set to `true`, returns the results in reverse order. By default,
      #   the results are returned in ascending alphabetical order by `name` of
      #   the activity types.
      # @return [Types::ActivityTypeInfos] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ActivityTypeInfos#type_infos #typeInfos} => Array&lt;Types::ActivityTypeInfo&gt;
      #   * {Types::ActivityTypeInfos#next_page_token #nextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_activity_types({
      #     domain: "DomainName", # required
      #     name: "Name",
      #     registration_status: "REGISTERED", # required, accepts REGISTERED, DEPRECATED
      #     next_page_token: "PageToken",
      #     maximum_page_size: 1,
      #     reverse_order: false,
      #   })
      #
      # @example Response structure
      #   resp.type_infos #=> Array
      #   resp.type_infos[0].activity_type.name #=> String
      #   resp.type_infos[0].activity_type.version #=> String
      #   resp.type_infos[0].status #=> String, one of "REGISTERED", "DEPRECATED"
      #   resp.type_infos[0].description #=> String
      #   resp.type_infos[0].creation_date #=> Time
      #   resp.type_infos[0].deprecation_date #=> Time
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_activity_types(params = {}, options = {})
        req = build_request(:list_activity_types, params)
        req.send_request(options)
      end

      # Returns a list of closed workflow executions in the specified domain
      # that meet the filtering criteria. The results may be split into
      # multiple pages. To retrieve subsequent pages, make the call again
      # using the nextPageToken returned by the initial call.
      #
      # <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `tagFilter.tag`\: String constraint. The key is
      #     `swf:tagFilter.tag`.
      #   * `typeFilter.name`\: String constraint. The key is
      #     `swf:typeFilter.name`.
      #   * `typeFilter.version`\: String constraint. The key is
      #     `swf:typeFilter.version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain that contains the workflow executions to list.
      # @option params [Types::ExecutionTimeFilter] :start_time_filter
      #   If specified, the workflow executions are included in the returned
      #   results based on whether their start times are within the range
      #   specified by this filter. Also, if this parameter is specified, the
      #   returned results are ordered by their start times.
      #
      #   <note>`startTimeFilter` and `closeTimeFilter` are mutually exclusive. You must specify one of these in a request but not both.</note>
      # @option params [Types::ExecutionTimeFilter] :close_time_filter
      #   If specified, the workflow executions are included in the returned
      #   results based on whether their close times are within the range
      #   specified by this filter. Also, if this parameter is specified, the
      #   returned results are ordered by their close times.
      #
      #   <note>`startTimeFilter` and `closeTimeFilter` are mutually exclusive. You must specify one of these in a request but not both.</note>
      # @option params [Types::WorkflowExecutionFilter] :execution_filter
      #   If specified, only workflow executions matching the workflow ID
      #   specified in the filter are returned.
      #
      #   <note>`closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [Types::CloseStatusFilter] :close_status_filter
      #   If specified, only workflow executions that match this *close status*
      #   are listed. For example, if TERMINATED is specified, then only
      #   TERMINATED workflow executions are listed.
      #
      #   <note>`closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [Types::WorkflowTypeFilter] :type_filter
      #   If specified, only executions of the type specified in the filter are
      #   returned.
      #
      #   <note>`closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [Types::TagFilter] :tag_filter
      #   If specified, only executions that have the matching tag are listed.
      #
      #   <note>`closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [String] :next_page_token
      #   If a `NextPageToken` was returned by a previous call, there are more
      #   results available. To retrieve the next page of results, make the call
      #   again using the returned token in `nextPageToken`. Keep all other
      #   arguments unchanged.
      #
      #   The configured `maximumPageSize` determines how many results can be
      #   returned in a single call.
      # @option params [Integer] :maximum_page_size
      #   The maximum number of results that will be returned per call.
      #   `nextPageToken` can be used to obtain futher pages of results. The
      #   default is 1000, which is the maximum allowed page size. You can,
      #   however, specify a page size *smaller* than the maximum.
      #
      #   This is an upper limit only; the actual number of results returned per
      #   call may be fewer than the specified maximum.
      # @option params [Boolean] :reverse_order
      #   When set to `true`, returns the results in reverse order. By default
      #   the results are returned in descending order of the start or the close
      #   time of the executions.
      # @return [Types::WorkflowExecutionInfos] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::WorkflowExecutionInfos#execution_infos #executionInfos} => Array&lt;Types::WorkflowExecutionInfo&gt;
      #   * {Types::WorkflowExecutionInfos#next_page_token #nextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_closed_workflow_executions({
      #     domain: "DomainName", # required
      #     start_time_filter: {
      #       oldest_date: Time.now, # required
      #       latest_date: Time.now,
      #     },
      #     close_time_filter: {
      #       oldest_date: Time.now, # required
      #       latest_date: Time.now,
      #     },
      #     execution_filter: {
      #       workflow_id: "WorkflowId", # required
      #     },
      #     close_status_filter: {
      #       status: "COMPLETED", # required, accepts COMPLETED, FAILED, CANCELED, TERMINATED, CONTINUED_AS_NEW, TIMED_OUT
      #     },
      #     type_filter: {
      #       name: "Name", # required
      #       version: "VersionOptional",
      #     },
      #     tag_filter: {
      #       tag: "Tag", # required
      #     },
      #     next_page_token: "PageToken",
      #     maximum_page_size: 1,
      #     reverse_order: false,
      #   })
      #
      # @example Response structure
      #   resp.execution_infos #=> Array
      #   resp.execution_infos[0].execution.workflow_id #=> String
      #   resp.execution_infos[0].execution.run_id #=> String
      #   resp.execution_infos[0].workflow_type.name #=> String
      #   resp.execution_infos[0].workflow_type.version #=> String
      #   resp.execution_infos[0].start_timestamp #=> Time
      #   resp.execution_infos[0].close_timestamp #=> Time
      #   resp.execution_infos[0].execution_status #=> String, one of "OPEN", "CLOSED"
      #   resp.execution_infos[0].close_status #=> String, one of "COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"
      #   resp.execution_infos[0].parent.workflow_id #=> String
      #   resp.execution_infos[0].parent.run_id #=> String
      #   resp.execution_infos[0].tag_list #=> Array
      #   resp.execution_infos[0].tag_list[0] #=> String
      #   resp.execution_infos[0].cancel_requested #=> Boolean
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_closed_workflow_executions(params = {}, options = {})
        req = build_request(:list_closed_workflow_executions, params)
        req.send_request(options)
      end

      # Returns the list of domains registered in the account. The results may
      # be split into multiple pages. To retrieve subsequent pages, make the
      # call again using the nextPageToken returned by the initial call.
      #
      # <note> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains. The element must be set to
      #   `arn:aws:swf::AccountID:domain/*`, where *AccountID* is the account
      #   ID, with no dashes.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [String] :next_page_token
      #   If a `NextPageToken` was returned by a previous call, there are more
      #   results available. To retrieve the next page of results, make the call
      #   again using the returned token in `nextPageToken`. Keep all other
      #   arguments unchanged.
      #
      #   The configured `maximumPageSize` determines how many results can be
      #   returned in a single call.
      # @option params [required, String] :registration_status
      #   Specifies the registration status of the domains to list.
      # @option params [Integer] :maximum_page_size
      #   The maximum number of results that will be returned per call.
      #   `nextPageToken` can be used to obtain futher pages of results. The
      #   default is 1000, which is the maximum allowed page size. You can,
      #   however, specify a page size *smaller* than the maximum.
      #
      #   This is an upper limit only; the actual number of results returned per
      #   call may be fewer than the specified maximum.
      # @option params [Boolean] :reverse_order
      #   When set to `true`, returns the results in reverse order. By default,
      #   the results are returned in ascending alphabetical order by `name` of
      #   the domains.
      # @return [Types::DomainInfos] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DomainInfos#domain_infos #domainInfos} => Array&lt;Types::DomainInfo&gt;
      #   * {Types::DomainInfos#next_page_token #nextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_domains({
      #     next_page_token: "PageToken",
      #     registration_status: "REGISTERED", # required, accepts REGISTERED, DEPRECATED
      #     maximum_page_size: 1,
      #     reverse_order: false,
      #   })
      #
      # @example Response structure
      #   resp.domain_infos #=> Array
      #   resp.domain_infos[0].name #=> String
      #   resp.domain_infos[0].status #=> String, one of "REGISTERED", "DEPRECATED"
      #   resp.domain_infos[0].description #=> String
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_domains(params = {}, options = {})
        req = build_request(:list_domains, params)
        req.send_request(options)
      end

      # Returns a list of open workflow executions in the specified domain
      # that meet the filtering criteria. The results may be split into
      # multiple pages. To retrieve subsequent pages, make the call again
      # using the nextPageToken returned by the initial call.
      #
      # <note> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `tagFilter.tag`\: String constraint. The key is
      #     `swf:tagFilter.tag`.
      #   * `typeFilter.name`\: String constraint. The key is
      #     `swf:typeFilter.name`.
      #   * `typeFilter.version`\: String constraint. The key is
      #     `swf:typeFilter.version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain that contains the workflow executions to list.
      # @option params [required, Types::ExecutionTimeFilter] :start_time_filter
      #   Workflow executions are included in the returned results based on
      #   whether their start times are within the range specified by this
      #   filter.
      # @option params [Types::WorkflowTypeFilter] :type_filter
      #   If specified, only executions of the type specified in the filter are
      #   returned.
      #
      #   <note>`executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [Types::TagFilter] :tag_filter
      #   If specified, only executions that have the matching tag are listed.
      #
      #   <note>`executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @option params [String] :next_page_token
      #   If a `NextPageToken` was returned by a previous call, there are more
      #   results available. To retrieve the next page of results, make the call
      #   again using the returned token in `nextPageToken`. Keep all other
      #   arguments unchanged.
      #
      #   The configured `maximumPageSize` determines how many results can be
      #   returned in a single call.
      # @option params [Integer] :maximum_page_size
      #   The maximum number of results that will be returned per call.
      #   `nextPageToken` can be used to obtain futher pages of results. The
      #   default is 1000, which is the maximum allowed page size. You can,
      #   however, specify a page size *smaller* than the maximum.
      #
      #   This is an upper limit only; the actual number of results returned per
      #   call may be fewer than the specified maximum.
      # @option params [Boolean] :reverse_order
      #   When set to `true`, returns the results in reverse order. By default
      #   the results are returned in descending order of the start time of the
      #   executions.
      # @option params [Types::WorkflowExecutionFilter] :execution_filter
      #   If specified, only workflow executions matching the workflow ID
      #   specified in the filter are returned.
      #
      #   <note>`executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.</note>
      # @return [Types::WorkflowExecutionInfos] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::WorkflowExecutionInfos#execution_infos #executionInfos} => Array&lt;Types::WorkflowExecutionInfo&gt;
      #   * {Types::WorkflowExecutionInfos#next_page_token #nextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_open_workflow_executions({
      #     domain: "DomainName", # required
      #     start_time_filter: { # required
      #       oldest_date: Time.now, # required
      #       latest_date: Time.now,
      #     },
      #     type_filter: {
      #       name: "Name", # required
      #       version: "VersionOptional",
      #     },
      #     tag_filter: {
      #       tag: "Tag", # required
      #     },
      #     next_page_token: "PageToken",
      #     maximum_page_size: 1,
      #     reverse_order: false,
      #     execution_filter: {
      #       workflow_id: "WorkflowId", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.execution_infos #=> Array
      #   resp.execution_infos[0].execution.workflow_id #=> String
      #   resp.execution_infos[0].execution.run_id #=> String
      #   resp.execution_infos[0].workflow_type.name #=> String
      #   resp.execution_infos[0].workflow_type.version #=> String
      #   resp.execution_infos[0].start_timestamp #=> Time
      #   resp.execution_infos[0].close_timestamp #=> Time
      #   resp.execution_infos[0].execution_status #=> String, one of "OPEN", "CLOSED"
      #   resp.execution_infos[0].close_status #=> String, one of "COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"
      #   resp.execution_infos[0].parent.workflow_id #=> String
      #   resp.execution_infos[0].parent.run_id #=> String
      #   resp.execution_infos[0].tag_list #=> Array
      #   resp.execution_infos[0].tag_list[0] #=> String
      #   resp.execution_infos[0].cancel_requested #=> Boolean
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_open_workflow_executions(params = {}, options = {})
        req = build_request(:list_open_workflow_executions, params)
        req.send_request(options)
      end

      # Returns information about workflow types in the specified domain. The
      # results may be split into multiple pages that can be retrieved by
      # making the call repeatedly.
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain in which the workflow types have been
      #   registered.
      # @option params [String] :name
      #   If specified, lists the workflow type with this name.
      # @option params [required, String] :registration_status
      #   Specifies the registration status of the workflow types to list.
      # @option params [String] :next_page_token
      #   If a `NextPageToken` was returned by a previous call, there are more
      #   results available. To retrieve the next page of results, make the call
      #   again using the returned token in `nextPageToken`. Keep all other
      #   arguments unchanged.
      #
      #   The configured `maximumPageSize` determines how many results can be
      #   returned in a single call.
      # @option params [Integer] :maximum_page_size
      #   The maximum number of results that will be returned per call.
      #   `nextPageToken` can be used to obtain futher pages of results. The
      #   default is 1000, which is the maximum allowed page size. You can,
      #   however, specify a page size *smaller* than the maximum.
      #
      #   This is an upper limit only; the actual number of results returned per
      #   call may be fewer than the specified maximum.
      # @option params [Boolean] :reverse_order
      #   When set to `true`, returns the results in reverse order. By default
      #   the results are returned in ascending alphabetical order of the `name`
      #   of the workflow types.
      # @return [Types::WorkflowTypeInfos] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::WorkflowTypeInfos#type_infos #typeInfos} => Array&lt;Types::WorkflowTypeInfo&gt;
      #   * {Types::WorkflowTypeInfos#next_page_token #nextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_workflow_types({
      #     domain: "DomainName", # required
      #     name: "Name",
      #     registration_status: "REGISTERED", # required, accepts REGISTERED, DEPRECATED
      #     next_page_token: "PageToken",
      #     maximum_page_size: 1,
      #     reverse_order: false,
      #   })
      #
      # @example Response structure
      #   resp.type_infos #=> Array
      #   resp.type_infos[0].workflow_type.name #=> String
      #   resp.type_infos[0].workflow_type.version #=> String
      #   resp.type_infos[0].status #=> String, one of "REGISTERED", "DEPRECATED"
      #   resp.type_infos[0].description #=> String
      #   resp.type_infos[0].creation_date #=> Time
      #   resp.type_infos[0].deprecation_date #=> Time
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_workflow_types(params = {}, options = {})
        req = build_request(:list_workflow_types, params)
        req.send_request(options)
      end

      # Used by workers to get an ActivityTask from the specified activity
      # `taskList`. This initiates a long poll, where the service holds the
      # HTTP connection open and responds as soon as a task becomes available.
      # The maximum time the service holds on to the request before responding
      # is 60 seconds. If no task is available within 60 seconds, the poll
      # will return an empty result. An empty result, in this context, means
      # that an ActivityTask is returned, but that the value of taskToken is
      # an empty string. If a task is returned, the worker should use its type
      # to identify and process it correctly.
      #
      # <important>Workers should set their client side socket timeout to at least 70 seconds (10 seconds higher than the maximum time service may hold the poll request).</important>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the `taskList.name` parameter by using a **Condition**
      #   element with the `swf:taskList.name` key to allow the action to
      #   access only certain task lists.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain that contains the task lists being polled.
      # @option params [required, Types::TaskList] :task_list
      #   Specifies the task list to poll for activity tasks.
      #
      #   The specified string must not start or end with whitespace. It must
      #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
      #   control characters (\\u0000-\\u001f \| \\u007f - \\u009f). Also, it
      #   must not contain the literal string quotarnquot.
      # @option params [String] :identity
      #   Identity of the worker making the request, recorded in the
      #   `ActivityTaskStarted` event in the workflow history. This enables
      #   diagnostic tracing when problems arise. The form of this identity is
      #   user defined.
      # @return [Types::ActivityTask] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ActivityTask#task_token #taskToken} => String
      #   * {Types::ActivityTask#activity_id #activityId} => String
      #   * {Types::ActivityTask#started_event_id #startedEventId} => Integer
      #   * {Types::ActivityTask#workflow_execution #workflowExecution} => Types::WorkflowExecution
      #   * {Types::ActivityTask#activity_type #activityType} => Types::ActivityType
      #   * {Types::ActivityTask#input #input} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.poll_for_activity_task({
      #     domain: "DomainName", # required
      #     task_list: { # required
      #       name: "Name", # required
      #     },
      #     identity: "Identity",
      #   })
      #
      # @example Response structure
      #   resp.task_token #=> String
      #   resp.activity_id #=> String
      #   resp.started_event_id #=> Integer
      #   resp.workflow_execution.workflow_id #=> String
      #   resp.workflow_execution.run_id #=> String
      #   resp.activity_type.name #=> String
      #   resp.activity_type.version #=> String
      #   resp.input #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def poll_for_activity_task(params = {}, options = {})
        req = build_request(:poll_for_activity_task, params)
        req.send_request(options)
      end

      # Used by deciders to get a DecisionTask from the specified decision
      # `taskList`. A decision task may be returned for any open workflow
      # execution that is using the specified task list. The task includes a
      # paginated view of the history of the workflow execution. The decider
      # should use the workflow type and the history to determine how to
      # properly handle the task.
      #
      # This action initiates a long poll, where the service holds the HTTP
      # connection open and responds as soon a task becomes available. If no
      # decision task is available in the specified task list before the
      # timeout of 60 seconds expires, an empty result is returned. An empty
      # result, in this context, means that a DecisionTask is returned, but
      # that the value of `taskToken` is an empty string.
      #
      # <important>Deciders should set their client-side socket timeout to at least 70 seconds (10 seconds higher than the timeout).</important>
      #
      # <important>Because the number of workflow history events for a single workflow execution might be very large, the result returned might be split up across a number of pages. To retrieve subsequent pages, make additional calls to `PollForDecisionTask` using the `nextPageToken` returned by the initial call. Note that you do **not** call `GetWorkflowExecutionHistory` with this `nextPageToken`. Instead, call `PollForDecisionTask` again.</important>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the `taskList.name` parameter by using a **Condition**
      #   element with the `swf:taskList.name` key to allow the action to
      #   access only certain task lists.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain containing the task lists to poll.
      # @option params [required, Types::TaskList] :task_list
      #   Specifies the task list to poll for decision tasks.
      #
      #   The specified string must not start or end with whitespace. It must
      #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
      #   control characters (\\u0000-\\u001f \| \\u007f - \\u009f). Also, it
      #   must not contain the literal string quotarnquot.
      # @option params [String] :identity
      #   Identity of the decider making the request, which is recorded in the
      #   DecisionTaskStarted event in the workflow history. This enables
      #   diagnostic tracing when problems arise. The form of this identity is
      #   user defined.
      # @option params [String] :next_page_token
      #   If a `NextPageToken` was returned by a previous call, there are more
      #   results available. To retrieve the next page of results, make the call
      #   again using the returned token in `nextPageToken`. Keep all other
      #   arguments unchanged.
      #
      #   The configured `maximumPageSize` determines how many results can be
      #   returned in a single call.
      #
      #   <note>The `nextPageToken` returned by this action cannot be used with GetWorkflowExecutionHistory to get the next page. You must call PollForDecisionTask again (with the `nextPageToken`) to retrieve the next page of history records. Calling PollForDecisionTask with a `nextPageToken` will not return a new decision task.</note>
      #
      #   .
      # @option params [Integer] :maximum_page_size
      #   The maximum number of results that will be returned per call.
      #   `nextPageToken` can be used to obtain futher pages of results. The
      #   default is 1000, which is the maximum allowed page size. You can,
      #   however, specify a page size *smaller* than the maximum.
      #
      #   This is an upper limit only; the actual number of results returned per
      #   call may be fewer than the specified maximum.
      # @option params [Boolean] :reverse_order
      #   When set to `true`, returns the events in reverse order. By default
      #   the results are returned in ascending order of the `eventTimestamp` of
      #   the events.
      # @return [Types::DecisionTask] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DecisionTask#task_token #taskToken} => String
      #   * {Types::DecisionTask#started_event_id #startedEventId} => Integer
      #   * {Types::DecisionTask#workflow_execution #workflowExecution} => Types::WorkflowExecution
      #   * {Types::DecisionTask#workflow_type #workflowType} => Types::WorkflowType
      #   * {Types::DecisionTask#events #events} => Array&lt;Types::HistoryEvent&gt;
      #   * {Types::DecisionTask#next_page_token #nextPageToken} => String
      #   * {Types::DecisionTask#previous_started_event_id #previousStartedEventId} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.poll_for_decision_task({
      #     domain: "DomainName", # required
      #     task_list: { # required
      #       name: "Name", # required
      #     },
      #     identity: "Identity",
      #     next_page_token: "PageToken",
      #     maximum_page_size: 1,
      #     reverse_order: false,
      #   })
      #
      # @example Response structure
      #   resp.task_token #=> String
      #   resp.started_event_id #=> Integer
      #   resp.workflow_execution.workflow_id #=> String
      #   resp.workflow_execution.run_id #=> String
      #   resp.workflow_type.name #=> String
      #   resp.workflow_type.version #=> String
      #   resp.events #=> Array
      #   resp.events[0].event_timestamp #=> Time
      #   resp.events[0].event_type #=> String, one of "WorkflowExecutionStarted", "WorkflowExecutionCancelRequested", "WorkflowExecutionCompleted", "CompleteWorkflowExecutionFailed", "WorkflowExecutionFailed", "FailWorkflowExecutionFailed", "WorkflowExecutionTimedOut", "WorkflowExecutionCanceled", "CancelWorkflowExecutionFailed", "WorkflowExecutionContinuedAsNew", "ContinueAsNewWorkflowExecutionFailed", "WorkflowExecutionTerminated", "DecisionTaskScheduled", "DecisionTaskStarted", "DecisionTaskCompleted", "DecisionTaskTimedOut", "ActivityTaskScheduled", "ScheduleActivityTaskFailed", "ActivityTaskStarted", "ActivityTaskCompleted", "ActivityTaskFailed", "ActivityTaskTimedOut", "ActivityTaskCanceled", "ActivityTaskCancelRequested", "RequestCancelActivityTaskFailed", "WorkflowExecutionSignaled", "MarkerRecorded", "RecordMarkerFailed", "TimerStarted", "StartTimerFailed", "TimerFired", "TimerCanceled", "CancelTimerFailed", "StartChildWorkflowExecutionInitiated", "StartChildWorkflowExecutionFailed", "ChildWorkflowExecutionStarted", "ChildWorkflowExecutionCompleted", "ChildWorkflowExecutionFailed", "ChildWorkflowExecutionTimedOut", "ChildWorkflowExecutionCanceled", "ChildWorkflowExecutionTerminated", "SignalExternalWorkflowExecutionInitiated", "SignalExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionSignaled", "RequestCancelExternalWorkflowExecutionInitiated", "RequestCancelExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionCancelRequested", "LambdaFunctionScheduled", "LambdaFunctionStarted", "LambdaFunctionCompleted", "LambdaFunctionFailed", "LambdaFunctionTimedOut", "ScheduleLambdaFunctionFailed", "StartLambdaFunctionFailed"
      #   resp.events[0].event_id #=> Integer
      #   resp.events[0].workflow_execution_started_event_attributes.input #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.execution_start_to_close_timeout #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.task_start_to_close_timeout #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].workflow_execution_started_event_attributes.task_list.name #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.workflow_type.name #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.workflow_type.version #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.tag_list #=> Array
      #   resp.events[0].workflow_execution_started_event_attributes.tag_list[0] #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.task_priority #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.continued_execution_run_id #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.parent_workflow_execution.workflow_id #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.parent_workflow_execution.run_id #=> String
      #   resp.events[0].workflow_execution_started_event_attributes.parent_initiated_event_id #=> Integer
      #   resp.events[0].workflow_execution_started_event_attributes.lambda_role #=> String
      #   resp.events[0].workflow_execution_completed_event_attributes.result #=> String
      #   resp.events[0].workflow_execution_completed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].complete_workflow_execution_failed_event_attributes.cause #=> String, one of "UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].complete_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_failed_event_attributes.reason #=> String
      #   resp.events[0].workflow_execution_failed_event_attributes.details #=> String
      #   resp.events[0].workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].fail_workflow_execution_failed_event_attributes.cause #=> String, one of "UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].fail_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE"
      #   resp.events[0].workflow_execution_timed_out_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].workflow_execution_canceled_event_attributes.details #=> String
      #   resp.events[0].workflow_execution_canceled_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].cancel_workflow_execution_failed_event_attributes.cause #=> String, one of "UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].cancel_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.input #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.new_execution_run_id #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.execution_start_to_close_timeout #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.task_list.name #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.task_priority #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.task_start_to_close_timeout #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.tag_list #=> Array
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.tag_list[0] #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.workflow_type.name #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.workflow_type.version #=> String
      #   resp.events[0].workflow_execution_continued_as_new_event_attributes.lambda_role #=> String
      #   resp.events[0].continue_as_new_workflow_execution_failed_event_attributes.cause #=> String, one of "UNHANDLED_DECISION", "WORKFLOW_TYPE_DEPRECATED", "WORKFLOW_TYPE_DOES_NOT_EXIST", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].continue_as_new_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].workflow_execution_terminated_event_attributes.reason #=> String
      #   resp.events[0].workflow_execution_terminated_event_attributes.details #=> String
      #   resp.events[0].workflow_execution_terminated_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].workflow_execution_terminated_event_attributes.cause #=> String, one of "CHILD_POLICY_APPLIED", "EVENT_LIMIT_EXCEEDED", "OPERATOR_INITIATED"
      #   resp.events[0].workflow_execution_cancel_requested_event_attributes.external_workflow_execution.workflow_id #=> String
      #   resp.events[0].workflow_execution_cancel_requested_event_attributes.external_workflow_execution.run_id #=> String
      #   resp.events[0].workflow_execution_cancel_requested_event_attributes.external_initiated_event_id #=> Integer
      #   resp.events[0].workflow_execution_cancel_requested_event_attributes.cause #=> String, one of "CHILD_POLICY_APPLIED"
      #   resp.events[0].decision_task_scheduled_event_attributes.task_list.name #=> String
      #   resp.events[0].decision_task_scheduled_event_attributes.task_priority #=> String
      #   resp.events[0].decision_task_scheduled_event_attributes.start_to_close_timeout #=> String
      #   resp.events[0].decision_task_started_event_attributes.identity #=> String
      #   resp.events[0].decision_task_started_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].decision_task_completed_event_attributes.execution_context #=> String
      #   resp.events[0].decision_task_completed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].decision_task_completed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].decision_task_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE"
      #   resp.events[0].decision_task_timed_out_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].decision_task_timed_out_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_scheduled_event_attributes.activity_type.name #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.activity_type.version #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.activity_id #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.input #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.control #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.schedule_to_start_timeout #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.schedule_to_close_timeout #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.start_to_close_timeout #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.task_list.name #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.task_priority #=> String
      #   resp.events[0].activity_task_scheduled_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].activity_task_scheduled_event_attributes.heartbeat_timeout #=> String
      #   resp.events[0].activity_task_started_event_attributes.identity #=> String
      #   resp.events[0].activity_task_started_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_completed_event_attributes.result #=> String
      #   resp.events[0].activity_task_completed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_completed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_failed_event_attributes.reason #=> String
      #   resp.events[0].activity_task_failed_event_attributes.details #=> String
      #   resp.events[0].activity_task_failed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_failed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE", "SCHEDULE_TO_START", "SCHEDULE_TO_CLOSE", "HEARTBEAT"
      #   resp.events[0].activity_task_timed_out_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_timed_out_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_timed_out_event_attributes.details #=> String
      #   resp.events[0].activity_task_canceled_event_attributes.details #=> String
      #   resp.events[0].activity_task_canceled_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].activity_task_canceled_event_attributes.started_event_id #=> Integer
      #   resp.events[0].activity_task_canceled_event_attributes.latest_cancel_requested_event_id #=> Integer
      #   resp.events[0].activity_task_cancel_requested_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].activity_task_cancel_requested_event_attributes.activity_id #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.signal_name #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.input #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.external_workflow_execution.workflow_id #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.external_workflow_execution.run_id #=> String
      #   resp.events[0].workflow_execution_signaled_event_attributes.external_initiated_event_id #=> Integer
      #   resp.events[0].marker_recorded_event_attributes.marker_name #=> String
      #   resp.events[0].marker_recorded_event_attributes.details #=> String
      #   resp.events[0].marker_recorded_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].record_marker_failed_event_attributes.marker_name #=> String
      #   resp.events[0].record_marker_failed_event_attributes.cause #=> String, one of "OPERATION_NOT_PERMITTED"
      #   resp.events[0].record_marker_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].timer_started_event_attributes.timer_id #=> String
      #   resp.events[0].timer_started_event_attributes.control #=> String
      #   resp.events[0].timer_started_event_attributes.start_to_fire_timeout #=> String
      #   resp.events[0].timer_started_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].timer_fired_event_attributes.timer_id #=> String
      #   resp.events[0].timer_fired_event_attributes.started_event_id #=> Integer
      #   resp.events[0].timer_canceled_event_attributes.timer_id #=> String
      #   resp.events[0].timer_canceled_event_attributes.started_event_id #=> Integer
      #   resp.events[0].timer_canceled_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_id #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_type.name #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_type.version #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.control #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.input #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.execution_start_to_close_timeout #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.task_list.name #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.task_priority #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.child_policy #=> String, one of "TERMINATE", "REQUEST_CANCEL", "ABANDON"
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.task_start_to_close_timeout #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.tag_list #=> Array
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.tag_list[0] #=> String
      #   resp.events[0].start_child_workflow_execution_initiated_event_attributes.lambda_role #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_started_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_completed_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.result #=> String
      #   resp.events[0].child_workflow_execution_completed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_completed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_failed_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.reason #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.details #=> String
      #   resp.events[0].child_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_failed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE"
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_timed_out_event_attributes.started_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.details #=> String
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_canceled_event_attributes.started_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.workflow_type.name #=> String
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.workflow_type.version #=> String
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].child_workflow_execution_terminated_event_attributes.started_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.workflow_id #=> String
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.run_id #=> String
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.signal_name #=> String
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.input #=> String
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_initiated_event_attributes.control #=> String
      #   resp.events[0].external_workflow_execution_signaled_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].external_workflow_execution_signaled_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].external_workflow_execution_signaled_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.workflow_id #=> String
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.run_id #=> String
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.cause #=> String, one of "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].signal_external_workflow_execution_failed_event_attributes.control #=> String
      #   resp.events[0].external_workflow_execution_cancel_requested_event_attributes.workflow_execution.workflow_id #=> String
      #   resp.events[0].external_workflow_execution_cancel_requested_event_attributes.workflow_execution.run_id #=> String
      #   resp.events[0].external_workflow_execution_cancel_requested_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.workflow_id #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.run_id #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.control #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.workflow_id #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.run_id #=> String
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.cause #=> String, one of "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].request_cancel_external_workflow_execution_failed_event_attributes.control #=> String
      #   resp.events[0].schedule_activity_task_failed_event_attributes.activity_type.name #=> String
      #   resp.events[0].schedule_activity_task_failed_event_attributes.activity_type.version #=> String
      #   resp.events[0].schedule_activity_task_failed_event_attributes.activity_id #=> String
      #   resp.events[0].schedule_activity_task_failed_event_attributes.cause #=> String, one of "ACTIVITY_TYPE_DEPRECATED", "ACTIVITY_TYPE_DOES_NOT_EXIST", "ACTIVITY_ID_ALREADY_IN_USE", "OPEN_ACTIVITIES_LIMIT_EXCEEDED", "ACTIVITY_CREATION_RATE_EXCEEDED", "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED", "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].schedule_activity_task_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].request_cancel_activity_task_failed_event_attributes.activity_id #=> String
      #   resp.events[0].request_cancel_activity_task_failed_event_attributes.cause #=> String, one of "ACTIVITY_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].request_cancel_activity_task_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_timer_failed_event_attributes.timer_id #=> String
      #   resp.events[0].start_timer_failed_event_attributes.cause #=> String, one of "TIMER_ID_ALREADY_IN_USE", "OPEN_TIMERS_LIMIT_EXCEEDED", "TIMER_CREATION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].start_timer_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].cancel_timer_failed_event_attributes.timer_id #=> String
      #   resp.events[0].cancel_timer_failed_event_attributes.cause #=> String, one of "TIMER_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].cancel_timer_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.workflow_type.name #=> String
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.workflow_type.version #=> String
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.cause #=> String, one of "WORKFLOW_TYPE_DOES_NOT_EXIST", "WORKFLOW_TYPE_DEPRECATED", "OPEN_CHILDREN_LIMIT_EXCEEDED", "OPEN_WORKFLOWS_LIMIT_EXCEEDED", "CHILD_CREATION_RATE_EXCEEDED", "WORKFLOW_ALREADY_RUNNING", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "OPERATION_NOT_PERMITTED"
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.workflow_id #=> String
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_child_workflow_execution_failed_event_attributes.control #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.id #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.name #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.input #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.start_to_close_timeout #=> String
      #   resp.events[0].lambda_function_scheduled_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].lambda_function_started_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].lambda_function_completed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].lambda_function_completed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].lambda_function_completed_event_attributes.result #=> String
      #   resp.events[0].lambda_function_failed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].lambda_function_failed_event_attributes.started_event_id #=> Integer
      #   resp.events[0].lambda_function_failed_event_attributes.reason #=> String
      #   resp.events[0].lambda_function_failed_event_attributes.details #=> String
      #   resp.events[0].lambda_function_timed_out_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].lambda_function_timed_out_event_attributes.started_event_id #=> Integer
      #   resp.events[0].lambda_function_timed_out_event_attributes.timeout_type #=> String, one of "START_TO_CLOSE"
      #   resp.events[0].schedule_lambda_function_failed_event_attributes.id #=> String
      #   resp.events[0].schedule_lambda_function_failed_event_attributes.name #=> String
      #   resp.events[0].schedule_lambda_function_failed_event_attributes.cause #=> String, one of "ID_ALREADY_IN_USE", "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED", "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED", "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"
      #   resp.events[0].schedule_lambda_function_failed_event_attributes.decision_task_completed_event_id #=> Integer
      #   resp.events[0].start_lambda_function_failed_event_attributes.scheduled_event_id #=> Integer
      #   resp.events[0].start_lambda_function_failed_event_attributes.cause #=> String, one of "ASSUME_ROLE_FAILED"
      #   resp.events[0].start_lambda_function_failed_event_attributes.message #=> String
      #   resp.next_page_token #=> String
      #   resp.previous_started_event_id #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def poll_for_decision_task(params = {}, options = {})
        req = build_request(:poll_for_decision_task, params)
        req.send_request(options)
      end

      # Used by activity workers to report to the service that the
      # ActivityTask represented by the specified `taskToken` is still making
      # progress. The worker can also (optionally) specify details of the
      # progress, for example percent complete, using the `details` parameter.
      # This action can also be used by the worker as a mechanism to check if
      # cancellation is being requested for the activity task. If a
      # cancellation is being attempted for the specified task, then the
      # boolean `cancelRequested` flag returned by the service is set to
      # `true`.
      #
      # This action resets the `taskHeartbeatTimeout` clock. The
      # `taskHeartbeatTimeout` is specified in RegisterActivityType.
      #
      # This action does not in itself create an event in the workflow
      # execution history. However, if the task times out, the workflow
      # execution history will contain a `ActivityTaskTimedOut` event that
      # contains the information from the last heartbeat generated by the
      # activity worker.
      #
      # <note>The `taskStartToCloseTimeout` of an activity type is the maximum duration of an activity task, regardless of the number of RecordActivityTaskHeartbeat requests received. The `taskStartToCloseTimeout` is also specified in RegisterActivityType.</note>
      #
      # <note>This operation is only useful for long-lived activities to report liveliness of the task and to determine if a cancellation is being attempted. </note>
      #
      # <important>If the `cancelRequested` flag returns `true`, a cancellation is being attempted. If the worker can cancel the activity, it should respond with RespondActivityTaskCanceled. Otherwise, it should ignore the cancellation request.</important>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :task_token
      #   The `taskToken` of the ActivityTask.
      #
      #   <important> `taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results. </important>
      # @option params [String] :details
      #   If specified, contains details about the progress of the task.
      # @return [Types::ActivityTaskStatus] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ActivityTaskStatus#cancel_requested #cancelRequested} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.record_activity_task_heartbeat({
      #     task_token: "TaskToken", # required
      #     details: "LimitedData",
      #   })
      #
      # @example Response structure
      #   resp.cancel_requested #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def record_activity_task_heartbeat(params = {}, options = {})
        req = build_request(:record_activity_task_heartbeat, params)
        req.send_request(options)
      end

      # Registers a new *activity type* along with its configuration settings
      # in the specified domain.
      #
      # <important>A `TypeAlreadyExists` fault is returned if the type already exists in the domain. You cannot change any configuration settings of the type after its registration, and it must be registered as a new version.</important>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `defaultTaskList.name`\: String constraint. The key is
      #     `swf:defaultTaskList.name`.
      #   * `name`\: String constraint. The key is `swf:name`.
      #   * `version`\: String constraint. The key is `swf:version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain in which this activity is to be registered.
      # @option params [required, String] :name
      #   The name of the activity type within the domain.
      #
      #   The specified string must not start or end with whitespace. It must
      #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
      #   control characters (\\u0000-\\u001f \| \\u007f - \\u009f). Also, it
      #   must not contain the literal string quotarnquot.
      # @option params [required, String] :version
      #   The version of the activity type.
      #
      #   <note>The activity type consists of the name and version, the combination of which must be unique within the domain.</note>
      #
      #   The specified string must not start or end with whitespace. It must
      #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
      #   control characters (\\u0000-\\u001f \| \\u007f - \\u009f). Also, it
      #   must not contain the literal string quotarnquot.
      # @option params [String] :description
      #   A textual description of the activity type.
      # @option params [String] :default_task_start_to_close_timeout
      #   If set, specifies the default maximum duration that a worker can take
      #   to process tasks of this activity type. This default can be overridden
      #   when scheduling an activity task using the `ScheduleActivityTask`
      #   decision.
      #
      #   The duration is specified in seconds; an integer greater than or equal
      #   to 0. The value \"NONE\" can be used to specify unlimited duration.
      # @option params [String] :default_task_heartbeat_timeout
      #   If set, specifies the default maximum time before which a worker
      #   processing a task of this type must report progress by calling
      #   RecordActivityTaskHeartbeat. If the timeout is exceeded, the activity
      #   task is automatically timed out. This default can be overridden when
      #   scheduling an activity task using the `ScheduleActivityTask` decision.
      #   If the activity worker subsequently attempts to record a heartbeat or
      #   returns a result, the activity worker receives an `UnknownResource`
      #   fault. In this case, Amazon SWF no longer considers the activity task
      #   to be valid; the activity worker should clean up the activity task.
      #
      #   The duration is specified in seconds; an integer greater than or equal
      #   to 0. The value \"NONE\" can be used to specify unlimited duration.
      # @option params [Types::TaskList] :default_task_list
      #   If set, specifies the default task list to use for scheduling tasks of
      #   this activity type. This default task list is used if a task list is
      #   not provided when a task is scheduled through the
      #   `ScheduleActivityTask` decision.
      # @option params [String] :default_task_priority
      #   The default task priority to assign to the activity type. If not
      #   assigned, then \"0\" will be used. Valid values are integers that
      #   range from Java\'s `Integer.MIN_VALUE` (-2147483648) to
      #   `Integer.MAX_VALUE` (2147483647). Higher numbers indicate higher
      #   priority.
      #
      #   For more information about setting task priority, see [Setting Task
      #   Priority][1] in the *Amazon Simple Workflow Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
      # @option params [String] :default_task_schedule_to_start_timeout
      #   If set, specifies the default maximum duration that a task of this
      #   activity type can wait before being assigned to a worker. This default
      #   can be overridden when scheduling an activity task using the
      #   `ScheduleActivityTask` decision.
      #
      #   The duration is specified in seconds; an integer greater than or equal
      #   to 0. The value \"NONE\" can be used to specify unlimited duration.
      # @option params [String] :default_task_schedule_to_close_timeout
      #   If set, specifies the default maximum duration for a task of this
      #   activity type. This default can be overridden when scheduling an
      #   activity task using the `ScheduleActivityTask` decision.
      #
      #   The duration is specified in seconds; an integer greater than or equal
      #   to 0. The value \"NONE\" can be used to specify unlimited duration.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.register_activity_type({
      #     domain: "DomainName", # required
      #     name: "Name", # required
      #     version: "Version", # required
      #     description: "Description",
      #     default_task_start_to_close_timeout: "DurationInSecondsOptional",
      #     default_task_heartbeat_timeout: "DurationInSecondsOptional",
      #     default_task_list: {
      #       name: "Name", # required
      #     },
      #     default_task_priority: "TaskPriority",
      #     default_task_schedule_to_start_timeout: "DurationInSecondsOptional",
      #     default_task_schedule_to_close_timeout: "DurationInSecondsOptional",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def register_activity_type(params = {}, options = {})
        req = build_request(:register_activity_type, params)
        req.send_request(options)
      end

      # Registers a new domain.
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * You cannot use an IAM policy to control domain access for this
      #   action. The name of the domain being registered is available as the
      #   resource of this action.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :name
      #   Name of the domain to register. The name must be unique in the region
      #   that the domain is registered in.
      #
      #   The specified string must not start or end with whitespace. It must
      #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
      #   control characters (\\u0000-\\u001f \| \\u007f - \\u009f). Also, it
      #   must not contain the literal string quotarnquot.
      # @option params [String] :description
      #   A text description of the domain.
      # @option params [required, String] :workflow_execution_retention_period_in_days
      #   The duration (in days) that records and histories of workflow
      #   executions on the domain should be kept by the service. After the
      #   retention period, the workflow execution is not available in the
      #   results of visibility calls.
      #
      #   If you pass the value `NONE` or `0` (zero), then the workflow
      #   execution history will not be retained. As soon as the workflow
      #   execution completes, the execution record and its history are deleted.
      #
      #   The maximum workflow execution retention period is 90 days. For more
      #   information about Amazon SWF service limits, see: [Amazon SWF Service
      #   Limits][1] in the *Amazon SWF Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.register_domain({
      #     name: "DomainName", # required
      #     description: "Description",
      #     workflow_execution_retention_period_in_days: "DurationInDays", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def register_domain(params = {}, options = {})
        req = build_request(:register_domain, params)
        req.send_request(options)
      end

      # Registers a new *workflow type* and its configuration settings in the
      # specified domain.
      #
      # The retention period for the workflow history is set by the
      # RegisterDomain action.
      #
      # <important>If the type already exists, then a `TypeAlreadyExists` fault is returned. You cannot change the configuration settings of a workflow type once it is registered and it must be registered as a new version.</important>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `defaultTaskList.name`\: String constraint. The key is
      #     `swf:defaultTaskList.name`.
      #   * `name`\: String constraint. The key is `swf:name`.
      #   * `version`\: String constraint. The key is `swf:version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain in which to register the workflow type.
      # @option params [required, String] :name
      #   The name of the workflow type.
      #
      #   The specified string must not start or end with whitespace. It must
      #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
      #   control characters (\\u0000-\\u001f \| \\u007f - \\u009f). Also, it
      #   must not contain the literal string quotarnquot.
      # @option params [required, String] :version
      #   The version of the workflow type.
      #
      #   <note>The workflow type consists of the name and version, the combination of which must be unique within the domain. To get a list of all currently registered workflow types, use the ListWorkflowTypes action.</note>
      #
      #   The specified string must not start or end with whitespace. It must
      #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
      #   control characters (\\u0000-\\u001f \| \\u007f - \\u009f). Also, it
      #   must not contain the literal string quotarnquot.
      # @option params [String] :description
      #   Textual description of the workflow type.
      # @option params [String] :default_task_start_to_close_timeout
      #   If set, specifies the default maximum duration of decision tasks for
      #   this workflow type. This default can be overridden when starting a
      #   workflow execution using the StartWorkflowExecution action or the
      #   `StartChildWorkflowExecution` decision.
      #
      #   The duration is specified in seconds; an integer greater than or equal
      #   to 0. The value \"NONE\" can be used to specify unlimited duration.
      # @option params [String] :default_execution_start_to_close_timeout
      #   If set, specifies the default maximum duration for executions of this
      #   workflow type. You can override this default when starting an
      #   execution through the StartWorkflowExecution action or
      #   `StartChildWorkflowExecution` decision.
      #
      #   The duration is specified in seconds; an integer greater than or equal
      #   to 0. Unlike some of the other timeout parameters in Amazon SWF, you
      #   cannot specify a value of \"NONE\" for
      #   `defaultExecutionStartToCloseTimeout`; there is a one-year max limit
      #   on the time that a workflow execution can run. Exceeding this limit
      #   will always cause the workflow execution to time out.
      # @option params [Types::TaskList] :default_task_list
      #   If set, specifies the default task list to use for scheduling decision
      #   tasks for executions of this workflow type. This default is used only
      #   if a task list is not provided when starting the execution through the
      #   StartWorkflowExecution action or `StartChildWorkflowExecution`
      #   decision.
      # @option params [String] :default_task_priority
      #   The default task priority to assign to the workflow type. If not
      #   assigned, then \"0\" will be used. Valid values are integers that
      #   range from Java\'s `Integer.MIN_VALUE` (-2147483648) to
      #   `Integer.MAX_VALUE` (2147483647). Higher numbers indicate higher
      #   priority.
      #
      #   For more information about setting task priority, see [Setting Task
      #   Priority][1] in the *Amazon Simple Workflow Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
      # @option params [String] :default_child_policy
      #   If set, specifies the default policy to use for the child workflow
      #   executions when a workflow execution of this type is terminated, by
      #   calling the TerminateWorkflowExecution action explicitly or due to an
      #   expired timeout. This default can be overridden when starting a
      #   workflow execution using the StartWorkflowExecution action or the
      #   `StartChildWorkflowExecution` decision.
      #
      #   The supported child policies are:
      #
      #   * **TERMINATE:** the child executions will be terminated.
      #   * **REQUEST\_CANCEL:** a request to cancel will be attempted for each
      #     child execution by recording a `WorkflowExecutionCancelRequested`
      #     event in its history. It is up to the decider to take appropriate
      #     actions when it receives an execution history with this event.
      #   * **ABANDON:** no action will be taken. The child executions will
      #     continue to run.
      # @option params [String] :default_lambda_role
      #   The ARN of the default IAM role to use when a workflow execution of
      #   this type invokes AWS Lambda functions.
      #
      #   This default can be overridden when starting a workflow execution
      #   using the StartWorkflowExecution action or the
      #   `StartChildWorkflowExecution` and `ContinueAsNewWorkflowExecution`
      #   decision.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.register_workflow_type({
      #     domain: "DomainName", # required
      #     name: "Name", # required
      #     version: "Version", # required
      #     description: "Description",
      #     default_task_start_to_close_timeout: "DurationInSecondsOptional",
      #     default_execution_start_to_close_timeout: "DurationInSecondsOptional",
      #     default_task_list: {
      #       name: "Name", # required
      #     },
      #     default_task_priority: "TaskPriority",
      #     default_child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
      #     default_lambda_role: "Arn",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def register_workflow_type(params = {}, options = {})
        req = build_request(:register_workflow_type, params)
        req.send_request(options)
      end

      # Records a `WorkflowExecutionCancelRequested` event in the currently
      # running workflow execution identified by the given domain, workflowId,
      # and runId. This logically requests the cancellation of the workflow
      # execution as a whole. It is up to the decider to take appropriate
      # actions when it receives an execution history with this event.
      #
      # <note>If the runId is not specified, the `WorkflowExecutionCancelRequested` event is recorded in the history of the current open workflow execution with the specified workflowId in the domain.</note>
      #
      # <note>Because this action allows the workflow to properly clean up and gracefully close, it should be used instead of TerminateWorkflowExecution when possible.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain containing the workflow execution to cancel.
      # @option params [required, String] :workflow_id
      #   The workflowId of the workflow execution to cancel.
      # @option params [String] :run_id
      #   The runId of the workflow execution to cancel.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.request_cancel_workflow_execution({
      #     domain: "DomainName", # required
      #     workflow_id: "WorkflowId", # required
      #     run_id: "RunIdOptional",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def request_cancel_workflow_execution(params = {}, options = {})
        req = build_request(:request_cancel_workflow_execution, params)
        req.send_request(options)
      end

      # Used by workers to tell the service that the ActivityTask identified
      # by the `taskToken` was successfully canceled. Additional `details` can
      # be optionally provided using the `details` argument.
      #
      # These `details` (if provided) appear in the `ActivityTaskCanceled`
      # event added to the workflow history.
      #
      # <important>Only use this operation if the `canceled` flag of a RecordActivityTaskHeartbeat request returns `true` and if the activity can be safely undone or abandoned.</important>
      #
      # A task is considered open from the time that it is scheduled until it
      # is closed. Therefore a task is reported as open while a worker is
      # processing it. A task is closed after it has been specified in a call
      # to RespondActivityTaskCompleted, RespondActivityTaskCanceled,
      # RespondActivityTaskFailed, or the task has [timed out][1].
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][2].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types
      # [2]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :task_token
      #   The `taskToken` of the ActivityTask.
      #
      #   <important>`taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results.</important>
      # @option params [String] :details
      #   *Optional.* Information about the cancellation.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.respond_activity_task_canceled({
      #     task_token: "TaskToken", # required
      #     details: "Data",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def respond_activity_task_canceled(params = {}, options = {})
        req = build_request(:respond_activity_task_canceled, params)
        req.send_request(options)
      end

      # Used by workers to tell the service that the ActivityTask identified
      # by the `taskToken` completed successfully with a `result` (if
      # provided). The `result` appears in the `ActivityTaskCompleted` event
      # in the workflow history.
      #
      # <important> If the requested task does not complete successfully, use RespondActivityTaskFailed instead. If the worker finds that the task is canceled through the `canceled` flag returned by RecordActivityTaskHeartbeat, it should cancel the task, clean up and then call RespondActivityTaskCanceled.</important>
      #
      # A task is considered open from the time that it is scheduled until it
      # is closed. Therefore a task is reported as open while a worker is
      # processing it. A task is closed after it has been specified in a call
      # to RespondActivityTaskCompleted, RespondActivityTaskCanceled,
      # RespondActivityTaskFailed, or the task has [timed out][1].
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][2].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types
      # [2]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :task_token
      #   The `taskToken` of the ActivityTask.
      #
      #   <important> `taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results.</important>
      # @option params [String] :result
      #   The result of the activity task. It is a free form string that is
      #   implementation specific.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.respond_activity_task_completed({
      #     task_token: "TaskToken", # required
      #     result: "Data",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def respond_activity_task_completed(params = {}, options = {})
        req = build_request(:respond_activity_task_completed, params)
        req.send_request(options)
      end

      # Used by workers to tell the service that the ActivityTask identified
      # by the `taskToken` has failed with `reason` (if specified). The
      # `reason` and `details` appear in the `ActivityTaskFailed` event added
      # to the workflow history.
      #
      # A task is considered open from the time that it is scheduled until it
      # is closed. Therefore a task is reported as open while a worker is
      # processing it. A task is closed after it has been specified in a call
      # to RespondActivityTaskCompleted, RespondActivityTaskCanceled,
      # RespondActivityTaskFailed, or the task has [timed out][1].
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][2].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types
      # [2]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :task_token
      #   The `taskToken` of the ActivityTask.
      #
      #   <important> `taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results.</important>
      # @option params [String] :reason
      #   Description of the error that may assist in diagnostics.
      # @option params [String] :details
      #   *Optional.* Detailed information about the failure.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.respond_activity_task_failed({
      #     task_token: "TaskToken", # required
      #     reason: "FailureReason",
      #     details: "Data",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def respond_activity_task_failed(params = {}, options = {})
        req = build_request(:respond_activity_task_failed, params)
        req.send_request(options)
      end

      # Used by deciders to tell the service that the DecisionTask identified
      # by the `taskToken` has successfully completed. The `decisions`
      # argument specifies the list of decisions made while processing the
      # task.
      #
      # A `DecisionTaskCompleted` event is added to the workflow history. The
      # `executionContext` specified is attached to the event in the workflow
      # execution history.
      #
      # **Access Control**
      #
      # If an IAM policy grants permission to use
      # `RespondDecisionTaskCompleted`, it can express permissions for the
      # list of decisions in the `decisions` parameter. Each of the decisions
      # has one or more parameters, much like a regular API call. To allow for
      # policies to be as readable as possible, you can express permissions on
      # decisions as if they were actual API calls, including applying
      # conditions to some parameters. For more information, see [Using IAM to
      # Manage Access to Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :task_token
      #   The `taskToken` from the DecisionTask.
      #
      #   <important>`taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results.</important>
      # @option params [Array<Types::Decision>] :decisions
      #   The list of decisions (possibly empty) made by the decider while
      #   processing this decision task. See the docs for the decision structure
      #   for details.
      # @option params [String] :execution_context
      #   User defined context to add to workflow execution.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.respond_decision_task_completed({
      #     task_token: "TaskToken", # required
      #     decisions: [
      #       {
      #         decision_type: "ScheduleActivityTask", # required, accepts ScheduleActivityTask, RequestCancelActivityTask, CompleteWorkflowExecution, FailWorkflowExecution, CancelWorkflowExecution, ContinueAsNewWorkflowExecution, RecordMarker, StartTimer, CancelTimer, SignalExternalWorkflowExecution, RequestCancelExternalWorkflowExecution, StartChildWorkflowExecution, ScheduleLambdaFunction
      #         schedule_activity_task_decision_attributes: {
      #           activity_type: { # required
      #             name: "Name", # required
      #             version: "Version", # required
      #           },
      #           activity_id: "ActivityId", # required
      #           control: "Data",
      #           input: "Data",
      #           schedule_to_close_timeout: "DurationInSecondsOptional",
      #           task_list: {
      #             name: "Name", # required
      #           },
      #           task_priority: "TaskPriority",
      #           schedule_to_start_timeout: "DurationInSecondsOptional",
      #           start_to_close_timeout: "DurationInSecondsOptional",
      #           heartbeat_timeout: "DurationInSecondsOptional",
      #         },
      #         request_cancel_activity_task_decision_attributes: {
      #           activity_id: "ActivityId", # required
      #         },
      #         complete_workflow_execution_decision_attributes: {
      #           result: "Data",
      #         },
      #         fail_workflow_execution_decision_attributes: {
      #           reason: "FailureReason",
      #           details: "Data",
      #         },
      #         cancel_workflow_execution_decision_attributes: {
      #           details: "Data",
      #         },
      #         continue_as_new_workflow_execution_decision_attributes: {
      #           input: "Data",
      #           execution_start_to_close_timeout: "DurationInSecondsOptional",
      #           task_list: {
      #             name: "Name", # required
      #           },
      #           task_priority: "TaskPriority",
      #           task_start_to_close_timeout: "DurationInSecondsOptional",
      #           child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
      #           tag_list: ["Tag"],
      #           workflow_type_version: "Version",
      #           lambda_role: "Arn",
      #         },
      #         record_marker_decision_attributes: {
      #           marker_name: "MarkerName", # required
      #           details: "Data",
      #         },
      #         start_timer_decision_attributes: {
      #           timer_id: "TimerId", # required
      #           control: "Data",
      #           start_to_fire_timeout: "DurationInSeconds", # required
      #         },
      #         cancel_timer_decision_attributes: {
      #           timer_id: "TimerId", # required
      #         },
      #         signal_external_workflow_execution_decision_attributes: {
      #           workflow_id: "WorkflowId", # required
      #           run_id: "RunIdOptional",
      #           signal_name: "SignalName", # required
      #           input: "Data",
      #           control: "Data",
      #         },
      #         request_cancel_external_workflow_execution_decision_attributes: {
      #           workflow_id: "WorkflowId", # required
      #           run_id: "RunIdOptional",
      #           control: "Data",
      #         },
      #         start_child_workflow_execution_decision_attributes: {
      #           workflow_type: { # required
      #             name: "Name", # required
      #             version: "Version", # required
      #           },
      #           workflow_id: "WorkflowId", # required
      #           control: "Data",
      #           input: "Data",
      #           execution_start_to_close_timeout: "DurationInSecondsOptional",
      #           task_list: {
      #             name: "Name", # required
      #           },
      #           task_priority: "TaskPriority",
      #           task_start_to_close_timeout: "DurationInSecondsOptional",
      #           child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
      #           tag_list: ["Tag"],
      #           lambda_role: "Arn",
      #         },
      #         schedule_lambda_function_decision_attributes: {
      #           id: "FunctionId", # required
      #           name: "FunctionName", # required
      #           input: "FunctionInput",
      #           start_to_close_timeout: "DurationInSecondsOptional",
      #         },
      #       },
      #     ],
      #     execution_context: "Data",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def respond_decision_task_completed(params = {}, options = {})
        req = build_request(:respond_decision_task_completed, params)
        req.send_request(options)
      end

      # Records a `WorkflowExecutionSignaled` event in the workflow execution
      # history and creates a decision task for the workflow execution
      # identified by the given domain, workflowId and runId. The event is
      # recorded with the specified user defined signalName and input (if
      # provided).
      #
      # <note> If a runId is not specified, then the `WorkflowExecutionSignaled` event is recorded in the history of the current open workflow with the matching workflowId in the domain.</note>
      #
      # <note> If the specified workflow execution is not open, this method fails with `UnknownResource`.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain containing the workflow execution to signal.
      # @option params [required, String] :workflow_id
      #   The workflowId of the workflow execution to signal.
      # @option params [String] :run_id
      #   The runId of the workflow execution to signal.
      # @option params [required, String] :signal_name
      #   The name of the signal. This name must be meaningful to the target
      #   workflow.
      # @option params [String] :input
      #   Data to attach to the `WorkflowExecutionSignaled` event in the target
      #   workflow execution\'s history.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.signal_workflow_execution({
      #     domain: "DomainName", # required
      #     workflow_id: "WorkflowId", # required
      #     run_id: "RunIdOptional",
      #     signal_name: "SignalName", # required
      #     input: "Data",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def signal_workflow_execution(params = {}, options = {})
        req = build_request(:signal_workflow_execution, params)
        req.send_request(options)
      end

      # Starts an execution of the workflow type in the specified domain using
      # the provided `workflowId` and input data.
      #
      # This action returns the newly started workflow execution.
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * Constrain the following parameters by using a `Condition` element
      #   with the appropriate keys.
      #   * `tagList.member.0`\: The key is `swf:tagList.member.0`.
      #   * `tagList.member.1`\: The key is `swf:tagList.member.1`.
      #   * `tagList.member.2`\: The key is `swf:tagList.member.2`.
      #   * `tagList.member.3`\: The key is `swf:tagList.member.3`.
      #   * `tagList.member.4`\: The key is `swf:tagList.member.4`.
      #   * `taskList`\: String constraint. The key is `swf:taskList.name`.
      #   * `workflowType.name`\: String constraint. The key is
      #     `swf:workflowType.name`.
      #   * `workflowType.version`\: String constraint. The key is
      #     `swf:workflowType.version`.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The name of the domain in which the workflow execution is created.
      # @option params [required, String] :workflow_id
      #   The user defined identifier associated with the workflow execution.
      #   You can use this to associate a custom identifier with the workflow
      #   execution. You may specify the same identifier if a workflow execution
      #   is logically a *restart* of a previous execution. You cannot have two
      #   open workflow executions with the same `workflowId` at the same time.
      #
      #   The specified string must not start or end with whitespace. It must
      #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
      #   control characters (\\u0000-\\u001f \| \\u007f - \\u009f). Also, it
      #   must not contain the literal string quotarnquot.
      # @option params [required, Types::WorkflowType] :workflow_type
      #   The type of the workflow to start.
      # @option params [Types::TaskList] :task_list
      #   The task list to use for the decision tasks generated for this
      #   workflow execution. This overrides the `defaultTaskList` specified
      #   when registering the workflow type.
      #
      #   <note>A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault will be returned.</note>
      #
      #   The specified string must not start or end with whitespace. It must
      #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
      #   control characters (\\u0000-\\u001f \| \\u007f - \\u009f). Also, it
      #   must not contain the literal string quotarnquot.
      # @option params [String] :task_priority
      #   The task priority to use for this workflow execution. This will
      #   override any default priority that was assigned when the workflow type
      #   was registered. If not set, then the default task priority for the
      #   workflow type will be used. Valid values are integers that range from
      #   Java\'s `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
      #   (2147483647). Higher numbers indicate higher priority.
      #
      #   For more information about setting task priority, see [Setting Task
      #   Priority][1] in the *Amazon Simple Workflow Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
      # @option params [String] :input
      #   The input for the workflow execution. This is a free form string which
      #   should be meaningful to the workflow you are starting. This `input` is
      #   made available to the new workflow execution in the
      #   `WorkflowExecutionStarted` history event.
      # @option params [String] :execution_start_to_close_timeout
      #   The total duration for this workflow execution. This overrides the
      #   defaultExecutionStartToCloseTimeout specified when registering the
      #   workflow type.
      #
      #   The duration is specified in seconds; an integer greater than or equal
      #   to 0. Exceeding this limit will cause the workflow execution to time
      #   out. Unlike some of the other timeout parameters in Amazon SWF, you
      #   cannot specify a value of \"NONE\" for this timeout; there is a
      #   one-year max limit on the time that a workflow execution can run.
      #
      #   <note> An execution start-to-close timeout must be specified either through this parameter or as a default when the workflow type is registered. If neither this parameter nor a default execution start-to-close timeout is specified, a fault is returned.</note>
      # @option params [Array<String>] :tag_list
      #   The list of tags to associate with the workflow execution. You can
      #   specify a maximum of 5 tags. You can list workflow executions with a
      #   specific tag by calling ListOpenWorkflowExecutions or
      #   ListClosedWorkflowExecutions and specifying a TagFilter.
      # @option params [String] :task_start_to_close_timeout
      #   Specifies the maximum duration of decision tasks for this workflow
      #   execution. This parameter overrides the
      #   `defaultTaskStartToCloseTimout` specified when registering the
      #   workflow type using RegisterWorkflowType.
      #
      #   The duration is specified in seconds; an integer greater than or equal
      #   to 0. The value \"NONE\" can be used to specify unlimited duration.
      #
      #   <note>A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault will be returned.</note>
      # @option params [String] :child_policy
      #   If set, specifies the policy to use for the child workflow executions
      #   of this workflow execution if it is terminated, by calling the
      #   TerminateWorkflowExecution action explicitly or due to an expired
      #   timeout. This policy overrides the default child policy specified when
      #   registering the workflow type using RegisterWorkflowType.
      #
      #   The supported child policies are:
      #
      #   * **TERMINATE:** the child executions will be terminated.
      #   * **REQUEST\_CANCEL:** a request to cancel will be attempted for each
      #     child execution by recording a `WorkflowExecutionCancelRequested`
      #     event in its history. It is up to the decider to take appropriate
      #     actions when it receives an execution history with this event.
      #   * **ABANDON:** no action will be taken. The child executions will
      #     continue to run.
      #
      #   <note>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.</note>
      # @option params [String] :lambda_role
      #   The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda
      #   functions.
      #
      #   <note>In order for this workflow execution to invoke AWS Lambda functions, an appropriate IAM role must be specified either as a default for the workflow type or through this field.</note>
      # @return [Types::Run] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Run#run_id #runId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.start_workflow_execution({
      #     domain: "DomainName", # required
      #     workflow_id: "WorkflowId", # required
      #     workflow_type: { # required
      #       name: "Name", # required
      #       version: "Version", # required
      #     },
      #     task_list: {
      #       name: "Name", # required
      #     },
      #     task_priority: "TaskPriority",
      #     input: "Data",
      #     execution_start_to_close_timeout: "DurationInSecondsOptional",
      #     tag_list: ["Tag"],
      #     task_start_to_close_timeout: "DurationInSecondsOptional",
      #     child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
      #     lambda_role: "Arn",
      #   })
      #
      # @example Response structure
      #   resp.run_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def start_workflow_execution(params = {}, options = {})
        req = build_request(:start_workflow_execution, params)
        req.send_request(options)
      end

      # Records a `WorkflowExecutionTerminated` event and forces closure of
      # the workflow execution identified by the given domain, runId, and
      # workflowId. The child policy, registered with the workflow type or
      # specified when starting this execution, is applied to any open child
      # workflow executions of this workflow execution.
      #
      # <important> If the identified workflow execution was in progress, it is terminated immediately.</important>
      #
      # <note> If a runId is not specified, then the `WorkflowExecutionTerminated` event is recorded in the history of the current open workflow with the matching workflowId in the domain.</note>
      #
      # <note> You should consider using RequestCancelWorkflowExecution action instead because it allows the workflow to gracefully close while TerminateWorkflowExecution does not.</note>
      #
      # **Access Control**
      #
      # You can use IAM policies to control this action\'s access to Amazon
      # SWF resources as follows:
      #
      # * Use a `Resource` element with the domain name to limit the action to
      #   only specified domains.
      # * Use an `Action` element to allow or deny permission to call this
      #   action.
      # * You cannot use an IAM policy to constrain this action\'s parameters.
      #
      # If the caller does not have sufficient permissions to invoke the
      # action, or the parameter values fall outside the specified
      # constraints, the action fails. The associated event attribute\'s
      # **cause** parameter will be set to OPERATION\_NOT\_PERMITTED. For
      # details and example IAM policies, see [Using IAM to Manage Access to
      # Amazon SWF Workflows][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
      # @option params [required, String] :domain
      #   The domain of the workflow execution to terminate.
      # @option params [required, String] :workflow_id
      #   The workflowId of the workflow execution to terminate.
      # @option params [String] :run_id
      #   The runId of the workflow execution to terminate.
      # @option params [String] :reason
      #   *Optional.* A descriptive reason for terminating the workflow
      #   execution.
      # @option params [String] :details
      #   *Optional.* Details for terminating the workflow execution.
      # @option params [String] :child_policy
      #   If set, specifies the policy to use for the child workflow executions
      #   of the workflow execution being terminated. This policy overrides the
      #   child policy specified for the workflow execution at registration time
      #   or when starting the execution.
      #
      #   The supported child policies are:
      #
      #   * **TERMINATE:** the child executions will be terminated.
      #   * **REQUEST\_CANCEL:** a request to cancel will be attempted for each
      #     child execution by recording a `WorkflowExecutionCancelRequested`
      #     event in its history. It is up to the decider to take appropriate
      #     actions when it receives an execution history with this event.
      #   * **ABANDON:** no action will be taken. The child executions will
      #     continue to run.
      #
      #   <note>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.</note>
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.terminate_workflow_execution({
      #     domain: "DomainName", # required
      #     workflow_id: "WorkflowId", # required
      #     run_id: "RunIdOptional",
      #     reason: "TerminateReason",
      #     details: "Data",
      #     child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def terminate_workflow_execution(params = {}, options = {})
        req = build_request(:terminate_workflow_execution, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
