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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'
require 'aws-sdk-nimblestudio/plugins/content_type.rb'

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::NimbleStudio::Plugins::ContentType)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<String>] :eula_ids
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::AcceptEulasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptEulasResponse#eula_acceptances #eula_acceptances} => Array&lt;Types::EulaAcceptance&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_eulas({
    #     client_token: "ClientToken",
    #     eula_ids: ["__string"],
    #     studio_id: "__string", # required
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #
    # @option params [required, Array<String>] :ec2_subnet_ids
    #
    # @option params [required, Array<String>] :launch_profile_protocol_versions
    #
    # @option params [required, String] :name
    #
    # @option params [required, Types::StreamConfigurationCreate] :stream_configuration
    #
    # @option params [required, Array<String>] :studio_component_ids
    #
    # @option params [required, String] :studio_id
    #
    # @option params [Hash<String,String>] :tags
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
    #       clipboard_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #       ec2_instance_types: ["g4dn.xlarge"], # required, accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge
    #       max_session_length_in_minutes: 1,
    #       streaming_image_ids: ["StreamingImageId"], # required
    #     },
    #     studio_component_ids: ["__string"], # required
    #     studio_id: "__string", # required
    #     tags: {
    #       "__string" => "__string",
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
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["__string"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [required, String] :ec2_image_id
    #
    # @option params [required, String] :name
    #   A friendly name for a streaming image resource.
    #
    # @option params [required, String] :studio_id
    #
    # @option params [Hash<String,String>] :tags
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
    #     studio_id: "__string", # required
    #     tags: {
    #       "__string" => "__string",
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
    #   resp.streaming_image.status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.streaming_image.status_message #=> String
    #   resp.streaming_image.streaming_image_id #=> String
    #   resp.streaming_image.tags #=> Hash
    #   resp.streaming_image.tags["__string"] #=> String
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
    # the streaming session is in state READY.
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :ec2_instance_type
    #
    # @option params [String] :launch_profile_id
    #
    # @option params [String] :streaming_image_id
    #
    # @option params [required, String] :studio_id
    #
    # @option params [Hash<String,String>] :tags
    #
    # @return [Types::CreateStreamingSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingSessionResponse#session #session} => Types::StreamingSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_session({
    #     client_token: "ClientToken",
    #     ec2_instance_type: "g4dn.xlarge", # accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge
    #     launch_profile_id: "__string",
    #     streaming_image_id: "StreamingImageId",
    #     studio_id: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session.arn #=> String
    #   resp.session.created_at #=> Time
    #   resp.session.created_by #=> String
    #   resp.session.ec2_instance_type #=> String
    #   resp.session.launch_profile_id #=> String
    #   resp.session.session_id #=> String
    #   resp.session.state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.session.status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR"
    #   resp.session.status_message #=> String
    #   resp.session.streaming_image_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["__string"] #=> String
    #   resp.session.terminate_at #=> Time
    #   resp.session.updated_at #=> Time
    #   resp.session.updated_by #=> String
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
    # returned streamId to poll the resource until it is in state READY.
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :expiration_in_seconds
    #
    # @option params [required, String] :session_id
    #
    # @option params [required, String] :studio_id
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
    #     session_id: "__string", # required
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream.created_at #=> Time
    #   resp.stream.created_by #=> String
    #   resp.stream.expires_at #=> Time
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

    # Create a new Studio.
    #
    # When creating a Studio, two IAM roles must be provided: the admin role
    # and the user Role. These roles are assumed by your users when they log
    # in to the Nimble Studio portal.
    #
    # The user role must have the AmazonNimbleStudio-StudioUser managed
    # policy attached for the portal to function properly.
    #
    # The Admin Role must have the AmazonNimbleStudio-StudioAdmin managed
    # policy attached for the portal to function properly.
    #
    # You may optionally specify a KMS key in the
    # StudioEncryptionConfiguration.
    #
    # In Nimble Studio, resource names, descriptions, initialization
    # scripts, and other data you provide are always encrypted at rest using
    # an AWS KMS key. By default, this key is owned by AWS and managed on
    # your behalf. You may provide your own AWS KMS key when calling
    # CreateStudio to encrypt this data using a key you own and manage.
    #
    # When providing an AWS KMS key during studio creation, Nimble Studio
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
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :display_name
    #
    # @option params [Types::StudioEncryptionConfiguration] :studio_encryption_configuration
    #   Configuration of the encryption method that is used for the studio.
    #
    # @option params [required, String] :studio_name
    #
    # @option params [Hash<String,String>] :tags
    #
    # @option params [required, String] :user_role_arn
    #
    # @return [Types::CreateStudioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStudioResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_studio({
    #     admin_role_arn: "__string", # required
    #     client_token: "ClientToken",
    #     display_name: "StudioDisplayName", # required
    #     studio_encryption_configuration: {
    #       key_arn: "StudioEncryptionConfigurationKeyArn",
    #       key_type: "AWS_OWNED_KEY", # required, accepts AWS_OWNED_KEY, CUSTOMER_MANAGED_KEY
    #     },
    #     studio_name: "StudioName", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     user_role_arn: "__string", # required
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
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["__string"] #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::StudioComponentConfiguration] :configuration
    #   The configuration of the studio component, based on component type.
    #
    # @option params [String] :description
    #
    # @option params [Array<String>] :ec2_security_group_ids
    #
    # @option params [Array<Types::StudioComponentInitializationScript>] :initialization_scripts
    #
    # @option params [required, String] :name
    #
    # @option params [Array<Types::ScriptParameterKeyValue>] :script_parameters
    #
    # @option params [required, String] :studio_id
    #
    # @option params [String] :subtype
    #
    # @option params [Hash<String,String>] :tags
    #
    # @option params [required, String] :type
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
    #         active_directory_user: "__string",
    #         endpoint: "__string",
    #       },
    #       license_service_configuration: {
    #         endpoint: "__string",
    #       },
    #       shared_file_system_configuration: {
    #         endpoint: "__string",
    #         file_system_id: "__string",
    #         linux_mount_point: "LinuxMountPoint",
    #         share_name: "__string",
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
    #     script_parameters: [
    #       {
    #         key: "ScriptParameterKey",
    #         value: "ScriptParameterValue",
    #       },
    #     ],
    #     studio_id: "__string", # required
    #     subtype: "AWS_MANAGED_MICROSOFT_AD", # accepts AWS_MANAGED_MICROSOFT_AD, AMAZON_FSX_FOR_WINDOWS, AMAZON_FSX_FOR_LUSTRE, CUSTOM
    #     tags: {
    #       "__string" => "__string",
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
    #   resp.studio_component.script_parameters #=> Array
    #   resp.studio_component.script_parameters[0].key #=> String
    #   resp.studio_component.script_parameters[0].value #=> String
    #   resp.studio_component.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_component.status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_component.status_message #=> String
    #   resp.studio_component.studio_component_id #=> String
    #   resp.studio_component.subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_component.tags #=> Hash
    #   resp.studio_component.tags["__string"] #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :launch_profile_id
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::DeleteLaunchProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLaunchProfileResponse#launch_profile #launch_profile} => Types::LaunchProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_profile({
    #     client_token: "ClientToken",
    #     launch_profile_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["__string"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :launch_profile_id
    #
    # @option params [required, String] :principal_id
    #
    # @option params [required, String] :studio_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_profile_member({
    #     client_token: "ClientToken",
    #     launch_profile_id: "__string", # required
    #     principal_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :streaming_image_id
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::DeleteStreamingImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStreamingImageResponse#streaming_image #streaming_image} => Types::StreamingImage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_streaming_image({
    #     client_token: "ClientToken",
    #     streaming_image_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.streaming_image.status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.streaming_image.status_message #=> String
    #   resp.streaming_image.streaming_image_id #=> String
    #   resp.streaming_image.tags #=> Hash
    #   resp.streaming_image.tags["__string"] #=> String
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
    # resource until it transitions to a DELETED state.
    #
    # A streaming session will count against your streaming session quota
    # until it is marked DELETED.
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :session_id
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::DeleteStreamingSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStreamingSessionResponse#session #session} => Types::StreamingSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_streaming_session({
    #     client_token: "ClientToken",
    #     session_id: "__string", # required
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session.arn #=> String
    #   resp.session.created_at #=> Time
    #   resp.session.created_by #=> String
    #   resp.session.ec2_instance_type #=> String
    #   resp.session.launch_profile_id #=> String
    #   resp.session.session_id #=> String
    #   resp.session.state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.session.status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR"
    #   resp.session.status_message #=> String
    #   resp.session.streaming_image_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["__string"] #=> String
    #   resp.session.terminate_at #=> Time
    #   resp.session.updated_at #=> Time
    #   resp.session.updated_by #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::DeleteStudioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStudioResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio({
    #     client_token: "ClientToken",
    #     studio_id: "__string", # required
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
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["__string"] #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :studio_component_id
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::DeleteStudioComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStudioComponentResponse#studio_component #studio_component} => Types::StudioComponent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio_component({
    #     client_token: "ClientToken",
    #     studio_component_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.studio_component.script_parameters #=> Array
    #   resp.studio_component.script_parameters[0].key #=> String
    #   resp.studio_component.script_parameters[0].value #=> String
    #   resp.studio_component.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_component.status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_component.status_message #=> String
    #   resp.studio_component.studio_component_id #=> String
    #   resp.studio_component.subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_component.tags #=> Hash
    #   resp.studio_component.tags["__string"] #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :principal_id
    #
    # @option params [required, String] :studio_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio_member({
    #     client_token: "ClientToken",
    #     principal_id: "__string", # required
    #     studio_id: "__string", # required
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

    # Get Eula.
    #
    # @option params [required, String] :eula_id
    #
    # @return [Types::GetEulaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEulaResponse#eula #eula} => Types::Eula
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_eula({
    #     eula_id: "__string", # required
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
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::GetLaunchProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLaunchProfileResponse#launch_profile #launch_profile} => Types::LaunchProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile({
    #     launch_profile_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["__string"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
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
    #
    # @option params [required, String] :studio_id
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
    #     launch_profile_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["__string"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
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
    #   resp.streaming_images[0].status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.streaming_images[0].status_message #=> String
    #   resp.streaming_images[0].streaming_image_id #=> String
    #   resp.streaming_images[0].tags #=> Hash
    #   resp.streaming_images[0].tags["__string"] #=> String
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
    #
    # @option params [required, Array<String>] :launch_profile_protocol_versions
    #
    # @option params [required, String] :launch_purpose
    #
    # @option params [required, String] :platform
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::GetLaunchProfileInitializationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLaunchProfileInitializationResponse#launch_profile_initialization #launch_profile_initialization} => Types::LaunchProfileInitialization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile_initialization({
    #     launch_profile_id: "__string", # required
    #     launch_profile_protocol_versions: ["__string"], # required
    #     launch_purpose: "__string", # required
    #     platform: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.launch_profile_initialization.system_initialization_scripts[0].script #=> String
    #   resp.launch_profile_initialization.system_initialization_scripts[0].studio_component_id #=> String
    #   resp.launch_profile_initialization.system_initialization_scripts[0].studio_component_name #=> String
    #   resp.launch_profile_initialization.user_initialization_scripts #=> Array
    #   resp.launch_profile_initialization.user_initialization_scripts[0].script #=> String
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
    #
    # @option params [required, String] :principal_id
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::GetLaunchProfileMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLaunchProfileMemberResponse#member #member} => Types::LaunchProfileMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile_member({
    #     launch_profile_id: "__string", # required
    #     principal_id: "__string", # required
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.identity_store_id #=> String
    #   resp.member.persona #=> String, one of "USER"
    #   resp.member.principal_id #=> String
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
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::GetStreamingImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingImageResponse#streaming_image #streaming_image} => Types::StreamingImage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_image({
    #     streaming_image_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.streaming_image.status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.streaming_image.status_message #=> String
    #   resp.streaming_image.streaming_image_id #=> String
    #   resp.streaming_image.tags #=> Hash
    #   resp.streaming_image.tags["__string"] #=> String
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
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::GetStreamingSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingSessionResponse#session #session} => Types::StreamingSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_session({
    #     session_id: "__string", # required
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session.arn #=> String
    #   resp.session.created_at #=> Time
    #   resp.session.created_by #=> String
    #   resp.session.ec2_instance_type #=> String
    #   resp.session.launch_profile_id #=> String
    #   resp.session.session_id #=> String
    #   resp.session.state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.session.status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR"
    #   resp.session.status_message #=> String
    #   resp.session.streaming_image_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["__string"] #=> String
    #   resp.session.terminate_at #=> Time
    #   resp.session.updated_at #=> Time
    #   resp.session.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSession AWS API Documentation
    #
    # @overload get_streaming_session(params = {})
    # @param [Hash] params ({})
    def get_streaming_session(params = {}, options = {})
      req = build_request(:get_streaming_session, params)
      req.send_request(options)
    end

    # Gets a StreamingSessionStream for a streaming session.
    #
    # Invoke this operation to poll the resource after invoking
    # CreateStreamingSessionStream.
    #
    # After the StreamingSessionStream changes to the state READY, the url
    # property will contain a stream to be used with the DCV streaming
    # client.
    #
    # @option params [required, String] :session_id
    #
    # @option params [required, String] :stream_id
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::GetStreamingSessionStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingSessionStreamResponse#stream #stream} => Types::StreamingSessionStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_session_stream({
    #     session_id: "__string", # required
    #     stream_id: "__string", # required
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream.created_at #=> Time
    #   resp.stream.created_by #=> String
    #   resp.stream.expires_at #=> Time
    #   resp.stream.state #=> String, one of "READY", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.stream.status_code #=> String, one of "STREAM_CREATE_IN_PROGRESS", "STREAM_READY", "STREAM_DELETE_IN_PROGRESS", "STREAM_DELETED", "INTERNAL_ERROR", "NETWORK_CONNECTION_ERROR"
    #   resp.stream.stream_id #=> String
    #   resp.stream.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionStream AWS API Documentation
    #
    # @overload get_streaming_session_stream(params = {})
    # @param [Hash] params ({})
    def get_streaming_session_stream(params = {}, options = {})
      req = build_request(:get_streaming_session_stream, params)
      req.send_request(options)
    end

    # Get a Studio resource.
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::GetStudioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStudioResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio({
    #     studio_id: "__string", # required
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
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["__string"] #=> String
    #   resp.studio.updated_at #=> Time
    #   resp.studio.user_role_arn #=> String
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
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::GetStudioComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStudioComponentResponse#studio_component #studio_component} => Types::StudioComponent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio_component({
    #     studio_component_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.studio_component.script_parameters #=> Array
    #   resp.studio_component.script_parameters[0].key #=> String
    #   resp.studio_component.script_parameters[0].value #=> String
    #   resp.studio_component.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_component.status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_component.status_message #=> String
    #   resp.studio_component.studio_component_id #=> String
    #   resp.studio_component.subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_component.tags #=> Hash
    #   resp.studio_component.tags["__string"] #=> String
    #   resp.studio_component.type #=> String, one of "ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"
    #   resp.studio_component.updated_at #=> Time
    #   resp.studio_component.updated_by #=> String
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
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::GetStudioMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStudioMemberResponse#member #member} => Types::StudioMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio_member({
    #     principal_id: "__string", # required
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.identity_store_id #=> String
    #   resp.member.persona #=> String, one of "ADMINISTRATOR"
    #   resp.member.principal_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioMember AWS API Documentation
    #
    # @overload get_studio_member(params = {})
    # @param [Hash] params ({})
    def get_studio_member(params = {}, options = {})
      req = build_request(:get_studio_member, params)
      req.send_request(options)
    end

    # List Eula Acceptances.
    #
    # @option params [Array<String>] :eula_ids
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :studio_id
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
    #     eula_ids: ["__string"],
    #     next_token: "__string",
    #     studio_id: "__string", # required
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

    # List Eulas.
    #
    # @option params [Array<String>] :eula_ids
    #
    # @option params [String] :next_token
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
    #     eula_ids: ["__string"],
    #     next_token: "__string",
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
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :studio_id
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
    #     launch_profile_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].identity_store_id #=> String
    #   resp.members[0].persona #=> String, one of "USER"
    #   resp.members[0].principal_id #=> String
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
    #
    # @option params [String] :next_token
    #
    # @option params [String] :principal_id
    #
    # @option params [Array<String>] :states
    #
    # @option params [required, String] :studio_id
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
    #     next_token: "__string",
    #     principal_id: "__string",
    #     states: ["__string"],
    #     studio_id: "__string", # required
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
    #   resp.launch_profiles[0].status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"
    #   resp.launch_profiles[0].status_message #=> String
    #   resp.launch_profiles[0].stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profiles[0].stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profiles[0].stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"
    #   resp.launch_profiles[0].stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profiles[0].stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profiles[0].stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profiles[0].studio_component_ids #=> Array
    #   resp.launch_profiles[0].studio_component_ids[0] #=> String
    #   resp.launch_profiles[0].tags #=> Hash
    #   resp.launch_profiles[0].tags["__string"] #=> String
    #   resp.launch_profiles[0].updated_at #=> Time
    #   resp.launch_profiles[0].updated_by #=> String
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
    # This list will contain both images provided by AWS, as well as
    # streaming images that you have created in your studio.
    #
    # @option params [String] :next_token
    #
    # @option params [String] :owner
    #
    # @option params [required, String] :studio_id
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
    #     next_token: "__string",
    #     owner: "__string",
    #     studio_id: "__string", # required
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
    #   resp.streaming_images[0].status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.streaming_images[0].status_message #=> String
    #   resp.streaming_images[0].streaming_image_id #=> String
    #   resp.streaming_images[0].tags #=> Hash
    #   resp.streaming_images[0].tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingImages AWS API Documentation
    #
    # @overload list_streaming_images(params = {})
    # @param [Hash] params ({})
    def list_streaming_images(params = {}, options = {})
      req = build_request(:list_streaming_images, params)
      req.send_request(options)
    end

    # Lists the streaming image resources in a studio.
    #
    # @option params [String] :created_by
    #
    # @option params [String] :next_token
    #
    # @option params [String] :session_ids
    #
    # @option params [required, String] :studio_id
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
    #     created_by: "__string",
    #     next_token: "__string",
    #     session_ids: "__string",
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sessions #=> Array
    #   resp.sessions[0].arn #=> String
    #   resp.sessions[0].created_at #=> Time
    #   resp.sessions[0].created_by #=> String
    #   resp.sessions[0].ec2_instance_type #=> String
    #   resp.sessions[0].launch_profile_id #=> String
    #   resp.sessions[0].session_id #=> String
    #   resp.sessions[0].state #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.sessions[0].status_code #=> String, one of "STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR"
    #   resp.sessions[0].status_message #=> String
    #   resp.sessions[0].streaming_image_id #=> String
    #   resp.sessions[0].tags #=> Hash
    #   resp.sessions[0].tags["__string"] #=> String
    #   resp.sessions[0].terminate_at #=> Time
    #   resp.sessions[0].updated_at #=> Time
    #   resp.sessions[0].updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingSessions AWS API Documentation
    #
    # @overload list_streaming_sessions(params = {})
    # @param [Hash] params ({})
    def list_streaming_sessions(params = {}, options = {})
      req = build_request(:list_streaming_sessions, params)
      req.send_request(options)
    end

    # Lists the StudioComponents in a studio.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [Array<String>] :states
    #
    # @option params [required, String] :studio_id
    #
    # @option params [Array<String>] :types
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
    #     next_token: "__string",
    #     states: ["__string"],
    #     studio_id: "__string", # required
    #     types: ["__string"],
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
    #   resp.studio_components[0].script_parameters #=> Array
    #   resp.studio_components[0].script_parameters[0].key #=> String
    #   resp.studio_components[0].script_parameters[0].value #=> String
    #   resp.studio_components[0].state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_components[0].status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_components[0].status_message #=> String
    #   resp.studio_components[0].studio_component_id #=> String
    #   resp.studio_components[0].subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_components[0].tags #=> Hash
    #   resp.studio_components[0].tags["__string"] #=> String
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
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :studio_id
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
    #     next_token: "__string",
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].identity_store_id #=> String
    #   resp.members[0].persona #=> String, one of "ADMINISTRATOR"
    #   resp.members[0].principal_id #=> String
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

    # List studios in your AWS account in the requested AWS Region.
    #
    # @option params [String] :next_token
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
    #     next_token: "__string",
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
    #   resp.studios[0].status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"
    #   resp.studios[0].status_message #=> String
    #   resp.studios[0].studio_encryption_configuration.key_arn #=> String
    #   resp.studios[0].studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studios[0].studio_id #=> String
    #   resp.studios[0].studio_name #=> String
    #   resp.studios[0].studio_url #=> String
    #   resp.studios[0].tags #=> Hash
    #   resp.studios[0].tags["__string"] #=> String
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
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identity_store_id
    #
    # @option params [required, String] :launch_profile_id
    #
    # @option params [required, Array<Types::NewLaunchProfileMember>] :members
    #
    # @option params [required, String] :studio_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_launch_profile_members({
    #     client_token: "ClientToken",
    #     identity_store_id: "__string", # required
    #     launch_profile_id: "__string", # required
    #     members: [ # required
    #       {
    #         persona: "USER", # required, accepts USER
    #         principal_id: "__string", # required
    #       },
    #     ],
    #     studio_id: "__string", # required
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identity_store_id
    #
    # @option params [required, Array<Types::NewStudioMember>] :members
    #
    # @option params [required, String] :studio_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_studio_members({
    #     client_token: "ClientToken",
    #     identity_store_id: "__string", # required
    #     members: [ # required
    #       {
    #         persona: "ADMINISTRATOR", # required, accepts ADMINISTRATOR
    #         principal_id: "__string", # required
    #       },
    #     ],
    #     studio_id: "__string", # required
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

    # Repairs the SSO configuration for a given studio.
    #
    # If the studio has a valid AWS SSO configuration currently associated
    # with it, this operation will fail with a validation error.
    #
    # If the studio does not have a valid AWS SSO configuration currently
    # associated with it, then a new AWS SSO application is created for the
    # studio and the studio is changed to the READY state.
    #
    # After the AWS SSO application is repaired, you must use the Amazon
    # Nimble Studio console to add administrators and users to your studio.
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::StartStudioSSOConfigurationRepairResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartStudioSSOConfigurationRepairResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_studio_sso_configuration_repair({
    #     client_token: "ClientToken",
    #     studio_id: "__string", # required
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
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["__string"] #=> String
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

    # Creates tags for a resource, given its ARN.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [Hash<String,String>] :tags
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: {
    #       "__string" => "__string",
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
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #
    # @option params [required, String] :launch_profile_id
    #
    # @option params [Array<String>] :launch_profile_protocol_versions
    #
    # @option params [String] :name
    #
    # @option params [Types::StreamConfigurationCreate] :stream_configuration
    #
    # @option params [Array<String>] :studio_component_ids
    #
    # @option params [required, String] :studio_id
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
    #     launch_profile_id: "__string", # required
    #     launch_profile_protocol_versions: ["LaunchProfileProtocolVersion"],
    #     name: "LaunchProfileName",
    #     stream_configuration: {
    #       clipboard_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #       ec2_instance_types: ["g4dn.xlarge"], # required, accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge
    #       max_session_length_in_minutes: 1,
    #       streaming_image_ids: ["StreamingImageId"], # required
    #     },
    #     studio_component_ids: ["__string"],
    #     studio_id: "__string", # required
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
    #   resp.launch_profile.status_code #=> String, one of "LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"
    #   resp.launch_profile.status_message #=> String
    #   resp.launch_profile.stream_configuration.clipboard_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.launch_profile.stream_configuration.ec2_instance_types #=> Array
    #   resp.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of "g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"
    #   resp.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.launch_profile.stream_configuration.streaming_image_ids #=> Array
    #   resp.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.launch_profile.studio_component_ids #=> Array
    #   resp.launch_profile.studio_component_ids[0] #=> String
    #   resp.launch_profile.tags #=> Hash
    #   resp.launch_profile.tags["__string"] #=> String
    #   resp.launch_profile.updated_at #=> Time
    #   resp.launch_profile.updated_by #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :launch_profile_id
    #
    # @option params [required, String] :persona
    #
    # @option params [required, String] :principal_id
    #
    # @option params [required, String] :studio_id
    #
    # @return [Types::UpdateLaunchProfileMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLaunchProfileMemberResponse#member #member} => Types::LaunchProfileMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_profile_member({
    #     client_token: "ClientToken",
    #     launch_profile_id: "__string", # required
    #     persona: "USER", # required, accepts USER
    #     principal_id: "__string", # required
    #     studio_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.identity_store_id #=> String
    #   resp.member.persona #=> String, one of "USER"
    #   resp.member.principal_id #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [String] :name
    #   A friendly name for a streaming image resource.
    #
    # @option params [required, String] :streaming_image_id
    #
    # @option params [required, String] :studio_id
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
    #     streaming_image_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.streaming_image.status_code #=> String, one of "STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.streaming_image.status_message #=> String
    #   resp.streaming_image.streaming_image_id #=> String
    #   resp.streaming_image.tags #=> Hash
    #   resp.streaming_image.tags["__string"] #=> String
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
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :display_name
    #
    # @option params [required, String] :studio_id
    #
    # @option params [String] :user_role_arn
    #
    # @return [Types::UpdateStudioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStudioResponse#studio #studio} => Types::Studio
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_studio({
    #     admin_role_arn: "__string",
    #     client_token: "ClientToken",
    #     display_name: "StudioDisplayName",
    #     studio_id: "__string", # required
    #     user_role_arn: "__string",
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
    #   resp.studio.status_code #=> String, one of "STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"
    #   resp.studio.status_message #=> String
    #   resp.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.studio.studio_encryption_configuration.key_type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.studio.studio_id #=> String
    #   resp.studio.studio_name #=> String
    #   resp.studio.studio_url #=> String
    #   resp.studio.tags #=> Hash
    #   resp.studio.tags["__string"] #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::StudioComponentConfiguration] :configuration
    #   The configuration of the studio component, based on component type.
    #
    # @option params [String] :description
    #
    # @option params [Array<String>] :ec2_security_group_ids
    #
    # @option params [Array<Types::StudioComponentInitializationScript>] :initialization_scripts
    #
    # @option params [String] :name
    #
    # @option params [Array<Types::ScriptParameterKeyValue>] :script_parameters
    #
    # @option params [required, String] :studio_component_id
    #
    # @option params [required, String] :studio_id
    #
    # @option params [String] :subtype
    #
    # @option params [String] :type
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
    #         active_directory_user: "__string",
    #         endpoint: "__string",
    #       },
    #       license_service_configuration: {
    #         endpoint: "__string",
    #       },
    #       shared_file_system_configuration: {
    #         endpoint: "__string",
    #         file_system_id: "__string",
    #         linux_mount_point: "LinuxMountPoint",
    #         share_name: "__string",
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
    #     script_parameters: [
    #       {
    #         key: "ScriptParameterKey",
    #         value: "ScriptParameterValue",
    #       },
    #     ],
    #     studio_component_id: "__string", # required
    #     studio_id: "__string", # required
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
    #   resp.studio_component.script_parameters #=> Array
    #   resp.studio_component.script_parameters[0].key #=> String
    #   resp.studio_component.script_parameters[0].value #=> String
    #   resp.studio_component.state #=> String, one of "CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.studio_component.status_code #=> String, one of "ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"
    #   resp.studio_component.status_message #=> String
    #   resp.studio_component.studio_component_id #=> String
    #   resp.studio_component.subtype #=> String, one of "AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"
    #   resp.studio_component.tags #=> Hash
    #   resp.studio_component.tags["__string"] #=> String
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
      context[:gem_version] = '1.1.0'
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
