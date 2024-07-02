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
require 'aws-sdk-core/plugins/invocation_id.rb'
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

Aws::Plugins::GlobalConfiguration.add_identifier(:resourcegroups)

module Aws::ResourceGroups
  # An API client for ResourceGroups.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ResourceGroups::Client.new(
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

    @identifier = :resourcegroups

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
    add_plugin(Aws::Plugins::InvocationId)
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
    add_plugin(Aws::ResourceGroups::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
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
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
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
    #   @option options [Aws::ResourceGroups::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ResourceGroups::EndpointParameters`
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a resource group with the specified name and description. You
    # can optionally include either a resource query or a service
    # configuration. For more information about constructing a resource
    # query, see [Build queries and groups in Resource Groups][1] in the
    # *Resource Groups User Guide*. For more information about
    # service-linked groups and service configurations, see [Service
    # configurations for Resource Groups][2].
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:CreateGroup`
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ARG/latest/userguide/getting_started-query.html
    # [2]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
    #
    # @option params [required, String] :name
    #   The name of the group, which is the identifier of the group in other
    #   operations. You can't change the name of a resource group after you
    #   create it. A resource group name can consist of letters, numbers,
    #   hyphens, periods, and underscores. The name cannot start with `AWS`,
    #   `aws`, or any other possible capitalization; these are reserved. A
    #   resource group name must be unique within each Amazon Web Services
    #   Region in your Amazon Web Services account.
    #
    # @option params [String] :description
    #   The description of the resource group. Descriptions can consist of
    #   letters, numbers, hyphens, underscores, periods, and spaces.
    #
    # @option params [Types::ResourceQuery] :resource_query
    #   The resource query that determines which Amazon Web Services resources
    #   are members of this group. For more information about resource
    #   queries, see [Create a tag-based group in Resource Groups][1].
    #
    #   <note markdown="1"> A resource group can contain either a `ResourceQuery` or a
    #   `Configuration`, but not both.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the group. A tag is key-value pair string.
    #
    # @option params [Array<Types::GroupConfigurationItem>] :configuration
    #   A configuration associates the resource group with an Amazon Web
    #   Services service and specifies how the service can interact with the
    #   resources in the group. A configuration is an array of
    #   GroupConfigurationItem elements. For details about the syntax of
    #   service configurations, see [Service configurations for Resource
    #   Groups][1].
    #
    #   <note markdown="1"> A resource group can contain either a `Configuration` or a
    #   `ResourceQuery`, but not both.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
    #
    # @return [Types::CreateGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupOutput#group #group} => Types::Group
    #   * {Types::CreateGroupOutput#resource_query #resource_query} => Types::ResourceQuery
    #   * {Types::CreateGroupOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateGroupOutput#group_configuration #group_configuration} => Types::GroupConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     name: "GroupName", # required
    #     description: "Description",
    #     resource_query: {
    #       type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #       query: "Query", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     configuration: [
    #       {
    #         type: "GroupConfigurationType", # required
    #         parameters: [
    #           {
    #             name: "GroupConfigurationParameterName", # required
    #             values: ["GroupConfigurationParameterValue"],
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #   resp.resource_query.type #=> String, one of "TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"
    #   resp.resource_query.query #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.group_configuration.configuration #=> Array
    #   resp.group_configuration.configuration[0].type #=> String
    #   resp.group_configuration.configuration[0].parameters #=> Array
    #   resp.group_configuration.configuration[0].parameters[0].name #=> String
    #   resp.group_configuration.configuration[0].parameters[0].values #=> Array
    #   resp.group_configuration.configuration[0].parameters[0].values[0] #=> String
    #   resp.group_configuration.proposed_configuration #=> Array
    #   resp.group_configuration.proposed_configuration[0].type #=> String
    #   resp.group_configuration.proposed_configuration[0].parameters #=> Array
    #   resp.group_configuration.proposed_configuration[0].parameters[0].name #=> String
    #   resp.group_configuration.proposed_configuration[0].parameters[0].values #=> Array
    #   resp.group_configuration.proposed_configuration[0].parameters[0].values[0] #=> String
    #   resp.group_configuration.status #=> String, one of "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.group_configuration.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Deletes the specified resource group. Deleting a resource group does
    # not delete any resources that are members of the group; it only
    # deletes the group structure.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:DeleteGroup`
    #
    # ^
    #
    # @option params [String] :group_name
    #   Deprecated - don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to delete.
    #
    # @return [Types::DeleteGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupOutput#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Retrieves the current status of optional features in Resource Groups.
    #
    # @return [Types::GetAccountSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsOutput#account_settings #account_settings} => Types::AccountSettings
    #
    # @example Response structure
    #
    #   resp.account_settings.group_lifecycle_events_desired_status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.account_settings.group_lifecycle_events_status #=> String, one of "ACTIVE", "INACTIVE", "IN_PROGRESS", "ERROR"
    #   resp.account_settings.group_lifecycle_events_status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Returns information about a specified resource group.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:GetGroup`
    #
    # ^
    #
    # @option params [String] :group_name
    #   Deprecated - don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to retrieve.
    #
    # @return [Types::GetGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupOutput#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Retrieves the service configuration associated with the specified
    # resource group. For details about the service configuration syntax,
    # see [Service configurations for Resource Groups][1].
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:GetGroupConfiguration`
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group for which you want to
    #   retrive the service configuration.
    #
    # @return [Types::GetGroupConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupConfigurationOutput#group_configuration #group_configuration} => Types::GroupConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_configuration({
    #     group: "GroupString",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_configuration.configuration #=> Array
    #   resp.group_configuration.configuration[0].type #=> String
    #   resp.group_configuration.configuration[0].parameters #=> Array
    #   resp.group_configuration.configuration[0].parameters[0].name #=> String
    #   resp.group_configuration.configuration[0].parameters[0].values #=> Array
    #   resp.group_configuration.configuration[0].parameters[0].values[0] #=> String
    #   resp.group_configuration.proposed_configuration #=> Array
    #   resp.group_configuration.proposed_configuration[0].type #=> String
    #   resp.group_configuration.proposed_configuration[0].parameters #=> Array
    #   resp.group_configuration.proposed_configuration[0].parameters[0].name #=> String
    #   resp.group_configuration.proposed_configuration[0].parameters[0].values #=> Array
    #   resp.group_configuration.proposed_configuration[0].parameters[0].values[0] #=> String
    #   resp.group_configuration.status #=> String, one of "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.group_configuration.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupConfiguration AWS API Documentation
    #
    # @overload get_group_configuration(params = {})
    # @param [Hash] params ({})
    def get_group_configuration(params = {}, options = {})
      req = build_request(:get_group_configuration, params)
      req.send_request(options)
    end

    # Retrieves the resource query associated with the specified resource
    # group. For more information about resource queries, see [Create a
    # tag-based group in Resource Groups][1].
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:GetGroupQuery`
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag
    #
    # @option params [String] :group_name
    #   Don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to query.
    #
    # @return [Types::GetGroupQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupQueryOutput#group_query #group_query} => Types::GroupQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_query({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_query.group_name #=> String
    #   resp.group_query.resource_query.type #=> String, one of "TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"
    #   resp.group_query.resource_query.query #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupQuery AWS API Documentation
    #
    # @overload get_group_query(params = {})
    # @param [Hash] params ({})
    def get_group_query(params = {}, options = {})
      req = build_request(:get_group_query, params)
      req.send_request(options)
    end

    # Returns a list of tags that are associated with a resource group,
    # specified by an ARN.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:GetTags`
    #
    # ^
    #
    # @option params [required, String] :arn
    #   The ARN of the resource group whose tags you want to retrieve.
    #
    # @return [Types::GetTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagsOutput#arn #arn} => String
    #   * {Types::GetTagsOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags({
    #     arn: "GroupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetTags AWS API Documentation
    #
    # @overload get_tags(params = {})
    # @param [Hash] params ({})
    def get_tags(params = {}, options = {})
      req = build_request(:get_tags, params)
      req.send_request(options)
    end

    # Adds the specified resources to the specified group.
    #
    # You can use this operation with only resource groups that are
    # configured with the following types:
    #
    #  * `AWS::EC2::HostManagement`
    #
    # * `AWS::EC2::CapacityReservationPool`
    #
    #  Other resource group type and resource types aren't currently
    # supported by this operation.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:GroupResources`
    #
    # ^
    #
    # @option params [required, String] :group
    #   The name or the ARN of the resource group to add resources to.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The list of ARNs of the resources to be added to the group.
    #
    # @return [Types::GroupResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GroupResourcesOutput#succeeded #succeeded} => Array&lt;String&gt;
    #   * {Types::GroupResourcesOutput#failed #failed} => Array&lt;Types::FailedResource&gt;
    #   * {Types::GroupResourcesOutput#pending #pending} => Array&lt;Types::PendingResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.group_resources({
    #     group: "GroupString", # required
    #     resource_arns: ["ResourceArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.succeeded #=> Array
    #   resp.succeeded[0] #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].resource_arn #=> String
    #   resp.failed[0].error_message #=> String
    #   resp.failed[0].error_code #=> String
    #   resp.pending #=> Array
    #   resp.pending[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupResources AWS API Documentation
    #
    # @overload group_resources(params = {})
    # @param [Hash] params ({})
    def group_resources(params = {}, options = {})
      req = build_request(:group_resources, params)
      req.send_request(options)
    end

    # Returns a list of ARNs of the resources that are members of a
    # specified resource group.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:ListGroupResources`
    #
    # * `cloudformation:DescribeStacks`
    #
    # * `cloudformation:ListStackResources`
    #
    # * `tag:GetResources`
    #
    # @option params [String] :group_name
    #   <i> <b>Deprecated - don't use this parameter. Use the
    #   <code>Group</code> request field instead.</b> </i>
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group
    #
    # @option params [Array<Types::ResourceFilter>] :filters
    #   Filters, formatted as ResourceFilter objects, that you want to apply
    #   to a `ListGroupResources` operation. Filters the results to include
    #   only those of the specified resource types.
    #
    #   * `resource-type` - Filter resources by their type. Specify up to five
    #     resource types in the format `AWS::ServiceCode::ResourceType`. For
    #     example, `AWS::EC2::Instance`, or `AWS::S3::Bucket`.
    #
    #   ^
    #
    #   When you specify a `resource-type` filter for `ListGroupResources`,
    #   Resource Groups validates your filter resource types against the types
    #   that are defined in the query associated with the group. For example,
    #   if a group contains only S3 buckets because its query specifies only
    #   that resource type, but your `resource-type` filter includes EC2
    #   instances, AWS Resource Groups does not filter for EC2 instances. In
    #   this case, a `ListGroupResources` request returns a
    #   `BadRequestException` error with a message similar to the following:
    #
    #   `The resource types specified as filters in the request are not
    #   valid.`
    #
    #   The error includes a list of resource types that failed the validation
    #   because they are not part of the query associated with the group. This
    #   validation doesn't occur when the group query specifies
    #   `AWS::AllSupported`, because a group based on such a query can contain
    #   any of the allowed resource types for the query type (tag-based or
    #   Amazon CloudFront stack-based queries).
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that the service might return fewer results
    #   than the maximum even when there are more results available. You
    #   should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value provided by a previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @return [Types::ListGroupResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupResourcesOutput#resources #resources} => Array&lt;Types::ListGroupResourcesItem&gt;
    #   * {Types::ListGroupResourcesOutput#resource_identifiers #resource_identifiers} => Array&lt;Types::ResourceIdentifier&gt;
    #   * {Types::ListGroupResourcesOutput#next_token #next_token} => String
    #   * {Types::ListGroupResourcesOutput#query_errors #query_errors} => Array&lt;Types::QueryError&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_resources({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #     filters: [
    #       {
    #         name: "resource-type", # required, accepts resource-type
    #         values: ["ResourceFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].identifier.resource_arn #=> String
    #   resp.resources[0].identifier.resource_type #=> String
    #   resp.resources[0].status.name #=> String, one of "PENDING"
    #   resp.resource_identifiers #=> Array
    #   resp.resource_identifiers[0].resource_arn #=> String
    #   resp.resource_identifiers[0].resource_type #=> String
    #   resp.next_token #=> String
    #   resp.query_errors #=> Array
    #   resp.query_errors[0].error_code #=> String, one of "CLOUDFORMATION_STACK_INACTIVE", "CLOUDFORMATION_STACK_NOT_EXISTING", "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE", "RESOURCE_TYPE_NOT_SUPPORTED"
    #   resp.query_errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupResources AWS API Documentation
    #
    # @overload list_group_resources(params = {})
    # @param [Hash] params ({})
    def list_group_resources(params = {}, options = {})
      req = build_request(:list_group_resources, params)
      req.send_request(options)
    end

    # Returns a list of existing Resource Groups in your account.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:ListGroups`
    #
    # ^
    #
    # @option params [Array<Types::GroupFilter>] :filters
    #   Filters, formatted as GroupFilter objects, that you want to apply to a
    #   `ListGroups` operation.
    #
    #   * `resource-type` - Filter the results to include only those resource
    #     groups that have the specified resource type in their
    #     `ResourceTypeFilter`. For example, `AWS::EC2::Instance` would return
    #     any resource group with a `ResourceTypeFilter` that includes
    #     `AWS::EC2::Instance`.
    #
    #   * `configuration-type` - Filter the results to include only those
    #     groups that have the specified configuration types attached. The
    #     current supported values are:
    #
    #     * `AWS::AppRegistry::Application`
    #
    #     * `AWS::AppRegistry::ApplicationResourceGroups`
    #
    #     * `AWS::CloudFormation::Stack`
    #
    #     * `AWS::EC2::CapacityReservationPool`
    #
    #     * `AWS::EC2::HostManagement`
    #
    #     * `AWS::NetworkFirewall::RuleGroup`
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that the service might return fewer results
    #   than the maximum even when there are more results available. You
    #   should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value provided by a previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @return [Types::ListGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsOutput#group_identifiers #group_identifiers} => Array&lt;Types::GroupIdentifier&gt;
    #   * {Types::ListGroupsOutput#groups #groups} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     filters: [
    #       {
    #         name: "resource-type", # required, accepts resource-type, configuration-type
    #         values: ["GroupFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_identifiers #=> Array
    #   resp.group_identifiers[0].group_name #=> String
    #   resp.group_identifiers[0].group_arn #=> String
    #   resp.groups #=> Array
    #   resp.groups[0].group_arn #=> String
    #   resp.groups[0].name #=> String
    #   resp.groups[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Attaches a service configuration to the specified group. This occurs
    # asynchronously, and can take time to complete. You can use
    # GetGroupConfiguration to check the status of the update.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:PutGroupConfiguration`
    #
    # ^
    #
    # @option params [String] :group
    #   The name or ARN of the resource group with the configuration that you
    #   want to update.
    #
    # @option params [Array<Types::GroupConfigurationItem>] :configuration
    #   The new configuration to associate with the specified group. A
    #   configuration associates the resource group with an Amazon Web
    #   Services service and specifies how the service can interact with the
    #   resources in the group. A configuration is an array of
    #   GroupConfigurationItem elements.
    #
    #   For information about the syntax of a service configuration, see
    #   [Service configurations for Resource Groups][1].
    #
    #   <note markdown="1"> A resource group can contain either a `Configuration` or a
    #   `ResourceQuery`, but not both.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_group_configuration({
    #     group: "GroupString",
    #     configuration: [
    #       {
    #         type: "GroupConfigurationType", # required
    #         parameters: [
    #           {
    #             name: "GroupConfigurationParameterName", # required
    #             values: ["GroupConfigurationParameterValue"],
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/PutGroupConfiguration AWS API Documentation
    #
    # @overload put_group_configuration(params = {})
    # @param [Hash] params ({})
    def put_group_configuration(params = {}, options = {})
      req = build_request(:put_group_configuration, params)
      req.send_request(options)
    end

    # Returns a list of Amazon Web Services resource identifiers that
    # matches the specified query. The query uses the same format as a
    # resource query in a CreateGroup or UpdateGroupQuery operation.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:SearchResources`
    #
    # * `cloudformation:DescribeStacks`
    #
    # * `cloudformation:ListStackResources`
    #
    # * `tag:GetResources`
    #
    # @option params [required, Types::ResourceQuery] :resource_query
    #   The search query, using the same formats that are supported for
    #   resource group definition. For more information, see CreateGroup.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that the service might return fewer results
    #   than the maximum even when there are more results available. You
    #   should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value provided by a previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @return [Types::SearchResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchResourcesOutput#resource_identifiers #resource_identifiers} => Array&lt;Types::ResourceIdentifier&gt;
    #   * {Types::SearchResourcesOutput#next_token #next_token} => String
    #   * {Types::SearchResourcesOutput#query_errors #query_errors} => Array&lt;Types::QueryError&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_resources({
    #     resource_query: { # required
    #       type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #       query: "Query", # required
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_identifiers #=> Array
    #   resp.resource_identifiers[0].resource_arn #=> String
    #   resp.resource_identifiers[0].resource_type #=> String
    #   resp.next_token #=> String
    #   resp.query_errors #=> Array
    #   resp.query_errors[0].error_code #=> String, one of "CLOUDFORMATION_STACK_INACTIVE", "CLOUDFORMATION_STACK_NOT_EXISTING", "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE", "RESOURCE_TYPE_NOT_SUPPORTED"
    #   resp.query_errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/SearchResources AWS API Documentation
    #
    # @overload search_resources(params = {})
    # @param [Hash] params ({})
    def search_resources(params = {}, options = {})
      req = build_request(:search_resources, params)
      req.send_request(options)
    end

    # Adds tags to a resource group with the specified ARN. Existing tags on
    # a resource group are not changed if they are not specified in the
    # request parameters.
    #
    # Do not store personally identifiable information (PII) or other
    # confidential or sensitive information in tags. We use tags to provide
    # you with billing and administration services. Tags are not intended to
    # be used for private or sensitive data.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:Tag`
    #
    # ^
    #
    # @option params [required, String] :arn
    #   The ARN of the resource group to which to add tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the specified resource group. A tag is a
    #   string-to-string map of key-value pairs.
    #
    # @return [Types::TagOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagOutput#arn #arn} => String
    #   * {Types::TagOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag({
    #     arn: "GroupArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/Tag AWS API Documentation
    #
    # @overload tag(params = {})
    # @param [Hash] params ({})
    def tag(params = {}, options = {})
      req = build_request(:tag, params)
      req.send_request(options)
    end

    # Removes the specified resources from the specified group. This
    # operation works only with static groups that you populated using the
    # GroupResources operation. It doesn't work with any resource groups
    # that are automatically populated by tag-based or CloudFormation
    # stack-based queries.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:UngroupResources`
    #
    # ^
    #
    # @option params [required, String] :group
    #   The name or the ARN of the resource group from which to remove the
    #   resources.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The ARNs of the resources to be removed from the group.
    #
    # @return [Types::UngroupResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UngroupResourcesOutput#succeeded #succeeded} => Array&lt;String&gt;
    #   * {Types::UngroupResourcesOutput#failed #failed} => Array&lt;Types::FailedResource&gt;
    #   * {Types::UngroupResourcesOutput#pending #pending} => Array&lt;Types::PendingResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.ungroup_resources({
    #     group: "GroupString", # required
    #     resource_arns: ["ResourceArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.succeeded #=> Array
    #   resp.succeeded[0] #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].resource_arn #=> String
    #   resp.failed[0].error_message #=> String
    #   resp.failed[0].error_code #=> String
    #   resp.pending #=> Array
    #   resp.pending[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UngroupResources AWS API Documentation
    #
    # @overload ungroup_resources(params = {})
    # @param [Hash] params ({})
    def ungroup_resources(params = {}, options = {})
      req = build_request(:ungroup_resources, params)
      req.send_request(options)
    end

    # Deletes tags from a specified resource group.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:Untag`
    #
    # ^
    #
    # @option params [required, String] :arn
    #   The ARN of the resource group from which to remove tags. The command
    #   removed both the specified keys and any values associated with those
    #   keys.
    #
    # @option params [required, Array<String>] :keys
    #   The keys of the tags to be removed.
    #
    # @return [Types::UntagOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagOutput#arn #arn} => String
    #   * {Types::UntagOutput#keys #keys} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag({
    #     arn: "GroupArn", # required
    #     keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.keys #=> Array
    #   resp.keys[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/Untag AWS API Documentation
    #
    # @overload untag(params = {})
    # @param [Hash] params ({})
    def untag(params = {}, options = {})
      req = build_request(:untag, params)
      req.send_request(options)
    end

    # Turns on or turns off optional features in Resource Groups.
    #
    # The preceding example shows that the request to turn on group
    # lifecycle events is `IN_PROGRESS`. You can call the GetAccountSettings
    # operation to check for completion by looking for
    # `GroupLifecycleEventsStatus` to change to `ACTIVE`.
    #
    # @option params [String] :group_lifecycle_events_desired_status
    #   Specifies whether you want to turn [group lifecycle events][1] on or
    #   off.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/userguide/monitor-groups.html
    #
    # @return [Types::UpdateAccountSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountSettingsOutput#account_settings #account_settings} => Types::AccountSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     group_lifecycle_events_desired_status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings.group_lifecycle_events_desired_status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.account_settings.group_lifecycle_events_status #=> String, one of "ACTIVE", "INACTIVE", "IN_PROGRESS", "ERROR"
    #   resp.account_settings.group_lifecycle_events_status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateAccountSettings AWS API Documentation
    #
    # @overload update_account_settings(params = {})
    # @param [Hash] params ({})
    def update_account_settings(params = {}, options = {})
      req = build_request(:update_account_settings, params)
      req.send_request(options)
    end

    # Updates the description for an existing group. You cannot update the
    # name of a resource group.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:UpdateGroup`
    #
    # ^
    #
    # @option params [String] :group_name
    #   Don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to modify.
    #
    # @option params [String] :description
    #   The new description that you want to update the resource group with.
    #   Descriptions can contain letters, numbers, hyphens, underscores,
    #   periods, and spaces.
    #
    # @return [Types::UpdateGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupOutput#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates the resource query of a group. For more information about
    # resource queries, see [Create a tag-based group in Resource
    # Groups][1].
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * `resource-groups:UpdateGroupQuery`
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag
    #
    # @option params [String] :group_name
    #   Don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to query.
    #
    # @option params [required, Types::ResourceQuery] :resource_query
    #   The resource query to determine which Amazon Web Services resources
    #   are members of this resource group.
    #
    #   <note markdown="1"> A resource group can contain either a `Configuration` or a
    #   `ResourceQuery`, but not both.
    #
    #    </note>
    #
    # @return [Types::UpdateGroupQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupQueryOutput#group_query #group_query} => Types::GroupQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group_query({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #     resource_query: { # required
    #       type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #       query: "Query", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.group_query.group_name #=> String
    #   resp.group_query.resource_query.type #=> String, one of "TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"
    #   resp.group_query.resource_query.query #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupQuery AWS API Documentation
    #
    # @overload update_group_query(params = {})
    # @param [Hash] params ({})
    def update_group_query(params = {}, options = {})
      req = build_request(:update_group_query, params)
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
      context[:gem_name] = 'aws-sdk-resourcegroups'
      context[:gem_version] = '1.66.0'
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
