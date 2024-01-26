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

Aws::Plugins::GlobalConfiguration.add_identifier(:neptunegraph)

module Aws::NeptuneGraph
  # An API client for NeptuneGraph.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::NeptuneGraph::Client.new(
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

    @identifier = :neptunegraph

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
    add_plugin(Aws::NeptuneGraph::Plugins::Endpoints)

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
    #   @option options [Aws::NeptuneGraph::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::NeptuneGraph::EndpointParameters`
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

    # Deletes the specified import task
    #
    # @option params [required, String] :task_identifier
    #   The unique identifier of the import task.
    #
    # @return [Types::CancelImportTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelImportTaskOutput#graph_id #graph_id} => String
    #   * {Types::CancelImportTaskOutput#task_id #task_id} => String
    #   * {Types::CancelImportTaskOutput#source #source} => String
    #   * {Types::CancelImportTaskOutput#format #format} => String
    #   * {Types::CancelImportTaskOutput#role_arn #role_arn} => String
    #   * {Types::CancelImportTaskOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_import_task({
    #     task_identifier: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.graph_id #=> String
    #   resp.task_id #=> String
    #   resp.source #=> String
    #   resp.format #=> String, one of "CSV", "OPEN_CYPHER"
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "INITIALIZING", "EXPORTING", "ANALYZING_DATA", "IMPORTING", "REPROVISIONING", "ROLLING_BACK", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CancelImportTask AWS API Documentation
    #
    # @overload cancel_import_task(params = {})
    # @param [Hash] params ({})
    def cancel_import_task(params = {}, options = {})
      req = build_request(:cancel_import_task, params)
      req.send_request(options)
    end

    # Creates a new Neptune Analytics graph.
    #
    # @option params [required, String] :graph_name
    #   A name for the new Neptune Analytics graph to be created.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens.
    #
    # @option params [Hash<String,String>] :tags
    #   Adds metadata tags to the new graph. These tags can also be used with
    #   cost allocation reporting, or used in a Condition statement in an IAM
    #   policy.
    #
    # @option params [Boolean] :public_connectivity
    #   Specifies whether or not the graph can be reachable over the internet.
    #   All access to graphs IAM authenticated. (`true` to enable, or `false`
    #   to disable.
    #
    # @option params [String] :kms_key_identifier
    #   Specifies a KMS key to use to encrypt data in the new graph.
    #
    # @option params [Types::VectorSearchConfiguration] :vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings that will be
    #   loaded into the graph. The value is specified as `dimension=`value.
    #   Max = 65,535
    #
    # @option params [Integer] :replica_count
    #   The number of replicas in other AZs. Min =0, Max = 2, Default =1
    #
    # @option params [Boolean] :deletion_protection
    #   Indicates whether or not to enable deletion protection on the graph.
    #   The graph can’t be deleted when deletion protection is enabled.
    #   (`true` or `false`).
    #
    # @option params [required, Integer] :provisioned_memory
    #   The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to
    #   use for the graph. Min = 128
    #
    # @return [Types::CreateGraphOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGraphOutput#id #id} => String
    #   * {Types::CreateGraphOutput#name #name} => String
    #   * {Types::CreateGraphOutput#arn #arn} => String
    #   * {Types::CreateGraphOutput#status #status} => String
    #   * {Types::CreateGraphOutput#status_reason #status_reason} => String
    #   * {Types::CreateGraphOutput#create_time #create_time} => Time
    #   * {Types::CreateGraphOutput#provisioned_memory #provisioned_memory} => Integer
    #   * {Types::CreateGraphOutput#endpoint #endpoint} => String
    #   * {Types::CreateGraphOutput#public_connectivity #public_connectivity} => Boolean
    #   * {Types::CreateGraphOutput#vector_search_configuration #vector_search_configuration} => Types::VectorSearchConfiguration
    #   * {Types::CreateGraphOutput#replica_count #replica_count} => Integer
    #   * {Types::CreateGraphOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::CreateGraphOutput#source_snapshot_id #source_snapshot_id} => String
    #   * {Types::CreateGraphOutput#deletion_protection #deletion_protection} => Boolean
    #   * {Types::CreateGraphOutput#build_number #build_number} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_graph({
    #     graph_name: "GraphName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     public_connectivity: false,
    #     kms_key_identifier: "KmsKeyArn",
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     deletion_protection: false,
    #     provisioned_memory: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED"
    #   resp.status_reason #=> String
    #   resp.create_time #=> Time
    #   resp.provisioned_memory #=> Integer
    #   resp.endpoint #=> String
    #   resp.public_connectivity #=> Boolean
    #   resp.vector_search_configuration.dimension #=> Integer
    #   resp.replica_count #=> Integer
    #   resp.kms_key_identifier #=> String
    #   resp.source_snapshot_id #=> String
    #   resp.deletion_protection #=> Boolean
    #   resp.build_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreateGraph AWS API Documentation
    #
    # @overload create_graph(params = {})
    # @param [Hash] params ({})
    def create_graph(params = {}, options = {})
      req = build_request(:create_graph, params)
      req.send_request(options)
    end

    # Creates a snapshot of the specific graph.
    #
    # @option params [required, String] :graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #
    # @option params [required, String] :snapshot_name
    #   The snapshot name. For example: `my-snapshot-1`.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens.
    #
    # @option params [Hash<String,String>] :tags
    #   Adds metadata tags to the new graph. These tags can also be used with
    #   cost allocation reporting, or used in a Condition statement in an IAM
    #   policy.
    #
    # @return [Types::CreateGraphSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGraphSnapshotOutput#id #id} => String
    #   * {Types::CreateGraphSnapshotOutput#name #name} => String
    #   * {Types::CreateGraphSnapshotOutput#arn #arn} => String
    #   * {Types::CreateGraphSnapshotOutput#source_graph_id #source_graph_id} => String
    #   * {Types::CreateGraphSnapshotOutput#snapshot_create_time #snapshot_create_time} => Time
    #   * {Types::CreateGraphSnapshotOutput#status #status} => String
    #   * {Types::CreateGraphSnapshotOutput#kms_key_identifier #kms_key_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_graph_snapshot({
    #     graph_identifier: "GraphIdentifier", # required
    #     snapshot_name: "SnapshotName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.source_graph_id #=> String
    #   resp.snapshot_create_time #=> Time
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "FAILED"
    #   resp.kms_key_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreateGraphSnapshot AWS API Documentation
    #
    # @overload create_graph_snapshot(params = {})
    # @param [Hash] params ({})
    def create_graph_snapshot(params = {}, options = {})
      req = build_request(:create_graph_snapshot, params)
      req.send_request(options)
    end

    # Creates a new Neptune Analytics graph and imports data into it, either
    # from Amazon Simple Storage Service (S3) or from a Neptune database or
    # a Neptune database snapshot.
    #
    # The data can be loaded from files in S3 that in either the [Gremlin
    # CSV format][1] or the [openCypher load format][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html
    #
    # @option params [required, String] :graph_name
    #   A name for the new Neptune Analytics graph to be created.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens.
    #
    # @option params [Hash<String,String>] :tags
    #   Adds metadata tags to the new graph. These tags can also be used with
    #   cost allocation reporting, or used in a Condition statement in an IAM
    #   policy.
    #
    # @option params [Boolean] :public_connectivity
    #   Specifies whether or not the graph can be reachable over the internet.
    #   All access to graphs IAM authenticated. (`true` to enable, or `false`
    #   to disable.
    #
    # @option params [String] :kms_key_identifier
    #   Specifies a KMS key to use to encrypt data imported into the new
    #   graph.
    #
    # @option params [Types::VectorSearchConfiguration] :vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings that will be
    #   loaded into the graph. The value is specified as `dimension=`value.
    #   Max = 65,535
    #
    # @option params [Integer] :replica_count
    #   The number of replicas in other AZs to provision on the new graph
    #   after import. Default = 0, Min = 0, Max = 2.
    #
    # @option params [Boolean] :deletion_protection
    #   Indicates whether or not to enable deletion protection on the graph.
    #   The graph can’t be deleted when deletion protection is enabled.
    #   (`true` or `false`).
    #
    # @option params [Types::ImportOptions] :import_options
    #   Contains options for controlling the import process. For example, if
    #   the `failOnError` key is set to `false`, the import skips problem data
    #   and attempts to continue (whereas if set to `true`, the default, or if
    #   omitted, the import operation halts immediately when an error is
    #   encountered.
    #
    # @option params [Integer] :max_provisioned_memory
    #   The maximum provisioned memory-optimized Neptune Capacity Units
    #   (m-NCUs) to use for the graph. Default: 1024, or the approved upper
    #   limit for your account.
    #
    #   If both the minimum and maximum values are specified, the max of the
    #   `min-provisioned-memory` and `max-provisioned memory` is used to
    #   create the graph. If neither value is specified 128 m-NCUs are used.
    #
    # @option params [Integer] :min_provisioned_memory
    #   The minimum provisioned memory-optimized Neptune Capacity Units
    #   (m-NCUs) to use for the graph. Default: 128
    #
    # @option params [Boolean] :fail_on_error
    #   If set to `true`, the task halts when an import error is encountered.
    #   If set to `false`, the task skips the data that caused the error and
    #   continues if possible.
    #
    # @option params [required, String] :source
    #   A URL identifying to the location of the data to be imported. This can
    #   be an Amazon S3 path, or can point to a Neptune database endpoint or
    #   snapshot.
    #
    # @option params [String] :format
    #   Specifies the format of S3 data to be imported. Valid values are
    #   `CSV`, which identifies the [Gremlin CSV format][1] or `OPENCYPHER`,
    #   which identies the [openCypher load format][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
    #   [2]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html
    #
    # @option params [required, String] :role_arn
    #   The ARN of the IAM role that will allow access to the data that is to
    #   be imported.
    #
    # @return [Types::CreateGraphUsingImportTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGraphUsingImportTaskOutput#graph_id #graph_id} => String
    #   * {Types::CreateGraphUsingImportTaskOutput#task_id #task_id} => String
    #   * {Types::CreateGraphUsingImportTaskOutput#source #source} => String
    #   * {Types::CreateGraphUsingImportTaskOutput#format #format} => String
    #   * {Types::CreateGraphUsingImportTaskOutput#role_arn #role_arn} => String
    #   * {Types::CreateGraphUsingImportTaskOutput#status #status} => String
    #   * {Types::CreateGraphUsingImportTaskOutput#import_options #import_options} => Types::ImportOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_graph_using_import_task({
    #     graph_name: "GraphName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     public_connectivity: false,
    #     kms_key_identifier: "KmsKeyArn",
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     deletion_protection: false,
    #     import_options: {
    #       neptune: {
    #         s3_export_path: "NeptuneImportOptionsS3ExportPathString", # required
    #         s3_export_kms_key_id: "NeptuneImportOptionsS3ExportKmsKeyIdString", # required
    #         preserve_default_vertex_labels: false,
    #         preserve_edge_ids: false,
    #       },
    #     },
    #     max_provisioned_memory: 1,
    #     min_provisioned_memory: 1,
    #     fail_on_error: false,
    #     source: "String", # required
    #     format: "CSV", # accepts CSV, OPEN_CYPHER
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.graph_id #=> String
    #   resp.task_id #=> String
    #   resp.source #=> String
    #   resp.format #=> String, one of "CSV", "OPEN_CYPHER"
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "INITIALIZING", "EXPORTING", "ANALYZING_DATA", "IMPORTING", "REPROVISIONING", "ROLLING_BACK", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED"
    #   resp.import_options.neptune.s3_export_path #=> String
    #   resp.import_options.neptune.s3_export_kms_key_id #=> String
    #   resp.import_options.neptune.preserve_default_vertex_labels #=> Boolean
    #   resp.import_options.neptune.preserve_edge_ids #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreateGraphUsingImportTask AWS API Documentation
    #
    # @overload create_graph_using_import_task(params = {})
    # @param [Hash] params ({})
    def create_graph_using_import_task(params = {}, options = {})
      req = build_request(:create_graph_using_import_task, params)
      req.send_request(options)
    end

    # Create a private graph endpoint to allow private access from to the
    # graph from within a VPC. You can attach security groups to the private
    # graph endpoint. VPC endpoint charges apply.
    #
    # @option params [required, String] :graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #
    # @option params [String] :vpc_id
    #   The VPC in which the private graph endpoint needs to be created.
    #
    # @option params [Array<String>] :subnet_ids
    #   Subnets in which private graph endpoint ENIs are created.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   Security groups to be attached to the private graph endpoint..
    #
    # @return [Types::CreatePrivateGraphEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePrivateGraphEndpointOutput#vpc_id #vpc_id} => String
    #   * {Types::CreatePrivateGraphEndpointOutput#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::CreatePrivateGraphEndpointOutput#status #status} => String
    #   * {Types::CreatePrivateGraphEndpointOutput#vpc_endpoint_id #vpc_endpoint_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_private_graph_endpoint({
    #     graph_identifier: "GraphIdentifier", # required
    #     vpc_id: "VpcId",
    #     subnet_ids: ["SubnetId"],
    #     vpc_security_group_ids: ["SecurityGroupId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_id #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "FAILED"
    #   resp.vpc_endpoint_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreatePrivateGraphEndpoint AWS API Documentation
    #
    # @overload create_private_graph_endpoint(params = {})
    # @param [Hash] params ({})
    def create_private_graph_endpoint(params = {}, options = {})
      req = build_request(:create_private_graph_endpoint, params)
      req.send_request(options)
    end

    # Deletes the specified graph. Graphs cannot be deleted if
    # delete-protection is enabled.
    #
    # @option params [required, String] :graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #
    # @option params [required, Boolean] :skip_snapshot
    #   Determines whether a final graph snapshot is created before the graph
    #   is deleted. If `true` is specified, no graph snapshot is created. If
    #   `false` is specified, a graph snapshot is created before the graph is
    #   deleted.
    #
    # @return [Types::DeleteGraphOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGraphOutput#id #id} => String
    #   * {Types::DeleteGraphOutput#name #name} => String
    #   * {Types::DeleteGraphOutput#arn #arn} => String
    #   * {Types::DeleteGraphOutput#status #status} => String
    #   * {Types::DeleteGraphOutput#status_reason #status_reason} => String
    #   * {Types::DeleteGraphOutput#create_time #create_time} => Time
    #   * {Types::DeleteGraphOutput#provisioned_memory #provisioned_memory} => Integer
    #   * {Types::DeleteGraphOutput#endpoint #endpoint} => String
    #   * {Types::DeleteGraphOutput#public_connectivity #public_connectivity} => Boolean
    #   * {Types::DeleteGraphOutput#vector_search_configuration #vector_search_configuration} => Types::VectorSearchConfiguration
    #   * {Types::DeleteGraphOutput#replica_count #replica_count} => Integer
    #   * {Types::DeleteGraphOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::DeleteGraphOutput#source_snapshot_id #source_snapshot_id} => String
    #   * {Types::DeleteGraphOutput#deletion_protection #deletion_protection} => Boolean
    #   * {Types::DeleteGraphOutput#build_number #build_number} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_graph({
    #     graph_identifier: "GraphIdentifier", # required
    #     skip_snapshot: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED"
    #   resp.status_reason #=> String
    #   resp.create_time #=> Time
    #   resp.provisioned_memory #=> Integer
    #   resp.endpoint #=> String
    #   resp.public_connectivity #=> Boolean
    #   resp.vector_search_configuration.dimension #=> Integer
    #   resp.replica_count #=> Integer
    #   resp.kms_key_identifier #=> String
    #   resp.source_snapshot_id #=> String
    #   resp.deletion_protection #=> Boolean
    #   resp.build_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/DeleteGraph AWS API Documentation
    #
    # @overload delete_graph(params = {})
    # @param [Hash] params ({})
    def delete_graph(params = {}, options = {})
      req = build_request(:delete_graph, params)
      req.send_request(options)
    end

    # Deletes the specifed graph snapshot.
    #
    # @option params [required, String] :snapshot_identifier
    #   ID of the graph snapshot to be deleted.
    #
    # @return [Types::DeleteGraphSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGraphSnapshotOutput#id #id} => String
    #   * {Types::DeleteGraphSnapshotOutput#name #name} => String
    #   * {Types::DeleteGraphSnapshotOutput#arn #arn} => String
    #   * {Types::DeleteGraphSnapshotOutput#source_graph_id #source_graph_id} => String
    #   * {Types::DeleteGraphSnapshotOutput#snapshot_create_time #snapshot_create_time} => Time
    #   * {Types::DeleteGraphSnapshotOutput#status #status} => String
    #   * {Types::DeleteGraphSnapshotOutput#kms_key_identifier #kms_key_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_graph_snapshot({
    #     snapshot_identifier: "SnapshotIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.source_graph_id #=> String
    #   resp.snapshot_create_time #=> Time
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "FAILED"
    #   resp.kms_key_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/DeleteGraphSnapshot AWS API Documentation
    #
    # @overload delete_graph_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_graph_snapshot(params = {}, options = {})
      req = build_request(:delete_graph_snapshot, params)
      req.send_request(options)
    end

    # Deletes a private graph endpoint.
    #
    # @option params [required, String] :graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC where the private endpoint is located.
    #
    # @return [Types::DeletePrivateGraphEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePrivateGraphEndpointOutput#vpc_id #vpc_id} => String
    #   * {Types::DeletePrivateGraphEndpointOutput#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::DeletePrivateGraphEndpointOutput#status #status} => String
    #   * {Types::DeletePrivateGraphEndpointOutput#vpc_endpoint_id #vpc_endpoint_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_private_graph_endpoint({
    #     graph_identifier: "GraphIdentifier", # required
    #     vpc_id: "VpcId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_id #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "FAILED"
    #   resp.vpc_endpoint_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/DeletePrivateGraphEndpoint AWS API Documentation
    #
    # @overload delete_private_graph_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_private_graph_endpoint(params = {}, options = {})
      req = build_request(:delete_private_graph_endpoint, params)
      req.send_request(options)
    end

    # Gets information about a specified graph.
    #
    # @option params [required, String] :graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #
    # @return [Types::GetGraphOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGraphOutput#id #id} => String
    #   * {Types::GetGraphOutput#name #name} => String
    #   * {Types::GetGraphOutput#arn #arn} => String
    #   * {Types::GetGraphOutput#status #status} => String
    #   * {Types::GetGraphOutput#status_reason #status_reason} => String
    #   * {Types::GetGraphOutput#create_time #create_time} => Time
    #   * {Types::GetGraphOutput#provisioned_memory #provisioned_memory} => Integer
    #   * {Types::GetGraphOutput#endpoint #endpoint} => String
    #   * {Types::GetGraphOutput#public_connectivity #public_connectivity} => Boolean
    #   * {Types::GetGraphOutput#vector_search_configuration #vector_search_configuration} => Types::VectorSearchConfiguration
    #   * {Types::GetGraphOutput#replica_count #replica_count} => Integer
    #   * {Types::GetGraphOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::GetGraphOutput#source_snapshot_id #source_snapshot_id} => String
    #   * {Types::GetGraphOutput#deletion_protection #deletion_protection} => Boolean
    #   * {Types::GetGraphOutput#build_number #build_number} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_graph({
    #     graph_identifier: "GraphIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED"
    #   resp.status_reason #=> String
    #   resp.create_time #=> Time
    #   resp.provisioned_memory #=> Integer
    #   resp.endpoint #=> String
    #   resp.public_connectivity #=> Boolean
    #   resp.vector_search_configuration.dimension #=> Integer
    #   resp.replica_count #=> Integer
    #   resp.kms_key_identifier #=> String
    #   resp.source_snapshot_id #=> String
    #   resp.deletion_protection #=> Boolean
    #   resp.build_number #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * graph_available
    #   * graph_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetGraph AWS API Documentation
    #
    # @overload get_graph(params = {})
    # @param [Hash] params ({})
    def get_graph(params = {}, options = {})
      req = build_request(:get_graph, params)
      req.send_request(options)
    end

    # Retrieves a specified graph snapshot.
    #
    # @option params [required, String] :snapshot_identifier
    #   The ID of the snapshot to retrieve.
    #
    # @return [Types::GetGraphSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGraphSnapshotOutput#id #id} => String
    #   * {Types::GetGraphSnapshotOutput#name #name} => String
    #   * {Types::GetGraphSnapshotOutput#arn #arn} => String
    #   * {Types::GetGraphSnapshotOutput#source_graph_id #source_graph_id} => String
    #   * {Types::GetGraphSnapshotOutput#snapshot_create_time #snapshot_create_time} => Time
    #   * {Types::GetGraphSnapshotOutput#status #status} => String
    #   * {Types::GetGraphSnapshotOutput#kms_key_identifier #kms_key_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_graph_snapshot({
    #     snapshot_identifier: "SnapshotIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.source_graph_id #=> String
    #   resp.snapshot_create_time #=> Time
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "FAILED"
    #   resp.kms_key_identifier #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * graph_snapshot_available
    #   * graph_snapshot_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetGraphSnapshot AWS API Documentation
    #
    # @overload get_graph_snapshot(params = {})
    # @param [Hash] params ({})
    def get_graph_snapshot(params = {}, options = {})
      req = build_request(:get_graph_snapshot, params)
      req.send_request(options)
    end

    # Retrieves a specified import task.
    #
    # @option params [required, String] :task_identifier
    #   The unique identifier of the import task.
    #
    # @return [Types::GetImportTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportTaskOutput#graph_id #graph_id} => String
    #   * {Types::GetImportTaskOutput#task_id #task_id} => String
    #   * {Types::GetImportTaskOutput#source #source} => String
    #   * {Types::GetImportTaskOutput#format #format} => String
    #   * {Types::GetImportTaskOutput#role_arn #role_arn} => String
    #   * {Types::GetImportTaskOutput#status #status} => String
    #   * {Types::GetImportTaskOutput#import_options #import_options} => Types::ImportOptions
    #   * {Types::GetImportTaskOutput#import_task_details #import_task_details} => Types::ImportTaskDetails
    #   * {Types::GetImportTaskOutput#attempt_number #attempt_number} => Integer
    #   * {Types::GetImportTaskOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_task({
    #     task_identifier: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.graph_id #=> String
    #   resp.task_id #=> String
    #   resp.source #=> String
    #   resp.format #=> String, one of "CSV", "OPEN_CYPHER"
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "INITIALIZING", "EXPORTING", "ANALYZING_DATA", "IMPORTING", "REPROVISIONING", "ROLLING_BACK", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED"
    #   resp.import_options.neptune.s3_export_path #=> String
    #   resp.import_options.neptune.s3_export_kms_key_id #=> String
    #   resp.import_options.neptune.preserve_default_vertex_labels #=> Boolean
    #   resp.import_options.neptune.preserve_edge_ids #=> Boolean
    #   resp.import_task_details.status #=> String
    #   resp.import_task_details.start_time #=> Time
    #   resp.import_task_details.time_elapsed_seconds #=> Integer
    #   resp.import_task_details.progress_percentage #=> Integer
    #   resp.import_task_details.error_count #=> Integer
    #   resp.import_task_details.error_details #=> String
    #   resp.import_task_details.statement_count #=> Integer
    #   resp.import_task_details.dictionary_entry_count #=> Integer
    #   resp.attempt_number #=> Integer
    #   resp.status_reason #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * import_task_cancelled
    #   * import_task_successful
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetImportTask AWS API Documentation
    #
    # @overload get_import_task(params = {})
    # @param [Hash] params ({})
    def get_import_task(params = {}, options = {})
      req = build_request(:get_import_task, params)
      req.send_request(options)
    end

    # Retrieves information about a specified private endpoint.
    #
    # @option params [required, String] :graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC where the private endpoint is located.
    #
    # @return [Types::GetPrivateGraphEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPrivateGraphEndpointOutput#vpc_id #vpc_id} => String
    #   * {Types::GetPrivateGraphEndpointOutput#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::GetPrivateGraphEndpointOutput#status #status} => String
    #   * {Types::GetPrivateGraphEndpointOutput#vpc_endpoint_id #vpc_endpoint_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_private_graph_endpoint({
    #     graph_identifier: "GraphIdentifier", # required
    #     vpc_id: "VpcId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_id #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "FAILED"
    #   resp.vpc_endpoint_id #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * private_graph_endpoint_available
    #   * private_graph_endpoint_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetPrivateGraphEndpoint AWS API Documentation
    #
    # @overload get_private_graph_endpoint(params = {})
    # @param [Hash] params ({})
    def get_private_graph_endpoint(params = {}, options = {})
      req = build_request(:get_private_graph_endpoint, params)
      req.send_request(options)
    end

    # Lists available snapshots of a specified Neptune Analytics graph.
    #
    # @option params [String] :graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #
    # @option params [String] :next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results from
    #   where the previous response left off. When this value is present in
    #   output, it indicates that there are more results to retrieve.
    #
    # @option params [Integer] :max_results
    #   The total number of records to return in the command's output.
    #
    #   If the total number of records available is more than the value
    #   specified, `nextToken` is provided in the command's output. To resume
    #   pagination, provide the `nextToken` output value in the `nextToken`
    #   argument of a subsequent command. Do not use the `nextToken` response
    #   element directly outside of the Amazon CLI.
    #
    # @return [Types::ListGraphSnapshotsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGraphSnapshotsOutput#graph_snapshots #graph_snapshots} => Array&lt;Types::GraphSnapshotSummary&gt;
    #   * {Types::ListGraphSnapshotsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_graph_snapshots({
    #     graph_identifier: "GraphIdentifier",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.graph_snapshots #=> Array
    #   resp.graph_snapshots[0].id #=> String
    #   resp.graph_snapshots[0].name #=> String
    #   resp.graph_snapshots[0].arn #=> String
    #   resp.graph_snapshots[0].source_graph_id #=> String
    #   resp.graph_snapshots[0].snapshot_create_time #=> Time
    #   resp.graph_snapshots[0].status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "FAILED"
    #   resp.graph_snapshots[0].kms_key_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListGraphSnapshots AWS API Documentation
    #
    # @overload list_graph_snapshots(params = {})
    # @param [Hash] params ({})
    def list_graph_snapshots(params = {}, options = {})
      req = build_request(:list_graph_snapshots, params)
      req.send_request(options)
    end

    # Lists available Neptune Analytics graphs.
    #
    # @option params [String] :next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results from
    #   where the previous response left off. When this value is present in
    #   output, it indicates that there are more results to retrieve.
    #
    # @option params [Integer] :max_results
    #   The total number of records to return in the command's output.
    #
    #   If the total number of records available is more than the value
    #   specified, `nextToken` is provided in the command's output. To resume
    #   pagination, provide the `nextToken` output value in the `nextToken`
    #   argument of a subsequent command. Do not use the `nextToken` response
    #   element directly outside of the Amazon CLI.
    #
    # @return [Types::ListGraphsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGraphsOutput#graphs #graphs} => Array&lt;Types::GraphSummary&gt;
    #   * {Types::ListGraphsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_graphs({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.graphs #=> Array
    #   resp.graphs[0].id #=> String
    #   resp.graphs[0].name #=> String
    #   resp.graphs[0].arn #=> String
    #   resp.graphs[0].status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED"
    #   resp.graphs[0].provisioned_memory #=> Integer
    #   resp.graphs[0].public_connectivity #=> Boolean
    #   resp.graphs[0].endpoint #=> String
    #   resp.graphs[0].replica_count #=> Integer
    #   resp.graphs[0].kms_key_identifier #=> String
    #   resp.graphs[0].deletion_protection #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListGraphs AWS API Documentation
    #
    # @overload list_graphs(params = {})
    # @param [Hash] params ({})
    def list_graphs(params = {}, options = {})
      req = build_request(:list_graphs, params)
      req.send_request(options)
    end

    # Lists import tasks.
    #
    # @option params [String] :next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results from
    #   where the previous response left off. When this value is present in
    #   output, it indicates that there are more results to retrieve.
    #
    # @option params [Integer] :max_results
    #   The total number of records to return in the command's output.
    #
    #   If the total number of records available is more than the value
    #   specified, `nextToken` is provided in the command's output. To resume
    #   pagination, provide the `nextToken` output value in the `nextToken`
    #   argument of a subsequent command. Do not use the `nextToken` response
    #   element directly outside of the Amazon CLI.
    #
    # @return [Types::ListImportTasksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportTasksOutput#tasks #tasks} => Array&lt;Types::ImportTaskSummary&gt;
    #   * {Types::ListImportTasksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_import_tasks({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].graph_id #=> String
    #   resp.tasks[0].task_id #=> String
    #   resp.tasks[0].source #=> String
    #   resp.tasks[0].format #=> String, one of "CSV", "OPEN_CYPHER"
    #   resp.tasks[0].role_arn #=> String
    #   resp.tasks[0].status #=> String, one of "INITIALIZING", "EXPORTING", "ANALYZING_DATA", "IMPORTING", "REPROVISIONING", "ROLLING_BACK", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListImportTasks AWS API Documentation
    #
    # @overload list_import_tasks(params = {})
    # @param [Hash] params ({})
    def list_import_tasks(params = {}, options = {})
      req = build_request(:list_import_tasks, params)
      req.send_request(options)
    end

    # Lists private endpoints for a specified Neptune Analytics graph.
    #
    # @option params [required, String] :graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #
    # @option params [String] :next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results from
    #   where the previous response left off. When this value is present in
    #   output, it indicates that there are more results to retrieve.
    #
    # @option params [Integer] :max_results
    #   The total number of records to return in the command's output.
    #
    #   If the total number of records available is more than the value
    #   specified, `nextToken` is provided in the command's output. To resume
    #   pagination, provide the `nextToken` output value in the `nextToken`
    #   argument of a subsequent command. Do not use the `nextToken` response
    #   element directly outside of the Amazon CLI.
    #
    # @return [Types::ListPrivateGraphEndpointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrivateGraphEndpointsOutput#private_graph_endpoints #private_graph_endpoints} => Array&lt;Types::PrivateGraphEndpointSummary&gt;
    #   * {Types::ListPrivateGraphEndpointsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_private_graph_endpoints({
    #     graph_identifier: "GraphIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.private_graph_endpoints #=> Array
    #   resp.private_graph_endpoints[0].vpc_id #=> String
    #   resp.private_graph_endpoints[0].subnet_ids #=> Array
    #   resp.private_graph_endpoints[0].subnet_ids[0] #=> String
    #   resp.private_graph_endpoints[0].status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "FAILED"
    #   resp.private_graph_endpoints[0].vpc_endpoint_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListPrivateGraphEndpoints AWS API Documentation
    #
    # @overload list_private_graph_endpoints(params = {})
    # @param [Hash] params ({})
    def list_private_graph_endpoints(params = {}, options = {})
      req = build_request(:list_private_graph_endpoints, params)
      req.send_request(options)
    end

    # Lists tags associated with a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Empties the data from a specified Neptune Analytics graph.
    #
    # @option params [required, String] :graph_identifier
    #   ID of the graph to reset.
    #
    # @option params [required, Boolean] :skip_snapshot
    #   Determines whether a final graph snapshot is created before the graph
    #   data is deleted. If set to `true`, no graph snapshot is created. If
    #   set to `false`, a graph snapshot is created before the data is
    #   deleted.
    #
    # @return [Types::ResetGraphOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetGraphOutput#id #id} => String
    #   * {Types::ResetGraphOutput#name #name} => String
    #   * {Types::ResetGraphOutput#arn #arn} => String
    #   * {Types::ResetGraphOutput#status #status} => String
    #   * {Types::ResetGraphOutput#status_reason #status_reason} => String
    #   * {Types::ResetGraphOutput#create_time #create_time} => Time
    #   * {Types::ResetGraphOutput#provisioned_memory #provisioned_memory} => Integer
    #   * {Types::ResetGraphOutput#endpoint #endpoint} => String
    #   * {Types::ResetGraphOutput#public_connectivity #public_connectivity} => Boolean
    #   * {Types::ResetGraphOutput#vector_search_configuration #vector_search_configuration} => Types::VectorSearchConfiguration
    #   * {Types::ResetGraphOutput#replica_count #replica_count} => Integer
    #   * {Types::ResetGraphOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::ResetGraphOutput#source_snapshot_id #source_snapshot_id} => String
    #   * {Types::ResetGraphOutput#deletion_protection #deletion_protection} => Boolean
    #   * {Types::ResetGraphOutput#build_number #build_number} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_graph({
    #     graph_identifier: "GraphIdentifier", # required
    #     skip_snapshot: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED"
    #   resp.status_reason #=> String
    #   resp.create_time #=> Time
    #   resp.provisioned_memory #=> Integer
    #   resp.endpoint #=> String
    #   resp.public_connectivity #=> Boolean
    #   resp.vector_search_configuration.dimension #=> Integer
    #   resp.replica_count #=> Integer
    #   resp.kms_key_identifier #=> String
    #   resp.source_snapshot_id #=> String
    #   resp.deletion_protection #=> Boolean
    #   resp.build_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ResetGraph AWS API Documentation
    #
    # @overload reset_graph(params = {})
    # @param [Hash] params ({})
    def reset_graph(params = {}, options = {})
      req = build_request(:reset_graph, params)
      req.send_request(options)
    end

    # Restores a graph from a snapshot.
    #
    # @option params [required, String] :snapshot_identifier
    #   The ID of the snapshot in question.
    #
    # @option params [required, String] :graph_name
    #   A name for the new Neptune Analytics graph to be created from the
    #   snapshot.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens.
    #
    # @option params [Integer] :provisioned_memory
    #   The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to
    #   use for the graph. Min = 128
    #
    # @option params [Boolean] :deletion_protection
    #   A value that indicates whether the graph has deletion protection
    #   enabled. The graph can't be deleted when deletion protection is
    #   enabled.
    #
    # @option params [Hash<String,String>] :tags
    #   Adds metadata tags to the snapshot. These tags can also be used with
    #   cost allocation reporting, or used in a Condition statement in an IAM
    #   policy.
    #
    # @option params [Integer] :replica_count
    #   The number of replicas in other AZs. Min =0, Max = 2, Default =1
    #
    # @option params [Boolean] :public_connectivity
    #   Specifies whether or not the graph can be reachable over the internet.
    #   All access to graphs IAM authenticated. (`true` to enable, or `false`
    #   to disable).
    #
    # @return [Types::RestoreGraphFromSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreGraphFromSnapshotOutput#id #id} => String
    #   * {Types::RestoreGraphFromSnapshotOutput#name #name} => String
    #   * {Types::RestoreGraphFromSnapshotOutput#arn #arn} => String
    #   * {Types::RestoreGraphFromSnapshotOutput#status #status} => String
    #   * {Types::RestoreGraphFromSnapshotOutput#status_reason #status_reason} => String
    #   * {Types::RestoreGraphFromSnapshotOutput#create_time #create_time} => Time
    #   * {Types::RestoreGraphFromSnapshotOutput#provisioned_memory #provisioned_memory} => Integer
    #   * {Types::RestoreGraphFromSnapshotOutput#endpoint #endpoint} => String
    #   * {Types::RestoreGraphFromSnapshotOutput#public_connectivity #public_connectivity} => Boolean
    #   * {Types::RestoreGraphFromSnapshotOutput#vector_search_configuration #vector_search_configuration} => Types::VectorSearchConfiguration
    #   * {Types::RestoreGraphFromSnapshotOutput#replica_count #replica_count} => Integer
    #   * {Types::RestoreGraphFromSnapshotOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::RestoreGraphFromSnapshotOutput#source_snapshot_id #source_snapshot_id} => String
    #   * {Types::RestoreGraphFromSnapshotOutput#deletion_protection #deletion_protection} => Boolean
    #   * {Types::RestoreGraphFromSnapshotOutput#build_number #build_number} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_graph_from_snapshot({
    #     snapshot_identifier: "SnapshotIdentifier", # required
    #     graph_name: "GraphName", # required
    #     provisioned_memory: 1,
    #     deletion_protection: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     replica_count: 1,
    #     public_connectivity: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED"
    #   resp.status_reason #=> String
    #   resp.create_time #=> Time
    #   resp.provisioned_memory #=> Integer
    #   resp.endpoint #=> String
    #   resp.public_connectivity #=> Boolean
    #   resp.vector_search_configuration.dimension #=> Integer
    #   resp.replica_count #=> Integer
    #   resp.kms_key_identifier #=> String
    #   resp.source_snapshot_id #=> String
    #   resp.deletion_protection #=> Boolean
    #   resp.build_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/RestoreGraphFromSnapshot AWS API Documentation
    #
    # @overload restore_graph_from_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_graph_from_snapshot(params = {}, options = {})
      req = build_request(:restore_graph_from_snapshot, params)
      req.send_request(options)
    end

    # Adds tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource for which tags need to be added.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to be assigned to the Neptune Analytics resource.
    #
    #   The tags are metadata that are specified as a list of key-value pairs:
    #
    #   **Key** (string)   –   A key is the required name of the tag. The
    #   string value can be from 1 to 128 Unicode characters in length. It
    #   can't be prefixed with `aws:` and can only contain the set of Unicode
    #   characters specified by this Java regular expression:
    #   `"^([\p\{L\}\p\{Z\}\p\{N\}_.:/=+\-]*)$")`.
    #
    #   **Value** (string)   –   A value is the optional value of the tag. The
    #   string value can be from 1 to 256 Unicode characters in length. It
    #   can't be prefixed with `aws:` and can only contain the set of Unicode
    #   characters specified by this Java regular expression:
    #   `"^([\p\{L\}\p\{Z\}\p\{N\}_.:/=+\-]*)$")`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource whose tag needs to be removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys for the tags to be removed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of a specified Neptune Analytics graph
    #
    # @option params [required, String] :graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #
    # @option params [Boolean] :public_connectivity
    #   Specifies whether or not the graph can be reachable over the internet.
    #   All access to graphs IAM authenticated. (`true` to enable, or `false`
    #   to disable.
    #
    # @option params [Integer] :provisioned_memory
    #   The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to
    #   use for the graph. Min = 128
    #
    # @option params [Boolean] :deletion_protection
    #   A value that indicates whether the graph has deletion protection
    #   enabled. The graph can't be deleted when deletion protection is
    #   enabled.
    #
    # @return [Types::UpdateGraphOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGraphOutput#id #id} => String
    #   * {Types::UpdateGraphOutput#name #name} => String
    #   * {Types::UpdateGraphOutput#arn #arn} => String
    #   * {Types::UpdateGraphOutput#status #status} => String
    #   * {Types::UpdateGraphOutput#status_reason #status_reason} => String
    #   * {Types::UpdateGraphOutput#create_time #create_time} => Time
    #   * {Types::UpdateGraphOutput#provisioned_memory #provisioned_memory} => Integer
    #   * {Types::UpdateGraphOutput#endpoint #endpoint} => String
    #   * {Types::UpdateGraphOutput#public_connectivity #public_connectivity} => Boolean
    #   * {Types::UpdateGraphOutput#vector_search_configuration #vector_search_configuration} => Types::VectorSearchConfiguration
    #   * {Types::UpdateGraphOutput#replica_count #replica_count} => Integer
    #   * {Types::UpdateGraphOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::UpdateGraphOutput#source_snapshot_id #source_snapshot_id} => String
    #   * {Types::UpdateGraphOutput#deletion_protection #deletion_protection} => Boolean
    #   * {Types::UpdateGraphOutput#build_number #build_number} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_graph({
    #     graph_identifier: "GraphIdentifier", # required
    #     public_connectivity: false,
    #     provisioned_memory: 1,
    #     deletion_protection: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED"
    #   resp.status_reason #=> String
    #   resp.create_time #=> Time
    #   resp.provisioned_memory #=> Integer
    #   resp.endpoint #=> String
    #   resp.public_connectivity #=> Boolean
    #   resp.vector_search_configuration.dimension #=> Integer
    #   resp.replica_count #=> Integer
    #   resp.kms_key_identifier #=> String
    #   resp.source_snapshot_id #=> String
    #   resp.deletion_protection #=> Boolean
    #   resp.build_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/UpdateGraph AWS API Documentation
    #
    # @overload update_graph(params = {})
    # @param [Hash] params ({})
    def update_graph(params = {}, options = {})
      req = build_request(:update_graph, params)
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
      context[:gem_name] = 'aws-sdk-neptunegraph'
      context[:gem_version] = '1.2.0'
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
    # | waiter_name                      | params                              | :delay   | :max_attempts |
    # | -------------------------------- | ----------------------------------- | -------- | ------------- |
    # | graph_available                  | {Client#get_graph}                  | 60       | 480           |
    # | graph_deleted                    | {Client#get_graph}                  | 60       | 60            |
    # | graph_snapshot_available         | {Client#get_graph_snapshot}         | 60       | 120           |
    # | graph_snapshot_deleted           | {Client#get_graph_snapshot}         | 60       | 60            |
    # | import_task_cancelled            | {Client#get_import_task}            | 60       | 60            |
    # | import_task_successful           | {Client#get_import_task}            | 60       | 480           |
    # | private_graph_endpoint_available | {Client#get_private_graph_endpoint} | 10       | 180           |
    # | private_graph_endpoint_deleted   | {Client#get_private_graph_endpoint} | 10       | 180           |
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
        graph_available: Waiters::GraphAvailable,
        graph_deleted: Waiters::GraphDeleted,
        graph_snapshot_available: Waiters::GraphSnapshotAvailable,
        graph_snapshot_deleted: Waiters::GraphSnapshotDeleted,
        import_task_cancelled: Waiters::ImportTaskCancelled,
        import_task_successful: Waiters::ImportTaskSuccessful,
        private_graph_endpoint_available: Waiters::PrivateGraphEndpointAvailable,
        private_graph_endpoint_deleted: Waiters::PrivateGraphEndpointDeleted
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
