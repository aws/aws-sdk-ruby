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
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

module Aws::QBusiness
  # An API client for QBusiness.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::QBusiness::Client.new(
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

    @identifier = :qbusiness

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
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::QBusiness::Plugins::Endpoints)

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
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Aws::QBusiness::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::QBusiness::EndpointParameters`.
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

    # Asynchronously deletes one or more documents added using the
    # `BatchPutDocument` API from an Amazon Q Business index.
    #
    # You can see the progress of the deletion, and any error messages
    # related to the process, by using CloudWatch.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application.
    #
    # @option params [required, String] :index_id
    #   The identifier of the Amazon Q Business index that contains the
    #   documents to delete.
    #
    # @option params [required, Array<Types::DeleteDocument>] :documents
    #   Documents deleted from the Amazon Q Business index.
    #
    # @option params [String] :data_source_sync_id
    #   The identifier of the data source sync during which the documents were
    #   deleted.
    #
    # @return [Types::BatchDeleteDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteDocumentResponse#failed_documents #failed_documents} => Array&lt;Types::FailedDocument&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_document({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     documents: [ # required
    #       {
    #         document_id: "DocumentId", # required
    #       },
    #     ],
    #     data_source_sync_id: "ExecutionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_documents #=> Array
    #   resp.failed_documents[0].id #=> String
    #   resp.failed_documents[0].error.error_message #=> String
    #   resp.failed_documents[0].error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   resp.failed_documents[0].data_source_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BatchDeleteDocument AWS API Documentation
    #
    # @overload batch_delete_document(params = {})
    # @param [Hash] params ({})
    def batch_delete_document(params = {}, options = {})
      req = build_request(:batch_delete_document, params)
      req.send_request(options)
    end

    # Adds one or more documents to an Amazon Q Business index.
    #
    # You use this API to:
    #
    # * ingest your structured and unstructured documents and documents
    #   stored in an Amazon S3 bucket into an Amazon Q Business index.
    #
    # * add custom attributes to documents in an Amazon Q Business index.
    #
    # * attach an access control list to the documents added to an Amazon Q
    #   Business index.
    #
    # You can see the progress of the deletion, and any error messages
    # related to the process, by using CloudWatch.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application.
    #
    # @option params [required, String] :index_id
    #   The identifier of the Amazon Q Business index to add the documents to.
    #
    # @option params [required, Array<Types::Document>] :documents
    #   One or more documents to add to the index.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access your S3 bucket.
    #
    # @option params [String] :data_source_sync_id
    #   The identifier of the data source sync during which the documents were
    #   added.
    #
    # @return [Types::BatchPutDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutDocumentResponse#failed_documents #failed_documents} => Array&lt;Types::FailedDocument&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_document({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     documents: [ # required
    #       {
    #         id: "DocumentId", # required
    #         attributes: [
    #           {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeValueStringValueString",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #         ],
    #         content: {
    #           blob: "data",
    #           s3: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
    #         },
    #         content_type: "PDF", # accepts PDF, HTML, MS_WORD, PLAIN_TEXT, PPT, RTF, XML, XSLT, MS_EXCEL, CSV, JSON, MD
    #         title: "Title",
    #         access_configuration: {
    #           access_controls: [ # required
    #             {
    #               principals: [ # required
    #                 {
    #                   user: {
    #                     id: "UserId",
    #                     access: "ALLOW", # required, accepts ALLOW, DENY
    #                     membership_type: "INDEX", # accepts INDEX, DATASOURCE
    #                   },
    #                   group: {
    #                     name: "GroupName",
    #                     access: "ALLOW", # required, accepts ALLOW, DENY
    #                     membership_type: "INDEX", # accepts INDEX, DATASOURCE
    #                   },
    #                 },
    #               ],
    #               member_relation: "AND", # accepts AND, OR
    #             },
    #           ],
    #           member_relation: "AND", # accepts AND, OR
    #         },
    #         document_enrichment_configuration: {
    #           inline_configurations: [
    #             {
    #               condition: {
    #                 key: "DocumentAttributeKey", # required
    #                 operator: "GREATER_THAN", # required, accepts GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
    #                 value: {
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               target: {
    #                 key: "DocumentAttributeKey", # required
    #                 value: {
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #                 attribute_value_operator: "DELETE", # accepts DELETE
    #               },
    #               document_content_operator: "DELETE", # accepts DELETE
    #             },
    #           ],
    #           pre_extraction_hook_configuration: {
    #             invocation_condition: {
    #               key: "DocumentAttributeKey", # required
    #               operator: "GREATER_THAN", # required, accepts GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
    #               value: {
    #                 string_value: "DocumentAttributeValueStringValueString",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             lambda_arn: "LambdaArn",
    #             s3_bucket_name: "S3BucketName",
    #             role_arn: "RoleArn",
    #           },
    #           post_extraction_hook_configuration: {
    #             invocation_condition: {
    #               key: "DocumentAttributeKey", # required
    #               operator: "GREATER_THAN", # required, accepts GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
    #               value: {
    #                 string_value: "DocumentAttributeValueStringValueString",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             lambda_arn: "LambdaArn",
    #             s3_bucket_name: "S3BucketName",
    #             role_arn: "RoleArn",
    #           },
    #         },
    #       },
    #     ],
    #     role_arn: "RoleArn",
    #     data_source_sync_id: "ExecutionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_documents #=> Array
    #   resp.failed_documents[0].id #=> String
    #   resp.failed_documents[0].error.error_message #=> String
    #   resp.failed_documents[0].error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   resp.failed_documents[0].data_source_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BatchPutDocument AWS API Documentation
    #
    # @overload batch_put_document(params = {})
    # @param [Hash] params ({})
    def batch_put_document(params = {}, options = {})
      req = build_request(:batch_put_document, params)
      req.send_request(options)
    end

    # Starts or continues a non-streaming Amazon Q Business conversation.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application linked to the
    #   Amazon Q Business conversation.
    #
    # @option params [String] :user_id
    #   The identifier of the user attached to the chat input.
    #
    # @option params [Array<String>] :user_groups
    #   The groups that a user associated with the chat input belongs to.
    #
    # @option params [String] :user_message
    #   A end user message in a conversation.
    #
    # @option params [Array<Types::AttachmentInput>] :attachments
    #   A list of files uploaded directly during chat. You can upload a
    #   maximum of 5 files of upto 10 MB each.
    #
    # @option params [Types::ActionExecution] :action_execution
    #   A request from an end user to perform an Amazon Q Business plugin
    #   action.
    #
    # @option params [Types::AuthChallengeResponse] :auth_challenge_response
    #   An authentication verification event response by a third party
    #   authentication server to Amazon Q Business.
    #
    # @option params [String] :conversation_id
    #   The identifier of the Amazon Q Business conversation.
    #
    # @option params [String] :parent_message_id
    #   The identifier of the previous system message in a conversation.
    #
    # @option params [Types::AttributeFilter] :attribute_filter
    #   Enables filtering of Amazon Q Business web experience responses based
    #   on document attributes or metadata fields.
    #
    # @option params [String] :chat_mode
    #   The chat modes available to an Amazon Q Business end user.
    #
    #   * `RETRIEVAL_MODE` - The default chat mode for an Amazon Q Business
    #     application. When this mode is enabled, Amazon Q Business generates
    #     responses only from data sources connected to an Amazon Q Business
    #     application.
    #
    #   * `CREATOR_MODE` - By selecting this mode, users can choose to
    #     generate responses only from the LLM knowledge, without consulting
    #     connected data sources, for a chat request.
    #
    #   * `PLUGIN_MODE` - By selecting this mode, users can choose to use
    #     plugins in chat.
    #
    #   For more information, see [Admin controls and guardrails][1],
    #   [Plugins][2], and [Conversation settings][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
    #   [2]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html
    #   [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
    #
    # @option params [Types::ChatModeConfiguration] :chat_mode_configuration
    #   The chat mode configuration for an Amazon Q Business application.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify a chat request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ChatSyncOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ChatSyncOutput#conversation_id #conversation_id} => String
    #   * {Types::ChatSyncOutput#system_message #system_message} => String
    #   * {Types::ChatSyncOutput#system_message_id #system_message_id} => String
    #   * {Types::ChatSyncOutput#user_message_id #user_message_id} => String
    #   * {Types::ChatSyncOutput#action_review #action_review} => Types::ActionReview
    #   * {Types::ChatSyncOutput#auth_challenge_request #auth_challenge_request} => Types::AuthChallengeRequest
    #   * {Types::ChatSyncOutput#source_attributions #source_attributions} => Array&lt;Types::SourceAttribution&gt;
    #   * {Types::ChatSyncOutput#failed_attachments #failed_attachments} => Array&lt;Types::AttachmentOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.chat_sync({
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #     user_groups: ["String"],
    #     user_message: "UserMessage",
    #     attachments: [
    #       {
    #         name: "AttachmentName", # required
    #         data: "data", # required
    #       },
    #     ],
    #     action_execution: {
    #       plugin_id: "PluginId", # required
    #       payload: { # required
    #         "ActionPayloadFieldKey" => {
    #           value: { # required
    #           },
    #         },
    #       },
    #       payload_field_name_separator: "ActionPayloadFieldNameSeparator", # required
    #     },
    #     auth_challenge_response: {
    #       response_map: { # required
    #         "AuthResponseKey" => "AuthResponseValue",
    #       },
    #     },
    #     conversation_id: "ConversationId",
    #     parent_message_id: "MessageId",
    #     attribute_filter: {
    #       and_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         },
    #       ],
    #       or_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         },
    #       ],
    #       not_filter: {
    #         # recursive AttributeFilter
    #       },
    #       equals_to: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeValueStringValueString",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       contains_all: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeValueStringValueString",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       contains_any: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeValueStringValueString",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       greater_than: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeValueStringValueString",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       greater_than_or_equals: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeValueStringValueString",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       less_than: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeValueStringValueString",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       less_than_or_equals: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeValueStringValueString",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #     },
    #     chat_mode: "RETRIEVAL_MODE", # accepts RETRIEVAL_MODE, CREATOR_MODE, PLUGIN_MODE
    #     chat_mode_configuration: {
    #       plugin_configuration: {
    #         plugin_id: "PluginId", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.conversation_id #=> String
    #   resp.system_message #=> String
    #   resp.system_message_id #=> String
    #   resp.user_message_id #=> String
    #   resp.action_review.plugin_id #=> String
    #   resp.action_review.plugin_type #=> String, one of "SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM"
    #   resp.action_review.payload #=> Hash
    #   resp.action_review.payload["ActionPayloadFieldKey"].display_name #=> String
    #   resp.action_review.payload["ActionPayloadFieldKey"].display_order #=> Integer
    #   resp.action_review.payload["ActionPayloadFieldKey"].display_description #=> String
    #   resp.action_review.payload["ActionPayloadFieldKey"].type #=> String, one of "STRING", "NUMBER", "ARRAY", "BOOLEAN"
    #   resp.action_review.payload["ActionPayloadFieldKey"].allowed_values #=> Array
    #   resp.action_review.payload["ActionPayloadFieldKey"].allowed_format #=> String
    #   resp.action_review.payload["ActionPayloadFieldKey"].required #=> Boolean
    #   resp.action_review.payload_field_name_separator #=> String
    #   resp.auth_challenge_request.authorization_url #=> String
    #   resp.source_attributions #=> Array
    #   resp.source_attributions[0].title #=> String
    #   resp.source_attributions[0].snippet #=> String
    #   resp.source_attributions[0].url #=> String
    #   resp.source_attributions[0].citation_number #=> Integer
    #   resp.source_attributions[0].updated_at #=> Time
    #   resp.source_attributions[0].text_message_segments #=> Array
    #   resp.source_attributions[0].text_message_segments[0].begin_offset #=> Integer
    #   resp.source_attributions[0].text_message_segments[0].end_offset #=> Integer
    #   resp.source_attributions[0].text_message_segments[0].snippet_excerpt.text #=> String
    #   resp.failed_attachments #=> Array
    #   resp.failed_attachments[0].name #=> String
    #   resp.failed_attachments[0].status #=> String, one of "FAILED", "SUCCEEDED"
    #   resp.failed_attachments[0].error.error_message #=> String
    #   resp.failed_attachments[0].error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatSync AWS API Documentation
    #
    # @overload chat_sync(params = {})
    # @param [Hash] params ({})
    def chat_sync(params = {}, options = {})
      req = build_request(:chat_sync, params)
      req.send_request(options)
    end

    # Creates an Amazon Q Business application.
    #
    # <note markdown="1"> There are new tiers for Amazon Q Business. Not all features in Amazon
    # Q Business Pro are also available in Amazon Q Business Lite. For
    # information on what's included in Amazon Q Business Lite and what's
    # included in Amazon Q Business Pro, see [Amazon Q Business tiers][1].
    # You must use the Amazon Q Business console to assign subscription
    # tiers to users.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#user-sub-tiers
    #
    # @option params [required, String] :display_name
    #   A name for the Amazon Q Business application.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permissions to
    #   access your Amazon CloudWatch logs and metrics.
    #
    # @option params [String] :identity_type
    #   The authentication type being used by a Amazon Q Business application.
    #
    # @option params [String] :iam_identity_provider_arn
    #   The Amazon Resource Name (ARN) of an identity provider being used by
    #   an Amazon Q Business application.
    #
    # @option params [String] :identity_center_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance you
    #   are either creating for—or connecting to—your Amazon Q Business
    #   application.
    #
    # @option params [Array<String>] :client_ids_for_oidc
    #   The OIDC client ID for a Amazon Q Business application.
    #
    # @option params [String] :description
    #   A description for the Amazon Q Business application.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   The identifier of the KMS key that is used to encrypt your data.
    #   Amazon Q Business doesn't support asymmetric keys.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize your Amazon Q
    #   Business application. You can also use tags to help control access to
    #   the application. Tag keys and values can consist of Unicode letters,
    #   digits, white space, and any of the following symbols: \_ . : / = + -
    #   @.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create your Amazon
    #   Q Business application.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::AttachmentsConfiguration] :attachments_configuration
    #   An option to allow end users to upload files directly during chat.
    #
    # @option params [Types::QAppsConfiguration] :q_apps_configuration
    #   An option to allow end users to create and use Amazon Q Apps in the
    #   web experience.
    #
    # @option params [Types::PersonalizationConfiguration] :personalization_configuration
    #   Configuration information about chat response personalization. For
    #   more information, see [Personalizing chat responses][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application_id #application_id} => String
    #   * {Types::CreateApplicationResponse#application_arn #application_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     display_name: "ApplicationName", # required
    #     role_arn: "RoleArn",
    #     identity_type: "AWS_IAM_IDP_SAML", # accepts AWS_IAM_IDP_SAML, AWS_IAM_IDP_OIDC, AWS_IAM_IDC
    #     iam_identity_provider_arn: "IamIdentityProviderArn",
    #     identity_center_instance_arn: "InstanceArn",
    #     client_ids_for_oidc: ["ClientIdForOIDC"],
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     attachments_configuration: {
    #       attachments_control_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     q_apps_configuration: {
    #       q_apps_control_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     personalization_configuration: {
    #       personalization_control_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates a data source connector for an Amazon Q Business application.
    #
    # `CreateDataSource` is a synchronous operation. The operation returns
    # 200 if the data source was successfully created. Otherwise, an
    # exception is raised.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application the data source
    #   will be attached to.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that you want to use with the data source
    #   connector.
    #
    # @option params [required, String] :display_name
    #   A name for the data source connector.
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :configuration
    #   Configuration information to connect your data source repository to
    #   Amazon Q Business. Use this parameter to provide a JSON schema with
    #   configuration information specific to your data source connector.
    #
    #   Each data source has a JSON schema provided by Amazon Q Business that
    #   you must use. For example, the Amazon S3 and Web Crawler connectors
    #   require the following JSON schemas:
    #
    #   * [Amazon S3 JSON schema][1]
    #
    #   * [Web Crawler JSON schema][2]
    #
    #   You can find configuration templates for your specific data source
    #   using the following steps:
    #
    #   1.  Navigate to the [Supported connectors][3] page in the Amazon Q
    #       Business User Guide, and select the data source of your choice.
    #
    #   2.  Then, from your specific data source connector page, select
    #       **Using the API**. You will find the JSON schema for your data
    #       source, including parameter descriptions, in this section.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/s3-api.html
    #   [2]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/web-crawler-api.html
    #   [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connectors-list.html
    #
    # @option params [Types::DataSourceVpcConfiguration] :vpc_configuration
    #   Configuration information for an Amazon VPC (Virtual Private Cloud) to
    #   connect to your data source. For more information, see [Using Amazon
    #   VPC with Amazon Q Business connectors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connector-vpc.html
    #
    # @option params [String] :description
    #   A description for the data source connector.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize the data source
    #   connector. You can also use tags to help control access to the data
    #   source connector. Tag keys and values can consist of Unicode letters,
    #   digits, white space, and any of the following symbols: \_ . : / = + -
    #   @.
    #
    # @option params [String] :sync_schedule
    #   Sets the frequency for Amazon Q Business to check the documents in
    #   your data source repository and update your index. If you don't set a
    #   schedule, Amazon Q Business won't periodically update the index.
    #
    #   Specify a `cron-` format schedule string or an empty string to
    #   indicate that the index is updated on demand. You can't specify the
    #   `Schedule` parameter when the `Type` parameter is set to `CUSTOM`. If
    #   you do, you receive a `ValidationException` exception.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the data source and required resources.
    #
    # @option params [String] :client_token
    #   A token you provide to identify a request to create a data source
    #   connector. Multiple calls to the `CreateDataSource` API with the same
    #   client token will create only one data source connector.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::DocumentEnrichmentConfiguration] :document_enrichment_configuration
    #   Provides the configuration information for altering document metadata
    #   and content during the document ingestion process.
    #
    #   For more information, see [Custom document enrichment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #
    # @return [Types::CreateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::CreateDataSourceResponse#data_source_arn #data_source_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     display_name: "DataSourceName", # required
    #     configuration: { # required
    #     },
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     sync_schedule: "SyncSchedule",
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             key: "DocumentAttributeKey", # required
    #             operator: "GREATER_THAN", # required, accepts GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
    #             value: {
    #               string_value: "DocumentAttributeValueStringValueString",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           target: {
    #             key: "DocumentAttributeKey", # required
    #             value: {
    #               string_value: "DocumentAttributeValueStringValueString",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #             attribute_value_operator: "DELETE", # accepts DELETE
    #           },
    #           document_content_operator: "DELETE", # accepts DELETE
    #         },
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN", # required, accepts GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
    #           value: {
    #             string_value: "DocumentAttributeValueStringValueString",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn",
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN", # required, accepts GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
    #           value: {
    #             string_value: "DocumentAttributeValueStringValueString",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_id #=> String
    #   resp.data_source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates an Amazon Q Business index.
    #
    # To determine if index creation has completed, check the `Status` field
    # returned from a call to `DescribeIndex`. The `Status` field is set to
    # `ACTIVE` when the index is ready to use.
    #
    # Once the index is active, you can index your documents using the [
    # `BatchPutDocument` ][1] API or the [ `CreateDataSource` ][2] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_BatchPutDocument.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_CreateDataSource.html
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application using the index.
    #
    # @option params [required, String] :display_name
    #   A name for the Amazon Q Business index.
    #
    # @option params [String] :type
    #   The index type that's suitable for your needs. For more information
    #   on what's included in each type of index, see [Amazon Q Business
    #   tiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#index-tiers
    #
    # @option params [String] :description
    #   A description for the Amazon Q Business index.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize the index. You
    #   can also use tags to help control access to the index. Tag keys and
    #   values can consist of Unicode letters, digits, white space, and any of
    #   the following symbols: \_ . : / = + - @.
    #
    # @option params [Types::IndexCapacityConfiguration] :capacity_configuration
    #   The capacity units you want to provision for your index. You can add
    #   and remove capacity to fit your usage needs.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create an index.
    #   Multiple calls to the `CreateIndex` API with the same client token
    #   will create only one index.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIndexResponse#index_id #index_id} => String
    #   * {Types::CreateIndexResponse#index_arn #index_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index({
    #     application_id: "ApplicationId", # required
    #     display_name: "IndexName", # required
    #     type: "ENTERPRISE", # accepts ENTERPRISE, STARTER
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     capacity_configuration: {
    #       units: 1,
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.index_id #=> String
    #   resp.index_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateIndex AWS API Documentation
    #
    # @overload create_index(params = {})
    # @param [Hash] params ({})
    def create_index(params = {}, options = {})
      req = build_request(:create_index, params)
      req.send_request(options)
    end

    # Creates an Amazon Q Business plugin.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application that will contain the plugin.
    #
    # @option params [required, String] :display_name
    #   A the name for your plugin.
    #
    # @option params [required, String] :type
    #   The type of plugin you want to create.
    #
    # @option params [required, Types::PluginAuthConfiguration] :auth_configuration
    #   Authentication configuration information for an Amazon Q Business
    #   plugin.
    #
    # @option params [String] :server_url
    #   The source URL used for plugin configuration.
    #
    # @option params [Types::CustomPluginConfiguration] :custom_plugin_configuration
    #   Contains configuration for a custom plugin.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize the data source
    #   connector. You can also use tags to help control access to the data
    #   source connector. Tag keys and values can consist of Unicode letters,
    #   digits, white space, and any of the following symbols: \_ . : / = + -
    #   @.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create your Amazon
    #   Q Business plugin.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePluginResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePluginResponse#plugin_id #plugin_id} => String
    #   * {Types::CreatePluginResponse#plugin_arn #plugin_arn} => String
    #   * {Types::CreatePluginResponse#build_status #build_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_plugin({
    #     application_id: "ApplicationId", # required
    #     display_name: "PluginName", # required
    #     type: "SERVICE_NOW", # required, accepts SERVICE_NOW, SALESFORCE, JIRA, ZENDESK, CUSTOM
    #     auth_configuration: { # required
    #       basic_auth_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #       },
    #       o_auth_2_client_credential_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #       },
    #       no_auth_configuration: {
    #       },
    #     },
    #     server_url: "Url",
    #     custom_plugin_configuration: {
    #       description: "PluginDescription", # required
    #       api_schema_type: "OPEN_API_V3", # required, accepts OPEN_API_V3
    #       api_schema: { # required
    #         payload: "Payload",
    #         s3: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.plugin_id #=> String
    #   resp.plugin_arn #=> String
    #   resp.build_status #=> String, one of "READY", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreatePlugin AWS API Documentation
    #
    # @overload create_plugin(params = {})
    # @param [Hash] params ({})
    def create_plugin(params = {}, options = {})
      req = build_request(:create_plugin, params)
      req.send_request(options)
    end

    # Adds a retriever to your Amazon Q Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of your Amazon Q Business application.
    #
    # @option params [required, String] :type
    #   The type of retriever you are using.
    #
    # @option params [required, String] :display_name
    #   The name of your retriever.
    #
    # @option params [required, Types::RetrieverConfiguration] :configuration
    #   Provides information on how the retriever used for your Amazon Q
    #   Business application is configured.
    #
    # @option params [String] :role_arn
    #   The ARN of an IAM role used by Amazon Q Business to access the basic
    #   authentication credentials stored in a Secrets Manager secret.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create your Amazon
    #   Q Business application retriever.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize the retriever.
    #   You can also use tags to help control access to the retriever. Tag
    #   keys and values can consist of Unicode letters, digits, white space,
    #   and any of the following symbols: \_ . : / = + - @.
    #
    # @return [Types::CreateRetrieverResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRetrieverResponse#retriever_id #retriever_id} => String
    #   * {Types::CreateRetrieverResponse#retriever_arn #retriever_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_retriever({
    #     application_id: "ApplicationId", # required
    #     type: "NATIVE_INDEX", # required, accepts NATIVE_INDEX, KENDRA_INDEX
    #     display_name: "RetrieverName", # required
    #     configuration: { # required
    #       native_index_configuration: {
    #         index_id: "IndexId", # required
    #         boosting_override: {
    #           "DocumentAttributeKey" => {
    #             number_configuration: {
    #               boosting_level: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH, VERY_HIGH
    #               boosting_type: "PRIORITIZE_LARGER_VALUES", # accepts PRIORITIZE_LARGER_VALUES, PRIORITIZE_SMALLER_VALUES
    #             },
    #             string_configuration: {
    #               boosting_level: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH, VERY_HIGH
    #               attribute_value_boosting: {
    #                 "String" => "LOW", # accepts LOW, MEDIUM, HIGH, VERY_HIGH
    #               },
    #             },
    #             date_configuration: {
    #               boosting_level: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH, VERY_HIGH
    #               boosting_duration_in_seconds: 1,
    #             },
    #             string_list_configuration: {
    #               boosting_level: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH, VERY_HIGH
    #             },
    #           },
    #         },
    #       },
    #       kendra_index_configuration: {
    #         index_id: "KendraIndexId", # required
    #       },
    #     },
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.retriever_id #=> String
    #   resp.retriever_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateRetriever AWS API Documentation
    #
    # @overload create_retriever(params = {})
    # @param [Hash] params ({})
    def create_retriever(params = {}, options = {})
      req = build_request(:create_retriever, params)
      req.send_request(options)
    end

    # Creates a universally unique identifier (UUID) mapped to a list of
    # local user ids within an application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application for which the user mapping will be
    #   created.
    #
    # @option params [required, String] :user_id
    #   The user emails attached to a user mapping.
    #
    # @option params [Array<Types::UserAlias>] :user_aliases
    #   The list of user aliases in the mapping.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create your Amazon
    #   Q Business user mapping.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     application_id: "ApplicationId", # required
    #     user_id: "String", # required
    #     user_aliases: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Creates an Amazon Q Business web experience.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business web experience.
    #
    # @option params [String] :title
    #   The title for your Amazon Q Business web experience.
    #
    # @option params [String] :subtitle
    #   A subtitle to personalize your Amazon Q Business web experience.
    #
    # @option params [String] :welcome_message
    #   The customized welcome message for end users of an Amazon Q Business
    #   web experience.
    #
    # @option params [String] :sample_prompts_control_mode
    #   Determines whether sample prompts are enabled in the web experience
    #   for an end user.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the service role attached to your
    #   web experience.
    #
    #   <note markdown="1"> You must provide this value if you're using IAM Identity Center to
    #   manage end user access to your application. If you're using legacy
    #   identity management to manage user access, you don't need to provide
    #   this value.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize your Amazon Q
    #   Business web experience. You can also use tags to help control access
    #   to the web experience. Tag keys and values can consist of Unicode
    #   letters, digits, white space, and any of the following symbols: \_ . :
    #   / = + - @.
    #
    # @option params [String] :client_token
    #   A token you provide to identify a request to create an Amazon Q
    #   Business web experience.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Information about the identity provider (IdP) used to authenticate end
    #   users of an Amazon Q Business web experience.
    #
    # @return [Types::CreateWebExperienceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebExperienceResponse#web_experience_id #web_experience_id} => String
    #   * {Types::CreateWebExperienceResponse#web_experience_arn #web_experience_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_experience({
    #     application_id: "ApplicationId", # required
    #     title: "WebExperienceTitle",
    #     subtitle: "WebExperienceSubtitle",
    #     welcome_message: "WebExperienceWelcomeMessage",
    #     sample_prompts_control_mode: "ENABLED", # accepts ENABLED, DISABLED
    #     role_arn: "RoleArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     identity_provider_configuration: {
    #       saml_configuration: {
    #         authentication_url: "SamlAuthenticationUrl", # required
    #       },
    #       open_id_connect_configuration: {
    #         secrets_arn: "SecretArn", # required
    #         secrets_role: "RoleArn", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.web_experience_id #=> String
    #   resp.web_experience_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateWebExperience AWS API Documentation
    #
    # @overload create_web_experience(params = {})
    # @param [Hash] params ({})
    def create_web_experience(params = {}, options = {})
      req = build_request(:create_web_experience, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes chat controls configured for an existing Amazon Q Business
    # application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application the chat controls have been
    #   configured for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_chat_controls_configuration({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteChatControlsConfiguration AWS API Documentation
    #
    # @overload delete_chat_controls_configuration(params = {})
    # @param [Hash] params ({})
    def delete_chat_controls_configuration(params = {}, options = {})
      req = build_request(:delete_chat_controls_configuration, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q Business web experience conversation.
    #
    # @option params [required, String] :conversation_id
    #   The identifier of the Amazon Q Business web experience conversation
    #   being deleted.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application associated with
    #   the conversation.
    #
    # @option params [String] :user_id
    #   The identifier of the user who is deleting the conversation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_conversation({
    #     conversation_id: "ConversationId", # required
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteConversation AWS API Documentation
    #
    # @overload delete_conversation(params = {})
    # @param [Hash] params ({})
    def delete_conversation(params = {}, options = {})
      req = build_request(:delete_conversation, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q Business data source connector. While the data
    # source is being deleted, the `Status` field returned by a call to the
    # `DescribeDataSource` API is set to `DELETING`.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application used with the data
    #   source connector.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the data source connector.
    #
    # @option params [required, String] :data_source_id
    #   The identifier of the data source connector that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Deletes a group so that all users and sub groups that belong to the
    # group can no longer access documents only available to that group. For
    # example, after deleting the group "Summer Interns", all interns who
    # belonged to that group no longer see intern-only documents in their
    # chat results.
    #
    # If you want to delete, update, or replace users or sub groups of a
    # group, you need to use the `PutGroup` operation. For example, if a
    # user in the group "Engineering" leaves the engineering team and
    # another user takes their place, you provide an updated list of users
    # or sub groups that belong to the "Engineering" group when calling
    # `PutGroup`.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application in which the group mapping belongs.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index you want to delete the group from.
    #
    # @option params [required, String] :group_name
    #   The name of the group you want to delete.
    #
    # @option params [String] :data_source_id
    #   The identifier of the data source linked to the group
    #
    #   A group can be tied to multiple data sources. You can delete a group
    #   from accessing documents in a certain data source. For example, the
    #   groups "Research", "Engineering", and "Sales and Marketing" are
    #   all tied to the company's documents stored in the data sources
    #   Confluence and Salesforce. You want to delete "Research" and
    #   "Engineering" groups from Salesforce, so that these groups cannot
    #   access customer-related documents stored in Salesforce. Only "Sales
    #   and Marketing" should access documents in the Salesforce data source.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     group_name: "GroupName", # required
    #     data_source_id: "DataSourceId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q Business index.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application the Amazon Q
    #   Business index is linked to.
    #
    # @option params [required, String] :index_id
    #   The identifier of the Amazon Q Business index.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteIndex AWS API Documentation
    #
    # @overload delete_index(params = {})
    # @param [Hash] params ({})
    def delete_index(params = {}, options = {})
      req = build_request(:delete_index, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q Business plugin.
    #
    # @option params [required, String] :application_id
    #   The identifier the application attached to the Amazon Q Business
    #   plugin.
    #
    # @option params [required, String] :plugin_id
    #   The identifier of the plugin being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_plugin({
    #     application_id: "ApplicationId", # required
    #     plugin_id: "PluginId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeletePlugin AWS API Documentation
    #
    # @overload delete_plugin(params = {})
    # @param [Hash] params ({})
    def delete_plugin(params = {}, options = {})
      req = build_request(:delete_plugin, params)
      req.send_request(options)
    end

    # Deletes the retriever used by an Amazon Q Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application using the
    #   retriever.
    #
    # @option params [required, String] :retriever_id
    #   The identifier of the retriever being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_retriever({
    #     application_id: "ApplicationId", # required
    #     retriever_id: "RetrieverId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteRetriever AWS API Documentation
    #
    # @overload delete_retriever(params = {})
    # @param [Hash] params ({})
    def delete_retriever(params = {}, options = {})
      req = build_request(:delete_retriever, params)
      req.send_request(options)
    end

    # Deletes a user by email id.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application from which the user is being
    #   deleted.
    #
    # @option params [required, String] :user_id
    #   The user email being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     application_id: "ApplicationId", # required
    #     user_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q Business web experience.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application linked to the
    #   Amazon Q Business web experience.
    #
    # @option params [required, String] :web_experience_id
    #   The identifier of the Amazon Q Business web experience being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_web_experience({
    #     application_id: "ApplicationId", # required
    #     web_experience_id: "WebExperienceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteWebExperience AWS API Documentation
    #
    # @overload delete_web_experience(params = {})
    # @param [Hash] params ({})
    def delete_web_experience(params = {}, options = {})
      req = build_request(:delete_web_experience, params)
      req.send_request(options)
    end

    # Gets information about an existing Amazon Q Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application.
    #
    # @return [Types::GetApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationResponse#display_name #display_name} => String
    #   * {Types::GetApplicationResponse#application_id #application_id} => String
    #   * {Types::GetApplicationResponse#application_arn #application_arn} => String
    #   * {Types::GetApplicationResponse#identity_type #identity_type} => String
    #   * {Types::GetApplicationResponse#iam_identity_provider_arn #iam_identity_provider_arn} => String
    #   * {Types::GetApplicationResponse#identity_center_application_arn #identity_center_application_arn} => String
    #   * {Types::GetApplicationResponse#role_arn #role_arn} => String
    #   * {Types::GetApplicationResponse#status #status} => String
    #   * {Types::GetApplicationResponse#description #description} => String
    #   * {Types::GetApplicationResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #   * {Types::GetApplicationResponse#created_at #created_at} => Time
    #   * {Types::GetApplicationResponse#updated_at #updated_at} => Time
    #   * {Types::GetApplicationResponse#error #error} => Types::ErrorDetail
    #   * {Types::GetApplicationResponse#attachments_configuration #attachments_configuration} => Types::AppliedAttachmentsConfiguration
    #   * {Types::GetApplicationResponse#q_apps_configuration #q_apps_configuration} => Types::QAppsConfiguration
    #   * {Types::GetApplicationResponse#personalization_configuration #personalization_configuration} => Types::PersonalizationConfiguration
    #   * {Types::GetApplicationResponse#auto_subscription_configuration #auto_subscription_configuration} => Types::AutoSubscriptionConfiguration
    #   * {Types::GetApplicationResponse#client_ids_for_oidc #client_ids_for_oidc} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.application_id #=> String
    #   resp.application_arn #=> String
    #   resp.identity_type #=> String, one of "AWS_IAM_IDP_SAML", "AWS_IAM_IDP_OIDC", "AWS_IAM_IDC"
    #   resp.iam_identity_provider_arn #=> String
    #   resp.identity_center_application_arn #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.description #=> String
    #   resp.encryption_configuration.kms_key_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.error.error_message #=> String
    #   resp.error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   resp.attachments_configuration.attachments_control_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.q_apps_configuration.q_apps_control_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.personalization_configuration.personalization_control_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.auto_subscription_configuration.auto_subscribe #=> String, one of "ENABLED", "DISABLED"
    #   resp.auto_subscription_configuration.default_subscription_type #=> String, one of "Q_LITE", "Q_BUSINESS"
    #   resp.client_ids_for_oidc #=> Array
    #   resp.client_ids_for_oidc[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Gets information about an chat controls configured for an existing
    # Amazon Q Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application for which the chat controls are
    #   configured.
    #
    # @option params [Integer] :max_results
    #   The maximum number of configured chat controls to return.
    #
    # @option params [String] :next_token
    #   If the `maxResults` response was incomplete because there is more data
    #   to retrieve, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q Business chat controls configured.
    #
    # @return [Types::GetChatControlsConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChatControlsConfigurationResponse#response_scope #response_scope} => String
    #   * {Types::GetChatControlsConfigurationResponse#blocked_phrases #blocked_phrases} => Types::BlockedPhrasesConfiguration
    #   * {Types::GetChatControlsConfigurationResponse#topic_configurations #topic_configurations} => Array&lt;Types::TopicConfiguration&gt;
    #   * {Types::GetChatControlsConfigurationResponse#creator_mode_configuration #creator_mode_configuration} => Types::AppliedCreatorModeConfiguration
    #   * {Types::GetChatControlsConfigurationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_chat_controls_configuration({
    #     application_id: "ApplicationId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.response_scope #=> String, one of "ENTERPRISE_CONTENT_ONLY", "EXTENDED_KNOWLEDGE_ENABLED"
    #   resp.blocked_phrases.blocked_phrases #=> Array
    #   resp.blocked_phrases.blocked_phrases[0] #=> String
    #   resp.blocked_phrases.system_message_override #=> String
    #   resp.topic_configurations #=> Array
    #   resp.topic_configurations[0].name #=> String
    #   resp.topic_configurations[0].description #=> String
    #   resp.topic_configurations[0].example_chat_messages #=> Array
    #   resp.topic_configurations[0].example_chat_messages[0] #=> String
    #   resp.topic_configurations[0].rules #=> Array
    #   resp.topic_configurations[0].rules[0].included_users_and_groups.user_ids #=> Array
    #   resp.topic_configurations[0].rules[0].included_users_and_groups.user_ids[0] #=> String
    #   resp.topic_configurations[0].rules[0].included_users_and_groups.user_groups #=> Array
    #   resp.topic_configurations[0].rules[0].included_users_and_groups.user_groups[0] #=> String
    #   resp.topic_configurations[0].rules[0].excluded_users_and_groups.user_ids #=> Array
    #   resp.topic_configurations[0].rules[0].excluded_users_and_groups.user_ids[0] #=> String
    #   resp.topic_configurations[0].rules[0].excluded_users_and_groups.user_groups #=> Array
    #   resp.topic_configurations[0].rules[0].excluded_users_and_groups.user_groups[0] #=> String
    #   resp.topic_configurations[0].rules[0].rule_type #=> String, one of "CONTENT_BLOCKER_RULE", "CONTENT_RETRIEVAL_RULE"
    #   resp.topic_configurations[0].rules[0].rule_configuration.content_blocker_rule.system_message_override #=> String
    #   resp.topic_configurations[0].rules[0].rule_configuration.content_retrieval_rule.eligible_data_sources #=> Array
    #   resp.topic_configurations[0].rules[0].rule_configuration.content_retrieval_rule.eligible_data_sources[0].index_id #=> String
    #   resp.topic_configurations[0].rules[0].rule_configuration.content_retrieval_rule.eligible_data_sources[0].data_source_id #=> String
    #   resp.creator_mode_configuration.creator_mode_control #=> String, one of "ENABLED", "DISABLED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetChatControlsConfiguration AWS API Documentation
    #
    # @overload get_chat_controls_configuration(params = {})
    # @param [Hash] params ({})
    def get_chat_controls_configuration(params = {}, options = {})
      req = build_request(:get_chat_controls_configuration, params)
      req.send_request(options)
    end

    # Gets information about an existing Amazon Q Business data source
    # connector.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application.
    #
    # @option params [required, String] :index_id
    #   The identfier of the index used with the data source connector.
    #
    # @option params [required, String] :data_source_id
    #   The identifier of the data source connector.
    #
    # @return [Types::GetDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceResponse#application_id #application_id} => String
    #   * {Types::GetDataSourceResponse#index_id #index_id} => String
    #   * {Types::GetDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::GetDataSourceResponse#data_source_arn #data_source_arn} => String
    #   * {Types::GetDataSourceResponse#display_name #display_name} => String
    #   * {Types::GetDataSourceResponse#type #type} => String
    #   * {Types::GetDataSourceResponse#configuration #configuration} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetDataSourceResponse#vpc_configuration #vpc_configuration} => Types::DataSourceVpcConfiguration
    #   * {Types::GetDataSourceResponse#created_at #created_at} => Time
    #   * {Types::GetDataSourceResponse#updated_at #updated_at} => Time
    #   * {Types::GetDataSourceResponse#description #description} => String
    #   * {Types::GetDataSourceResponse#status #status} => String
    #   * {Types::GetDataSourceResponse#sync_schedule #sync_schedule} => String
    #   * {Types::GetDataSourceResponse#role_arn #role_arn} => String
    #   * {Types::GetDataSourceResponse#error #error} => Types::ErrorDetail
    #   * {Types::GetDataSourceResponse#document_enrichment_configuration #document_enrichment_configuration} => Types::DocumentEnrichmentConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.index_id #=> String
    #   resp.data_source_id #=> String
    #   resp.data_source_arn #=> String
    #   resp.display_name #=> String
    #   resp.type #=> String
    #   resp.vpc_configuration.subnet_ids #=> Array
    #   resp.vpc_configuration.subnet_ids[0] #=> String
    #   resp.vpc_configuration.security_group_ids #=> Array
    #   resp.vpc_configuration.security_group_ids[0] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.description #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.sync_schedule #=> String
    #   resp.role_arn #=> String
    #   resp.error.error_message #=> String
    #   resp.error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   resp.document_enrichment_configuration.inline_configurations #=> Array
    #   resp.document_enrichment_configuration.inline_configurations[0].condition.key #=> String
    #   resp.document_enrichment_configuration.inline_configurations[0].condition.operator #=> String, one of "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"
    #   resp.document_enrichment_configuration.inline_configurations[0].condition.value.string_value #=> String
    #   resp.document_enrichment_configuration.inline_configurations[0].condition.value.string_list_value #=> Array
    #   resp.document_enrichment_configuration.inline_configurations[0].condition.value.string_list_value[0] #=> String
    #   resp.document_enrichment_configuration.inline_configurations[0].condition.value.long_value #=> Integer
    #   resp.document_enrichment_configuration.inline_configurations[0].condition.value.date_value #=> Time
    #   resp.document_enrichment_configuration.inline_configurations[0].target.key #=> String
    #   resp.document_enrichment_configuration.inline_configurations[0].target.value.string_value #=> String
    #   resp.document_enrichment_configuration.inline_configurations[0].target.value.string_list_value #=> Array
    #   resp.document_enrichment_configuration.inline_configurations[0].target.value.string_list_value[0] #=> String
    #   resp.document_enrichment_configuration.inline_configurations[0].target.value.long_value #=> Integer
    #   resp.document_enrichment_configuration.inline_configurations[0].target.value.date_value #=> Time
    #   resp.document_enrichment_configuration.inline_configurations[0].target.attribute_value_operator #=> String, one of "DELETE"
    #   resp.document_enrichment_configuration.inline_configurations[0].document_content_operator #=> String, one of "DELETE"
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.key #=> String
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.operator #=> String, one of "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.value.string_value #=> String
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.value.string_list_value #=> Array
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.value.string_list_value[0] #=> String
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.value.long_value #=> Integer
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.value.date_value #=> Time
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.lambda_arn #=> String
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.s3_bucket_name #=> String
    #   resp.document_enrichment_configuration.pre_extraction_hook_configuration.role_arn #=> String
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.key #=> String
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.operator #=> String, one of "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.value.string_value #=> String
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.value.string_list_value #=> Array
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.value.string_list_value[0] #=> String
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.value.long_value #=> Integer
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.value.date_value #=> Time
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.lambda_arn #=> String
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.s3_bucket_name #=> String
    #   resp.document_enrichment_configuration.post_extraction_hook_configuration.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetDataSource AWS API Documentation
    #
    # @overload get_data_source(params = {})
    # @param [Hash] params ({})
    def get_data_source(params = {}, options = {})
      req = build_request(:get_data_source, params)
      req.send_request(options)
    end

    # Describes a group by group name.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application id the group is attached to.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index the group is attached to.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [String] :data_source_id
    #   The identifier of the data source the group is attached to.
    #
    # @return [Types::GetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupResponse#status #status} => Types::GroupStatusDetail
    #   * {Types::GetGroupResponse#status_history #status_history} => Array&lt;Types::GroupStatusDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     group_name: "GroupName", # required
    #     data_source_id: "DataSourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.status.status #=> String, one of "FAILED", "SUCCEEDED", "PROCESSING", "DELETING", "DELETED"
    #   resp.status.last_updated_at #=> Time
    #   resp.status.error_detail.error_message #=> String
    #   resp.status.error_detail.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   resp.status_history #=> Array
    #   resp.status_history[0].status #=> String, one of "FAILED", "SUCCEEDED", "PROCESSING", "DELETING", "DELETED"
    #   resp.status_history[0].last_updated_at #=> Time
    #   resp.status_history[0].error_detail.error_message #=> String
    #   resp.status_history[0].error_detail.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Gets information about an existing Amazon Q Business index.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application connected to the
    #   index.
    #
    # @option params [required, String] :index_id
    #   The identifier of the Amazon Q Business index you want information on.
    #
    # @return [Types::GetIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIndexResponse#application_id #application_id} => String
    #   * {Types::GetIndexResponse#index_id #index_id} => String
    #   * {Types::GetIndexResponse#display_name #display_name} => String
    #   * {Types::GetIndexResponse#type #type} => String
    #   * {Types::GetIndexResponse#index_arn #index_arn} => String
    #   * {Types::GetIndexResponse#status #status} => String
    #   * {Types::GetIndexResponse#description #description} => String
    #   * {Types::GetIndexResponse#created_at #created_at} => Time
    #   * {Types::GetIndexResponse#updated_at #updated_at} => Time
    #   * {Types::GetIndexResponse#capacity_configuration #capacity_configuration} => Types::IndexCapacityConfiguration
    #   * {Types::GetIndexResponse#document_attribute_configurations #document_attribute_configurations} => Array&lt;Types::DocumentAttributeConfiguration&gt;
    #   * {Types::GetIndexResponse#error #error} => Types::ErrorDetail
    #   * {Types::GetIndexResponse#index_statistics #index_statistics} => Types::IndexStatistics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_index({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.index_id #=> String
    #   resp.display_name #=> String
    #   resp.type #=> String, one of "ENTERPRISE", "STARTER"
    #   resp.index_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.capacity_configuration.units #=> Integer
    #   resp.document_attribute_configurations #=> Array
    #   resp.document_attribute_configurations[0].name #=> String
    #   resp.document_attribute_configurations[0].type #=> String, one of "STRING", "STRING_LIST", "NUMBER", "DATE"
    #   resp.document_attribute_configurations[0].search #=> String, one of "ENABLED", "DISABLED"
    #   resp.error.error_message #=> String
    #   resp.error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   resp.index_statistics.text_document_statistics.indexed_text_bytes #=> Integer
    #   resp.index_statistics.text_document_statistics.indexed_text_document_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetIndex AWS API Documentation
    #
    # @overload get_index(params = {})
    # @param [Hash] params ({})
    def get_index(params = {}, options = {})
      req = build_request(:get_index, params)
      req.send_request(options)
    end

    # Gets information about an existing Amazon Q Business plugin.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application which contains the plugin.
    #
    # @option params [required, String] :plugin_id
    #   The identifier of the plugin.
    #
    # @return [Types::GetPluginResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPluginResponse#application_id #application_id} => String
    #   * {Types::GetPluginResponse#plugin_id #plugin_id} => String
    #   * {Types::GetPluginResponse#display_name #display_name} => String
    #   * {Types::GetPluginResponse#type #type} => String
    #   * {Types::GetPluginResponse#server_url #server_url} => String
    #   * {Types::GetPluginResponse#auth_configuration #auth_configuration} => Types::PluginAuthConfiguration
    #   * {Types::GetPluginResponse#custom_plugin_configuration #custom_plugin_configuration} => Types::CustomPluginConfiguration
    #   * {Types::GetPluginResponse#build_status #build_status} => String
    #   * {Types::GetPluginResponse#plugin_arn #plugin_arn} => String
    #   * {Types::GetPluginResponse#state #state} => String
    #   * {Types::GetPluginResponse#created_at #created_at} => Time
    #   * {Types::GetPluginResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_plugin({
    #     application_id: "ApplicationId", # required
    #     plugin_id: "PluginId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.plugin_id #=> String
    #   resp.display_name #=> String
    #   resp.type #=> String, one of "SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM"
    #   resp.server_url #=> String
    #   resp.auth_configuration.basic_auth_configuration.secret_arn #=> String
    #   resp.auth_configuration.basic_auth_configuration.role_arn #=> String
    #   resp.auth_configuration.o_auth_2_client_credential_configuration.secret_arn #=> String
    #   resp.auth_configuration.o_auth_2_client_credential_configuration.role_arn #=> String
    #   resp.custom_plugin_configuration.description #=> String
    #   resp.custom_plugin_configuration.api_schema_type #=> String, one of "OPEN_API_V3"
    #   resp.custom_plugin_configuration.api_schema.payload #=> String
    #   resp.custom_plugin_configuration.api_schema.s3.bucket #=> String
    #   resp.custom_plugin_configuration.api_schema.s3.key #=> String
    #   resp.build_status #=> String, one of "READY", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.plugin_arn #=> String
    #   resp.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetPlugin AWS API Documentation
    #
    # @overload get_plugin(params = {})
    # @param [Hash] params ({})
    def get_plugin(params = {}, options = {})
      req = build_request(:get_plugin, params)
      req.send_request(options)
    end

    # Gets information about an existing retriever used by an Amazon Q
    # Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application using the
    #   retriever.
    #
    # @option params [required, String] :retriever_id
    #   The identifier of the retriever.
    #
    # @return [Types::GetRetrieverResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRetrieverResponse#application_id #application_id} => String
    #   * {Types::GetRetrieverResponse#retriever_id #retriever_id} => String
    #   * {Types::GetRetrieverResponse#retriever_arn #retriever_arn} => String
    #   * {Types::GetRetrieverResponse#type #type} => String
    #   * {Types::GetRetrieverResponse#status #status} => String
    #   * {Types::GetRetrieverResponse#display_name #display_name} => String
    #   * {Types::GetRetrieverResponse#configuration #configuration} => Types::RetrieverConfiguration
    #   * {Types::GetRetrieverResponse#role_arn #role_arn} => String
    #   * {Types::GetRetrieverResponse#created_at #created_at} => Time
    #   * {Types::GetRetrieverResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_retriever({
    #     application_id: "ApplicationId", # required
    #     retriever_id: "RetrieverId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.retriever_id #=> String
    #   resp.retriever_arn #=> String
    #   resp.type #=> String, one of "NATIVE_INDEX", "KENDRA_INDEX"
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "FAILED"
    #   resp.display_name #=> String
    #   resp.configuration.native_index_configuration.index_id #=> String
    #   resp.configuration.native_index_configuration.boosting_override #=> Hash
    #   resp.configuration.native_index_configuration.boosting_override["DocumentAttributeKey"].number_configuration.boosting_level #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH"
    #   resp.configuration.native_index_configuration.boosting_override["DocumentAttributeKey"].number_configuration.boosting_type #=> String, one of "PRIORITIZE_LARGER_VALUES", "PRIORITIZE_SMALLER_VALUES"
    #   resp.configuration.native_index_configuration.boosting_override["DocumentAttributeKey"].string_configuration.boosting_level #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH"
    #   resp.configuration.native_index_configuration.boosting_override["DocumentAttributeKey"].string_configuration.attribute_value_boosting #=> Hash
    #   resp.configuration.native_index_configuration.boosting_override["DocumentAttributeKey"].string_configuration.attribute_value_boosting["String"] #=> String, one of "LOW", "MEDIUM", "HIGH", "VERY_HIGH"
    #   resp.configuration.native_index_configuration.boosting_override["DocumentAttributeKey"].date_configuration.boosting_level #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH"
    #   resp.configuration.native_index_configuration.boosting_override["DocumentAttributeKey"].date_configuration.boosting_duration_in_seconds #=> Integer
    #   resp.configuration.native_index_configuration.boosting_override["DocumentAttributeKey"].string_list_configuration.boosting_level #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH"
    #   resp.configuration.kendra_index_configuration.index_id #=> String
    #   resp.role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetRetriever AWS API Documentation
    #
    # @overload get_retriever(params = {})
    # @param [Hash] params ({})
    def get_retriever(params = {}, options = {})
      req = build_request(:get_retriever, params)
      req.send_request(options)
    end

    # Describes the universally unique identifier (UUID) associated with a
    # local user in a data source.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application connected to the user.
    #
    # @option params [required, String] :user_id
    #   The user email address attached to the user.
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#user_aliases #user_aliases} => Array&lt;Types::UserAlias&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     application_id: "ApplicationId", # required
    #     user_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_aliases #=> Array
    #   resp.user_aliases[0].index_id #=> String
    #   resp.user_aliases[0].data_source_id #=> String
    #   resp.user_aliases[0].user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # Gets information about an existing Amazon Q Business web experience.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application linked to the web
    #   experience.
    #
    # @option params [required, String] :web_experience_id
    #   The identifier of the Amazon Q Business web experience.
    #
    # @return [Types::GetWebExperienceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebExperienceResponse#application_id #application_id} => String
    #   * {Types::GetWebExperienceResponse#web_experience_id #web_experience_id} => String
    #   * {Types::GetWebExperienceResponse#web_experience_arn #web_experience_arn} => String
    #   * {Types::GetWebExperienceResponse#default_endpoint #default_endpoint} => String
    #   * {Types::GetWebExperienceResponse#status #status} => String
    #   * {Types::GetWebExperienceResponse#created_at #created_at} => Time
    #   * {Types::GetWebExperienceResponse#updated_at #updated_at} => Time
    #   * {Types::GetWebExperienceResponse#title #title} => String
    #   * {Types::GetWebExperienceResponse#subtitle #subtitle} => String
    #   * {Types::GetWebExperienceResponse#welcome_message #welcome_message} => String
    #   * {Types::GetWebExperienceResponse#sample_prompts_control_mode #sample_prompts_control_mode} => String
    #   * {Types::GetWebExperienceResponse#role_arn #role_arn} => String
    #   * {Types::GetWebExperienceResponse#identity_provider_configuration #identity_provider_configuration} => Types::IdentityProviderConfiguration
    #   * {Types::GetWebExperienceResponse#authentication_configuration #authentication_configuration} => Types::WebExperienceAuthConfiguration
    #   * {Types::GetWebExperienceResponse#error #error} => Types::ErrorDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_experience({
    #     application_id: "ApplicationId", # required
    #     web_experience_id: "WebExperienceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.web_experience_id #=> String
    #   resp.web_experience_arn #=> String
    #   resp.default_endpoint #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "PENDING_AUTH_CONFIG"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.title #=> String
    #   resp.subtitle #=> String
    #   resp.welcome_message #=> String
    #   resp.sample_prompts_control_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.role_arn #=> String
    #   resp.identity_provider_configuration.saml_configuration.authentication_url #=> String
    #   resp.identity_provider_configuration.open_id_connect_configuration.secrets_arn #=> String
    #   resp.identity_provider_configuration.open_id_connect_configuration.secrets_role #=> String
    #   resp.authentication_configuration.saml_configuration.metadata_xml #=> String
    #   resp.authentication_configuration.saml_configuration.role_arn #=> String
    #   resp.authentication_configuration.saml_configuration.user_id_attribute #=> String
    #   resp.authentication_configuration.saml_configuration.user_group_attribute #=> String
    #   resp.error.error_message #=> String
    #   resp.error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetWebExperience AWS API Documentation
    #
    # @overload get_web_experience(params = {})
    # @param [Hash] params ({})
    def get_web_experience(params = {}, options = {})
      req = build_request(:get_web_experience, params)
      req.send_request(options)
    end

    # Lists Amazon Q Business applications.
    #
    # @option params [String] :next_token
    #   If the `maxResults` response was incomplete because there is more data
    #   to retrieve, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q Business applications.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Amazon Q Business applications to return.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #   * {Types::ListApplicationsResponse#applications #applications} => Array&lt;Types::Application&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.applications #=> Array
    #   resp.applications[0].display_name #=> String
    #   resp.applications[0].application_id #=> String
    #   resp.applications[0].created_at #=> Time
    #   resp.applications[0].updated_at #=> Time
    #   resp.applications[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.applications[0].identity_type #=> String, one of "AWS_IAM_IDP_SAML", "AWS_IAM_IDP_OIDC", "AWS_IAM_IDC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists one or more Amazon Q Business conversations.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application.
    #
    # @option params [String] :user_id
    #   The identifier of the user involved in the Amazon Q Business web
    #   experience conversation.
    #
    # @option params [String] :next_token
    #   If the `maxResults` response was incomplete because there is more data
    #   to retrieve, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q Business conversations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Amazon Q Business conversations to return.
    #
    # @return [Types::ListConversationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConversationsResponse#next_token #next_token} => String
    #   * {Types::ListConversationsResponse#conversations #conversations} => Array&lt;Types::Conversation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_conversations({
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.conversations #=> Array
    #   resp.conversations[0].conversation_id #=> String
    #   resp.conversations[0].title #=> String
    #   resp.conversations[0].start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListConversations AWS API Documentation
    #
    # @overload list_conversations(params = {})
    # @param [Hash] params ({})
    def list_conversations(params = {}, options = {})
      req = build_request(:list_conversations, params)
      req.send_request(options)
    end

    # Get information about an Amazon Q Business data source connector
    # synchronization.
    #
    # @option params [required, String] :data_source_id
    #   The identifier of the data source connector.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application connected to the
    #   data source.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the Amazon Q Business data
    #   source connector.
    #
    # @option params [String] :next_token
    #   If the `maxResults` response was incpmplete because there is more data
    #   to retriever, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of responses.
    #
    # @option params [Integer] :max_results
    #   The maximum number of synchronization jobs to return in the response.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the data source connector sync.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the data source connector sync.
    #
    # @option params [String] :status_filter
    #   Only returns synchronization jobs with the `Status` field equal to the
    #   specified status.
    #
    # @return [Types::ListDataSourceSyncJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourceSyncJobsResponse#history #history} => Array&lt;Types::DataSourceSyncJob&gt;
    #   * {Types::ListDataSourceSyncJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_source_sync_jobs({
    #     data_source_id: "DataSourceId", # required
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     status_filter: "FAILED", # accepts FAILED, SUCCEEDED, SYNCING, INCOMPLETE, STOPPING, ABORTED, SYNCING_INDEXING
    #   })
    #
    # @example Response structure
    #
    #   resp.history #=> Array
    #   resp.history[0].execution_id #=> String
    #   resp.history[0].start_time #=> Time
    #   resp.history[0].end_time #=> Time
    #   resp.history[0].status #=> String, one of "FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"
    #   resp.history[0].error.error_message #=> String
    #   resp.history[0].error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   resp.history[0].data_source_error_code #=> String
    #   resp.history[0].metrics.documents_added #=> String
    #   resp.history[0].metrics.documents_modified #=> String
    #   resp.history[0].metrics.documents_deleted #=> String
    #   resp.history[0].metrics.documents_failed #=> String
    #   resp.history[0].metrics.documents_scanned #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDataSourceSyncJobs AWS API Documentation
    #
    # @overload list_data_source_sync_jobs(params = {})
    # @param [Hash] params ({})
    def list_data_source_sync_jobs(params = {}, options = {})
      req = build_request(:list_data_source_sync_jobs, params)
      req.send_request(options)
    end

    # Lists the Amazon Q Business data source connectors that you have
    # created.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application linked to the data
    #   source connectors.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with one or more data source
    #   connectors.
    #
    # @option params [String] :next_token
    #   If the `maxResults` response was incomplete because there is more data
    #   to retrieve, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q Business data source connectors.
    #
    # @option params [Integer] :max_results
    #   The maximum number of data source connectors to return.
    #
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::ListDataSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].display_name #=> String
    #   resp.data_sources[0].data_source_id #=> String
    #   resp.data_sources[0].type #=> String
    #   resp.data_sources[0].created_at #=> Time
    #   resp.data_sources[0].updated_at #=> Time
    #   resp.data_sources[0].status #=> String, one of "PENDING_CREATION", "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # A list of documents attached to an index.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application id the documents are attached to.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index the documents are attached to.
    #
    # @option params [Array<String>] :data_source_ids
    #   The identifier of the data sources the documents are attached to.
    #
    # @option params [String] :next_token
    #   If the `maxResults` response was incomplete because there is more data
    #   to retrieve, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of documents.
    #
    # @option params [Integer] :max_results
    #   The maximum number of documents to return.
    #
    # @return [Types::ListDocumentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentsResponse#document_detail_list #document_detail_list} => Array&lt;Types::DocumentDetails&gt;
    #   * {Types::ListDocumentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_documents({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     data_source_ids: ["DataSourceId"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.document_detail_list #=> Array
    #   resp.document_detail_list[0].document_id #=> String
    #   resp.document_detail_list[0].status #=> String, one of "RECEIVED", "PROCESSING", "INDEXED", "UPDATED", "FAILED", "DELETING", "DELETED", "DOCUMENT_FAILED_TO_INDEX"
    #   resp.document_detail_list[0].error.error_message #=> String
    #   resp.document_detail_list[0].error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   resp.document_detail_list[0].created_at #=> Time
    #   resp.document_detail_list[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDocuments AWS API Documentation
    #
    # @overload list_documents(params = {})
    # @param [Hash] params ({})
    def list_documents(params = {}, options = {})
      req = build_request(:list_documents, params)
      req.send_request(options)
    end

    # Provides a list of groups that are mapped to users.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application for getting a list of groups mapped
    #   to users.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for getting a list of groups mapped to
    #   users.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :updated_earlier_than
    #   The timestamp identifier used for the latest `PUT` or `DELETE` action
    #   for mapping users to their groups.
    #
    # @option params [String] :data_source_id
    #   The identifier of the data source for getting a list of groups mapped
    #   to users.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of groups that are mapped to users.
    #
    # @option params [Integer] :max_results
    #   The maximum number of returned groups that are mapped to users.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #   * {Types::ListGroupsResponse#items #items} => Array&lt;Types::GroupSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     updated_earlier_than: Time.now, # required
    #     data_source_id: "DataSourceId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists the Amazon Q Business indices you have created.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application connected to the
    #   index.
    #
    # @option params [String] :next_token
    #   If the maxResults response was incomplete because there is more data
    #   to retrieve, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q Business indices.
    #
    # @option params [Integer] :max_results
    #   The maximum number of indices to return.
    #
    # @return [Types::ListIndicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIndicesResponse#next_token #next_token} => String
    #   * {Types::ListIndicesResponse#indices #indices} => Array&lt;Types::Index&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_indices({
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.indices #=> Array
    #   resp.indices[0].display_name #=> String
    #   resp.indices[0].index_id #=> String
    #   resp.indices[0].created_at #=> Time
    #   resp.indices[0].updated_at #=> Time
    #   resp.indices[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListIndices AWS API Documentation
    #
    # @overload list_indices(params = {})
    # @param [Hash] params ({})
    def list_indices(params = {}, options = {})
      req = build_request(:list_indices, params)
      req.send_request(options)
    end

    # Gets a list of messages associated with an Amazon Q Business web
    # experience.
    #
    # @option params [required, String] :conversation_id
    #   The identifier of the Amazon Q Business web experience conversation.
    #
    # @option params [required, String] :application_id
    #   The identifier for the Amazon Q Business application.
    #
    # @option params [String] :user_id
    #   The identifier of the user involved in the Amazon Q Business web
    #   experience conversation.
    #
    # @option params [String] :next_token
    #   If the number of retrievers returned exceeds `maxResults`, Amazon Q
    #   Business returns a next token as a pagination token to retrieve the
    #   next set of messages.
    #
    # @option params [Integer] :max_results
    #   The maximum number of messages to return.
    #
    # @return [Types::ListMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMessagesResponse#messages #messages} => Array&lt;Types::Message&gt;
    #   * {Types::ListMessagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_messages({
    #     conversation_id: "ConversationId", # required
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.messages #=> Array
    #   resp.messages[0].message_id #=> String
    #   resp.messages[0].body #=> String
    #   resp.messages[0].time #=> Time
    #   resp.messages[0].type #=> String, one of "USER", "SYSTEM"
    #   resp.messages[0].attachments #=> Array
    #   resp.messages[0].attachments[0].name #=> String
    #   resp.messages[0].attachments[0].status #=> String, one of "FAILED", "SUCCEEDED"
    #   resp.messages[0].attachments[0].error.error_message #=> String
    #   resp.messages[0].attachments[0].error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   resp.messages[0].source_attribution #=> Array
    #   resp.messages[0].source_attribution[0].title #=> String
    #   resp.messages[0].source_attribution[0].snippet #=> String
    #   resp.messages[0].source_attribution[0].url #=> String
    #   resp.messages[0].source_attribution[0].citation_number #=> Integer
    #   resp.messages[0].source_attribution[0].updated_at #=> Time
    #   resp.messages[0].source_attribution[0].text_message_segments #=> Array
    #   resp.messages[0].source_attribution[0].text_message_segments[0].begin_offset #=> Integer
    #   resp.messages[0].source_attribution[0].text_message_segments[0].end_offset #=> Integer
    #   resp.messages[0].source_attribution[0].text_message_segments[0].snippet_excerpt.text #=> String
    #   resp.messages[0].action_review.plugin_id #=> String
    #   resp.messages[0].action_review.plugin_type #=> String, one of "SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM"
    #   resp.messages[0].action_review.payload #=> Hash
    #   resp.messages[0].action_review.payload["ActionPayloadFieldKey"].display_name #=> String
    #   resp.messages[0].action_review.payload["ActionPayloadFieldKey"].display_order #=> Integer
    #   resp.messages[0].action_review.payload["ActionPayloadFieldKey"].display_description #=> String
    #   resp.messages[0].action_review.payload["ActionPayloadFieldKey"].type #=> String, one of "STRING", "NUMBER", "ARRAY", "BOOLEAN"
    #   resp.messages[0].action_review.payload["ActionPayloadFieldKey"].allowed_values #=> Array
    #   resp.messages[0].action_review.payload["ActionPayloadFieldKey"].allowed_format #=> String
    #   resp.messages[0].action_review.payload["ActionPayloadFieldKey"].required #=> Boolean
    #   resp.messages[0].action_review.payload_field_name_separator #=> String
    #   resp.messages[0].action_execution.plugin_id #=> String
    #   resp.messages[0].action_execution.payload #=> Hash
    #   resp.messages[0].action_execution.payload_field_name_separator #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListMessages AWS API Documentation
    #
    # @overload list_messages(params = {})
    # @param [Hash] params ({})
    def list_messages(params = {}, options = {})
      req = build_request(:list_messages, params)
      req.send_request(options)
    end

    # Lists configured Amazon Q Business plugins.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application the plugin is attached to.
    #
    # @option params [String] :next_token
    #   If the `maxResults` response was incomplete because there is more data
    #   to retrieve, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of plugins.
    #
    # @option params [Integer] :max_results
    #   The maximum number of documents to return.
    #
    # @return [Types::ListPluginsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPluginsResponse#next_token #next_token} => String
    #   * {Types::ListPluginsResponse#plugins #plugins} => Array&lt;Types::Plugin&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_plugins({
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.plugins #=> Array
    #   resp.plugins[0].plugin_id #=> String
    #   resp.plugins[0].display_name #=> String
    #   resp.plugins[0].type #=> String, one of "SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM"
    #   resp.plugins[0].server_url #=> String
    #   resp.plugins[0].state #=> String, one of "ENABLED", "DISABLED"
    #   resp.plugins[0].build_status #=> String, one of "READY", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.plugins[0].created_at #=> Time
    #   resp.plugins[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPlugins AWS API Documentation
    #
    # @overload list_plugins(params = {})
    # @param [Hash] params ({})
    def list_plugins(params = {}, options = {})
      req = build_request(:list_plugins, params)
      req.send_request(options)
    end

    # Lists the retriever used by an Amazon Q Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application using the
    #   retriever.
    #
    # @option params [String] :next_token
    #   If the number of retrievers returned exceeds `maxResults`, Amazon Q
    #   Business returns a next token as a pagination token to retrieve the
    #   next set of retrievers.
    #
    # @option params [Integer] :max_results
    #   The maximum number of retrievers returned.
    #
    # @return [Types::ListRetrieversResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRetrieversResponse#retrievers #retrievers} => Array&lt;Types::Retriever&gt;
    #   * {Types::ListRetrieversResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_retrievers({
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.retrievers #=> Array
    #   resp.retrievers[0].application_id #=> String
    #   resp.retrievers[0].retriever_id #=> String
    #   resp.retrievers[0].type #=> String, one of "NATIVE_INDEX", "KENDRA_INDEX"
    #   resp.retrievers[0].status #=> String, one of "CREATING", "ACTIVE", "FAILED"
    #   resp.retrievers[0].display_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListRetrievers AWS API Documentation
    #
    # @overload list_retrievers(params = {})
    # @param [Hash] params ({})
    def list_retrievers(params = {}, options = {})
      req = build_request(:list_retrievers, params)
      req.send_request(options)
    end

    # Gets a list of tags associated with a specified resource. Amazon Q
    # Business applications and data sources can have tags associated with
    # them.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business application or
    #   data source to get a list of tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists one or more Amazon Q Business Web Experiences.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application linked to the
    #   listed web experiences.
    #
    # @option params [String] :next_token
    #   If the `maxResults` response was incomplete because there is more data
    #   to retrieve, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q Business conversations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Amazon Q Business Web Experiences to return.
    #
    # @return [Types::ListWebExperiencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebExperiencesResponse#web_experiences #web_experiences} => Array&lt;Types::WebExperience&gt;
    #   * {Types::ListWebExperiencesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_web_experiences({
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.web_experiences #=> Array
    #   resp.web_experiences[0].web_experience_id #=> String
    #   resp.web_experiences[0].created_at #=> Time
    #   resp.web_experiences[0].updated_at #=> Time
    #   resp.web_experiences[0].default_endpoint #=> String
    #   resp.web_experiences[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "PENDING_AUTH_CONFIG"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListWebExperiences AWS API Documentation
    #
    # @overload list_web_experiences(params = {})
    # @param [Hash] params ({})
    def list_web_experiences(params = {}, options = {})
      req = build_request(:list_web_experiences, params)
      req.send_request(options)
    end

    # Enables your end user to provide feedback on their Amazon Q Business
    # generated chat responses.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application associated with the feedback.
    #
    # @option params [String] :user_id
    #   The identifier of the user giving the feedback.
    #
    # @option params [required, String] :conversation_id
    #   The identifier of the conversation the feedback is attached to.
    #
    # @option params [required, String] :message_id
    #   The identifier of the chat message that the feedback was given for.
    #
    # @option params [Time,DateTime,Date,Integer,String] :message_copied_at
    #   The timestamp for when the feedback was recorded.
    #
    # @option params [Types::MessageUsefulnessFeedback] :message_usefulness
    #   The feedback usefulness value given by the user to the chat message.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_feedback({
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #     conversation_id: "ConversationId", # required
    #     message_id: "SystemMessageId", # required
    #     message_copied_at: Time.now,
    #     message_usefulness: {
    #       usefulness: "USEFUL", # required, accepts USEFUL, NOT_USEFUL
    #       reason: "NOT_FACTUALLY_CORRECT", # accepts NOT_FACTUALLY_CORRECT, HARMFUL_OR_UNSAFE, INCORRECT_OR_MISSING_SOURCES, NOT_HELPFUL, FACTUALLY_CORRECT, COMPLETE, RELEVANT_SOURCES, HELPFUL, NOT_BASED_ON_DOCUMENTS, NOT_COMPLETE, NOT_CONCISE, OTHER
    #       comment: "MessageUsefulnessComment",
    #       submitted_at: Time.now, # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PutFeedback AWS API Documentation
    #
    # @overload put_feedback(params = {})
    # @param [Hash] params ({})
    def put_feedback(params = {}, options = {})
      req = build_request(:put_feedback, params)
      req.send_request(options)
    end

    # Create, or updates, a mapping of users—who have access to a
    # document—to groups.
    #
    # You can also map sub groups to groups. For example, the group
    # "Company Intellectual Property Teams" includes sub groups
    # "Research" and "Engineering". These sub groups include their own
    # list of users or people who work in these teams. Only users who work
    # in research and engineering, and therefore belong in the intellectual
    # property group, can see top-secret company documents in their Amazon Q
    # Business chat results.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application in which the user and group mapping
    #   belongs.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index in which you want to map users to their
    #   groups.
    #
    # @option params [required, String] :group_name
    #   The list that contains your users or sub groups that belong the same
    #   group. For example, the group "Company" includes the user "CEO"
    #   and the sub groups "Research", "Engineering", and "Sales and
    #   Marketing".
    #
    # @option params [String] :data_source_id
    #   The identifier of the data source for which you want to map users to
    #   their groups. This is useful if a group is tied to multiple data
    #   sources, but you only want the group to access documents of a certain
    #   data source. For example, the groups "Research", "Engineering",
    #   and "Sales and Marketing" are all tied to the company's documents
    #   stored in the data sources Confluence and Salesforce. However, "Sales
    #   and Marketing" team only needs access to customer-related documents
    #   stored in Salesforce.
    #
    # @option params [required, String] :type
    #   The type of the group.
    #
    # @option params [required, Types::GroupMembers] :group_members
    #   A list of users or sub groups that belong to a group. This is for
    #   generating Amazon Q Business chat results only from document a user
    #   has access to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_group({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     group_name: "GroupName", # required
    #     data_source_id: "DataSourceId",
    #     type: "INDEX", # required, accepts INDEX, DATASOURCE
    #     group_members: { # required
    #       member_groups: [
    #         {
    #           group_name: "GroupName", # required
    #           type: "INDEX", # accepts INDEX, DATASOURCE
    #         },
    #       ],
    #       member_users: [
    #         {
    #           user_id: "DataSourceUserId", # required
    #           type: "INDEX", # accepts INDEX, DATASOURCE
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PutGroup AWS API Documentation
    #
    # @overload put_group(params = {})
    # @param [Hash] params ({})
    def put_group(params = {}, options = {})
      req = build_request(:put_group, params)
      req.send_request(options)
    end

    # Starts a data source connector synchronization job. If a
    # synchronization job is already in progress, Amazon Q Business returns
    # a `ConflictException`.
    #
    # @option params [required, String] :data_source_id
    #   The identifier of the data source connector.
    #
    # @option params [required, String] :application_id
    #   The identifier of Amazon Q Business application the data source is
    #   connected to.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the data source connector.
    #
    # @return [Types::StartDataSourceSyncJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataSourceSyncJobResponse#execution_id #execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_source_sync_job({
    #     data_source_id: "DataSourceId", # required
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StartDataSourceSyncJob AWS API Documentation
    #
    # @overload start_data_source_sync_job(params = {})
    # @param [Hash] params ({})
    def start_data_source_sync_job(params = {}, options = {})
      req = build_request(:start_data_source_sync_job, params)
      req.send_request(options)
    end

    # Stops an Amazon Q Business data source connector synchronization job
    # already in progress.
    #
    # @option params [required, String] :data_source_id
    #   The identifier of the data source connector.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application that the data
    #   source is connected to.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the Amazon Q Business data
    #   source connector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_data_source_sync_job({
    #     data_source_id: "DataSourceId", # required
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StopDataSourceSyncJob AWS API Documentation
    #
    # @overload stop_data_source_sync_job(params = {})
    # @param [Hash] params ({})
    def stop_data_source_sync_job(params = {}, options = {})
      req = build_request(:stop_data_source_sync_job, params)
      req.send_request(options)
    end

    # Adds the specified tag to the specified Amazon Q Business application
    # or data source resource. If the tag already exists, the existing value
    # is replaced with the new value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business application or
    #   data source to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tag keys to add to the Amazon Q Business application or data
    #   source. If a tag already exists, the existing value is replaced with
    #   the new value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from an Amazon Q Business application or a data source.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business application,
    #   or data source to remove the tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the Amazon Q Business application or
    #   data source. If a tag key does not exist on the resource, it is
    #   ignored.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Q Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application.
    #
    # @option params [String] :identity_center_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance you
    #   are either creating for—or connecting to—your Amazon Q Business
    #   application.
    #
    # @option params [String] :display_name
    #   A name for the Amazon Q Business application.
    #
    # @option params [String] :description
    #   A description for the Amazon Q Business application.
    #
    # @option params [String] :role_arn
    #   An Amazon Web Services Identity and Access Management (IAM) role that
    #   gives Amazon Q Business permission to access Amazon CloudWatch logs
    #   and metrics.
    #
    # @option params [Types::AttachmentsConfiguration] :attachments_configuration
    #   An option to allow end users to upload files directly during chat.
    #
    # @option params [Types::QAppsConfiguration] :q_apps_configuration
    #   An option to allow end users to create and use Amazon Q Apps in the
    #   web experience.
    #
    # @option params [Types::PersonalizationConfiguration] :personalization_configuration
    #   Configuration information about chat response personalization. For
    #   more information, see [Personalizing chat responses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html
    #
    # @option params [Types::AutoSubscriptionConfiguration] :auto_subscription_configuration
    #   An option to enable updating the default subscription type assigned to
    #   an Amazon Q Business application using IAM identity federation for
    #   user management.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_id: "ApplicationId", # required
    #     identity_center_instance_arn: "InstanceArn",
    #     display_name: "ApplicationName",
    #     description: "Description",
    #     role_arn: "RoleArn",
    #     attachments_configuration: {
    #       attachments_control_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     q_apps_configuration: {
    #       q_apps_control_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     personalization_configuration: {
    #       personalization_control_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     auto_subscription_configuration: {
    #       auto_subscribe: "ENABLED", # required, accepts ENABLED, DISABLED
    #       default_subscription_type: "Q_LITE", # accepts Q_LITE, Q_BUSINESS
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates an set of chat controls configured for an existing Amazon Q
    # Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application for which the chat controls are
    #   configured.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to update a Amazon Q
    #   Business application chat configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :response_scope
    #   The response scope configured for your application. This determines
    #   whether your application uses its retrieval augmented generation (RAG)
    #   system to generate answers only from your enterprise data, or also
    #   uses the large language models (LLM) knowledge to respons to end user
    #   questions in chat.
    #
    # @option params [Types::BlockedPhrasesConfigurationUpdate] :blocked_phrases_configuration_update
    #   The phrases blocked from chat by your chat control configuration.
    #
    # @option params [Array<Types::TopicConfiguration>] :topic_configurations_to_create_or_update
    #   The configured topic specific chat controls you want to update.
    #
    # @option params [Array<Types::TopicConfiguration>] :topic_configurations_to_delete
    #   The configured topic specific chat controls you want to delete.
    #
    # @option params [Types::CreatorModeConfiguration] :creator_mode_configuration
    #   The configuration details for `CREATOR_MODE`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_chat_controls_configuration({
    #     application_id: "ApplicationId", # required
    #     client_token: "ClientToken",
    #     response_scope: "ENTERPRISE_CONTENT_ONLY", # accepts ENTERPRISE_CONTENT_ONLY, EXTENDED_KNOWLEDGE_ENABLED
    #     blocked_phrases_configuration_update: {
    #       blocked_phrases_to_create_or_update: ["BlockedPhrase"],
    #       blocked_phrases_to_delete: ["BlockedPhrase"],
    #       system_message_override: "SystemMessageOverride",
    #     },
    #     topic_configurations_to_create_or_update: [
    #       {
    #         name: "TopicConfigurationName", # required
    #         description: "TopicDescription",
    #         example_chat_messages: ["ExampleChatMessage"],
    #         rules: [ # required
    #           {
    #             included_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"],
    #             },
    #             excluded_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"],
    #             },
    #             rule_type: "CONTENT_BLOCKER_RULE", # required, accepts CONTENT_BLOCKER_RULE, CONTENT_RETRIEVAL_RULE
    #             rule_configuration: {
    #               content_blocker_rule: {
    #                 system_message_override: "SystemMessageOverride",
    #               },
    #               content_retrieval_rule: {
    #                 eligible_data_sources: [
    #                   {
    #                     index_id: "IndexId",
    #                     data_source_id: "DataSourceId",
    #                   },
    #                 ],
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #     topic_configurations_to_delete: [
    #       {
    #         name: "TopicConfigurationName", # required
    #         description: "TopicDescription",
    #         example_chat_messages: ["ExampleChatMessage"],
    #         rules: [ # required
    #           {
    #             included_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"],
    #             },
    #             excluded_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"],
    #             },
    #             rule_type: "CONTENT_BLOCKER_RULE", # required, accepts CONTENT_BLOCKER_RULE, CONTENT_RETRIEVAL_RULE
    #             rule_configuration: {
    #               content_blocker_rule: {
    #                 system_message_override: "SystemMessageOverride",
    #               },
    #               content_retrieval_rule: {
    #                 eligible_data_sources: [
    #                   {
    #                     index_id: "IndexId",
    #                     data_source_id: "DataSourceId",
    #                   },
    #                 ],
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #     creator_mode_configuration: {
    #       creator_mode_control: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateChatControlsConfiguration AWS API Documentation
    #
    # @overload update_chat_controls_configuration(params = {})
    # @param [Hash] params ({})
    def update_chat_controls_configuration(params = {}, options = {})
      req = build_request(:update_chat_controls_configuration, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Q Business data source connector.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application the data source is
    #   attached to.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index attached to the data source connector.
    #
    # @option params [required, String] :data_source_id
    #   The identifier of the data source connector.
    #
    # @option params [String] :display_name
    #   A name of the data source connector.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :configuration
    #   Provides the configuration information for an Amazon Q Business data
    #   source.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Types::DataSourceVpcConfiguration] :vpc_configuration
    #   Provides configuration information needed to connect to an Amazon VPC
    #   (Virtual Private Cloud).
    #
    # @option params [String] :description
    #   The description of the data source connector.
    #
    # @option params [String] :sync_schedule
    #   The chosen update frequency for your data source.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the data source and required resources.
    #
    # @option params [Types::DocumentEnrichmentConfiguration] :document_enrichment_configuration
    #   Provides the configuration information for altering document metadata
    #   and content during the document ingestion process.
    #
    #   For more information, see [Custom document enrichment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId", # required
    #     display_name: "DataSourceName",
    #     configuration: {
    #     },
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     description: "Description",
    #     sync_schedule: "SyncSchedule",
    #     role_arn: "RoleArn",
    #     document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             key: "DocumentAttributeKey", # required
    #             operator: "GREATER_THAN", # required, accepts GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
    #             value: {
    #               string_value: "DocumentAttributeValueStringValueString",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           target: {
    #             key: "DocumentAttributeKey", # required
    #             value: {
    #               string_value: "DocumentAttributeValueStringValueString",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #             attribute_value_operator: "DELETE", # accepts DELETE
    #           },
    #           document_content_operator: "DELETE", # accepts DELETE
    #         },
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN", # required, accepts GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
    #           value: {
    #             string_value: "DocumentAttributeValueStringValueString",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn",
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN", # required, accepts GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
    #           value: {
    #             string_value: "DocumentAttributeValueStringValueString",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates an Amazon Q Business index.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application connected to the
    #   index.
    #
    # @option params [required, String] :index_id
    #   The identifier of the Amazon Q Business index.
    #
    # @option params [String] :display_name
    #   The name of the Amazon Q Business index.
    #
    # @option params [String] :description
    #   The description of the Amazon Q Business index.
    #
    # @option params [Types::IndexCapacityConfiguration] :capacity_configuration
    #   The storage capacity units you want to provision for your Amazon Q
    #   Business index. You can add and remove capacity to fit your usage
    #   needs.
    #
    # @option params [Array<Types::DocumentAttributeConfiguration>] :document_attribute_configurations
    #   Configuration information for document metadata or fields. Document
    #   metadata are fields or attributes associated with your documents. For
    #   example, the company department name associated with each document.
    #   For more information, see [Understanding document attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_index({
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     display_name: "ApplicationName",
    #     description: "Description",
    #     capacity_configuration: {
    #       units: 1,
    #     },
    #     document_attribute_configurations: [
    #       {
    #         name: "DocumentMetadataConfigurationName",
    #         type: "STRING", # accepts STRING, STRING_LIST, NUMBER, DATE
    #         search: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateIndex AWS API Documentation
    #
    # @overload update_index(params = {})
    # @param [Hash] params ({})
    def update_index(params = {}, options = {})
      req = build_request(:update_index, params)
      req.send_request(options)
    end

    # Updates an Amazon Q Business plugin.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application the plugin is attached to.
    #
    # @option params [required, String] :plugin_id
    #   The identifier of the plugin.
    #
    # @option params [String] :display_name
    #   The name of the plugin.
    #
    # @option params [String] :state
    #   The status of the plugin.
    #
    # @option params [String] :server_url
    #   The source URL used for plugin configuration.
    #
    # @option params [Types::CustomPluginConfiguration] :custom_plugin_configuration
    #   The configuration for a custom plugin.
    #
    # @option params [Types::PluginAuthConfiguration] :auth_configuration
    #   The authentication configuration the plugin is using.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_plugin({
    #     application_id: "ApplicationId", # required
    #     plugin_id: "PluginId", # required
    #     display_name: "PluginName",
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     server_url: "Url",
    #     custom_plugin_configuration: {
    #       description: "PluginDescription", # required
    #       api_schema_type: "OPEN_API_V3", # required, accepts OPEN_API_V3
    #       api_schema: { # required
    #         payload: "Payload",
    #         s3: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #       },
    #     },
    #     auth_configuration: {
    #       basic_auth_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #       },
    #       o_auth_2_client_credential_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #       },
    #       no_auth_configuration: {
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdatePlugin AWS API Documentation
    #
    # @overload update_plugin(params = {})
    # @param [Hash] params ({})
    def update_plugin(params = {}, options = {})
      req = build_request(:update_plugin, params)
      req.send_request(options)
    end

    # Updates the retriever used for your Amazon Q Business application.
    #
    # @option params [required, String] :application_id
    #   The identifier of your Amazon Q Business application.
    #
    # @option params [required, String] :retriever_id
    #   The identifier of your retriever.
    #
    # @option params [Types::RetrieverConfiguration] :configuration
    #   Provides information on how the retriever used for your Amazon Q
    #   Business application is configured.
    #
    # @option params [String] :display_name
    #   The name of your retriever.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the retriever and required resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_retriever({
    #     application_id: "ApplicationId", # required
    #     retriever_id: "RetrieverId", # required
    #     configuration: {
    #       native_index_configuration: {
    #         index_id: "IndexId", # required
    #         boosting_override: {
    #           "DocumentAttributeKey" => {
    #             number_configuration: {
    #               boosting_level: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH, VERY_HIGH
    #               boosting_type: "PRIORITIZE_LARGER_VALUES", # accepts PRIORITIZE_LARGER_VALUES, PRIORITIZE_SMALLER_VALUES
    #             },
    #             string_configuration: {
    #               boosting_level: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH, VERY_HIGH
    #               attribute_value_boosting: {
    #                 "String" => "LOW", # accepts LOW, MEDIUM, HIGH, VERY_HIGH
    #               },
    #             },
    #             date_configuration: {
    #               boosting_level: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH, VERY_HIGH
    #               boosting_duration_in_seconds: 1,
    #             },
    #             string_list_configuration: {
    #               boosting_level: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH, VERY_HIGH
    #             },
    #           },
    #         },
    #       },
    #       kendra_index_configuration: {
    #         index_id: "KendraIndexId", # required
    #       },
    #     },
    #     display_name: "RetrieverName",
    #     role_arn: "RoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateRetriever AWS API Documentation
    #
    # @overload update_retriever(params = {})
    # @param [Hash] params ({})
    def update_retriever(params = {}, options = {})
      req = build_request(:update_retriever, params)
      req.send_request(options)
    end

    # Updates a information associated with a user id.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application the user is attached to.
    #
    # @option params [required, String] :user_id
    #   The email id attached to the user.
    #
    # @option params [Array<Types::UserAlias>] :user_aliases_to_update
    #   The user aliases attached to the user id that are to be updated.
    #
    # @option params [Array<Types::UserAlias>] :user_aliases_to_delete
    #   The user aliases attached to the user id that are to be deleted.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user_aliases_added #user_aliases_added} => Array&lt;Types::UserAlias&gt;
    #   * {Types::UpdateUserResponse#user_aliases_updated #user_aliases_updated} => Array&lt;Types::UserAlias&gt;
    #   * {Types::UpdateUserResponse#user_aliases_deleted #user_aliases_deleted} => Array&lt;Types::UserAlias&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     application_id: "ApplicationId", # required
    #     user_id: "String", # required
    #     user_aliases_to_update: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       },
    #     ],
    #     user_aliases_to_delete: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.user_aliases_added #=> Array
    #   resp.user_aliases_added[0].index_id #=> String
    #   resp.user_aliases_added[0].data_source_id #=> String
    #   resp.user_aliases_added[0].user_id #=> String
    #   resp.user_aliases_updated #=> Array
    #   resp.user_aliases_updated[0].index_id #=> String
    #   resp.user_aliases_updated[0].data_source_id #=> String
    #   resp.user_aliases_updated[0].user_id #=> String
    #   resp.user_aliases_deleted #=> Array
    #   resp.user_aliases_deleted[0].index_id #=> String
    #   resp.user_aliases_deleted[0].data_source_id #=> String
    #   resp.user_aliases_deleted[0].user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
      req.send_request(options)
    end

    # Updates an Amazon Q Business web experience.
    #
    # @option params [required, String] :application_id
    #   The identifier of the Amazon Q Business application attached to the
    #   web experience.
    #
    # @option params [required, String] :web_experience_id
    #   The identifier of the Amazon Q Business web experience.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the role with permission to access
    #   the Amazon Q Business web experience and required resources.
    #
    # @option params [Types::WebExperienceAuthConfiguration] :authentication_configuration
    #   The authentication configuration of the Amazon Q Business web
    #   experience.
    #
    # @option params [String] :title
    #   The title of the Amazon Q Business web experience.
    #
    # @option params [String] :subtitle
    #   The subtitle of the Amazon Q Business web experience.
    #
    # @option params [String] :welcome_message
    #   A customized welcome message for an end user in an Amazon Q Business
    #   web experience.
    #
    # @option params [String] :sample_prompts_control_mode
    #   Determines whether sample prompts are enabled in the web experience
    #   for an end user.
    #
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Information about the identity provider (IdP) used to authenticate end
    #   users of an Amazon Q Business web experience.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_web_experience({
    #     application_id: "ApplicationId", # required
    #     web_experience_id: "WebExperienceId", # required
    #     role_arn: "RoleArn",
    #     authentication_configuration: {
    #       saml_configuration: {
    #         metadata_xml: "SamlMetadataXML", # required
    #         role_arn: "RoleArn", # required
    #         user_id_attribute: "SamlAttribute", # required
    #         user_group_attribute: "SamlAttribute",
    #       },
    #     },
    #     title: "WebExperienceTitle",
    #     subtitle: "WebExperienceSubtitle",
    #     welcome_message: "WebExperienceWelcomeMessage",
    #     sample_prompts_control_mode: "ENABLED", # accepts ENABLED, DISABLED
    #     identity_provider_configuration: {
    #       saml_configuration: {
    #         authentication_url: "SamlAuthenticationUrl", # required
    #       },
    #       open_id_connect_configuration: {
    #         secrets_arn: "SecretArn", # required
    #         secrets_role: "RoleArn", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateWebExperience AWS API Documentation
    #
    # @overload update_web_experience(params = {})
    # @param [Hash] params ({})
    def update_web_experience(params = {}, options = {})
      req = build_request(:update_web_experience, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::QBusiness')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-qbusiness'
      context[:gem_version] = '1.18.0'
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
