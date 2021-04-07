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

Aws::Plugins::GlobalConfiguration.add_identifier(:locationservice)

module Aws::LocationService
  # An API client for LocationService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LocationService::Client.new(
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

    @identifier = :locationservice

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

    # Creates an association between a geofence collection and a tracker
    # resource. This allows the tracker resource to communicate location
    # data to the linked geofence collection.
    #
    # <note markdown="1"> Currently not supported — Cross-account configurations, such as
    # creating associations between a tracker resource in one account and a
    # geofence collection in another account.
    #
    #  </note>
    #
    # @option params [required, String] :consumer_arn
    #   The Amazon Resource Name (ARN) for the geofence collection to be
    #   associated to tracker resource. Used when you need to specify a
    #   resource across all AWS.
    #
    #   * Format example:
    #     `arn:partition:service:region:account-id:resource-type:resource-id`
    #
    #   ^
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to be associated with a geofence
    #   collection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_tracker_consumer({
    #     consumer_arn: "Arn", # required
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/AssociateTrackerConsumer AWS API Documentation
    #
    # @overload associate_tracker_consumer(params = {})
    # @param [Hash] params ({})
    def associate_tracker_consumer(params = {}, options = {})
      req = build_request(:associate_tracker_consumer, params)
      req.send_request(options)
    end

    # Deletes a batch of geofences from a geofence collection.
    #
    # <note markdown="1"> This action deletes the resource permanently. You can't undo this
    # action.
    #
    #  </note>
    #
    # @option params [required, String] :collection_name
    #   The geofence collection storing the geofences to be deleted.
    #
    # @option params [required, Array<String>] :geofence_ids
    #   The batch of geofences to be deleted.
    #
    # @return [Types::BatchDeleteGeofenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteGeofenceResponse#errors #errors} => Array&lt;Types::BatchDeleteGeofenceError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_geofence({
    #     collection_name: "ResourceName", # required
    #     geofence_ids: ["Id"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #   resp.errors[0].geofence_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchDeleteGeofence AWS API Documentation
    #
    # @overload batch_delete_geofence(params = {})
    # @param [Hash] params ({})
    def batch_delete_geofence(params = {}, options = {})
      req = build_request(:batch_delete_geofence, params)
      req.send_request(options)
    end

    # Evaluates device positions against the geofence geometries from a
    # given geofence collection. The evaluation determines if the device has
    # entered or exited a geofenced area, which publishes ENTER or EXIT
    # geofence events to Amazon EventBridge.
    #
    # <note markdown="1"> The last geofence that a device was observed within, if any, is
    # tracked for 30 days after the most recent device position update
    #
    #  </note>
    #
    # @option params [required, String] :collection_name
    #   The geofence collection used in evaluating the position of devices
    #   against its geofences.
    #
    # @option params [required, Array<Types::DevicePositionUpdate>] :device_position_updates
    #   Contains device details for each device to be evaluated against the
    #   given geofence collection.
    #
    # @return [Types::BatchEvaluateGeofencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchEvaluateGeofencesResponse#errors #errors} => Array&lt;Types::BatchEvaluateGeofencesError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_evaluate_geofences({
    #     collection_name: "ResourceName", # required
    #     device_position_updates: [ # required
    #       {
    #         device_id: "Id", # required
    #         position: [1.0], # required
    #         sample_time: Time.now, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].device_id #=> String
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #   resp.errors[0].sample_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchEvaluateGeofences AWS API Documentation
    #
    # @overload batch_evaluate_geofences(params = {})
    # @param [Hash] params ({})
    def batch_evaluate_geofences(params = {}, options = {})
      req = build_request(:batch_evaluate_geofences, params)
      req.send_request(options)
    end

    # A batch request to retrieve all device positions.
    #
    # @option params [required, Array<String>] :device_ids
    #   Devices whose position you want to retrieve.
    #
    #   * For example, for two devices:
    #     `device-ids=DeviceId1&device-ids=DeviceId2`
    #
    #   ^
    #
    # @option params [required, String] :tracker_name
    #   The tracker resource retrieving the device position.
    #
    # @return [Types::BatchGetDevicePositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetDevicePositionResponse#device_positions #device_positions} => Array&lt;Types::DevicePosition&gt;
    #   * {Types::BatchGetDevicePositionResponse#errors #errors} => Array&lt;Types::BatchGetDevicePositionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_device_position({
    #     device_ids: ["Id"], # required
    #     tracker_name: "BatchGetDevicePositionRequestTrackerNameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_positions #=> Array
    #   resp.device_positions[0].device_id #=> String
    #   resp.device_positions[0].position #=> Array
    #   resp.device_positions[0].position[0] #=> Float
    #   resp.device_positions[0].received_time #=> Time
    #   resp.device_positions[0].sample_time #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].device_id #=> String
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchGetDevicePosition AWS API Documentation
    #
    # @overload batch_get_device_position(params = {})
    # @param [Hash] params ({})
    def batch_get_device_position(params = {}, options = {})
      req = build_request(:batch_get_device_position, params)
      req.send_request(options)
    end

    # A batch request for storing geofence geometries into a given geofence
    # collection.
    #
    # @option params [required, String] :collection_name
    #   The geofence collection storing the geofences.
    #
    # @option params [required, Array<Types::BatchPutGeofenceRequestEntry>] :entries
    #   The batch of geofences to be stored in a geofence collection.
    #
    # @return [Types::BatchPutGeofenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutGeofenceResponse#errors #errors} => Array&lt;Types::BatchPutGeofenceError&gt;
    #   * {Types::BatchPutGeofenceResponse#successes #successes} => Array&lt;Types::BatchPutGeofenceSuccess&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_geofence({
    #     collection_name: "ResourceName", # required
    #     entries: [ # required
    #       {
    #         geofence_id: "Id", # required
    #         geometry: { # required
    #           polygon: [
    #             [
    #               [1.0],
    #             ],
    #           ],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #   resp.errors[0].geofence_id #=> String
    #   resp.successes #=> Array
    #   resp.successes[0].create_time #=> Time
    #   resp.successes[0].geofence_id #=> String
    #   resp.successes[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchPutGeofence AWS API Documentation
    #
    # @overload batch_put_geofence(params = {})
    # @param [Hash] params ({})
    def batch_put_geofence(params = {}, options = {})
      req = build_request(:batch_put_geofence, params)
      req.send_request(options)
    end

    # Uploads position update data for one or more devices to a tracker
    # resource. Amazon Location uses the data when reporting the last known
    # device position and position history.
    #
    # <note markdown="1"> Only one position update is stored per sample time. Location data is
    # sampled at a fixed rate of one position per 30-second interval, and
    # retained for one year before it is deleted.
    #
    #  </note>
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to update.
    #
    # @option params [required, Array<Types::DevicePositionUpdate>] :updates
    #   Contains the position update details for each device.
    #
    # @return [Types::BatchUpdateDevicePositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateDevicePositionResponse#errors #errors} => Array&lt;Types::BatchUpdateDevicePositionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_device_position({
    #     tracker_name: "ResourceName", # required
    #     updates: [ # required
    #       {
    #         device_id: "Id", # required
    #         position: [1.0], # required
    #         sample_time: Time.now, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].device_id #=> String
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #   resp.errors[0].sample_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchUpdateDevicePosition AWS API Documentation
    #
    # @overload batch_update_device_position(params = {})
    # @param [Hash] params ({})
    def batch_update_device_position(params = {}, options = {})
      req = build_request(:batch_update_device_position, params)
      req.send_request(options)
    end

    # Creates a geofence collection, which manages and stores geofences.
    #
    # @option params [required, String] :collection_name
    #   A custom name for the geofence collection.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A–Z, a–z, 0-9), hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique geofence collection name.
    #
    #   * No spaces allowed. For example, `ExampleGeofenceCollection`.
    #
    # @option params [String] :description
    #   An optional description for the geofence collection.
    #
    # @option params [required, String] :pricing_plan
    #   Specifies the pricing plan for your geofence collection.
    #
    #   For additional details and restrictions on each pricing plan option,
    #   see the [Amazon Location Service pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #
    # @option params [String] :pricing_plan_data_source
    #   Specifies the plan data source. Required if the Mobile Asset Tracking
    #   (MAT) or the Mobile Asset Management (MAM) pricing plan is selected.
    #
    #   Billing is determined by the resource usage, the associated pricing
    #   plan, and the data source that was specified. For more information
    #   about each pricing plan option and restrictions, see the [Amazon
    #   Location Service pricing page][1].
    #
    #   Valid Values: `Esri `\| `Here`
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #
    # @return [Types::CreateGeofenceCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGeofenceCollectionResponse#collection_arn #collection_arn} => String
    #   * {Types::CreateGeofenceCollectionResponse#collection_name #collection_name} => String
    #   * {Types::CreateGeofenceCollectionResponse#create_time #create_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_geofence_collection({
    #     collection_name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     pricing_plan: "RequestBasedUsage", # required, accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     pricing_plan_data_source: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.collection_arn #=> String
    #   resp.collection_name #=> String
    #   resp.create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateGeofenceCollection AWS API Documentation
    #
    # @overload create_geofence_collection(params = {})
    # @param [Hash] params ({})
    def create_geofence_collection(params = {}, options = {})
      req = build_request(:create_geofence_collection, params)
      req.send_request(options)
    end

    # Creates a map resource in your AWS account, which provides map tiles
    # of different styles sourced from global location data providers.
    #
    # <note markdown="1"> By using Maps, you agree that AWS may transmit your API queries to
    # your selected third party provider for processing, which may be
    # outside the AWS region you are currently using. For more information,
    # see the [AWS Service Terms][1] for Amazon Location Service.
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, Types::MapConfiguration] :configuration
    #   Specifies the map style selected from an available data provider.
    #
    # @option params [String] :description
    #   An optional description for the map resource.
    #
    # @option params [required, String] :map_name
    #   The name for the map resource.
    #
    #   Requirements:
    #
    #   * Must contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens
    #     (-), periods (.), and underscores (\_).
    #
    #   * Must be a unique map resource name.
    #
    #   * No spaces allowed. For example, `ExampleMap`.
    #
    # @option params [required, String] :pricing_plan
    #   Specifies the pricing plan for your map resource.
    #
    #   For additional details and restrictions on each pricing plan option,
    #   see the [Amazon Location Service pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #
    # @return [Types::CreateMapResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMapResponse#create_time #create_time} => Time
    #   * {Types::CreateMapResponse#map_arn #map_arn} => String
    #   * {Types::CreateMapResponse#map_name #map_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_map({
    #     configuration: { # required
    #       style: "MapStyle", # required
    #     },
    #     description: "ResourceDescription",
    #     map_name: "ResourceName", # required
    #     pricing_plan: "RequestBasedUsage", # required, accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.map_arn #=> String
    #   resp.map_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateMap AWS API Documentation
    #
    # @overload create_map(params = {})
    # @param [Hash] params ({})
    def create_map(params = {}, options = {})
      req = build_request(:create_map, params)
      req.send_request(options)
    end

    # Creates a Place index resource in your AWS account, which supports
    # Places functions with geospatial data sourced from your chosen data
    # provider.
    #
    # <note markdown="1"> By using Places, you agree that AWS may transmit your API queries to
    # your selected third party provider for processing, which may be
    # outside the AWS region you are currently using.
    #
    #  Because of licensing limitations, you may not use HERE to store
    # results for locations in Japan. For more information, see the [AWS
    # Service Terms][1] for Amazon Location Service.
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, String] :data_source
    #   Specifies the data provider of geospatial data.
    #
    #   <note markdown="1"> This field is case-sensitive. Enter the valid values as shown. For
    #   example, entering `HERE` will return an error.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `Esri`
    #
    #   * `Here`
    #
    #   For additional details on data providers, see the [Amazon Location
    #   Service data providers page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #
    # @option params [Types::DataSourceConfiguration] :data_source_configuration
    #   Specifies the data storage option for requesting Places.
    #
    # @option params [String] :description
    #   The optional description for the Place index resource.
    #
    # @option params [required, String] :index_name
    #   The name of the Place index resource.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique Place index resource name.
    #
    #   * No spaces allowed. For example, `ExamplePlaceIndex`.
    #
    # @option params [required, String] :pricing_plan
    #   Specifies the pricing plan for your Place index resource.
    #
    #   For additional details and restrictions on each pricing plan option,
    #   see the [Amazon Location Service pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #
    # @return [Types::CreatePlaceIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePlaceIndexResponse#create_time #create_time} => Time
    #   * {Types::CreatePlaceIndexResponse#index_arn #index_arn} => String
    #   * {Types::CreatePlaceIndexResponse#index_name #index_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_place_index({
    #     data_source: "String", # required
    #     data_source_configuration: {
    #       intended_use: "SingleUse", # accepts SingleUse, Storage
    #     },
    #     description: "ResourceDescription",
    #     index_name: "ResourceName", # required
    #     pricing_plan: "RequestBasedUsage", # required, accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.index_arn #=> String
    #   resp.index_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreatePlaceIndex AWS API Documentation
    #
    # @overload create_place_index(params = {})
    # @param [Hash] params ({})
    def create_place_index(params = {}, options = {})
      req = build_request(:create_place_index, params)
      req.send_request(options)
    end

    # Creates a tracker resource in your AWS account, which lets you
    # retrieve current and historical location of devices.
    #
    # @option params [String] :description
    #   An optional description for the tracker resource.
    #
    # @option params [required, String] :pricing_plan
    #   Specifies the pricing plan for your tracker resource.
    #
    #   For additional details and restrictions on each pricing plan option,
    #   see the [Amazon Location Service pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #
    # @option params [String] :pricing_plan_data_source
    #   Specifies the plan data source. Required if the Mobile Asset Tracking
    #   (MAT) or the Mobile Asset Management (MAM) pricing plan is selected.
    #
    #   Billing is determined by the resource usage, the associated pricing
    #   plan, and data source that was specified. For more information about
    #   each pricing plan option and restrictions, see the [Amazon Location
    #   Service pricing page][1].
    #
    #   Valid Values: `Esri` \| `Here`
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #
    # @option params [required, String] :tracker_name
    #   The name for the tracker resource.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique tracker resource name.
    #
    #   * No spaces allowed. For example, `ExampleTracker`.
    #
    # @return [Types::CreateTrackerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrackerResponse#create_time #create_time} => Time
    #   * {Types::CreateTrackerResponse#tracker_arn #tracker_arn} => String
    #   * {Types::CreateTrackerResponse#tracker_name #tracker_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tracker({
    #     description: "ResourceDescription",
    #     pricing_plan: "RequestBasedUsage", # required, accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     pricing_plan_data_source: "String",
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.tracker_arn #=> String
    #   resp.tracker_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateTracker AWS API Documentation
    #
    # @overload create_tracker(params = {})
    # @param [Hash] params ({})
    def create_tracker(params = {}, options = {})
      req = build_request(:create_tracker, params)
      req.send_request(options)
    end

    # Deletes a geofence collection from your AWS account.
    #
    # <note markdown="1"> This action deletes the resource permanently. You can't undo this
    # action. If the geofence collection is the target of a tracker
    # resource, the devices will no longer be monitored.
    #
    #  </note>
    #
    # @option params [required, String] :collection_name
    #   The name of the geofence collection to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_geofence_collection({
    #     collection_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteGeofenceCollection AWS API Documentation
    #
    # @overload delete_geofence_collection(params = {})
    # @param [Hash] params ({})
    def delete_geofence_collection(params = {}, options = {})
      req = build_request(:delete_geofence_collection, params)
      req.send_request(options)
    end

    # Deletes a map resource from your AWS account.
    #
    # <note markdown="1"> This action deletes the resource permanently. You cannot undo this
    # action. If the map is being used in an application, the map may not
    # render.
    #
    #  </note>
    #
    # @option params [required, String] :map_name
    #   The name of the map resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_map({
    #     map_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteMap AWS API Documentation
    #
    # @overload delete_map(params = {})
    # @param [Hash] params ({})
    def delete_map(params = {}, options = {})
      req = build_request(:delete_map, params)
      req.send_request(options)
    end

    # Deletes a Place index resource from your AWS account.
    #
    # <note markdown="1"> This action deletes the resource permanently. You cannot undo this
    # action.
    #
    #  </note>
    #
    # @option params [required, String] :index_name
    #   The name of the Place index resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_place_index({
    #     index_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeletePlaceIndex AWS API Documentation
    #
    # @overload delete_place_index(params = {})
    # @param [Hash] params ({})
    def delete_place_index(params = {}, options = {})
      req = build_request(:delete_place_index, params)
      req.send_request(options)
    end

    # Deletes a tracker resource from your AWS account.
    #
    # <note markdown="1"> This action deletes the resource permanently. You can't undo this
    # action. If the tracker resource is in use, you may encounter an error.
    # Make sure that the target resource is not a dependency for your
    # applications.
    #
    #  </note>
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tracker({
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteTracker AWS API Documentation
    #
    # @overload delete_tracker(params = {})
    # @param [Hash] params ({})
    def delete_tracker(params = {}, options = {})
      req = build_request(:delete_tracker, params)
      req.send_request(options)
    end

    # Retrieves the geofence collection details.
    #
    # @option params [required, String] :collection_name
    #   The name of the geofence collection.
    #
    # @return [Types::DescribeGeofenceCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGeofenceCollectionResponse#collection_arn #collection_arn} => String
    #   * {Types::DescribeGeofenceCollectionResponse#collection_name #collection_name} => String
    #   * {Types::DescribeGeofenceCollectionResponse#create_time #create_time} => Time
    #   * {Types::DescribeGeofenceCollectionResponse#description #description} => String
    #   * {Types::DescribeGeofenceCollectionResponse#pricing_plan #pricing_plan} => String
    #   * {Types::DescribeGeofenceCollectionResponse#pricing_plan_data_source #pricing_plan_data_source} => String
    #   * {Types::DescribeGeofenceCollectionResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_geofence_collection({
    #     collection_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.collection_arn #=> String
    #   resp.collection_name #=> String
    #   resp.create_time #=> Time
    #   resp.description #=> String
    #   resp.pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.pricing_plan_data_source #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeGeofenceCollection AWS API Documentation
    #
    # @overload describe_geofence_collection(params = {})
    # @param [Hash] params ({})
    def describe_geofence_collection(params = {}, options = {})
      req = build_request(:describe_geofence_collection, params)
      req.send_request(options)
    end

    # Retrieves the map resource details.
    #
    # @option params [required, String] :map_name
    #   The name of the map resource.
    #
    # @return [Types::DescribeMapResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMapResponse#configuration #configuration} => Types::MapConfiguration
    #   * {Types::DescribeMapResponse#create_time #create_time} => Time
    #   * {Types::DescribeMapResponse#data_source #data_source} => String
    #   * {Types::DescribeMapResponse#description #description} => String
    #   * {Types::DescribeMapResponse#map_arn #map_arn} => String
    #   * {Types::DescribeMapResponse#map_name #map_name} => String
    #   * {Types::DescribeMapResponse#pricing_plan #pricing_plan} => String
    #   * {Types::DescribeMapResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_map({
    #     map_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.style #=> String
    #   resp.create_time #=> Time
    #   resp.data_source #=> String
    #   resp.description #=> String
    #   resp.map_arn #=> String
    #   resp.map_name #=> String
    #   resp.pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeMap AWS API Documentation
    #
    # @overload describe_map(params = {})
    # @param [Hash] params ({})
    def describe_map(params = {}, options = {})
      req = build_request(:describe_map, params)
      req.send_request(options)
    end

    # Retrieves the Place index resource details.
    #
    # @option params [required, String] :index_name
    #   The name of the Place index resource.
    #
    # @return [Types::DescribePlaceIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePlaceIndexResponse#create_time #create_time} => Time
    #   * {Types::DescribePlaceIndexResponse#data_source #data_source} => String
    #   * {Types::DescribePlaceIndexResponse#data_source_configuration #data_source_configuration} => Types::DataSourceConfiguration
    #   * {Types::DescribePlaceIndexResponse#description #description} => String
    #   * {Types::DescribePlaceIndexResponse#index_arn #index_arn} => String
    #   * {Types::DescribePlaceIndexResponse#index_name #index_name} => String
    #   * {Types::DescribePlaceIndexResponse#pricing_plan #pricing_plan} => String
    #   * {Types::DescribePlaceIndexResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_place_index({
    #     index_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.data_source #=> String
    #   resp.data_source_configuration.intended_use #=> String, one of "SingleUse", "Storage"
    #   resp.description #=> String
    #   resp.index_arn #=> String
    #   resp.index_name #=> String
    #   resp.pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribePlaceIndex AWS API Documentation
    #
    # @overload describe_place_index(params = {})
    # @param [Hash] params ({})
    def describe_place_index(params = {}, options = {})
      req = build_request(:describe_place_index, params)
      req.send_request(options)
    end

    # Retrieves the tracker resource details.
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource.
    #
    # @return [Types::DescribeTrackerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrackerResponse#create_time #create_time} => Time
    #   * {Types::DescribeTrackerResponse#description #description} => String
    #   * {Types::DescribeTrackerResponse#pricing_plan #pricing_plan} => String
    #   * {Types::DescribeTrackerResponse#pricing_plan_data_source #pricing_plan_data_source} => String
    #   * {Types::DescribeTrackerResponse#tracker_arn #tracker_arn} => String
    #   * {Types::DescribeTrackerResponse#tracker_name #tracker_name} => String
    #   * {Types::DescribeTrackerResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tracker({
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.description #=> String
    #   resp.pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.pricing_plan_data_source #=> String
    #   resp.tracker_arn #=> String
    #   resp.tracker_name #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeTracker AWS API Documentation
    #
    # @overload describe_tracker(params = {})
    # @param [Hash] params ({})
    def describe_tracker(params = {}, options = {})
      req = build_request(:describe_tracker, params)
      req.send_request(options)
    end

    # Removes the association between a tracker resource and a geofence
    # collection.
    #
    # <note markdown="1"> Once you unlink a tracker resource from a geofence collection, the
    # tracker positions will no longer be automatically evaluated against
    # geofences.
    #
    #  </note>
    #
    # @option params [required, String] :consumer_arn
    #   The Amazon Resource Name (ARN) for the geofence collection to be
    #   disassociated from the tracker resource. Used when you need to specify
    #   a resource across all AWS.
    #
    #   * Format example:
    #     `arn:partition:service:region:account-id:resource-type:resource-id`
    #
    #   ^
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to be dissociated from the consumer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_tracker_consumer({
    #     consumer_arn: "Arn", # required
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DisassociateTrackerConsumer AWS API Documentation
    #
    # @overload disassociate_tracker_consumer(params = {})
    # @param [Hash] params ({})
    def disassociate_tracker_consumer(params = {}, options = {})
      req = build_request(:disassociate_tracker_consumer, params)
      req.send_request(options)
    end

    # Retrieves a device's most recent position according to its sample
    # time.
    #
    # <note markdown="1"> Device positions are deleted after one year.
    #
    #  </note>
    #
    # @option params [required, String] :device_id
    #   The device whose position you want to retrieve.
    #
    # @option params [required, String] :tracker_name
    #   The tracker resource receiving the position update.
    #
    # @return [Types::GetDevicePositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevicePositionResponse#device_id #device_id} => String
    #   * {Types::GetDevicePositionResponse#position #position} => Array&lt;Float&gt;
    #   * {Types::GetDevicePositionResponse#received_time #received_time} => Time
    #   * {Types::GetDevicePositionResponse#sample_time #sample_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_position({
    #     device_id: "Id", # required
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_id #=> String
    #   resp.position #=> Array
    #   resp.position[0] #=> Float
    #   resp.received_time #=> Time
    #   resp.sample_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetDevicePosition AWS API Documentation
    #
    # @overload get_device_position(params = {})
    # @param [Hash] params ({})
    def get_device_position(params = {}, options = {})
      req = build_request(:get_device_position, params)
      req.send_request(options)
    end

    # Retrieves the device position history from a tracker resource within a
    # specified range of time.
    #
    # <note markdown="1"> Device positions are deleted after 1 year.
    #
    #  </note>
    #
    # @option params [required, String] :device_id
    #   The device whose position history you want to retrieve.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time_exclusive
    #   Specify the end time for the position history in [ ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`. By default, the value will be the
    #   time that the request is made.
    #
    #   Requirement:
    #
    #   * The time specified for `EndTimeExclusive` must be after the time for
    #     `StartTimeInclusive`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time_inclusive
    #   Specify the start time for the position history in [ ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`. By default, the value will be 24
    #   hours prior to the time that the request is made.
    #
    #   Requirement:
    #
    #   * The time specified for `StartTimeInclusive` must be before
    #     `EndTimeExclusive`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #
    # @option params [required, String] :tracker_name
    #   The tracker resource receiving the request for the device position
    #   history.
    #
    # @return [Types::GetDevicePositionHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevicePositionHistoryResponse#device_positions #device_positions} => Array&lt;Types::DevicePosition&gt;
    #   * {Types::GetDevicePositionHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_position_history({
    #     device_id: "Id", # required
    #     end_time_exclusive: Time.now,
    #     next_token: "Token",
    #     start_time_inclusive: Time.now,
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_positions #=> Array
    #   resp.device_positions[0].device_id #=> String
    #   resp.device_positions[0].position #=> Array
    #   resp.device_positions[0].position[0] #=> Float
    #   resp.device_positions[0].received_time #=> Time
    #   resp.device_positions[0].sample_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetDevicePositionHistory AWS API Documentation
    #
    # @overload get_device_position_history(params = {})
    # @param [Hash] params ({})
    def get_device_position_history(params = {}, options = {})
      req = build_request(:get_device_position_history, params)
      req.send_request(options)
    end

    # Retrieves the geofence details from a geofence collection.
    #
    # @option params [required, String] :collection_name
    #   The geofence collection storing the target geofence.
    #
    # @option params [required, String] :geofence_id
    #   The geofence you're retrieving details for.
    #
    # @return [Types::GetGeofenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGeofenceResponse#create_time #create_time} => Time
    #   * {Types::GetGeofenceResponse#geofence_id #geofence_id} => String
    #   * {Types::GetGeofenceResponse#geometry #geometry} => Types::GeofenceGeometry
    #   * {Types::GetGeofenceResponse#status #status} => String
    #   * {Types::GetGeofenceResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_geofence({
    #     collection_name: "ResourceName", # required
    #     geofence_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.geofence_id #=> String
    #   resp.geometry.polygon #=> Array
    #   resp.geometry.polygon[0] #=> Array
    #   resp.geometry.polygon[0][0] #=> Array
    #   resp.geometry.polygon[0][0][0] #=> Float
    #   resp.status #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetGeofence AWS API Documentation
    #
    # @overload get_geofence(params = {})
    # @param [Hash] params ({})
    def get_geofence(params = {}, options = {})
      req = build_request(:get_geofence, params)
      req.send_request(options)
    end

    # Retrieves glyphs used to display labels on a map.
    #
    # @option params [required, String] :font_stack
    #   A comma-separated list of fonts to load glyphs from in order of
    #   preference.. For example, `Noto Sans, Arial Unicode`.
    #
    # @option params [required, String] :font_unicode_range
    #   A Unicode range of characters to download glyphs for. Each response
    #   will contain 256 characters. For example, 0-255 includes all
    #   characters from range `U+0000` to `00FF`. Must be aligned to multiples
    #   of 256.
    #
    # @option params [required, String] :map_name
    #   The map resource associated with the glyph ﬁle.
    #
    # @return [Types::GetMapGlyphsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMapGlyphsResponse#blob #blob} => IO
    #   * {Types::GetMapGlyphsResponse#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_glyphs({
    #     font_stack: "String", # required
    #     font_unicode_range: "GetMapGlyphsRequestFontUnicodeRangeString", # required
    #     map_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapGlyphs AWS API Documentation
    #
    # @overload get_map_glyphs(params = {})
    # @param [Hash] params ({})
    def get_map_glyphs(params = {}, options = {}, &block)
      req = build_request(:get_map_glyphs, params)
      req.send_request(options, &block)
    end

    # Retrieves the sprite sheet corresponding to a map resource. The sprite
    # sheet is a PNG image paired with a JSON document describing the
    # offsets of individual icons that will be displayed on a rendered map.
    #
    # @option params [required, String] :file_name
    #   The name of the sprite ﬁle. Use the following ﬁle names for the sprite
    #   sheet:
    #
    #   * `sprites.png`
    #
    #   * `sprites@2x.png` for high pixel density displays
    #
    #   For the JSON document contain image offsets. Use the following ﬁle
    #   names:
    #
    #   * `sprites.json`
    #
    #   * `sprites@2x.json` for high pixel density displays
    #
    # @option params [required, String] :map_name
    #   The map resource associated with the sprite ﬁle.
    #
    # @return [Types::GetMapSpritesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMapSpritesResponse#blob #blob} => IO
    #   * {Types::GetMapSpritesResponse#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_sprites({
    #     file_name: "GetMapSpritesRequestFileNameString", # required
    #     map_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapSprites AWS API Documentation
    #
    # @overload get_map_sprites(params = {})
    # @param [Hash] params ({})
    def get_map_sprites(params = {}, options = {}, &block)
      req = build_request(:get_map_sprites, params)
      req.send_request(options, &block)
    end

    # Retrieves the map style descriptor from a map resource.
    #
    # The style descriptor contains speciﬁcations on how features render on
    # a map. For example, what data to display, what order to display the
    # data in, and the style for the data. Style descriptors follow the
    # Mapbox Style Specification.
    #
    # @option params [required, String] :map_name
    #   The map resource to retrieve the style descriptor from.
    #
    # @return [Types::GetMapStyleDescriptorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMapStyleDescriptorResponse#blob #blob} => IO
    #   * {Types::GetMapStyleDescriptorResponse#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_style_descriptor({
    #     map_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapStyleDescriptor AWS API Documentation
    #
    # @overload get_map_style_descriptor(params = {})
    # @param [Hash] params ({})
    def get_map_style_descriptor(params = {}, options = {}, &block)
      req = build_request(:get_map_style_descriptor, params)
      req.send_request(options, &block)
    end

    # Retrieves a vector data tile from the map resource. Map tiles are used
    # by clients to render a map. They are addressed using a grid
    # arrangement with an X coordinate, Y coordinate, and Z (zoom) level.
    #
    # The origin (0, 0) is the top left of the map. Increasing the zoom
    # level by 1 doubles both the X and Y dimensions, so a tile containing
    # data for the entire world at (0/0/0) will be split into 4 tiles at
    # zoom 1 (1/0/0, 1/0/1, 1/1/0, 1/1/1).
    #
    # @option params [required, String] :map_name
    #   The map resource to retrieve the map tiles from.
    #
    # @option params [required, String] :x
    #   The X axis value for the map tile.
    #
    # @option params [required, String] :y
    #   The Y axis value for the map tile.
    #
    # @option params [required, String] :z
    #   The zoom value for the map tile.
    #
    # @return [Types::GetMapTileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMapTileResponse#blob #blob} => IO
    #   * {Types::GetMapTileResponse#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_tile({
    #     map_name: "ResourceName", # required
    #     x: "GetMapTileRequestXString", # required
    #     y: "GetMapTileRequestYString", # required
    #     z: "GetMapTileRequestZString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapTile AWS API Documentation
    #
    # @overload get_map_tile(params = {})
    # @param [Hash] params ({})
    def get_map_tile(params = {}, options = {}, &block)
      req = build_request(:get_map_tile, params)
      req.send_request(options, &block)
    end

    # Lists geofence collections in your AWS account.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListGeofenceCollectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGeofenceCollectionsResponse#entries #entries} => Array&lt;Types::ListGeofenceCollectionsResponseEntry&gt;
    #   * {Types::ListGeofenceCollectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geofence_collections({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.entries #=> Array
    #   resp.entries[0].collection_name #=> String
    #   resp.entries[0].create_time #=> Time
    #   resp.entries[0].description #=> String
    #   resp.entries[0].pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.entries[0].pricing_plan_data_source #=> String
    #   resp.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofenceCollections AWS API Documentation
    #
    # @overload list_geofence_collections(params = {})
    # @param [Hash] params ({})
    def list_geofence_collections(params = {}, options = {})
      req = build_request(:list_geofence_collections, params)
      req.send_request(options)
    end

    # Lists geofences stored in a given geofence collection.
    #
    # @option params [required, String] :collection_name
    #   The name of the geofence collection storing the list of geofences.
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListGeofencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGeofencesResponse#entries #entries} => Array&lt;Types::ListGeofenceResponseEntry&gt;
    #   * {Types::ListGeofencesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geofences({
    #     collection_name: "ResourceName", # required
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.entries #=> Array
    #   resp.entries[0].create_time #=> Time
    #   resp.entries[0].geofence_id #=> String
    #   resp.entries[0].geometry.polygon #=> Array
    #   resp.entries[0].geometry.polygon[0] #=> Array
    #   resp.entries[0].geometry.polygon[0][0] #=> Array
    #   resp.entries[0].geometry.polygon[0][0][0] #=> Float
    #   resp.entries[0].status #=> String
    #   resp.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofences AWS API Documentation
    #
    # @overload list_geofences(params = {})
    # @param [Hash] params ({})
    def list_geofences(params = {}, options = {})
      req = build_request(:list_geofences, params)
      req.send_request(options)
    end

    # Lists map resources in your AWS account.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListMapsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMapsResponse#entries #entries} => Array&lt;Types::ListMapsResponseEntry&gt;
    #   * {Types::ListMapsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_maps({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.entries #=> Array
    #   resp.entries[0].create_time #=> Time
    #   resp.entries[0].data_source #=> String
    #   resp.entries[0].description #=> String
    #   resp.entries[0].map_name #=> String
    #   resp.entries[0].pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListMaps AWS API Documentation
    #
    # @overload list_maps(params = {})
    # @param [Hash] params ({})
    def list_maps(params = {}, options = {})
      req = build_request(:list_maps, params)
      req.send_request(options)
    end

    # Lists Place index resources in your AWS account.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the maximum number of results returned in a
    #   single call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListPlaceIndexesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlaceIndexesResponse#entries #entries} => Array&lt;Types::ListPlaceIndexesResponseEntry&gt;
    #   * {Types::ListPlaceIndexesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_place_indexes({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.entries #=> Array
    #   resp.entries[0].create_time #=> Time
    #   resp.entries[0].data_source #=> String
    #   resp.entries[0].description #=> String
    #   resp.entries[0].index_name #=> String
    #   resp.entries[0].pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListPlaceIndexes AWS API Documentation
    #
    # @overload list_place_indexes(params = {})
    # @param [Hash] params ({})
    def list_place_indexes(params = {}, options = {})
      req = build_request(:list_place_indexes, params)
      req.send_request(options)
    end

    # Lists geofence collections currently associated to the given tracker
    # resource.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @option params [required, String] :tracker_name
    #   The tracker resource whose associated geofence collections you want to
    #   list.
    #
    # @return [Types::ListTrackerConsumersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrackerConsumersResponse#consumer_arns #consumer_arns} => Array&lt;String&gt;
    #   * {Types::ListTrackerConsumersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tracker_consumers({
    #     max_results: 1,
    #     next_token: "Token",
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.consumer_arns #=> Array
    #   resp.consumer_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTrackerConsumers AWS API Documentation
    #
    # @overload list_tracker_consumers(params = {})
    # @param [Hash] params ({})
    def list_tracker_consumers(params = {}, options = {})
      req = build_request(:list_tracker_consumers, params)
      req.send_request(options)
    end

    # Lists tracker resources in your AWS account.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListTrackersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrackersResponse#entries #entries} => Array&lt;Types::ListTrackersResponseEntry&gt;
    #   * {Types::ListTrackersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trackers({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.entries #=> Array
    #   resp.entries[0].create_time #=> Time
    #   resp.entries[0].description #=> String
    #   resp.entries[0].pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.entries[0].pricing_plan_data_source #=> String
    #   resp.entries[0].tracker_name #=> String
    #   resp.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTrackers AWS API Documentation
    #
    # @overload list_trackers(params = {})
    # @param [Hash] params ({})
    def list_trackers(params = {}, options = {})
      req = build_request(:list_trackers, params)
      req.send_request(options)
    end

    # Stores a geofence geometry in a given geofence collection, or updates
    # the geometry of an existing geofence if a geofence ID is included in
    # the request.
    #
    # @option params [required, String] :collection_name
    #   The geofence collection to store the geofence in.
    #
    # @option params [required, String] :geofence_id
    #   An identifier for the geofence. For example, `ExampleGeofence-1`.
    #
    # @option params [required, Types::GeofenceGeometry] :geometry
    #   Contains the polygon details to specify the position of the geofence.
    #
    #   <note markdown="1"> Each [geofence polygon][1] can have a maximum of 1,000 vertices.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location-geofences/latest/APIReference/API_GeofenceGeometry.html
    #
    # @return [Types::PutGeofenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutGeofenceResponse#create_time #create_time} => Time
    #   * {Types::PutGeofenceResponse#geofence_id #geofence_id} => String
    #   * {Types::PutGeofenceResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_geofence({
    #     collection_name: "ResourceName", # required
    #     geofence_id: "Id", # required
    #     geometry: { # required
    #       polygon: [
    #         [
    #           [1.0],
    #         ],
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.geofence_id #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/PutGeofence AWS API Documentation
    #
    # @overload put_geofence(params = {})
    # @param [Hash] params ({})
    def put_geofence(params = {}, options = {})
      req = build_request(:put_geofence, params)
      req.send_request(options)
    end

    # Reverse geocodes a given coordinate and returns a legible address.
    # Allows you to search for Places or points of interest near a given
    # position.
    #
    # <note markdown="1"> By using Places, you agree that AWS may transmit your API queries to
    # your selected third party provider for processing, which may be
    # outside the AWS region you are currently using.
    #
    #  Because of licensing limitations, you may not use HERE to store
    # results for locations in Japan. For more information, see the [AWS
    # Service Terms][1] for Amazon Location Service.
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, String] :index_name
    #   The name of the Place index resource you want to use for the search.
    #
    # @option params [Integer] :max_results
    #   An optional paramer. The maximum number of results returned per
    #   request.
    #
    #   Default value: `50`
    #
    # @option params [required, Array<Float>] :position
    #   Specifies a coordinate for the query defined by a longitude, and
    #   latitude.
    #
    #   * The first position is the X coordinate, or longitude.
    #
    #   * The second position is the Y coordinate, or latitude.
    #
    #   For example, `position=xLongitude&position=yLatitude` .
    #
    # @return [Types::SearchPlaceIndexForPositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchPlaceIndexForPositionResponse#results #results} => Array&lt;Types::SearchForPositionResult&gt;
    #   * {Types::SearchPlaceIndexForPositionResponse#summary #summary} => Types::SearchPlaceIndexForPositionSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_place_index_for_position({
    #     index_name: "ResourceName", # required
    #     max_results: 1,
    #     position: [1.0], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].place.address_number #=> String
    #   resp.results[0].place.country #=> String
    #   resp.results[0].place.geometry.point #=> Array
    #   resp.results[0].place.geometry.point[0] #=> Float
    #   resp.results[0].place.label #=> String
    #   resp.results[0].place.municipality #=> String
    #   resp.results[0].place.neighborhood #=> String
    #   resp.results[0].place.postal_code #=> String
    #   resp.results[0].place.region #=> String
    #   resp.results[0].place.street #=> String
    #   resp.results[0].place.sub_region #=> String
    #   resp.summary.data_source #=> String
    #   resp.summary.max_results #=> Integer
    #   resp.summary.position #=> Array
    #   resp.summary.position[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForPosition AWS API Documentation
    #
    # @overload search_place_index_for_position(params = {})
    # @param [Hash] params ({})
    def search_place_index_for_position(params = {}, options = {})
      req = build_request(:search_place_index_for_position, params)
      req.send_request(options)
    end

    # Geocodes free-form text, such as an address, name, city, or region to
    # allow you to search for Places or points of interest.
    #
    # Includes the option to apply additional parameters to narrow your list
    # of results.
    #
    # <note markdown="1"> You can search for places near a given position using `BiasPosition`,
    # or filter results within a bounding box using `FilterBBox`. Providing
    # both parameters simultaneously returns an error.
    #
    #  </note>
    #
    # <note markdown="1"> By using Places, you agree that AWS may transmit your API queries to
    # your selected third party provider for processing, which may be
    # outside the AWS region you are currently using.
    #
    #  Also, when using HERE as your data provider, you may not (a) use HERE
    # Places for Asset Management, or (b) select the `Storage` option for
    # the `IntendedUse` parameter when requesting Places in Japan. For more
    # information, see the [AWS Service Terms][1] for Amazon Location
    # Service.
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms/
    #
    # @option params [Array<Float>] :bias_position
    #   Searches for results closest to the given position. An optional
    #   parameter defined by longitude, and latitude.
    #
    #   * The first `bias` position is the X coordinate, or longitude.
    #
    #   * The second `bias` position is the Y coordinate, or latitude.
    #
    #   For example, `bias=xLongitude&bias=yLatitude`.
    #
    # @option params [Array<Float>] :filter_b_box
    #   Filters the results by returning only Places within the provided
    #   bounding box. An optional parameter.
    #
    #   The first 2 `bbox` parameters describe the lower southwest corner:
    #
    #   * The first `bbox` position is the X coordinate or longitude of the
    #     lower southwest corner.
    #
    #   * The second `bbox` position is the Y coordinate or latitude of the
    #     lower southwest corner.
    #
    #   For example, `bbox=xLongitudeSW&bbox=yLatitudeSW`.
    #
    #   The next `bbox` parameters describe the upper northeast corner:
    #
    #   * The third `bbox` position is the X coordinate, or longitude of the
    #     upper northeast corner.
    #
    #   * The fourth `bbox` position is the Y coordinate, or longitude of the
    #     upper northeast corner.
    #
    #   For example, `bbox=xLongitudeNE&bbox=yLatitudeNE`
    #
    # @option params [Array<String>] :filter_countries
    #   Limits the search to the given a list of countries/regions. An
    #   optional parameter.
    #
    #   * Use the [ISO 3166][1] 3-digit country code. For example, Australia
    #     uses three upper-case characters: `AUS`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-3166-country-codes.html
    #
    # @option params [required, String] :index_name
    #   The name of the Place index resource you want to use for the search.
    #
    # @option params [Integer] :max_results
    #   An optional parameter. The maximum number of results returned per
    #   request.
    #
    #   The default: `50`
    #
    # @option params [required, String] :text
    #   The address, name, city, or region to be used in the search. In
    #   free-form text format. For example, `123 Any Street`.
    #
    # @return [Types::SearchPlaceIndexForTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchPlaceIndexForTextResponse#results #results} => Array&lt;Types::SearchForTextResult&gt;
    #   * {Types::SearchPlaceIndexForTextResponse#summary #summary} => Types::SearchPlaceIndexForTextSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_place_index_for_text({
    #     bias_position: [1.0],
    #     filter_b_box: [1.0],
    #     filter_countries: ["CountryCode"],
    #     index_name: "ResourceName", # required
    #     max_results: 1,
    #     text: "SyntheticSearchPlaceIndexForTextRequestString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].place.address_number #=> String
    #   resp.results[0].place.country #=> String
    #   resp.results[0].place.geometry.point #=> Array
    #   resp.results[0].place.geometry.point[0] #=> Float
    #   resp.results[0].place.label #=> String
    #   resp.results[0].place.municipality #=> String
    #   resp.results[0].place.neighborhood #=> String
    #   resp.results[0].place.postal_code #=> String
    #   resp.results[0].place.region #=> String
    #   resp.results[0].place.street #=> String
    #   resp.results[0].place.sub_region #=> String
    #   resp.summary.bias_position #=> Array
    #   resp.summary.bias_position[0] #=> Float
    #   resp.summary.data_source #=> String
    #   resp.summary.filter_b_box #=> Array
    #   resp.summary.filter_b_box[0] #=> Float
    #   resp.summary.filter_countries #=> Array
    #   resp.summary.filter_countries[0] #=> String
    #   resp.summary.max_results #=> Integer
    #   resp.summary.result_b_box #=> Array
    #   resp.summary.result_b_box[0] #=> Float
    #   resp.summary.text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForText AWS API Documentation
    #
    # @overload search_place_index_for_text(params = {})
    # @param [Hash] params ({})
    def search_place_index_for_text(params = {}, options = {})
      req = build_request(:search_place_index_for_text, params)
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
      context[:gem_name] = 'aws-sdk-locationservice'
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
