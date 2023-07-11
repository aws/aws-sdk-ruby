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

Aws::Plugins::GlobalConfiguration.add_identifier(:nimblestudio)

module Aws::NimbleStudio
  # An API client for NimbleStudio.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::NimbleStudio::Client.new(
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

    @identifier = :nimblestudio

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
    add_plugin(Aws::NimbleStudio::Plugins::Endpoints)

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
    #   @option options [Aws::NimbleStudio::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::NimbleStudio::EndpointParameters`
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

    # Accept EULAs.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<String>] :eula_ids
    #   The EULA ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::AcceptEulasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptEulasResponse#eula_acceptances #eula_acceptances} => Array&lt;Types::EulaAcceptance&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_eulas({
    #     client_token: "ClientToken",
    #     eula_ids: ["String"],
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.eula_acceptances #=> Array
    #   resp.eula_acceptances[0].accepted_at #=> Time
    #   resp.eula_acceptances[0].accepted_by #=> String
    #   resp.eula_acceptances[0].acceptee_id #=> String
    #   resp.eula_acceptances[0].eula_acceptance_id #=> String
    #   resp.eula_acceptances[0].eula_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/AcceptEulas AWS API Documentation
    #
    # @overload accept_eulas(params = {})
    # @param [Hash] params ({})
    def accept_eulas(params = {}, options = {})
      req = build_request(:accept_eulas, params)
      req.send_request(options)
    end

    # Create a launch profile.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [required, Array<String>] :ec2_subnet_ids
    #   Specifies the IDs of the EC2 subnets where streaming sessions will be
    #   accessible from. These subnets must support the specified instance
    #   types.
    #
    # @option params [required, Array<String>] :launch_profile_protocol_versions
    #   The version number of the protocol that is used by the launch profile.
    #   The only valid version is "2021-03-31".
    #
    # @option params [required, String] :name
    #   The name for the launch profile.
    #
    # @option params [required, Types::StreamConfigurationCreate] :stream_configuration
    #   A configuration for a streaming session.
    #
    # @option params [required, Array<String>] :studio_component_ids
    #   Unique identifiers for a collection of studio components that can be
    #   used with this launch profile.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of labels, in the form of key-value pairs, that apply to
    #   this resource.
    #
    # @return [Types::CreateLaunchProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLaunchProfileResponse#launch_profile #launch_profile} => Types::LaunchProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_launch_profile({
    #     client_token: "ClientToken",
    #     description: "LaunchProfileDescription",
    #     ec2_subnet_ids: ["EC2SubnetId"], # required
    #     launch_profile_protocol_versions: ["LaunchProfileProtocolVersion"], # required
    #     name: "LaunchProfileName", # required
    #     stream_configuration: { # required
    #       automatic_termination_mode: "DEACTIVATED", # accepts DEACTIVATED, ACTIVATED
    #       clipboard_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #       ec2_instance_types: ["g4dn.xlarge"], # required, accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge, g3.4xlarge, g3s.xlarge, g5.xlarge, g5.2xlarge, g5.4xlarge, g5.8xlarge, g5.16xlarge
    #       max_session_length_in_minutes: 1,
    #       max_stopped_session_length_in_minutes: 1,
    #       session_backup: {
    #         max_backups_to_retain: 1,
    #         mode: "AUTOMATIC", # accepts AUTOMATIC, DEACTIVATED
    #       },
    #       session_persistence_mode: "DEACTIVATED", # accepts DEACTIVATED, ACTIVATED
    #       session_storage: {
    #         mode: ["UPLOAD"], # required, accepts UPLOAD
    #         root: {
    #           linux: "StreamingSessionStorageRootPathLinux",
    #           windows: "StreamingSessionStorageRootPathWindows",
    #         },
    #       },
    #       streaming_image_ids: ["StreamingImageId"], # required
    #       volume_configuration: {
    #         iops: 1,
    #         size: 1,
    #         throughput: 1,
    #       },
    #     },
    #     studio_component_ids: ["String"], # required
    #     studio_id: "String", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_profile.arn #=> String
    #   resp.launch_profile.created_at #=> Time
    #   resp.launch_profile.created_by #=> String
    #   resp.launch_profile.description #=> String
    #   resp.launch_profile.ec2_subnet_ids #=> Array
    #   resp.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.launch_profile.launch_profile_id #=> String
    #   resp.launch_profile.launch_profile_protocol_versions #=> Array
    #   resp.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.launch_profile.name #=> String
    #   resp.launch_profile.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED", "INVALID_INSTANCE_TYPES_PROVIDED", "INVALID_SUBNETS_COMBINATION"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge", "g3.4xlarge", "g3s.xlarge", "g5.xlarge", "g5.2xlarge", "g5.4xlarge", "g5.8xlarge", "g5.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.max_backups_to_retain #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.launch_profile.stream_configuration.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.session_storage.mode #=> Array
    #   resp.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of "UPLOAD"
    #   resp.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.stream_configuration.volume_configuration.iops #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.size #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.throughput #=> Integer
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["String"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
    #   resp.launch_profile.validation_results #=> Array
    #   resp.launch_profile.validation_results[0].state #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_code #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_message #=> String
    #   resp.launch_profile.validation_results[0].type #=> String, one of "VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateLaunchProfile AWS API Documentation
    #
    # @overload create_launch_profile(params = {})
    # @param [Hash] params ({})
    def create_launch_profile(params = {}, options = {})
      req = build_request(:create_launch_profile, params)
      req.send_request(options)
    end

    # Creates a streaming image resource in a studio.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A human-readable description of the streaming image.
    #
    # @option params [required, String] :ec2_image_id
    #   The ID of an EC2 machine image with which to create this streaming
    #   image.
    #
    # @option params [required, String] :name
    #   A friendly name for a streaming image resource.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of labels, in the form of key-value pairs, that apply to
    #   this resource.
    #
    # @return [Types::CreateStreamingImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingImageResponse#streaming_image #streaming_image} => Types::StreamingImage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_image({
    #     client_token: "ClientToken",
    #     description: "StreamingImageDescription",
    #     ec2_image_id: "EC2ImageId", # required
    #     name: "StreamingImageName", # required
    #     studio_id: "String", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_image.arn #=> String
    #   resp.streaming_image.description #=> String
    #   resp.streaming_image.ec2_image_id #=> String
    #   resp.streaming_image.encryption_configuration.key_arn #=> String
    #   resp.streaming_image.encryption_configuration.key_type #=> String, one of "CUSTOMER_MANAGED_KEY"
    #   resp.streaming_image.eula_ids #=> Array
    #   resp.streaming_image.eula_ids[0] #=> String
    #   resp.streaming_image.name #=> String
    #   resp.streaming_image.owner #=> String
    #   resp.streaming_image.platform #=> String
    #   resp.streaming_image.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.streaming_image.status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"
    #   resp.streaming_image.status_message #=> String
    #   resp.streaming_image.streaming_image_id #=> String
    #   resp.streaming_image.tags #=> Hash
    #   resp.streaming_image.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingImage AWS API Documentation
    #
    # @overload create_streaming_image(params = {})
    # @param [Hash] params ({})
    def create_streaming_image(params = {}, options = {})
      req = build_request(:create_streaming_image, params)
      req.send_request(options)
    end

    # Creates a streaming session in a studio.
    #
    # After invoking this operation, you must poll GetStreamingSession until
    # the streaming session is in the `READY` state.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :ec2_instance_type
    #   The EC2 Instance type used for the streaming session.
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [String] :owned_by
    #   The user ID of the user that owns the streaming session. The user that
    #   owns the session will be logging into the session and interacting with
    #   the virtual workstation.
    #
    # @option params [String] :streaming_image_id
    #   The ID of the streaming image.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of labels, in the form of key-value pairs, that apply to
    #   this resource.
    #
    # @return [Types::CreateStreamingSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingSessionResponse#session #session} => Types::StreamingSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_session({
    #     client_token: "ClientToken",
    #     ec2_instance_type: "g4dn.xlarge", # accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge, g3.4xlarge, g3s.xlarge, g5.xlarge, g5.2xlarge, g5.4xlarge, g5.8xlarge, g5.16xlarge
    #     launch_profile_id: "String", # required
    #     owned_by: "String",
    #     streaming_image_id: "StreamingImageId",
    #     studio_id: "String", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session.arn #=> String
    #   resp.session.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.backup_mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.session.created_at #=> Time
    #   resp.session.created_by #=> String
    #   resp.session.ec2_instance_type #=> String
    #   resp.session.launch_profile_id #=> String
    #   resp.session.max_backups_to_retain #=> Integer
    #   resp.session.owned_by #=> String
    #   resp.session.session_id #=> String
    #   resp.session.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.started_at #=> Time
    #   resp.session.started_by #=> String
    #   resp.session.started_from_backup_id #=> String
    #   resp.session.state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"
    #   resp.session.status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"
    #   resp.session.status_message #=> String
    #   resp.session.stop_at #=> Time
    #   resp.session.stopped_at #=> Time
    #   resp.session.stopped_by #=> String
    #   resp.session.streaming_image_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["String"] #=> String
    #   resp.session.terminate_at #=> Time
    #   resp.session.updated_at #=> Time
    #   resp.session.updated_by #=> String
    #   resp.session.volume_configuration.iops #=> Integer
    #   resp.session.volume_configuration.size #=> Integer
    #   resp.session.volume_configuration.throughput #=> Integer
    #   resp.session.volume_retention_mode #=> String, one of "RETAIN", "DELETE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSession AWS API Documentation
    #
    # @overload create_streaming_session(params = {})
    # @param [Hash] params ({})
    def create_streaming_session(params = {}, options = {})
      req = build_request(:create_streaming_session, params)
      req.send_request(options)
    end

    # Creates a streaming session stream for a streaming session.
    #
    # After invoking this API, invoke GetStreamingSessionStream with the
    # returned streamId to poll the resource until it is in the `READY`
    # state.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :expiration_in_seconds
    #   The expiration time in seconds.
    #
    # @option params [required, String] :session_id
    #   The streaming session ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::CreateStreamingSessionStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingSessionStreamResponse#stream #stream} => Types::StreamingSessionStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_session_stream({
    #     client_token: "ClientToken",
    #     expiration_in_seconds: 1,
    #     session_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream.created_at #=> Time
    #   resp.stream.created_by #=> String
    #   resp.stream.expires_at #=> Time
    #   resp.stream.owned_by #=> String
    #   resp.stream.state #=> String, one of "READY", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.stream.status_code #=> String, one of "STREAM_CREATE_IN_PROGRESS", "STREAM_READY", "STREAM_DELETE_IN_PROGRESS", "STREAM_DELETED", "INTERNAL_ERROR", "NETWORK_CONNECTION_ERROR"
    #   resp.stream.stream_id #=> String
    #   resp.stream.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionStream AWS API Documentation
    #
    # @overload create_streaming_session_stream(params = {})
    # @param [Hash] params ({})
    def create_streaming_session_stream(params = {}, options = {})
      req = build_request(:create_streaming_session_stream, params)
      req.send_request(options)
    end

    # Create a new studio.
    #
    # When creating a studio, two IAM roles must be provided: the admin role
    # and the user role. These roles are assumed by your users when they log
    # in to the Nimble Studio portal.
    #
    # The user role must have the `AmazonNimbleStudio-StudioUser` managed
    # policy attached for the portal to function properly.
    #
    # The admin role must have the `AmazonNimbleStudio-StudioAdmin` managed
    # policy attached for the portal to function properly.
    #
    # You may optionally specify a KMS key in the
    # `StudioEncryptionConfiguration`.
    #
    # In Nimble Studio, resource names, descriptions, initialization
    # scripts, and other data you provide are always encrypted at rest using
    # an KMS key. By default, this key is owned by Amazon Web Services and
    # managed on your behalf. You may provide your own KMS key when calling
    # `CreateStudio` to encrypt this data using a key you own and manage.
    #
    # When providing an KMS key during studio creation, Nimble Studio
    # creates KMS grants in your account to provide your studio user and
    # admin roles access to these KMS keys.
    #
    # If you delete this grant, the studio will no longer be accessible to
    # your portal users.
    #
    # If you delete the studio KMS key, your studio will no longer be
    # accessible.
    #
    # @option params [required, String] :admin_role_arn
    #   The IAM role that studio admins will assume when logging in to the
    #   Nimble Studio portal.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :display_name
    #   A friendly name for the studio.
    #
    # @option params [Types::StudioEncryptionConfiguration] :studio_encryption_configuration
    #   The studio encryption configuration.
    #
    # @option params [required, String] :studio_name
    #   The studio name that is used in the URL of the Nimble Studio portal
    #   when accessed by Nimble Studio users.
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of labels, in the form of key-value pairs, that apply to
    #   this resource.
    #
    # @option params [required, String] :user_role_arn
    #   The IAM role that studio users will assume when logging in to the
    #   Nimble Studio portal.
    #
    # @return [Types::CreateStudioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStudioResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_studio({
    #     admin_role_arn: "RoleArn", # required
    #     client_token: "ClientToken",
    #     display_name: "StudioDisplayName", # required
    #     studio_encryption_configuration: {
    #       key_arn: "StudioEncryptionConfigurationKeyArn",
    #       key_type: "AWS_OWNED_KEY", # required, accepts AWS_OWNED_KEY, CUSTOMER_MANAGED_KEY
    #     },
    #     studio_name: "StudioName", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #     user_role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.studio.admin_role_arn #=> String
    #   resp.studio.arn #=> String
    #   resp.studio.created_at #=> Time
    #   resp.studio.display_name #=> String
    #   resp.studio.home_region #=> String
    #   resp.studio.sso_client_id #=> String
    #   resp.studio.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS", "AWS_STS_REGION_DISABLED"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["String"] #=> String
    #   resp.studio.updated_at #=> Time
    #   resp.studio.user_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudio AWS API Documentation
    #
    # @overload create_studio(params = {})
    # @param [Hash] params ({})
    def create_studio(params = {}, options = {})
      req = build_request(:create_studio, params)
      req.send_request(options)
    end

    # Creates a studio component resource.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::StudioComponentConfiguration] :configuration
    #   The configuration of the studio component, based on component type.
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [Array<String>] :ec2_security_group_ids
    #   The EC2 security groups that control access to the studio component.
    #
    # @option params [Array<Types::StudioComponentInitializationScript>] :initialization_scripts
    #   Initialization scripts for studio components.
    #
    # @option params [required, String] :name
    #   The name for the studio component.
    #
    # @option params [String] :runtime_role_arn
    #   An IAM role attached to a Studio Component that gives the studio
    #   component access to Amazon Web Services resources at anytime while the
    #   instance is running.
    #
    # @option params [Array<Types::ScriptParameterKeyValue>] :script_parameters
    #   Parameters for the studio component scripts.
    #
    # @option params [String] :secure_initialization_role_arn
    #   An IAM role attached to Studio Component when the system
    #   initialization script runs which give the studio component access to
    #   Amazon Web Services resources when the system initialization script
    #   runs.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @option params [String] :subtype
    #   The specific subtype of a studio component.
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of labels, in the form of key-value pairs, that apply to
    #   this resource.
    #
    # @option params [required, String] :type
    #   The type of the studio component.
    #
    # @return [Types::CreateStudioComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStudioComponentResponse#studio_component #studio_component} => Types::StudioComponent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_studio_component({
    #     client_token: "ClientToken",
    #     configuration: {
    #       active_directory_configuration: {
    #         computer_attributes: [
    #           {
    #             name: "ActiveDirectoryComputerAttributeName",
    #             value: "ActiveDirectoryComputerAttributeValue",
    #           },
    #         ],
    #         directory_id: "DirectoryId",
    #         organizational_unit_distinguished_name: "ActiveDirectoryOrganizationalUnitDistinguishedName",
    #       },
    #       compute_farm_configuration: {
    #         active_directory_user: "String",
    #         endpoint: "SensitiveString",
    #       },
    #       license_service_configuration: {
    #         endpoint: "SensitiveString",
    #       },
    #       shared_file_system_configuration: {
    #         endpoint: "SensitiveString",
    #         file_system_id: "String",
    #         linux_mount_point: "LinuxMountPoint",
    #         share_name: "SensitiveString",
    #         windows_mount_drive: "WindowsMountDrive",
    #       },
    #     },
    #     description: "StudioComponentDescription",
    #     ec2_security_group_ids: ["SecurityGroupId"],
    #     initialization_scripts: [
    #       {
    #         launch_profile_protocol_version: "LaunchProfileProtocolVersion",
    #         platform: "LINUX", # accepts LINUX, WINDOWS
    #         run_context: "SYSTEM_INITIALIZATION", # accepts SYSTEM_INITIALIZATION, USER_INITIALIZATION
    #         script: "StudioComponentInitializationScriptContent",
    #       },
    #     ],
    #     name: "StudioComponentName", # required
    #     runtime_role_arn: "RoleArn",
    #     script_parameters: [
    #       {
    #         key: "ScriptParameterKey",
    #         value: "ScriptParameterValue",
    #       },
    #     ],
    #     secure_initialization_role_arn: "RoleArn",
    #     studio_id: "String", # required
    #     subtype: "AWS_MANAGED_MICROSOFT_AD", # accepts AWS_MANAGED_MICROSOFT_AD, AMAZON_FSX_FOR_WINDOWS, AMAZON_FSX_FOR_LUSTRE, CUSTOM
    #     tags: {
    #       "String" => "String",
    #     },
    #     type: "ACTIVE_DIRECTORY", # required, accepts ACTIVE_DIRECTORY, SHARED_FILE_SYSTEM, COMPUTE_FARM, LICENSE_SERVICE, CUSTOM
    #   })
    #
    # @example Response structure
    #
    #   resp.studio_component.arn #=> String
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes #=> Array
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.studio_component.configuration.active_directory_configuration.directory_id #=> String
    #   resp.studio_component.configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.studio_component.configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.studio_component.configuration.compute_farm_configuration.endpoint #=> String
    #   resp.studio_component.configuration.license_service_configuration.endpoint #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.share_name #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.studio_component.created_at #=> Time
    #   resp.studio_component.created_by #=> String
    #   resp.studio_component.description #=> String
    #   resp.studio_component.ec2_security_group_ids #=> Array
    #   resp.studio_component.ec2_security_group_ids[0] #=> String
    #   resp.studio_component.initialization_scripts #=> Array
    #   resp.studio_component.initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.studio_component.initialization_scripts[0].platform #=> String, one of "LINUX", "WINDOWS"
    #   resp.studio_component.initialization_scripts[0].run_context #=> String, one of "SYSTEM_INITIALIZATION", "USER_INITIALIZATION"
    #   resp.studio_component.initialization_scripts[0].script #=> String
    #   resp.studio_component.name #=> String
    #   resp.studio_component.runtime_role_arn #=> String
    #   resp.studio_component.script_parameters #=> Array
    #   resp.studio_component.script_parameters[0].key #=> String
    #   resp.studio_component.script_parameters[0].value #=> String
    #   resp.studio_component.secure_initialization_role_arn #=> String
    #   resp.studio_component.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_component.status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_component.status_message #=> String
    #   resp.studio_component.studio_component_id #=> String
    #   resp.studio_component.subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_component.tags #=> Hash
    #   resp.studio_component.tags["String"] #=> String
    #   resp.studio_component.type #=> String, one of "ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"
    #   resp.studio_component.updated_at #=> Time
    #   resp.studio_component.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioComponent AWS API Documentation
    #
    # @overload create_studio_component(params = {})
    # @param [Hash] params ({})
    def create_studio_component(params = {}, options = {})
      req = build_request(:create_studio_component, params)
      req.send_request(options)
    end

    # Permanently delete a launch profile.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::DeleteLaunchProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLaunchProfileResponse#launch_profile #launch_profile} => Types::LaunchProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_profile({
    #     client_token: "ClientToken",
    #     launch_profile_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_profile.arn #=> String
    #   resp.launch_profile.created_at #=> Time
    #   resp.launch_profile.created_by #=> String
    #   resp.launch_profile.description #=> String
    #   resp.launch_profile.ec2_subnet_ids #=> Array
    #   resp.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.launch_profile.launch_profile_id #=> String
    #   resp.launch_profile.launch_profile_protocol_versions #=> Array
    #   resp.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.launch_profile.name #=> String
    #   resp.launch_profile.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED", "INVALID_INSTANCE_TYPES_PROVIDED", "INVALID_SUBNETS_COMBINATION"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge", "g3.4xlarge", "g3s.xlarge", "g5.xlarge", "g5.2xlarge", "g5.4xlarge", "g5.8xlarge", "g5.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.max_backups_to_retain #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.launch_profile.stream_configuration.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.session_storage.mode #=> Array
    #   resp.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of "UPLOAD"
    #   resp.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.stream_configuration.volume_configuration.iops #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.size #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.throughput #=> Integer
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["String"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
    #   resp.launch_profile.validation_results #=> Array
    #   resp.launch_profile.validation_results[0].state #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_code #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_message #=> String
    #   resp.launch_profile.validation_results[0].type #=> String, one of "VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteLaunchProfile AWS API Documentation
    #
    # @overload delete_launch_profile(params = {})
    # @param [Hash] params ({})
    def delete_launch_profile(params = {}, options = {})
      req = build_request(:delete_launch_profile, params)
      req.send_request(options)
    end

    # Delete a user from launch profile membership.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [required, String] :principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_profile_member({
    #     client_token: "ClientToken",
    #     launch_profile_id: "String", # required
    #     principal_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteLaunchProfileMember AWS API Documentation
    #
    # @overload delete_launch_profile_member(params = {})
    # @param [Hash] params ({})
    def delete_launch_profile_member(params = {}, options = {})
      req = build_request(:delete_launch_profile_member, params)
      req.send_request(options)
    end

    # Delete streaming image.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :streaming_image_id
    #   The streaming image ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::DeleteStreamingImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStreamingImageResponse#streaming_image #streaming_image} => Types::StreamingImage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_streaming_image({
    #     client_token: "ClientToken",
    #     streaming_image_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_image.arn #=> String
    #   resp.streaming_image.description #=> String
    #   resp.streaming_image.ec2_image_id #=> String
    #   resp.streaming_image.encryption_configuration.key_arn #=> String
    #   resp.streaming_image.encryption_configuration.key_type #=> String, one of "CUSTOMER_MANAGED_KEY"
    #   resp.streaming_image.eula_ids #=> Array
    #   resp.streaming_image.eula_ids[0] #=> String
    #   resp.streaming_image.name #=> String
    #   resp.streaming_image.owner #=> String
    #   resp.streaming_image.platform #=> String
    #   resp.streaming_image.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.streaming_image.status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"
    #   resp.streaming_image.status_message #=> String
    #   resp.streaming_image.streaming_image_id #=> String
    #   resp.streaming_image.tags #=> Hash
    #   resp.streaming_image.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingImage AWS API Documentation
    #
    # @overload delete_streaming_image(params = {})
    # @param [Hash] params ({})
    def delete_streaming_image(params = {}, options = {})
      req = build_request(:delete_streaming_image, params)
      req.send_request(options)
    end

    # Deletes streaming session resource.
    #
    # After invoking this operation, use GetStreamingSession to poll the
    # resource until it transitions to a `DELETED` state.
    #
    # A streaming session will count against your streaming session quota
    # until it is marked `DELETED`.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :session_id
    #   The streaming session ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::DeleteStreamingSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStreamingSessionResponse#session #session} => Types::StreamingSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_streaming_session({
    #     client_token: "ClientToken",
    #     session_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session.arn #=> String
    #   resp.session.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.backup_mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.session.created_at #=> Time
    #   resp.session.created_by #=> String
    #   resp.session.ec2_instance_type #=> String
    #   resp.session.launch_profile_id #=> String
    #   resp.session.max_backups_to_retain #=> Integer
    #   resp.session.owned_by #=> String
    #   resp.session.session_id #=> String
    #   resp.session.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.started_at #=> Time
    #   resp.session.started_by #=> String
    #   resp.session.started_from_backup_id #=> String
    #   resp.session.state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"
    #   resp.session.status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"
    #   resp.session.status_message #=> String
    #   resp.session.stop_at #=> Time
    #   resp.session.stopped_at #=> Time
    #   resp.session.stopped_by #=> String
    #   resp.session.streaming_image_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["String"] #=> String
    #   resp.session.terminate_at #=> Time
    #   resp.session.updated_at #=> Time
    #   resp.session.updated_by #=> String
    #   resp.session.volume_configuration.iops #=> Integer
    #   resp.session.volume_configuration.size #=> Integer
    #   resp.session.volume_configuration.throughput #=> Integer
    #   resp.session.volume_retention_mode #=> String, one of "RETAIN", "DELETE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingSession AWS API Documentation
    #
    # @overload delete_streaming_session(params = {})
    # @param [Hash] params ({})
    def delete_streaming_session(params = {}, options = {})
      req = build_request(:delete_streaming_session, params)
      req.send_request(options)
    end

    # Delete a studio resource.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::DeleteStudioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStudioResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio({
    #     client_token: "ClientToken",
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.studio.admin_role_arn #=> String
    #   resp.studio.arn #=> String
    #   resp.studio.created_at #=> Time
    #   resp.studio.display_name #=> String
    #   resp.studio.home_region #=> String
    #   resp.studio.sso_client_id #=> String
    #   resp.studio.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS", "AWS_STS_REGION_DISABLED"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["String"] #=> String
    #   resp.studio.updated_at #=> Time
    #   resp.studio.user_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudio AWS API Documentation
    #
    # @overload delete_studio(params = {})
    # @param [Hash] params ({})
    def delete_studio(params = {}, options = {})
      req = build_request(:delete_studio, params)
      req.send_request(options)
    end

    # Deletes a studio component resource.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :studio_component_id
    #   The studio component ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::DeleteStudioComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStudioComponentResponse#studio_component #studio_component} => Types::StudioComponent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio_component({
    #     client_token: "ClientToken",
    #     studio_component_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.studio_component.arn #=> String
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes #=> Array
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.studio_component.configuration.active_directory_configuration.directory_id #=> String
    #   resp.studio_component.configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.studio_component.configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.studio_component.configuration.compute_farm_configuration.endpoint #=> String
    #   resp.studio_component.configuration.license_service_configuration.endpoint #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.share_name #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.studio_component.created_at #=> Time
    #   resp.studio_component.created_by #=> String
    #   resp.studio_component.description #=> String
    #   resp.studio_component.ec2_security_group_ids #=> Array
    #   resp.studio_component.ec2_security_group_ids[0] #=> String
    #   resp.studio_component.initialization_scripts #=> Array
    #   resp.studio_component.initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.studio_component.initialization_scripts[0].platform #=> String, one of "LINUX", "WINDOWS"
    #   resp.studio_component.initialization_scripts[0].run_context #=> String, one of "SYSTEM_INITIALIZATION", "USER_INITIALIZATION"
    #   resp.studio_component.initialization_scripts[0].script #=> String
    #   resp.studio_component.name #=> String
    #   resp.studio_component.runtime_role_arn #=> String
    #   resp.studio_component.script_parameters #=> Array
    #   resp.studio_component.script_parameters[0].key #=> String
    #   resp.studio_component.script_parameters[0].value #=> String
    #   resp.studio_component.secure_initialization_role_arn #=> String
    #   resp.studio_component.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_component.status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_component.status_message #=> String
    #   resp.studio_component.studio_component_id #=> String
    #   resp.studio_component.subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_component.tags #=> Hash
    #   resp.studio_component.tags["String"] #=> String
    #   resp.studio_component.type #=> String, one of "ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"
    #   resp.studio_component.updated_at #=> Time
    #   resp.studio_component.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioComponent AWS API Documentation
    #
    # @overload delete_studio_component(params = {})
    # @param [Hash] params ({})
    def delete_studio_component(params = {}, options = {})
      req = build_request(:delete_studio_component, params)
      req.send_request(options)
    end

    # Delete a user from studio membership.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio_member({
    #     client_token: "ClientToken",
    #     principal_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioMember AWS API Documentation
    #
    # @overload delete_studio_member(params = {})
    # @param [Hash] params ({})
    def delete_studio_member(params = {}, options = {})
      req = build_request(:delete_studio_member, params)
      req.send_request(options)
    end

    # Get EULA.
    #
    # @option params [required, String] :eula_id
    #   The EULA ID.
    #
    # @return [Types::GetEulaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEulaResponse#eula #eula} => Types::Eula
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_eula({
    #     eula_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.eula.content #=> String
    #   resp.eula.created_at #=> Time
    #   resp.eula.eula_id #=> String
    #   resp.eula.name #=> String
    #   resp.eula.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetEula AWS API Documentation
    #
    # @overload get_eula(params = {})
    # @param [Hash] params ({})
    def get_eula(params = {}, options = {})
      req = build_request(:get_eula, params)
      req.send_request(options)
    end

    # Get a launch profile.
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetLaunchProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLaunchProfileResponse#launch_profile #launch_profile} => Types::LaunchProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile({
    #     launch_profile_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_profile.arn #=> String
    #   resp.launch_profile.created_at #=> Time
    #   resp.launch_profile.created_by #=> String
    #   resp.launch_profile.description #=> String
    #   resp.launch_profile.ec2_subnet_ids #=> Array
    #   resp.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.launch_profile.launch_profile_id #=> String
    #   resp.launch_profile.launch_profile_protocol_versions #=> Array
    #   resp.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.launch_profile.name #=> String
    #   resp.launch_profile.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED", "INVALID_INSTANCE_TYPES_PROVIDED", "INVALID_SUBNETS_COMBINATION"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge", "g3.4xlarge", "g3s.xlarge", "g5.xlarge", "g5.2xlarge", "g5.4xlarge", "g5.8xlarge", "g5.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.max_backups_to_retain #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.launch_profile.stream_configuration.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.session_storage.mode #=> Array
    #   resp.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of "UPLOAD"
    #   resp.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.stream_configuration.volume_configuration.iops #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.size #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.throughput #=> Integer
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["String"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
    #   resp.launch_profile.validation_results #=> Array
    #   resp.launch_profile.validation_results[0].state #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_code #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_message #=> String
    #   resp.launch_profile.validation_results[0].type #=> String, one of "VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * launch_profile_deleted
    #   * launch_profile_ready
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfile AWS API Documentation
    #
    # @overload get_launch_profile(params = {})
    # @param [Hash] params ({})
    def get_launch_profile(params = {}, options = {})
      req = build_request(:get_launch_profile, params)
      req.send_request(options)
    end

    # Launch profile details include the launch profile resource and summary
    # information of resources that are used by, or available to, the launch
    # profile. This includes the name and description of all studio
    # components used by the launch profiles, and the name and description
    # of streaming images that can be used with this launch profile.
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetLaunchProfileDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLaunchProfileDetailsResponse#launch_profile #launch_profile} => Types::LaunchProfile
    #   * {Types::GetLaunchProfileDetailsResponse#streaming_images #streaming_images} => Array&lt;Types::StreamingImage&gt;
    #   * {Types::GetLaunchProfileDetailsResponse#studio_component_summaries #studio_component_summaries} => Array&lt;Types::StudioComponentSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile_details({
    #     launch_profile_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_profile.arn #=> String
    #   resp.launch_profile.created_at #=> Time
    #   resp.launch_profile.created_by #=> String
    #   resp.launch_profile.description #=> String
    #   resp.launch_profile.ec2_subnet_ids #=> Array
    #   resp.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.launch_profile.launch_profile_id #=> String
    #   resp.launch_profile.launch_profile_protocol_versions #=> Array
    #   resp.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.launch_profile.name #=> String
    #   resp.launch_profile.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED", "INVALID_INSTANCE_TYPES_PROVIDED", "INVALID_SUBNETS_COMBINATION"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge", "g3.4xlarge", "g3s.xlarge", "g5.xlarge", "g5.2xlarge", "g5.4xlarge", "g5.8xlarge", "g5.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.max_backups_to_retain #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.launch_profile.stream_configuration.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.session_storage.mode #=> Array
    #   resp.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of "UPLOAD"
    #   resp.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.stream_configuration.volume_configuration.iops #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.size #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.throughput #=> Integer
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["String"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
    #   resp.launch_profile.validation_results #=> Array
    #   resp.launch_profile.validation_results[0].state #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_code #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_message #=> String
    #   resp.launch_profile.validation_results[0].type #=> String, one of "VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"
    #   resp.streaming_images #=> Array
    #   resp.streaming_images[0].arn #=> String
    #   resp.streaming_images[0].description #=> String
    #   resp.streaming_images[0].ec2_image_id #=> String
    #   resp.streaming_images[0].encryption_configuration.key_arn #=> String
    #   resp.streaming_images[0].encryption_configuration.key_type #=> String, one of "CUSTOMER_MANAGED_KEY"
    #   resp.streaming_images[0].eula_ids #=> Array
    #   resp.streaming_images[0].eula_ids[0] #=> String
    #   resp.streaming_images[0].name #=> String
    #   resp.streaming_images[0].owner #=> String
    #   resp.streaming_images[0].platform #=> String
    #   resp.streaming_images[0].state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.streaming_images[0].status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"
    #   resp.streaming_images[0].status_message #=> String
    #   resp.streaming_images[0].streaming_image_id #=> String
    #   resp.streaming_images[0].tags #=> Hash
    #   resp.streaming_images[0].tags["String"] #=> String
    #   resp.studio_component_summaries #=> Array
    #   resp.studio_component_summaries[0].created_at #=> Time
    #   resp.studio_component_summaries[0].created_by #=> String
    #   resp.studio_component_summaries[0].description #=> String
    #   resp.studio_component_summaries[0].name #=> String
    #   resp.studio_component_summaries[0].studio_component_id #=> String
    #   resp.studio_component_summaries[0].subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_component_summaries[0].type #=> String, one of "ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"
    #   resp.studio_component_summaries[0].updated_at #=> Time
    #   resp.studio_component_summaries[0].updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileDetails AWS API Documentation
    #
    # @overload get_launch_profile_details(params = {})
    # @param [Hash] params ({})
    def get_launch_profile_details(params = {}, options = {})
      req = build_request(:get_launch_profile_details, params)
      req.send_request(options)
    end

    # Get a launch profile initialization.
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [required, Array<String>] :launch_profile_protocol_versions
    #   The launch profile protocol versions supported by the client.
    #
    # @option params [required, String] :launch_purpose
    #   The launch purpose.
    #
    # @option params [required, String] :platform
    #   The platform where this Launch Profile will be used, either Windows or
    #   Linux.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetLaunchProfileInitializationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLaunchProfileInitializationResponse#launch_profile_initialization #launch_profile_initialization} => Types::LaunchProfileInitialization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile_initialization({
    #     launch_profile_id: "String", # required
    #     launch_profile_protocol_versions: ["String"], # required
    #     launch_purpose: "String", # required
    #     platform: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_profile_initialization.active_directory.computer_attributes #=> Array
    #   resp.launch_profile_initialization.active_directory.computer_attributes[0].name #=> String
    #   resp.launch_profile_initialization.active_directory.computer_attributes[0].value #=> String
    #   resp.launch_profile_initialization.active_directory.directory_id #=> String
    #   resp.launch_profile_initialization.active_directory.directory_name #=> String
    #   resp.launch_profile_initialization.active_directory.dns_ip_addresses #=> Array
    #   resp.launch_profile_initialization.active_directory.dns_ip_addresses[0] #=> String
    #   resp.launch_profile_initialization.active_directory.organizational_unit_distinguished_name #=> String
    #   resp.launch_profile_initialization.active_directory.studio_component_id #=> String
    #   resp.launch_profile_initialization.active_directory.studio_component_name #=> String
    #   resp.launch_profile_initialization.ec2_security_group_ids #=> Array
    #   resp.launch_profile_initialization.ec2_security_group_ids[0] #=> String
    #   resp.launch_profile_initialization.launch_profile_id #=> String
    #   resp.launch_profile_initialization.launch_profile_protocol_version #=> String
    #   resp.launch_profile_initialization.launch_purpose #=> String
    #   resp.launch_profile_initialization.name #=> String
    #   resp.launch_profile_initialization.platform #=> String, one of "LINUX", "WINDOWS"
    #   resp.launch_profile_initialization.system_initialization_scripts #=> Array
    #   resp.launch_profile_initialization.system_initialization_scripts[0].runtime_role_arn #=> String
    #   resp.launch_profile_initialization.system_initialization_scripts[0].script #=> String
    #   resp.launch_profile_initialization.system_initialization_scripts[0].secure_initialization_role_arn #=> String
    #   resp.launch_profile_initialization.system_initialization_scripts[0].studio_component_id #=> String
    #   resp.launch_profile_initialization.system_initialization_scripts[0].studio_component_name #=> String
    #   resp.launch_profile_initialization.user_initialization_scripts #=> Array
    #   resp.launch_profile_initialization.user_initialization_scripts[0].runtime_role_arn #=> String
    #   resp.launch_profile_initialization.user_initialization_scripts[0].script #=> String
    #   resp.launch_profile_initialization.user_initialization_scripts[0].secure_initialization_role_arn #=> String
    #   resp.launch_profile_initialization.user_initialization_scripts[0].studio_component_id #=> String
    #   resp.launch_profile_initialization.user_initialization_scripts[0].studio_component_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileInitialization AWS API Documentation
    #
    # @overload get_launch_profile_initialization(params = {})
    # @param [Hash] params ({})
    def get_launch_profile_initialization(params = {}, options = {})
      req = build_request(:get_launch_profile_initialization, params)
      req.send_request(options)
    end

    # Get a user persona in launch profile membership.
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [required, String] :principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetLaunchProfileMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLaunchProfileMemberResponse#member #member} => Types::LaunchProfileMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile_member({
    #     launch_profile_id: "String", # required
    #     principal_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.identity_store_id #=> String
    #   resp.member.persona #=> String, one of "USER"
    #   resp.member.principal_id #=> String
    #   resp.member.sid #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileMember AWS API Documentation
    #
    # @overload get_launch_profile_member(params = {})
    # @param [Hash] params ({})
    def get_launch_profile_member(params = {}, options = {})
      req = build_request(:get_launch_profile_member, params)
      req.send_request(options)
    end

    # Get streaming image.
    #
    # @option params [required, String] :streaming_image_id
    #   The streaming image ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetStreamingImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingImageResponse#streaming_image #streaming_image} => Types::StreamingImage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_image({
    #     streaming_image_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_image.arn #=> String
    #   resp.streaming_image.description #=> String
    #   resp.streaming_image.ec2_image_id #=> String
    #   resp.streaming_image.encryption_configuration.key_arn #=> String
    #   resp.streaming_image.encryption_configuration.key_type #=> String, one of "CUSTOMER_MANAGED_KEY"
    #   resp.streaming_image.eula_ids #=> Array
    #   resp.streaming_image.eula_ids[0] #=> String
    #   resp.streaming_image.name #=> String
    #   resp.streaming_image.owner #=> String
    #   resp.streaming_image.platform #=> String
    #   resp.streaming_image.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.streaming_image.status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"
    #   resp.streaming_image.status_message #=> String
    #   resp.streaming_image.streaming_image_id #=> String
    #   resp.streaming_image.tags #=> Hash
    #   resp.streaming_image.tags["String"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * streaming_image_deleted
    #   * streaming_image_ready
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingImage AWS API Documentation
    #
    # @overload get_streaming_image(params = {})
    # @param [Hash] params ({})
    def get_streaming_image(params = {}, options = {})
      req = build_request(:get_streaming_image, params)
      req.send_request(options)
    end

    # Gets StreamingSession resource.
    #
    # Invoke this operation to poll for a streaming session state while
    # creating or deleting a session.
    #
    # @option params [required, String] :session_id
    #   The streaming session ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetStreamingSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingSessionResponse#session #session} => Types::StreamingSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_session({
    #     session_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session.arn #=> String
    #   resp.session.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.backup_mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.session.created_at #=> Time
    #   resp.session.created_by #=> String
    #   resp.session.ec2_instance_type #=> String
    #   resp.session.launch_profile_id #=> String
    #   resp.session.max_backups_to_retain #=> Integer
    #   resp.session.owned_by #=> String
    #   resp.session.session_id #=> String
    #   resp.session.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.started_at #=> Time
    #   resp.session.started_by #=> String
    #   resp.session.started_from_backup_id #=> String
    #   resp.session.state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"
    #   resp.session.status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"
    #   resp.session.status_message #=> String
    #   resp.session.stop_at #=> Time
    #   resp.session.stopped_at #=> Time
    #   resp.session.stopped_by #=> String
    #   resp.session.streaming_image_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["String"] #=> String
    #   resp.session.terminate_at #=> Time
    #   resp.session.updated_at #=> Time
    #   resp.session.updated_by #=> String
    #   resp.session.volume_configuration.iops #=> Integer
    #   resp.session.volume_configuration.size #=> Integer
    #   resp.session.volume_configuration.throughput #=> Integer
    #   resp.session.volume_retention_mode #=> String, one of "RETAIN", "DELETE"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * streaming_session_deleted
    #   * streaming_session_ready
    #   * streaming_session_stopped
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSession AWS API Documentation
    #
    # @overload get_streaming_session(params = {})
    # @param [Hash] params ({})
    def get_streaming_session(params = {}, options = {})
      req = build_request(:get_streaming_session, params)
      req.send_request(options)
    end

    # Gets `StreamingSessionBackup` resource.
    #
    # Invoke this operation to poll for a streaming session backup while
    # stopping a streaming session.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetStreamingSessionBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingSessionBackupResponse#streaming_session_backup #streaming_session_backup} => Types::StreamingSessionBackup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_session_backup({
    #     backup_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_session_backup.arn #=> String
    #   resp.streaming_session_backup.backup_id #=> String
    #   resp.streaming_session_backup.created_at #=> Time
    #   resp.streaming_session_backup.launch_profile_id #=> String
    #   resp.streaming_session_backup.owned_by #=> String
    #   resp.streaming_session_backup.session_id #=> String
    #   resp.streaming_session_backup.state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"
    #   resp.streaming_session_backup.status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"
    #   resp.streaming_session_backup.status_message #=> String
    #   resp.streaming_session_backup.tags #=> Hash
    #   resp.streaming_session_backup.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionBackup AWS API Documentation
    #
    # @overload get_streaming_session_backup(params = {})
    # @param [Hash] params ({})
    def get_streaming_session_backup(params = {}, options = {})
      req = build_request(:get_streaming_session_backup, params)
      req.send_request(options)
    end

    # Gets a StreamingSessionStream for a streaming session.
    #
    # Invoke this operation to poll the resource after invoking
    # `CreateStreamingSessionStream`.
    #
    # After the `StreamingSessionStream` changes to the `READY` state, the
    # url property will contain a stream to be used with the DCV streaming
    # client.
    #
    # @option params [required, String] :session_id
    #   The streaming session ID.
    #
    # @option params [required, String] :stream_id
    #   The streaming session stream ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetStreamingSessionStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingSessionStreamResponse#stream #stream} => Types::StreamingSessionStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_session_stream({
    #     session_id: "String", # required
    #     stream_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream.created_at #=> Time
    #   resp.stream.created_by #=> String
    #   resp.stream.expires_at #=> Time
    #   resp.stream.owned_by #=> String
    #   resp.stream.state #=> String, one of "READY", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.stream.status_code #=> String, one of "STREAM_CREATE_IN_PROGRESS", "STREAM_READY", "STREAM_DELETE_IN_PROGRESS", "STREAM_DELETED", "INTERNAL_ERROR", "NETWORK_CONNECTION_ERROR"
    #   resp.stream.stream_id #=> String
    #   resp.stream.url #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * streaming_session_stream_ready
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionStream AWS API Documentation
    #
    # @overload get_streaming_session_stream(params = {})
    # @param [Hash] params ({})
    def get_streaming_session_stream(params = {}, options = {})
      req = build_request(:get_streaming_session_stream, params)
      req.send_request(options)
    end

    # Get a studio resource.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetStudioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStudioResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio({
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.studio.admin_role_arn #=> String
    #   resp.studio.arn #=> String
    #   resp.studio.created_at #=> Time
    #   resp.studio.display_name #=> String
    #   resp.studio.home_region #=> String
    #   resp.studio.sso_client_id #=> String
    #   resp.studio.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS", "AWS_STS_REGION_DISABLED"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["String"] #=> String
    #   resp.studio.updated_at #=> Time
    #   resp.studio.user_role_arn #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * studio_deleted
    #   * studio_ready
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudio AWS API Documentation
    #
    # @overload get_studio(params = {})
    # @param [Hash] params ({})
    def get_studio(params = {}, options = {})
      req = build_request(:get_studio, params)
      req.send_request(options)
    end

    # Gets a studio component resource.
    #
    # @option params [required, String] :studio_component_id
    #   The studio component ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetStudioComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStudioComponentResponse#studio_component #studio_component} => Types::StudioComponent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio_component({
    #     studio_component_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.studio_component.arn #=> String
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes #=> Array
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.studio_component.configuration.active_directory_configuration.directory_id #=> String
    #   resp.studio_component.configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.studio_component.configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.studio_component.configuration.compute_farm_configuration.endpoint #=> String
    #   resp.studio_component.configuration.license_service_configuration.endpoint #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.share_name #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.studio_component.created_at #=> Time
    #   resp.studio_component.created_by #=> String
    #   resp.studio_component.description #=> String
    #   resp.studio_component.ec2_security_group_ids #=> Array
    #   resp.studio_component.ec2_security_group_ids[0] #=> String
    #   resp.studio_component.initialization_scripts #=> Array
    #   resp.studio_component.initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.studio_component.initialization_scripts[0].platform #=> String, one of "LINUX", "WINDOWS"
    #   resp.studio_component.initialization_scripts[0].run_context #=> String, one of "SYSTEM_INITIALIZATION", "USER_INITIALIZATION"
    #   resp.studio_component.initialization_scripts[0].script #=> String
    #   resp.studio_component.name #=> String
    #   resp.studio_component.runtime_role_arn #=> String
    #   resp.studio_component.script_parameters #=> Array
    #   resp.studio_component.script_parameters[0].key #=> String
    #   resp.studio_component.script_parameters[0].value #=> String
    #   resp.studio_component.secure_initialization_role_arn #=> String
    #   resp.studio_component.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_component.status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_component.status_message #=> String
    #   resp.studio_component.studio_component_id #=> String
    #   resp.studio_component.subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_component.tags #=> Hash
    #   resp.studio_component.tags["String"] #=> String
    #   resp.studio_component.type #=> String, one of "ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"
    #   resp.studio_component.updated_at #=> Time
    #   resp.studio_component.updated_by #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * studio_component_deleted
    #   * studio_component_ready
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioComponent AWS API Documentation
    #
    # @overload get_studio_component(params = {})
    # @param [Hash] params ({})
    def get_studio_component(params = {}, options = {})
      req = build_request(:get_studio_component, params)
      req.send_request(options)
    end

    # Get a user's membership in a studio.
    #
    # @option params [required, String] :principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::GetStudioMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStudioMemberResponse#member #member} => Types::StudioMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio_member({
    #     principal_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.identity_store_id #=> String
    #   resp.member.persona #=> String, one of "ADMINISTRATOR"
    #   resp.member.principal_id #=> String
    #   resp.member.sid #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioMember AWS API Documentation
    #
    # @overload get_studio_member(params = {})
    # @param [Hash] params ({})
    def get_studio_member(params = {}, options = {})
      req = build_request(:get_studio_member, params)
      req.send_request(options)
    end

    # List EULA acceptances.
    #
    # @option params [Array<String>] :eula_ids
    #   The list of EULA IDs that have been previously accepted.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::ListEulaAcceptancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEulaAcceptancesResponse#eula_acceptances #eula_acceptances} => Array&lt;Types::EulaAcceptance&gt;
    #   * {Types::ListEulaAcceptancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_eula_acceptances({
    #     eula_ids: ["String"],
    #     next_token: "String",
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.eula_acceptances #=> Array
    #   resp.eula_acceptances[0].accepted_at #=> Time
    #   resp.eula_acceptances[0].accepted_by #=> String
    #   resp.eula_acceptances[0].acceptee_id #=> String
    #   resp.eula_acceptances[0].eula_acceptance_id #=> String
    #   resp.eula_acceptances[0].eula_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListEulaAcceptances AWS API Documentation
    #
    # @overload list_eula_acceptances(params = {})
    # @param [Hash] params ({})
    def list_eula_acceptances(params = {}, options = {})
      req = build_request(:list_eula_acceptances, params)
      req.send_request(options)
    end

    # List EULAs.
    #
    # @option params [Array<String>] :eula_ids
    #   The list of EULA IDs that should be returned
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @return [Types::ListEulasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEulasResponse#eulas #eulas} => Array&lt;Types::Eula&gt;
    #   * {Types::ListEulasResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_eulas({
    #     eula_ids: ["String"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.eulas #=> Array
    #   resp.eulas[0].content #=> String
    #   resp.eulas[0].created_at #=> Time
    #   resp.eulas[0].eula_id #=> String
    #   resp.eulas[0].name #=> String
    #   resp.eulas[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListEulas AWS API Documentation
    #
    # @overload list_eulas(params = {})
    # @param [Hash] params ({})
    def list_eulas(params = {}, options = {})
      req = build_request(:list_eulas, params)
      req.send_request(options)
    end

    # Get all users in a given launch profile membership.
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [Integer] :max_results
    #   The max number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::ListLaunchProfileMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLaunchProfileMembersResponse#members #members} => Array&lt;Types::LaunchProfileMembership&gt;
    #   * {Types::ListLaunchProfileMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_launch_profile_members({
    #     launch_profile_id: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].identity_store_id #=> String
    #   resp.members[0].persona #=> String, one of "USER"
    #   resp.members[0].principal_id #=> String
    #   resp.members[0].sid #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListLaunchProfileMembers AWS API Documentation
    #
    # @overload list_launch_profile_members(params = {})
    # @param [Hash] params ({})
    def list_launch_profile_members(params = {}, options = {})
      req = build_request(:list_launch_profile_members, params)
      req.send_request(options)
    end

    # List all the launch profiles a studio.
    #
    # @option params [Integer] :max_results
    #   The max number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [String] :principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #
    # @option params [Array<String>] :states
    #   Filter this request to launch profiles in any of the given states.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::ListLaunchProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLaunchProfilesResponse#launch_profiles #launch_profiles} => Array&lt;Types::LaunchProfile&gt;
    #   * {Types::ListLaunchProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_launch_profiles({
    #     max_results: 1,
    #     next_token: "String",
    #     principal_id: "String",
    #     states: ["CREATE_IN_PROGRESS"], # accepts CREATE_IN_PROGRESS, READY, UPDATE_IN_PROGRESS, DELETE_IN_PROGRESS, DELETED, DELETE_FAILED, CREATE_FAILED, UPDATE_FAILED
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_profiles #=> Array
    #   resp.launch_profiles[0].arn #=> String
    #   resp.launch_profiles[0].created_at #=> Time
    #   resp.launch_profiles[0].created_by #=> String
    #   resp.launch_profiles[0].description #=> String
    #   resp.launch_profiles[0].ec2_subnet_ids #=> Array
    #   resp.launch_profiles[0].ec2_subnet_ids[0] #=> String
    #   resp.launch_profiles[0].launch_profile_id #=> String
    #   resp.launch_profiles[0].launch_profile_protocol_versions #=> Array
    #   resp.launch_profiles[0].launch_profile_protocol_versions[0] #=> String
    #   resp.launch_profiles[0].name #=> String
    #   resp.launch_profiles[0].state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.launch_profiles[0].status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED", "INVALID_INSTANCE_TYPES_PROVIDED", "INVALID_SUBNETS_COMBINATION"
    #   resp.launch_profiles[0].status_message #=> String
    #   resp.launch_profiles[0].stream_configuration.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profiles[0].stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profiles[0].stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profiles[0].stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge", "g3.4xlarge", "g3s.xlarge", "g5.xlarge", "g5.2xlarge", "g5.4xlarge", "g5.8xlarge", "g5.16xlarge"
    #   resp.launch_profiles[0].stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profiles[0].stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.launch_profiles[0].stream_configuration.session_backup.max_backups_to_retain #=> Integer
    #   resp.launch_profiles[0].stream_configuration.session_backup.mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.launch_profiles[0].stream_configuration.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profiles[0].stream_configuration.session_storage.mode #=> Array
    #   resp.launch_profiles[0].stream_configuration.session_storage.mode[0] #=> String, one of "UPLOAD"
    #   resp.launch_profiles[0].stream_configuration.session_storage.root.linux #=> String
    #   resp.launch_profiles[0].stream_configuration.session_storage.root.windows #=> String
    #   resp.launch_profiles[0].stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profiles[0].stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profiles[0].stream_configuration.volume_configuration.iops #=> Integer
    #   resp.launch_profiles[0].stream_configuration.volume_configuration.size #=> Integer
    #   resp.launch_profiles[0].stream_configuration.volume_configuration.throughput #=> Integer
    #   resp.launch_profiles[0].studio_component_ids #=> Array
    #   resp.launch_profiles[0].studio_component_ids[0] #=> String
    #   resp.launch_profiles[0].tags #=> Hash
    #   resp.launch_profiles[0].tags["String"] #=> String
    #   resp.launch_profiles[0].updated_at #=> Time
    #   resp.launch_profiles[0].updated_by #=> String
    #   resp.launch_profiles[0].validation_results #=> Array
    #   resp.launch_profiles[0].validation_results[0].state #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profiles[0].validation_results[0].status_code #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profiles[0].validation_results[0].status_message #=> String
    #   resp.launch_profiles[0].validation_results[0].type #=> String, one of "VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListLaunchProfiles AWS API Documentation
    #
    # @overload list_launch_profiles(params = {})
    # @param [Hash] params ({})
    def list_launch_profiles(params = {}, options = {})
      req = build_request(:list_launch_profiles, params)
      req.send_request(options)
    end

    # List the streaming image resources available to this studio.
    #
    # This list will contain both images provided by Amazon Web Services, as
    # well as streaming images that you have created in your studio.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [String] :owner
    #   Filter this request to streaming images with the given owner
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::ListStreamingImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamingImagesResponse#next_token #next_token} => String
    #   * {Types::ListStreamingImagesResponse#streaming_images #streaming_images} => Array&lt;Types::StreamingImage&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streaming_images({
    #     next_token: "String",
    #     owner: "String",
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.streaming_images #=> Array
    #   resp.streaming_images[0].arn #=> String
    #   resp.streaming_images[0].description #=> String
    #   resp.streaming_images[0].ec2_image_id #=> String
    #   resp.streaming_images[0].encryption_configuration.key_arn #=> String
    #   resp.streaming_images[0].encryption_configuration.key_type #=> String, one of "CUSTOMER_MANAGED_KEY"
    #   resp.streaming_images[0].eula_ids #=> Array
    #   resp.streaming_images[0].eula_ids[0] #=> String
    #   resp.streaming_images[0].name #=> String
    #   resp.streaming_images[0].owner #=> String
    #   resp.streaming_images[0].platform #=> String
    #   resp.streaming_images[0].state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.streaming_images[0].status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"
    #   resp.streaming_images[0].status_message #=> String
    #   resp.streaming_images[0].streaming_image_id #=> String
    #   resp.streaming_images[0].tags #=> Hash
    #   resp.streaming_images[0].tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingImages AWS API Documentation
    #
    # @overload list_streaming_images(params = {})
    # @param [Hash] params ({})
    def list_streaming_images(params = {}, options = {})
      req = build_request(:list_streaming_images, params)
      req.send_request(options)
    end

    # Lists the backups of a streaming session in a studio.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [String] :owned_by
    #   The user ID of the user that owns the streaming session.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::ListStreamingSessionBackupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamingSessionBackupsResponse#next_token #next_token} => String
    #   * {Types::ListStreamingSessionBackupsResponse#streaming_session_backups #streaming_session_backups} => Array&lt;Types::StreamingSessionBackup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streaming_session_backups({
    #     next_token: "String",
    #     owned_by: "String",
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.streaming_session_backups #=> Array
    #   resp.streaming_session_backups[0].arn #=> String
    #   resp.streaming_session_backups[0].backup_id #=> String
    #   resp.streaming_session_backups[0].created_at #=> Time
    #   resp.streaming_session_backups[0].launch_profile_id #=> String
    #   resp.streaming_session_backups[0].owned_by #=> String
    #   resp.streaming_session_backups[0].session_id #=> String
    #   resp.streaming_session_backups[0].state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"
    #   resp.streaming_session_backups[0].status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"
    #   resp.streaming_session_backups[0].status_message #=> String
    #   resp.streaming_session_backups[0].tags #=> Hash
    #   resp.streaming_session_backups[0].tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingSessionBackups AWS API Documentation
    #
    # @overload list_streaming_session_backups(params = {})
    # @param [Hash] params ({})
    def list_streaming_session_backups(params = {}, options = {})
      req = build_request(:list_streaming_session_backups, params)
      req.send_request(options)
    end

    # Lists the streaming sessions in a studio.
    #
    # @option params [String] :created_by
    #   Filters the request to streaming sessions created by the given user.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [String] :owned_by
    #   Filters the request to streaming session owned by the given user
    #
    # @option params [String] :session_ids
    #   Filters the request to only the provided session IDs.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::ListStreamingSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamingSessionsResponse#next_token #next_token} => String
    #   * {Types::ListStreamingSessionsResponse#sessions #sessions} => Array&lt;Types::StreamingSession&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streaming_sessions({
    #     created_by: "String",
    #     next_token: "String",
    #     owned_by: "String",
    #     session_ids: "String",
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sessions #=> Array
    #   resp.sessions[0].arn #=> String
    #   resp.sessions[0].automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.sessions[0].backup_mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.sessions[0].created_at #=> Time
    #   resp.sessions[0].created_by #=> String
    #   resp.sessions[0].ec2_instance_type #=> String
    #   resp.sessions[0].launch_profile_id #=> String
    #   resp.sessions[0].max_backups_to_retain #=> Integer
    #   resp.sessions[0].owned_by #=> String
    #   resp.sessions[0].session_id #=> String
    #   resp.sessions[0].session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.sessions[0].started_at #=> Time
    #   resp.sessions[0].started_by #=> String
    #   resp.sessions[0].started_from_backup_id #=> String
    #   resp.sessions[0].state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"
    #   resp.sessions[0].status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"
    #   resp.sessions[0].status_message #=> String
    #   resp.sessions[0].stop_at #=> Time
    #   resp.sessions[0].stopped_at #=> Time
    #   resp.sessions[0].stopped_by #=> String
    #   resp.sessions[0].streaming_image_id #=> String
    #   resp.sessions[0].tags #=> Hash
    #   resp.sessions[0].tags["String"] #=> String
    #   resp.sessions[0].terminate_at #=> Time
    #   resp.sessions[0].updated_at #=> Time
    #   resp.sessions[0].updated_by #=> String
    #   resp.sessions[0].volume_configuration.iops #=> Integer
    #   resp.sessions[0].volume_configuration.size #=> Integer
    #   resp.sessions[0].volume_configuration.throughput #=> Integer
    #   resp.sessions[0].volume_retention_mode #=> String, one of "RETAIN", "DELETE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingSessions AWS API Documentation
    #
    # @overload list_streaming_sessions(params = {})
    # @param [Hash] params ({})
    def list_streaming_sessions(params = {}, options = {})
      req = build_request(:list_streaming_sessions, params)
      req.send_request(options)
    end

    # Lists the `StudioComponents` in a studio.
    #
    # @option params [Integer] :max_results
    #   The max number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Array<String>] :states
    #   Filters the request to studio components that are in one of the given
    #   states.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @option params [Array<String>] :types
    #   Filters the request to studio components that are of one of the given
    #   types.
    #
    # @return [Types::ListStudioComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStudioComponentsResponse#next_token #next_token} => String
    #   * {Types::ListStudioComponentsResponse#studio_components #studio_components} => Array&lt;Types::StudioComponent&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_studio_components({
    #     max_results: 1,
    #     next_token: "String",
    #     states: ["CREATE_IN_PROGRESS"], # accepts CREATE_IN_PROGRESS, READY, UPDATE_IN_PROGRESS, DELETE_IN_PROGRESS, DELETED, DELETE_FAILED, CREATE_FAILED, UPDATE_FAILED
    #     studio_id: "String", # required
    #     types: ["ACTIVE_DIRECTORY"], # accepts ACTIVE_DIRECTORY, SHARED_FILE_SYSTEM, COMPUTE_FARM, LICENSE_SERVICE, CUSTOM
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.studio_components #=> Array
    #   resp.studio_components[0].arn #=> String
    #   resp.studio_components[0].configuration.active_directory_configuration.computer_attributes #=> Array
    #   resp.studio_components[0].configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.studio_components[0].configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.studio_components[0].configuration.active_directory_configuration.directory_id #=> String
    #   resp.studio_components[0].configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.studio_components[0].configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.studio_components[0].configuration.compute_farm_configuration.endpoint #=> String
    #   resp.studio_components[0].configuration.license_service_configuration.endpoint #=> String
    #   resp.studio_components[0].configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.studio_components[0].configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.studio_components[0].configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.studio_components[0].configuration.shared_file_system_configuration.share_name #=> String
    #   resp.studio_components[0].configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.studio_components[0].created_at #=> Time
    #   resp.studio_components[0].created_by #=> String
    #   resp.studio_components[0].description #=> String
    #   resp.studio_components[0].ec2_security_group_ids #=> Array
    #   resp.studio_components[0].ec2_security_group_ids[0] #=> String
    #   resp.studio_components[0].initialization_scripts #=> Array
    #   resp.studio_components[0].initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.studio_components[0].initialization_scripts[0].platform #=> String, one of "LINUX", "WINDOWS"
    #   resp.studio_components[0].initialization_scripts[0].run_context #=> String, one of "SYSTEM_INITIALIZATION", "USER_INITIALIZATION"
    #   resp.studio_components[0].initialization_scripts[0].script #=> String
    #   resp.studio_components[0].name #=> String
    #   resp.studio_components[0].runtime_role_arn #=> String
    #   resp.studio_components[0].script_parameters #=> Array
    #   resp.studio_components[0].script_parameters[0].key #=> String
    #   resp.studio_components[0].script_parameters[0].value #=> String
    #   resp.studio_components[0].secure_initialization_role_arn #=> String
    #   resp.studio_components[0].state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_components[0].status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_components[0].status_message #=> String
    #   resp.studio_components[0].studio_component_id #=> String
    #   resp.studio_components[0].subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_components[0].tags #=> Hash
    #   resp.studio_components[0].tags["String"] #=> String
    #   resp.studio_components[0].type #=> String, one of "ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"
    #   resp.studio_components[0].updated_at #=> Time
    #   resp.studio_components[0].updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudioComponents AWS API Documentation
    #
    # @overload list_studio_components(params = {})
    # @param [Hash] params ({})
    def list_studio_components(params = {}, options = {})
      req = build_request(:list_studio_components, params)
      req.send_request(options)
    end

    # Get all users in a given studio membership.
    #
    # <note markdown="1"> `ListStudioMembers` only returns admin members.
    #
    #  </note>
    #
    # @option params [Integer] :max_results
    #   The max number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::ListStudioMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStudioMembersResponse#members #members} => Array&lt;Types::StudioMembership&gt;
    #   * {Types::ListStudioMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_studio_members({
    #     max_results: 1,
    #     next_token: "String",
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].identity_store_id #=> String
    #   resp.members[0].persona #=> String, one of "ADMINISTRATOR"
    #   resp.members[0].principal_id #=> String
    #   resp.members[0].sid #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudioMembers AWS API Documentation
    #
    # @overload list_studio_members(params = {})
    # @param [Hash] params ({})
    def list_studio_members(params = {}, options = {})
      req = build_request(:list_studio_members, params)
      req.send_request(options)
    end

    # List studios in your Amazon Web Services accounts in the requested
    # Amazon Web Services Region.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @return [Types::ListStudiosResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStudiosResponse#next_token #next_token} => String
    #   * {Types::ListStudiosResponse#studios #studios} => Array&lt;Types::Studio&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_studios({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.studios #=> Array
    #   resp.studios[0].admin_role_arn #=> String
    #   resp.studios[0].arn #=> String
    #   resp.studios[0].created_at #=> Time
    #   resp.studios[0].display_name #=> String
    #   resp.studios[0].home_region #=> String
    #   resp.studios[0].sso_client_id #=> String
    #   resp.studios[0].state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studios[0].status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS", "AWS_STS_REGION_DISABLED"
    #   resp.studios[0].status_message #=> String
    #   resp.studios[0].studio_encryption_configuration.key_arn #=> String
    #   resp.studios[0].studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studios[0].studio_id #=> String
    #   resp.studios[0].studio_name #=> String
    #   resp.studios[0].studio_url #=> String
    #   resp.studios[0].tags #=> Hash
    #   resp.studios[0].tags["String"] #=> String
    #   resp.studios[0].updated_at #=> Time
    #   resp.studios[0].user_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudios AWS API Documentation
    #
    # @overload list_studios(params = {})
    # @param [Hash] params ({})
    def list_studios(params = {}, options = {})
      req = build_request(:list_studios, params)
      req.send_request(options)
    end

    # Gets the tags for a resource, given its Amazon Resource Names (ARN).
    #
    # This operation supports ARNs for all resource types in Nimble Studio
    # that support tags, including studio, studio component, launch profile,
    # streaming image, and streaming session. All resources that can be
    # tagged will contain an ARN property, so you do not have to create this
    # ARN yourself.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Add/update users with given persona to launch profile membership.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identity_store_id
    #   The ID of the identity store.
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [required, Array<Types::NewLaunchProfileMember>] :members
    #   A list of members.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_launch_profile_members({
    #     client_token: "ClientToken",
    #     identity_store_id: "String", # required
    #     launch_profile_id: "String", # required
    #     members: [ # required
    #       {
    #         persona: "USER", # required, accepts USER
    #         principal_id: "String", # required
    #       },
    #     ],
    #     studio_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/PutLaunchProfileMembers AWS API Documentation
    #
    # @overload put_launch_profile_members(params = {})
    # @param [Hash] params ({})
    def put_launch_profile_members(params = {}, options = {})
      req = build_request(:put_launch_profile_members, params)
      req.send_request(options)
    end

    # Add/update users with given persona to studio membership.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identity_store_id
    #   The ID of the identity store.
    #
    # @option params [required, Array<Types::NewStudioMember>] :members
    #   A list of members.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_studio_members({
    #     client_token: "ClientToken",
    #     identity_store_id: "String", # required
    #     members: [ # required
    #       {
    #         persona: "ADMINISTRATOR", # required, accepts ADMINISTRATOR
    #         principal_id: "String", # required
    #       },
    #     ],
    #     studio_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/PutStudioMembers AWS API Documentation
    #
    # @overload put_studio_members(params = {})
    # @param [Hash] params ({})
    def put_studio_members(params = {}, options = {})
      req = build_request(:put_studio_members, params)
      req.send_request(options)
    end

    # Transitions sessions from the `STOPPED` state into the `READY` state.
    # The `START_IN_PROGRESS` state is the intermediate state between the
    # `STOPPED` and `READY` states.
    #
    # @option params [String] :backup_id
    #   The ID of the backup.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :session_id
    #   The streaming session ID for the `StartStreamingSessionRequest`.
    #
    # @option params [required, String] :studio_id
    #   The studio ID for the StartStreamingSessionRequest.
    #
    # @return [Types::StartStreamingSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartStreamingSessionResponse#session #session} => Types::StreamingSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_streaming_session({
    #     backup_id: "String",
    #     client_token: "ClientToken",
    #     session_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session.arn #=> String
    #   resp.session.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.backup_mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.session.created_at #=> Time
    #   resp.session.created_by #=> String
    #   resp.session.ec2_instance_type #=> String
    #   resp.session.launch_profile_id #=> String
    #   resp.session.max_backups_to_retain #=> Integer
    #   resp.session.owned_by #=> String
    #   resp.session.session_id #=> String
    #   resp.session.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.started_at #=> Time
    #   resp.session.started_by #=> String
    #   resp.session.started_from_backup_id #=> String
    #   resp.session.state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"
    #   resp.session.status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"
    #   resp.session.status_message #=> String
    #   resp.session.stop_at #=> Time
    #   resp.session.stopped_at #=> Time
    #   resp.session.stopped_by #=> String
    #   resp.session.streaming_image_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["String"] #=> String
    #   resp.session.terminate_at #=> Time
    #   resp.session.updated_at #=> Time
    #   resp.session.updated_by #=> String
    #   resp.session.volume_configuration.iops #=> Integer
    #   resp.session.volume_configuration.size #=> Integer
    #   resp.session.volume_configuration.throughput #=> Integer
    #   resp.session.volume_retention_mode #=> String, one of "RETAIN", "DELETE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StartStreamingSession AWS API Documentation
    #
    # @overload start_streaming_session(params = {})
    # @param [Hash] params ({})
    def start_streaming_session(params = {}, options = {})
      req = build_request(:start_streaming_session, params)
      req.send_request(options)
    end

    # Repairs the IAM Identity Center configuration for a given studio.
    #
    # If the studio has a valid IAM Identity Center configuration currently
    # associated with it, this operation will fail with a validation error.
    #
    # If the studio does not have a valid IAM Identity Center configuration
    # currently associated with it, then a new IAM Identity Center
    # application is created for the studio and the studio is changed to the
    # `READY` state.
    #
    # After the IAM Identity Center application is repaired, you must use
    # the Amazon Nimble Studio console to add administrators and users to
    # your studio.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::StartStudioSSOConfigurationRepairResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartStudioSSOConfigurationRepairResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_studio_sso_configuration_repair({
    #     client_token: "ClientToken",
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.studio.admin_role_arn #=> String
    #   resp.studio.arn #=> String
    #   resp.studio.created_at #=> Time
    #   resp.studio.display_name #=> String
    #   resp.studio.home_region #=> String
    #   resp.studio.sso_client_id #=> String
    #   resp.studio.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS", "AWS_STS_REGION_DISABLED"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["String"] #=> String
    #   resp.studio.updated_at #=> Time
    #   resp.studio.user_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StartStudioSSOConfigurationRepair AWS API Documentation
    #
    # @overload start_studio_sso_configuration_repair(params = {})
    # @param [Hash] params ({})
    def start_studio_sso_configuration_repair(params = {}, options = {})
      req = build_request(:start_studio_sso_configuration_repair, params)
      req.send_request(options)
    end

    # Transitions sessions from the `READY` state into the `STOPPED` state.
    # The `STOP_IN_PROGRESS` state is the intermediate state between the
    # `READY` and `STOPPED` states.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :session_id
    #   The streaming session ID for the `StopStreamingSessionRequest`.
    #
    # @option params [required, String] :studio_id
    #   The studioId for the StopStreamingSessionRequest.
    #
    # @option params [String] :volume_retention_mode
    #   Adds additional instructions to a streaming session stop action to
    #   either retain the EBS volumes or delete the EBS volumes.
    #
    # @return [Types::StopStreamingSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopStreamingSessionResponse#session #session} => Types::StreamingSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_streaming_session({
    #     client_token: "ClientToken",
    #     session_id: "String", # required
    #     studio_id: "String", # required
    #     volume_retention_mode: "RETAIN", # accepts RETAIN, DELETE
    #   })
    #
    # @example Response structure
    #
    #   resp.session.arn #=> String
    #   resp.session.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.backup_mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.session.created_at #=> Time
    #   resp.session.created_by #=> String
    #   resp.session.ec2_instance_type #=> String
    #   resp.session.launch_profile_id #=> String
    #   resp.session.max_backups_to_retain #=> Integer
    #   resp.session.owned_by #=> String
    #   resp.session.session_id #=> String
    #   resp.session.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.session.started_at #=> Time
    #   resp.session.started_by #=> String
    #   resp.session.started_from_backup_id #=> String
    #   resp.session.state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"
    #   resp.session.status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"
    #   resp.session.status_message #=> String
    #   resp.session.stop_at #=> Time
    #   resp.session.stopped_at #=> Time
    #   resp.session.stopped_by #=> String
    #   resp.session.streaming_image_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["String"] #=> String
    #   resp.session.terminate_at #=> Time
    #   resp.session.updated_at #=> Time
    #   resp.session.updated_by #=> String
    #   resp.session.volume_configuration.iops #=> Integer
    #   resp.session.volume_configuration.size #=> Integer
    #   resp.session.volume_configuration.throughput #=> Integer
    #   resp.session.volume_retention_mode #=> String, one of "RETAIN", "DELETE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StopStreamingSession AWS API Documentation
    #
    # @overload stop_streaming_session(params = {})
    # @param [Hash] params ({})
    def stop_streaming_session(params = {}, options = {})
      req = build_request(:stop_streaming_session, params)
      req.send_request(options)
    end

    # Creates tags for a resource, given its ARN.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of labels, in the form of key-value pairs, that apply to
    #   this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   Identifies the Amazon Resource Name(ARN) key from which you are
    #   removing tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   One or more tag keys. Specify only the tag keys, not the tag values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update a launch profile.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [Array<String>] :launch_profile_protocol_versions
    #   The version number of the protocol that is used by the launch profile.
    #   The only valid version is "2021-03-31".
    #
    # @option params [String] :name
    #   The name for the launch profile.
    #
    # @option params [Types::StreamConfigurationCreate] :stream_configuration
    #   A configuration for a streaming session.
    #
    # @option params [Array<String>] :studio_component_ids
    #   Unique identifiers for a collection of studio components that can be
    #   used with this launch profile.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::UpdateLaunchProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLaunchProfileResponse#launch_profile #launch_profile} => Types::LaunchProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_profile({
    #     client_token: "ClientToken",
    #     description: "LaunchProfileDescription",
    #     launch_profile_id: "String", # required
    #     launch_profile_protocol_versions: ["LaunchProfileProtocolVersion"],
    #     name: "LaunchProfileName",
    #     stream_configuration: {
    #       automatic_termination_mode: "DEACTIVATED", # accepts DEACTIVATED, ACTIVATED
    #       clipboard_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #       ec2_instance_types: ["g4dn.xlarge"], # required, accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge, g3.4xlarge, g3s.xlarge, g5.xlarge, g5.2xlarge, g5.4xlarge, g5.8xlarge, g5.16xlarge
    #       max_session_length_in_minutes: 1,
    #       max_stopped_session_length_in_minutes: 1,
    #       session_backup: {
    #         max_backups_to_retain: 1,
    #         mode: "AUTOMATIC", # accepts AUTOMATIC, DEACTIVATED
    #       },
    #       session_persistence_mode: "DEACTIVATED", # accepts DEACTIVATED, ACTIVATED
    #       session_storage: {
    #         mode: ["UPLOAD"], # required, accepts UPLOAD
    #         root: {
    #           linux: "StreamingSessionStorageRootPathLinux",
    #           windows: "StreamingSessionStorageRootPathWindows",
    #         },
    #       },
    #       streaming_image_ids: ["StreamingImageId"], # required
    #       volume_configuration: {
    #         iops: 1,
    #         size: 1,
    #         throughput: 1,
    #       },
    #     },
    #     studio_component_ids: ["String"],
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_profile.arn #=> String
    #   resp.launch_profile.created_at #=> Time
    #   resp.launch_profile.created_by #=> String
    #   resp.launch_profile.description #=> String
    #   resp.launch_profile.ec2_subnet_ids #=> Array
    #   resp.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.launch_profile.launch_profile_id #=> String
    #   resp.launch_profile.launch_profile_protocol_versions #=> Array
    #   resp.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.launch_profile.name #=> String
    #   resp.launch_profile.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED", "INVALID_INSTANCE_TYPES_PROVIDED", "INVALID_SUBNETS_COMBINATION"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.automatic_termination_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge", "g3.4xlarge", "g3s.xlarge", "g5.xlarge", "g5.2xlarge", "g5.4xlarge", "g5.8xlarge", "g5.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.max_backups_to_retain #=> Integer
    #   resp.launch_profile.stream_configuration.session_backup.mode #=> String, one of "AUTOMATIC", "DEACTIVATED"
    #   resp.launch_profile.stream_configuration.session_persistence_mode #=> String, one of "DEACTIVATED", "ACTIVATED"
    #   resp.launch_profile.stream_configuration.session_storage.mode #=> Array
    #   resp.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of "UPLOAD"
    #   resp.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.stream_configuration.volume_configuration.iops #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.size #=> Integer
    #   resp.launch_profile.stream_configuration.volume_configuration.throughput #=> Integer
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["String"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
    #   resp.launch_profile.validation_results #=> Array
    #   resp.launch_profile.validation_results[0].state #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_code #=> String, one of "VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    #   resp.launch_profile.validation_results[0].status_message #=> String
    #   resp.launch_profile.validation_results[0].type #=> String, one of "VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfile AWS API Documentation
    #
    # @overload update_launch_profile(params = {})
    # @param [Hash] params ({})
    def update_launch_profile(params = {}, options = {})
      req = build_request(:update_launch_profile, params)
      req.send_request(options)
    end

    # Update a user persona in launch profile membership.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :launch_profile_id
    #   The ID of the launch profile used to control access from the streaming
    #   session.
    #
    # @option params [required, String] :persona
    #   The persona.
    #
    # @option params [required, String] :principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::UpdateLaunchProfileMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLaunchProfileMemberResponse#member #member} => Types::LaunchProfileMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_profile_member({
    #     client_token: "ClientToken",
    #     launch_profile_id: "String", # required
    #     persona: "USER", # required, accepts USER
    #     principal_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.identity_store_id #=> String
    #   resp.member.persona #=> String, one of "USER"
    #   resp.member.principal_id #=> String
    #   resp.member.sid #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileMember AWS API Documentation
    #
    # @overload update_launch_profile_member(params = {})
    # @param [Hash] params ({})
    def update_launch_profile_member(params = {}, options = {})
      req = build_request(:update_launch_profile_member, params)
      req.send_request(options)
    end

    # Update streaming image.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [String] :name
    #   The name for the streaming image.
    #
    # @option params [required, String] :streaming_image_id
    #   The streaming image ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @return [Types::UpdateStreamingImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStreamingImageResponse#streaming_image #streaming_image} => Types::StreamingImage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_streaming_image({
    #     client_token: "ClientToken",
    #     description: "StreamingImageDescription",
    #     name: "StreamingImageName",
    #     streaming_image_id: "String", # required
    #     studio_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_image.arn #=> String
    #   resp.streaming_image.description #=> String
    #   resp.streaming_image.ec2_image_id #=> String
    #   resp.streaming_image.encryption_configuration.key_arn #=> String
    #   resp.streaming_image.encryption_configuration.key_type #=> String, one of "CUSTOMER_MANAGED_KEY"
    #   resp.streaming_image.eula_ids #=> Array
    #   resp.streaming_image.eula_ids[0] #=> String
    #   resp.streaming_image.name #=> String
    #   resp.streaming_image.owner #=> String
    #   resp.streaming_image.platform #=> String
    #   resp.streaming_image.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.streaming_image.status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"
    #   resp.streaming_image.status_message #=> String
    #   resp.streaming_image.streaming_image_id #=> String
    #   resp.streaming_image.tags #=> Hash
    #   resp.streaming_image.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStreamingImage AWS API Documentation
    #
    # @overload update_streaming_image(params = {})
    # @param [Hash] params ({})
    def update_streaming_image(params = {}, options = {})
      req = build_request(:update_streaming_image, params)
      req.send_request(options)
    end

    # Update a Studio resource.
    #
    # Currently, this operation only supports updating the displayName of
    # your studio.
    #
    # @option params [String] :admin_role_arn
    #   The IAM role that Studio Admins will assume when logging in to the
    #   Nimble Studio portal.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :display_name
    #   A friendly name for the studio.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @option params [String] :user_role_arn
    #   The IAM role that Studio Users will assume when logging in to the
    #   Nimble Studio portal.
    #
    # @return [Types::UpdateStudioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStudioResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_studio({
    #     admin_role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     display_name: "StudioDisplayName",
    #     studio_id: "String", # required
    #     user_role_arn: "RoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.studio.admin_role_arn #=> String
    #   resp.studio.arn #=> String
    #   resp.studio.created_at #=> Time
    #   resp.studio.display_name #=> String
    #   resp.studio.home_region #=> String
    #   resp.studio.sso_client_id #=> String
    #   resp.studio.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS", "AWS_STS_REGION_DISABLED"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["String"] #=> String
    #   resp.studio.updated_at #=> Time
    #   resp.studio.user_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudio AWS API Documentation
    #
    # @overload update_studio(params = {})
    # @param [Hash] params ({})
    def update_studio(params = {}, options = {})
      req = build_request(:update_studio, params)
      req.send_request(options)
    end

    # Updates a studio component resource.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::StudioComponentConfiguration] :configuration
    #   The configuration of the studio component, based on component type.
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [Array<String>] :ec2_security_group_ids
    #   The EC2 security groups that control access to the studio component.
    #
    # @option params [Array<Types::StudioComponentInitializationScript>] :initialization_scripts
    #   Initialization scripts for studio components.
    #
    # @option params [String] :name
    #   The name for the studio component.
    #
    # @option params [String] :runtime_role_arn
    #   An IAM role attached to a Studio Component that gives the studio
    #   component access to Amazon Web Services resources at anytime while the
    #   instance is running.
    #
    # @option params [Array<Types::ScriptParameterKeyValue>] :script_parameters
    #   Parameters for the studio component scripts.
    #
    # @option params [String] :secure_initialization_role_arn
    #   An IAM role attached to Studio Component when the system
    #   initialization script runs which give the studio component access to
    #   Amazon Web Services resources when the system initialization script
    #   runs.
    #
    # @option params [required, String] :studio_component_id
    #   The studio component ID.
    #
    # @option params [required, String] :studio_id
    #   The studio ID.
    #
    # @option params [String] :subtype
    #   The specific subtype of a studio component.
    #
    # @option params [String] :type
    #   The type of the studio component.
    #
    # @return [Types::UpdateStudioComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStudioComponentResponse#studio_component #studio_component} => Types::StudioComponent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_studio_component({
    #     client_token: "ClientToken",
    #     configuration: {
    #       active_directory_configuration: {
    #         computer_attributes: [
    #           {
    #             name: "ActiveDirectoryComputerAttributeName",
    #             value: "ActiveDirectoryComputerAttributeValue",
    #           },
    #         ],
    #         directory_id: "DirectoryId",
    #         organizational_unit_distinguished_name: "ActiveDirectoryOrganizationalUnitDistinguishedName",
    #       },
    #       compute_farm_configuration: {
    #         active_directory_user: "String",
    #         endpoint: "SensitiveString",
    #       },
    #       license_service_configuration: {
    #         endpoint: "SensitiveString",
    #       },
    #       shared_file_system_configuration: {
    #         endpoint: "SensitiveString",
    #         file_system_id: "String",
    #         linux_mount_point: "LinuxMountPoint",
    #         share_name: "SensitiveString",
    #         windows_mount_drive: "WindowsMountDrive",
    #       },
    #     },
    #     description: "StudioComponentDescription",
    #     ec2_security_group_ids: ["SecurityGroupId"],
    #     initialization_scripts: [
    #       {
    #         launch_profile_protocol_version: "LaunchProfileProtocolVersion",
    #         platform: "LINUX", # accepts LINUX, WINDOWS
    #         run_context: "SYSTEM_INITIALIZATION", # accepts SYSTEM_INITIALIZATION, USER_INITIALIZATION
    #         script: "StudioComponentInitializationScriptContent",
    #       },
    #     ],
    #     name: "StudioComponentName",
    #     runtime_role_arn: "RoleArn",
    #     script_parameters: [
    #       {
    #         key: "ScriptParameterKey",
    #         value: "ScriptParameterValue",
    #       },
    #     ],
    #     secure_initialization_role_arn: "RoleArn",
    #     studio_component_id: "String", # required
    #     studio_id: "String", # required
    #     subtype: "AWS_MANAGED_MICROSOFT_AD", # accepts AWS_MANAGED_MICROSOFT_AD, AMAZON_FSX_FOR_WINDOWS, AMAZON_FSX_FOR_LUSTRE, CUSTOM
    #     type: "ACTIVE_DIRECTORY", # accepts ACTIVE_DIRECTORY, SHARED_FILE_SYSTEM, COMPUTE_FARM, LICENSE_SERVICE, CUSTOM
    #   })
    #
    # @example Response structure
    #
    #   resp.studio_component.arn #=> String
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes #=> Array
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.studio_component.configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.studio_component.configuration.active_directory_configuration.directory_id #=> String
    #   resp.studio_component.configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.studio_component.configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.studio_component.configuration.compute_farm_configuration.endpoint #=> String
    #   resp.studio_component.configuration.license_service_configuration.endpoint #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.share_name #=> String
    #   resp.studio_component.configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.studio_component.created_at #=> Time
    #   resp.studio_component.created_by #=> String
    #   resp.studio_component.description #=> String
    #   resp.studio_component.ec2_security_group_ids #=> Array
    #   resp.studio_component.ec2_security_group_ids[0] #=> String
    #   resp.studio_component.initialization_scripts #=> Array
    #   resp.studio_component.initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.studio_component.initialization_scripts[0].platform #=> String, one of "LINUX", "WINDOWS"
    #   resp.studio_component.initialization_scripts[0].run_context #=> String, one of "SYSTEM_INITIALIZATION", "USER_INITIALIZATION"
    #   resp.studio_component.initialization_scripts[0].script #=> String
    #   resp.studio_component.name #=> String
    #   resp.studio_component.runtime_role_arn #=> String
    #   resp.studio_component.script_parameters #=> Array
    #   resp.studio_component.script_parameters[0].key #=> String
    #   resp.studio_component.script_parameters[0].value #=> String
    #   resp.studio_component.secure_initialization_role_arn #=> String
    #   resp.studio_component.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_component.status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_component.status_message #=> String
    #   resp.studio_component.studio_component_id #=> String
    #   resp.studio_component.subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_component.tags #=> Hash
    #   resp.studio_component.tags["String"] #=> String
    #   resp.studio_component.type #=> String, one of "ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"
    #   resp.studio_component.updated_at #=> Time
    #   resp.studio_component.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioComponent AWS API Documentation
    #
    # @overload update_studio_component(params = {})
    # @param [Hash] params ({})
    def update_studio_component(params = {}, options = {})
      req = build_request(:update_studio_component, params)
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
      context[:gem_name] = 'aws-sdk-nimblestudio'
      context[:gem_version] = '1.23.0'
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
    #     client.wait_until(waiter_name, params)
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
    # | waiter_name                    | params                                | :delay   | :max_attempts |
    # | ------------------------------ | ------------------------------------- | -------- | ------------- |
    # | launch_profile_deleted         | {Client#get_launch_profile}           | 5        | 150           |
    # | launch_profile_ready           | {Client#get_launch_profile}           | 5        | 150           |
    # | streaming_image_deleted        | {Client#get_streaming_image}          | 2        | 60            |
    # | streaming_image_ready          | {Client#get_streaming_image}          | 2        | 60            |
    # | streaming_session_deleted      | {Client#get_streaming_session}        | 5        | 180           |
    # | streaming_session_ready        | {Client#get_streaming_session}        | 10       | 180           |
    # | streaming_session_stopped      | {Client#get_streaming_session}        | 5        | 180           |
    # | streaming_session_stream_ready | {Client#get_streaming_session_stream} | 5        | 30            |
    # | studio_component_deleted       | {Client#get_studio_component}         | 1        | 120           |
    # | studio_component_ready         | {Client#get_studio_component}         | 2        | 60            |
    # | studio_deleted                 | {Client#get_studio}                   | 2        | 60            |
    # | studio_ready                   | {Client#get_studio}                   | 2        | 60            |
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
        launch_profile_deleted: Waiters::LaunchProfileDeleted,
        launch_profile_ready: Waiters::LaunchProfileReady,
        streaming_image_deleted: Waiters::StreamingImageDeleted,
        streaming_image_ready: Waiters::StreamingImageReady,
        streaming_session_deleted: Waiters::StreamingSessionDeleted,
        streaming_session_ready: Waiters::StreamingSessionReady,
        streaming_session_stopped: Waiters::StreamingSessionStopped,
        streaming_session_stream_ready: Waiters::StreamingSessionStreamReady,
        studio_component_deleted: Waiters::StudioComponentDeleted,
        studio_component_ready: Waiters::StudioComponentReady,
        studio_deleted: Waiters::StudioDeleted,
        studio_ready: Waiters::StudioReady
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
