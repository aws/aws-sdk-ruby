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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics.rb'
require 'aws-sdk-core/plugins/client_metrics_sender.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetrics)
    add_plugin(Aws::Plugins::ClientMetricsSender)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
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
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the lifecycle policy during creation.
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
    #       policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT
    #       resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #       target_tags: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         },
    #       ],
    #       schedules: [
    #         {
    #           name: "ScheduleName",
    #           copy_tags: false,
    #           tags_to_add: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             },
    #           ],
    #           variable_tags: [
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
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #           },
    #           fast_restore_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #             availability_zones: ["AvailabilityZone"], # required
    #           },
    #           cross_region_copy_rules: [
    #             {
    #               target_region: "TargetRegion", # required
    #               encrypted: false, # required
    #               cmk_arn: "CmkArn",
    #               copy_tags: false,
    #               retain_rule: {
    #                 interval: 1,
    #                 interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #       parameters: {
    #         exclude_boot_volume: false,
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
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
    #     resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
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
    #   resp.policies[0].tags #=> Hash
    #   resp.policies[0].tags["TagKey"] #=> String
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
    #   resp.policy.status_message #=> String
    #   resp.policy.execution_role_arn #=> String
    #   resp.policy.date_created #=> Time
    #   resp.policy.date_modified #=> Time
    #   resp.policy.policy_details.policy_type #=> String, one of "EBS_SNAPSHOT_MANAGEMENT"
    #   resp.policy.policy_details.resource_types #=> Array
    #   resp.policy.policy_details.resource_types[0] #=> String, one of "VOLUME", "INSTANCE"
    #   resp.policy.policy_details.target_tags #=> Array
    #   resp.policy.policy_details.target_tags[0].key #=> String
    #   resp.policy.policy_details.target_tags[0].value #=> String
    #   resp.policy.policy_details.schedules #=> Array
    #   resp.policy.policy_details.schedules[0].name #=> String
    #   resp.policy.policy_details.schedules[0].copy_tags #=> Boolean
    #   resp.policy.policy_details.schedules[0].tags_to_add #=> Array
    #   resp.policy.policy_details.schedules[0].tags_to_add[0].key #=> String
    #   resp.policy.policy_details.schedules[0].tags_to_add[0].value #=> String
    #   resp.policy.policy_details.schedules[0].variable_tags #=> Array
    #   resp.policy.policy_details.schedules[0].variable_tags[0].key #=> String
    #   resp.policy.policy_details.schedules[0].variable_tags[0].value #=> String
    #   resp.policy.policy_details.schedules[0].create_rule.interval #=> Integer
    #   resp.policy.policy_details.schedules[0].create_rule.interval_unit #=> String, one of "HOURS"
    #   resp.policy.policy_details.schedules[0].create_rule.times #=> Array
    #   resp.policy.policy_details.schedules[0].create_rule.times[0] #=> String
    #   resp.policy.policy_details.schedules[0].retain_rule.count #=> Integer
    #   resp.policy.policy_details.schedules[0].retain_rule.interval #=> Integer
    #   resp.policy.policy_details.schedules[0].retain_rule.interval_unit #=> String, one of "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.policy.policy_details.schedules[0].fast_restore_rule.count #=> Integer
    #   resp.policy.policy_details.schedules[0].fast_restore_rule.interval #=> Integer
    #   resp.policy.policy_details.schedules[0].fast_restore_rule.interval_unit #=> String, one of "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.policy.policy_details.schedules[0].fast_restore_rule.availability_zones #=> Array
    #   resp.policy.policy_details.schedules[0].fast_restore_rule.availability_zones[0] #=> String
    #   resp.policy.policy_details.schedules[0].cross_region_copy_rules #=> Array
    #   resp.policy.policy_details.schedules[0].cross_region_copy_rules[0].target_region #=> String
    #   resp.policy.policy_details.schedules[0].cross_region_copy_rules[0].encrypted #=> Boolean
    #   resp.policy.policy_details.schedules[0].cross_region_copy_rules[0].cmk_arn #=> String
    #   resp.policy.policy_details.schedules[0].cross_region_copy_rules[0].copy_tags #=> Boolean
    #   resp.policy.policy_details.schedules[0].cross_region_copy_rules[0].retain_rule.interval #=> Integer
    #   resp.policy.policy_details.schedules[0].cross_region_copy_rules[0].retain_rule.interval_unit #=> String, one of "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.policy.policy_details.parameters.exclude_boot_volume #=> Boolean
    #   resp.policy.tags #=> Hash
    #   resp.policy.tags["TagKey"] #=> String
    #   resp.policy.policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePolicy AWS API Documentation
    #
    # @overload get_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_policy(params = {}, options = {})
      req = build_request(:get_lifecycle_policy, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "PolicyArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   One or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "PolicyArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "PolicyArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
    #   The configuration of the lifecycle policy. You cannot update the
    #   policy type or the resource type.
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
    #       policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT
    #       resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #       target_tags: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         },
    #       ],
    #       schedules: [
    #         {
    #           name: "ScheduleName",
    #           copy_tags: false,
    #           tags_to_add: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             },
    #           ],
    #           variable_tags: [
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
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #           },
    #           fast_restore_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #             availability_zones: ["AvailabilityZone"], # required
    #           },
    #           cross_region_copy_rules: [
    #             {
    #               target_region: "TargetRegion", # required
    #               encrypted: false, # required
    #               cmk_arn: "CmkArn",
    #               copy_tags: false,
    #               retain_rule: {
    #                 interval: 1,
    #                 interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #       parameters: {
    #         exclude_boot_volume: false,
    #       },
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
      context[:gem_version] = '1.24.0'
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
