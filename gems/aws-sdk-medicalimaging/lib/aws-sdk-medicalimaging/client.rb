# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::MedicalImaging
  # An API client for MedicalImaging.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MedicalImaging::Client.new(
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

    @identifier = :medicalimaging

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
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::MedicalImaging::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #   @option options [String] :account_id
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
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
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be an instance of any one of the
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
    #   @option options [Aws::MedicalImaging::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MedicalImaging::EndpointParameters`.
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
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
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

    # Copy an image set.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :source_image_set_id
    #   The source image set identifier.
    #
    # @option params [required, Types::CopyImageSetInformation] :copy_image_set_information
    #   Copy image set information.
    #
    # @option params [Boolean] :force
    #   Providing this parameter will force completion of the `CopyImageSet`
    #   operation, even if there are inconsistent Patient, Study, and/or
    #   Series level metadata elements between the `sourceImageSet` and
    #   `destinationImageSet`.
    #
    # @option params [Boolean] :promote_to_primary
    #   Providing this parameter will configure the `CopyImageSet` operation
    #   to promote the given image set to the primary DICOM hierarchy. If
    #   successful, a new primary image set ID will be returned as the
    #   destination image set.
    #
    # @return [Types::CopyImageSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyImageSetResponse#datastore_id #datastore_id} => String
    #   * {Types::CopyImageSetResponse#source_image_set_properties #source_image_set_properties} => Types::CopySourceImageSetProperties
    #   * {Types::CopyImageSetResponse#destination_image_set_properties #destination_image_set_properties} => Types::CopyDestinationImageSetProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_image_set({
    #     datastore_id: "DatastoreId", # required
    #     source_image_set_id: "ImageSetId", # required
    #     copy_image_set_information: { # required
    #       source_image_set: { # required
    #         latest_version_id: "ImageSetExternalVersionId", # required
    #         dicom_copies: {
    #           copiable_attributes: "CopiableAttributes", # required
    #         },
    #       },
    #       destination_image_set: {
    #         image_set_id: "ImageSetId", # required
    #         latest_version_id: "ImageSetExternalVersionId", # required
    #       },
    #     },
    #     force: false,
    #     promote_to_primary: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.source_image_set_properties.image_set_id #=> String
    #   resp.source_image_set_properties.latest_version_id #=> String
    #   resp.source_image_set_properties.image_set_state #=> String, one of "ACTIVE", "LOCKED", "DELETED"
    #   resp.source_image_set_properties.image_set_workflow_status #=> String, one of "CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED"
    #   resp.source_image_set_properties.created_at #=> Time
    #   resp.source_image_set_properties.updated_at #=> Time
    #   resp.source_image_set_properties.image_set_arn #=> String
    #   resp.destination_image_set_properties.image_set_id #=> String
    #   resp.destination_image_set_properties.latest_version_id #=> String
    #   resp.destination_image_set_properties.image_set_state #=> String, one of "ACTIVE", "LOCKED", "DELETED"
    #   resp.destination_image_set_properties.image_set_workflow_status #=> String, one of "CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED"
    #   resp.destination_image_set_properties.created_at #=> Time
    #   resp.destination_image_set_properties.updated_at #=> Time
    #   resp.destination_image_set_properties.image_set_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CopyImageSet AWS API Documentation
    #
    # @overload copy_image_set(params = {})
    # @param [Hash] params ({})
    def copy_image_set(params = {}, options = {})
      req = build_request(:copy_image_set, params)
      req.send_request(options)
    end

    # Create a data store.
    #
    # @option params [String] :datastore_name
    #   The data store name.
    #
    # @option params [required, String] :client_token
    #   A unique identifier for API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags provided when creating a data store.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) assigned to the Key Management Service
    #   (KMS) key for accessing encrypted data.
    #
    # @return [Types::CreateDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatastoreResponse#datastore_id #datastore_id} => String
    #   * {Types::CreateDatastoreResponse#datastore_status #datastore_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_datastore({
    #     datastore_name: "DatastoreName",
    #     client_token: "ClientToken", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.datastore_status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CreateDatastore AWS API Documentation
    #
    # @overload create_datastore(params = {})
    # @param [Hash] params ({})
    def create_datastore(params = {}, options = {})
      req = build_request(:create_datastore, params)
      req.send_request(options)
    end

    # Delete a data store.
    #
    # <note markdown="1"> Before a data store can be deleted, you must first delete all image
    # sets within it.
    #
    #  </note>
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @return [Types::DeleteDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDatastoreResponse#datastore_id #datastore_id} => String
    #   * {Types::DeleteDatastoreResponse#datastore_status #datastore_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_datastore({
    #     datastore_id: "DatastoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.datastore_status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DeleteDatastore AWS API Documentation
    #
    # @overload delete_datastore(params = {})
    # @param [Hash] params ({})
    def delete_datastore(params = {}, options = {})
      req = build_request(:delete_datastore, params)
      req.send_request(options)
    end

    # Delete an image set.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :image_set_id
    #   The image set identifier.
    #
    # @return [Types::DeleteImageSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImageSetResponse#datastore_id #datastore_id} => String
    #   * {Types::DeleteImageSetResponse#image_set_id #image_set_id} => String
    #   * {Types::DeleteImageSetResponse#image_set_state #image_set_state} => String
    #   * {Types::DeleteImageSetResponse#image_set_workflow_status #image_set_workflow_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_set({
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.image_set_id #=> String
    #   resp.image_set_state #=> String, one of "ACTIVE", "LOCKED", "DELETED"
    #   resp.image_set_workflow_status #=> String, one of "CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DeleteImageSet AWS API Documentation
    #
    # @overload delete_image_set(params = {})
    # @param [Hash] params ({})
    def delete_image_set(params = {}, options = {})
      req = build_request(:delete_image_set, params)
      req.send_request(options)
    end

    # Get the import job properties to learn more about the job or job
    # progress.
    #
    # <note markdown="1"> The `jobStatus` refers to the execution of the import job. Therefore,
    # an import job can return a `jobStatus` as `COMPLETED` even if
    # validation issues are discovered during the import process. If a
    # `jobStatus` returns as `COMPLETED`, we still recommend you review the
    # output manifests written to S3, as they provide details on the success
    # or failure of individual P10 object imports.
    #
    #  </note>
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :job_id
    #   The import job identifier.
    #
    # @return [Types::GetDICOMImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDICOMImportJobResponse#job_properties #job_properties} => Types::DICOMImportJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dicom_import_job({
    #     datastore_id: "DatastoreId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_properties.job_id #=> String
    #   resp.job_properties.job_name #=> String
    #   resp.job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.job_properties.datastore_id #=> String
    #   resp.job_properties.data_access_role_arn #=> String
    #   resp.job_properties.ended_at #=> Time
    #   resp.job_properties.submitted_at #=> Time
    #   resp.job_properties.input_s3_uri #=> String
    #   resp.job_properties.output_s3_uri #=> String
    #   resp.job_properties.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetDICOMImportJob AWS API Documentation
    #
    # @overload get_dicom_import_job(params = {})
    # @param [Hash] params ({})
    def get_dicom_import_job(params = {}, options = {})
      req = build_request(:get_dicom_import_job, params)
      req.send_request(options)
    end

    # Get data store properties.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @return [Types::GetDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatastoreResponse#datastore_properties #datastore_properties} => Types::DatastoreProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_datastore({
    #     datastore_id: "DatastoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_properties.datastore_id #=> String
    #   resp.datastore_properties.datastore_name #=> String
    #   resp.datastore_properties.datastore_status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED"
    #   resp.datastore_properties.kms_key_arn #=> String
    #   resp.datastore_properties.datastore_arn #=> String
    #   resp.datastore_properties.created_at #=> Time
    #   resp.datastore_properties.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetDatastore AWS API Documentation
    #
    # @overload get_datastore(params = {})
    # @param [Hash] params ({})
    def get_datastore(params = {}, options = {})
      req = build_request(:get_datastore, params)
      req.send_request(options)
    end

    # Get an image frame (pixel data) for an image set.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :image_set_id
    #   The image set identifier.
    #
    # @option params [required, Types::ImageFrameInformation] :image_frame_information
    #   Information about the image frame (pixel data) identifier.
    #
    # @return [Types::GetImageFrameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageFrameResponse#image_frame_blob #image_frame_blob} => IO
    #   * {Types::GetImageFrameResponse#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_frame({
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     image_frame_information: { # required
    #       image_frame_id: "ImageFrameId", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.image_frame_blob #=> IO
    #   resp.content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetImageFrame AWS API Documentation
    #
    # @overload get_image_frame(params = {})
    # @param [Hash] params ({})
    def get_image_frame(params = {}, options = {}, &block)
      req = build_request(:get_image_frame, params)
      req.send_request(options, &block)
    end

    # Get image set properties.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :image_set_id
    #   The image set identifier.
    #
    # @option params [String] :version_id
    #   The image set version identifier.
    #
    # @return [Types::GetImageSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageSetResponse#datastore_id #datastore_id} => String
    #   * {Types::GetImageSetResponse#image_set_id #image_set_id} => String
    #   * {Types::GetImageSetResponse#version_id #version_id} => String
    #   * {Types::GetImageSetResponse#image_set_state #image_set_state} => String
    #   * {Types::GetImageSetResponse#image_set_workflow_status #image_set_workflow_status} => String
    #   * {Types::GetImageSetResponse#created_at #created_at} => Time
    #   * {Types::GetImageSetResponse#updated_at #updated_at} => Time
    #   * {Types::GetImageSetResponse#deleted_at #deleted_at} => Time
    #   * {Types::GetImageSetResponse#message #message} => String
    #   * {Types::GetImageSetResponse#image_set_arn #image_set_arn} => String
    #   * {Types::GetImageSetResponse#overrides #overrides} => Types::Overrides
    #   * {Types::GetImageSetResponse#is_primary #is_primary} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_set({
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     version_id: "ImageSetExternalVersionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.image_set_id #=> String
    #   resp.version_id #=> String
    #   resp.image_set_state #=> String, one of "ACTIVE", "LOCKED", "DELETED"
    #   resp.image_set_workflow_status #=> String, one of "CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.deleted_at #=> Time
    #   resp.message #=> String
    #   resp.image_set_arn #=> String
    #   resp.overrides.forced #=> Boolean
    #   resp.is_primary #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetImageSet AWS API Documentation
    #
    # @overload get_image_set(params = {})
    # @param [Hash] params ({})
    def get_image_set(params = {}, options = {})
      req = build_request(:get_image_set, params)
      req.send_request(options)
    end

    # Get metadata attributes for an image set.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :image_set_id
    #   The image set identifier.
    #
    # @option params [String] :version_id
    #   The image set version identifier.
    #
    # @return [Types::GetImageSetMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageSetMetadataResponse#image_set_metadata_blob #image_set_metadata_blob} => IO
    #   * {Types::GetImageSetMetadataResponse#content_type #content_type} => String
    #   * {Types::GetImageSetMetadataResponse#content_encoding #content_encoding} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_set_metadata({
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     version_id: "ImageSetExternalVersionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_set_metadata_blob #=> IO
    #   resp.content_type #=> String
    #   resp.content_encoding #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetImageSetMetadata AWS API Documentation
    #
    # @overload get_image_set_metadata(params = {})
    # @param [Hash] params ({})
    def get_image_set_metadata(params = {}, options = {}, &block)
      req = build_request(:get_image_set_metadata, params)
      req.send_request(options, &block)
    end

    # List import jobs created for a specific data store.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [String] :job_status
    #   The filters for listing import jobs based on status.
    #
    # @option params [String] :next_token
    #   The pagination token used to request the list of import jobs on the
    #   next page.
    #
    # @option params [Integer] :max_results
    #   The max results count. The upper bound is determined by load testing.
    #
    # @return [Types::ListDICOMImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDICOMImportJobsResponse#job_summaries #job_summaries} => Array&lt;Types::DICOMImportJobSummary&gt;
    #   * {Types::ListDICOMImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dicom_import_jobs({
    #     datastore_id: "DatastoreId", # required
    #     job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summaries #=> Array
    #   resp.job_summaries[0].job_id #=> String
    #   resp.job_summaries[0].job_name #=> String
    #   resp.job_summaries[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.job_summaries[0].datastore_id #=> String
    #   resp.job_summaries[0].data_access_role_arn #=> String
    #   resp.job_summaries[0].ended_at #=> Time
    #   resp.job_summaries[0].submitted_at #=> Time
    #   resp.job_summaries[0].message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListDICOMImportJobs AWS API Documentation
    #
    # @overload list_dicom_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_dicom_import_jobs(params = {}, options = {})
      req = build_request(:list_dicom_import_jobs, params)
      req.send_request(options)
    end

    # List data stores.
    #
    # @option params [String] :datastore_status
    #   The data store status.
    #
    # @option params [String] :next_token
    #   The pagination token used to request the list of data stores on the
    #   next page.
    #
    # @option params [Integer] :max_results
    #   Valid Range: Minimum value of 1. Maximum value of 50.
    #
    # @return [Types::ListDatastoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatastoresResponse#datastore_summaries #datastore_summaries} => Array&lt;Types::DatastoreSummary&gt;
    #   * {Types::ListDatastoresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datastores({
    #     datastore_status: "CREATING", # accepts CREATING, CREATE_FAILED, ACTIVE, DELETING, DELETED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_summaries #=> Array
    #   resp.datastore_summaries[0].datastore_id #=> String
    #   resp.datastore_summaries[0].datastore_name #=> String
    #   resp.datastore_summaries[0].datastore_status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED"
    #   resp.datastore_summaries[0].datastore_arn #=> String
    #   resp.datastore_summaries[0].created_at #=> Time
    #   resp.datastore_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListDatastores AWS API Documentation
    #
    # @overload list_datastores(params = {})
    # @param [Hash] params ({})
    def list_datastores(params = {}, options = {})
      req = build_request(:list_datastores, params)
      req.send_request(options)
    end

    # List image set versions.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :image_set_id
    #   The image set identifier.
    #
    # @option params [String] :next_token
    #   The pagination token used to request the list of image set versions on
    #   the next page.
    #
    # @option params [Integer] :max_results
    #   The max results count.
    #
    # @return [Types::ListImageSetVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageSetVersionsResponse#image_set_properties_list #image_set_properties_list} => Array&lt;Types::ImageSetProperties&gt;
    #   * {Types::ListImageSetVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_set_versions({
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.image_set_properties_list #=> Array
    #   resp.image_set_properties_list[0].image_set_id #=> String
    #   resp.image_set_properties_list[0].version_id #=> String
    #   resp.image_set_properties_list[0].image_set_state #=> String, one of "ACTIVE", "LOCKED", "DELETED"
    #   resp.image_set_properties_list[0].image_set_workflow_status #=> String, one of "CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED"
    #   resp.image_set_properties_list[0].created_at #=> Time
    #   resp.image_set_properties_list[0].updated_at #=> Time
    #   resp.image_set_properties_list[0].deleted_at #=> Time
    #   resp.image_set_properties_list[0].message #=> String
    #   resp.image_set_properties_list[0].overrides.forced #=> Boolean
    #   resp.image_set_properties_list[0].is_primary #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListImageSetVersions AWS API Documentation
    #
    # @overload list_image_set_versions(params = {})
    # @param [Hash] params ({})
    def list_image_set_versions(params = {}, options = {})
      req = build_request(:list_image_set_versions, params)
      req.send_request(options)
    end

    # Lists all tags associated with a medical imaging resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the medical imaging resource to list
    #   tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Search image sets based on defined input attributes.
    #
    # <note markdown="1"> `SearchImageSets` accepts a single search query parameter and returns
    # a paginated response of all image sets that have the matching
    # criteria. All date range queries must be input as `(lowerBound,
    # upperBound)`.
    #
    #  By default, `SearchImageSets` uses the `updatedAt` field for sorting
    # in descending order from newest to oldest.
    #
    #  </note>
    #
    # @option params [required, String] :datastore_id
    #   The identifier of the data store where the image sets reside.
    #
    # @option params [Types::SearchCriteria] :search_criteria
    #   The search criteria that filters by applying a maximum of 1 item to
    #   `SearchByAttribute`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that can be returned in a search.
    #
    # @option params [String] :next_token
    #   The token used for pagination of results returned in the response. Use
    #   the token returned from the previous request to continue results where
    #   the previous request ended.
    #
    # @return [Types::SearchImageSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchImageSetsResponse#image_sets_metadata_summaries #image_sets_metadata_summaries} => Array&lt;Types::ImageSetsMetadataSummary&gt;
    #   * {Types::SearchImageSetsResponse#sort #data.sort} => Types::Sort (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::SearchImageSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_image_sets({
    #     datastore_id: "DatastoreId", # required
    #     search_criteria: {
    #       filters: [
    #         {
    #           values: [ # required
    #             {
    #               dicom_patient_id: "DICOMPatientId",
    #               dicom_accession_number: "DICOMAccessionNumber",
    #               dicom_study_id: "DICOMStudyId",
    #               dicom_study_instance_uid: "DICOMStudyInstanceUID",
    #               dicom_series_instance_uid: "DICOMSeriesInstanceUID",
    #               created_at: Time.now,
    #               updated_at: Time.now,
    #               dicom_study_date_and_time: {
    #                 dicom_study_date: "DICOMStudyDate", # required
    #                 dicom_study_time: "DICOMStudyTime",
    #               },
    #               is_primary: false,
    #             },
    #           ],
    #           operator: "EQUAL", # required, accepts EQUAL, BETWEEN
    #         },
    #       ],
    #       sort: {
    #         sort_order: "ASC", # required, accepts ASC, DESC
    #         sort_field: "updatedAt", # required, accepts updatedAt, createdAt, DICOMStudyDateAndTime
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_sets_metadata_summaries #=> Array
    #   resp.image_sets_metadata_summaries[0].image_set_id #=> String
    #   resp.image_sets_metadata_summaries[0].version #=> Integer
    #   resp.image_sets_metadata_summaries[0].created_at #=> Time
    #   resp.image_sets_metadata_summaries[0].updated_at #=> Time
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_patient_id #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_patient_name #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_patient_birth_date #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_patient_sex #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_study_instance_uid #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_study_id #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_study_description #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_number_of_study_related_series #=> Integer
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_number_of_study_related_instances #=> Integer
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_accession_number #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_series_instance_uid #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_series_modality #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_series_body_part #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_series_number #=> Integer
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_study_date #=> String
    #   resp.image_sets_metadata_summaries[0].dicom_tags.dicom_study_time #=> String
    #   resp.image_sets_metadata_summaries[0].is_primary #=> Boolean
    #   resp.data.sort.sort_order #=> String, one of "ASC", "DESC"
    #   resp.data.sort.sort_field #=> String, one of "updatedAt", "createdAt", "DICOMStudyDateAndTime"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/SearchImageSets AWS API Documentation
    #
    # @overload search_image_sets(params = {})
    # @param [Hash] params ({})
    def search_image_sets(params = {}, options = {})
      req = build_request(:search_image_sets, params)
      req.send_request(options)
    end

    # Start importing bulk data into an `ACTIVE` data store. The import job
    # imports DICOM P10 files found in the S3 prefix specified by the
    # `inputS3Uri` parameter. The import job stores processing results in
    # the file specified by the `outputS3Uri` parameter.
    #
    # @option params [String] :job_name
    #   The import job name.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants permission
    #   to access medical imaging resources.
    #
    # @option params [required, String] :client_token
    #   A unique identifier for API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :input_s3_uri
    #   The input prefix path for the S3 bucket that contains the DICOM files
    #   to be imported.
    #
    # @option params [required, String] :output_s3_uri
    #   The output prefix of the S3 bucket to upload the results of the DICOM
    #   import job.
    #
    # @option params [String] :input_owner_account_id
    #   The account ID of the source S3 bucket owner.
    #
    # @return [Types::StartDICOMImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDICOMImportJobResponse#datastore_id #datastore_id} => String
    #   * {Types::StartDICOMImportJobResponse#job_id #job_id} => String
    #   * {Types::StartDICOMImportJobResponse#job_status #job_status} => String
    #   * {Types::StartDICOMImportJobResponse#submitted_at #submitted_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_dicom_import_job({
    #     job_name: "JobName",
    #     data_access_role_arn: "RoleArn", # required
    #     client_token: "ClientToken", # required
    #     datastore_id: "DatastoreId", # required
    #     input_s3_uri: "S3Uri", # required
    #     output_s3_uri: "S3Uri", # required
    #     input_owner_account_id: "AwsAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.submitted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/StartDICOMImportJob AWS API Documentation
    #
    # @overload start_dicom_import_job(params = {})
    # @param [Hash] params ({})
    def start_dicom_import_job(params = {}, options = {})
      req = build_request(:start_dicom_import_job, params)
      req.send_request(options)
    end

    # Adds a user-specifed key and value tag to a medical imaging resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the medical imaging resource that
    #   tags are being added to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The user-specified key and value tag pairs added to a medical imaging
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a medical imaging resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the medical imaging resource that
    #   tags are being removed from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys for the tags to be removed from the medical imaging resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update image set metadata attributes.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :image_set_id
    #   The image set identifier.
    #
    # @option params [required, String] :latest_version_id
    #   The latest image set version identifier.
    #
    # @option params [Boolean] :force
    #   Setting this flag will force the `UpdateImageSetMetadata` operation
    #   for the following attributes:
    #
    #   * `Tag.StudyInstanceUID`, `Tag.SeriesInstanceUID`,
    #     `Tag.SOPInstanceUID`, and `Tag.StudyID`
    #
    #   * Adding, removing, or updating private tags for an individual SOP
    #     Instance
    #
    # @option params [required, Types::MetadataUpdates] :update_image_set_metadata_updates
    #   Update image set metadata updates.
    #
    # @return [Types::UpdateImageSetMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateImageSetMetadataResponse#datastore_id #datastore_id} => String
    #   * {Types::UpdateImageSetMetadataResponse#image_set_id #image_set_id} => String
    #   * {Types::UpdateImageSetMetadataResponse#latest_version_id #latest_version_id} => String
    #   * {Types::UpdateImageSetMetadataResponse#image_set_state #image_set_state} => String
    #   * {Types::UpdateImageSetMetadataResponse#image_set_workflow_status #image_set_workflow_status} => String
    #   * {Types::UpdateImageSetMetadataResponse#created_at #created_at} => Time
    #   * {Types::UpdateImageSetMetadataResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateImageSetMetadataResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_image_set_metadata({
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     latest_version_id: "ImageSetExternalVersionId", # required
    #     force: false,
    #     update_image_set_metadata_updates: { # required
    #       dicom_updates: {
    #         removable_attributes: "data",
    #         updatable_attributes: "data",
    #       },
    #       revert_to_version_id: "ImageSetExternalVersionId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.image_set_id #=> String
    #   resp.latest_version_id #=> String
    #   resp.image_set_state #=> String, one of "ACTIVE", "LOCKED", "DELETED"
    #   resp.image_set_workflow_status #=> String, one of "CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/UpdateImageSetMetadata AWS API Documentation
    #
    # @overload update_image_set_metadata(params = {})
    # @param [Hash] params ({})
    def update_image_set_metadata(params = {}, options = {})
      req = build_request(:update_image_set_metadata, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MedicalImaging')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-medicalimaging'
      context[:gem_version] = '1.30.0'
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
