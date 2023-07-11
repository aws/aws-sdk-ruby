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

Aws::Plugins::GlobalConfiguration.add_identifier(:osis)

module Aws::OSIS
  # An API client for OSIS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::OSIS::Client.new(
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

    @identifier = :osis

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
    add_plugin(Aws::OSIS::Plugins::Endpoints)

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
    #   @option options [Aws::OSIS::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::OSIS::EndpointParameters`
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

    # Creates an OpenSearch Ingestion pipeline. For more information, see
    # [Creating Amazon OpenSearch Ingestion pipelines][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html
    #
    # @option params [required, String] :pipeline_name
    #   The name of the OpenSearch Ingestion pipeline to create. Pipeline
    #   names are unique across the pipelines owned by an account within an
    #   Amazon Web Services Region.
    #
    # @option params [required, Integer] :min_units
    #   The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
    #
    # @option params [required, Integer] :max_units
    #   The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
    #
    # @option params [required, String] :pipeline_configuration_body
    #   The pipeline configuration in YAML format. The command accepts the
    #   pipeline configuration as a string or within a .yaml file. If you
    #   provide the configuration as a string, each new line must be escaped
    #   with `\n`.
    #
    # @option params [Types::LogPublishingOptions] :log_publishing_options
    #   Key-value pairs to configure log publishing.
    #
    # @option params [Types::VpcOptions] :vpc_options
    #   Container for the values required to configure VPC access for the
    #   pipeline. If you don't specify these values, OpenSearch Ingestion
    #   creates the pipeline with a public endpoint.
    #
    # @option params [Array<Types::Tag>] :tags
    #   List of tags to add to the pipeline upon creation.
    #
    # @return [Types::CreatePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePipelineResponse#pipeline #pipeline} => Types::Pipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipeline({
    #     pipeline_name: "PipelineName", # required
    #     min_units: 1, # required
    #     max_units: 1, # required
    #     pipeline_configuration_body: "PipelineConfigurationBody", # required
    #     log_publishing_options: {
    #       is_logging_enabled: false,
    #       cloud_watch_log_destination: {
    #         log_group: "LogGroup", # required
    #       },
    #     },
    #     vpc_options: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"],
    #     },
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
    #   resp.pipeline.pipeline_name #=> String
    #   resp.pipeline.pipeline_arn #=> String
    #   resp.pipeline.min_units #=> Integer
    #   resp.pipeline.max_units #=> Integer
    #   resp.pipeline.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"
    #   resp.pipeline.status_reason.description #=> String
    #   resp.pipeline.pipeline_configuration_body #=> String
    #   resp.pipeline.created_at #=> Time
    #   resp.pipeline.last_updated_at #=> Time
    #   resp.pipeline.ingest_endpoint_urls #=> Array
    #   resp.pipeline.ingest_endpoint_urls[0] #=> String
    #   resp.pipeline.log_publishing_options.is_logging_enabled #=> Boolean
    #   resp.pipeline.log_publishing_options.cloud_watch_log_destination.log_group #=> String
    #   resp.pipeline.vpc_endpoints #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids[0] #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/CreatePipeline AWS API Documentation
    #
    # @overload create_pipeline(params = {})
    # @param [Hash] params ({})
    def create_pipeline(params = {}, options = {})
      req = build_request(:create_pipeline, params)
      req.send_request(options)
    end

    # Deletes an OpenSearch Ingestion pipeline. For more information, see
    # [Deleting Amazon OpenSearch Ingestion pipelines][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipeline({
    #     pipeline_name: "PipelineName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/DeletePipeline AWS API Documentation
    #
    # @overload delete_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_pipeline(params = {}, options = {})
      req = build_request(:delete_pipeline, params)
      req.send_request(options)
    end

    # Retrieves information about an OpenSearch Ingestion pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline to get information about.
    #
    # @return [Types::GetPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPipelineResponse#pipeline #pipeline} => Types::Pipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline({
    #     pipeline_name: "PipelineName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.pipeline_name #=> String
    #   resp.pipeline.pipeline_arn #=> String
    #   resp.pipeline.min_units #=> Integer
    #   resp.pipeline.max_units #=> Integer
    #   resp.pipeline.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"
    #   resp.pipeline.status_reason.description #=> String
    #   resp.pipeline.pipeline_configuration_body #=> String
    #   resp.pipeline.created_at #=> Time
    #   resp.pipeline.last_updated_at #=> Time
    #   resp.pipeline.ingest_endpoint_urls #=> Array
    #   resp.pipeline.ingest_endpoint_urls[0] #=> String
    #   resp.pipeline.log_publishing_options.is_logging_enabled #=> Boolean
    #   resp.pipeline.log_publishing_options.cloud_watch_log_destination.log_group #=> String
    #   resp.pipeline.vpc_endpoints #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids[0] #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/GetPipeline AWS API Documentation
    #
    # @overload get_pipeline(params = {})
    # @param [Hash] params ({})
    def get_pipeline(params = {}, options = {})
      req = build_request(:get_pipeline, params)
      req.send_request(options)
    end

    # Retrieves information about a specific blueprint for OpenSearch
    # Ingestion. Blueprints are templates for the configuration needed for a
    # `CreatePipeline` request. For more information, see [Using blueprints
    # to create a pipeline][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint
    #
    # @option params [required, String] :blueprint_name
    #   The name of the blueprint to retrieve.
    #
    # @return [Types::GetPipelineBlueprintResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPipelineBlueprintResponse#blueprint #blueprint} => Types::PipelineBlueprint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline_blueprint({
    #     blueprint_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprint.blueprint_name #=> String
    #   resp.blueprint.pipeline_configuration_body #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/GetPipelineBlueprint AWS API Documentation
    #
    # @overload get_pipeline_blueprint(params = {})
    # @param [Hash] params ({})
    def get_pipeline_blueprint(params = {}, options = {})
      req = build_request(:get_pipeline_blueprint, params)
      req.send_request(options)
    end

    # Returns progress information for the current change happening on an
    # OpenSearch Ingestion pipeline. Currently, this operation only returns
    # information when a pipeline is being created.
    #
    # For more information, see [Tracking the status of pipeline
    # creation][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#get-pipeline-progress
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline.
    #
    # @return [Types::GetPipelineChangeProgressResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPipelineChangeProgressResponse#change_progress_statuses #change_progress_statuses} => Array&lt;Types::ChangeProgressStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline_change_progress({
    #     pipeline_name: "PipelineName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_progress_statuses #=> Array
    #   resp.change_progress_statuses[0].start_time #=> Time
    #   resp.change_progress_statuses[0].status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.change_progress_statuses[0].total_number_of_stages #=> Integer
    #   resp.change_progress_statuses[0].change_progress_stages #=> Array
    #   resp.change_progress_statuses[0].change_progress_stages[0].name #=> String
    #   resp.change_progress_statuses[0].change_progress_stages[0].status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.change_progress_statuses[0].change_progress_stages[0].description #=> String
    #   resp.change_progress_statuses[0].change_progress_stages[0].last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/GetPipelineChangeProgress AWS API Documentation
    #
    # @overload get_pipeline_change_progress(params = {})
    # @param [Hash] params ({})
    def get_pipeline_change_progress(params = {}, options = {})
      req = build_request(:get_pipeline_change_progress, params)
      req.send_request(options)
    end

    # Retrieves a list of all available blueprints for Data Prepper. For
    # more information, see [Using blueprints to create a pipeline][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint
    #
    # @return [Types::ListPipelineBlueprintsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPipelineBlueprintsResponse#blueprints #blueprints} => Array&lt;Types::PipelineBlueprintSummary&gt;
    #
    # @example Response structure
    #
    #   resp.blueprints #=> Array
    #   resp.blueprints[0].blueprint_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ListPipelineBlueprints AWS API Documentation
    #
    # @overload list_pipeline_blueprints(params = {})
    # @param [Hash] params ({})
    def list_pipeline_blueprints(params = {}, options = {})
      req = build_request(:list_pipeline_blueprints, params)
      req.send_request(options)
    end

    # Lists all OpenSearch Ingestion pipelines in the current Amazon Web
    # Services account and Region. For more information, see [Viewing Amazon
    # OpenSearch Ingestion pipelines][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `ListPipelines` operation returns a `nextToken`, you
    #   can include the returned `nextToken` in subsequent `ListPipelines`
    #   operations, which returns results in the next page.
    #
    # @return [Types::ListPipelinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPipelinesResponse#next_token #next_token} => String
    #   * {Types::ListPipelinesResponse#pipelines #pipelines} => Array&lt;Types::PipelineSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipelines({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.pipelines #=> Array
    #   resp.pipelines[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"
    #   resp.pipelines[0].status_reason.description #=> String
    #   resp.pipelines[0].pipeline_name #=> String
    #   resp.pipelines[0].pipeline_arn #=> String
    #   resp.pipelines[0].min_units #=> Integer
    #   resp.pipelines[0].max_units #=> Integer
    #   resp.pipelines[0].created_at #=> Time
    #   resp.pipelines[0].last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ListPipelines AWS API Documentation
    #
    # @overload list_pipelines(params = {})
    # @param [Hash] params ({})
    def list_pipelines(params = {}, options = {})
      req = build_request(:list_pipelines, params)
      req.send_request(options)
    end

    # Lists all resource tags associated with an OpenSearch Ingestion
    # pipeline. For more information, see [Tagging Amazon OpenSearch
    # Ingestion pipelines][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the pipeline to retrieve tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "PipelineArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts an OpenSearch Ingestion pipeline. For more information, see
    # [Starting an OpenSearch Ingestion pipeline][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--start
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline to start.
    #
    # @return [Types::StartPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPipelineResponse#pipeline #pipeline} => Types::Pipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_pipeline({
    #     pipeline_name: "PipelineName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.pipeline_name #=> String
    #   resp.pipeline.pipeline_arn #=> String
    #   resp.pipeline.min_units #=> Integer
    #   resp.pipeline.max_units #=> Integer
    #   resp.pipeline.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"
    #   resp.pipeline.status_reason.description #=> String
    #   resp.pipeline.pipeline_configuration_body #=> String
    #   resp.pipeline.created_at #=> Time
    #   resp.pipeline.last_updated_at #=> Time
    #   resp.pipeline.ingest_endpoint_urls #=> Array
    #   resp.pipeline.ingest_endpoint_urls[0] #=> String
    #   resp.pipeline.log_publishing_options.is_logging_enabled #=> Boolean
    #   resp.pipeline.log_publishing_options.cloud_watch_log_destination.log_group #=> String
    #   resp.pipeline.vpc_endpoints #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids[0] #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/StartPipeline AWS API Documentation
    #
    # @overload start_pipeline(params = {})
    # @param [Hash] params ({})
    def start_pipeline(params = {}, options = {})
      req = build_request(:start_pipeline, params)
      req.send_request(options)
    end

    # Stops an OpenSearch Ingestion pipeline. For more information, see
    # [Stopping an OpenSearch Ingestion pipeline][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline to stop.
    #
    # @return [Types::StopPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopPipelineResponse#pipeline #pipeline} => Types::Pipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_pipeline({
    #     pipeline_name: "PipelineName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.pipeline_name #=> String
    #   resp.pipeline.pipeline_arn #=> String
    #   resp.pipeline.min_units #=> Integer
    #   resp.pipeline.max_units #=> Integer
    #   resp.pipeline.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"
    #   resp.pipeline.status_reason.description #=> String
    #   resp.pipeline.pipeline_configuration_body #=> String
    #   resp.pipeline.created_at #=> Time
    #   resp.pipeline.last_updated_at #=> Time
    #   resp.pipeline.ingest_endpoint_urls #=> Array
    #   resp.pipeline.ingest_endpoint_urls[0] #=> String
    #   resp.pipeline.log_publishing_options.is_logging_enabled #=> Boolean
    #   resp.pipeline.log_publishing_options.cloud_watch_log_destination.log_group #=> String
    #   resp.pipeline.vpc_endpoints #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids[0] #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/StopPipeline AWS API Documentation
    #
    # @overload stop_pipeline(params = {})
    # @param [Hash] params ({})
    def stop_pipeline(params = {}, options = {})
      req = build_request(:stop_pipeline, params)
      req.send_request(options)
    end

    # Tags an OpenSearch Ingestion pipeline. For more information, see
    # [Tagging Amazon OpenSearch Ingestion pipelines][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the pipeline to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of key-value tags to add to the pipeline.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "PipelineArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from an OpenSearch Ingestion pipeline. For
    # more information, see [Tagging Amazon OpenSearch Ingestion
    # pipelines][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the pipeline to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "PipelineArn", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an OpenSearch Ingestion pipeline. For more information, see
    # [Updating Amazon OpenSearch Ingestion pipelines][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline to update.
    #
    # @option params [Integer] :min_units
    #   The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
    #
    # @option params [Integer] :max_units
    #   The maximum pipeline capacity, in Ingestion Compute Units (ICUs)
    #
    # @option params [String] :pipeline_configuration_body
    #   The pipeline configuration in YAML format. The command accepts the
    #   pipeline configuration as a string or within a .yaml file. If you
    #   provide the configuration as a string, each new line must be escaped
    #   with `\n`.
    #
    # @option params [Types::LogPublishingOptions] :log_publishing_options
    #   Key-value pairs to configure log publishing.
    #
    # @return [Types::UpdatePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePipelineResponse#pipeline #pipeline} => Types::Pipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline({
    #     pipeline_name: "PipelineName", # required
    #     min_units: 1,
    #     max_units: 1,
    #     pipeline_configuration_body: "PipelineConfigurationBody",
    #     log_publishing_options: {
    #       is_logging_enabled: false,
    #       cloud_watch_log_destination: {
    #         log_group: "LogGroup", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.pipeline_name #=> String
    #   resp.pipeline.pipeline_arn #=> String
    #   resp.pipeline.min_units #=> Integer
    #   resp.pipeline.max_units #=> Integer
    #   resp.pipeline.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"
    #   resp.pipeline.status_reason.description #=> String
    #   resp.pipeline.pipeline_configuration_body #=> String
    #   resp.pipeline.created_at #=> Time
    #   resp.pipeline.last_updated_at #=> Time
    #   resp.pipeline.ingest_endpoint_urls #=> Array
    #   resp.pipeline.ingest_endpoint_urls[0] #=> String
    #   resp.pipeline.log_publishing_options.is_logging_enabled #=> Boolean
    #   resp.pipeline.log_publishing_options.cloud_watch_log_destination.log_group #=> String
    #   resp.pipeline.vpc_endpoints #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_id #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.subnet_ids[0] #=> String
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids #=> Array
    #   resp.pipeline.vpc_endpoints[0].vpc_options.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/UpdatePipeline AWS API Documentation
    #
    # @overload update_pipeline(params = {})
    # @param [Hash] params ({})
    def update_pipeline(params = {}, options = {})
      req = build_request(:update_pipeline, params)
      req.send_request(options)
    end

    # Checks whether an OpenSearch Ingestion pipeline configuration is valid
    # prior to creation. For more information, see [Creating Amazon
    # OpenSearch Ingestion pipelines][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html
    #
    # @option params [required, String] :pipeline_configuration_body
    #   The pipeline configuration in YAML format. The command accepts the
    #   pipeline configuration as a string or within a .yaml file. If you
    #   provide the configuration as a string, each new line must be escaped
    #   with `\n`.
    #
    # @return [Types::ValidatePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidatePipelineResponse#is_valid #is_valid} => Boolean
    #   * {Types::ValidatePipelineResponse#errors #errors} => Array&lt;Types::ValidationMessage&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_pipeline({
    #     pipeline_configuration_body: "PipelineConfigurationBody", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.is_valid #=> Boolean
    #   resp.errors #=> Array
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ValidatePipeline AWS API Documentation
    #
    # @overload validate_pipeline(params = {})
    # @param [Hash] params ({})
    def validate_pipeline(params = {}, options = {})
      req = build_request(:validate_pipeline, params)
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
      context[:gem_name] = 'aws-sdk-osis'
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
