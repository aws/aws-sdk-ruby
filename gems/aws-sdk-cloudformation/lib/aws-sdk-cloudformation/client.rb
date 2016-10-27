# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :cloudformation

module Aws
  module CloudFormation
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
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
      # @option params [required, String] :stack_name
      #   The name or the unique stack ID that is associated with the stack.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.cancel_update_stack({
      #     stack_name: "StackName", # required
      #   })
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
      # @option params [required, String] :stack_name
      #   The name or the unique ID of the stack that you want to continue
      #   rolling back.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.continue_update_rollback({
      #     stack_name: "StackNameOrId", # required
      #   })
      # @overload continue_update_rollback(params = {})
      # @param [Hash] params ({})
      def continue_update_rollback(params = {}, options = {})
        req = build_request(:continue_update_rollback, params)
        req.send_request(options)
      end

      # Creates a list of changes for a stack. AWS CloudFormation generates
      # the change set by comparing the stack's information with the
      # information that you submit. A change set can help you understand
      # which resources AWS CloudFormation will change and how it will change
      # them before you update your stack. Change sets allow you to check
      # before you make a change so that you don't delete or replace critical
      # resources.
      #
      # AWS CloudFormation doesn't make any changes to the stack when you
      # create a change set. To make the specified changes, you must execute
      # the change set by using the ExecuteChangeSet action.
      #
      # After the call successfully completes, AWS CloudFormation starts
      # creating the change set. To check the status of the change set, use
      # the DescribeChangeSet action.
      # @option params [required, String] :stack_name
      #   The name or the unique ID of the stack for which you are creating a
      #   change set. AWS CloudFormation generates the change set by comparing
      #   this stack's information with the information that you submit, such
      #   as a modified template or different parameter input values.
      # @option params [String] :template_body
      #   A structure that contains the body of the revised template, with a
      #   minimum length of 1 byte and a maximum length of 51,200 bytes. AWS
      #   CloudFormation generates the change set by comparing this template
      #   with the template of the stack that you specified.
      #
      #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
      # @option params [String] :template_url
      #   The location of the file that contains the revised template. The URL
      #   must point to a template (max size: 460,800 bytes) that is located in
      #   an S3 bucket. AWS CloudFormation generates the change set by comparing
      #   this template with the stack that you specified.
      #
      #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
      # @option params [Boolean] :use_previous_template
      #   Whether to reuse the template that is associated with the stack to
      #   create the change set.
      # @option params [Array<Types::Parameter>] :parameters
      #   A list of `Parameter` structures that specify input parameters for the
      #   change set. For more information, see the [Parameter][1] data type.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
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
      # @option params [Array<String>] :notification_arns
      #   The Amazon Resource Names (ARNs) of Amazon Simple Notification Service
      #   (Amazon SNS) topics that AWS CloudFormation associates with the stack.
      #   To remove all associated notification topics, specify an empty list.
      # @option params [Array<Types::Tag>] :tags
      #   Key-value pairs to associate with this stack. AWS CloudFormation also
      #   propagates these tags to resources in the stack. You can specify a
      #   maximum of 10 tags.
      # @option params [required, String] :change_set_name
      #   The name of the change set. The name must be unique among all change
      #   sets that are associated with the specified stack.
      #
      #   A change set name can contain only alphanumeric, case sensitive
      #   characters and hyphens. It must start with an alphabetic character and
      #   cannot exceed 128 characters.
      # @option params [String] :client_token
      #   A unique identifier for this `CreateChangeSet` request. Specify this
      #   token if you plan to retry requests so that AWS CloudFormation knows
      #   that you're not attempting to create another change set with the same
      #   name. You might retry `CreateChangeSet` requests to ensure that AWS
      #   CloudFormation successfully received them.
      # @option params [String] :description
      #   A description to help you identify this change set.
      # @return [Types::CreateChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateChangeSetOutput#id #Id} => String
      #
      # @example Request syntax with placeholder values
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
      #       },
      #     ],
      #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
      #     resource_types: ["ResourceType"],
      #     notification_arns: ["NotificationARN"],
      #     tags: [
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       },
      #     ],
      #     change_set_name: "ChangeSetName", # required
      #     client_token: "ClientToken",
      #     description: "Description",
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      # @overload create_change_set(params = {})
      # @param [Hash] params ({})
      def create_change_set(params = {}, options = {})
        req = build_request(:create_change_set, params)
        req.send_request(options)
      end

      # Creates a stack as specified in the template. After the call completes
      # successfully, the stack creation starts. You can check the status of
      # the stack via the DescribeStacks API.
      # @option params [required, String] :stack_name
      #   The name that is associated with the stack. The name must be unique in
      #   the region in which you are creating the stack.
      #
      #   <note markdown="1"> A stack name can contain only alphanumeric characters (case sensitive)
      #   and hyphens. It must start with an alphabetic character and cannot be
      #   longer than 128 characters.
      #
      #    </note>
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
      # @option params [Array<Types::Parameter>] :parameters
      #   A list of `Parameter` structures that specify input parameters for the
      #   stack. For more information, see the [Parameter][1] data type.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
      # @option params [Boolean] :disable_rollback
      #   Set to `true` to disable rollback of the stack if stack creation
      #   failed. You can specify either `DisableRollback` or `OnFailure`, but
      #   not both.
      #
      #   Default: `false`
      # @option params [Integer] :timeout_in_minutes
      #   The amount of time that can pass before the stack status becomes
      #   CREATE\_FAILED; if `DisableRollback` is not set or is set to `false`,
      #   the stack will be rolled back.
      # @option params [Array<String>] :notification_arns
      #   The Simple Notification Service (SNS) topic ARNs to publish stack
      #   related events. You can find your SNS topic ARNs using the [SNS
      #   console][1] or your Command Line Interface (CLI).
      #
      #
      #
      #   [1]: https://console.aws.amazon.com/sns
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
      # @option params [String] :on_failure
      #   Determines what action will be taken if stack creation fails. This
      #   must be one of: DO\_NOTHING, ROLLBACK, or DELETE. You can specify
      #   either `OnFailure` or `DisableRollback`, but not both.
      #
      #   Default: `ROLLBACK`
      # @option params [String] :stack_policy_body
      #   Structure containing the stack policy body. For more information, go
      #   to [ Prevent Updates to Stack Resources][1] in the AWS CloudFormation
      #   User Guide. You can specify either the `StackPolicyBody` or the
      #   `StackPolicyURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
      # @option params [String] :stack_policy_url
      #   Location of a file containing the stack policy. The URL must point to
      #   a policy (max size: 16KB) located in an S3 bucket in the same region
      #   as the stack. You can specify either the `StackPolicyBody` or the
      #   `StackPolicyURL` parameter, but not both.
      # @option params [Array<Types::Tag>] :tags
      #   Key-value pairs to associate with this stack. AWS CloudFormation also
      #   propagates these tags to the resources created in the stack. A maximum
      #   number of 10 tags can be specified.
      # @return [Types::CreateStackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateStackOutput#stack_id #StackId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_stack({
      #     stack_name: "StackName", # required
      #     template_body: "TemplateBody",
      #     template_url: "TemplateURL",
      #     parameters: [
      #       {
      #         parameter_key: "ParameterKey",
      #         parameter_value: "ParameterValue",
      #         use_previous_value: false,
      #       },
      #     ],
      #     disable_rollback: false,
      #     timeout_in_minutes: 1,
      #     notification_arns: ["NotificationARN"],
      #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
      #     resource_types: ["ResourceType"],
      #     on_failure: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK, DELETE
      #     stack_policy_body: "StackPolicyBody",
      #     stack_policy_url: "StackPolicyURL",
      #     tags: [
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.stack_id #=> String
      # @overload create_stack(params = {})
      # @param [Hash] params ({})
      def create_stack(params = {}, options = {})
        req = build_request(:create_stack, params)
        req.send_request(options)
      end

      # Deletes the specified change set. Deleting change sets ensures that no
      # one executes the wrong change set.
      #
      # If the call successfully completes, AWS CloudFormation successfully
      # deleted the change set.
      # @option params [required, String] :change_set_name
      #   The name or Amazon Resource Name (ARN) of the change set that you want
      #   to delete.
      # @option params [String] :stack_name
      #   If you specified the name of a change set to delete, specify the stack
      #   name or ID (ARN) that is associated with it.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_change_set({
      #     change_set_name: "ChangeSetNameOrId", # required
      #     stack_name: "StackNameOrId",
      #   })
      # @overload delete_change_set(params = {})
      # @param [Hash] params ({})
      def delete_change_set(params = {}, options = {})
        req = build_request(:delete_change_set, params)
        req.send_request(options)
      end

      # Deletes a specified stack. Once the call completes successfully, stack
      # deletion starts. Deleted stacks do not show up in the DescribeStacks
      # API if the deletion has been completed successfully.
      # @option params [required, String] :stack_name
      #   The name or the unique stack ID that is associated with the stack.
      # @option params [Array<String>] :retain_resources
      #   For stacks in the `DELETE_FAILED` state, a list of resource logical
      #   IDs that are associated with the resources you want to retain. During
      #   deletion, AWS CloudFormation deletes the stack but does not delete the
      #   retained resources.
      #
      #   Retaining resources is useful when you cannot delete a resource, such
      #   as a non-empty S3 bucket, but you want to delete the stack.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_stack({
      #     stack_name: "StackName", # required
      #     retain_resources: ["LogicalResourceId"],
      #   })
      # @overload delete_stack(params = {})
      # @param [Hash] params ({})
      def delete_stack(params = {}, options = {})
        req = build_request(:delete_stack, params)
        req.send_request(options)
      end

      # Retrieves your account's AWS CloudFormation limits, such as the
      # maximum number of stacks that you can create in your account.
      # @option params [String] :next_token
      #   A string that identifies the next page of limits that you want to
      #   retrieve.
      # @return [Types::DescribeAccountLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAccountLimitsOutput#account_limits #AccountLimits} => Array&lt;Types::AccountLimit&gt;
      #   * {Types::DescribeAccountLimitsOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_account_limits({
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.account_limits #=> Array
      #   resp.account_limits[0].name #=> String
      #   resp.account_limits[0].value #=> Integer
      #   resp.next_token #=> String
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
      # @option params [required, String] :change_set_name
      #   The name or Amazon Resource Name (ARN) of the change set that you want
      #   to describe.
      # @option params [String] :stack_name
      #   If you specified the name of a change set, specify the stack name or
      #   ID (ARN) of the change set you want to describe.
      # @option params [String] :next_token
      #   A string (provided by the DescribeChangeSet response output) that
      #   identifies the next page of information that you want to retrieve.
      # @return [Types::DescribeChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeChangeSetOutput#change_set_name #ChangeSetName} => String
      #   * {Types::DescribeChangeSetOutput#change_set_id #ChangeSetId} => String
      #   * {Types::DescribeChangeSetOutput#stack_id #StackId} => String
      #   * {Types::DescribeChangeSetOutput#stack_name #StackName} => String
      #   * {Types::DescribeChangeSetOutput#description #Description} => String
      #   * {Types::DescribeChangeSetOutput#parameters #Parameters} => Array&lt;Types::Parameter&gt;
      #   * {Types::DescribeChangeSetOutput#creation_time #CreationTime} => Time
      #   * {Types::DescribeChangeSetOutput#execution_status #ExecutionStatus} => String
      #   * {Types::DescribeChangeSetOutput#status #Status} => String
      #   * {Types::DescribeChangeSetOutput#status_reason #StatusReason} => String
      #   * {Types::DescribeChangeSetOutput#notification_arns #NotificationARNs} => Array&lt;String&gt;
      #   * {Types::DescribeChangeSetOutput#capabilities #Capabilities} => Array&lt;String&gt;
      #   * {Types::DescribeChangeSetOutput#tags #Tags} => Array&lt;Types::Tag&gt;
      #   * {Types::DescribeChangeSetOutput#changes #Changes} => Array&lt;Types::Change&gt;
      #   * {Types::DescribeChangeSetOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_change_set({
      #     change_set_name: "ChangeSetNameOrId", # required
      #     stack_name: "StackNameOrId",
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.change_set_name #=> String
      #   resp.change_set_id #=> String
      #   resp.stack_id #=> String
      #   resp.stack_name #=> String
      #   resp.description #=> String
      #   resp.parameters #=> Array
      #   resp.parameters[0].parameter_key #=> String
      #   resp.parameters[0].parameter_value #=> String
      #   resp.parameters[0].use_previous_value #=> Boolean
      #   resp.creation_time #=> Time
      #   resp.execution_status #=> String, one of "UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"
      #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_COMPLETE", "FAILED"
      #   resp.status_reason #=> String
      #   resp.notification_arns #=> Array
      #   resp.notification_arns[0] #=> String
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
      # @option params [String] :next_token
      #   A string that identifies the next page of events that you want to
      #   retrieve.
      # @return [Types::DescribeStackEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeStackEventsOutput#stack_events #StackEvents} => Array&lt;Types::StackEvent&gt;
      #   * {Types::DescribeStackEventsOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_stack_events({
      #     stack_name: "StackName",
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
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
      #   resp.next_token #=> String
      # @overload describe_stack_events(params = {})
      # @param [Hash] params ({})
      def describe_stack_events(params = {}, options = {})
        req = build_request(:describe_stack_events, params)
        req.send_request(options)
      end

      # Returns a description of the specified resource in the specified
      # stack.
      #
      # For deleted stacks, DescribeStackResource returns resource information
      # for up to 90 days after the stack has been deleted.
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
      # @option params [required, String] :logical_resource_id
      #   The logical name of the resource as specified in the template.
      #
      #   Default: There is no default value.
      # @return [Types::DescribeStackResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeStackResourceOutput#stack_resource_detail #StackResourceDetail} => Types::StackResourceDetail
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_stack_resource({
      #     stack_name: "StackName", # required
      #     logical_resource_id: "LogicalResourceId", # required
      #   })
      #
      # @example Response structure
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
      # @option params [String] :logical_resource_id
      #   The logical name of the resource as specified in the template.
      #
      #   Default: There is no default value.
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
      # @return [Types::DescribeStackResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeStackResourcesOutput#stack_resources #StackResources} => Array&lt;Types::StackResource&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_stack_resources({
      #     stack_name: "StackName",
      #     logical_resource_id: "LogicalResourceId",
      #     physical_resource_id: "PhysicalResourceId",
      #   })
      #
      # @example Response structure
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
      # @overload describe_stack_resources(params = {})
      # @param [Hash] params ({})
      def describe_stack_resources(params = {}, options = {})
        req = build_request(:describe_stack_resources, params)
        req.send_request(options)
      end

      # Returns the description for the specified stack; if no stack name was
      # specified, then it returns the description for all the stacks created.
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
      # @option params [String] :next_token
      #   A string that identifies the next page of stacks that you want to
      #   retrieve.
      # @return [Types::DescribeStacksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeStacksOutput#stacks #Stacks} => Array&lt;Types::Stack&gt;
      #   * {Types::DescribeStacksOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_stacks({
      #     stack_name: "StackName",
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.stacks #=> Array
      #   resp.stacks[0].stack_id #=> String
      #   resp.stacks[0].stack_name #=> String
      #   resp.stacks[0].description #=> String
      #   resp.stacks[0].parameters #=> Array
      #   resp.stacks[0].parameters[0].parameter_key #=> String
      #   resp.stacks[0].parameters[0].parameter_value #=> String
      #   resp.stacks[0].parameters[0].use_previous_value #=> Boolean
      #   resp.stacks[0].creation_time #=> Time
      #   resp.stacks[0].last_updated_time #=> Time
      #   resp.stacks[0].stack_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE"
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
      #   resp.stacks[0].tags #=> Array
      #   resp.stacks[0].tags[0].key #=> String
      #   resp.stacks[0].tags[0].value #=> String
      #   resp.next_token #=> String
      # @overload describe_stacks(params = {})
      # @param [Hash] params ({})
      def describe_stacks(params = {}, options = {})
        req = build_request(:describe_stacks, params)
        req.send_request(options)
      end

      # Returns the estimated monthly cost of a template. The return value is
      # an AWS Simple Monthly Calculator URL with a query string that
      # describes the resources required to run the template.
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
      # @option params [Array<Types::Parameter>] :parameters
      #   A list of `Parameter` structures that specify input parameters.
      # @return [Types::EstimateTemplateCostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EstimateTemplateCostOutput#url #Url} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.estimate_template_cost({
      #     template_body: "TemplateBody",
      #     template_url: "TemplateURL",
      #     parameters: [
      #       {
      #         parameter_key: "ParameterKey",
      #         parameter_value: "ParameterValue",
      #         use_previous_value: false,
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.url #=> String
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
      # @option params [required, String] :change_set_name
      #   The name or ARN of the change set that you want use to update the
      #   specified stack.
      # @option params [String] :stack_name
      #   If you specified the name of a change set, specify the stack name or
      #   ID (ARN) that is associated with the change set you want to execute.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.execute_change_set({
      #     change_set_name: "ChangeSetNameOrId", # required
      #     stack_name: "StackNameOrId",
      #   })
      # @overload execute_change_set(params = {})
      # @param [Hash] params ({})
      def execute_change_set(params = {}, options = {})
        req = build_request(:execute_change_set, params)
        req.send_request(options)
      end

      # Returns the stack policy for a specified stack. If a stack doesn't
      # have a policy, a null value is returned.
      # @option params [required, String] :stack_name
      #   The name or unique stack ID that is associated with the stack whose
      #   policy you want to get.
      # @return [Types::GetStackPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetStackPolicyOutput#stack_policy_body #StackPolicyBody} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_stack_policy({
      #     stack_name: "StackName", # required
      #   })
      #
      # @example Response structure
      #   resp.stack_policy_body #=> String
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
      # @return [Types::GetTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetTemplateOutput#template_body #TemplateBody} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_template({
      #     stack_name: "StackName", # required
      #   })
      #
      # @example Response structure
      #   resp.template_body #=> String
      # @overload get_template(params = {})
      # @param [Hash] params ({})
      def get_template(params = {}, options = {})
        req = build_request(:get_template, params)
        req.send_request(options)
      end

      # Returns information about a new or existing template. The
      # `GetTemplateSummary` action is useful for viewing parameter
      # information, such as default parameter values and parameter types,
      # before you create or update a stack.
      #
      # You can use the `GetTemplateSummary` action when you submit a
      # template, or you can get template information for a running or deleted
      # stack.
      #
      # For deleted stacks, `GetTemplateSummary` returns the template
      # information for up to 90 days after the stack has been deleted. If the
      # template does not exist, a `ValidationError` is returned.
      # @option params [String] :template_body
      #   Structure containing the template body with a minimum length of 1 byte
      #   and a maximum length of 51,200 bytes. For more information about
      #   templates, see [Template Anatomy][1] in the AWS CloudFormation User
      #   Guide.
      #
      #   Conditional: You must specify only one of the following parameters:
      #   `StackName`, `TemplateBody`, or `TemplateURL`.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      # @option params [String] :template_url
      #   Location of file containing the template body. The URL must point to a
      #   template (max size: 460,800 bytes) that is located in an Amazon S3
      #   bucket. For more information about templates, see [Template
      #   Anatomy][1] in the AWS CloudFormation User Guide.
      #
      #   Conditional: You must specify only one of the following parameters:
      #   `StackName`, `TemplateBody`, or `TemplateURL`.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      # @option params [String] :stack_name
      #   The name or the stack ID that is associated with the stack, which are
      #   not always interchangeable. For running stacks, you can specify either
      #   the stack's name or its unique stack ID. For deleted stack, you must
      #   specify the unique stack ID.
      #
      #   Conditional: You must specify only one of the following parameters:
      #   `StackName`, `TemplateBody`, or `TemplateURL`.
      # @return [Types::GetTemplateSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetTemplateSummaryOutput#parameters #Parameters} => Array&lt;Types::ParameterDeclaration&gt;
      #   * {Types::GetTemplateSummaryOutput#description #Description} => String
      #   * {Types::GetTemplateSummaryOutput#capabilities #Capabilities} => Array&lt;String&gt;
      #   * {Types::GetTemplateSummaryOutput#capabilities_reason #CapabilitiesReason} => String
      #   * {Types::GetTemplateSummaryOutput#resource_types #ResourceTypes} => Array&lt;String&gt;
      #   * {Types::GetTemplateSummaryOutput#version #Version} => String
      #   * {Types::GetTemplateSummaryOutput#metadata #Metadata} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_template_summary({
      #     template_body: "TemplateBody",
      #     template_url: "TemplateURL",
      #     stack_name: "StackNameOrId",
      #   })
      #
      # @example Response structure
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
      # @overload get_template_summary(params = {})
      # @param [Hash] params ({})
      def get_template_summary(params = {}, options = {})
        req = build_request(:get_template_summary, params)
        req.send_request(options)
      end

      # Returns the ID and status of each active change set for a stack. For
      # example, AWS CloudFormation lists change sets that are in the
      # `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.
      # @option params [required, String] :stack_name
      #   The name or the Amazon Resource Name (ARN) of the stack for which you
      #   want to list change sets.
      # @option params [String] :next_token
      #   A string (provided by the ListChangeSets response output) that
      #   identifies the next page of change sets that you want to retrieve.
      # @return [Types::ListChangeSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListChangeSetsOutput#summaries #Summaries} => Array&lt;Types::ChangeSetSummary&gt;
      #   * {Types::ListChangeSetsOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_change_sets({
      #     stack_name: "StackNameOrId", # required
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
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
      # @overload list_change_sets(params = {})
      # @param [Hash] params ({})
      def list_change_sets(params = {}, options = {})
        req = build_request(:list_change_sets, params)
        req.send_request(options)
      end

      # Returns descriptions of all resources of the specified stack.
      #
      # For deleted stacks, ListStackResources returns resource information
      # for up to 90 days after the stack has been deleted.
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
      # @option params [String] :next_token
      #   A string that identifies the next page of stack resources that you
      #   want to retrieve.
      # @return [Types::ListStackResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListStackResourcesOutput#stack_resource_summaries #StackResourceSummaries} => Array&lt;Types::StackResourceSummary&gt;
      #   * {Types::ListStackResourcesOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_stack_resources({
      #     stack_name: "StackName", # required
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.stack_resource_summaries #=> Array
      #   resp.stack_resource_summaries[0].logical_resource_id #=> String
      #   resp.stack_resource_summaries[0].physical_resource_id #=> String
      #   resp.stack_resource_summaries[0].resource_type #=> String
      #   resp.stack_resource_summaries[0].last_updated_timestamp #=> Time
      #   resp.stack_resource_summaries[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE"
      #   resp.stack_resource_summaries[0].resource_status_reason #=> String
      #   resp.next_token #=> String
      # @overload list_stack_resources(params = {})
      # @param [Hash] params ({})
      def list_stack_resources(params = {}, options = {})
        req = build_request(:list_stack_resources, params)
        req.send_request(options)
      end

      # Returns the summary information for stacks whose status matches the
      # specified StackStatusFilter. Summary information for stacks that have
      # been deleted is kept for 90 days after the stack is deleted. If no
      # StackStatusFilter is specified, summary information for all stacks is
      # returned (including existing stacks and stacks that have been
      # deleted).
      # @option params [String] :next_token
      #   A string that identifies the next page of stacks that you want to
      #   retrieve.
      # @option params [Array<String>] :stack_status_filter
      #   Stack status to use as a filter. Specify one or more stack status
      #   codes to list only stacks with the specified status codes. For a
      #   complete list of stack status codes, see the `StackStatus` parameter
      #   of the Stack data type.
      # @return [Types::ListStacksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListStacksOutput#stack_summaries #StackSummaries} => Array&lt;Types::StackSummary&gt;
      #   * {Types::ListStacksOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_stacks({
      #     next_token: "NextToken",
      #     stack_status_filter: ["CREATE_IN_PROGRESS"], # accepts CREATE_IN_PROGRESS, CREATE_FAILED, CREATE_COMPLETE, ROLLBACK_IN_PROGRESS, ROLLBACK_FAILED, ROLLBACK_COMPLETE, DELETE_IN_PROGRESS, DELETE_FAILED, DELETE_COMPLETE, UPDATE_IN_PROGRESS, UPDATE_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_COMPLETE, UPDATE_ROLLBACK_IN_PROGRESS, UPDATE_ROLLBACK_FAILED, UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_ROLLBACK_COMPLETE
      #   })
      #
      # @example Response structure
      #   resp.stack_summaries #=> Array
      #   resp.stack_summaries[0].stack_id #=> String
      #   resp.stack_summaries[0].stack_name #=> String
      #   resp.stack_summaries[0].template_description #=> String
      #   resp.stack_summaries[0].creation_time #=> Time
      #   resp.stack_summaries[0].last_updated_time #=> Time
      #   resp.stack_summaries[0].deletion_time #=> Time
      #   resp.stack_summaries[0].stack_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE"
      #   resp.stack_summaries[0].stack_status_reason #=> String
      #   resp.next_token #=> String
      # @overload list_stacks(params = {})
      # @param [Hash] params ({})
      def list_stacks(params = {}, options = {})
        req = build_request(:list_stacks, params)
        req.send_request(options)
      end

      # Sets a stack policy for a specified stack.
      # @option params [required, String] :stack_name
      #   The name or unique stack ID that you want to associate a policy with.
      # @option params [String] :stack_policy_body
      #   Structure containing the stack policy body. For more information, go
      #   to [ Prevent Updates to Stack Resources][1] in the AWS CloudFormation
      #   User Guide. You can specify either the `StackPolicyBody` or the
      #   `StackPolicyURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
      # @option params [String] :stack_policy_url
      #   Location of a file containing the stack policy. The URL must point to
      #   a policy (maximum size: 16 KB) located in an S3 bucket in the same
      #   region as the stack. You can specify either the `StackPolicyBody` or
      #   the `StackPolicyURL` parameter, but not both.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_stack_policy({
      #     stack_name: "StackName", # required
      #     stack_policy_body: "StackPolicyBody",
      #     stack_policy_url: "StackPolicyURL",
      #   })
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
      # @option params [required, String] :stack_name
      #   The stack name or unique stack ID that includes the resource that you
      #   want to signal.
      # @option params [required, String] :logical_resource_id
      #   The logical ID of the resource that you want to signal. The logical ID
      #   is the name of the resource that given in the template.
      # @option params [required, String] :unique_id
      #   A unique ID of the signal. When you signal Amazon EC2 instances or
      #   Auto Scaling groups, specify the instance ID that you are signaling as
      #   the unique ID. If you send multiple signals to a single resource (such
      #   as signaling a wait condition), each signal requires a different
      #   unique ID.
      # @option params [required, String] :status
      #   The status of the signal, which is either success or failure. A
      #   failure signal causes AWS CloudFormation to immediately fail the stack
      #   creation or update.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.signal_resource({
      #     stack_name: "StackNameOrId", # required
      #     logical_resource_id: "LogicalResourceId", # required
      #     unique_id: "ResourceSignalUniqueId", # required
      #     status: "SUCCESS", # required, accepts SUCCESS, FAILURE
      #   })
      # @overload signal_resource(params = {})
      # @param [Hash] params ({})
      def signal_resource(params = {}, options = {})
        req = build_request(:signal_resource, params)
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
      # @option params [required, String] :stack_name
      #   The name or unique stack ID of the stack to update.
      # @option params [String] :template_body
      #   Structure containing the template body with a minimum length of 1 byte
      #   and a maximum length of 51,200 bytes. (For more information, go to
      #   [Template Anatomy][1] in the AWS CloudFormation User Guide.)
      #
      #   Conditional: You must specify either the `TemplateBody` or the
      #   `TemplateURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      # @option params [String] :template_url
      #   Location of file containing the template body. The URL must point to a
      #   template that is located in an Amazon S3 bucket. For more information,
      #   go to [Template Anatomy][1] in the AWS CloudFormation User Guide.
      #
      #   Conditional: You must specify either the `TemplateBody` or the
      #   `TemplateURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      # @option params [Boolean] :use_previous_template
      #   Reuse the existing template that is associated with the stack that you
      #   are updating.
      # @option params [String] :stack_policy_during_update_body
      #   Structure containing the temporary overriding stack policy body. You
      #   can specify either the `StackPolicyDuringUpdateBody` or the
      #   `StackPolicyDuringUpdateURL` parameter, but not both.
      #
      #   If you want to update protected resources, specify a temporary
      #   overriding stack policy during this update. If you do not specify a
      #   stack policy, the current policy that is associated with the stack
      #   will be used.
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
      # @option params [Array<Types::Parameter>] :parameters
      #   A list of `Parameter` structures that specify input parameters for the
      #   stack. For more information, see the [Parameter][1] data type.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
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
      # @option params [String] :stack_policy_body
      #   Structure containing a new stack policy body. You can specify either
      #   the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
      #
      #   You might update the stack policy, for example, in order to protect a
      #   new resource that you created during a stack update. If you do not
      #   specify a stack policy, the current policy that is associated with the
      #   stack is unchanged.
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
      # @option params [Array<String>] :notification_arns
      #   Amazon Simple Notification Service topic Amazon Resource Names (ARNs)
      #   that AWS CloudFormation associates with the stack. Specify an empty
      #   list to remove all notification topics.
      # @option params [Array<Types::Tag>] :tags
      #   Key-value pairs to associate with this stack. AWS CloudFormation also
      #   propagates these tags to supported resources in the stack. You can
      #   specify a maximum number of 10 tags.
      #
      #   If you don't specify this parameter, AWS CloudFormation doesn't
      #   modify the stack's tags. If you specify an empty value, AWS
      #   CloudFormation removes all associated tags.
      # @return [Types::UpdateStackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateStackOutput#stack_id #StackId} => String
      #
      # @example Request syntax with placeholder values
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
      #       },
      #     ],
      #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
      #     resource_types: ["ResourceType"],
      #     stack_policy_body: "StackPolicyBody",
      #     stack_policy_url: "StackPolicyURL",
      #     notification_arns: ["NotificationARN"],
      #     tags: [
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.stack_id #=> String
      # @overload update_stack(params = {})
      # @param [Hash] params ({})
      def update_stack(params = {}, options = {})
        req = build_request(:update_stack, params)
        req.send_request(options)
      end

      # Validates a specified template.
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
      # @return [Types::ValidateTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ValidateTemplateOutput#parameters #Parameters} => Array&lt;Types::TemplateParameter&gt;
      #   * {Types::ValidateTemplateOutput#description #Description} => String
      #   * {Types::ValidateTemplateOutput#capabilities #Capabilities} => Array&lt;String&gt;
      #   * {Types::ValidateTemplateOutput#capabilities_reason #CapabilitiesReason} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.validate_template({
      #     template_body: "TemplateBody",
      #     template_url: "TemplateURL",
      #   })
      #
      # @example Response structure
      #   resp.parameters #=> Array
      #   resp.parameters[0].parameter_key #=> String
      #   resp.parameters[0].default_value #=> String
      #   resp.parameters[0].no_echo #=> Boolean
      #   resp.parameters[0].description #=> String
      #   resp.description #=> String
      #   resp.capabilities #=> Array
      #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"
      #   resp.capabilities_reason #=> String
      # @overload validate_template(params = {})
      # @param [Hash] params ({})
      def validate_template(params = {}, options = {})
        req = build_request(:validate_template, params)
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
        {
          stack_exists: Waiters::StackExists,
          stack_create_complete: Waiters::StackCreateComplete,
          stack_delete_complete: Waiters::StackDeleteComplete,
          stack_update_complete: Waiters::StackUpdateComplete
        }
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
