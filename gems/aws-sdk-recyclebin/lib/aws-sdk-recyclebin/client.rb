# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:recyclebin)

module Aws::RecycleBin
  # An API client for RecycleBin.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RecycleBin::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :recyclebin

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
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::RecycleBin::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
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
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
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
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::RecycleBin::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::RecycleBin::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
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

    # Creates a Recycle Bin retention rule. For more information, see [
    # Create Recycle Bin retention rules][1] in the *Amazon Elastic Compute
    # Cloud User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-create-rule
    #
    # @option params [required, Types::RetentionPeriod] :retention_period
    #   Information about the retention period for which the retention rule is
    #   to retain resources.
    #
    # @option params [String] :description
    #   The retention rule description.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Information about the tags to assign to the retention rule.
    #
    # @option params [required, String] :resource_type
    #   The resource type to be retained by the retention rule. Currently,
    #   only Amazon EBS snapshots and EBS-backed AMIs are supported. To retain
    #   snapshots, specify `EBS_SNAPSHOT`. To retain EBS-backed AMIs, specify
    #   `EC2_IMAGE`.
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   Specifies the resource tags to use to identify resources that are to
    #   be retained by a tag-level retention rule. For tag-level retention
    #   rules, only deleted resources, of the specified resource type, that
    #   have one or more of the specified tag key and value pairs are
    #   retained. If a resource is deleted, but it does not have any of the
    #   specified tag key and value pairs, it is immediately deleted without
    #   being retained by the retention rule.
    #
    #   You can add the same tag key and value pair to a maximum or five
    #   retention rules.
    #
    #   To create a Region-level retention rule, omit this parameter. A
    #   Region-level retention rule does not have any resource tags specified.
    #   It retains all deleted resources of the specified resource type in the
    #   Region in which the rule is created, even if the resources are not
    #   tagged.
    #
    # @option params [Types::LockConfiguration] :lock_configuration
    #   Information about the retention rule lock configuration.
    #
    # @return [Types::CreateRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleResponse#identifier #identifier} => String
    #   * {Types::CreateRuleResponse#retention_period #retention_period} => Types::RetentionPeriod
    #   * {Types::CreateRuleResponse#description #description} => String
    #   * {Types::CreateRuleResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateRuleResponse#resource_type #resource_type} => String
    #   * {Types::CreateRuleResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::CreateRuleResponse#status #status} => String
    #   * {Types::CreateRuleResponse#lock_configuration #lock_configuration} => Types::LockConfiguration
    #   * {Types::CreateRuleResponse#lock_state #lock_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     retention_period: { # required
    #       retention_period_value: 1, # required
    #       retention_period_unit: "DAYS", # required, accepts DAYS
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     resource_type: "EBS_SNAPSHOT", # required, accepts EBS_SNAPSHOT, EC2_IMAGE
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue",
    #       },
    #     ],
    #     lock_configuration: {
    #       unlock_delay: { # required
    #         unlock_delay_value: 1, # required
    #         unlock_delay_unit: "DAYS", # required, accepts DAYS
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.retention_period.retention_period_value #=> Integer
    #   resp.retention_period.retention_period_unit #=> String, one of "DAYS"
    #   resp.description #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.resource_type #=> String, one of "EBS_SNAPSHOT", "EC2_IMAGE"
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].resource_tag_key #=> String
    #   resp.resource_tags[0].resource_tag_value #=> String
    #   resp.status #=> String, one of "pending", "available"
    #   resp.lock_configuration.unlock_delay.unlock_delay_value #=> Integer
    #   resp.lock_configuration.unlock_delay.unlock_delay_unit #=> String, one of "DAYS"
    #   resp.lock_state #=> String, one of "locked", "pending_unlock", "unlocked"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # Deletes a Recycle Bin retention rule. For more information, see [
    # Delete Recycle Bin retention rules][1] in the *Amazon Elastic Compute
    # Cloud User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule
    #
    # @option params [required, String] :identifier
    #   The unique ID of the retention rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     identifier: "RuleIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Gets information about a Recycle Bin retention rule.
    #
    # @option params [required, String] :identifier
    #   The unique ID of the retention rule.
    #
    # @return [Types::GetRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuleResponse#identifier #identifier} => String
    #   * {Types::GetRuleResponse#description #description} => String
    #   * {Types::GetRuleResponse#resource_type #resource_type} => String
    #   * {Types::GetRuleResponse#retention_period #retention_period} => Types::RetentionPeriod
    #   * {Types::GetRuleResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::GetRuleResponse#status #status} => String
    #   * {Types::GetRuleResponse#lock_configuration #lock_configuration} => Types::LockConfiguration
    #   * {Types::GetRuleResponse#lock_state #lock_state} => String
    #   * {Types::GetRuleResponse#lock_end_time #lock_end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule({
    #     identifier: "RuleIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.description #=> String
    #   resp.resource_type #=> String, one of "EBS_SNAPSHOT", "EC2_IMAGE"
    #   resp.retention_period.retention_period_value #=> Integer
    #   resp.retention_period.retention_period_unit #=> String, one of "DAYS"
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].resource_tag_key #=> String
    #   resp.resource_tags[0].resource_tag_value #=> String
    #   resp.status #=> String, one of "pending", "available"
    #   resp.lock_configuration.unlock_delay.unlock_delay_value #=> Integer
    #   resp.lock_configuration.unlock_delay.unlock_delay_unit #=> String, one of "DAYS"
    #   resp.lock_state #=> String, one of "locked", "pending_unlock", "unlocked"
    #   resp.lock_end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/GetRule AWS API Documentation
    #
    # @overload get_rule(params = {})
    # @param [Hash] params ({})
    def get_rule(params = {}, options = {})
      req = build_request(:get_rule, params)
      req.send_request(options)
    end

    # Lists the Recycle Bin retention rules in the Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [required, String] :resource_type
    #   The resource type retained by the retention rule. Only retention rules
    #   that retain the specified resource type are listed. Currently, only
    #   Amazon EBS snapshots and EBS-backed AMIs are supported. To list
    #   retention rules that retain snapshots, specify `EBS_SNAPSHOT`. To list
    #   retention rules that retain EBS-backed AMIs, specify `EC2_IMAGE`.
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   Information about the resource tags used to identify resources that
    #   are retained by the retention rule.
    #
    # @option params [String] :lock_state
    #   The lock state of the retention rules to list. Only retention rules
    #   with the specified lock state are returned.
    #
    # @return [Types::ListRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesResponse#rules #rules} => Array&lt;Types::RuleSummary&gt;
    #   * {Types::ListRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_type: "EBS_SNAPSHOT", # required, accepts EBS_SNAPSHOT, EC2_IMAGE
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue",
    #       },
    #     ],
    #     lock_state: "locked", # accepts locked, pending_unlock, unlocked
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].identifier #=> String
    #   resp.rules[0].description #=> String
    #   resp.rules[0].retention_period.retention_period_value #=> Integer
    #   resp.rules[0].retention_period.retention_period_unit #=> String, one of "DAYS"
    #   resp.rules[0].lock_state #=> String, one of "locked", "pending_unlock", "unlocked"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # Lists the tags assigned to a retention rule.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the retention rule.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "RuleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Locks a retention rule. A locked retention rule can't be modified or
    # deleted.
    #
    # @option params [required, String] :identifier
    #   The unique ID of the retention rule.
    #
    # @option params [required, Types::LockConfiguration] :lock_configuration
    #   Information about the retention rule lock configuration.
    #
    # @return [Types::LockRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LockRuleResponse#identifier #identifier} => String
    #   * {Types::LockRuleResponse#description #description} => String
    #   * {Types::LockRuleResponse#resource_type #resource_type} => String
    #   * {Types::LockRuleResponse#retention_period #retention_period} => Types::RetentionPeriod
    #   * {Types::LockRuleResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::LockRuleResponse#status #status} => String
    #   * {Types::LockRuleResponse#lock_configuration #lock_configuration} => Types::LockConfiguration
    #   * {Types::LockRuleResponse#lock_state #lock_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.lock_rule({
    #     identifier: "RuleIdentifier", # required
    #     lock_configuration: { # required
    #       unlock_delay: { # required
    #         unlock_delay_value: 1, # required
    #         unlock_delay_unit: "DAYS", # required, accepts DAYS
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.description #=> String
    #   resp.resource_type #=> String, one of "EBS_SNAPSHOT", "EC2_IMAGE"
    #   resp.retention_period.retention_period_value #=> Integer
    #   resp.retention_period.retention_period_unit #=> String, one of "DAYS"
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].resource_tag_key #=> String
    #   resp.resource_tags[0].resource_tag_value #=> String
    #   resp.status #=> String, one of "pending", "available"
    #   resp.lock_configuration.unlock_delay.unlock_delay_value #=> Integer
    #   resp.lock_configuration.unlock_delay.unlock_delay_unit #=> String, one of "DAYS"
    #   resp.lock_state #=> String, one of "locked", "pending_unlock", "unlocked"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/LockRule AWS API Documentation
    #
    # @overload lock_rule(params = {})
    # @param [Hash] params ({})
    def lock_rule(params = {}, options = {})
      req = build_request(:lock_rule, params)
      req.send_request(options)
    end

    # Assigns tags to the specified retention rule.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the retention rule.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Information about the tags to assign to the retention rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "RuleArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Unlocks a retention rule. After a retention rule is unlocked, it can
    # be modified or deleted only after the unlock delay period expires.
    #
    # @option params [required, String] :identifier
    #   The unique ID of the retention rule.
    #
    # @return [Types::UnlockRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UnlockRuleResponse#identifier #identifier} => String
    #   * {Types::UnlockRuleResponse#description #description} => String
    #   * {Types::UnlockRuleResponse#resource_type #resource_type} => String
    #   * {Types::UnlockRuleResponse#retention_period #retention_period} => Types::RetentionPeriod
    #   * {Types::UnlockRuleResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::UnlockRuleResponse#status #status} => String
    #   * {Types::UnlockRuleResponse#lock_configuration #lock_configuration} => Types::LockConfiguration
    #   * {Types::UnlockRuleResponse#lock_state #lock_state} => String
    #   * {Types::UnlockRuleResponse#lock_end_time #lock_end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unlock_rule({
    #     identifier: "RuleIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.description #=> String
    #   resp.resource_type #=> String, one of "EBS_SNAPSHOT", "EC2_IMAGE"
    #   resp.retention_period.retention_period_value #=> Integer
    #   resp.retention_period.retention_period_unit #=> String, one of "DAYS"
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].resource_tag_key #=> String
    #   resp.resource_tags[0].resource_tag_value #=> String
    #   resp.status #=> String, one of "pending", "available"
    #   resp.lock_configuration.unlock_delay.unlock_delay_value #=> Integer
    #   resp.lock_configuration.unlock_delay.unlock_delay_unit #=> String, one of "DAYS"
    #   resp.lock_state #=> String, one of "locked", "pending_unlock", "unlocked"
    #   resp.lock_end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UnlockRule AWS API Documentation
    #
    # @overload unlock_rule(params = {})
    # @param [Hash] params ({})
    def unlock_rule(params = {}, options = {})
      req = build_request(:unlock_rule, params)
      req.send_request(options)
    end

    # Unassigns a tag from a retention rule.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the retention rule.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the tags to unassign. All tags that have the specified
    #   tag key are unassigned.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "RuleArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing Recycle Bin retention rule. You can update a
    # retention rule's description, resource tags, and retention period at
    # any time after creation. You can't update a retention rule's
    # resource type after creation. For more information, see [ Update
    # Recycle Bin retention rules][1] in the *Amazon Elastic Compute Cloud
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule
    #
    # @option params [required, String] :identifier
    #   The unique ID of the retention rule.
    #
    # @option params [Types::RetentionPeriod] :retention_period
    #   Information about the retention period for which the retention rule is
    #   to retain resources.
    #
    # @option params [String] :description
    #   The retention rule description.
    #
    # @option params [String] :resource_type
    #   <note markdown="1"> This parameter is currently not supported. You can't update a
    #   retention rule's resource type after creation.
    #
    #    </note>
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   Specifies the resource tags to use to identify resources that are to
    #   be retained by a tag-level retention rule. For tag-level retention
    #   rules, only deleted resources, of the specified resource type, that
    #   have one or more of the specified tag key and value pairs are
    #   retained. If a resource is deleted, but it does not have any of the
    #   specified tag key and value pairs, it is immediately deleted without
    #   being retained by the retention rule.
    #
    #   You can add the same tag key and value pair to a maximum or five
    #   retention rules.
    #
    #   To create a Region-level retention rule, omit this parameter. A
    #   Region-level retention rule does not have any resource tags specified.
    #   It retains all deleted resources of the specified resource type in the
    #   Region in which the rule is created, even if the resources are not
    #   tagged.
    #
    # @return [Types::UpdateRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuleResponse#identifier #identifier} => String
    #   * {Types::UpdateRuleResponse#retention_period #retention_period} => Types::RetentionPeriod
    #   * {Types::UpdateRuleResponse#description #description} => String
    #   * {Types::UpdateRuleResponse#resource_type #resource_type} => String
    #   * {Types::UpdateRuleResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::UpdateRuleResponse#status #status} => String
    #   * {Types::UpdateRuleResponse#lock_state #lock_state} => String
    #   * {Types::UpdateRuleResponse#lock_end_time #lock_end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule({
    #     identifier: "RuleIdentifier", # required
    #     retention_period: {
    #       retention_period_value: 1, # required
    #       retention_period_unit: "DAYS", # required, accepts DAYS
    #     },
    #     description: "Description",
    #     resource_type: "EBS_SNAPSHOT", # accepts EBS_SNAPSHOT, EC2_IMAGE
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.retention_period.retention_period_value #=> Integer
    #   resp.retention_period.retention_period_unit #=> String, one of "DAYS"
    #   resp.description #=> String
    #   resp.resource_type #=> String, one of "EBS_SNAPSHOT", "EC2_IMAGE"
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].resource_tag_key #=> String
    #   resp.resource_tags[0].resource_tag_value #=> String
    #   resp.status #=> String, one of "pending", "available"
    #   resp.lock_state #=> String, one of "locked", "pending_unlock", "unlocked"
    #   resp.lock_end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UpdateRule AWS API Documentation
    #
    # @overload update_rule(params = {})
    # @param [Hash] params ({})
    def update_rule(params = {}, options = {})
      req = build_request(:update_rule, params)
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
      context[:gem_name] = 'aws-sdk-recyclebin'
      context[:gem_version] = '1.13.0'
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
