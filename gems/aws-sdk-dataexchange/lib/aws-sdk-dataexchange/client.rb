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

Aws::Plugins::GlobalConfiguration.add_identifier(:dataexchange)

module Aws::DataExchange
  # An API client for DataExchange.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DataExchange::Client.new(
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

    @identifier = :dataexchange

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
    add_plugin(Aws::DataExchange::Plugins::Endpoints)

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
    #   @option options [Aws::DataExchange::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::DataExchange::EndpointParameters`
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

    # This operation cancels a job. Jobs can be cancelled only when they are
    # in the WAITING state.
    #
    # @option params [required, String] :job_id
    #   The unique identifier for a job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     job_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CancelJob AWS API Documentation
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # This operation creates a data set.
    #
    # @option params [required, String] :asset_type
    #   The type of asset that is added to a data set.
    #
    # @option params [required, String] :description
    #   A description for the data set. This value can be up to 16,348
    #   characters long.
    #
    # @option params [required, String] :name
    #   The name of the data set.
    #
    # @option params [Hash<String,String>] :tags
    #   A data set tag is an optional label that you can assign to a data set
    #   when you create it. Each tag consists of a key and an optional value,
    #   both of which you define. When you use tagging, you can also use
    #   tag-based access control in IAM policies to control access to these
    #   data sets and revisions.
    #
    # @return [Types::CreateDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSetResponse#arn #arn} => String
    #   * {Types::CreateDataSetResponse#asset_type #asset_type} => String
    #   * {Types::CreateDataSetResponse#created_at #created_at} => Time
    #   * {Types::CreateDataSetResponse#description #description} => String
    #   * {Types::CreateDataSetResponse#id #id} => String
    #   * {Types::CreateDataSetResponse#name #name} => String
    #   * {Types::CreateDataSetResponse#origin #origin} => String
    #   * {Types::CreateDataSetResponse#origin_details #origin_details} => Types::OriginDetails
    #   * {Types::CreateDataSetResponse#source_id #source_id} => String
    #   * {Types::CreateDataSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateDataSetResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_set({
    #     asset_type: "S3_SNAPSHOT", # required, accepts S3_SNAPSHOT, REDSHIFT_DATA_SHARE, API_GATEWAY_API, S3_DATA_ACCESS, LAKE_FORMATION_DATA_PERMISSION
    #     description: "Description", # required
    #     name: "Name", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.asset_type #=> String, one of "S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API", "S3_DATA_ACCESS", "LAKE_FORMATION_DATA_PERMISSION"
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.origin #=> String, one of "OWNED", "ENTITLED"
    #   resp.origin_details.product_id #=> String
    #   resp.source_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateDataSet AWS API Documentation
    #
    # @overload create_data_set(params = {})
    # @param [Hash] params ({})
    def create_data_set(params = {}, options = {})
      req = build_request(:create_data_set, params)
      req.send_request(options)
    end

    # This operation creates an event action.
    #
    # @option params [required, Types::Action] :action
    #   What occurs after a certain event.
    #
    # @option params [required, Types::Event] :event
    #   What occurs to start an action.
    #
    # @return [Types::CreateEventActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventActionResponse#action #action} => Types::Action
    #   * {Types::CreateEventActionResponse#arn #arn} => String
    #   * {Types::CreateEventActionResponse#created_at #created_at} => Time
    #   * {Types::CreateEventActionResponse#event #event} => Types::Event
    #   * {Types::CreateEventActionResponse#id #id} => String
    #   * {Types::CreateEventActionResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_action({
    #     action: { # required
    #       export_revision_to_s3: {
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "aws:kms", # required, accepts aws:kms, AES256
    #         },
    #         revision_destination: { # required
    #           bucket: "__string", # required
    #           key_pattern: "__string",
    #         },
    #       },
    #     },
    #     event: { # required
    #       revision_published: {
    #         data_set_id: "Id", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.action.export_revision_to_s3.encryption.kms_key_arn #=> String
    #   resp.action.export_revision_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.action.export_revision_to_s3.revision_destination.bucket #=> String
    #   resp.action.export_revision_to_s3.revision_destination.key_pattern #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.event.revision_published.data_set_id #=> String
    #   resp.id #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateEventAction AWS API Documentation
    #
    # @overload create_event_action(params = {})
    # @param [Hash] params ({})
    def create_event_action(params = {}, options = {})
      req = build_request(:create_event_action, params)
      req.send_request(options)
    end

    # This operation creates a job.
    #
    # @option params [required, Types::RequestDetails] :details
    #   The details for the CreateJob request.
    #
    # @option params [required, String] :type
    #   The type of job to be created.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#arn #arn} => String
    #   * {Types::CreateJobResponse#created_at #created_at} => Time
    #   * {Types::CreateJobResponse#details #details} => Types::ResponseDetails
    #   * {Types::CreateJobResponse#errors #errors} => Array&lt;Types::JobError&gt;
    #   * {Types::CreateJobResponse#id #id} => String
    #   * {Types::CreateJobResponse#state #state} => String
    #   * {Types::CreateJobResponse#type #type} => String
    #   * {Types::CreateJobResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     details: { # required
    #       export_asset_to_signed_url: {
    #         asset_id: "Id", # required
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       export_assets_to_s3: {
    #         asset_destinations: [ # required
    #           {
    #             asset_id: "Id", # required
    #             bucket: "__string", # required
    #             key: "__string",
    #           },
    #         ],
    #         data_set_id: "Id", # required
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "aws:kms", # required, accepts aws:kms, AES256
    #         },
    #         revision_id: "Id", # required
    #       },
    #       export_revisions_to_s3: {
    #         data_set_id: "Id", # required
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "aws:kms", # required, accepts aws:kms, AES256
    #         },
    #         revision_destinations: [ # required
    #           {
    #             bucket: "__string", # required
    #             key_pattern: "__string",
    #             revision_id: "Id", # required
    #           },
    #         ],
    #       },
    #       import_asset_from_signed_url: {
    #         asset_name: "AssetName", # required
    #         data_set_id: "Id", # required
    #         md_5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_s3: {
    #         asset_sources: [ # required
    #           {
    #             bucket: "__string", # required
    #             key: "__string", # required
    #           },
    #         ],
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_redshift_data_shares: {
    #         asset_sources: [ # required
    #           {
    #             data_share_arn: "__string", # required
    #           },
    #         ],
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_asset_from_api_gateway_api: {
    #         api_description: "ApiDescription",
    #         api_id: "__string", # required
    #         api_key: "__string",
    #         api_name: "__string", # required
    #         api_specification_md_5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #         data_set_id: "Id", # required
    #         protocol_type: "REST", # required, accepts REST
    #         revision_id: "Id", # required
    #         stage: "__string", # required
    #       },
    #       create_s3_data_access_from_s3_bucket: {
    #         asset_source: { # required
    #           bucket: "__string", # required
    #           key_prefixes: ["__string"],
    #           keys: ["__string"],
    #           kms_keys_to_grant: [
    #             {
    #               kms_key_arn: "KmsKeyArn", # required
    #             },
    #           ],
    #         },
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_lake_formation_tag_policy: {
    #         catalog_id: "AwsAccountId", # required
    #         database: {
    #           expression: [ # required
    #             {
    #               tag_key: "String", # required
    #               tag_values: ["String"], # required
    #             },
    #           ],
    #           permissions: ["DESCRIBE"], # required, accepts DESCRIBE
    #         },
    #         table: {
    #           expression: [ # required
    #             {
    #               tag_key: "String", # required
    #               tag_values: ["String"], # required
    #             },
    #           ],
    #           permissions: ["DESCRIBE"], # required, accepts DESCRIBE, SELECT
    #         },
    #         role_arn: "RoleArn", # required
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #     },
    #     type: "IMPORT_ASSETS_FROM_S3", # required, accepts IMPORT_ASSETS_FROM_S3, IMPORT_ASSET_FROM_SIGNED_URL, EXPORT_ASSETS_TO_S3, EXPORT_ASSET_TO_SIGNED_URL, EXPORT_REVISIONS_TO_S3, IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES, IMPORT_ASSET_FROM_API_GATEWAY_API, CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET, IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.details.export_asset_to_signed_url.asset_id #=> String
    #   resp.details.export_asset_to_signed_url.data_set_id #=> String
    #   resp.details.export_asset_to_signed_url.revision_id #=> String
    #   resp.details.export_asset_to_signed_url.signed_url #=> String
    #   resp.details.export_asset_to_signed_url.signed_url_expires_at #=> Time
    #   resp.details.export_assets_to_s3.asset_destinations #=> Array
    #   resp.details.export_assets_to_s3.asset_destinations[0].asset_id #=> String
    #   resp.details.export_assets_to_s3.asset_destinations[0].bucket #=> String
    #   resp.details.export_assets_to_s3.asset_destinations[0].key #=> String
    #   resp.details.export_assets_to_s3.data_set_id #=> String
    #   resp.details.export_assets_to_s3.encryption.kms_key_arn #=> String
    #   resp.details.export_assets_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.details.export_assets_to_s3.revision_id #=> String
    #   resp.details.export_revisions_to_s3.data_set_id #=> String
    #   resp.details.export_revisions_to_s3.encryption.kms_key_arn #=> String
    #   resp.details.export_revisions_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.details.export_revisions_to_s3.revision_destinations #=> Array
    #   resp.details.export_revisions_to_s3.revision_destinations[0].bucket #=> String
    #   resp.details.export_revisions_to_s3.revision_destinations[0].key_pattern #=> String
    #   resp.details.export_revisions_to_s3.revision_destinations[0].revision_id #=> String
    #   resp.details.export_revisions_to_s3.event_action_arn #=> String
    #   resp.details.import_asset_from_signed_url.asset_name #=> String
    #   resp.details.import_asset_from_signed_url.data_set_id #=> String
    #   resp.details.import_asset_from_signed_url.md_5_hash #=> String
    #   resp.details.import_asset_from_signed_url.revision_id #=> String
    #   resp.details.import_asset_from_signed_url.signed_url #=> String
    #   resp.details.import_asset_from_signed_url.signed_url_expires_at #=> Time
    #   resp.details.import_assets_from_s3.asset_sources #=> Array
    #   resp.details.import_assets_from_s3.asset_sources[0].bucket #=> String
    #   resp.details.import_assets_from_s3.asset_sources[0].key #=> String
    #   resp.details.import_assets_from_s3.data_set_id #=> String
    #   resp.details.import_assets_from_s3.revision_id #=> String
    #   resp.details.import_assets_from_redshift_data_shares.asset_sources #=> Array
    #   resp.details.import_assets_from_redshift_data_shares.asset_sources[0].data_share_arn #=> String
    #   resp.details.import_assets_from_redshift_data_shares.data_set_id #=> String
    #   resp.details.import_assets_from_redshift_data_shares.revision_id #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_description #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_id #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_key #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_name #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_specification_md_5_hash #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_specification_upload_url #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_specification_upload_url_expires_at #=> Time
    #   resp.details.import_asset_from_api_gateway_api.data_set_id #=> String
    #   resp.details.import_asset_from_api_gateway_api.protocol_type #=> String, one of "REST"
    #   resp.details.import_asset_from_api_gateway_api.revision_id #=> String
    #   resp.details.import_asset_from_api_gateway_api.stage #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.bucket #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.key_prefixes #=> Array
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.key_prefixes[0] #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.keys #=> Array
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.keys[0] #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.kms_keys_to_grant #=> Array
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.kms_keys_to_grant[0].kms_key_arn #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.data_set_id #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.revision_id #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.catalog_id #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.expression #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.expression[0].tag_key #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.expression[0].tag_values #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.expression[0].tag_values[0] #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.permissions #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.permissions[0] #=> String, one of "DESCRIBE"
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.expression #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.expression[0].tag_key #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.expression[0].tag_values #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.expression[0].tag_values[0] #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.permissions #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.permissions[0] #=> String, one of "DESCRIBE", "SELECT"
    #   resp.details.import_assets_from_lake_formation_tag_policy.role_arn #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.data_set_id #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.revision_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].code #=> String, one of "ACCESS_DENIED_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "MALWARE_DETECTED", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "VALIDATION_EXCEPTION", "MALWARE_SCAN_ENCRYPTED_FILE"
    #   resp.errors[0].details.import_asset_from_signed_url_job_error_details.asset_name #=> String
    #   resp.errors[0].details.import_assets_from_s3_job_error_details #=> Array
    #   resp.errors[0].details.import_assets_from_s3_job_error_details[0].bucket #=> String
    #   resp.errors[0].details.import_assets_from_s3_job_error_details[0].key #=> String
    #   resp.errors[0].limit_name #=> String, one of "Assets per revision", "Asset size in GB", "Amazon Redshift datashare assets per revision", "AWS Lake Formation data permission assets per revision", "Amazon S3 data access assets per revision"
    #   resp.errors[0].limit_value #=> Float
    #   resp.errors[0].message #=> String
    #   resp.errors[0].resource_id #=> String
    #   resp.errors[0].resource_type #=> String, one of "REVISION", "ASSET", "DATA_SET"
    #   resp.id #=> String
    #   resp.state #=> String, one of "WAITING", "IN_PROGRESS", "ERROR", "COMPLETED", "CANCELLED", "TIMED_OUT"
    #   resp.type #=> String, one of "IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API", "CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET", "IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # This operation creates a revision for a data set.
    #
    # @option params [String] :comment
    #   An optional comment about the revision.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [Hash<String,String>] :tags
    #   A revision tag is an optional label that you can assign to a revision
    #   when you create it. Each tag consists of a key and an optional value,
    #   both of which you define. When you use tagging, you can also use
    #   tag-based access control in IAM policies to control access to these
    #   data sets and revisions.
    #
    # @return [Types::CreateRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRevisionResponse#arn #arn} => String
    #   * {Types::CreateRevisionResponse#comment #comment} => String
    #   * {Types::CreateRevisionResponse#created_at #created_at} => Time
    #   * {Types::CreateRevisionResponse#data_set_id #data_set_id} => String
    #   * {Types::CreateRevisionResponse#finalized #finalized} => Boolean
    #   * {Types::CreateRevisionResponse#id #id} => String
    #   * {Types::CreateRevisionResponse#source_id #source_id} => String
    #   * {Types::CreateRevisionResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateRevisionResponse#updated_at #updated_at} => Time
    #   * {Types::CreateRevisionResponse#revocation_comment #revocation_comment} => String
    #   * {Types::CreateRevisionResponse#revoked #revoked} => Boolean
    #   * {Types::CreateRevisionResponse#revoked_at #revoked_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_revision({
    #     comment: "__stringMin0Max16384",
    #     data_set_id: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.comment #=> String
    #   resp.created_at #=> Time
    #   resp.data_set_id #=> String
    #   resp.finalized #=> Boolean
    #   resp.id #=> String
    #   resp.source_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.updated_at #=> Time
    #   resp.revocation_comment #=> String
    #   resp.revoked #=> Boolean
    #   resp.revoked_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateRevision AWS API Documentation
    #
    # @overload create_revision(params = {})
    # @param [Hash] params ({})
    def create_revision(params = {}, options = {})
      req = build_request(:create_revision, params)
      req.send_request(options)
    end

    # This operation deletes an asset.
    #
    # @option params [required, String] :asset_id
    #   The unique identifier for an asset.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [required, String] :revision_id
    #   The unique identifier for a revision.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset({
    #     asset_id: "__string", # required
    #     data_set_id: "__string", # required
    #     revision_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DeleteAsset AWS API Documentation
    #
    # @overload delete_asset(params = {})
    # @param [Hash] params ({})
    def delete_asset(params = {}, options = {})
      req = build_request(:delete_asset, params)
      req.send_request(options)
    end

    # This operation deletes a data set.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_set({
    #     data_set_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DeleteDataSet AWS API Documentation
    #
    # @overload delete_data_set(params = {})
    # @param [Hash] params ({})
    def delete_data_set(params = {}, options = {})
      req = build_request(:delete_data_set, params)
      req.send_request(options)
    end

    # This operation deletes the event action.
    #
    # @option params [required, String] :event_action_id
    #   The unique identifier for the event action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_action({
    #     event_action_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DeleteEventAction AWS API Documentation
    #
    # @overload delete_event_action(params = {})
    # @param [Hash] params ({})
    def delete_event_action(params = {}, options = {})
      req = build_request(:delete_event_action, params)
      req.send_request(options)
    end

    # This operation deletes a revision.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [required, String] :revision_id
    #   The unique identifier for a revision.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_revision({
    #     data_set_id: "__string", # required
    #     revision_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DeleteRevision AWS API Documentation
    #
    # @overload delete_revision(params = {})
    # @param [Hash] params ({})
    def delete_revision(params = {}, options = {})
      req = build_request(:delete_revision, params)
      req.send_request(options)
    end

    # This operation returns information about an asset.
    #
    # @option params [required, String] :asset_id
    #   The unique identifier for an asset.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [required, String] :revision_id
    #   The unique identifier for a revision.
    #
    # @return [Types::GetAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetResponse#arn #arn} => String
    #   * {Types::GetAssetResponse#asset_details #asset_details} => Types::AssetDetails
    #   * {Types::GetAssetResponse#asset_type #asset_type} => String
    #   * {Types::GetAssetResponse#created_at #created_at} => Time
    #   * {Types::GetAssetResponse#data_set_id #data_set_id} => String
    #   * {Types::GetAssetResponse#id #id} => String
    #   * {Types::GetAssetResponse#name #name} => String
    #   * {Types::GetAssetResponse#revision_id #revision_id} => String
    #   * {Types::GetAssetResponse#source_id #source_id} => String
    #   * {Types::GetAssetResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset({
    #     asset_id: "__string", # required
    #     data_set_id: "__string", # required
    #     revision_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.asset_details.s3_snapshot_asset.size #=> Float
    #   resp.asset_details.redshift_data_share_asset.arn #=> String
    #   resp.asset_details.api_gateway_api_asset.api_description #=> String
    #   resp.asset_details.api_gateway_api_asset.api_endpoint #=> String
    #   resp.asset_details.api_gateway_api_asset.api_id #=> String
    #   resp.asset_details.api_gateway_api_asset.api_key #=> String
    #   resp.asset_details.api_gateway_api_asset.api_name #=> String
    #   resp.asset_details.api_gateway_api_asset.api_specification_download_url #=> String
    #   resp.asset_details.api_gateway_api_asset.api_specification_download_url_expires_at #=> Time
    #   resp.asset_details.api_gateway_api_asset.protocol_type #=> String, one of "REST"
    #   resp.asset_details.api_gateway_api_asset.stage #=> String
    #   resp.asset_details.s3_data_access_asset.bucket #=> String
    #   resp.asset_details.s3_data_access_asset.key_prefixes #=> Array
    #   resp.asset_details.s3_data_access_asset.key_prefixes[0] #=> String
    #   resp.asset_details.s3_data_access_asset.keys #=> Array
    #   resp.asset_details.s3_data_access_asset.keys[0] #=> String
    #   resp.asset_details.s3_data_access_asset.s3_access_point_alias #=> String
    #   resp.asset_details.s3_data_access_asset.s3_access_point_arn #=> String
    #   resp.asset_details.s3_data_access_asset.kms_keys_to_grant #=> Array
    #   resp.asset_details.s3_data_access_asset.kms_keys_to_grant[0].kms_key_arn #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.catalog_id #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_type #=> String, one of "TABLE", "DATABASE"
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression[0].tag_key #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression[0].tag_values #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression[0].tag_values[0] #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression[0].tag_key #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression[0].tag_values #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression[0].tag_values[0] #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_type #=> String, one of "LFTagPolicy"
    #   resp.asset_details.lake_formation_data_permission_asset.permissions #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.permissions[0] #=> String, one of "DESCRIBE", "SELECT"
    #   resp.asset_details.lake_formation_data_permission_asset.role_arn #=> String
    #   resp.asset_type #=> String, one of "S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API", "S3_DATA_ACCESS", "LAKE_FORMATION_DATA_PERMISSION"
    #   resp.created_at #=> Time
    #   resp.data_set_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.revision_id #=> String
    #   resp.source_id #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetAsset AWS API Documentation
    #
    # @overload get_asset(params = {})
    # @param [Hash] params ({})
    def get_asset(params = {}, options = {})
      req = build_request(:get_asset, params)
      req.send_request(options)
    end

    # This operation returns information about a data set.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @return [Types::GetDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSetResponse#arn #arn} => String
    #   * {Types::GetDataSetResponse#asset_type #asset_type} => String
    #   * {Types::GetDataSetResponse#created_at #created_at} => Time
    #   * {Types::GetDataSetResponse#description #description} => String
    #   * {Types::GetDataSetResponse#id #id} => String
    #   * {Types::GetDataSetResponse#name #name} => String
    #   * {Types::GetDataSetResponse#origin #origin} => String
    #   * {Types::GetDataSetResponse#origin_details #origin_details} => Types::OriginDetails
    #   * {Types::GetDataSetResponse#source_id #source_id} => String
    #   * {Types::GetDataSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetDataSetResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_set({
    #     data_set_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.asset_type #=> String, one of "S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API", "S3_DATA_ACCESS", "LAKE_FORMATION_DATA_PERMISSION"
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.origin #=> String, one of "OWNED", "ENTITLED"
    #   resp.origin_details.product_id #=> String
    #   resp.source_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetDataSet AWS API Documentation
    #
    # @overload get_data_set(params = {})
    # @param [Hash] params ({})
    def get_data_set(params = {}, options = {})
      req = build_request(:get_data_set, params)
      req.send_request(options)
    end

    # This operation retrieves information about an event action.
    #
    # @option params [required, String] :event_action_id
    #   The unique identifier for the event action.
    #
    # @return [Types::GetEventActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventActionResponse#action #action} => Types::Action
    #   * {Types::GetEventActionResponse#arn #arn} => String
    #   * {Types::GetEventActionResponse#created_at #created_at} => Time
    #   * {Types::GetEventActionResponse#event #event} => Types::Event
    #   * {Types::GetEventActionResponse#id #id} => String
    #   * {Types::GetEventActionResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_action({
    #     event_action_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action.export_revision_to_s3.encryption.kms_key_arn #=> String
    #   resp.action.export_revision_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.action.export_revision_to_s3.revision_destination.bucket #=> String
    #   resp.action.export_revision_to_s3.revision_destination.key_pattern #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.event.revision_published.data_set_id #=> String
    #   resp.id #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetEventAction AWS API Documentation
    #
    # @overload get_event_action(params = {})
    # @param [Hash] params ({})
    def get_event_action(params = {}, options = {})
      req = build_request(:get_event_action, params)
      req.send_request(options)
    end

    # This operation returns information about a job.
    #
    # @option params [required, String] :job_id
    #   The unique identifier for a job.
    #
    # @return [Types::GetJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResponse#arn #arn} => String
    #   * {Types::GetJobResponse#created_at #created_at} => Time
    #   * {Types::GetJobResponse#details #details} => Types::ResponseDetails
    #   * {Types::GetJobResponse#errors #errors} => Array&lt;Types::JobError&gt;
    #   * {Types::GetJobResponse#id #id} => String
    #   * {Types::GetJobResponse#state #state} => String
    #   * {Types::GetJobResponse#type #type} => String
    #   * {Types::GetJobResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     job_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.details.export_asset_to_signed_url.asset_id #=> String
    #   resp.details.export_asset_to_signed_url.data_set_id #=> String
    #   resp.details.export_asset_to_signed_url.revision_id #=> String
    #   resp.details.export_asset_to_signed_url.signed_url #=> String
    #   resp.details.export_asset_to_signed_url.signed_url_expires_at #=> Time
    #   resp.details.export_assets_to_s3.asset_destinations #=> Array
    #   resp.details.export_assets_to_s3.asset_destinations[0].asset_id #=> String
    #   resp.details.export_assets_to_s3.asset_destinations[0].bucket #=> String
    #   resp.details.export_assets_to_s3.asset_destinations[0].key #=> String
    #   resp.details.export_assets_to_s3.data_set_id #=> String
    #   resp.details.export_assets_to_s3.encryption.kms_key_arn #=> String
    #   resp.details.export_assets_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.details.export_assets_to_s3.revision_id #=> String
    #   resp.details.export_revisions_to_s3.data_set_id #=> String
    #   resp.details.export_revisions_to_s3.encryption.kms_key_arn #=> String
    #   resp.details.export_revisions_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.details.export_revisions_to_s3.revision_destinations #=> Array
    #   resp.details.export_revisions_to_s3.revision_destinations[0].bucket #=> String
    #   resp.details.export_revisions_to_s3.revision_destinations[0].key_pattern #=> String
    #   resp.details.export_revisions_to_s3.revision_destinations[0].revision_id #=> String
    #   resp.details.export_revisions_to_s3.event_action_arn #=> String
    #   resp.details.import_asset_from_signed_url.asset_name #=> String
    #   resp.details.import_asset_from_signed_url.data_set_id #=> String
    #   resp.details.import_asset_from_signed_url.md_5_hash #=> String
    #   resp.details.import_asset_from_signed_url.revision_id #=> String
    #   resp.details.import_asset_from_signed_url.signed_url #=> String
    #   resp.details.import_asset_from_signed_url.signed_url_expires_at #=> Time
    #   resp.details.import_assets_from_s3.asset_sources #=> Array
    #   resp.details.import_assets_from_s3.asset_sources[0].bucket #=> String
    #   resp.details.import_assets_from_s3.asset_sources[0].key #=> String
    #   resp.details.import_assets_from_s3.data_set_id #=> String
    #   resp.details.import_assets_from_s3.revision_id #=> String
    #   resp.details.import_assets_from_redshift_data_shares.asset_sources #=> Array
    #   resp.details.import_assets_from_redshift_data_shares.asset_sources[0].data_share_arn #=> String
    #   resp.details.import_assets_from_redshift_data_shares.data_set_id #=> String
    #   resp.details.import_assets_from_redshift_data_shares.revision_id #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_description #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_id #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_key #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_name #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_specification_md_5_hash #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_specification_upload_url #=> String
    #   resp.details.import_asset_from_api_gateway_api.api_specification_upload_url_expires_at #=> Time
    #   resp.details.import_asset_from_api_gateway_api.data_set_id #=> String
    #   resp.details.import_asset_from_api_gateway_api.protocol_type #=> String, one of "REST"
    #   resp.details.import_asset_from_api_gateway_api.revision_id #=> String
    #   resp.details.import_asset_from_api_gateway_api.stage #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.bucket #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.key_prefixes #=> Array
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.key_prefixes[0] #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.keys #=> Array
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.keys[0] #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.kms_keys_to_grant #=> Array
    #   resp.details.create_s3_data_access_from_s3_bucket.asset_source.kms_keys_to_grant[0].kms_key_arn #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.data_set_id #=> String
    #   resp.details.create_s3_data_access_from_s3_bucket.revision_id #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.catalog_id #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.expression #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.expression[0].tag_key #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.expression[0].tag_values #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.expression[0].tag_values[0] #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.permissions #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.database.permissions[0] #=> String, one of "DESCRIBE"
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.expression #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.expression[0].tag_key #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.expression[0].tag_values #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.expression[0].tag_values[0] #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.permissions #=> Array
    #   resp.details.import_assets_from_lake_formation_tag_policy.table.permissions[0] #=> String, one of "DESCRIBE", "SELECT"
    #   resp.details.import_assets_from_lake_formation_tag_policy.role_arn #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.data_set_id #=> String
    #   resp.details.import_assets_from_lake_formation_tag_policy.revision_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].code #=> String, one of "ACCESS_DENIED_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "MALWARE_DETECTED", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "VALIDATION_EXCEPTION", "MALWARE_SCAN_ENCRYPTED_FILE"
    #   resp.errors[0].details.import_asset_from_signed_url_job_error_details.asset_name #=> String
    #   resp.errors[0].details.import_assets_from_s3_job_error_details #=> Array
    #   resp.errors[0].details.import_assets_from_s3_job_error_details[0].bucket #=> String
    #   resp.errors[0].details.import_assets_from_s3_job_error_details[0].key #=> String
    #   resp.errors[0].limit_name #=> String, one of "Assets per revision", "Asset size in GB", "Amazon Redshift datashare assets per revision", "AWS Lake Formation data permission assets per revision", "Amazon S3 data access assets per revision"
    #   resp.errors[0].limit_value #=> Float
    #   resp.errors[0].message #=> String
    #   resp.errors[0].resource_id #=> String
    #   resp.errors[0].resource_type #=> String, one of "REVISION", "ASSET", "DATA_SET"
    #   resp.id #=> String
    #   resp.state #=> String, one of "WAITING", "IN_PROGRESS", "ERROR", "COMPLETED", "CANCELLED", "TIMED_OUT"
    #   resp.type #=> String, one of "IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API", "CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET", "IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # This operation returns information about a revision.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [required, String] :revision_id
    #   The unique identifier for a revision.
    #
    # @return [Types::GetRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRevisionResponse#arn #arn} => String
    #   * {Types::GetRevisionResponse#comment #comment} => String
    #   * {Types::GetRevisionResponse#created_at #created_at} => Time
    #   * {Types::GetRevisionResponse#data_set_id #data_set_id} => String
    #   * {Types::GetRevisionResponse#finalized #finalized} => Boolean
    #   * {Types::GetRevisionResponse#id #id} => String
    #   * {Types::GetRevisionResponse#source_id #source_id} => String
    #   * {Types::GetRevisionResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetRevisionResponse#updated_at #updated_at} => Time
    #   * {Types::GetRevisionResponse#revocation_comment #revocation_comment} => String
    #   * {Types::GetRevisionResponse#revoked #revoked} => Boolean
    #   * {Types::GetRevisionResponse#revoked_at #revoked_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_revision({
    #     data_set_id: "__string", # required
    #     revision_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.comment #=> String
    #   resp.created_at #=> Time
    #   resp.data_set_id #=> String
    #   resp.finalized #=> Boolean
    #   resp.id #=> String
    #   resp.source_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.updated_at #=> Time
    #   resp.revocation_comment #=> String
    #   resp.revoked #=> Boolean
    #   resp.revoked_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetRevision AWS API Documentation
    #
    # @overload get_revision(params = {})
    # @param [Hash] params ({})
    def get_revision(params = {}, options = {})
      req = build_request(:get_revision, params)
      req.send_request(options)
    end

    # This operation lists a data set's revisions sorted by CreatedAt in
    # descending order.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by a single call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @return [Types::ListDataSetRevisionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSetRevisionsResponse#next_token #next_token} => String
    #   * {Types::ListDataSetRevisionsResponse#revisions #revisions} => Array&lt;Types::RevisionEntry&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_set_revisions({
    #     data_set_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.revisions #=> Array
    #   resp.revisions[0].arn #=> String
    #   resp.revisions[0].comment #=> String
    #   resp.revisions[0].created_at #=> Time
    #   resp.revisions[0].data_set_id #=> String
    #   resp.revisions[0].finalized #=> Boolean
    #   resp.revisions[0].id #=> String
    #   resp.revisions[0].source_id #=> String
    #   resp.revisions[0].updated_at #=> Time
    #   resp.revisions[0].revocation_comment #=> String
    #   resp.revisions[0].revoked #=> Boolean
    #   resp.revisions[0].revoked_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListDataSetRevisions AWS API Documentation
    #
    # @overload list_data_set_revisions(params = {})
    # @param [Hash] params ({})
    def list_data_set_revisions(params = {}, options = {})
      req = build_request(:list_data_set_revisions, params)
      req.send_request(options)
    end

    # This operation lists your data sets. When listing by origin OWNED,
    # results are sorted by CreatedAt in descending order. When listing by
    # origin ENTITLED, there is no order and the maxResults parameter is
    # ignored.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by a single call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [String] :origin
    #   A property that defines the data set as OWNED by the account (for
    #   providers) or ENTITLED to the account (for subscribers).
    #
    # @return [Types::ListDataSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSetsResponse#data_sets #data_sets} => Array&lt;Types::DataSetEntry&gt;
    #   * {Types::ListDataSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sets({
    #     max_results: 1,
    #     next_token: "__string",
    #     origin: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_sets #=> Array
    #   resp.data_sets[0].arn #=> String
    #   resp.data_sets[0].asset_type #=> String, one of "S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API", "S3_DATA_ACCESS", "LAKE_FORMATION_DATA_PERMISSION"
    #   resp.data_sets[0].created_at #=> Time
    #   resp.data_sets[0].description #=> String
    #   resp.data_sets[0].id #=> String
    #   resp.data_sets[0].name #=> String
    #   resp.data_sets[0].origin #=> String, one of "OWNED", "ENTITLED"
    #   resp.data_sets[0].origin_details.product_id #=> String
    #   resp.data_sets[0].source_id #=> String
    #   resp.data_sets[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListDataSets AWS API Documentation
    #
    # @overload list_data_sets(params = {})
    # @param [Hash] params ({})
    def list_data_sets(params = {}, options = {})
      req = build_request(:list_data_sets, params)
      req.send_request(options)
    end

    # This operation lists your event actions.
    #
    # @option params [String] :event_source_id
    #   The unique identifier for the event source.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by a single call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @return [Types::ListEventActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventActionsResponse#event_actions #event_actions} => Array&lt;Types::EventActionEntry&gt;
    #   * {Types::ListEventActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_actions({
    #     event_source_id: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_actions #=> Array
    #   resp.event_actions[0].action.export_revision_to_s3.encryption.kms_key_arn #=> String
    #   resp.event_actions[0].action.export_revision_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.event_actions[0].action.export_revision_to_s3.revision_destination.bucket #=> String
    #   resp.event_actions[0].action.export_revision_to_s3.revision_destination.key_pattern #=> String
    #   resp.event_actions[0].arn #=> String
    #   resp.event_actions[0].created_at #=> Time
    #   resp.event_actions[0].event.revision_published.data_set_id #=> String
    #   resp.event_actions[0].id #=> String
    #   resp.event_actions[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListEventActions AWS API Documentation
    #
    # @overload list_event_actions(params = {})
    # @param [Hash] params ({})
    def list_event_actions(params = {}, options = {})
      req = build_request(:list_event_actions, params)
      req.send_request(options)
    end

    # This operation lists your jobs sorted by CreatedAt in descending
    # order.
    #
    # @option params [String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by a single call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [String] :revision_id
    #   The unique identifier for a revision.
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#jobs #jobs} => Array&lt;Types::JobEntry&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     data_set_id: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     revision_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].arn #=> String
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].details.export_asset_to_signed_url.asset_id #=> String
    #   resp.jobs[0].details.export_asset_to_signed_url.data_set_id #=> String
    #   resp.jobs[0].details.export_asset_to_signed_url.revision_id #=> String
    #   resp.jobs[0].details.export_asset_to_signed_url.signed_url #=> String
    #   resp.jobs[0].details.export_asset_to_signed_url.signed_url_expires_at #=> Time
    #   resp.jobs[0].details.export_assets_to_s3.asset_destinations #=> Array
    #   resp.jobs[0].details.export_assets_to_s3.asset_destinations[0].asset_id #=> String
    #   resp.jobs[0].details.export_assets_to_s3.asset_destinations[0].bucket #=> String
    #   resp.jobs[0].details.export_assets_to_s3.asset_destinations[0].key #=> String
    #   resp.jobs[0].details.export_assets_to_s3.data_set_id #=> String
    #   resp.jobs[0].details.export_assets_to_s3.encryption.kms_key_arn #=> String
    #   resp.jobs[0].details.export_assets_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.jobs[0].details.export_assets_to_s3.revision_id #=> String
    #   resp.jobs[0].details.export_revisions_to_s3.data_set_id #=> String
    #   resp.jobs[0].details.export_revisions_to_s3.encryption.kms_key_arn #=> String
    #   resp.jobs[0].details.export_revisions_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.jobs[0].details.export_revisions_to_s3.revision_destinations #=> Array
    #   resp.jobs[0].details.export_revisions_to_s3.revision_destinations[0].bucket #=> String
    #   resp.jobs[0].details.export_revisions_to_s3.revision_destinations[0].key_pattern #=> String
    #   resp.jobs[0].details.export_revisions_to_s3.revision_destinations[0].revision_id #=> String
    #   resp.jobs[0].details.export_revisions_to_s3.event_action_arn #=> String
    #   resp.jobs[0].details.import_asset_from_signed_url.asset_name #=> String
    #   resp.jobs[0].details.import_asset_from_signed_url.data_set_id #=> String
    #   resp.jobs[0].details.import_asset_from_signed_url.md_5_hash #=> String
    #   resp.jobs[0].details.import_asset_from_signed_url.revision_id #=> String
    #   resp.jobs[0].details.import_asset_from_signed_url.signed_url #=> String
    #   resp.jobs[0].details.import_asset_from_signed_url.signed_url_expires_at #=> Time
    #   resp.jobs[0].details.import_assets_from_s3.asset_sources #=> Array
    #   resp.jobs[0].details.import_assets_from_s3.asset_sources[0].bucket #=> String
    #   resp.jobs[0].details.import_assets_from_s3.asset_sources[0].key #=> String
    #   resp.jobs[0].details.import_assets_from_s3.data_set_id #=> String
    #   resp.jobs[0].details.import_assets_from_s3.revision_id #=> String
    #   resp.jobs[0].details.import_assets_from_redshift_data_shares.asset_sources #=> Array
    #   resp.jobs[0].details.import_assets_from_redshift_data_shares.asset_sources[0].data_share_arn #=> String
    #   resp.jobs[0].details.import_assets_from_redshift_data_shares.data_set_id #=> String
    #   resp.jobs[0].details.import_assets_from_redshift_data_shares.revision_id #=> String
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.api_description #=> String
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.api_id #=> String
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.api_key #=> String
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.api_name #=> String
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.api_specification_md_5_hash #=> String
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.api_specification_upload_url #=> String
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.api_specification_upload_url_expires_at #=> Time
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.data_set_id #=> String
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.protocol_type #=> String, one of "REST"
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.revision_id #=> String
    #   resp.jobs[0].details.import_asset_from_api_gateway_api.stage #=> String
    #   resp.jobs[0].details.create_s3_data_access_from_s3_bucket.asset_source.bucket #=> String
    #   resp.jobs[0].details.create_s3_data_access_from_s3_bucket.asset_source.key_prefixes #=> Array
    #   resp.jobs[0].details.create_s3_data_access_from_s3_bucket.asset_source.key_prefixes[0] #=> String
    #   resp.jobs[0].details.create_s3_data_access_from_s3_bucket.asset_source.keys #=> Array
    #   resp.jobs[0].details.create_s3_data_access_from_s3_bucket.asset_source.keys[0] #=> String
    #   resp.jobs[0].details.create_s3_data_access_from_s3_bucket.asset_source.kms_keys_to_grant #=> Array
    #   resp.jobs[0].details.create_s3_data_access_from_s3_bucket.asset_source.kms_keys_to_grant[0].kms_key_arn #=> String
    #   resp.jobs[0].details.create_s3_data_access_from_s3_bucket.data_set_id #=> String
    #   resp.jobs[0].details.create_s3_data_access_from_s3_bucket.revision_id #=> String
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.catalog_id #=> String
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.database.expression #=> Array
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.database.expression[0].tag_key #=> String
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.database.expression[0].tag_values #=> Array
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.database.expression[0].tag_values[0] #=> String
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.database.permissions #=> Array
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.database.permissions[0] #=> String, one of "DESCRIBE"
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.table.expression #=> Array
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.table.expression[0].tag_key #=> String
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.table.expression[0].tag_values #=> Array
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.table.expression[0].tag_values[0] #=> String
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.table.permissions #=> Array
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.table.permissions[0] #=> String, one of "DESCRIBE", "SELECT"
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.role_arn #=> String
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.data_set_id #=> String
    #   resp.jobs[0].details.import_assets_from_lake_formation_tag_policy.revision_id #=> String
    #   resp.jobs[0].errors #=> Array
    #   resp.jobs[0].errors[0].code #=> String, one of "ACCESS_DENIED_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "MALWARE_DETECTED", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "VALIDATION_EXCEPTION", "MALWARE_SCAN_ENCRYPTED_FILE"
    #   resp.jobs[0].errors[0].details.import_asset_from_signed_url_job_error_details.asset_name #=> String
    #   resp.jobs[0].errors[0].details.import_assets_from_s3_job_error_details #=> Array
    #   resp.jobs[0].errors[0].details.import_assets_from_s3_job_error_details[0].bucket #=> String
    #   resp.jobs[0].errors[0].details.import_assets_from_s3_job_error_details[0].key #=> String
    #   resp.jobs[0].errors[0].limit_name #=> String, one of "Assets per revision", "Asset size in GB", "Amazon Redshift datashare assets per revision", "AWS Lake Formation data permission assets per revision", "Amazon S3 data access assets per revision"
    #   resp.jobs[0].errors[0].limit_value #=> Float
    #   resp.jobs[0].errors[0].message #=> String
    #   resp.jobs[0].errors[0].resource_id #=> String
    #   resp.jobs[0].errors[0].resource_type #=> String, one of "REVISION", "ASSET", "DATA_SET"
    #   resp.jobs[0].id #=> String
    #   resp.jobs[0].state #=> String, one of "WAITING", "IN_PROGRESS", "ERROR", "COMPLETED", "CANCELLED", "TIMED_OUT"
    #   resp.jobs[0].type #=> String, one of "IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API", "CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET", "IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY"
    #   resp.jobs[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # This operation lists a revision's assets sorted alphabetically in
    # descending order.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by a single call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [required, String] :revision_id
    #   The unique identifier for a revision.
    #
    # @return [Types::ListRevisionAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRevisionAssetsResponse#assets #assets} => Array&lt;Types::AssetEntry&gt;
    #   * {Types::ListRevisionAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_revision_assets({
    #     data_set_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #     revision_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assets #=> Array
    #   resp.assets[0].arn #=> String
    #   resp.assets[0].asset_details.s3_snapshot_asset.size #=> Float
    #   resp.assets[0].asset_details.redshift_data_share_asset.arn #=> String
    #   resp.assets[0].asset_details.api_gateway_api_asset.api_description #=> String
    #   resp.assets[0].asset_details.api_gateway_api_asset.api_endpoint #=> String
    #   resp.assets[0].asset_details.api_gateway_api_asset.api_id #=> String
    #   resp.assets[0].asset_details.api_gateway_api_asset.api_key #=> String
    #   resp.assets[0].asset_details.api_gateway_api_asset.api_name #=> String
    #   resp.assets[0].asset_details.api_gateway_api_asset.api_specification_download_url #=> String
    #   resp.assets[0].asset_details.api_gateway_api_asset.api_specification_download_url_expires_at #=> Time
    #   resp.assets[0].asset_details.api_gateway_api_asset.protocol_type #=> String, one of "REST"
    #   resp.assets[0].asset_details.api_gateway_api_asset.stage #=> String
    #   resp.assets[0].asset_details.s3_data_access_asset.bucket #=> String
    #   resp.assets[0].asset_details.s3_data_access_asset.key_prefixes #=> Array
    #   resp.assets[0].asset_details.s3_data_access_asset.key_prefixes[0] #=> String
    #   resp.assets[0].asset_details.s3_data_access_asset.keys #=> Array
    #   resp.assets[0].asset_details.s3_data_access_asset.keys[0] #=> String
    #   resp.assets[0].asset_details.s3_data_access_asset.s3_access_point_alias #=> String
    #   resp.assets[0].asset_details.s3_data_access_asset.s3_access_point_arn #=> String
    #   resp.assets[0].asset_details.s3_data_access_asset.kms_keys_to_grant #=> Array
    #   resp.assets[0].asset_details.s3_data_access_asset.kms_keys_to_grant[0].kms_key_arn #=> String
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.catalog_id #=> String
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_type #=> String, one of "TABLE", "DATABASE"
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression #=> Array
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression[0].tag_key #=> String
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression[0].tag_values #=> Array
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression[0].tag_values[0] #=> String
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression #=> Array
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression[0].tag_key #=> String
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression[0].tag_values #=> Array
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression[0].tag_values[0] #=> String
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_type #=> String, one of "LFTagPolicy"
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.permissions #=> Array
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.permissions[0] #=> String, one of "DESCRIBE", "SELECT"
    #   resp.assets[0].asset_details.lake_formation_data_permission_asset.role_arn #=> String
    #   resp.assets[0].asset_type #=> String, one of "S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API", "S3_DATA_ACCESS", "LAKE_FORMATION_DATA_PERMISSION"
    #   resp.assets[0].created_at #=> Time
    #   resp.assets[0].data_set_id #=> String
    #   resp.assets[0].id #=> String
    #   resp.assets[0].name #=> String
    #   resp.assets[0].revision_id #=> String
    #   resp.assets[0].source_id #=> String
    #   resp.assets[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListRevisionAssets AWS API Documentation
    #
    # @overload list_revision_assets(params = {})
    # @param [Hash] params ({})
    def list_revision_assets(params = {}, options = {})
      req = build_request(:list_revision_assets, params)
      req.send_request(options)
    end

    # This operation lists the tags on the resource.
    #
    # @option params [required, String] :resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # This operation revokes subscribers' access to a revision.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [required, String] :revision_id
    #   The unique identifier for a revision.
    #
    # @option params [required, String] :revocation_comment
    #   A required comment to inform subscribers of the reason their access to
    #   the revision was revoked.
    #
    # @return [Types::RevokeRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeRevisionResponse#arn #arn} => String
    #   * {Types::RevokeRevisionResponse#comment #comment} => String
    #   * {Types::RevokeRevisionResponse#created_at #created_at} => Time
    #   * {Types::RevokeRevisionResponse#data_set_id #data_set_id} => String
    #   * {Types::RevokeRevisionResponse#finalized #finalized} => Boolean
    #   * {Types::RevokeRevisionResponse#id #id} => String
    #   * {Types::RevokeRevisionResponse#source_id #source_id} => String
    #   * {Types::RevokeRevisionResponse#updated_at #updated_at} => Time
    #   * {Types::RevokeRevisionResponse#revocation_comment #revocation_comment} => String
    #   * {Types::RevokeRevisionResponse#revoked #revoked} => Boolean
    #   * {Types::RevokeRevisionResponse#revoked_at #revoked_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_revision({
    #     data_set_id: "__string", # required
    #     revision_id: "__string", # required
    #     revocation_comment: "__stringMin10Max512", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.comment #=> String
    #   resp.created_at #=> Time
    #   resp.data_set_id #=> String
    #   resp.finalized #=> Boolean
    #   resp.id #=> String
    #   resp.source_id #=> String
    #   resp.updated_at #=> Time
    #   resp.revocation_comment #=> String
    #   resp.revoked #=> Boolean
    #   resp.revoked_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RevokeRevision AWS API Documentation
    #
    # @overload revoke_revision(params = {})
    # @param [Hash] params ({})
    def revoke_revision(params = {}, options = {})
      req = build_request(:revoke_revision, params)
      req.send_request(options)
    end

    # This operation invokes an API Gateway API asset. The request is
    # proxied to the provider’s API Gateway API.
    #
    # @option params [String] :body
    #   The request body.
    #
    # @option params [Hash<String,String>] :query_string_parameters
    #   Attach query string parameters to the end of the URI (for example,
    #   /v1/examplePath?exampleParam=exampleValue).
    #
    # @option params [required, String] :asset_id
    #   Asset ID value for the API request.
    #
    # @option params [required, String] :data_set_id
    #   Data set ID value for the API request.
    #
    # @option params [Hash<String,String>] :request_headers
    #   Any header value prefixed with x-amzn-dataexchange-header- will have
    #   that stripped before sending the Asset API request. Use this when you
    #   want to override a header that AWS Data Exchange uses. Alternatively,
    #   you can use the header without a prefix to the HTTP request.
    #
    # @option params [String] :method
    #   HTTP method value for the API request. Alternatively, you can use the
    #   appropriate verb in your request.
    #
    # @option params [String] :path
    #   URI path value for the API request. Alternatively, you can set the URI
    #   path directly by invoking /v1/\\\{pathValue\\}.
    #
    # @option params [required, String] :revision_id
    #   Revision ID value for the API request.
    #
    # @return [Types::SendApiAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendApiAssetResponse#body #body} => String
    #   * {Types::SendApiAssetResponse#response_headers #response_headers} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_api_asset({
    #     body: "__string",
    #     query_string_parameters: {
    #       "__string" => "__string",
    #     },
    #     asset_id: "__string", # required
    #     data_set_id: "__string", # required
    #     request_headers: {
    #       "__string" => "__string",
    #     },
    #     method: "__string",
    #     path: "__string",
    #     revision_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> String
    #   resp.response_headers #=> Hash
    #   resp.response_headers["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/SendApiAsset AWS API Documentation
    #
    # @overload send_api_asset(params = {})
    # @param [Hash] params ({})
    def send_api_asset(params = {}, options = {})
      req = build_request(:send_api_asset, params)
      req.send_request(options)
    end

    # This operation starts a job.
    #
    # @option params [required, String] :job_id
    #   The unique identifier for a job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job({
    #     job_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/StartJob AWS API Documentation
    #
    # @overload start_job(params = {})
    # @param [Hash] params ({})
    def start_job(params = {}, options = {})
      req = build_request(:start_job, params)
      req.send_request(options)
    end

    # This operation tags a resource.
    #
    # @option params [required, String] :resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A label that consists of a customer-defined key and an optional value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # This operation removes one or more tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key tags.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # This operation updates an asset.
    #
    # @option params [required, String] :asset_id
    #   The unique identifier for an asset.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [required, String] :name
    #   The name of the asset. When importing from Amazon S3, the Amazon S3
    #   object key is used as the asset name. When exporting to Amazon S3, the
    #   asset name is used as default target Amazon S3 object key. When
    #   importing from Amazon API Gateway API, the API name is used as the
    #   asset name. When importing from Amazon Redshift, the datashare name is
    #   used as the asset name. When importing from AWS Lake Formation, the
    #   static values of "Database(s) included in the LF-tag policy" or
    #   "Table(s) included in LF-tag policy" are used as the name.
    #
    # @option params [required, String] :revision_id
    #   The unique identifier for a revision.
    #
    # @return [Types::UpdateAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssetResponse#arn #arn} => String
    #   * {Types::UpdateAssetResponse#asset_details #asset_details} => Types::AssetDetails
    #   * {Types::UpdateAssetResponse#asset_type #asset_type} => String
    #   * {Types::UpdateAssetResponse#created_at #created_at} => Time
    #   * {Types::UpdateAssetResponse#data_set_id #data_set_id} => String
    #   * {Types::UpdateAssetResponse#id #id} => String
    #   * {Types::UpdateAssetResponse#name #name} => String
    #   * {Types::UpdateAssetResponse#revision_id #revision_id} => String
    #   * {Types::UpdateAssetResponse#source_id #source_id} => String
    #   * {Types::UpdateAssetResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset({
    #     asset_id: "__string", # required
    #     data_set_id: "__string", # required
    #     name: "AssetName", # required
    #     revision_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.asset_details.s3_snapshot_asset.size #=> Float
    #   resp.asset_details.redshift_data_share_asset.arn #=> String
    #   resp.asset_details.api_gateway_api_asset.api_description #=> String
    #   resp.asset_details.api_gateway_api_asset.api_endpoint #=> String
    #   resp.asset_details.api_gateway_api_asset.api_id #=> String
    #   resp.asset_details.api_gateway_api_asset.api_key #=> String
    #   resp.asset_details.api_gateway_api_asset.api_name #=> String
    #   resp.asset_details.api_gateway_api_asset.api_specification_download_url #=> String
    #   resp.asset_details.api_gateway_api_asset.api_specification_download_url_expires_at #=> Time
    #   resp.asset_details.api_gateway_api_asset.protocol_type #=> String, one of "REST"
    #   resp.asset_details.api_gateway_api_asset.stage #=> String
    #   resp.asset_details.s3_data_access_asset.bucket #=> String
    #   resp.asset_details.s3_data_access_asset.key_prefixes #=> Array
    #   resp.asset_details.s3_data_access_asset.key_prefixes[0] #=> String
    #   resp.asset_details.s3_data_access_asset.keys #=> Array
    #   resp.asset_details.s3_data_access_asset.keys[0] #=> String
    #   resp.asset_details.s3_data_access_asset.s3_access_point_alias #=> String
    #   resp.asset_details.s3_data_access_asset.s3_access_point_arn #=> String
    #   resp.asset_details.s3_data_access_asset.kms_keys_to_grant #=> Array
    #   resp.asset_details.s3_data_access_asset.kms_keys_to_grant[0].kms_key_arn #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.catalog_id #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_type #=> String, one of "TABLE", "DATABASE"
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression[0].tag_key #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression[0].tag_values #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.database.expression[0].tag_values[0] #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression[0].tag_key #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression[0].tag_values #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_details.lf_tag_policy.resource_details.table.expression[0].tag_values[0] #=> String
    #   resp.asset_details.lake_formation_data_permission_asset.lake_formation_data_permission_type #=> String, one of "LFTagPolicy"
    #   resp.asset_details.lake_formation_data_permission_asset.permissions #=> Array
    #   resp.asset_details.lake_formation_data_permission_asset.permissions[0] #=> String, one of "DESCRIBE", "SELECT"
    #   resp.asset_details.lake_formation_data_permission_asset.role_arn #=> String
    #   resp.asset_type #=> String, one of "S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API", "S3_DATA_ACCESS", "LAKE_FORMATION_DATA_PERMISSION"
    #   resp.created_at #=> Time
    #   resp.data_set_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.revision_id #=> String
    #   resp.source_id #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateAsset AWS API Documentation
    #
    # @overload update_asset(params = {})
    # @param [Hash] params ({})
    def update_asset(params = {}, options = {})
      req = build_request(:update_asset, params)
      req.send_request(options)
    end

    # This operation updates a data set.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [String] :description
    #   The description for the data set.
    #
    # @option params [String] :name
    #   The name of the data set.
    #
    # @return [Types::UpdateDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSetResponse#arn #arn} => String
    #   * {Types::UpdateDataSetResponse#asset_type #asset_type} => String
    #   * {Types::UpdateDataSetResponse#created_at #created_at} => Time
    #   * {Types::UpdateDataSetResponse#description #description} => String
    #   * {Types::UpdateDataSetResponse#id #id} => String
    #   * {Types::UpdateDataSetResponse#name #name} => String
    #   * {Types::UpdateDataSetResponse#origin #origin} => String
    #   * {Types::UpdateDataSetResponse#origin_details #origin_details} => Types::OriginDetails
    #   * {Types::UpdateDataSetResponse#source_id #source_id} => String
    #   * {Types::UpdateDataSetResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set({
    #     data_set_id: "__string", # required
    #     description: "Description",
    #     name: "Name",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.asset_type #=> String, one of "S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API", "S3_DATA_ACCESS", "LAKE_FORMATION_DATA_PERMISSION"
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.origin #=> String, one of "OWNED", "ENTITLED"
    #   resp.origin_details.product_id #=> String
    #   resp.source_id #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateDataSet AWS API Documentation
    #
    # @overload update_data_set(params = {})
    # @param [Hash] params ({})
    def update_data_set(params = {}, options = {})
      req = build_request(:update_data_set, params)
      req.send_request(options)
    end

    # This operation updates the event action.
    #
    # @option params [Types::Action] :action
    #   What occurs after a certain event.
    #
    # @option params [required, String] :event_action_id
    #   The unique identifier for the event action.
    #
    # @return [Types::UpdateEventActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEventActionResponse#action #action} => Types::Action
    #   * {Types::UpdateEventActionResponse#arn #arn} => String
    #   * {Types::UpdateEventActionResponse#created_at #created_at} => Time
    #   * {Types::UpdateEventActionResponse#event #event} => Types::Event
    #   * {Types::UpdateEventActionResponse#id #id} => String
    #   * {Types::UpdateEventActionResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_action({
    #     action: {
    #       export_revision_to_s3: {
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "aws:kms", # required, accepts aws:kms, AES256
    #         },
    #         revision_destination: { # required
    #           bucket: "__string", # required
    #           key_pattern: "__string",
    #         },
    #       },
    #     },
    #     event_action_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action.export_revision_to_s3.encryption.kms_key_arn #=> String
    #   resp.action.export_revision_to_s3.encryption.type #=> String, one of "aws:kms", "AES256"
    #   resp.action.export_revision_to_s3.revision_destination.bucket #=> String
    #   resp.action.export_revision_to_s3.revision_destination.key_pattern #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.event.revision_published.data_set_id #=> String
    #   resp.id #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateEventAction AWS API Documentation
    #
    # @overload update_event_action(params = {})
    # @param [Hash] params ({})
    def update_event_action(params = {}, options = {})
      req = build_request(:update_event_action, params)
      req.send_request(options)
    end

    # This operation updates a revision.
    #
    # @option params [String] :comment
    #   An optional comment about the revision.
    #
    # @option params [required, String] :data_set_id
    #   The unique identifier for a data set.
    #
    # @option params [Boolean] :finalized
    #   Finalizing a revision tells AWS Data Exchange that your changes to the
    #   assets in the revision are complete. After it's in this read-only
    #   state, you can publish the revision to your products.
    #
    # @option params [required, String] :revision_id
    #   The unique identifier for a revision.
    #
    # @return [Types::UpdateRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRevisionResponse#arn #arn} => String
    #   * {Types::UpdateRevisionResponse#comment #comment} => String
    #   * {Types::UpdateRevisionResponse#created_at #created_at} => Time
    #   * {Types::UpdateRevisionResponse#data_set_id #data_set_id} => String
    #   * {Types::UpdateRevisionResponse#finalized #finalized} => Boolean
    #   * {Types::UpdateRevisionResponse#id #id} => String
    #   * {Types::UpdateRevisionResponse#source_id #source_id} => String
    #   * {Types::UpdateRevisionResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateRevisionResponse#revocation_comment #revocation_comment} => String
    #   * {Types::UpdateRevisionResponse#revoked #revoked} => Boolean
    #   * {Types::UpdateRevisionResponse#revoked_at #revoked_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_revision({
    #     comment: "__stringMin0Max16384",
    #     data_set_id: "__string", # required
    #     finalized: false,
    #     revision_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.comment #=> String
    #   resp.created_at #=> Time
    #   resp.data_set_id #=> String
    #   resp.finalized #=> Boolean
    #   resp.id #=> String
    #   resp.source_id #=> String
    #   resp.updated_at #=> Time
    #   resp.revocation_comment #=> String
    #   resp.revoked #=> Boolean
    #   resp.revoked_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateRevision AWS API Documentation
    #
    # @overload update_revision(params = {})
    # @param [Hash] params ({})
    def update_revision(params = {}, options = {})
      req = build_request(:update_revision, params)
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
      context[:gem_name] = 'aws-sdk-dataexchange'
      context[:gem_version] = '1.38.0'
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
