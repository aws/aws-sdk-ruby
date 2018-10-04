# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudformation)

module Aws::CloudFormation
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cloudformation

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::Query)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Cancels an update on the specified stack. If the call completes
    # successfully, the stack rolls back the update and reverts to the
    # previous stack configuration.
    #
    # <note markdown="1"> You can cancel only stacks that are in the UPDATE\_IN\_PROGRESS state.
    #
    #  </note>
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that is associated with the stack.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `CancelUpdateStack` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to cancel an update on a stack with the
    #   same name. You might retry `CancelUpdateStack` requests to ensure that
    #   AWS CloudFormation successfully received them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_update_stack({
    #     stack_name: "StackName", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CancelUpdateStack AWS API Documentation
    #
    # @overload cancel_update_stack(params = {})
    # @param [Hash] params ({})
    def cancel_update_stack(params = {}, options = {})
      req = build_request(:cancel_update_stack, params)
      req.send_request(options)
    end

    # For a specified stack that is in the `UPDATE_ROLLBACK_FAILED` state,
    # continues rolling it back to the `UPDATE_ROLLBACK_COMPLETE` state.
    # Depending on the cause of the failure, you can manually [ fix the
    # error][1] and continue the rollback. By continuing the rollback, you
    # can return your stack to a working state (the
    # `UPDATE_ROLLBACK_COMPLETE` state), and then try to update the stack
    # again.
    #
    # A stack goes into the `UPDATE_ROLLBACK_FAILED` state when AWS
    # CloudFormation cannot roll back all changes after a failed stack
    # update. For example, you might have a stack that is rolling back to an
    # old database instance that was deleted outside of AWS CloudFormation.
    # Because AWS CloudFormation doesn't know the database was deleted, it
    # assumes that the database instance still exists and attempts to roll
    # back to it, causing the update rollback to fail.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
    #
    # @option params [required, String] :stack_name
    #   The name or the unique ID of the stack that you want to continue
    #   rolling back.
    #
    #   <note markdown="1"> Don't specify the name of a nested stack (a stack that was created by
    #   using the `AWS::CloudFormation::Stack` resource). Instead, use this
    #   operation on the parent stack (the stack that contains the
    #   `AWS::CloudFormation::Stack` resource).
    #
    #    </note>
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to roll back the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf. AWS CloudFormation always uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [Array<String>] :resources_to_skip
    #   A list of the logical IDs of the resources that AWS CloudFormation
    #   skips during the continue update rollback operation. You can specify
    #   only resources that are in the `UPDATE_FAILED` state because a
    #   rollback failed. You can't specify resources that are in the
    #   `UPDATE_FAILED` state for other reasons, for example, because an
    #   update was cancelled. To check why a resource update failed, use the
    #   DescribeStackResources action, and view the resource status reason.
    #
    #   Specify this property to skip rolling back resources that AWS
    #   CloudFormation can't successfully roll back. We recommend that you [
    #   troubleshoot][1] resources before skipping them. AWS CloudFormation
    #   sets the status of the specified resources to `UPDATE_COMPLETE` and
    #   continues to roll back the stack. After the rollback is complete, the
    #   state of the skipped resources will be inconsistent with the state of
    #   the resources in the stack template. Before performing another stack
    #   update, you must update the stack or resources to be consistent with
    #   each other. If you don't, subsequent stack updates might fail, and
    #   the stack will become unrecoverable.
    #
    #   Specify the minimum number of resources required to successfully roll
    #   back your stack. For example, a failed resource update might cause
    #   dependent resources to fail. In this case, it might not be necessary
    #   to skip the dependent resources.
    #
    #   To skip resources that are part of nested stacks, use the following
    #   format: `NestedStackName.ResourceLogicalID`. If you want to specify
    #   the logical ID of a stack resource (`Type:
    #   AWS::CloudFormation::Stack`) in the `ResourcesToSkip` list, then its
    #   corresponding embedded stack must be in one of the following states:
    #   `DELETE_IN_PROGRESS`, `DELETE_COMPLETE`, or `DELETE_FAILED`.
    #
    #   <note markdown="1"> Don't confuse a child stack's name with its corresponding logical ID
    #   defined in the parent stack. For an example of a continue update
    #   rollback operation with nested stacks, see [Using ResourcesToSkip to
    #   recover a nested stacks hierarchy][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `ContinueUpdateRollback` request. Specify
    #   this token if you plan to retry requests so that AWS CloudFormation
    #   knows that you're not attempting to continue the rollback to a stack
    #   with the same name. You might retry `ContinueUpdateRollback` requests
    #   to ensure that AWS CloudFormation successfully received them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.continue_update_rollback({
    #     stack_name: "StackNameOrId", # required
    #     role_arn: "RoleARN",
    #     resources_to_skip: ["ResourceToSkip"],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ContinueUpdateRollback AWS API Documentation
    #
    # @overload continue_update_rollback(params = {})
    # @param [Hash] params ({})
    def continue_update_rollback(params = {}, options = {})
      req = build_request(:continue_update_rollback, params)
      req.send_request(options)
    end

    # Creates a list of changes that will be applied to a stack so that you
    # can review the changes before executing them. You can create a change
    # set for a stack that doesn't exist or an existing stack. If you
    # create a change set for a stack that doesn't exist, the change set
    # shows all of the resources that AWS CloudFormation will create. If you
    # create a change set for an existing stack, AWS CloudFormation compares
    # the stack's information with the information that you submit in the
    # change set and lists the differences. Use change sets to understand
    # which resources AWS CloudFormation will create or change, and how it
    # will change resources in an existing stack, before you create or
    # update a stack.
    #
    # To create a change set for a stack that doesn't exist, for the
    # `ChangeSetType` parameter, specify `CREATE`. To create a change set
    # for an existing stack, specify `UPDATE` for the `ChangeSetType`
    # parameter. After the `CreateChangeSet` call successfully completes,
    # AWS CloudFormation starts creating the change set. To check the status
    # of the change set or to review it, use the DescribeChangeSet action.
    #
    # When you are satisfied with the changes the change set will make,
    # execute the change set by using the ExecuteChangeSet action. AWS
    # CloudFormation doesn't make changes until you execute the change set.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique ID of the stack for which you are creating a
    #   change set. AWS CloudFormation generates the change set by comparing
    #   this stack's information with the information that you submit, such
    #   as a modified template or different parameter input values.
    #
    # @option params [String] :template_body
    #   A structure that contains the body of the revised template, with a
    #   minimum length of 1 byte and a maximum length of 51,200 bytes. AWS
    #   CloudFormation generates the change set by comparing this template
    #   with the template of the stack that you specified.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #
    # @option params [String] :template_url
    #   The location of the file that contains the revised template. The URL
    #   must point to a template (max size: 460,800 bytes) that is located in
    #   an S3 bucket. AWS CloudFormation generates the change set by comparing
    #   this template with the stack that you specified.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #
    # @option params [Boolean] :use_previous_template
    #   Whether to reuse the template that is associated with the stack to
    #   create the change set.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   change set. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #
    # @option params [Array<String>] :capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   update certain stacks. Some stack templates might include resources
    #   that can affect permissions in your AWS account, for example, by
    #   creating new AWS Identity and Access Management (IAM) users. For those
    #   stacks, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`.
    #   The following resources require you to specify this parameter: [
    #   AWS::IAM::AccessKey][1], [ AWS::IAM::Group][2], [
    #   AWS::IAM::InstanceProfile][3], [ AWS::IAM::Policy][4], [
    #   AWS::IAM::Role][5], [ AWS::IAM::User][6], and [
    #   AWS::IAM::UserToGroupAddition][7]. If your stack template contains
    #   these resources, we recommend that you review all permissions
    #   associated with them and edit their permissions if necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates][8].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #
    # @option params [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with if
    #   you execute this change set, such as `AWS::EC2::Instance`,
    #   `AWS::EC2::*`, or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource type that
    #   you're updating, the stack update fails. By default, AWS
    #   CloudFormation grants permissions to all resource types. AWS Identity
    #   and Access Management (IAM) uses this parameter for condition keys in
    #   IAM policies for AWS CloudFormation. For more information, see
    #   [Controlling Access with AWS Identity and Access Management][1] in the
    #   AWS CloudFormation User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes when executing
    #   the change set. AWS CloudFormation uses the role's credentials to
    #   make calls on your behalf. AWS CloudFormation uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #
    # @option params [Array<String>] :notification_arns
    #   The Amazon Resource Names (ARNs) of Amazon Simple Notification Service
    #   (Amazon SNS) topics that AWS CloudFormation associates with the stack.
    #   To remove all associated notification topics, specify an empty list.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation also
    #   propagates these tags to resources in the stack. You can specify a
    #   maximum of 50 tags.
    #
    # @option params [required, String] :change_set_name
    #   The name of the change set. The name must be unique among all change
    #   sets that are associated with the specified stack.
    #
    #   A change set name can contain only alphanumeric, case sensitive
    #   characters and hyphens. It must start with an alphabetic character and
    #   cannot exceed 128 characters.
    #
    # @option params [String] :client_token
    #   A unique identifier for this `CreateChangeSet` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to create another change set with the same
    #   name. You might retry `CreateChangeSet` requests to ensure that AWS
    #   CloudFormation successfully received them.
    #
    # @option params [String] :description
    #   A description to help you identify this change set.
    #
    # @option params [String] :change_set_type
    #   The type of change set operation. To create a change set for a new
    #   stack, specify `CREATE`. To create a change set for an existing stack,
    #   specify `UPDATE`.
    #
    #   If you create a change set for a new stack, AWS Cloudformation creates
    #   a stack with a unique stack ID, but no template or resources. The
    #   stack will be in the [ `REVIEW_IN_PROGRESS` ][1] state until you
    #   execute the change set.
    #
    #   By default, AWS CloudFormation specifies `UPDATE`. You can't use the
    #   `UPDATE` type to create a change set for a new stack or the `CREATE`
    #   type to create a change set for an existing stack.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995
    #
    # @return [Types::CreateChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChangeSetOutput#id #id} => String
    #   * {Types::CreateChangeSetOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_change_set({
    #     stack_name: "StackNameOrId", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     notification_arns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     change_set_name: "ChangeSetName", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     change_set_type: "CREATE", # accepts CREATE, UPDATE
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet AWS API Documentation
    #
    # @overload create_change_set(params = {})
    # @param [Hash] params ({})
    def create_change_set(params = {}, options = {})
      req = build_request(:create_change_set, params)
      req.send_request(options)
    end

    # Creates a stack as specified in the template. After the call completes
    # successfully, the stack creation starts. You can check the status of
    # the stack via the DescribeStacks API.
    #
    # @option params [required, String] :stack_name
    #   The name that is associated with the stack. The name must be unique in
    #   the region in which you are creating the stack.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters (case sensitive)
    #   and hyphens. It must start with an alphabetic character and cannot be
    #   longer than 128 characters.
    #
    #    </note>
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information, go to the [Template Anatomy][1] in the
    #   AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #
    # @option params [Boolean] :disable_rollback
    #   Set to `true` to disable rollback of the stack if stack creation
    #   failed. You can specify either `DisableRollback` or `OnFailure`, but
    #   not both.
    #
    #   Default: `false`
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #
    # @option params [Integer] :timeout_in_minutes
    #   The amount of time that can pass before the stack status becomes
    #   CREATE\_FAILED; if `DisableRollback` is not set or is set to `false`,
    #   the stack will be rolled back.
    #
    # @option params [Array<String>] :notification_arns
    #   The Simple Notification Service (SNS) topic ARNs to publish stack
    #   related events. You can find your SNS topic ARNs using the SNS console
    #   or your Command Line Interface (CLI).
    #
    # @option params [Array<String>] :capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   create certain stacks. Some stack templates might include resources
    #   that can affect permissions in your AWS account, for example, by
    #   creating new AWS Identity and Access Management (IAM) users. For those
    #   stacks, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`.
    #   The following resources require you to specify this parameter: [
    #   AWS::IAM::AccessKey][1], [ AWS::IAM::Group][2], [
    #   AWS::IAM::InstanceProfile][3], [ AWS::IAM::Policy][4], [
    #   AWS::IAM::Role][5], [ AWS::IAM::User][6], and [
    #   AWS::IAM::UserToGroupAddition][7]. If your stack template contains
    #   these resources, we recommend that you review all permissions
    #   associated with them and edit their permissions if necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates][8].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #
    # @option params [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this create stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`. Use the following syntax to describe
    #   template resource types: `AWS::*` (for all AWS resource), `Custom::*`
    #   (for all custom resources), `Custom::logical_ID ` (for a specific
    #   custom resource), `AWS::service_name::*` (for all resources of a
    #   particular AWS service), and `AWS::service_name::resource_logical_ID `
    #   (for a specific AWS resource).
    #
    #   If the list of resource types doesn't include a resource that you're
    #   creating, the stack creation fails. By default, AWS CloudFormation
    #   grants permissions to all resource types. AWS Identity and Access
    #   Management (IAM) uses this parameter for AWS CloudFormation-specific
    #   condition keys in IAM policies. For more information, see [Controlling
    #   Access with AWS Identity and Access Management][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to create the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf. AWS CloudFormation always uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [String] :on_failure
    #   Determines what action will be taken if stack creation fails. This
    #   must be one of: DO\_NOTHING, ROLLBACK, or DELETE. You can specify
    #   either `OnFailure` or `DisableRollback`, but not both.
    #
    #   Default: `ROLLBACK`
    #
    # @option params [String] :stack_policy_body
    #   Structure containing the stack policy body. For more information, go
    #   to [ Prevent Updates to Stack Resources][1] in the *AWS CloudFormation
    #   User Guide*. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #
    # @option params [String] :stack_policy_url
    #   Location of a file containing the stack policy. The URL must point to
    #   a policy (maximum size: 16 KB) located in an S3 bucket in the same
    #   region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation also
    #   propagates these tags to the resources created in the stack. A maximum
    #   number of 50 tags can be specified.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `CreateStack` request. Specify this token
    #   if you plan to retry requests so that AWS CloudFormation knows that
    #   you're not attempting to create a stack with the same name. You might
    #   retry `CreateStack` requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #
    # @option params [Boolean] :enable_termination_protection
    #   Whether to enable termination protection on the specified stack. If a
    #   user attempts to delete a stack with termination protection enabled,
    #   the operation fails and the stack remains unchanged. For more
    #   information, see [Protecting a Stack From Being Deleted][1] in the
    #   *AWS CloudFormation User Guide*. Termination protection is disabled on
    #   stacks by default.
    #
    #   For [nested stacks][2], termination protection is set on the root
    #   stack and cannot be changed directly on the nested stack.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #
    # @return [Types::CreateStackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack({
    #     stack_name: "StackName", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     disable_rollback: false,
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     timeout_in_minutes: 1,
    #     notification_arns: ["NotificationARN"],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     on_failure: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK, DELETE
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     enable_termination_protection: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStack AWS API Documentation
    #
    # @overload create_stack(params = {})
    # @param [Hash] params ({})
    def create_stack(params = {}, options = {})
      req = build_request(:create_stack, params)
      req.send_request(options)
    end

    # Creates stack instances for the specified accounts, within the
    # specified regions. A stack instance refers to a stack in a specific
    # account and region. `Accounts` and `Regions` are required
    # parameters—you must specify at least one account and one region.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to create stack
    #   instances from.
    #
    # @option params [required, Array<String>] :accounts
    #   The names of one or more AWS accounts that you want to create stack
    #   instances in the specified region(s) for.
    #
    # @option params [required, Array<String>] :regions
    #   The names of one or more regions where you want to create stack
    #   instances using the specified AWS account(s).
    #
    # @option params [Array<Types::Parameter>] :parameter_overrides
    #   A list of stack set parameters whose values you want to override in
    #   the selected stack instances.
    #
    #   Any overridden parameter values will be applied to all stack instances
    #   in the specified accounts and regions. When specifying parameters and
    #   their values, be aware of how AWS CloudFormation sets parameter values
    #   during stack instance operations:
    #
    #   * To override the current value for a parameter, include the parameter
    #     and specify its value.
    #
    #   * To leave a parameter set to its present value, you can do one of the
    #     following:
    #
    #     * Do not include the parameter in the list.
    #
    #     * Include the parameter and specify `UsePreviousValue` as `true`.
    #       (You cannot specify both a value and set `UsePreviousValue` to
    #       `true`.)
    #
    #   * To set all overridden parameter back to the values specified in the
    #     stack set, specify a parameter list but do not include any
    #     parameters.
    #
    #   * To leave all parameters set to their present values, do not specify
    #     this property at all.
    #
    #   During stack set updates, any parameter values overridden for a stack
    #   instance are not updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in the
    #   stack set; to add or delete a parameter itself, use
    #   [UpdateStackSet][1] to update the stack set template.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #
    # @option params [String] :operation_id
    #   The unique identifier for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You might retry stack
    #   set operation requests to ensure that AWS CloudFormation successfully
    #   received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   Repeating this stack set operation with a new operation ID retries all
    #   stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackInstancesOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack_instances({
    #     stack_set_name: "StackSetName", # required
    #     accounts: ["Account"], # required
    #     regions: ["Region"], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     operation_preferences: {
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     operation_id: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackInstances AWS API Documentation
    #
    # @overload create_stack_instances(params = {})
    # @param [Hash] params ({})
    def create_stack_instances(params = {}, options = {})
      req = build_request(:create_stack_instances, params)
      req.send_request(options)
    end

    # Creates a stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name to associate with the stack set. The name must be unique in
    #   the region where you create your stack set.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters (case-sensitive)
    #   and hyphens. It must start with an alphabetic character and can't be
    #   longer than 128 characters.
    #
    #    </note>
    #
    # @option params [String] :description
    #   A description of the stack set. You can use the description to
    #   identify the stack set's purpose or other important information.
    #
    # @option params [String] :template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes. For more information,
    #   see [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the TemplateBody or the
    #   TemplateURL parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   The location of the file that contains the template body. The URL must
    #   point to a template (maximum size: 460,800 bytes) that's located in
    #   an Amazon S3 bucket. For more information, see [Template Anatomy][1]
    #   in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the TemplateBody or the
    #   TemplateURL parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   The input parameters for the stack set template.
    #
    # @option params [Array<String>] :capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   create certain stack sets. Some stack set templates might include
    #   resources that can affect permissions in your AWS account—for example,
    #   by creating new AWS Identity and Access Management (IAM) users. For
    #   those stack sets, you must explicitly acknowledge their capabilities
    #   by specifying this parameter.
    #
    #   The only valid values are CAPABILITY\_IAM and CAPABILITY\_NAMED\_IAM.
    #   The following resources require you to specify this parameter:
    #
    #   * AWS::IAM::AccessKey
    #
    #   * AWS::IAM::Group
    #
    #   * AWS::IAM::InstanceProfile
    #
    #   * AWS::IAM::Policy
    #
    #   * AWS::IAM::Role
    #
    #   * AWS::IAM::User
    #
    #   * AWS::IAM::UserToGroupAddition
    #
    #   If your stack template contains these resources, we recommend that you
    #   review all permissions that are associated with them and edit their
    #   permissions if necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   CAPABILITY\_NAMED\_IAM. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates.][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key-value pairs to associate with this stack set and the stacks
    #   created from it. AWS CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. A maximum number
    #   of 50 tags can be specified.
    #
    #   If you specify tags as part of a `CreateStackSet` action, AWS
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you don't, the entire `CreateStackSet` action
    #   fails with an `access denied` error, and the stack set is not created.
    #
    # @option params [String] :administration_role_arn
    #   The Amazon Resource Number (ARN) of the IAM role to use to create this
    #   stack set.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific stack sets
    #   within the same administrator account. For more information, see
    #   [Prerequisites: Granting Permissions for Stack Set Operations][1] in
    #   the *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #
    # @option params [String] :execution_role_name
    #   The name of the IAM execution role to use to create the stack set. If
    #   you do not specify an execution role, AWS CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the stack set
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in their
    #   stack sets.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `CreateStackSet` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to create another stack set with the same
    #   name. You might retry `CreateStackSet` requests to ensure that AWS
    #   CloudFormation successfully received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackSetOutput#stack_set_id #stack_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack_set({
    #     stack_set_name: "StackSetName", # required
    #     description: "Description",
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     administration_role_arn: "RoleARN",
    #     execution_role_name: "ExecutionRoleName",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackSet AWS API Documentation
    #
    # @overload create_stack_set(params = {})
    # @param [Hash] params ({})
    def create_stack_set(params = {}, options = {})
      req = build_request(:create_stack_set, params)
      req.send_request(options)
    end

    # Deletes the specified change set. Deleting change sets ensures that no
    # one executes the wrong change set.
    #
    # If the call successfully completes, AWS CloudFormation successfully
    # deleted the change set.
    #
    # @option params [required, String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you want
    #   to delete.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set to delete, specify the stack
    #   name or ID (ARN) that is associated with it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_change_set({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteChangeSet AWS API Documentation
    #
    # @overload delete_change_set(params = {})
    # @param [Hash] params ({})
    def delete_change_set(params = {}, options = {})
      req = build_request(:delete_change_set, params)
      req.send_request(options)
    end

    # Deletes a specified stack. Once the call completes successfully, stack
    # deletion starts. Deleted stacks do not show up in the DescribeStacks
    # API if the deletion has been completed successfully.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that is associated with the stack.
    #
    # @option params [Array<String>] :retain_resources
    #   For stacks in the `DELETE_FAILED` state, a list of resource logical
    #   IDs that are associated with the resources you want to retain. During
    #   deletion, AWS CloudFormation deletes the stack but does not delete the
    #   retained resources.
    #
    #   Retaining resources is useful when you cannot delete a resource, such
    #   as a non-empty S3 bucket, but you want to delete the stack.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to delete the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `DeleteStack` request. Specify this token
    #   if you plan to retry requests so that AWS CloudFormation knows that
    #   you're not attempting to delete a stack with the same name. You might
    #   retry `DeleteStack` requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack({
    #     stack_name: "StackName", # required
    #     retain_resources: ["LogicalResourceId"],
    #     role_arn: "RoleARN",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStack AWS API Documentation
    #
    # @overload delete_stack(params = {})
    # @param [Hash] params ({})
    def delete_stack(params = {}, options = {})
      req = build_request(:delete_stack, params)
      req.send_request(options)
    end

    # Deletes stack instances for the specified accounts, in the specified
    # regions.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to delete stack
    #   instances for.
    #
    # @option params [required, Array<String>] :accounts
    #   The names of the AWS accounts that you want to delete stack instances
    #   for.
    #
    # @option params [required, Array<String>] :regions
    #   The regions where you want to delete stack set instances.
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #
    # @option params [required, Boolean] :retain_stacks
    #   Removes the stack instances from the specified stack set, but doesn't
    #   delete the stacks. You can't reassociate a retained stack or add an
    #   existing, saved stack to a new stack set.
    #
    #   For more information, see [Stack set operation options][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #
    # @option params [String] :operation_id
    #   The unique identifier for this stack set operation.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You can retry stack set
    #   operation requests to ensure that AWS CloudFormation successfully
    #   received them.
    #
    #   Repeating this stack set operation with a new operation ID retries all
    #   stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStackInstancesOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack_instances({
    #     stack_set_name: "StackSetName", # required
    #     accounts: ["Account"], # required
    #     regions: ["Region"], # required
    #     operation_preferences: {
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     retain_stacks: false, # required
    #     operation_id: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInstances AWS API Documentation
    #
    # @overload delete_stack_instances(params = {})
    # @param [Hash] params ({})
    def delete_stack_instances(params = {}, options = {})
      req = build_request(:delete_stack_instances, params)
      req.send_request(options)
    end

    # Deletes a stack set. Before you can delete a stack set, all of its
    # member stack instances must be deleted. For more information about how
    # to do this, see DeleteStackInstances.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you're deleting. You can
    #   obtain this value by running ListStackSets.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack_set({
    #     stack_set_name: "StackSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackSet AWS API Documentation
    #
    # @overload delete_stack_set(params = {})
    # @param [Hash] params ({})
    def delete_stack_set(params = {}, options = {})
      req = build_request(:delete_stack_set, params)
      req.send_request(options)
    end

    # Retrieves your account's AWS CloudFormation limits, such as the
    # maximum number of stacks that you can create in your account.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of limits that you want to
    #   retrieve.
    #
    # @return [Types::DescribeAccountLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountLimitsOutput#account_limits #account_limits} => Array&lt;Types::AccountLimit&gt;
    #   * {Types::DescribeAccountLimitsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_limits #=> Array
    #   resp.account_limits[0].name #=> String
    #   resp.account_limits[0].value #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeAccountLimits AWS API Documentation
    #
    # @overload describe_account_limits(params = {})
    # @param [Hash] params ({})
    def describe_account_limits(params = {}, options = {})
      req = build_request(:describe_account_limits, params)
      req.send_request(options)
    end

    # Returns the inputs for the change set and a list of changes that AWS
    # CloudFormation will make if you execute the change set. For more
    # information, see [Updating Stacks Using Change Sets][1] in the AWS
    # CloudFormation User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html
    #
    # @option params [required, String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you want
    #   to describe.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   ID (ARN) of the change set you want to describe.
    #
    # @option params [String] :next_token
    #   A string (provided by the DescribeChangeSet response output) that
    #   identifies the next page of information that you want to retrieve.
    #
    # @return [Types::DescribeChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChangeSetOutput#change_set_name #change_set_name} => String
    #   * {Types::DescribeChangeSetOutput#change_set_id #change_set_id} => String
    #   * {Types::DescribeChangeSetOutput#stack_id #stack_id} => String
    #   * {Types::DescribeChangeSetOutput#stack_name #stack_name} => String
    #   * {Types::DescribeChangeSetOutput#description #description} => String
    #   * {Types::DescribeChangeSetOutput#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::DescribeChangeSetOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeChangeSetOutput#execution_status #execution_status} => String
    #   * {Types::DescribeChangeSetOutput#status #status} => String
    #   * {Types::DescribeChangeSetOutput#status_reason #status_reason} => String
    #   * {Types::DescribeChangeSetOutput#notification_arns #notification_arns} => Array&lt;String&gt;
    #   * {Types::DescribeChangeSetOutput#rollback_configuration #rollback_configuration} => Types::RollbackConfiguration
    #   * {Types::DescribeChangeSetOutput#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::DescribeChangeSetOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeChangeSetOutput#changes #changes} => Array&lt;Types::Change&gt;
    #   * {Types::DescribeChangeSetOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_change_set({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_name #=> String
    #   resp.change_set_id #=> String
    #   resp.stack_id #=> String
    #   resp.stack_name #=> String
    #   resp.description #=> String
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_key #=> String
    #   resp.parameters[0].parameter_value #=> String
    #   resp.parameters[0].use_previous_value #=> Boolean
    #   resp.parameters[0].resolved_value #=> String
    #   resp.creation_time #=> Time
    #   resp.execution_status #=> String, one of "UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_COMPLETE", "FAILED"
    #   resp.status_reason #=> String
    #   resp.notification_arns #=> Array
    #   resp.notification_arns[0] #=> String
    #   resp.rollback_configuration.rollback_triggers #=> Array
    #   resp.rollback_configuration.rollback_triggers[0].arn #=> String
    #   resp.rollback_configuration.rollback_triggers[0].type #=> String
    #   resp.rollback_configuration.monitoring_time_in_minutes #=> Integer
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.changes #=> Array
    #   resp.changes[0].type #=> String, one of "Resource"
    #   resp.changes[0].resource_change.action #=> String, one of "Add", "Modify", "Remove"
    #   resp.changes[0].resource_change.logical_resource_id #=> String
    #   resp.changes[0].resource_change.physical_resource_id #=> String
    #   resp.changes[0].resource_change.resource_type #=> String
    #   resp.changes[0].resource_change.replacement #=> String, one of "True", "False", "Conditional"
    #   resp.changes[0].resource_change.scope #=> Array
    #   resp.changes[0].resource_change.scope[0] #=> String, one of "Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"
    #   resp.changes[0].resource_change.details #=> Array
    #   resp.changes[0].resource_change.details[0].target.attribute #=> String, one of "Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"
    #   resp.changes[0].resource_change.details[0].target.name #=> String
    #   resp.changes[0].resource_change.details[0].target.requires_recreation #=> String, one of "Never", "Conditionally", "Always"
    #   resp.changes[0].resource_change.details[0].evaluation #=> String, one of "Static", "Dynamic"
    #   resp.changes[0].resource_change.details[0].change_source #=> String, one of "ResourceReference", "ParameterReference", "ResourceAttribute", "DirectModification", "Automatic"
    #   resp.changes[0].resource_change.details[0].causing_entity #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSet AWS API Documentation
    #
    # @overload describe_change_set(params = {})
    # @param [Hash] params ({})
    def describe_change_set(params = {}, options = {})
      req = build_request(:describe_change_set, params)
      req.send_request(options)
    end

    # Returns all stack related events for a specified stack in reverse
    # chronological order. For more information about a stack's event
    # history, go to [Stacks][1] in the AWS CloudFormation User Guide.
    #
    # <note markdown="1"> You can list events for stacks that have failed to create or have been
    # deleted by specifying the unique stack identifier (stack ID).
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of events that you want to
    #   retrieve.
    #
    # @return [Types::DescribeStackEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackEventsOutput#stack_events #stack_events} => Array&lt;Types::StackEvent&gt;
    #   * {Types::DescribeStackEventsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_events({
    #     stack_name: "StackName",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_events #=> Array
    #   resp.stack_events[0].stack_id #=> String
    #   resp.stack_events[0].event_id #=> String
    #   resp.stack_events[0].stack_name #=> String
    #   resp.stack_events[0].logical_resource_id #=> String
    #   resp.stack_events[0].physical_resource_id #=> String
    #   resp.stack_events[0].resource_type #=> String
    #   resp.stack_events[0].timestamp #=> Time
    #   resp.stack_events[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE"
    #   resp.stack_events[0].resource_status_reason #=> String
    #   resp.stack_events[0].resource_properties #=> String
    #   resp.stack_events[0].client_request_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackEvents AWS API Documentation
    #
    # @overload describe_stack_events(params = {})
    # @param [Hash] params ({})
    def describe_stack_events(params = {}, options = {})
      req = build_request(:describe_stack_events, params)
      req.send_request(options)
    end

    # Returns the stack instance that's associated with the specified stack
    # set, AWS account, and region.
    #
    # For a list of stack instances that are associated with a specific
    # stack set, use ListStackInstances.
    #
    # @option params [required, String] :stack_set_name
    #   The name or the unique stack ID of the stack set that you want to get
    #   stack instance information for.
    #
    # @option params [required, String] :stack_instance_account
    #   The ID of an AWS account that's associated with this stack instance.
    #
    # @option params [required, String] :stack_instance_region
    #   The name of a region that's associated with this stack instance.
    #
    # @return [Types::DescribeStackInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackInstanceOutput#stack_instance #stack_instance} => Types::StackInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_instance({
    #     stack_set_name: "StackSetName", # required
    #     stack_instance_account: "Account", # required
    #     stack_instance_region: "Region", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_instance.stack_set_id #=> String
    #   resp.stack_instance.region #=> String
    #   resp.stack_instance.account #=> String
    #   resp.stack_instance.stack_id #=> String
    #   resp.stack_instance.parameter_overrides #=> Array
    #   resp.stack_instance.parameter_overrides[0].parameter_key #=> String
    #   resp.stack_instance.parameter_overrides[0].parameter_value #=> String
    #   resp.stack_instance.parameter_overrides[0].use_previous_value #=> Boolean
    #   resp.stack_instance.parameter_overrides[0].resolved_value #=> String
    #   resp.stack_instance.status #=> String, one of "CURRENT", "OUTDATED", "INOPERABLE"
    #   resp.stack_instance.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackInstance AWS API Documentation
    #
    # @overload describe_stack_instance(params = {})
    # @param [Hash] params ({})
    def describe_stack_instance(params = {}, options = {})
      req = build_request(:describe_stack_instance, params)
      req.send_request(options)
    end

    # Returns a description of the specified resource in the specified
    # stack.
    #
    # For deleted stacks, DescribeStackResource returns resource information
    # for up to 90 days after the stack has been deleted.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [required, String] :logical_resource_id
    #   The logical name of the resource as specified in the template.
    #
    #   Default: There is no default value.
    #
    # @return [Types::DescribeStackResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackResourceOutput#stack_resource_detail #stack_resource_detail} => Types::StackResourceDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resource({
    #     stack_name: "StackName", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_detail.stack_name #=> String
    #   resp.stack_resource_detail.stack_id #=> String
    #   resp.stack_resource_detail.logical_resource_id #=> String
    #   resp.stack_resource_detail.physical_resource_id #=> String
    #   resp.stack_resource_detail.resource_type #=> String
    #   resp.stack_resource_detail.last_updated_timestamp #=> Time
    #   resp.stack_resource_detail.resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE"
    #   resp.stack_resource_detail.resource_status_reason #=> String
    #   resp.stack_resource_detail.description #=> String
    #   resp.stack_resource_detail.metadata #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResource AWS API Documentation
    #
    # @overload describe_stack_resource(params = {})
    # @param [Hash] params ({})
    def describe_stack_resource(params = {}, options = {})
      req = build_request(:describe_stack_resource, params)
      req.send_request(options)
    end

    # Returns AWS resource descriptions for running and deleted stacks. If
    # `StackName` is specified, all the associated resources that are part
    # of the stack are returned. If `PhysicalResourceId` is specified, the
    # associated resources of the stack that the resource belongs to are
    # returned.
    #
    # <note markdown="1"> Only the first 100 resources will be returned. If your stack has more
    # resources than this, you should use `ListStackResources` instead.
    #
    #  </note>
    #
    # For deleted stacks, `DescribeStackResources` returns resource
    # information for up to 90 days after the stack has been deleted.
    #
    # You must specify either `StackName` or `PhysicalResourceId`, but not
    # both. In addition, you can specify `LogicalResourceId` to filter the
    # returned result. For more information about resources, the
    # `LogicalResourceId` and `PhysicalResourceId`, go to the [AWS
    # CloudFormation User Guide][1].
    #
    # <note markdown="1"> A `ValidationError` is returned if you specify both `StackName` and
    # `PhysicalResourceId` in the same request.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    #   Required: Conditional. If you do not specify `StackName`, you must
    #   specify `PhysicalResourceId`.
    #
    # @option params [String] :logical_resource_id
    #   The logical name of the resource as specified in the template.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :physical_resource_id
    #   The name or unique identifier that corresponds to a physical instance
    #   ID of a resource supported by AWS CloudFormation.
    #
    #   For example, for an Amazon Elastic Compute Cloud (EC2) instance,
    #   `PhysicalResourceId` corresponds to the `InstanceId`. You can pass the
    #   EC2 `InstanceId` to `DescribeStackResources` to find which stack the
    #   instance belongs to and what other resources are part of the stack.
    #
    #   Required: Conditional. If you do not specify `PhysicalResourceId`, you
    #   must specify `StackName`.
    #
    #   Default: There is no default value.
    #
    # @return [Types::DescribeStackResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackResourcesOutput#stack_resources #stack_resources} => Array&lt;Types::StackResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resources({
    #     stack_name: "StackName",
    #     logical_resource_id: "LogicalResourceId",
    #     physical_resource_id: "PhysicalResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resources #=> Array
    #   resp.stack_resources[0].stack_name #=> String
    #   resp.stack_resources[0].stack_id #=> String
    #   resp.stack_resources[0].logical_resource_id #=> String
    #   resp.stack_resources[0].physical_resource_id #=> String
    #   resp.stack_resources[0].resource_type #=> String
    #   resp.stack_resources[0].timestamp #=> Time
    #   resp.stack_resources[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE"
    #   resp.stack_resources[0].resource_status_reason #=> String
    #   resp.stack_resources[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResources AWS API Documentation
    #
    # @overload describe_stack_resources(params = {})
    # @param [Hash] params ({})
    def describe_stack_resources(params = {}, options = {})
      req = build_request(:describe_stack_resources, params)
      req.send_request(options)
    end

    # Returns the description of the specified stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set whose description you want.
    #
    # @return [Types::DescribeStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackSetOutput#stack_set #stack_set} => Types::StackSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_set({
    #     stack_set_name: "StackSetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_set.stack_set_name #=> String
    #   resp.stack_set.stack_set_id #=> String
    #   resp.stack_set.description #=> String
    #   resp.stack_set.status #=> String, one of "ACTIVE", "DELETED"
    #   resp.stack_set.template_body #=> String
    #   resp.stack_set.parameters #=> Array
    #   resp.stack_set.parameters[0].parameter_key #=> String
    #   resp.stack_set.parameters[0].parameter_value #=> String
    #   resp.stack_set.parameters[0].use_previous_value #=> Boolean
    #   resp.stack_set.parameters[0].resolved_value #=> String
    #   resp.stack_set.capabilities #=> Array
    #   resp.stack_set.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"
    #   resp.stack_set.tags #=> Array
    #   resp.stack_set.tags[0].key #=> String
    #   resp.stack_set.tags[0].value #=> String
    #   resp.stack_set.stack_set_arn #=> String
    #   resp.stack_set.administration_role_arn #=> String
    #   resp.stack_set.execution_role_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSet AWS API Documentation
    #
    # @overload describe_stack_set(params = {})
    # @param [Hash] params ({})
    def describe_stack_set(params = {}, options = {})
      req = build_request(:describe_stack_set, params)
      req.send_request(options)
    end

    # Returns the description of the specified stack set operation.
    #
    # @option params [required, String] :stack_set_name
    #   The name or the unique stack ID of the stack set for the stack
    #   operation.
    #
    # @option params [required, String] :operation_id
    #   The unique ID of the stack set operation.
    #
    # @return [Types::DescribeStackSetOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackSetOperationOutput#stack_set_operation #stack_set_operation} => Types::StackSetOperation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_set_operation({
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_set_operation.operation_id #=> String
    #   resp.stack_set_operation.stack_set_id #=> String
    #   resp.stack_set_operation.action #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.stack_set_operation.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED"
    #   resp.stack_set_operation.operation_preferences.region_order #=> Array
    #   resp.stack_set_operation.operation_preferences.region_order[0] #=> String
    #   resp.stack_set_operation.operation_preferences.failure_tolerance_count #=> Integer
    #   resp.stack_set_operation.operation_preferences.failure_tolerance_percentage #=> Integer
    #   resp.stack_set_operation.operation_preferences.max_concurrent_count #=> Integer
    #   resp.stack_set_operation.operation_preferences.max_concurrent_percentage #=> Integer
    #   resp.stack_set_operation.retain_stacks #=> Boolean
    #   resp.stack_set_operation.administration_role_arn #=> String
    #   resp.stack_set_operation.execution_role_name #=> String
    #   resp.stack_set_operation.creation_timestamp #=> Time
    #   resp.stack_set_operation.end_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOperation AWS API Documentation
    #
    # @overload describe_stack_set_operation(params = {})
    # @param [Hash] params ({})
    def describe_stack_set_operation(params = {}, options = {})
      req = build_request(:describe_stack_set_operation, params)
      req.send_request(options)
    end

    # Returns the description for the specified stack; if no stack name was
    # specified, then it returns the description for all the stacks created.
    #
    # <note markdown="1"> If the stack does not exist, an `AmazonCloudFormationException` is
    # returned.
    #
    #  </note>
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stacks that you want to
    #   retrieve.
    #
    # @return [Types::DescribeStacksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStacksOutput#stacks #stacks} => Array&lt;Types::Stack&gt;
    #   * {Types::DescribeStacksOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stacks({
    #     stack_name: "StackName",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stacks #=> Array
    #   resp.stacks[0].stack_id #=> String
    #   resp.stacks[0].stack_name #=> String
    #   resp.stacks[0].change_set_id #=> String
    #   resp.stacks[0].description #=> String
    #   resp.stacks[0].parameters #=> Array
    #   resp.stacks[0].parameters[0].parameter_key #=> String
    #   resp.stacks[0].parameters[0].parameter_value #=> String
    #   resp.stacks[0].parameters[0].use_previous_value #=> Boolean
    #   resp.stacks[0].parameters[0].resolved_value #=> String
    #   resp.stacks[0].creation_time #=> Time
    #   resp.stacks[0].deletion_time #=> Time
    #   resp.stacks[0].last_updated_time #=> Time
    #   resp.stacks[0].rollback_configuration.rollback_triggers #=> Array
    #   resp.stacks[0].rollback_configuration.rollback_triggers[0].arn #=> String
    #   resp.stacks[0].rollback_configuration.rollback_triggers[0].type #=> String
    #   resp.stacks[0].rollback_configuration.monitoring_time_in_minutes #=> Integer
    #   resp.stacks[0].stack_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS"
    #   resp.stacks[0].stack_status_reason #=> String
    #   resp.stacks[0].disable_rollback #=> Boolean
    #   resp.stacks[0].notification_arns #=> Array
    #   resp.stacks[0].notification_arns[0] #=> String
    #   resp.stacks[0].timeout_in_minutes #=> Integer
    #   resp.stacks[0].capabilities #=> Array
    #   resp.stacks[0].capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"
    #   resp.stacks[0].outputs #=> Array
    #   resp.stacks[0].outputs[0].output_key #=> String
    #   resp.stacks[0].outputs[0].output_value #=> String
    #   resp.stacks[0].outputs[0].description #=> String
    #   resp.stacks[0].outputs[0].export_name #=> String
    #   resp.stacks[0].role_arn #=> String
    #   resp.stacks[0].tags #=> Array
    #   resp.stacks[0].tags[0].key #=> String
    #   resp.stacks[0].tags[0].value #=> String
    #   resp.stacks[0].enable_termination_protection #=> Boolean
    #   resp.stacks[0].parent_id #=> String
    #   resp.stacks[0].root_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStacks AWS API Documentation
    #
    # @overload describe_stacks(params = {})
    # @param [Hash] params ({})
    def describe_stacks(params = {}, options = {})
      req = build_request(:describe_stacks, params)
      req.send_request(options)
    end

    # Returns the estimated monthly cost of a template. The return value is
    # an AWS Simple Monthly Calculator URL with a query string that
    # describes the resources required to run the template.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. (For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.)
    #
    #   Conditional: You must pass `TemplateBody` or `TemplateURL`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template that is located in an Amazon S3 bucket. For more information,
    #   go to [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters.
    #
    # @return [Types::EstimateTemplateCostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EstimateTemplateCostOutput#url #url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.estimate_template_cost({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/EstimateTemplateCost AWS API Documentation
    #
    # @overload estimate_template_cost(params = {})
    # @param [Hash] params ({})
    def estimate_template_cost(params = {}, options = {})
      req = build_request(:estimate_template_cost, params)
      req.send_request(options)
    end

    # Updates a stack using the input information that was provided when the
    # specified change set was created. After the call successfully
    # completes, AWS CloudFormation starts updating the stack. Use the
    # DescribeStacks action to view the status of the update.
    #
    # When you execute a change set, AWS CloudFormation deletes all other
    # change sets associated with the stack because they aren't valid for
    # the updated stack.
    #
    # If a stack policy is associated with the stack, AWS CloudFormation
    # enforces the policy during the update. You can't specify a temporary
    # stack policy that overrides the current policy.
    #
    # @option params [required, String] :change_set_name
    #   The name or ARN of the change set that you want use to update the
    #   specified stack.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   ID (ARN) that is associated with the change set you want to execute.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `ExecuteChangeSet` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to execute a change set to update a stack
    #   with the same name. You might retry `ExecuteChangeSet` requests to
    #   ensure that AWS CloudFormation successfully received them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_change_set({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ExecuteChangeSet AWS API Documentation
    #
    # @overload execute_change_set(params = {})
    # @param [Hash] params ({})
    def execute_change_set(params = {}, options = {})
      req = build_request(:execute_change_set, params)
      req.send_request(options)
    end

    # Returns the stack policy for a specified stack. If a stack doesn't
    # have a policy, a null value is returned.
    #
    # @option params [required, String] :stack_name
    #   The name or unique stack ID that is associated with the stack whose
    #   policy you want to get.
    #
    # @return [Types::GetStackPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStackPolicyOutput#stack_policy_body #stack_policy_body} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stack_policy({
    #     stack_name: "StackName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_policy_body #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetStackPolicy AWS API Documentation
    #
    # @overload get_stack_policy(params = {})
    # @param [Hash] params ({})
    def get_stack_policy(params = {}, options = {})
      req = build_request(:get_stack_policy, params)
      req.send_request(options)
    end

    # Returns the template body for a specified stack. You can get the
    # template for running or deleted stacks.
    #
    # For deleted stacks, GetTemplate returns the template for up to 90 days
    # after the stack has been deleted.
    #
    # <note markdown="1"> If the template does not exist, a `ValidationError` is returned.
    #
    #  </note>
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of a change set for which AWS
    #   CloudFormation returns the associated template. If you specify a name,
    #   you must also specify the `StackName`.
    #
    # @option params [String] :template_stage
    #   For templates that include transforms, the stage of the template that
    #   AWS CloudFormation returns. To get the user-submitted template,
    #   specify `Original`. To get the template after AWS CloudFormation has
    #   processed all transforms, specify `Processed`.
    #
    #   If the template doesn't include transforms, `Original` and
    #   `Processed` return the same template. By default, AWS CloudFormation
    #   specifies `Original`.
    #
    # @return [Types::GetTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateOutput#template_body #template_body} => String
    #   * {Types::GetTemplateOutput#stages_available #stages_available} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template({
    #     stack_name: "StackName",
    #     change_set_name: "ChangeSetNameOrId",
    #     template_stage: "Original", # accepts Original, Processed
    #   })
    #
    # @example Response structure
    #
    #   resp.template_body #=> String
    #   resp.stages_available #=> Array
    #   resp.stages_available[0] #=> String, one of "Original", "Processed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplate AWS API Documentation
    #
    # @overload get_template(params = {})
    # @param [Hash] params ({})
    def get_template(params = {}, options = {})
      req = build_request(:get_template, params)
      req.send_request(options)
    end

    # Returns information about a new or existing template. The
    # `GetTemplateSummary` action is useful for viewing parameter
    # information, such as default parameter values and parameter types,
    # before you create or update a stack or stack set.
    #
    # You can use the `GetTemplateSummary` action when you submit a
    # template, or you can get template information for a stack set, or a
    # running or deleted stack.
    #
    # For deleted stacks, `GetTemplateSummary` returns the template
    # information for up to 90 days after the stack has been deleted. If the
    # template does not exist, a `ValidationError` is returned.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information about
    #   templates, see [Template Anatomy][1] in the AWS CloudFormation User
    #   Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information about templates, see [Template
    #   Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :stack_name
    #   The name or the stack ID that is associated with the stack, which are
    #   not always interchangeable. For running stacks, you can specify either
    #   the stack's name or its unique stack ID. For deleted stack, you must
    #   specify the unique stack ID.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    # @option params [String] :stack_set_name
    #   The name or unique ID of the stack set from which the stack was
    #   created.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    # @return [Types::GetTemplateSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateSummaryOutput#parameters #parameters} => Array&lt;Types::ParameterDeclaration&gt;
    #   * {Types::GetTemplateSummaryOutput#description #description} => String
    #   * {Types::GetTemplateSummaryOutput#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::GetTemplateSummaryOutput#capabilities_reason #capabilities_reason} => String
    #   * {Types::GetTemplateSummaryOutput#resource_types #resource_types} => Array&lt;String&gt;
    #   * {Types::GetTemplateSummaryOutput#version #version} => String
    #   * {Types::GetTemplateSummaryOutput#metadata #metadata} => String
    #   * {Types::GetTemplateSummaryOutput#declared_transforms #declared_transforms} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_summary({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     stack_name: "StackNameOrId",
    #     stack_set_name: "StackSetNameOrId",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_key #=> String
    #   resp.parameters[0].default_value #=> String
    #   resp.parameters[0].parameter_type #=> String
    #   resp.parameters[0].no_echo #=> Boolean
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].parameter_constraints.allowed_values #=> Array
    #   resp.parameters[0].parameter_constraints.allowed_values[0] #=> String
    #   resp.description #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"
    #   resp.capabilities_reason #=> String
    #   resp.resource_types #=> Array
    #   resp.resource_types[0] #=> String
    #   resp.version #=> String
    #   resp.metadata #=> String
    #   resp.declared_transforms #=> Array
    #   resp.declared_transforms[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateSummary AWS API Documentation
    #
    # @overload get_template_summary(params = {})
    # @param [Hash] params ({})
    def get_template_summary(params = {}, options = {})
      req = build_request(:get_template_summary, params)
      req.send_request(options)
    end

    # Returns the ID and status of each active change set for a stack. For
    # example, AWS CloudFormation lists change sets that are in the
    # `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.
    #
    # @option params [required, String] :stack_name
    #   The name or the Amazon Resource Name (ARN) of the stack for which you
    #   want to list change sets.
    #
    # @option params [String] :next_token
    #   A string (provided by the ListChangeSets response output) that
    #   identifies the next page of change sets that you want to retrieve.
    #
    # @return [Types::ListChangeSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChangeSetsOutput#summaries #summaries} => Array&lt;Types::ChangeSetSummary&gt;
    #   * {Types::ListChangeSetsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_change_sets({
    #     stack_name: "StackNameOrId", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].stack_id #=> String
    #   resp.summaries[0].stack_name #=> String
    #   resp.summaries[0].change_set_id #=> String
    #   resp.summaries[0].change_set_name #=> String
    #   resp.summaries[0].execution_status #=> String, one of "UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"
    #   resp.summaries[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_COMPLETE", "FAILED"
    #   resp.summaries[0].status_reason #=> String
    #   resp.summaries[0].creation_time #=> Time
    #   resp.summaries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListChangeSets AWS API Documentation
    #
    # @overload list_change_sets(params = {})
    # @param [Hash] params ({})
    def list_change_sets(params = {}, options = {})
      req = build_request(:list_change_sets, params)
      req.send_request(options)
    end

    # Lists all exported output values in the account and region in which
    # you call this action. Use this action to see the exported output
    # values that you can import into other stacks. To import values, use
    # the [ `Fn::ImportValue` ][1] function.
    #
    # For more information, see [ AWS CloudFormation Export Stack Output
    # Values][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
    # [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html
    #
    # @option params [String] :next_token
    #   A string (provided by the ListExports response output) that identifies
    #   the next page of exported output values that you asked to retrieve.
    #
    # @return [Types::ListExportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExportsOutput#exports #exports} => Array&lt;Types::Export&gt;
    #   * {Types::ListExportsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exports({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.exports #=> Array
    #   resp.exports[0].exporting_stack_id #=> String
    #   resp.exports[0].name #=> String
    #   resp.exports[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListExports AWS API Documentation
    #
    # @overload list_exports(params = {})
    # @param [Hash] params ({})
    def list_exports(params = {}, options = {})
      req = build_request(:list_exports, params)
      req.send_request(options)
    end

    # Lists all stacks that are importing an exported output value. To
    # modify or remove an exported output value, first use this action to
    # see which stacks are using it. To see the exported output values in
    # your account, see ListExports.
    #
    # For more information about importing an exported output value, see the
    # [ `Fn::ImportValue` ][1] function.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
    #
    # @option params [required, String] :export_name
    #   The name of the exported output value. AWS CloudFormation returns the
    #   stack names that are importing this value.
    #
    # @option params [String] :next_token
    #   A string (provided by the ListImports response output) that identifies
    #   the next page of stacks that are importing the specified exported
    #   output value.
    #
    # @return [Types::ListImportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportsOutput#imports #imports} => Array&lt;String&gt;
    #   * {Types::ListImportsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imports({
    #     export_name: "ExportName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.imports #=> Array
    #   resp.imports[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListImports AWS API Documentation
    #
    # @overload list_imports(params = {})
    # @param [Hash] params ({})
    def list_imports(params = {}, options = {})
      req = build_request(:list_imports, params)
      req.send_request(options)
    end

    # Returns summary information about stack instances that are associated
    # with the specified stack set. You can filter for stack instances that
    # are associated with a specific AWS account name or region.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to list stack
    #   instances for.
    #
    # @option params [String] :next_token
    #   If the previous request didn't return all of the remaining results,
    #   the response's `NextToken` parameter value is set to a token. To
    #   retrieve the next set of results, call `ListStackInstances` again and
    #   assign that token to the request object's `NextToken` parameter. If
    #   there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :stack_instance_account
    #   The name of the AWS account that you want to list stack instances for.
    #
    # @option params [String] :stack_instance_region
    #   The name of the region where you want to list stack instances.
    #
    # @return [Types::ListStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackInstancesOutput#summaries #summaries} => Array&lt;Types::StackInstanceSummary&gt;
    #   * {Types::ListStackInstancesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_instances({
    #     stack_set_name: "StackSetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     stack_instance_account: "Account",
    #     stack_instance_region: "Region",
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].stack_set_id #=> String
    #   resp.summaries[0].region #=> String
    #   resp.summaries[0].account #=> String
    #   resp.summaries[0].stack_id #=> String
    #   resp.summaries[0].status #=> String, one of "CURRENT", "OUTDATED", "INOPERABLE"
    #   resp.summaries[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackInstances AWS API Documentation
    #
    # @overload list_stack_instances(params = {})
    # @param [Hash] params ({})
    def list_stack_instances(params = {}, options = {})
      req = build_request(:list_stack_instances, params)
      req.send_request(options)
    end

    # Returns descriptions of all resources of the specified stack.
    #
    # For deleted stacks, ListStackResources returns resource information
    # for up to 90 days after the stack has been deleted.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stack resources that you
    #   want to retrieve.
    #
    # @return [Types::ListStackResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackResourcesOutput#stack_resource_summaries #stack_resource_summaries} => Array&lt;Types::StackResourceSummary&gt;
    #   * {Types::ListStackResourcesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_resources({
    #     stack_name: "StackName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_summaries #=> Array
    #   resp.stack_resource_summaries[0].logical_resource_id #=> String
    #   resp.stack_resource_summaries[0].physical_resource_id #=> String
    #   resp.stack_resource_summaries[0].resource_type #=> String
    #   resp.stack_resource_summaries[0].last_updated_timestamp #=> Time
    #   resp.stack_resource_summaries[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE"
    #   resp.stack_resource_summaries[0].resource_status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackResources AWS API Documentation
    #
    # @overload list_stack_resources(params = {})
    # @param [Hash] params ({})
    def list_stack_resources(params = {}, options = {})
      req = build_request(:list_stack_resources, params)
      req.send_request(options)
    end

    # Returns summary information about the results of a stack set
    # operation.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to get operation
    #   results for.
    #
    # @option params [required, String] :operation_id
    #   The ID of the stack set operation.
    #
    # @option params [String] :next_token
    #   If the previous request didn't return all of the remaining results,
    #   the response object's `NextToken` parameter value is set to a token.
    #   To retrieve the next set of results, call
    #   `ListStackSetOperationResults` again and assign that token to the
    #   request object's `NextToken` parameter. If there are no remaining
    #   results, the previous response object's `NextToken` parameter is set
    #   to `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::ListStackSetOperationResultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackSetOperationResultsOutput#summaries #summaries} => Array&lt;Types::StackSetOperationResultSummary&gt;
    #   * {Types::ListStackSetOperationResultsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_set_operation_results({
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].account #=> String
    #   resp.summaries[0].region #=> String
    #   resp.summaries[0].status #=> String, one of "PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"
    #   resp.summaries[0].status_reason #=> String
    #   resp.summaries[0].account_gate_result.status #=> String, one of "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.summaries[0].account_gate_result.status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationResults AWS API Documentation
    #
    # @overload list_stack_set_operation_results(params = {})
    # @param [Hash] params ({})
    def list_stack_set_operation_results(params = {}, options = {})
      req = build_request(:list_stack_set_operation_results, params)
      req.send_request(options)
    end

    # Returns summary information about operations performed on a stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to get operation
    #   summaries for.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListStackSetOperations` again and assign that token to the request
    #   object's `NextToken` parameter. If there are no remaining results,
    #   the previous response object's `NextToken` parameter is set to
    #   `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::ListStackSetOperationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackSetOperationsOutput#summaries #summaries} => Array&lt;Types::StackSetOperationSummary&gt;
    #   * {Types::ListStackSetOperationsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_set_operations({
    #     stack_set_name: "StackSetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].operation_id #=> String
    #   resp.summaries[0].action #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.summaries[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED"
    #   resp.summaries[0].creation_timestamp #=> Time
    #   resp.summaries[0].end_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperations AWS API Documentation
    #
    # @overload list_stack_set_operations(params = {})
    # @param [Hash] params ({})
    def list_stack_set_operations(params = {}, options = {})
      req = build_request(:list_stack_set_operations, params)
      req.send_request(options)
    end

    # Returns summary information about stack sets that are associated with
    # the user.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call `ListStackSets`
    #   again and assign that token to the request object's `NextToken`
    #   parameter. If there are no remaining results, the previous response
    #   object's `NextToken` parameter is set to `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :status
    #   The status of the stack sets that you want to get summary information
    #   about.
    #
    # @return [Types::ListStackSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackSetsOutput#summaries #summaries} => Array&lt;Types::StackSetSummary&gt;
    #   * {Types::ListStackSetsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_sets({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACTIVE", # accepts ACTIVE, DELETED
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].stack_set_name #=> String
    #   resp.summaries[0].stack_set_id #=> String
    #   resp.summaries[0].description #=> String
    #   resp.summaries[0].status #=> String, one of "ACTIVE", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSets AWS API Documentation
    #
    # @overload list_stack_sets(params = {})
    # @param [Hash] params ({})
    def list_stack_sets(params = {}, options = {})
      req = build_request(:list_stack_sets, params)
      req.send_request(options)
    end

    # Returns the summary information for stacks whose status matches the
    # specified StackStatusFilter. Summary information for stacks that have
    # been deleted is kept for 90 days after the stack is deleted. If no
    # StackStatusFilter is specified, summary information for all stacks is
    # returned (including existing stacks and stacks that have been
    # deleted).
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stacks that you want to
    #   retrieve.
    #
    # @option params [Array<String>] :stack_status_filter
    #   Stack status to use as a filter. Specify one or more stack status
    #   codes to list only stacks with the specified status codes. For a
    #   complete list of stack status codes, see the `StackStatus` parameter
    #   of the Stack data type.
    #
    # @return [Types::ListStacksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStacksOutput#stack_summaries #stack_summaries} => Array&lt;Types::StackSummary&gt;
    #   * {Types::ListStacksOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stacks({
    #     next_token: "NextToken",
    #     stack_status_filter: ["CREATE_IN_PROGRESS"], # accepts CREATE_IN_PROGRESS, CREATE_FAILED, CREATE_COMPLETE, ROLLBACK_IN_PROGRESS, ROLLBACK_FAILED, ROLLBACK_COMPLETE, DELETE_IN_PROGRESS, DELETE_FAILED, DELETE_COMPLETE, UPDATE_IN_PROGRESS, UPDATE_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_COMPLETE, UPDATE_ROLLBACK_IN_PROGRESS, UPDATE_ROLLBACK_FAILED, UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_ROLLBACK_COMPLETE, REVIEW_IN_PROGRESS
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_summaries #=> Array
    #   resp.stack_summaries[0].stack_id #=> String
    #   resp.stack_summaries[0].stack_name #=> String
    #   resp.stack_summaries[0].template_description #=> String
    #   resp.stack_summaries[0].creation_time #=> Time
    #   resp.stack_summaries[0].last_updated_time #=> Time
    #   resp.stack_summaries[0].deletion_time #=> Time
    #   resp.stack_summaries[0].stack_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS"
    #   resp.stack_summaries[0].stack_status_reason #=> String
    #   resp.stack_summaries[0].parent_id #=> String
    #   resp.stack_summaries[0].root_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStacks AWS API Documentation
    #
    # @overload list_stacks(params = {})
    # @param [Hash] params ({})
    def list_stacks(params = {}, options = {})
      req = build_request(:list_stacks, params)
      req.send_request(options)
    end

    # Sets a stack policy for a specified stack.
    #
    # @option params [required, String] :stack_name
    #   The name or unique stack ID that you want to associate a policy with.
    #
    # @option params [String] :stack_policy_body
    #   Structure containing the stack policy body. For more information, go
    #   to [ Prevent Updates to Stack Resources][1] in the AWS CloudFormation
    #   User Guide. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #
    # @option params [String] :stack_policy_url
    #   Location of a file containing the stack policy. The URL must point to
    #   a policy (maximum size: 16 KB) located in an S3 bucket in the same
    #   region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_stack_policy({
    #     stack_name: "StackName", # required
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetStackPolicy AWS API Documentation
    #
    # @overload set_stack_policy(params = {})
    # @param [Hash] params ({})
    def set_stack_policy(params = {}, options = {})
      req = build_request(:set_stack_policy, params)
      req.send_request(options)
    end

    # Sends a signal to the specified resource with a success or failure
    # status. You can use the SignalResource API in conjunction with a
    # creation policy or update policy. AWS CloudFormation doesn't proceed
    # with a stack creation or update until resources receive the required
    # number of signals or the timeout period is exceeded. The
    # SignalResource API is useful in cases where you want to send signals
    # from anywhere other than an Amazon EC2 instance.
    #
    # @option params [required, String] :stack_name
    #   The stack name or unique stack ID that includes the resource that you
    #   want to signal.
    #
    # @option params [required, String] :logical_resource_id
    #   The logical ID of the resource that you want to signal. The logical ID
    #   is the name of the resource that given in the template.
    #
    # @option params [required, String] :unique_id
    #   A unique ID of the signal. When you signal Amazon EC2 instances or
    #   Auto Scaling groups, specify the instance ID that you are signaling as
    #   the unique ID. If you send multiple signals to a single resource (such
    #   as signaling a wait condition), each signal requires a different
    #   unique ID.
    #
    # @option params [required, String] :status
    #   The status of the signal, which is either success or failure. A
    #   failure signal causes AWS CloudFormation to immediately fail the stack
    #   creation or update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.signal_resource({
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #     unique_id: "ResourceSignalUniqueId", # required
    #     status: "SUCCESS", # required, accepts SUCCESS, FAILURE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SignalResource AWS API Documentation
    #
    # @overload signal_resource(params = {})
    # @param [Hash] params ({})
    def signal_resource(params = {}, options = {})
      req = build_request(:signal_resource, params)
      req.send_request(options)
    end

    # Stops an in-progress operation on a stack set and its associated stack
    # instances.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to stop the
    #   operation for.
    #
    # @option params [required, String] :operation_id
    #   The ID of the stack operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stack_set_operation({
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StopStackSetOperation AWS API Documentation
    #
    # @overload stop_stack_set_operation(params = {})
    # @param [Hash] params ({})
    def stop_stack_set_operation(params = {}, options = {})
      req = build_request(:stop_stack_set_operation, params)
      req.send_request(options)
    end

    # Updates a stack as specified in the template. After the call completes
    # successfully, the stack update starts. You can check the status of the
    # stack via the DescribeStacks action.
    #
    # To get a copy of the template for an existing stack, you can use the
    # GetTemplate action.
    #
    # For more information about creating an update template, updating a
    # stack, and monitoring the progress of the update, see [Updating a
    # Stack][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html
    #
    # @option params [required, String] :stack_name
    #   The name or unique stack ID of the stack to update.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. (For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.)
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template that is located in an Amazon S3 bucket. For more information,
    #   go to [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Boolean] :use_previous_template
    #   Reuse the existing template that is associated with the stack that you
    #   are updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    # @option params [String] :stack_policy_during_update_body
    #   Structure containing the temporary overriding stack policy body. You
    #   can specify either the `StackPolicyDuringUpdateBody` or the
    #   `StackPolicyDuringUpdateURL` parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you do not specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    #
    # @option params [String] :stack_policy_during_update_url
    #   Location of a file containing the temporary overriding stack policy.
    #   The URL must point to a policy (max size: 16KB) located in an S3
    #   bucket in the same region as the stack. You can specify either the
    #   `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL`
    #   parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you do not specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #
    # @option params [Array<String>] :capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   update certain stacks. Some stack templates might include resources
    #   that can affect permissions in your AWS account, for example, by
    #   creating new AWS Identity and Access Management (IAM) users. For those
    #   stacks, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`.
    #   The following resources require you to specify this parameter: [
    #   AWS::IAM::AccessKey][1], [ AWS::IAM::Group][2], [
    #   AWS::IAM::InstanceProfile][3], [ AWS::IAM::Policy][4], [
    #   AWS::IAM::Role][5], [ AWS::IAM::User][6], and [
    #   AWS::IAM::UserToGroupAddition][7]. If your stack template contains
    #   these resources, we recommend that you review all permissions
    #   associated with them and edit their permissions if necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates][8].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #
    # @option params [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this update stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource that you're
    #   updating, the stack update fails. By default, AWS CloudFormation
    #   grants permissions to all resource types. AWS Identity and Access
    #   Management (IAM) uses this parameter for AWS CloudFormation-specific
    #   condition keys in IAM policies. For more information, see [Controlling
    #   Access with AWS Identity and Access Management][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to update the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf. AWS CloudFormation always uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #
    # @option params [String] :stack_policy_body
    #   Structure containing a new stack policy body. You can specify either
    #   the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you do not
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    #
    # @option params [String] :stack_policy_url
    #   Location of a file containing the updated stack policy. The URL must
    #   point to a policy (max size: 16KB) located in an S3 bucket in the same
    #   region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you do not
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    #
    # @option params [Array<String>] :notification_arns
    #   Amazon Simple Notification Service topic Amazon Resource Names (ARNs)
    #   that AWS CloudFormation associates with the stack. Specify an empty
    #   list to remove all notification topics.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation also
    #   propagates these tags to supported resources in the stack. You can
    #   specify a maximum number of 50 tags.
    #
    #   If you don't specify this parameter, AWS CloudFormation doesn't
    #   modify the stack's tags. If you specify an empty value, AWS
    #   CloudFormation removes all associated tags.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `UpdateStack` request. Specify this token
    #   if you plan to retry requests so that AWS CloudFormation knows that
    #   you're not attempting to update a stack with the same name. You might
    #   retry `UpdateStack` requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #
    # @return [Types::UpdateStackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack({
    #     stack_name: "StackName", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     stack_policy_during_update_body: "StackPolicyDuringUpdateBody",
    #     stack_policy_during_update_url: "StackPolicyDuringUpdateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     notification_arns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStack AWS API Documentation
    #
    # @overload update_stack(params = {})
    # @param [Hash] params ({})
    def update_stack(params = {}, options = {})
      req = build_request(:update_stack, params)
      req.send_request(options)
    end

    # Updates the parameter values for stack instances for the specified
    # accounts, within the specified regions. A stack instance refers to a
    # stack in a specific account and region.
    #
    # You can only update stack instances in regions and accounts where they
    # already exist; to create additional stack instances, use
    # [CreateStackInstances][1].
    #
    # During stack set updates, any parameters overridden for a stack
    # instance are not updated, but retain their overridden value.
    #
    # You can only update the parameter *values* that are specified in the
    # stack set; to add or delete a parameter itself, use
    # [UpdateStackSet][2] to update the stack set template. If you add a
    # parameter to a template, before you can override the parameter value
    # specified in the stack set you must first use [UpdateStackSet][2] to
    # update all stack instances with the updated template and parameter
    # value specified in the stack set. Once a stack instance has been
    # updated with the new parameter, you can then override the parameter
    # value using `UpdateStackInstances`.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html
    # [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set associated with the stack
    #   instances.
    #
    # @option params [required, Array<String>] :accounts
    #   The names of one or more AWS accounts for which you want to update
    #   parameter values for stack instances. The overridden parameter values
    #   will be applied to all stack instances in the specified accounts and
    #   regions.
    #
    # @option params [required, Array<String>] :regions
    #   The names of one or more regions in which you want to update parameter
    #   values for stack instances. The overridden parameter values will be
    #   applied to all stack instances in the specified accounts and regions.
    #
    # @option params [Array<Types::Parameter>] :parameter_overrides
    #   A list of input parameters whose values you want to update for the
    #   specified stack instances.
    #
    #   Any overridden parameter values will be applied to all stack instances
    #   in the specified accounts and regions. When specifying parameters and
    #   their values, be aware of how AWS CloudFormation sets parameter values
    #   during stack instance update operations:
    #
    #   * To override the current value for a parameter, include the parameter
    #     and specify its value.
    #
    #   * To leave a parameter set to its present value, you can do one of the
    #     following:
    #
    #     * Do not include the parameter in the list.
    #
    #     * Include the parameter and specify `UsePreviousValue` as `true`.
    #       (You cannot specify both a value and set `UsePreviousValue` to
    #       `true`.)
    #
    #   * To set all overridden parameter back to the values specified in the
    #     stack set, specify a parameter list but do not include any
    #     parameters.
    #
    #   * To leave all parameters set to their present values, do not specify
    #     this property at all.
    #
    #   During stack set updates, any parameter values overridden for a stack
    #   instance are not updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in the
    #   stack set; to add or delete a parameter itself, use `UpdateStackSet`
    #   to update the stack set template. If you add a parameter to a
    #   template, before you can override the parameter value specified in the
    #   stack set you must first use [UpdateStackSet][1] to update all stack
    #   instances with the updated template and parameter value specified in
    #   the stack set. Once a stack instance has been updated with the new
    #   parameter, you can then override the parameter value using
    #   `UpdateStackInstances`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #
    # @option params [String] :operation_id
    #   The unique identifier for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You might retry stack
    #   set operation requests to ensure that AWS CloudFormation successfully
    #   received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackInstancesOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack_instances({
    #     stack_set_name: "StackSetNameOrId", # required
    #     accounts: ["Account"], # required
    #     regions: ["Region"], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     operation_preferences: {
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     operation_id: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackInstances AWS API Documentation
    #
    # @overload update_stack_instances(params = {})
    # @param [Hash] params ({})
    def update_stack_instances(params = {}, options = {})
      req = build_request(:update_stack_instances, params)
      req.send_request(options)
    end

    # Updates the stack set, and associated stack instances in the specified
    # accounts and regions.
    #
    # Even if the stack set operation created by updating the stack set
    # fails (completely or partially, below or above a specified failure
    # tolerance), the stack set is updated with your changes. Subsequent
    # CreateStackInstances calls on the specified stack set use the updated
    # stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to update.
    #
    # @option params [String] :description
    #   A brief description of updates that you are making.
    #
    # @option params [String] :template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes. For more information,
    #   see [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   The location of the file that contains the template body. The URL must
    #   point to a template (maximum size: 460,800 bytes) that is located in
    #   an Amazon S3 bucket. For more information, see [Template Anatomy][1]
    #   in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Boolean] :use_previous_template
    #   Use the existing template that's associated with the stack set that
    #   you're updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of input parameters for the stack set template.
    #
    # @option params [Array<String>] :capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   create certain stack sets. Some stack set templates might include
    #   resources that can affect permissions in your AWS account—for example,
    #   by creating new AWS Identity and Access Management (IAM) users. For
    #   those stack sets, you must explicitly acknowledge their capabilities
    #   by specifying this parameter.
    #
    #   The only valid values are CAPABILITY\_IAM and CAPABILITY\_NAMED\_IAM.
    #   The following resources require you to specify this parameter:
    #
    #   * AWS::IAM::AccessKey
    #
    #   * AWS::IAM::Group
    #
    #   * AWS::IAM::InstanceProfile
    #
    #   * AWS::IAM::Policy
    #
    #   * AWS::IAM::Role
    #
    #   * AWS::IAM::User
    #
    #   * AWS::IAM::UserToGroupAddition
    #
    #   If your stack template contains these resources, we recommend that you
    #   review all permissions that are associated with them and edit their
    #   permissions if necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   CAPABILITY\_NAMED\_IAM. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates.][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key-value pairs to associate with this stack set and the stacks
    #   created from it. AWS CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. You can specify a
    #   maximum number of 50 tags.
    #
    #   If you specify tags for this parameter, those tags replace any list of
    #   tags that are currently associated with this stack set. This means:
    #
    #   * If you don't specify this parameter, AWS CloudFormation doesn't
    #     modify the stack's tags.
    #
    #   * If you specify *any* tags using this parameter, you must specify
    #     *all* the tags that you want associated with this stack set, even
    #     tags you've specifed before (for example, when creating the stack
    #     set or during a previous update of the stack set.). Any tags that
    #     you don't include in the updated list of tags are removed from the
    #     stack set, and therefore from the stacks and resources as well.
    #
    #   * If you specify an empty value, AWS CloudFormation removes all
    #     currently associated tags.
    #
    #   If you specify new tags as part of an `UpdateStackSet` action, AWS
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you omit tags that are currently associated with
    #   the stack set from the list of tags you specify, AWS CloudFormation
    #   assumes that you want to remove those tags from the stack set, and
    #   checks to see if you have permission to untag resources. If you don't
    #   have the necessary permission(s), the entire `UpdateStackSet` action
    #   fails with an `access denied` error, and the stack set is not updated.
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #
    # @option params [String] :administration_role_arn
    #   The Amazon Resource Number (ARN) of the IAM role to use to update this
    #   stack set.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific stack sets
    #   within the same administrator account. For more information, see
    #   [Define Permissions for Multiple Administrators][1] in the *AWS
    #   CloudFormation User Guide*.
    #
    #   If you specify a customized administrator role, AWS CloudFormation
    #   uses that role to update the stack. If you do not specify a customized
    #   administrator role, AWS CloudFormation performs the update using the
    #   role previously associated with the stack set, so long as you have
    #   permissions to perform operations on the stack set.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #
    # @option params [String] :execution_role_name
    #   The name of the IAM execution role to use to update the stack set. If
    #   you do not specify an execution role, AWS CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the stack set
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in their
    #   stack sets.
    #
    #   If you specify a customized execution role, AWS CloudFormation uses
    #   that role to update the stack. If you do not specify a customized
    #   execution role, AWS CloudFormation performs the update using the role
    #   previously associated with the stack set, so long as you have
    #   permissions to perform operations on the stack set.
    #
    # @option params [String] :operation_id
    #   The unique ID for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You might retry stack
    #   set operation requests to ensure that AWS CloudFormation successfully
    #   received them.
    #
    #   If you don't specify an operation ID, AWS CloudFormation generates
    #   one automatically.
    #
    #   Repeating this stack set operation with a new operation ID retries all
    #   stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<String>] :accounts
    #   The accounts in which to update associated stack instances. If you
    #   specify accounts, you must also specify the regions in which to update
    #   stack set instances.
    #
    #   To update *all* the stack instances associated with this stack set, do
    #   not specify the `Accounts` or `Regions` properties.
    #
    #   If the stack set update includes changes to the template (that is, if
    #   the `TemplateBody` or `TemplateURL` properties are specified), or the
    #   `Parameters` property, AWS CloudFormation marks all stack instances
    #   with a status of `OUTDATED` prior to updating the stack instances in
    #   the specified accounts and regions. If the stack set update does not
    #   include changes to the template or parameters, AWS CloudFormation
    #   updates the stack instances in the specified accounts and regions,
    #   while leaving all other stack instances with their existing stack
    #   instance status.
    #
    # @option params [Array<String>] :regions
    #   The regions in which to update associated stack instances. If you
    #   specify regions, you must also specify accounts in which to update
    #   stack set instances.
    #
    #   To update *all* the stack instances associated with this stack set, do
    #   not specify the `Accounts` or `Regions` properties.
    #
    #   If the stack set update includes changes to the template (that is, if
    #   the `TemplateBody` or `TemplateURL` properties are specified), or the
    #   `Parameters` property, AWS CloudFormation marks all stack instances
    #   with a status of `OUTDATED` prior to updating the stack instances in
    #   the specified accounts and regions. If the stack set update does not
    #   include changes to the template or parameters, AWS CloudFormation
    #   updates the stack instances in the specified accounts and regions,
    #   while leaving all other stack instances with their existing stack
    #   instance status.
    #
    # @return [Types::UpdateStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackSetOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack_set({
    #     stack_set_name: "StackSetName", # required
    #     description: "Description",
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     operation_preferences: {
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     administration_role_arn: "RoleARN",
    #     execution_role_name: "ExecutionRoleName",
    #     operation_id: "ClientRequestToken",
    #     accounts: ["Account"],
    #     regions: ["Region"],
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackSet AWS API Documentation
    #
    # @overload update_stack_set(params = {})
    # @param [Hash] params ({})
    def update_stack_set(params = {}, options = {})
      req = build_request(:update_stack_set, params)
      req.send_request(options)
    end

    # Updates termination protection for the specified stack. If a user
    # attempts to delete a stack with termination protection enabled, the
    # operation fails and the stack remains unchanged. For more information,
    # see [Protecting a Stack From Being Deleted][1] in the *AWS
    # CloudFormation User Guide*.
    #
    # For [nested stacks][2], termination protection is set on the root
    # stack and cannot be changed directly on the nested stack.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    # [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #
    # @option params [required, Boolean] :enable_termination_protection
    #   Whether to enable termination protection on the specified stack.
    #
    # @option params [required, String] :stack_name
    #   The name or unique ID of the stack for which you want to set
    #   termination protection.
    #
    # @return [Types::UpdateTerminationProtectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTerminationProtectionOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_termination_protection({
    #     enable_termination_protection: false, # required
    #     stack_name: "StackNameOrId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateTerminationProtection AWS API Documentation
    #
    # @overload update_termination_protection(params = {})
    # @param [Hash] params ({})
    def update_termination_protection(params = {}, options = {})
      req = build_request(:update_termination_protection, params)
      req.send_request(options)
    end

    # Validates a specified template. AWS CloudFormation first checks if the
    # template is valid JSON. If it isn't, AWS CloudFormation checks if the
    # template is valid YAML. If both these checks fail, AWS CloudFormation
    # returns a template validation error.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information, go to [Template Anatomy][1] in the AWS
    #   CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @return [Types::ValidateTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateTemplateOutput#parameters #parameters} => Array&lt;Types::TemplateParameter&gt;
    #   * {Types::ValidateTemplateOutput#description #description} => String
    #   * {Types::ValidateTemplateOutput#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::ValidateTemplateOutput#capabilities_reason #capabilities_reason} => String
    #   * {Types::ValidateTemplateOutput#declared_transforms #declared_transforms} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_template({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_key #=> String
    #   resp.parameters[0].default_value #=> String
    #   resp.parameters[0].no_echo #=> Boolean
    #   resp.parameters[0].description #=> String
    #   resp.description #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"
    #   resp.capabilities_reason #=> String
    #   resp.declared_transforms #=> Array
    #   resp.declared_transforms[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ValidateTemplate AWS API Documentation
    #
    # @overload validate_template(params = {})
    # @param [Hash] params ({})
    def validate_template(params = {}, options = {})
      req = build_request(:validate_template, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-cloudformation'
      context[:gem_version] = '1.8.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                | params                 | :delay   | :max_attempts |
    # | -------------------------- | ---------------------- | -------- | ------------- |
    # | change_set_create_complete | {#describe_change_set} | 30       | 120           |
    # | stack_create_complete      | {#describe_stacks}     | 30       | 120           |
    # | stack_delete_complete      | {#describe_stacks}     | 30       | 120           |
    # | stack_exists               | {#describe_stacks}     | 5        | 20            |
    # | stack_update_complete      | {#describe_stacks}     | 30       | 120           |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
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

    # @api private
    # @deprecated
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
      {
        change_set_create_complete: Waiters::ChangeSetCreateComplete,
        stack_create_complete: Waiters::StackCreateComplete,
        stack_delete_complete: Waiters::StackDeleteComplete,
        stack_exists: Waiters::StackExists,
        stack_update_complete: Waiters::StackUpdateComplete
      }
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
