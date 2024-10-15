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
require 'aws-sdk-core/plugins/telemetry.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

module Aws::SupplyChain
  # An API client for SupplyChain.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SupplyChain::Client.new(
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

    @identifier = :supplychain

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
    add_plugin(Aws::SupplyChain::Plugins::Endpoints)

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
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'],
    #       ENV['AWS_SESSION_TOKEN'], and ENV['AWS_ACCOUNT_ID']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
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
    #   @option options [Aws::SupplyChain::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SupplyChain::EndpointParameters`.
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

    # CreateBillOfMaterialsImportJob creates an import job for the Product
    # Bill Of Materials (BOM) entity. For information on the product\_bom
    # entity, see the AWS Supply Chain User Guide.
    #
    # The CSV file must be located in an Amazon S3 location accessible to
    # AWS Supply Chain. It is recommended to use the same Amazon S3 bucket
    # created during your AWS Supply Chain instance creation.
    #
    # @option params [required, String] :instance_id
    #   The AWS Supply Chain instance identifier.
    #
    # @option params [required, String] :s3uri
    #   The S3 URI of the CSV file to be imported. The bucket must grant
    #   permissions for AWS Supply Chain to read the file.
    #
    # @option params [String] :client_token
    #   An idempotency token ensures the API request is only completed no more
    #   than once. This way, retrying the request will not trigger the
    #   operation multiple times. A client token is a unique, case-sensitive
    #   string of 33 to 128 ASCII characters. To make an idempotent API
    #   request, specify a client token in the request. You should not reuse
    #   the same client token for other requests. If you retry a successful
    #   request with the same client token, the request will succeed with no
    #   further actions being taken, and you will receive the same API
    #   response as the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateBillOfMaterialsImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBillOfMaterialsImportJobResponse#job_id #job_id} => String
    #
    #
    # @example Example: Invoke CreateBillOfMaterialsImportJob
    #
    #   resp = client.create_bill_of_materials_import_job({
    #     client_token: "550e8400-e29b-41d4-a716-446655440000", 
    #     instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243", 
    #     s3uri: "s3://mybucketname/pathelemene/file.csv", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bill_of_materials_import_job({
    #     instance_id: "UUID", # required
    #     s3uri: "ConfigurationS3Uri", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateBillOfMaterialsImportJob AWS API Documentation
    #
    # @overload create_bill_of_materials_import_job(params = {})
    # @param [Hash] params ({})
    def create_bill_of_materials_import_job(params = {}, options = {})
      req = build_request(:create_bill_of_materials_import_job, params)
      req.send_request(options)
    end

    # Create DataIntegrationFlow to map one or more different sources to one
    # target using the SQL transformation query.
    #
    # @option params [required, String] :instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #
    # @option params [required, String] :name
    #   Name of the DataIntegrationFlow.
    #
    # @option params [required, Array<Types::DataIntegrationFlowSource>] :sources
    #   The source configurations for DataIntegrationFlow.
    #
    # @option params [required, Types::DataIntegrationFlowTransformation] :transformation
    #   The transformation configurations for DataIntegrationFlow.
    #
    # @option params [required, Types::DataIntegrationFlowTarget] :target
    #   The target configurations for DataIntegrationFlow.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the DataIntegrationFlow to be created
    #
    # @return [Types::CreateDataIntegrationFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataIntegrationFlowResponse#instance_id #instance_id} => String
    #   * {Types::CreateDataIntegrationFlowResponse#name #name} => String
    #
    #
    # @example Example: Successful CreateDataIntegrationFlow for s3 to dataset flow
    #
    #   resp = client.create_data_integration_flow({
    #     name: "testStagingFlow", 
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #     sources: [
    #       {
    #         s3_source: {
    #           bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f", 
    #           prefix: "example-prefix", 
    #         }, 
    #         source_name: "testSourceName", 
    #         source_type: "S3", 
    #       }, 
    #     ], 
    #     tags: {
    #       "tagKey1" => "tagValue1", 
    #     }, 
    #     target: {
    #       dataset_target: {
    #         dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset", 
    #       }, 
    #       target_type: "DATASET", 
    #     }, 
    #     transformation: {
    #       sql_transformation: {
    #         query: "SELECT * FROM testSourceName", 
    #       }, 
    #       transformation_type: "SQL", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "testStagingFlow", 
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #   }
    #
    # @example Example: Successful CreateDataIntegrationFlow for dataset to dataset flow
    #
    #   resp = client.create_data_integration_flow({
    #     name: "trading-partner", 
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #     sources: [
    #       {
    #         dataset_source: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset1", 
    #         }, 
    #         source_name: "testSourceName1", 
    #         source_type: "DATASET", 
    #       }, 
    #       {
    #         dataset_source: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset2", 
    #         }, 
    #         source_name: "testSourceName2", 
    #         source_type: "DATASET", 
    #       }, 
    #     ], 
    #     tags: {
    #       "tagKey1" => "tagValue1", 
    #     }, 
    #     target: {
    #       dataset_target: {
    #         dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/asc/datasets/trading_partner", 
    #       }, 
    #       target_type: "DATASET", 
    #     }, 
    #     transformation: {
    #       sql_transformation: {
    #         query: "SELECT S1.id AS id, S1.poc_org_unit_description AS description, S1.company_id AS company_id, S1.tpartner_type AS tpartner_type, S1.geo_id AS geo_id, S1.eff_start_date AS eff_start_date, S1.eff_end_date AS eff_end_date FROM testSourceName1 AS S1 LEFT JOIN testSourceName2 as S2 ON S1.id=S2.id", 
    #       }, 
    #       transformation_type: "SQL", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "trading-partner", 
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_integration_flow({
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #     sources: [ # required
    #       {
    #         source_type: "S3", # required, accepts S3, DATASET
    #         source_name: "DataIntegrationFlowSourceName", # required
    #         s3_source: {
    #           bucket_name: "S3BucketName", # required
    #           prefix: "DataIntegrationFlowS3Prefix", # required
    #           options: {
    #             file_type: "CSV", # accepts CSV, PARQUET, JSON
    #           },
    #         },
    #         dataset_source: {
    #           dataset_identifier: "DatasetIdentifier", # required
    #           options: {
    #             load_type: "INCREMENTAL", # accepts INCREMENTAL, REPLACE
    #             dedupe_records: false,
    #           },
    #         },
    #       },
    #     ],
    #     transformation: { # required
    #       transformation_type: "SQL", # required, accepts SQL, NONE
    #       sql_transformation: {
    #         query: "DataIntegrationFlowSQLQuery", # required
    #       },
    #     },
    #     target: { # required
    #       target_type: "S3", # required, accepts S3, DATASET
    #       s3_target: {
    #         bucket_name: "S3BucketName", # required
    #         prefix: "DataIntegrationFlowS3Prefix", # required
    #         options: {
    #           file_type: "CSV", # accepts CSV, PARQUET, JSON
    #         },
    #       },
    #       dataset_target: {
    #         dataset_identifier: "DatasetIdentifier", # required
    #         options: {
    #           load_type: "INCREMENTAL", # accepts INCREMENTAL, REPLACE
    #           dedupe_records: false,
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateDataIntegrationFlow AWS API Documentation
    #
    # @overload create_data_integration_flow(params = {})
    # @param [Hash] params ({})
    def create_data_integration_flow(params = {}, options = {})
      req = build_request(:create_data_integration_flow, params)
      req.send_request(options)
    end

    # Create a data lake dataset.
    #
    # @option params [required, String] :instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #
    # @option params [required, String] :namespace
    #   The name space of the dataset.
    #
    #   * **asc** - For information on the Amazon Web Services Supply Chain
    #     supported datasets see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - For datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @option params [required, String] :name
    #   The name of the dataset. For **asc** name space, the name must be one
    #   of the supported data entities under
    #   [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @option params [Types::DataLakeDatasetSchema] :schema
    #   The custom schema of the data lake dataset and is only required when
    #   the name space is *default*.
    #
    # @option params [String] :description
    #   The description of the dataset.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the dataset.
    #
    # @return [Types::CreateDataLakeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataLakeDatasetResponse#dataset #dataset} => Types::DataLakeDataset
    #
    #
    # @example Example: Create an AWS Supply Chain inbound order dataset
    #
    #   resp = client.create_data_lake_dataset({
    #     name: "inbound_order", 
    #     description: "This is an AWS Supply Chain inbound order dataset", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "asc", 
    #     tags: {
    #       "tagKey1" => "tagValue1", 
    #       "tagKey2" => "tagValue2", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dataset: {
    #       name: "inbound_order", 
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/asc/datasets/inbound_order", 
    #       created_time: Time.parse(1727116807.751), 
    #       description: "This is an AWS Supply Chain inbound order dataset", 
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #       last_modified_time: Time.parse(1727116807.751), 
    #       namespace: "asc", 
    #       schema: {
    #         name: "InboundOrder", 
    #         fields: [
    #           {
    #             name: "id", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "tpartner_id", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "connection_id", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "order_type", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "order_status", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "inbound_order_url", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "order_creation_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "company_id", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "to_site_id", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "order_currency_uom", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "vendor_currency_uom", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "exchange_rate", 
    #             type: "DOUBLE", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "exchange_rate_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm2", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm_location_1", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm_location_2", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "submitted_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "agreement_start_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "agreement_end_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "shipping_instr_code", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "payment_terms_code", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "std_terms_agreement", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "std_terms_agreement_ver", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "agreement_number", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "source", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "source_update_dttm", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "source_event_id", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "db_creation_dttm", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "db_updation_dttm", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Example: Create a custom dataset
    #
    #   resp = client.create_data_lake_dataset({
    #     name: "my_dataset", 
    #     description: "This is a custom dataset", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "default", 
    #     schema: {
    #       name: "MyDataset", 
    #       fields: [
    #         {
    #           name: "id", 
    #           type: "INT", 
    #           is_required: true, 
    #         }, 
    #         {
    #           name: "description", 
    #           type: "STRING", 
    #           is_required: true, 
    #         }, 
    #         {
    #           name: "price", 
    #           type: "DOUBLE", 
    #           is_required: false, 
    #         }, 
    #         {
    #           name: "creation_time", 
    #           type: "TIMESTAMP", 
    #           is_required: false, 
    #         }, 
    #       ], 
    #     }, 
    #     tags: {
    #       "tagKey1" => "tagValue1", 
    #       "tagKey2" => "tagValue2", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dataset: {
    #       name: "my_dataset", 
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset", 
    #       created_time: Time.parse(1727116807.751), 
    #       description: "This is a custom dataset", 
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #       last_modified_time: Time.parse(1727116807.751), 
    #       namespace: "default", 
    #       schema: {
    #         name: "MyDataset", 
    #         fields: [
    #           {
    #             name: "id", 
    #             type: "INT", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "description", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "price", 
    #             type: "DOUBLE", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "creation_time", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_lake_dataset({
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeDatasetNamespace", # required
    #     name: "DataLakeDatasetName", # required
    #     schema: {
    #       name: "DataLakeDatasetSchemaName", # required
    #       fields: [ # required
    #         {
    #           name: "DataLakeDatasetSchemaFieldName", # required
    #           type: "INT", # required, accepts INT, DOUBLE, STRING, TIMESTAMP
    #           is_required: false, # required
    #         },
    #       ],
    #     },
    #     description: "DataLakeDatasetDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset.instance_id #=> String
    #   resp.dataset.namespace #=> String
    #   resp.dataset.name #=> String
    #   resp.dataset.arn #=> String
    #   resp.dataset.schema.name #=> String
    #   resp.dataset.schema.fields #=> Array
    #   resp.dataset.schema.fields[0].name #=> String
    #   resp.dataset.schema.fields[0].type #=> String, one of "INT", "DOUBLE", "STRING", "TIMESTAMP"
    #   resp.dataset.schema.fields[0].is_required #=> Boolean
    #   resp.dataset.description #=> String
    #   resp.dataset.created_time #=> Time
    #   resp.dataset.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateDataLakeDataset AWS API Documentation
    #
    # @overload create_data_lake_dataset(params = {})
    # @param [Hash] params ({})
    def create_data_lake_dataset(params = {}, options = {})
      req = build_request(:create_data_lake_dataset, params)
      req.send_request(options)
    end

    # Create a new instance for AWS Supply Chain. This is an asynchronous
    # operation. Upon receiving a CreateInstance request, AWS Supply Chain
    # immediately returns the instance resource, with instance ID, and the
    # initializing state while simultaneously creating all required Amazon
    # Web Services resources for an instance creation. You can use
    # GetInstance to check the status of the instance.
    #
    # @option params [String] :instance_name
    #   The AWS Supply Chain instance name.
    #
    # @option params [String] :instance_description
    #   The AWS Supply Chain instance description.
    #
    # @option params [String] :kms_key_arn
    #   The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
    #   you provide for encryption. This is required if you do not want to use
    #   the Amazon Web Services owned KMS key. If you don't provide anything
    #   here, AWS Supply Chain uses the Amazon Web Services owned KMS key.
    #
    # @option params [Hash<String,String>] :tags
    #   The Amazon Web Services tags of an instance to be created.
    #
    # @option params [String] :client_token
    #   The client token for idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceResponse#instance #instance} => Types::Instance
    #
    #
    # @example Example: Successful CreateInstance request with all input data
    #
    #   resp = client.create_instance({
    #     instance_description: "example instance description", 
    #     instance_name: "example instance name", 
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #     tags: {
    #       "tagKey1" => "tagValue1", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance: {
    #       aws_account_id: "123456789012", 
    #       created_time: Time.parse(172615383136), 
    #       instance_description: "example instance description", 
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #       instance_name: "example instance name", 
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #       last_modified_time: Time.parse(172615383136), 
    #       state: "Initializing", 
    #       version_number: 2.0, 
    #     }, 
    #   }
    #
    # @example Example: Successful CreateInstance request with no input data
    #
    #   resp = client.create_instance({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance: {
    #       aws_account_id: "123456789012", 
    #       created_time: Time.parse(172615383136), 
    #       instance_description: "", 
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #       kms_key_arn: "arn:aws:kms:us-west-2:456789012345:key/7372eb6d-874c-4212-8d49-7804282d33a8", 
    #       last_modified_time: Time.parse(172615383136), 
    #       state: "Initializing", 
    #       version_number: 2.0, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance({
    #     instance_name: "InstanceName",
    #     instance_description: "InstanceDescription",
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.instance_id #=> String
    #   resp.instance.aws_account_id #=> String
    #   resp.instance.state #=> String, one of "Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"
    #   resp.instance.web_app_dns_domain #=> String
    #   resp.instance.created_time #=> Time
    #   resp.instance.last_modified_time #=> Time
    #   resp.instance.instance_name #=> String
    #   resp.instance.instance_description #=> String
    #   resp.instance.kms_key_arn #=> String
    #   resp.instance.version_number #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateInstance AWS API Documentation
    #
    # @overload create_instance(params = {})
    # @param [Hash] params ({})
    def create_instance(params = {}, options = {})
      req = build_request(:create_instance, params)
      req.send_request(options)
    end

    # Delete the DataIntegrationFlow.
    #
    # @option params [required, String] :instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #
    # @option params [required, String] :name
    #   The name of the DataIntegrationFlow to be deleted.
    #
    # @return [Types::DeleteDataIntegrationFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataIntegrationFlowResponse#instance_id #instance_id} => String
    #   * {Types::DeleteDataIntegrationFlowResponse#name #name} => String
    #
    #
    # @example Example: Successful DeleteDataIntegrationFlow
    #
    #   resp = client.delete_data_integration_flow({
    #     name: "testStagingFlow", 
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "testStagingFlow", 
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_integration_flow({
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteDataIntegrationFlow AWS API Documentation
    #
    # @overload delete_data_integration_flow(params = {})
    # @param [Hash] params ({})
    def delete_data_integration_flow(params = {}, options = {})
      req = build_request(:delete_data_integration_flow, params)
      req.send_request(options)
    end

    # Delete a data lake dataset.
    #
    # @option params [required, String] :instance_id
    #   The AWS Supply Chain instance identifier.
    #
    # @option params [required, String] :namespace
    #   The namespace of the dataset. The available values are:
    #
    #   * asc: for [ AWS Supply Chain supported datasets ][1].
    #
    #   * default: for datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @option params [required, String] :name
    #   The name of the dataset. If the namespace is *asc*, the name must be
    #   one of the supported [data entities ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @return [Types::DeleteDataLakeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataLakeDatasetResponse#instance_id #instance_id} => String
    #   * {Types::DeleteDataLakeDatasetResponse#namespace #namespace} => String
    #   * {Types::DeleteDataLakeDatasetResponse#name #name} => String
    #
    #
    # @example Example: Delete an AWS Supply Chain inbound_order dataset
    #
    #   resp = client.delete_data_lake_dataset({
    #     name: "inbound_order", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "asc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "inbound_order", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "asc", 
    #   }
    #
    # @example Example: Delete a custom dataset
    #
    #   resp = client.delete_data_lake_dataset({
    #     name: "my_dataset", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "default", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "my_dataset", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "default", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_lake_dataset({
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeDatasetNamespace", # required
    #     name: "DataLakeDatasetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.namespace #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteDataLakeDataset AWS API Documentation
    #
    # @overload delete_data_lake_dataset(params = {})
    # @param [Hash] params ({})
    def delete_data_lake_dataset(params = {}, options = {})
      req = build_request(:delete_data_lake_dataset, params)
      req.send_request(options)
    end

    # Delete the instance. This is an asynchronous operation. Upon receiving
    # a DeleteInstance request, AWS Supply Chain immediately returns a
    # response with the instance resource, delete state while cleaning up
    # all Amazon Web Services resources created during the instance creation
    # process. You can use the GetInstance action to check the instance
    # status.
    #
    # @option params [required, String] :instance_id
    #   The AWS Supply Chain instance identifier.
    #
    # @return [Types::DeleteInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInstanceResponse#instance #instance} => Types::Instance
    #
    #
    # @example Example: Successful DeleteInstance request
    #
    #   resp = client.delete_instance({
    #     instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance: {
    #       aws_account_id: "123456789012", 
    #       created_time: Time.parse(172615383136), 
    #       instance_description: "updated example instance description", 
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #       instance_name: "updated example instance name", 
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #       last_modified_time: Time.parse(172615383136), 
    #       state: "Deleting", 
    #       version_number: 2.0, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance({
    #     instance_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.instance_id #=> String
    #   resp.instance.aws_account_id #=> String
    #   resp.instance.state #=> String, one of "Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"
    #   resp.instance.web_app_dns_domain #=> String
    #   resp.instance.created_time #=> Time
    #   resp.instance.last_modified_time #=> Time
    #   resp.instance.instance_name #=> String
    #   resp.instance.instance_description #=> String
    #   resp.instance.kms_key_arn #=> String
    #   resp.instance.version_number #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteInstance AWS API Documentation
    #
    # @overload delete_instance(params = {})
    # @param [Hash] params ({})
    def delete_instance(params = {}, options = {})
      req = build_request(:delete_instance, params)
      req.send_request(options)
    end

    # Get status and details of a BillOfMaterialsImportJob.
    #
    # @option params [required, String] :instance_id
    #   The AWS Supply Chain instance identifier.
    #
    # @option params [required, String] :job_id
    #   The BillOfMaterialsImportJob identifier.
    #
    # @return [Types::GetBillOfMaterialsImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBillOfMaterialsImportJobResponse#job #job} => Types::BillOfMaterialsImportJob
    #
    #
    # @example Example: Invoke GetBillOfMaterialsImportJob for a successful job
    #
    #   resp = client.get_bill_of_materials_import_job({
    #     instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243", 
    #     job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job: {
    #       instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243", 
    #       job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4", 
    #       message: "Import job completed successfully.", 
    #       s3uri: "s3://mybucketname/pathelemene/file.csv", 
    #       status: "SUCCESS", 
    #     }, 
    #   }
    #
    # @example Example: Invoke GetBillOfMaterialsImportJob for an in-progress job
    #
    #   resp = client.get_bill_of_materials_import_job({
    #     instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243", 
    #     job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job: {
    #       instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243", 
    #       job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4", 
    #       s3uri: "s3://mybucketname/pathelemene/file.csv", 
    #       status: "IN_PROGRESS", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bill_of_materials_import_job({
    #     instance_id: "UUID", # required
    #     job_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.instance_id #=> String
    #   resp.job.job_id #=> String
    #   resp.job.status #=> String, one of "NEW", "FAILED", "IN_PROGRESS", "QUEUED", "SUCCESS"
    #   resp.job.s3uri #=> String
    #   resp.job.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetBillOfMaterialsImportJob AWS API Documentation
    #
    # @overload get_bill_of_materials_import_job(params = {})
    # @param [Hash] params ({})
    def get_bill_of_materials_import_job(params = {}, options = {})
      req = build_request(:get_bill_of_materials_import_job, params)
      req.send_request(options)
    end

    # View the DataIntegrationFlow details.
    #
    # @option params [required, String] :instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #
    # @option params [required, String] :name
    #   The name of the DataIntegrationFlow created.
    #
    # @return [Types::GetDataIntegrationFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataIntegrationFlowResponse#flow #flow} => Types::DataIntegrationFlow
    #
    #
    # @example Example: Successful GetDataIntegrationFlow
    #
    #   resp = client.get_data_integration_flow({
    #     name: "testStagingFlow", 
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     flow: {
    #       name: "testStagingFlow", 
    #       created_time: Time.parse(1724956400.44), 
    #       instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #       last_modified_time: Time.parse(1724956400.44), 
    #       sources: [
    #         {
    #           s3_source: {
    #             bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f", 
    #             prefix: "example-prefix", 
    #           }, 
    #           source_name: "testSourceName", 
    #           source_type: "S3", 
    #         }, 
    #       ], 
    #       target: {
    #         dataset_target: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset", 
    #         }, 
    #         target_type: "DATASET", 
    #       }, 
    #       transformation: {
    #         sql_transformation: {
    #           query: "SELECT * FROM testSourceName", 
    #         }, 
    #         transformation_type: "SQL", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_integration_flow({
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow.instance_id #=> String
    #   resp.flow.name #=> String
    #   resp.flow.sources #=> Array
    #   resp.flow.sources[0].source_type #=> String, one of "S3", "DATASET"
    #   resp.flow.sources[0].source_name #=> String
    #   resp.flow.sources[0].s3_source.bucket_name #=> String
    #   resp.flow.sources[0].s3_source.prefix #=> String
    #   resp.flow.sources[0].s3_source.options.file_type #=> String, one of "CSV", "PARQUET", "JSON"
    #   resp.flow.sources[0].dataset_source.dataset_identifier #=> String
    #   resp.flow.sources[0].dataset_source.options.load_type #=> String, one of "INCREMENTAL", "REPLACE"
    #   resp.flow.sources[0].dataset_source.options.dedupe_records #=> Boolean
    #   resp.flow.transformation.transformation_type #=> String, one of "SQL", "NONE"
    #   resp.flow.transformation.sql_transformation.query #=> String
    #   resp.flow.target.target_type #=> String, one of "S3", "DATASET"
    #   resp.flow.target.s3_target.bucket_name #=> String
    #   resp.flow.target.s3_target.prefix #=> String
    #   resp.flow.target.s3_target.options.file_type #=> String, one of "CSV", "PARQUET", "JSON"
    #   resp.flow.target.dataset_target.dataset_identifier #=> String
    #   resp.flow.target.dataset_target.options.load_type #=> String, one of "INCREMENTAL", "REPLACE"
    #   resp.flow.target.dataset_target.options.dedupe_records #=> Boolean
    #   resp.flow.created_time #=> Time
    #   resp.flow.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataIntegrationFlow AWS API Documentation
    #
    # @overload get_data_integration_flow(params = {})
    # @param [Hash] params ({})
    def get_data_integration_flow(params = {}, options = {})
      req = build_request(:get_data_integration_flow, params)
      req.send_request(options)
    end

    # Get a data lake dataset.
    #
    # @option params [required, String] :instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #
    # @option params [required, String] :namespace
    #   The name space of the dataset. The available values are:
    #
    #   * **asc** - For information on the Amazon Web Services Supply Chain
    #     supported datasets see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - For datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @option params [required, String] :name
    #   The name of the dataset. For **asc** name space, the name must be one
    #   of the supported data entities under
    #   [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @return [Types::GetDataLakeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataLakeDatasetResponse#dataset #dataset} => Types::DataLakeDataset
    #
    #
    # @example Example: Get properties of an existing AWS Supply Chain inbound order dataset
    #
    #   resp = client.get_data_lake_dataset({
    #     name: "inbound_order", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "asc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dataset: {
    #       name: "inbound_order", 
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/asc/datasets/inbound_order", 
    #       created_time: Time.parse(1727116807.751), 
    #       description: "This is an AWS Supply Chain inbound order dataset", 
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #       last_modified_time: Time.parse(1727116807.751), 
    #       namespace: "asc", 
    #       schema: {
    #         name: "InboundOrder", 
    #         fields: [
    #           {
    #             name: "id", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "tpartner_id", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "connection_id", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "order_type", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "order_status", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "inbound_order_url", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "order_creation_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "company_id", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "to_site_id", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "order_currency_uom", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "vendor_currency_uom", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "exchange_rate", 
    #             type: "DOUBLE", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "exchange_rate_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm2", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm_location_1", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm_location_2", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "submitted_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "agreement_start_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "agreement_end_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "shipping_instr_code", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "payment_terms_code", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "std_terms_agreement", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "std_terms_agreement_ver", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "agreement_number", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "source", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "source_update_dttm", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "source_event_id", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "db_creation_dttm", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "db_updation_dttm", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Example: Get proporties of an existing custom dataset
    #
    #   resp = client.get_data_lake_dataset({
    #     name: "my_dataset", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "default", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dataset: {
    #       name: "my_dataset", 
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset", 
    #       created_time: Time.parse(1727116807.751), 
    #       description: "This is a custom dataset", 
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #       last_modified_time: Time.parse(1727116807.751), 
    #       namespace: "default", 
    #       schema: {
    #         name: "MyDataset", 
    #         fields: [
    #           {
    #             name: "id", 
    #             type: "INT", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "description", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "price", 
    #             type: "DOUBLE", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "creation_time", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_lake_dataset({
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeDatasetNamespace", # required
    #     name: "DataLakeDatasetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset.instance_id #=> String
    #   resp.dataset.namespace #=> String
    #   resp.dataset.name #=> String
    #   resp.dataset.arn #=> String
    #   resp.dataset.schema.name #=> String
    #   resp.dataset.schema.fields #=> Array
    #   resp.dataset.schema.fields[0].name #=> String
    #   resp.dataset.schema.fields[0].type #=> String, one of "INT", "DOUBLE", "STRING", "TIMESTAMP"
    #   resp.dataset.schema.fields[0].is_required #=> Boolean
    #   resp.dataset.description #=> String
    #   resp.dataset.created_time #=> Time
    #   resp.dataset.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataLakeDataset AWS API Documentation
    #
    # @overload get_data_lake_dataset(params = {})
    # @param [Hash] params ({})
    def get_data_lake_dataset(params = {}, options = {})
      req = build_request(:get_data_lake_dataset, params)
      req.send_request(options)
    end

    # Get the AWS Supply Chain instance details.
    #
    # @option params [required, String] :instance_id
    #   The AWS Supply Chain instance identifier
    #
    # @return [Types::GetInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceResponse#instance #instance} => Types::Instance
    #
    #
    # @example Example: Successful GetInstance request
    #
    #   resp = client.get_instance({
    #     instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance: {
    #       aws_account_id: "123456789012", 
    #       created_time: Time.parse(172615383136), 
    #       instance_description: "example instance description", 
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #       instance_name: "example instance name", 
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #       last_modified_time: Time.parse(172615383136), 
    #       state: "Active", 
    #       version_number: 2.0, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance({
    #     instance_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.instance_id #=> String
    #   resp.instance.aws_account_id #=> String
    #   resp.instance.state #=> String, one of "Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"
    #   resp.instance.web_app_dns_domain #=> String
    #   resp.instance.created_time #=> Time
    #   resp.instance.last_modified_time #=> Time
    #   resp.instance.instance_name #=> String
    #   resp.instance.instance_description #=> String
    #   resp.instance.kms_key_arn #=> String
    #   resp.instance.version_number #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetInstance AWS API Documentation
    #
    # @overload get_instance(params = {})
    # @param [Hash] params ({})
    def get_instance(params = {}, options = {})
      req = build_request(:get_instance, params)
      req.send_request(options)
    end

    # Lists all the DataIntegrationFlows in a paginated way.
    #
    # @option params [required, String] :instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #
    # @option params [String] :next_token
    #   The pagination token to fetch the next page of the
    #   DataIntegrationFlows.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of DataIntegrationFlows to fetch in one
    #   paginated request.
    #
    # @return [Types::ListDataIntegrationFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataIntegrationFlowsResponse#flows #flows} => Array&lt;Types::DataIntegrationFlow&gt;
    #   * {Types::ListDataIntegrationFlowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Successful ListDataIntegrationFlow
    #
    #   resp = client.list_data_integration_flows({
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     flows: [
    #       {
    #         name: "testStagingFlow", 
    #         created_time: Time.parse(1724956400.44), 
    #         instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #         last_modified_time: Time.parse(1724956400.44), 
    #         sources: [
    #           {
    #             s3_source: {
    #               bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f", 
    #               prefix: "example-prefix", 
    #             }, 
    #             source_name: "testSourceName", 
    #             source_type: "S3", 
    #           }, 
    #         ], 
    #         target: {
    #           dataset_target: {
    #             dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset", 
    #           }, 
    #           target_type: "DATASET", 
    #         }, 
    #         transformation: {
    #           sql_transformation: {
    #             query: "SELECT * FROM testSourceName", 
    #           }, 
    #           transformation_type: "SQL", 
    #         }, 
    #       }, 
    #       {
    #         name: "trading-partner", 
    #         created_time: Time.parse(17235763506.88), 
    #         instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #         last_modified_time: Time.parse(17235763506.88), 
    #         sources: [
    #           {
    #             dataset_source: {
    #               dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset1", 
    #             }, 
    #             source_name: "testSourceName1", 
    #             source_type: "DATASET", 
    #           }, 
    #           {
    #             dataset_source: {
    #               dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset2", 
    #             }, 
    #             source_name: "testSourceName2", 
    #             source_type: "DATASET", 
    #           }, 
    #         ], 
    #         target: {
    #           dataset_target: {
    #             dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/asc/datasets/trading_partner", 
    #           }, 
    #           target_type: "DATASET", 
    #         }, 
    #         transformation: {
    #           sql_transformation: {
    #             query: "SELECT S1.id AS id, S1.poc_org_unit_description AS description, S1.company_id AS company_id, S1.tpartner_type AS tpartner_type, S1.geo_id AS geo_id, S1.eff_start_date AS eff_start_date, S1.eff_end_date AS eff_end_date FROM testSourceName1 AS S1 LEFT JOIN testSourceName2 as S2 ON S1.id=S2.id", 
    #           }, 
    #           transformation_type: "SQL", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_integration_flows({
    #     instance_id: "UUID", # required
    #     next_token: "DataIntegrationFlowNextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.flows #=> Array
    #   resp.flows[0].instance_id #=> String
    #   resp.flows[0].name #=> String
    #   resp.flows[0].sources #=> Array
    #   resp.flows[0].sources[0].source_type #=> String, one of "S3", "DATASET"
    #   resp.flows[0].sources[0].source_name #=> String
    #   resp.flows[0].sources[0].s3_source.bucket_name #=> String
    #   resp.flows[0].sources[0].s3_source.prefix #=> String
    #   resp.flows[0].sources[0].s3_source.options.file_type #=> String, one of "CSV", "PARQUET", "JSON"
    #   resp.flows[0].sources[0].dataset_source.dataset_identifier #=> String
    #   resp.flows[0].sources[0].dataset_source.options.load_type #=> String, one of "INCREMENTAL", "REPLACE"
    #   resp.flows[0].sources[0].dataset_source.options.dedupe_records #=> Boolean
    #   resp.flows[0].transformation.transformation_type #=> String, one of "SQL", "NONE"
    #   resp.flows[0].transformation.sql_transformation.query #=> String
    #   resp.flows[0].target.target_type #=> String, one of "S3", "DATASET"
    #   resp.flows[0].target.s3_target.bucket_name #=> String
    #   resp.flows[0].target.s3_target.prefix #=> String
    #   resp.flows[0].target.s3_target.options.file_type #=> String, one of "CSV", "PARQUET", "JSON"
    #   resp.flows[0].target.dataset_target.dataset_identifier #=> String
    #   resp.flows[0].target.dataset_target.options.load_type #=> String, one of "INCREMENTAL", "REPLACE"
    #   resp.flows[0].target.dataset_target.options.dedupe_records #=> Boolean
    #   resp.flows[0].created_time #=> Time
    #   resp.flows[0].last_modified_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataIntegrationFlows AWS API Documentation
    #
    # @overload list_data_integration_flows(params = {})
    # @param [Hash] params ({})
    def list_data_integration_flows(params = {}, options = {})
      req = build_request(:list_data_integration_flows, params)
      req.send_request(options)
    end

    # List the data lake datasets for a specific instance and name space.
    #
    # @option params [required, String] :instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #
    # @option params [required, String] :namespace
    #   The namespace of the dataset. The available values are:
    #
    #   * asc: for [ AWS Supply Chain supported datasets ][1].
    #
    #   * default: for datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @option params [String] :next_token
    #   The pagination token to fetch next page of datasets.
    #
    # @option params [Integer] :max_results
    #   The max number of datasets to fetch in this paginated request.
    #
    # @return [Types::ListDataLakeDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataLakeDatasetsResponse#datasets #datasets} => Array&lt;Types::DataLakeDataset&gt;
    #   * {Types::ListDataLakeDatasetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List AWS Supply Chain datasets
    #
    #   resp = client.list_data_lake_datasets({
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "asc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     datasets: [
    #       {
    #         name: "inbound_order", 
    #         arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/asc/datasets/inbound_order", 
    #         created_time: Time.parse(1727116807.751), 
    #         description: "This is an AWS Supply Chain inbound order dataset", 
    #         instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #         last_modified_time: Time.parse(1727116807.751), 
    #         namespace: "asc", 
    #         schema: {
    #           name: "InboundOrder", 
    #           fields: [
    #             {
    #               name: "id", 
    #               type: "STRING", 
    #               is_required: true, 
    #             }, 
    #             {
    #               name: "tpartner_id", 
    #               type: "STRING", 
    #               is_required: true, 
    #             }, 
    #             {
    #               name: "connection_id", 
    #               type: "STRING", 
    #               is_required: true, 
    #             }, 
    #             {
    #               name: "order_type", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "order_status", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "inbound_order_url", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "order_creation_date", 
    #               type: "TIMESTAMP", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "company_id", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "to_site_id", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "order_currency_uom", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "vendor_currency_uom", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "exchange_rate", 
    #               type: "DOUBLE", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "exchange_rate_date", 
    #               type: "TIMESTAMP", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "incoterm", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "incoterm2", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "incoterm_location_1", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "incoterm_location_2", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "submitted_date", 
    #               type: "TIMESTAMP", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "agreement_start_date", 
    #               type: "TIMESTAMP", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "agreement_end_date", 
    #               type: "TIMESTAMP", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "shipping_instr_code", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "payment_terms_code", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "std_terms_agreement", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "std_terms_agreement_ver", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "agreement_number", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "source", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "source_update_dttm", 
    #               type: "TIMESTAMP", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "source_event_id", 
    #               type: "STRING", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "db_creation_dttm", 
    #               type: "TIMESTAMP", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "db_updation_dttm", 
    #               type: "TIMESTAMP", 
    #               is_required: false, 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List custom datasets using pagination
    #
    #   resp = client.list_data_lake_datasets({
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     max_results: 2, 
    #     namespace: "default", 
    #     next_token: "next_token_returned_from_previous_list_request", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     datasets: [
    #       {
    #         name: "my_dataset", 
    #         arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset", 
    #         created_time: Time.parse(1727116807.751), 
    #         description: "This is a custom dataset", 
    #         instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #         last_modified_time: Time.parse(1727116807.751), 
    #         namespace: "default", 
    #         schema: {
    #           name: "MyDataset", 
    #           fields: [
    #             {
    #               name: "id", 
    #               type: "INT", 
    #               is_required: true, 
    #             }, 
    #             {
    #               name: "description", 
    #               type: "STRING", 
    #               is_required: true, 
    #             }, 
    #             {
    #               name: "price", 
    #               type: "DOUBLE", 
    #               is_required: false, 
    #             }, 
    #             {
    #               name: "creation_time", 
    #               type: "TIMESTAMP", 
    #               is_required: false, 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         name: "my_dataset_2", 
    #         arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset_2", 
    #         created_time: Time.parse(1727116907.751), 
    #         description: "This is a custom dataset 2", 
    #         instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #         last_modified_time: Time.parse(1727116907.751), 
    #         namespace: "default", 
    #         schema: {
    #           name: "MyDataset2", 
    #           fields: [
    #             {
    #               name: "id", 
    #               type: "INT", 
    #               is_required: true, 
    #             }, 
    #             {
    #               name: "description", 
    #               type: "STRING", 
    #               is_required: true, 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #     next_token: "next_token_for_next_list_request", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_lake_datasets({
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeDatasetNamespace", # required
    #     next_token: "DataLakeDatasetNextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datasets #=> Array
    #   resp.datasets[0].instance_id #=> String
    #   resp.datasets[0].namespace #=> String
    #   resp.datasets[0].name #=> String
    #   resp.datasets[0].arn #=> String
    #   resp.datasets[0].schema.name #=> String
    #   resp.datasets[0].schema.fields #=> Array
    #   resp.datasets[0].schema.fields[0].name #=> String
    #   resp.datasets[0].schema.fields[0].type #=> String, one of "INT", "DOUBLE", "STRING", "TIMESTAMP"
    #   resp.datasets[0].schema.fields[0].is_required #=> Boolean
    #   resp.datasets[0].description #=> String
    #   resp.datasets[0].created_time #=> Time
    #   resp.datasets[0].last_modified_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataLakeDatasets AWS API Documentation
    #
    # @overload list_data_lake_datasets(params = {})
    # @param [Hash] params ({})
    def list_data_lake_datasets(params = {}, options = {})
      req = build_request(:list_data_lake_datasets, params)
      req.send_request(options)
    end

    # List all the AWS Supply Chain instances in a paginated way.
    #
    # @option params [String] :next_token
    #   The pagination token to fetch the next page of instances.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of instances to fetch in this paginated
    #   request.
    #
    # @option params [Array<String>] :instance_name_filter
    #   The filter to ListInstances based on their names.
    #
    # @option params [Array<String>] :instance_state_filter
    #   The filter to ListInstances based on their state.
    #
    # @return [Types::ListInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesResponse#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::ListInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Successful ListInstance request with no input data
    #
    #   resp = client.list_instances({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instances: [
    #       {
    #         aws_account_id: "123456789012", 
    #         created_time: Time.parse(172615383136), 
    #         instance_description: "example instance description", 
    #         instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #         instance_name: "example instance name", 
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #         last_modified_time: Time.parse(172615383136), 
    #         state: "Active", 
    #         version_number: 2.0, 
    #       }, 
    #       {
    #         aws_account_id: "123456789012", 
    #         created_time: Time.parse(17261674383136), 
    #         instance_description: "example instance description", 
    #         instance_id: "3ad8116a-644d-4172-8dcb-20e51d314c14", 
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #         last_modified_time: Time.parse(17261674383136), 
    #         state: "Initializing", 
    #         version_number: 2.0, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Successful ListInstance request with filters
    #
    #   resp = client.list_instances({
    #     instance_name_filter: [
    #       "example instance name", 
    #     ], 
    #     instance_state_filter: [
    #       "Active", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instances: [
    #       {
    #         aws_account_id: "123456789012", 
    #         created_time: Time.parse(172615383136), 
    #         instance_description: "example instance description", 
    #         instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #         instance_name: "example instance name", 
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #         last_modified_time: Time.parse(172615383136), 
    #         state: "Active", 
    #         version_number: 2.0, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Successful ListInstance request with maxResult override
    #
    #   resp = client.list_instances({
    #     max_results: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instances: [
    #       {
    #         aws_account_id: "123456789012", 
    #         created_time: Time.parse(172615383136), 
    #         instance_description: "example instance description", 
    #         instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #         instance_name: "example instance name", 
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #         last_modified_time: Time.parse(172615383136), 
    #         state: "Active", 
    #         version_number: 2.0, 
    #       }, 
    #     ], 
    #     next_token: "AAQA-EFRSURBSGhtcng0c0dxbENwUHdnckVIbkFYNU1QVjRTZWN2ak5iMFVicC8zemlHOVF3SEpjSC9WTWJVVXBMV2Z1N3ZvZlQ0WEFBQUFmakI4QmdrcWhraUc5dzBCQndhZ2J6QnRBZ0VBTUdnR0NTcUdTSWIzRFFFSEFUQWVCZ2xnaGtnQlpRTUVBUzR3RVFRTTJibW9LemgrSWZTY0RaZEdBZ0VRZ0R2dDhsQnVGbGJ0dnFTZityWmNSWEVPbG93emJoSjhxOGNMbGQ1UGMvY0VRbWlTR3pQUFd4N2RraXY5Y0ovcS9vSmFYZVBGdWVHaU0zWmd0dz09n-rC1ejA5--7ltJxpDT2xP_i8xGqDPMOZfjpp8q6l5NuP9_bnBURvwwYhdqDriMK5_f96LuPEnPbuML-ItfgEiCcUy0p2tApvpZkZqOG5fbqP-4C5aDYPTffHLyq-MMqvfrGVJzL1nvkpZcnTkVR9VJsu5b8I0qqDW0H8EMKGgTo78U9lr4sj3Usi9VMwZxgKCBmr03HhFLYXOW--XMbIx0CTZF0fYIcRxmA_sVS6J7gpaB9yMcnzs5VUKokoA5JTcAPY5d1Y1VyE8KKxv51cfPgXw8OYCDbFQncw8mZPmE-VqxjFbksmk_FmghpPn9j2Ppoe-zr0LQ%3D", 
    #   }
    #
    # @example Example: Successful ListInstance request with nextToken
    #
    #   resp = client.list_instances({
    #     max_results: 1, 
    #     next_token: "AAQA-EFRSURBSGhtcng0c0dxbENwUHdnckVIbkFYNU1QVjRTZWN2ak5iMFVicC8zemlHOVF3SEpjSC9WTWJVVXBMV2Z1N3ZvZlQ0WEFBQUFmakI4QmdrcWhraUc5dzBCQndhZ2J6QnRBZ0VBTUdnR0NTcUdTSWIzRFFFSEFUQWVCZ2xnaGtnQlpRTUVBUzR3RVFRTTJibW9LemgrSWZTY0RaZEdBZ0VRZ0R2dDhsQnVGbGJ0dnFTZityWmNSWEVPbG93emJoSjhxOGNMbGQ1UGMvY0VRbWlTR3pQUFd4N2RraXY5Y0ovcS9vSmFYZVBGdWVHaU0zWmd0dz09n-rC1ejA5--7ltJxpDT2xP_i8xGqDPMOZfjpp8q6l5NuP9_bnBURvwwYhdqDriMK5_f96LuPEnPbuML-ItfgEiCcUy0p2tApvpZkZqOG5fbqP-4C5aDYPTffHLyq-MMqvfrGVJzL1nvkpZcnTkVR9VJsu5b8I0qqDW0H8EMKGgTo78U9lr4sj3Usi9VMwZxgKCBmr03HhFLYXOW--XMbIx0CTZF0fYIcRxmA_sVS6J7gpaB9yMcnzs5VUKokoA5JTcAPY5d1Y1VyE8KKxv51cfPgXw8OYCDbFQncw8mZPmE-VqxjFbksmk_FmghpPn9j2Ppoe-zr0LQ%3D", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instances: [
    #       {
    #         aws_account_id: "123456789012", 
    #         created_time: Time.parse(17261674383136), 
    #         instance_description: "example instance description", 
    #         instance_id: "3ad8116a-644d-4172-8dcb-20e51d314c14", 
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #         last_modified_time: Time.parse(17261674383136), 
    #         state: "Initializing", 
    #         version_number: 2.0, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     next_token: "InstanceNextToken",
    #     max_results: 1,
    #     instance_name_filter: ["InstanceName"],
    #     instance_state_filter: ["Initializing"], # accepts Initializing, Active, CreateFailed, DeleteFailed, Deleting, Deleted
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].aws_account_id #=> String
    #   resp.instances[0].state #=> String, one of "Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"
    #   resp.instances[0].web_app_dns_domain #=> String
    #   resp.instances[0].created_time #=> Time
    #   resp.instances[0].last_modified_time #=> Time
    #   resp.instances[0].instance_name #=> String
    #   resp.instances[0].instance_description #=> String
    #   resp.instances[0].kms_key_arn #=> String
    #   resp.instances[0].version_number #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # List all the tags for an Amazon Web ServicesSupply Chain resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Web Services Supply chain resource ARN that needs tags to
    #   be listed.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Successful ListTagsForResource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/data-integration-flows/my_flow1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "tagKey1" => "tagValue1", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AscResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Send the transactional data payload for the event with real-time data
    # for analysis or monitoring. The real-time data events are stored in an
    # Amazon Web Services service before being processed and stored in data
    # lake. New data events are synced with data lake at 5 PM GMT everyday.
    # The updated transactional data is available in data lake after
    # ingestion.
    #
    # @option params [required, String] :instance_id
    #   The AWS Supply Chain instance identifier.
    #
    # @option params [required, String] :event_type
    #   The data event type.
    #
    # @option params [required, String] :data
    #   The data payload of the event. For more information on the data schema
    #   to use, see [Data entities supported in AWS Supply Chain ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @option params [required, String] :event_group_id
    #   Event identifier (for example, orderId for InboundOrder) used for data
    #   sharing or partitioning.
    #
    # @option params [Time,DateTime,Date,Integer,String] :event_timestamp
    #   The event timestamp (in epoch seconds).
    #
    # @option params [String] :client_token
    #   The idempotent client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::SendDataIntegrationEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendDataIntegrationEventResponse#event_id #event_id} => String
    #
    #
    # @example Example: Successful SendDataIntegrationEvent for inboundorder event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"id\": \"inbound-order-id-test-123\", \"tpartner_id\": \"partner-id-test-123\" }", 
    #     event_group_id: "inboundOrderId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.inboundorder", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "c4132c1d-8f60-44a2-9932-f723c4f7b8a7", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for inboundorderline event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"id\": \"inbound-order-line-id-test-123\", \"order_id\": \"order-id-test-123\", \"tpartner_id\": \"partner-id-test-123\", \"product_id\": \"product-id-test-123\", \"quantity_submitted\": \"100.0\" }", 
    #     event_group_id: "inboundOrderLineId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.inboundorderline", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "45d95db2-d106-40e0-aa98-f1204230a691", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for inboundorderlineschedule event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"id\": \"inbound-order-line-schedule-id-test-123\", \"order_id\": \"order-id-test-123\", \"order_line_id\": \"order-line-id-test-123\", \"product_id\": \"product-id-test-123\"}", 
    #     event_group_id: "inboundOrderLineScheduleId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.inboundorderlineschedule", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "5abba995-7735-4d1e-95c4-7cc93e48cf9f", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for forecast event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"snapshot_date\": \"1672470400000\", \"product_id\": \"product-id-test-123\", \"site_id\": \"site-id-test-123\", \"region_id\": \"region-id-test-123\", \"product_group_id\": \"product-group-id-test-123\", \"forecast_start_dttm\": \"1672470400000\", \"forecast_end_dttm\": \"1672470400000\" }", 
    #     event_group_id: "forecastId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.forecast", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "29312d5b-f499-4dcd-b017-3dab3cd34d61", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for inventorylevel event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"snapshot_date\": \"1672470400000\", \"site_id\": \"site-id-test-123\", \"product_id\": \"product-id-test-123\", \"on_hand_inventory\": \"100.0\", \"inv_condition\": \"good\", \"lot_number\": \"lot-number-test-123\"}", 
    #     event_group_id: "inventoryLevelId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.inventorylevel", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "3aa78324-acd8-4fdd-a19e-231ea003c2b3", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for outboundorderline event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"id\": \"outbound-orderline-id-test-123\", \"cust_order_id\": \"cust-order-id-test-123\", \"product_id\": \"product-id-test-123\" }", 
    #     event_group_id: "outboundOrderLineId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.outboundorderline", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "959b7ef9-5e2d-4795-b1ca-5b16a3eb6b89", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for outboundshipment event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"id\": \"outbound-shipment-id-test-123\", \"cust_order_id\": \"cust-order-id-test-123\", \"cust_order_line_id\": \"cust-order-line-id-test-123\", \"product_id\": \"product-id-test-123\" }", 
    #     event_group_id: "outboundShipmentId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.outboundshipment", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "59feded3-5e46-4126-81bf-0137ca176ee0", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for processheader event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"process_id\": \"process-id-test-123\" }", 
    #     event_group_id: "processHeaderId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.processheader", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "564130eb-2d8a-4550-a768-ddf0daf7b4a9", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for processoperation event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"process_operation_id\": \"process-operation-id-test-123\", \"process_id\": \"process-id-test-123\" }", 
    #     event_group_id: "processOperationId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.processoperation", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "db5df408-89c7-4b9f-a326-016f6c2b3396", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for processproduct event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"process_product_id\": \"process-product-id-test-123\", \"process_id\": \"process-id-test-123\" }", 
    #     event_group_id: "processProductId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.processproduct", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "6929b275-485e-4035-a798-99077ca6d669", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for reservation event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"reservation_id\": \"reservation-id-test-123\", \"reservation_detail_id\": \"reservation-detail-id-test-123\" }", 
    #     event_group_id: "reservationId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.reservation", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "f6c55a8b-fde2-44f6-848a-9b4336c77209", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for shipment event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"id\": \"shipment-id-test-123\", \"supplier_tpartner_id\": \"supplier-tpartner-id-test-123\", \"product_id\": \"product-id-test-123\", \"order_id\": \"order-id-test-123\", \"order_line_id\": \"order-line-id-test-123\", \"package_id\": \"package-id-test-123\" }", 
    #     event_group_id: "shipmentId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.shipment", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "61d079d8-3f56-49bb-b35a-c0271a4e4f0a", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for shipmentstop event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"shipment_stop_id\": \"shipment-stop-id-test-123\", \"shipment_id\": \"shipment-id-test-123\" }", 
    #     event_group_id: "shipmentStopId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.shipmentstop", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "3610992a-fc2f-4da4-9beb-724994622ba1", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for shipmentstoporder event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"shipment_stop_order_id\": \"shipment-stop-order-id-test-123\", \"shipment_stop_id\": \"shipment-stop-id-test-123\", \"shipment_id\": \"shipment-id-test-123\" }", 
    #     event_group_id: "shipmentStopOrderId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.shipmentstoporder", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "1d550a60-9321-4d25-a132-9dd4b2d9e934", 
    #   }
    #
    # @example Example: Successful SendDataIntegrationEvent for supplyplan event type
    #
    #   resp = client.send_data_integration_event({
    #     data: "{\"supply_plan_id\": \"supply-plan-id-test-123\" }", 
    #     event_group_id: "supplyPlanId", 
    #     event_timestamp: Time.parse(1515531081.123), 
    #     event_type: "scn.data.supplyplan", 
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_id: "9abaee56-5dc4-4c31-8250-3206a651d8a1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_data_integration_event({
    #     instance_id: "UUID", # required
    #     event_type: "scn.data.forecast", # required, accepts scn.data.forecast, scn.data.inventorylevel, scn.data.inboundorder, scn.data.inboundorderline, scn.data.inboundorderlineschedule, scn.data.outboundorderline, scn.data.outboundshipment, scn.data.processheader, scn.data.processoperation, scn.data.processproduct, scn.data.reservation, scn.data.shipment, scn.data.shipmentstop, scn.data.shipmentstoporder, scn.data.supplyplan
    #     data: "DataIntegrationEventData", # required
    #     event_group_id: "DataIntegrationEventGroupId", # required
    #     event_timestamp: Time.now,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/SendDataIntegrationEvent AWS API Documentation
    #
    # @overload send_data_integration_event(params = {})
    # @param [Hash] params ({})
    def send_data_integration_event(params = {}, options = {})
      req = build_request(:send_data_integration_event, params)
      req.send_request(options)
    end

    # Create tags for an Amazon Web Services Supply chain resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Web Services Supply chain resource ARN that needs to be
    #   tagged.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags of the Amazon Web Services Supply chain resource to be
    #   created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Successful TagResource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/data-integration-flows/my_flow1", 
    #     tags: {
    #       "tagKey1" => "tagValue1", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AscResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Delete tags for an Amazon Web Services Supply chain resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Web Services Supply chain resource ARN that needs to be
    #   untagged.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to be deleted for an Amazon Web Services Supply
    #   Chain resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Successful UntagResource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/data-integration-flows/my_flow1", 
    #     tag_keys: [
    #       "tagKey1", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AscResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update the DataIntegrationFlow.
    #
    # @option params [required, String] :instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #
    # @option params [required, String] :name
    #   The name of the DataIntegrationFlow to be updated.
    #
    # @option params [Array<Types::DataIntegrationFlowSource>] :sources
    #   The new source configurations for the DataIntegrationFlow.
    #
    # @option params [Types::DataIntegrationFlowTransformation] :transformation
    #   The new transformation configurations for the DataIntegrationFlow.
    #
    # @option params [Types::DataIntegrationFlowTarget] :target
    #   The new target configurations for the DataIntegrationFlow.
    #
    # @return [Types::UpdateDataIntegrationFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataIntegrationFlowResponse#flow #flow} => Types::DataIntegrationFlow
    #
    #
    # @example Example: Successful UpdateDataIntegrationFlow for s3 to dataset flow to update SQL transformation
    #
    #   resp = client.update_data_integration_flow({
    #     name: "testStagingFlow", 
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #     sources: [
    #       {
    #         s3_source: {
    #           bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f", 
    #           prefix: "example-prefix", 
    #         }, 
    #         source_name: "testSourceName", 
    #         source_type: "S3", 
    #       }, 
    #     ], 
    #     target: {
    #       dataset_target: {
    #         dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset", 
    #       }, 
    #       target_type: "DATASET", 
    #     }, 
    #     transformation: {
    #       sql_transformation: {
    #         query: "SELECT connection_id, bukrs AS id, txtmd AS description FROM testSourceName WHERE langu = 'E'", 
    #       }, 
    #       transformation_type: "SQL", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     flow: {
    #       name: "testStagingFlow", 
    #       created_time: Time.parse(1724956400.44), 
    #       instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #       last_modified_time: Time.parse(1732456405.77), 
    #       sources: [
    #         {
    #           s3_source: {
    #             bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f", 
    #             prefix: "example-prefix", 
    #           }, 
    #           source_name: "testSourceName", 
    #           source_type: "S3", 
    #         }, 
    #       ], 
    #       target: {
    #         dataset_target: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset", 
    #         }, 
    #         target_type: "DATASET", 
    #       }, 
    #       transformation: {
    #         sql_transformation: {
    #           query: "SELECT connection_id, bukrs AS id, txtmd AS description FROM testSourceName WHERE langu = 'E'", 
    #         }, 
    #         transformation_type: "SQL", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Example: Successful UpdateDataIntegrationFlow for dataset to dataset flow to update sources
    #
    #   resp = client.update_data_integration_flow({
    #     name: "trading-partner", 
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #     sources: [
    #       {
    #         dataset_source: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset1", 
    #         }, 
    #         source_name: "testSourceName1", 
    #         source_type: "DATASET", 
    #       }, 
    #       {
    #         dataset_source: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset2_updated", 
    #         }, 
    #         source_name: "testSourceName2", 
    #         source_type: "DATASET", 
    #       }, 
    #     ], 
    #     target: {
    #       dataset_target: {
    #         dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/asc/datasets/trading_partner", 
    #       }, 
    #       target_type: "DATASET", 
    #     }, 
    #     transformation: {
    #       sql_transformation: {
    #         query: "SELECT S1.id AS id, S1.poc_org_unit_description AS description, S1.company_id AS company_id, S1.tpartner_type AS tpartner_type, S1.geo_id AS geo_id, S1.eff_start_date AS eff_start_date, S1.eff_end_date AS eff_end_date FROM testSourceName1 AS S1 LEFT JOIN testSourceName2 as S2 ON S1.id=S2.id", 
    #       }, 
    #       transformation_type: "SQL", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     flow: {
    #       name: "trading-partner", 
    #       created_time: Time.parse(1724956400.44), 
    #       instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d", 
    #       last_modified_time: Time.parse(1732456405.77), 
    #       sources: [
    #         {
    #           dataset_source: {
    #             dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset1", 
    #           }, 
    #           source_name: "testSourceName1", 
    #           source_type: "DATASET", 
    #         }, 
    #         {
    #           dataset_source: {
    #             dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset2_updated", 
    #           }, 
    #           source_name: "testSourceName2", 
    #           source_type: "DATASET", 
    #         }, 
    #       ], 
    #       target: {
    #         dataset_target: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/asc/datasets/trading_partner", 
    #         }, 
    #         target_type: "DATASET", 
    #       }, 
    #       transformation: {
    #         sql_transformation: {
    #           query: "SELECT S1.id AS id, S1.poc_org_unit_description AS description, S1.company_id AS company_id, S1.tpartner_type AS tpartner_type, S1.geo_id AS geo_id, S1.eff_start_date AS eff_start_date, S1.eff_end_date AS eff_end_date FROM testSourceName1 AS S1 LEFT JOIN testSourceName2 as S2 ON S1.id=S2.id", 
    #         }, 
    #         transformation_type: "SQL", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_integration_flow({
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #     sources: [
    #       {
    #         source_type: "S3", # required, accepts S3, DATASET
    #         source_name: "DataIntegrationFlowSourceName", # required
    #         s3_source: {
    #           bucket_name: "S3BucketName", # required
    #           prefix: "DataIntegrationFlowS3Prefix", # required
    #           options: {
    #             file_type: "CSV", # accepts CSV, PARQUET, JSON
    #           },
    #         },
    #         dataset_source: {
    #           dataset_identifier: "DatasetIdentifier", # required
    #           options: {
    #             load_type: "INCREMENTAL", # accepts INCREMENTAL, REPLACE
    #             dedupe_records: false,
    #           },
    #         },
    #       },
    #     ],
    #     transformation: {
    #       transformation_type: "SQL", # required, accepts SQL, NONE
    #       sql_transformation: {
    #         query: "DataIntegrationFlowSQLQuery", # required
    #       },
    #     },
    #     target: {
    #       target_type: "S3", # required, accepts S3, DATASET
    #       s3_target: {
    #         bucket_name: "S3BucketName", # required
    #         prefix: "DataIntegrationFlowS3Prefix", # required
    #         options: {
    #           file_type: "CSV", # accepts CSV, PARQUET, JSON
    #         },
    #       },
    #       dataset_target: {
    #         dataset_identifier: "DatasetIdentifier", # required
    #         options: {
    #           load_type: "INCREMENTAL", # accepts INCREMENTAL, REPLACE
    #           dedupe_records: false,
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.flow.instance_id #=> String
    #   resp.flow.name #=> String
    #   resp.flow.sources #=> Array
    #   resp.flow.sources[0].source_type #=> String, one of "S3", "DATASET"
    #   resp.flow.sources[0].source_name #=> String
    #   resp.flow.sources[0].s3_source.bucket_name #=> String
    #   resp.flow.sources[0].s3_source.prefix #=> String
    #   resp.flow.sources[0].s3_source.options.file_type #=> String, one of "CSV", "PARQUET", "JSON"
    #   resp.flow.sources[0].dataset_source.dataset_identifier #=> String
    #   resp.flow.sources[0].dataset_source.options.load_type #=> String, one of "INCREMENTAL", "REPLACE"
    #   resp.flow.sources[0].dataset_source.options.dedupe_records #=> Boolean
    #   resp.flow.transformation.transformation_type #=> String, one of "SQL", "NONE"
    #   resp.flow.transformation.sql_transformation.query #=> String
    #   resp.flow.target.target_type #=> String, one of "S3", "DATASET"
    #   resp.flow.target.s3_target.bucket_name #=> String
    #   resp.flow.target.s3_target.prefix #=> String
    #   resp.flow.target.s3_target.options.file_type #=> String, one of "CSV", "PARQUET", "JSON"
    #   resp.flow.target.dataset_target.dataset_identifier #=> String
    #   resp.flow.target.dataset_target.options.load_type #=> String, one of "INCREMENTAL", "REPLACE"
    #   resp.flow.target.dataset_target.options.dedupe_records #=> Boolean
    #   resp.flow.created_time #=> Time
    #   resp.flow.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateDataIntegrationFlow AWS API Documentation
    #
    # @overload update_data_integration_flow(params = {})
    # @param [Hash] params ({})
    def update_data_integration_flow(params = {}, options = {})
      req = build_request(:update_data_integration_flow, params)
      req.send_request(options)
    end

    # Update a data lake dataset.
    #
    # @option params [required, String] :instance_id
    #   The Amazon Web Services Chain instance identifier.
    #
    # @option params [required, String] :namespace
    #   The name space of the dataset. The available values are:
    #
    #   * **asc** - For information on the Amazon Web Services Supply Chain
    #     supported datasets see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - For datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @option params [required, String] :name
    #   The name of the dataset. For **asc** name space, the name must be one
    #   of the supported data entities under
    #   [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #
    # @option params [String] :description
    #   The updated description of the data lake dataset.
    #
    # @return [Types::UpdateDataLakeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataLakeDatasetResponse#dataset #dataset} => Types::DataLakeDataset
    #
    #
    # @example Example: Update description of an existing AWS Supply Chain inbound order dataset
    #
    #   resp = client.update_data_lake_dataset({
    #     name: "inbound_order", 
    #     description: "This is an updated AWS Supply Chain inbound order dataset", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "asc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dataset: {
    #       name: "inbound_order", 
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/asc/datasets/inbound_order", 
    #       created_time: Time.parse(1727116807.751), 
    #       description: "This is an updated AWS Supply Chain inbound order dataset", 
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #       last_modified_time: Time.parse(1727117453.568), 
    #       namespace: "asc", 
    #       schema: {
    #         name: "InboundOrder", 
    #         fields: [
    #           {
    #             name: "id", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "tpartner_id", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "connection_id", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "order_type", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "order_status", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "inbound_order_url", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "order_creation_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "company_id", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "to_site_id", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "order_currency_uom", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "vendor_currency_uom", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "exchange_rate", 
    #             type: "DOUBLE", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "exchange_rate_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm2", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm_location_1", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "incoterm_location_2", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "submitted_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "agreement_start_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "agreement_end_date", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "shipping_instr_code", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "payment_terms_code", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "std_terms_agreement", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "std_terms_agreement_ver", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "agreement_number", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "source", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "source_update_dttm", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "source_event_id", 
    #             type: "STRING", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "db_creation_dttm", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "db_updation_dttm", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Example: Update description of an existing custom dataset
    #
    #   resp = client.update_data_lake_dataset({
    #     name: "my_dataset", 
    #     description: "This is an updated custom dataset", 
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #     namespace: "default", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dataset: {
    #       name: "my_dataset", 
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset", 
    #       created_time: Time.parse(1727116807.751), 
    #       description: "This is an updated custom dataset", 
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5", 
    #       last_modified_time: Time.parse(1727117453.568), 
    #       namespace: "default", 
    #       schema: {
    #         name: "MyDataset", 
    #         fields: [
    #           {
    #             name: "id", 
    #             type: "INT", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "description", 
    #             type: "STRING", 
    #             is_required: true, 
    #           }, 
    #           {
    #             name: "price", 
    #             type: "DOUBLE", 
    #             is_required: false, 
    #           }, 
    #           {
    #             name: "creation_time", 
    #             type: "TIMESTAMP", 
    #             is_required: false, 
    #           }, 
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_lake_dataset({
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeDatasetNamespace", # required
    #     name: "DataLakeDatasetName", # required
    #     description: "DataLakeDatasetDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset.instance_id #=> String
    #   resp.dataset.namespace #=> String
    #   resp.dataset.name #=> String
    #   resp.dataset.arn #=> String
    #   resp.dataset.schema.name #=> String
    #   resp.dataset.schema.fields #=> Array
    #   resp.dataset.schema.fields[0].name #=> String
    #   resp.dataset.schema.fields[0].type #=> String, one of "INT", "DOUBLE", "STRING", "TIMESTAMP"
    #   resp.dataset.schema.fields[0].is_required #=> Boolean
    #   resp.dataset.description #=> String
    #   resp.dataset.created_time #=> Time
    #   resp.dataset.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateDataLakeDataset AWS API Documentation
    #
    # @overload update_data_lake_dataset(params = {})
    # @param [Hash] params ({})
    def update_data_lake_dataset(params = {}, options = {})
      req = build_request(:update_data_lake_dataset, params)
      req.send_request(options)
    end

    # Update the instance.
    #
    # @option params [required, String] :instance_id
    #   The AWS Supply Chain instance identifier.
    #
    # @option params [String] :instance_name
    #   The AWS Supply Chain instance name.
    #
    # @option params [String] :instance_description
    #   The AWS Supply Chain instance description.
    #
    # @return [Types::UpdateInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInstanceResponse#instance #instance} => Types::Instance
    #
    #
    # @example Example: Successful UpdateInstance request
    #
    #   resp = client.update_instance({
    #     instance_description: "updated example instance description", 
    #     instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #     instance_name: "updated example instance name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance: {
    #       aws_account_id: "123456789012", 
    #       created_time: Time.parse(172615383136), 
    #       instance_description: "updated example instance description", 
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793", 
    #       instance_name: "updated example instance name", 
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d", 
    #       last_modified_time: Time.parse(172615383136), 
    #       state: "Active", 
    #       version_number: 2.0, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance({
    #     instance_id: "UUID", # required
    #     instance_name: "InstanceName",
    #     instance_description: "InstanceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.instance_id #=> String
    #   resp.instance.aws_account_id #=> String
    #   resp.instance.state #=> String, one of "Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"
    #   resp.instance.web_app_dns_domain #=> String
    #   resp.instance.created_time #=> Time
    #   resp.instance.last_modified_time #=> Time
    #   resp.instance.instance_name #=> String
    #   resp.instance.instance_description #=> String
    #   resp.instance.kms_key_arn #=> String
    #   resp.instance.version_number #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateInstance AWS API Documentation
    #
    # @overload update_instance(params = {})
    # @param [Hash] params ({})
    def update_instance(params = {}, options = {})
      req = build_request(:update_instance, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SupplyChain')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-supplychain'
      context[:gem_version] = '1.17.0'
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
