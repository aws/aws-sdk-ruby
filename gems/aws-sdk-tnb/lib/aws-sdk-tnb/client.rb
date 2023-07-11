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

Aws::Plugins::GlobalConfiguration.add_identifier(:tnb)

module Aws::Tnb
  # An API client for Tnb.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Tnb::Client.new(
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

    @identifier = :tnb

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
    add_plugin(Aws::Tnb::Plugins::Endpoints)

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
    #   @option options [Aws::Tnb::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Tnb::EndpointParameters`
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

    # Cancels a network operation.
    #
    # A network operation is any operation that is done to your network,
    # such as network instance instantiation or termination.
    #
    # @option params [required, String] :ns_lcm_op_occ_id
    #   The identifier of the network operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_sol_network_operation({
    #     ns_lcm_op_occ_id: "NsLcmOpOccId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CancelSolNetworkOperation AWS API Documentation
    #
    # @overload cancel_sol_network_operation(params = {})
    # @param [Hash] params ({})
    def cancel_sol_network_operation(params = {}, options = {})
      req = build_request(:cancel_sol_network_operation, params)
      req.send_request(options)
    end

    # Creates a function package.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network. For more information, see [Function packages][1]
    # in the *Amazon Web Services Telco Network Builder User Guide*.
    #
    # Creating a function package is the first step for creating a network
    # in AWS TNB. This request creates an empty container with an ID. The
    # next step is to upload the actual CSAR zip file into that empty
    # container. To upload function package content, see
    # [PutSolFunctionPackageContent][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tnb/latest/ug/function-packages.html
    # [2]: https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html
    #
    # @option params [Hash<String,String>] :tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags to
    #   search and filter your resources or track your Amazon Web Services
    #   costs.
    #
    # @return [Types::CreateSolFunctionPackageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSolFunctionPackageOutput#arn #arn} => String
    #   * {Types::CreateSolFunctionPackageOutput#id #id} => String
    #   * {Types::CreateSolFunctionPackageOutput#onboarding_state #onboarding_state} => String
    #   * {Types::CreateSolFunctionPackageOutput#operational_state #operational_state} => String
    #   * {Types::CreateSolFunctionPackageOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateSolFunctionPackageOutput#usage_state #usage_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sol_function_package({
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.onboarding_state #=> String, one of "CREATED", "ONBOARDED", "ERROR"
    #   resp.operational_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.usage_state #=> String, one of "IN_USE", "NOT_IN_USE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CreateSolFunctionPackage AWS API Documentation
    #
    # @overload create_sol_function_package(params = {})
    # @param [Hash] params ({})
    def create_sol_function_package(params = {}, options = {})
      req = build_request(:create_sol_function_package, params)
      req.send_request(options)
    end

    # Creates a network instance.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed. Creating a network
    # instance is the third step after creating a network package. For more
    # information about network instances, [Network instances][1] in the
    # *Amazon Web Services Telco Network Builder User Guide*.
    #
    # Once you create a network instance, you can instantiate it. To
    # instantiate a network, see [InstantiateSolNetworkInstance][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html
    # [2]: https://docs.aws.amazon.com/tnb/latest/APIReference/API_InstantiateSolNetworkInstance.html
    #
    # @option params [String] :ns_description
    #   Network instance description.
    #
    # @option params [required, String] :ns_name
    #   Network instance name.
    #
    # @option params [required, String] :nsd_info_id
    #   ID for network service descriptor.
    #
    # @option params [Hash<String,String>] :tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags to
    #   search and filter your resources or track your Amazon Web Services
    #   costs.
    #
    # @return [Types::CreateSolNetworkInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSolNetworkInstanceOutput#arn #arn} => String
    #   * {Types::CreateSolNetworkInstanceOutput#id #id} => String
    #   * {Types::CreateSolNetworkInstanceOutput#ns_instance_name #ns_instance_name} => String
    #   * {Types::CreateSolNetworkInstanceOutput#nsd_info_id #nsd_info_id} => String
    #   * {Types::CreateSolNetworkInstanceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sol_network_instance({
    #     ns_description: "CreateSolNetworkInstanceInputNsDescriptionString",
    #     ns_name: "CreateSolNetworkInstanceInputNsNameString", # required
    #     nsd_info_id: "NsdInfoId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.ns_instance_name #=> String
    #   resp.nsd_info_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CreateSolNetworkInstance AWS API Documentation
    #
    # @overload create_sol_network_instance(params = {})
    # @param [Hash] params ({})
    def create_sol_network_instance(params = {}, options = {})
      req = build_request(:create_sol_network_instance, params)
      req.send_request(options)
    end

    # Creates a network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on. For more
    # information, see [Network instances][1] in the *Amazon Web Services
    # Telco Network Builder User Guide*.
    #
    # A network package consists of a network service descriptor (NSD) file
    # (required) and any additional files (optional), such as scripts
    # specific to your needs. For example, if you have multiple function
    # packages in your network package, you can use the NSD to define which
    # network functions should run in certain VPCs, subnets, or EKS
    # clusters.
    #
    # This request creates an empty network package container with an ID.
    # Once you create a network package, you can upload the network package
    # content using [PutSolNetworkPackageContent][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html
    # [2]: https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html
    #
    # @option params [Hash<String,String>] :tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags to
    #   search and filter your resources or track your Amazon Web Services
    #   costs.
    #
    # @return [Types::CreateSolNetworkPackageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSolNetworkPackageOutput#arn #arn} => String
    #   * {Types::CreateSolNetworkPackageOutput#id #id} => String
    #   * {Types::CreateSolNetworkPackageOutput#nsd_onboarding_state #nsd_onboarding_state} => String
    #   * {Types::CreateSolNetworkPackageOutput#nsd_operational_state #nsd_operational_state} => String
    #   * {Types::CreateSolNetworkPackageOutput#nsd_usage_state #nsd_usage_state} => String
    #   * {Types::CreateSolNetworkPackageOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sol_network_package({
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.nsd_onboarding_state #=> String, one of "CREATED", "ONBOARDED", "ERROR"
    #   resp.nsd_operational_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.nsd_usage_state #=> String, one of "IN_USE", "NOT_IN_USE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CreateSolNetworkPackage AWS API Documentation
    #
    # @overload create_sol_network_package(params = {})
    # @param [Hash] params ({})
    def create_sol_network_package(params = {}, options = {})
      req = build_request(:create_sol_network_package, params)
      req.send_request(options)
    end

    # Deletes a function package.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # To delete a function package, the package must be in a disabled state.
    # To disable a function package, see [UpdateSolFunctionPackage][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolFunctionPackage.html
    #
    # @option params [required, String] :vnf_pkg_id
    #   ID of the function package.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sol_function_package({
    #     vnf_pkg_id: "VnfPkgId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/DeleteSolFunctionPackage AWS API Documentation
    #
    # @overload delete_sol_function_package(params = {})
    # @param [Hash] params ({})
    def delete_sol_function_package(params = {}, options = {})
      req = build_request(:delete_sol_function_package, params)
      req.send_request(options)
    end

    # Deletes a network instance.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # To delete a network instance, the instance must be in a stopped or
    # terminated state. To terminate a network instance, see
    # [TerminateSolNetworkInstance][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tnb/latest/APIReference/API_TerminateSolNetworkInstance.html
    #
    # @option params [required, String] :ns_instance_id
    #   Network instance ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sol_network_instance({
    #     ns_instance_id: "NsInstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/DeleteSolNetworkInstance AWS API Documentation
    #
    # @overload delete_sol_network_instance(params = {})
    # @param [Hash] params ({})
    def delete_sol_network_instance(params = {}, options = {})
      req = build_request(:delete_sol_network_instance, params)
      req.send_request(options)
    end

    # Deletes network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # To delete a network package, the package must be in a disable state.
    # To disable a network package, see [UpdateSolNetworkPackage][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolNetworkPackage.html
    #
    # @option params [required, String] :nsd_info_id
    #   ID of the network service descriptor in the network package.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sol_network_package({
    #     nsd_info_id: "NsdInfoId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/DeleteSolNetworkPackage AWS API Documentation
    #
    # @overload delete_sol_network_package(params = {})
    # @param [Hash] params ({})
    def delete_sol_network_package(params = {}, options = {})
      req = build_request(:delete_sol_network_package, params)
      req.send_request(options)
    end

    # Gets the details of a network function instance, including the
    # instantation state and metadata from the function package descriptor
    # in the network function package.
    #
    # A network function instance is a function in a function package .
    #
    # @option params [required, String] :vnf_instance_id
    #   ID of the network function.
    #
    # @return [Types::GetSolFunctionInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolFunctionInstanceOutput#arn #arn} => String
    #   * {Types::GetSolFunctionInstanceOutput#id #id} => String
    #   * {Types::GetSolFunctionInstanceOutput#instantiated_vnf_info #instantiated_vnf_info} => Types::GetSolVnfInfo
    #   * {Types::GetSolFunctionInstanceOutput#instantiation_state #instantiation_state} => String
    #   * {Types::GetSolFunctionInstanceOutput#metadata #metadata} => Types::GetSolFunctionInstanceMetadata
    #   * {Types::GetSolFunctionInstanceOutput#ns_instance_id #ns_instance_id} => String
    #   * {Types::GetSolFunctionInstanceOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetSolFunctionInstanceOutput#vnf_pkg_id #vnf_pkg_id} => String
    #   * {Types::GetSolFunctionInstanceOutput#vnf_product_name #vnf_product_name} => String
    #   * {Types::GetSolFunctionInstanceOutput#vnf_provider #vnf_provider} => String
    #   * {Types::GetSolFunctionInstanceOutput#vnfd_id #vnfd_id} => String
    #   * {Types::GetSolFunctionInstanceOutput#vnfd_version #vnfd_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sol_function_instance({
    #     vnf_instance_id: "VnfInstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.instantiated_vnf_info.vnf_state #=> String, one of "STARTED", "STOPPED"
    #   resp.instantiated_vnf_info.vnfc_resource_info #=> Array
    #   resp.instantiated_vnf_info.vnfc_resource_info[0].metadata.cluster #=> String
    #   resp.instantiated_vnf_info.vnfc_resource_info[0].metadata.helm_chart #=> String
    #   resp.instantiated_vnf_info.vnfc_resource_info[0].metadata.node_group #=> String
    #   resp.instantiation_state #=> String, one of "INSTANTIATED", "NOT_INSTANTIATED"
    #   resp.metadata.created_at #=> Time
    #   resp.metadata.last_modified #=> Time
    #   resp.ns_instance_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.vnf_pkg_id #=> String
    #   resp.vnf_product_name #=> String
    #   resp.vnf_provider #=> String
    #   resp.vnfd_id #=> String
    #   resp.vnfd_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionInstance AWS API Documentation
    #
    # @overload get_sol_function_instance(params = {})
    # @param [Hash] params ({})
    def get_sol_function_instance(params = {}, options = {})
      req = build_request(:get_sol_function_instance, params)
      req.send_request(options)
    end

    # Gets the details of an individual function package, such as the
    # operational state and whether the package is in use.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network..
    #
    # @option params [required, String] :vnf_pkg_id
    #   ID of the function package.
    #
    # @return [Types::GetSolFunctionPackageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolFunctionPackageOutput#arn #arn} => String
    #   * {Types::GetSolFunctionPackageOutput#id #id} => String
    #   * {Types::GetSolFunctionPackageOutput#metadata #metadata} => Types::GetSolFunctionPackageMetadata
    #   * {Types::GetSolFunctionPackageOutput#onboarding_state #onboarding_state} => String
    #   * {Types::GetSolFunctionPackageOutput#operational_state #operational_state} => String
    #   * {Types::GetSolFunctionPackageOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetSolFunctionPackageOutput#usage_state #usage_state} => String
    #   * {Types::GetSolFunctionPackageOutput#vnf_product_name #vnf_product_name} => String
    #   * {Types::GetSolFunctionPackageOutput#vnf_provider #vnf_provider} => String
    #   * {Types::GetSolFunctionPackageOutput#vnfd_id #vnfd_id} => String
    #   * {Types::GetSolFunctionPackageOutput#vnfd_version #vnfd_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sol_function_package({
    #     vnf_pkg_id: "VnfPkgId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.metadata.created_at #=> Time
    #   resp.metadata.last_modified #=> Time
    #   resp.metadata.vnfd.overrides #=> Array
    #   resp.metadata.vnfd.overrides[0].default_value #=> String
    #   resp.metadata.vnfd.overrides[0].name #=> String
    #   resp.onboarding_state #=> String, one of "CREATED", "ONBOARDED", "ERROR"
    #   resp.operational_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.usage_state #=> String, one of "IN_USE", "NOT_IN_USE"
    #   resp.vnf_product_name #=> String
    #   resp.vnf_provider #=> String
    #   resp.vnfd_id #=> String
    #   resp.vnfd_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackage AWS API Documentation
    #
    # @overload get_sol_function_package(params = {})
    # @param [Hash] params ({})
    def get_sol_function_package(params = {}, options = {})
      req = build_request(:get_sol_function_package, params)
      req.send_request(options)
    end

    # Gets the contents of a function package.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @option params [required, String] :accept
    #   The format of the package that you want to download from the function
    #   packages.
    #
    # @option params [required, String] :vnf_pkg_id
    #   ID of the function package.
    #
    # @return [Types::GetSolFunctionPackageContentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolFunctionPackageContentOutput#content_type #content_type} => String
    #   * {Types::GetSolFunctionPackageContentOutput#package_content #package_content} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sol_function_package_content({
    #     accept: "application/zip", # required, accepts application/zip
    #     vnf_pkg_id: "VnfPkgId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String, one of "application/zip"
    #   resp.package_content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackageContent AWS API Documentation
    #
    # @overload get_sol_function_package_content(params = {})
    # @param [Hash] params ({})
    def get_sol_function_package_content(params = {}, options = {})
      req = build_request(:get_sol_function_package_content, params)
      req.send_request(options)
    end

    # Gets a function package descriptor in a function package.
    #
    # A function package descriptor is a .yaml file in a function package
    # that uses the TOSCA standard to describe how the network function in
    # the function package should run on your network.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @option params [required, String] :accept
    #   Indicates which content types, expressed as MIME types, the client is
    #   able to understand.
    #
    # @option params [required, String] :vnf_pkg_id
    #   ID of the function package.
    #
    # @return [Types::GetSolFunctionPackageDescriptorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolFunctionPackageDescriptorOutput#content_type #content_type} => String
    #   * {Types::GetSolFunctionPackageDescriptorOutput#vnfd #vnfd} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sol_function_package_descriptor({
    #     accept: "text/plain", # required, accepts text/plain
    #     vnf_pkg_id: "VnfPkgId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String, one of "text/plain"
    #   resp.vnfd #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackageDescriptor AWS API Documentation
    #
    # @overload get_sol_function_package_descriptor(params = {})
    # @param [Hash] params ({})
    def get_sol_function_package_descriptor(params = {}, options = {})
      req = build_request(:get_sol_function_package_descriptor, params)
      req.send_request(options)
    end

    # Gets the details of the network instance.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # @option params [required, String] :ns_instance_id
    #   ID of the network instance.
    #
    # @return [Types::GetSolNetworkInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolNetworkInstanceOutput#arn #arn} => String
    #   * {Types::GetSolNetworkInstanceOutput#id #id} => String
    #   * {Types::GetSolNetworkInstanceOutput#lcm_op_info #lcm_op_info} => Types::LcmOperationInfo
    #   * {Types::GetSolNetworkInstanceOutput#metadata #metadata} => Types::GetSolNetworkInstanceMetadata
    #   * {Types::GetSolNetworkInstanceOutput#ns_instance_description #ns_instance_description} => String
    #   * {Types::GetSolNetworkInstanceOutput#ns_instance_name #ns_instance_name} => String
    #   * {Types::GetSolNetworkInstanceOutput#ns_state #ns_state} => String
    #   * {Types::GetSolNetworkInstanceOutput#nsd_id #nsd_id} => String
    #   * {Types::GetSolNetworkInstanceOutput#nsd_info_id #nsd_info_id} => String
    #   * {Types::GetSolNetworkInstanceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sol_network_instance({
    #     ns_instance_id: "NsInstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.lcm_op_info.ns_lcm_op_occ_id #=> String
    #   resp.metadata.created_at #=> Time
    #   resp.metadata.last_modified #=> Time
    #   resp.ns_instance_description #=> String
    #   resp.ns_instance_name #=> String
    #   resp.ns_state #=> String, one of "INSTANTIATED", "NOT_INSTANTIATED", "IMPAIRED", "STOPPED", "DELETED", "INSTANTIATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "TERMINATE_IN_PROGRESS"
    #   resp.nsd_id #=> String
    #   resp.nsd_info_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkInstance AWS API Documentation
    #
    # @overload get_sol_network_instance(params = {})
    # @param [Hash] params ({})
    def get_sol_network_instance(params = {}, options = {})
      req = build_request(:get_sol_network_instance, params)
      req.send_request(options)
    end

    # Gets the details of a network operation, including the tasks involved
    # in the network operation and the status of the tasks.
    #
    # A network operation is any operation that is done to your network,
    # such as network instance instantiation or termination.
    #
    # @option params [required, String] :ns_lcm_op_occ_id
    #   The identifier of the network operation.
    #
    # @return [Types::GetSolNetworkOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolNetworkOperationOutput#arn #arn} => String
    #   * {Types::GetSolNetworkOperationOutput#error #error} => Types::ProblemDetails
    #   * {Types::GetSolNetworkOperationOutput#id #id} => String
    #   * {Types::GetSolNetworkOperationOutput#lcm_operation_type #lcm_operation_type} => String
    #   * {Types::GetSolNetworkOperationOutput#metadata #metadata} => Types::GetSolNetworkOperationMetadata
    #   * {Types::GetSolNetworkOperationOutput#ns_instance_id #ns_instance_id} => String
    #   * {Types::GetSolNetworkOperationOutput#operation_state #operation_state} => String
    #   * {Types::GetSolNetworkOperationOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetSolNetworkOperationOutput#tasks #tasks} => Array&lt;Types::GetSolNetworkOperationTaskDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sol_network_operation({
    #     ns_lcm_op_occ_id: "NsLcmOpOccId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.error.detail #=> String
    #   resp.error.title #=> String
    #   resp.id #=> String
    #   resp.lcm_operation_type #=> String, one of "INSTANTIATE", "UPDATE", "TERMINATE"
    #   resp.metadata.created_at #=> Time
    #   resp.metadata.last_modified #=> Time
    #   resp.ns_instance_id #=> String
    #   resp.operation_state #=> String, one of "PROCESSING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_context #=> Hash
    #   resp.tasks[0].task_context["String"] #=> String
    #   resp.tasks[0].task_end_time #=> Time
    #   resp.tasks[0].task_error_details.cause #=> String
    #   resp.tasks[0].task_error_details.details #=> String
    #   resp.tasks[0].task_name #=> String
    #   resp.tasks[0].task_start_time #=> Time
    #   resp.tasks[0].task_status #=> String, one of "SCHEDULED", "STARTED", "IN_PROGRESS", "COMPLETED", "ERROR", "SKIPPED", "CANCELLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkOperation AWS API Documentation
    #
    # @overload get_sol_network_operation(params = {})
    # @param [Hash] params ({})
    def get_sol_network_operation(params = {}, options = {})
      req = build_request(:get_sol_network_operation, params)
      req.send_request(options)
    end

    # Gets the details of a network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # @option params [required, String] :nsd_info_id
    #   ID of the network service descriptor in the network package.
    #
    # @return [Types::GetSolNetworkPackageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolNetworkPackageOutput#arn #arn} => String
    #   * {Types::GetSolNetworkPackageOutput#id #id} => String
    #   * {Types::GetSolNetworkPackageOutput#metadata #metadata} => Types::GetSolNetworkPackageMetadata
    #   * {Types::GetSolNetworkPackageOutput#nsd_id #nsd_id} => String
    #   * {Types::GetSolNetworkPackageOutput#nsd_name #nsd_name} => String
    #   * {Types::GetSolNetworkPackageOutput#nsd_onboarding_state #nsd_onboarding_state} => String
    #   * {Types::GetSolNetworkPackageOutput#nsd_operational_state #nsd_operational_state} => String
    #   * {Types::GetSolNetworkPackageOutput#nsd_usage_state #nsd_usage_state} => String
    #   * {Types::GetSolNetworkPackageOutput#nsd_version #nsd_version} => String
    #   * {Types::GetSolNetworkPackageOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetSolNetworkPackageOutput#vnf_pkg_ids #vnf_pkg_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sol_network_package({
    #     nsd_info_id: "NsdInfoId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.metadata.created_at #=> Time
    #   resp.metadata.last_modified #=> Time
    #   resp.metadata.nsd.overrides #=> Array
    #   resp.metadata.nsd.overrides[0].default_value #=> String
    #   resp.metadata.nsd.overrides[0].name #=> String
    #   resp.nsd_id #=> String
    #   resp.nsd_name #=> String
    #   resp.nsd_onboarding_state #=> String, one of "CREATED", "ONBOARDED", "ERROR"
    #   resp.nsd_operational_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.nsd_usage_state #=> String, one of "IN_USE", "NOT_IN_USE"
    #   resp.nsd_version #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.vnf_pkg_ids #=> Array
    #   resp.vnf_pkg_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackage AWS API Documentation
    #
    # @overload get_sol_network_package(params = {})
    # @param [Hash] params ({})
    def get_sol_network_package(params = {}, options = {})
      req = build_request(:get_sol_network_package, params)
      req.send_request(options)
    end

    # Gets the contents of a network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # @option params [required, String] :accept
    #   The format of the package you want to download from the network
    #   package.
    #
    # @option params [required, String] :nsd_info_id
    #   ID of the network service descriptor in the network package.
    #
    # @return [Types::GetSolNetworkPackageContentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolNetworkPackageContentOutput#content_type #content_type} => String
    #   * {Types::GetSolNetworkPackageContentOutput#nsd_content #nsd_content} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sol_network_package_content({
    #     accept: "application/zip", # required, accepts application/zip
    #     nsd_info_id: "NsdInfoId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String, one of "application/zip"
    #   resp.nsd_content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackageContent AWS API Documentation
    #
    # @overload get_sol_network_package_content(params = {})
    # @param [Hash] params ({})
    def get_sol_network_package_content(params = {}, options = {})
      req = build_request(:get_sol_network_package_content, params)
      req.send_request(options)
    end

    # Gets the content of the network service descriptor.
    #
    # A network service descriptor is a .yaml file in a network package that
    # uses the TOSCA standard to describe the network functions you want to
    # deploy and the Amazon Web Services infrastructure you want to deploy
    # the network functions on.
    #
    # @option params [required, String] :nsd_info_id
    #   ID of the network service descriptor in the network package.
    #
    # @return [Types::GetSolNetworkPackageDescriptorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolNetworkPackageDescriptorOutput#content_type #content_type} => String
    #   * {Types::GetSolNetworkPackageDescriptorOutput#nsd #nsd} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sol_network_package_descriptor({
    #     nsd_info_id: "NsdInfoId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String, one of "text/plain"
    #   resp.nsd #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackageDescriptor AWS API Documentation
    #
    # @overload get_sol_network_package_descriptor(params = {})
    # @param [Hash] params ({})
    def get_sol_network_package_descriptor(params = {}, options = {})
      req = build_request(:get_sol_network_package_descriptor, params)
      req.send_request(options)
    end

    # Instantiates a network instance.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # Before you can instantiate a network instance, you have to create a
    # network instance. For more information, see
    # [CreateSolNetworkInstance][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tnb/latest/APIReference/API_CreateSolNetworkInstance.html
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :additional_params_for_ns
    #   Provides values for the configurable properties.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Boolean] :dry_run
    #   A check for whether you have the required permissions for the action
    #   without actually making the request and provides an error response. If
    #   you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :ns_instance_id
    #   ID of the network instance.
    #
    # @option params [Hash<String,String>] :tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. When you use this
    #   API, the tags are transferred to the network operation that is
    #   created. Use tags to search and filter your resources or track your
    #   Amazon Web Services costs.
    #
    # @return [Types::InstantiateSolNetworkInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InstantiateSolNetworkInstanceOutput#ns_lcm_op_occ_id #ns_lcm_op_occ_id} => String
    #   * {Types::InstantiateSolNetworkInstanceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.instantiate_sol_network_instance({
    #     additional_params_for_ns: {
    #     },
    #     dry_run: false,
    #     ns_instance_id: "NsInstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ns_lcm_op_occ_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/InstantiateSolNetworkInstance AWS API Documentation
    #
    # @overload instantiate_sol_network_instance(params = {})
    # @param [Hash] params ({})
    def instantiate_sol_network_instance(params = {}, options = {})
      req = build_request(:instantiate_sol_network_instance, params)
      req.send_request(options)
    end

    # Lists network function instances.
    #
    # A network function instance is a function in a function package .
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListSolFunctionInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolFunctionInstancesOutput#function_instances #function_instances} => Array&lt;Types::ListSolFunctionInstanceInfo&gt;
    #   * {Types::ListSolFunctionInstancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sol_function_instances({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_instances #=> Array
    #   resp.function_instances[0].arn #=> String
    #   resp.function_instances[0].id #=> String
    #   resp.function_instances[0].instantiated_vnf_info.vnf_state #=> String, one of "STARTED", "STOPPED"
    #   resp.function_instances[0].instantiation_state #=> String, one of "INSTANTIATED", "NOT_INSTANTIATED"
    #   resp.function_instances[0].metadata.created_at #=> Time
    #   resp.function_instances[0].metadata.last_modified #=> Time
    #   resp.function_instances[0].ns_instance_id #=> String
    #   resp.function_instances[0].vnf_pkg_id #=> String
    #   resp.function_instances[0].vnf_pkg_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionInstances AWS API Documentation
    #
    # @overload list_sol_function_instances(params = {})
    # @param [Hash] params ({})
    def list_sol_function_instances(params = {}, options = {})
      req = build_request(:list_sol_function_instances, params)
      req.send_request(options)
    end

    # Lists information about function packages.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListSolFunctionPackagesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolFunctionPackagesOutput#function_packages #function_packages} => Array&lt;Types::ListSolFunctionPackageInfo&gt;
    #   * {Types::ListSolFunctionPackagesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sol_function_packages({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_packages #=> Array
    #   resp.function_packages[0].arn #=> String
    #   resp.function_packages[0].id #=> String
    #   resp.function_packages[0].metadata.created_at #=> Time
    #   resp.function_packages[0].metadata.last_modified #=> Time
    #   resp.function_packages[0].onboarding_state #=> String, one of "CREATED", "ONBOARDED", "ERROR"
    #   resp.function_packages[0].operational_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.function_packages[0].usage_state #=> String, one of "IN_USE", "NOT_IN_USE"
    #   resp.function_packages[0].vnf_product_name #=> String
    #   resp.function_packages[0].vnf_provider #=> String
    #   resp.function_packages[0].vnfd_id #=> String
    #   resp.function_packages[0].vnfd_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionPackages AWS API Documentation
    #
    # @overload list_sol_function_packages(params = {})
    # @param [Hash] params ({})
    def list_sol_function_packages(params = {}, options = {})
      req = build_request(:list_sol_function_packages, params)
      req.send_request(options)
    end

    # Lists your network instances.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListSolNetworkInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolNetworkInstancesOutput#network_instances #network_instances} => Array&lt;Types::ListSolNetworkInstanceInfo&gt;
    #   * {Types::ListSolNetworkInstancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sol_network_instances({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_instances #=> Array
    #   resp.network_instances[0].arn #=> String
    #   resp.network_instances[0].id #=> String
    #   resp.network_instances[0].metadata.created_at #=> Time
    #   resp.network_instances[0].metadata.last_modified #=> Time
    #   resp.network_instances[0].ns_instance_description #=> String
    #   resp.network_instances[0].ns_instance_name #=> String
    #   resp.network_instances[0].ns_state #=> String, one of "INSTANTIATED", "NOT_INSTANTIATED", "IMPAIRED", "STOPPED", "DELETED", "INSTANTIATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "TERMINATE_IN_PROGRESS"
    #   resp.network_instances[0].nsd_id #=> String
    #   resp.network_instances[0].nsd_info_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkInstances AWS API Documentation
    #
    # @overload list_sol_network_instances(params = {})
    # @param [Hash] params ({})
    def list_sol_network_instances(params = {}, options = {})
      req = build_request(:list_sol_network_instances, params)
      req.send_request(options)
    end

    # Lists details for a network operation, including when the operation
    # started and the status of the operation.
    #
    # A network operation is any operation that is done to your network,
    # such as network instance instantiation or termination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListSolNetworkOperationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolNetworkOperationsOutput#network_operations #network_operations} => Array&lt;Types::ListSolNetworkOperationsInfo&gt;
    #   * {Types::ListSolNetworkOperationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sol_network_operations({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_operations #=> Array
    #   resp.network_operations[0].arn #=> String
    #   resp.network_operations[0].error.detail #=> String
    #   resp.network_operations[0].error.title #=> String
    #   resp.network_operations[0].id #=> String
    #   resp.network_operations[0].lcm_operation_type #=> String, one of "INSTANTIATE", "UPDATE", "TERMINATE"
    #   resp.network_operations[0].metadata.created_at #=> Time
    #   resp.network_operations[0].metadata.last_modified #=> Time
    #   resp.network_operations[0].ns_instance_id #=> String
    #   resp.network_operations[0].operation_state #=> String, one of "PROCESSING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkOperations AWS API Documentation
    #
    # @overload list_sol_network_operations(params = {})
    # @param [Hash] params ({})
    def list_sol_network_operations(params = {}, options = {})
      req = build_request(:list_sol_network_operations, params)
      req.send_request(options)
    end

    # Lists network packages.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListSolNetworkPackagesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolNetworkPackagesOutput#network_packages #network_packages} => Array&lt;Types::ListSolNetworkPackageInfo&gt;
    #   * {Types::ListSolNetworkPackagesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sol_network_packages({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_packages #=> Array
    #   resp.network_packages[0].arn #=> String
    #   resp.network_packages[0].id #=> String
    #   resp.network_packages[0].metadata.created_at #=> Time
    #   resp.network_packages[0].metadata.last_modified #=> Time
    #   resp.network_packages[0].nsd_designer #=> String
    #   resp.network_packages[0].nsd_id #=> String
    #   resp.network_packages[0].nsd_invariant_id #=> String
    #   resp.network_packages[0].nsd_name #=> String
    #   resp.network_packages[0].nsd_onboarding_state #=> String, one of "CREATED", "ONBOARDED", "ERROR"
    #   resp.network_packages[0].nsd_operational_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.network_packages[0].nsd_usage_state #=> String, one of "IN_USE", "NOT_IN_USE"
    #   resp.network_packages[0].nsd_version #=> String
    #   resp.network_packages[0].vnf_pkg_ids #=> Array
    #   resp.network_packages[0].vnf_pkg_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkPackages AWS API Documentation
    #
    # @overload list_sol_network_packages(params = {})
    # @param [Hash] params ({})
    def list_sol_network_packages(params = {}, options = {})
      req = build_request(:list_sol_network_packages, params)
      req.send_request(options)
    end

    # Lists tags for AWS TNB resources.
    #
    # @option params [required, String] :resource_arn
    #   Resource ARN.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TNBResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Uploads the contents of a function package.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @option params [String] :content_type
    #   Function package content type.
    #
    # @option params [required, String, StringIO, File] :file
    #   Function package file.
    #
    # @option params [required, String] :vnf_pkg_id
    #   Function package ID.
    #
    # @return [Types::PutSolFunctionPackageContentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSolFunctionPackageContentOutput#id #id} => String
    #   * {Types::PutSolFunctionPackageContentOutput#metadata #metadata} => Types::PutSolFunctionPackageContentMetadata
    #   * {Types::PutSolFunctionPackageContentOutput#vnf_product_name #vnf_product_name} => String
    #   * {Types::PutSolFunctionPackageContentOutput#vnf_provider #vnf_provider} => String
    #   * {Types::PutSolFunctionPackageContentOutput#vnfd_id #vnfd_id} => String
    #   * {Types::PutSolFunctionPackageContentOutput#vnfd_version #vnfd_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_sol_function_package_content({
    #     content_type: "application/zip", # accepts application/zip
    #     file: "data", # required
    #     vnf_pkg_id: "VnfPkgId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.metadata.vnfd.overrides #=> Array
    #   resp.metadata.vnfd.overrides[0].default_value #=> String
    #   resp.metadata.vnfd.overrides[0].name #=> String
    #   resp.vnf_product_name #=> String
    #   resp.vnf_provider #=> String
    #   resp.vnfd_id #=> String
    #   resp.vnfd_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/PutSolFunctionPackageContent AWS API Documentation
    #
    # @overload put_sol_function_package_content(params = {})
    # @param [Hash] params ({})
    def put_sol_function_package_content(params = {}, options = {})
      req = build_request(:put_sol_function_package_content, params)
      req.send_request(options)
    end

    # Uploads the contents of a network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # @option params [String] :content_type
    #   Network package content type.
    #
    # @option params [required, String, StringIO, File] :file
    #   Network package file.
    #
    # @option params [required, String] :nsd_info_id
    #   Network service descriptor info ID.
    #
    # @return [Types::PutSolNetworkPackageContentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSolNetworkPackageContentOutput#arn #arn} => String
    #   * {Types::PutSolNetworkPackageContentOutput#id #id} => String
    #   * {Types::PutSolNetworkPackageContentOutput#metadata #metadata} => Types::PutSolNetworkPackageContentMetadata
    #   * {Types::PutSolNetworkPackageContentOutput#nsd_id #nsd_id} => String
    #   * {Types::PutSolNetworkPackageContentOutput#nsd_name #nsd_name} => String
    #   * {Types::PutSolNetworkPackageContentOutput#nsd_version #nsd_version} => String
    #   * {Types::PutSolNetworkPackageContentOutput#vnf_pkg_ids #vnf_pkg_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_sol_network_package_content({
    #     content_type: "application/zip", # accepts application/zip
    #     file: "data", # required
    #     nsd_info_id: "NsdInfoId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.metadata.nsd.overrides #=> Array
    #   resp.metadata.nsd.overrides[0].default_value #=> String
    #   resp.metadata.nsd.overrides[0].name #=> String
    #   resp.nsd_id #=> String
    #   resp.nsd_name #=> String
    #   resp.nsd_version #=> String
    #   resp.vnf_pkg_ids #=> Array
    #   resp.vnf_pkg_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/PutSolNetworkPackageContent AWS API Documentation
    #
    # @overload put_sol_network_package_content(params = {})
    # @param [Hash] params ({})
    def put_sol_network_package_content(params = {}, options = {})
      req = build_request(:put_sol_network_package_content, params)
      req.send_request(options)
    end

    # Tags an AWS TNB resource.
    #
    # A tag is a label that you assign to an Amazon Web Services resource.
    # Each tag consists of a key and an optional value. You can use tags to
    # search and filter your resources or track your Amazon Web Services
    # costs.
    #
    # @option params [required, String] :resource_arn
    #   Resource ARN.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags to
    #   search and filter your resources or track your Amazon Web Services
    #   costs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TNBResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Terminates a network instance.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # You must terminate a network instance before you can delete it.
    #
    # @option params [required, String] :ns_instance_id
    #   ID of the network instance.
    #
    # @option params [Hash<String,String>] :tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. When you use this
    #   API, the tags are transferred to the network operation that is
    #   created. Use tags to search and filter your resources or track your
    #   Amazon Web Services costs.
    #
    # @return [Types::TerminateSolNetworkInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateSolNetworkInstanceOutput#ns_lcm_op_occ_id #ns_lcm_op_occ_id} => String
    #   * {Types::TerminateSolNetworkInstanceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_sol_network_instance({
    #     ns_instance_id: "NsInstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ns_lcm_op_occ_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/TerminateSolNetworkInstance AWS API Documentation
    #
    # @overload terminate_sol_network_instance(params = {})
    # @param [Hash] params ({})
    def terminate_sol_network_instance(params = {}, options = {})
      req = build_request(:terminate_sol_network_instance, params)
      req.send_request(options)
    end

    # Untags an AWS TNB resource.
    #
    # A tag is a label that you assign to an Amazon Web Services resource.
    # Each tag consists of a key and an optional value. You can use tags to
    # search and filter your resources or track your Amazon Web Services
    # costs.
    #
    # @option params [required, String] :resource_arn
    #   Resource ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TNBResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the operational state of function package.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @option params [required, String] :operational_state
    #   Operational state of the function package.
    #
    # @option params [required, String] :vnf_pkg_id
    #   ID of the function package.
    #
    # @return [Types::UpdateSolFunctionPackageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSolFunctionPackageOutput#operational_state #operational_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sol_function_package({
    #     operational_state: "ENABLED", # required, accepts ENABLED, DISABLED
    #     vnf_pkg_id: "VnfPkgId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operational_state #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolFunctionPackage AWS API Documentation
    #
    # @overload update_sol_function_package(params = {})
    # @param [Hash] params ({})
    def update_sol_function_package(params = {}, options = {})
      req = build_request(:update_sol_function_package, params)
      req.send_request(options)
    end

    # Update a network instance.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # @option params [Types::UpdateSolNetworkModify] :modify_vnf_info_data
    #   Identifies the network function information parameters and/or the
    #   configurable properties of the network function to be modified.
    #
    # @option params [required, String] :ns_instance_id
    #   ID of the network instance.
    #
    # @option params [Hash<String,String>] :tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. When you use this
    #   API, the tags are transferred to the network operation that is
    #   created. Use tags to search and filter your resources or track your
    #   Amazon Web Services costs.
    #
    # @option params [required, String] :update_type
    #   The type of update.
    #
    # @return [Types::UpdateSolNetworkInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSolNetworkInstanceOutput#ns_lcm_op_occ_id #ns_lcm_op_occ_id} => String
    #   * {Types::UpdateSolNetworkInstanceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sol_network_instance({
    #     modify_vnf_info_data: {
    #       vnf_configurable_properties: { # required
    #       },
    #       vnf_instance_id: "VnfInstanceId", # required
    #     },
    #     ns_instance_id: "NsInstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     update_type: "MODIFY_VNF_INFORMATION", # required, accepts MODIFY_VNF_INFORMATION
    #   })
    #
    # @example Response structure
    #
    #   resp.ns_lcm_op_occ_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolNetworkInstance AWS API Documentation
    #
    # @overload update_sol_network_instance(params = {})
    # @param [Hash] params ({})
    def update_sol_network_instance(params = {}, options = {})
      req = build_request(:update_sol_network_instance, params)
      req.send_request(options)
    end

    # Updates the operational state of a network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # A network service descriptor is a .yaml file in a network package that
    # uses the TOSCA standard to describe the network functions you want to
    # deploy and the Amazon Web Services infrastructure you want to deploy
    # the network functions on.
    #
    # @option params [required, String] :nsd_info_id
    #   ID of the network service descriptor in the network package.
    #
    # @option params [required, String] :nsd_operational_state
    #   Operational state of the network service descriptor in the network
    #   package.
    #
    # @return [Types::UpdateSolNetworkPackageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSolNetworkPackageOutput#nsd_operational_state #nsd_operational_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sol_network_package({
    #     nsd_info_id: "NsdInfoId", # required
    #     nsd_operational_state: "ENABLED", # required, accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.nsd_operational_state #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolNetworkPackage AWS API Documentation
    #
    # @overload update_sol_network_package(params = {})
    # @param [Hash] params ({})
    def update_sol_network_package(params = {}, options = {})
      req = build_request(:update_sol_network_package, params)
      req.send_request(options)
    end

    # Validates function package content. This can be used as a dry run
    # before uploading function package content with
    # [PutSolFunctionPackageContent][1].
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html
    #
    # @option params [String] :content_type
    #   Function package content type.
    #
    # @option params [required, String, StringIO, File] :file
    #   Function package file.
    #
    # @option params [required, String] :vnf_pkg_id
    #   Function package ID.
    #
    # @return [Types::ValidateSolFunctionPackageContentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateSolFunctionPackageContentOutput#id #id} => String
    #   * {Types::ValidateSolFunctionPackageContentOutput#metadata #metadata} => Types::ValidateSolFunctionPackageContentMetadata
    #   * {Types::ValidateSolFunctionPackageContentOutput#vnf_product_name #vnf_product_name} => String
    #   * {Types::ValidateSolFunctionPackageContentOutput#vnf_provider #vnf_provider} => String
    #   * {Types::ValidateSolFunctionPackageContentOutput#vnfd_id #vnfd_id} => String
    #   * {Types::ValidateSolFunctionPackageContentOutput#vnfd_version #vnfd_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_sol_function_package_content({
    #     content_type: "application/zip", # accepts application/zip
    #     file: "data", # required
    #     vnf_pkg_id: "VnfPkgId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.metadata.vnfd.overrides #=> Array
    #   resp.metadata.vnfd.overrides[0].default_value #=> String
    #   resp.metadata.vnfd.overrides[0].name #=> String
    #   resp.vnf_product_name #=> String
    #   resp.vnf_provider #=> String
    #   resp.vnfd_id #=> String
    #   resp.vnfd_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ValidateSolFunctionPackageContent AWS API Documentation
    #
    # @overload validate_sol_function_package_content(params = {})
    # @param [Hash] params ({})
    def validate_sol_function_package_content(params = {}, options = {})
      req = build_request(:validate_sol_function_package_content, params)
      req.send_request(options)
    end

    # Validates network package content. This can be used as a dry run
    # before uploading network package content with
    # [PutSolNetworkPackageContent][1].
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html
    #
    # @option params [String] :content_type
    #   Network package content type.
    #
    # @option params [required, String, StringIO, File] :file
    #   Network package file.
    #
    # @option params [required, String] :nsd_info_id
    #   Network service descriptor file.
    #
    # @return [Types::ValidateSolNetworkPackageContentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateSolNetworkPackageContentOutput#arn #arn} => String
    #   * {Types::ValidateSolNetworkPackageContentOutput#id #id} => String
    #   * {Types::ValidateSolNetworkPackageContentOutput#metadata #metadata} => Types::ValidateSolNetworkPackageContentMetadata
    #   * {Types::ValidateSolNetworkPackageContentOutput#nsd_id #nsd_id} => String
    #   * {Types::ValidateSolNetworkPackageContentOutput#nsd_name #nsd_name} => String
    #   * {Types::ValidateSolNetworkPackageContentOutput#nsd_version #nsd_version} => String
    #   * {Types::ValidateSolNetworkPackageContentOutput#vnf_pkg_ids #vnf_pkg_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_sol_network_package_content({
    #     content_type: "application/zip", # accepts application/zip
    #     file: "data", # required
    #     nsd_info_id: "NsdInfoId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.metadata.nsd.overrides #=> Array
    #   resp.metadata.nsd.overrides[0].default_value #=> String
    #   resp.metadata.nsd.overrides[0].name #=> String
    #   resp.nsd_id #=> String
    #   resp.nsd_name #=> String
    #   resp.nsd_version #=> String
    #   resp.vnf_pkg_ids #=> Array
    #   resp.vnf_pkg_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ValidateSolNetworkPackageContent AWS API Documentation
    #
    # @overload validate_sol_network_package_content(params = {})
    # @param [Hash] params ({})
    def validate_sol_network_package_content(params = {}, options = {})
      req = build_request(:validate_sol_network_package_content, params)
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
      context[:gem_name] = 'aws-sdk-tnb'
      context[:gem_version] = '1.6.0'
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
