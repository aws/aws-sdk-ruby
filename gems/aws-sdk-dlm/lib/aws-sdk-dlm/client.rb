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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:dlm)

module Aws::DLM
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :dlm

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Creates a policy to manage the lifecycle of the specified AWS
    # resources. You can create up to 100 lifecycle policies.
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to run the
    #   operations specified by the lifecycle policy.
    #
    # @option params [required, String] :description
    #   A description of the lifecycle policy. The characters ^\[0-9A-Za-z
    #   \_-\]+$ are supported.
    #
    # @option params [required, String] :state
    #   The desired activation state of the lifecycle policy after creation.
    #
    # @option params [required, Types::PolicyDetails] :policy_details
    #   The configuration details of the lifecycle policy.
    #
    #   Target tags cannot be re-used across lifecycle policies.
    #
    # @return [Types::CreateLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLifecyclePolicyResponse#policy_id #policy_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lifecycle_policy({
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     description: "PolicyDescription", # required
    #     state: "ENABLED", # required, accepts ENABLED, DISABLED
    #     policy_details: { # required
    #       resource_types: ["VOLUME"], # accepts VOLUME
    #       target_tags: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         },
    #       ],
    #       schedules: [
    #         {
    #           name: "ScheduleName",
    #           tags_to_add: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             },
    #           ],
    #           create_rule: {
    #             interval: 1, # required
    #             interval_unit: "HOURS", # required, accepts HOURS
    #             times: ["Time"],
    #           },
    #           retain_rule: {
    #             count: 1, # required
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CreateLifecyclePolicy AWS API Documentation
    #
    # @overload create_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def create_lifecycle_policy(params = {}, options = {})
      req = build_request(:create_lifecycle_policy, params)
      req.send_request(options)
    end

    # Deletes the specified lifecycle policy and halts the automated
    # operations that the policy specified.
    #
    # @option params [required, String] :policy_id
    #   The identifier of the lifecycle policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_policy({
    #     policy_id: "PolicyId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/DeleteLifecyclePolicy AWS API Documentation
    #
    # @overload delete_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def delete_lifecycle_policy(params = {}, options = {})
      req = build_request(:delete_lifecycle_policy, params)
      req.send_request(options)
    end

    # Gets summary information about all or the specified data lifecycle
    # policies.
    #
    # To get complete information about a policy, use GetLifecyclePolicy.
    #
    # @option params [Array<String>] :policy_ids
    #   The identifiers of the data lifecycle policies.
    #
    # @option params [String] :state
    #   The activation state.
    #
    # @option params [Array<String>] :resource_types
    #   The resource type.
    #
    # @option params [Array<String>] :target_tags
    #   The target tag for a policy.
    #
    #   Tags are strings in the format `key=value`.
    #
    # @option params [Array<String>] :tags_to_add
    #   The tags to add to objects created by the policy.
    #
    #   Tags are strings in the format `key=value`.
    #
    #   These user-defined tags are added in addition to the AWS-added
    #   lifecycle tags.
    #
    # @return [Types::GetLifecyclePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecyclePoliciesResponse#policies #policies} => Array&lt;Types::LifecyclePolicySummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policies({
    #     policy_ids: ["PolicyId"],
    #     state: "ENABLED", # accepts ENABLED, DISABLED, ERROR
    #     resource_types: ["VOLUME"], # accepts VOLUME
    #     target_tags: ["TagFilter"],
    #     tags_to_add: ["TagFilter"],
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_id #=> String
    #   resp.policies[0].description #=> String
    #   resp.policies[0].state #=> String, one of "ENABLED", "DISABLED", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePolicies AWS API Documentation
    #
    # @overload get_lifecycle_policies(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_policies(params = {}, options = {})
      req = build_request(:get_lifecycle_policies, params)
      req.send_request(options)
    end

    # Gets detailed information about the specified lifecycle policy.
    #
    # @option params [required, String] :policy_id
    #   The identifier of the lifecycle policy.
    #
    # @return [Types::GetLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecyclePolicyResponse#policy #policy} => Types::LifecyclePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy({
    #     policy_id: "PolicyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_id #=> String
    #   resp.policy.description #=> String
    #   resp.policy.state #=> String, one of "ENABLED", "DISABLED", "ERROR"
    #   resp.policy.execution_role_arn #=> String
    #   resp.policy.date_created #=> Time
    #   resp.policy.date_modified #=> Time
    #   resp.policy.policy_details.resource_types #=> Array
    #   resp.policy.policy_details.resource_types[0] #=> String, one of "VOLUME"
    #   resp.policy.policy_details.target_tags #=> Array
    #   resp.policy.policy_details.target_tags[0].key #=> String
    #   resp.policy.policy_details.target_tags[0].value #=> String
    #   resp.policy.policy_details.schedules #=> Array
    #   resp.policy.policy_details.schedules[0].name #=> String
    #   resp.policy.policy_details.schedules[0].tags_to_add #=> Array
    #   resp.policy.policy_details.schedules[0].tags_to_add[0].key #=> String
    #   resp.policy.policy_details.schedules[0].tags_to_add[0].value #=> String
    #   resp.policy.policy_details.schedules[0].create_rule.interval #=> Integer
    #   resp.policy.policy_details.schedules[0].create_rule.interval_unit #=> String, one of "HOURS"
    #   resp.policy.policy_details.schedules[0].create_rule.times #=> Array
    #   resp.policy.policy_details.schedules[0].create_rule.times[0] #=> String
    #   resp.policy.policy_details.schedules[0].retain_rule.count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePolicy AWS API Documentation
    #
    # @overload get_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_policy(params = {}, options = {})
      req = build_request(:get_lifecycle_policy, params)
      req.send_request(options)
    end

    # Updates the specified lifecycle policy.
    #
    # @option params [required, String] :policy_id
    #   The identifier of the lifecycle policy.
    #
    # @option params [String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to run the
    #   operations specified by the lifecycle policy.
    #
    # @option params [String] :state
    #   The desired activation state of the lifecycle policy after creation.
    #
    # @option params [String] :description
    #   A description of the lifecycle policy.
    #
    # @option params [Types::PolicyDetails] :policy_details
    #   The configuration of the lifecycle policy.
    #
    #   Target tags cannot be re-used across policies.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lifecycle_policy({
    #     policy_id: "PolicyId", # required
    #     execution_role_arn: "ExecutionRoleArn",
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     description: "PolicyDescription",
    #     policy_details: {
    #       resource_types: ["VOLUME"], # accepts VOLUME
    #       target_tags: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         },
    #       ],
    #       schedules: [
    #         {
    #           name: "ScheduleName",
    #           tags_to_add: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             },
    #           ],
    #           create_rule: {
    #             interval: 1, # required
    #             interval_unit: "HOURS", # required, accepts HOURS
    #             times: ["Time"],
    #           },
    #           retain_rule: {
    #             count: 1, # required
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/UpdateLifecyclePolicy AWS API Documentation
    #
    # @overload update_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def update_lifecycle_policy(params = {}, options = {})
      req = build_request(:update_lifecycle_policy, params)
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
      context[:gem_name] = 'aws-sdk-dlm'
      context[:gem_version] = '1.3.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
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
