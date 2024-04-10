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

Aws::Plugins::GlobalConfiguration.add_identifier(:supplychain)

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
    add_plugin(Aws::SupplyChain::Plugins::Endpoints)

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
    #   @option options [Aws::SupplyChain::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SupplyChain::EndpointParameters`
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
    #   An idempotency token.
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

    # Send transactional data events with real-time data for analysis or
    # monitoring.
    #
    # @option params [required, String] :instance_id
    #   The AWS Supply Chain instance identifier.
    #
    # @option params [required, String] :event_type
    #   The data event type.
    #
    # @option params [required, String] :data
    #   The data payload of the event.
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
      context[:gem_name] = 'aws-sdk-supplychain'
      context[:gem_version] = '1.2.0'
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
