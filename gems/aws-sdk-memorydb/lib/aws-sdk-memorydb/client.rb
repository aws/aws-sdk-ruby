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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:memorydb)

module Aws::MemoryDB
  # An API client for MemoryDB.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MemoryDB::Client.new(
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

    @identifier = :memorydb

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::MemoryDB::Plugins::Endpoints)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Aws::MemoryDB::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::MemoryDB::EndpointParameters`
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

    # Apply the service update to a list of clusters supplied. For more
    # information on service updates and applying them, see [Applying the
    # service updates][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/managing-updates.html#applying-updates
    #
    # @option params [required, Array<String>] :cluster_names
    #   The cluster names to apply the updates.
    #
    # @option params [Types::ServiceUpdateRequest] :service_update
    #   The unique ID of the service update
    #
    # @return [Types::BatchUpdateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateClusterResponse#processed_clusters #processed_clusters} => Array&lt;Types::Cluster&gt;
    #   * {Types::BatchUpdateClusterResponse#unprocessed_clusters #unprocessed_clusters} => Array&lt;Types::UnprocessedCluster&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_cluster({
    #     cluster_names: ["String"], # required
    #     service_update: {
    #       service_update_name_to_apply: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.processed_clusters #=> Array
    #   resp.processed_clusters[0].name #=> String
    #   resp.processed_clusters[0].description #=> String
    #   resp.processed_clusters[0].status #=> String
    #   resp.processed_clusters[0].pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.processed_clusters[0].pending_updates.acls.acl_to_apply #=> String
    #   resp.processed_clusters[0].pending_updates.service_updates #=> Array
    #   resp.processed_clusters[0].pending_updates.service_updates[0].service_update_name #=> String
    #   resp.processed_clusters[0].pending_updates.service_updates[0].status #=> String, one of "available", "in-progress", "complete", "scheduled"
    #   resp.processed_clusters[0].number_of_shards #=> Integer
    #   resp.processed_clusters[0].shards #=> Array
    #   resp.processed_clusters[0].shards[0].name #=> String
    #   resp.processed_clusters[0].shards[0].status #=> String
    #   resp.processed_clusters[0].shards[0].slots #=> String
    #   resp.processed_clusters[0].shards[0].nodes #=> Array
    #   resp.processed_clusters[0].shards[0].nodes[0].name #=> String
    #   resp.processed_clusters[0].shards[0].nodes[0].status #=> String
    #   resp.processed_clusters[0].shards[0].nodes[0].availability_zone #=> String
    #   resp.processed_clusters[0].shards[0].nodes[0].create_time #=> Time
    #   resp.processed_clusters[0].shards[0].nodes[0].endpoint.address #=> String
    #   resp.processed_clusters[0].shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.processed_clusters[0].shards[0].number_of_nodes #=> Integer
    #   resp.processed_clusters[0].availability_mode #=> String, one of "singleaz", "multiaz"
    #   resp.processed_clusters[0].cluster_endpoint.address #=> String
    #   resp.processed_clusters[0].cluster_endpoint.port #=> Integer
    #   resp.processed_clusters[0].node_type #=> String
    #   resp.processed_clusters[0].engine_version #=> String
    #   resp.processed_clusters[0].engine_patch_version #=> String
    #   resp.processed_clusters[0].parameter_group_name #=> String
    #   resp.processed_clusters[0].parameter_group_status #=> String
    #   resp.processed_clusters[0].security_groups #=> Array
    #   resp.processed_clusters[0].security_groups[0].security_group_id #=> String
    #   resp.processed_clusters[0].security_groups[0].status #=> String
    #   resp.processed_clusters[0].subnet_group_name #=> String
    #   resp.processed_clusters[0].tls_enabled #=> Boolean
    #   resp.processed_clusters[0].kms_key_id #=> String
    #   resp.processed_clusters[0].arn #=> String
    #   resp.processed_clusters[0].sns_topic_arn #=> String
    #   resp.processed_clusters[0].sns_topic_status #=> String
    #   resp.processed_clusters[0].snapshot_retention_limit #=> Integer
    #   resp.processed_clusters[0].maintenance_window #=> String
    #   resp.processed_clusters[0].snapshot_window #=> String
    #   resp.processed_clusters[0].acl_name #=> String
    #   resp.processed_clusters[0].auto_minor_version_upgrade #=> Boolean
    #   resp.processed_clusters[0].data_tiering #=> String, one of "true", "false"
    #   resp.unprocessed_clusters #=> Array
    #   resp.unprocessed_clusters[0].cluster_name #=> String
    #   resp.unprocessed_clusters[0].error_type #=> String
    #   resp.unprocessed_clusters[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/BatchUpdateCluster AWS API Documentation
    #
    # @overload batch_update_cluster(params = {})
    # @param [Hash] params ({})
    def batch_update_cluster(params = {}, options = {})
      req = build_request(:batch_update_cluster, params)
      req.send_request(options)
    end

    # Makes a copy of an existing snapshot.
    #
    # @option params [required, String] :source_snapshot_name
    #   The name of an existing snapshot from which to make a copy.
    #
    # @option params [required, String] :target_snapshot_name
    #   A name for the snapshot copy. MemoryDB does not permit overwriting a
    #   snapshot, therefore this name must be unique within its context -
    #   MemoryDB or an Amazon S3 bucket if exporting.
    #
    # @option params [String] :target_bucket
    #   The Amazon S3 bucket to which the snapshot is exported. This parameter
    #   is used only when exporting a snapshot for external access. When using
    #   this parameter to export a snapshot, be sure MemoryDB has the needed
    #   permissions to this S3 bucket. For more information, see [Step 2:
    #   Grant MemoryDB Access to Your Amazon S3 Bucket][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/snapshots-exporting.html
    #
    # @option params [String] :kms_key_id
    #   The ID of the KMS key used to encrypt the target snapshot.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #
    # @return [Types::CopySnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopySnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_snapshot({
    #     source_snapshot_name: "String", # required
    #     target_snapshot_name: "String", # required
    #     target_bucket: "TargetBucket",
    #     kms_key_id: "KmsKeyId",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.name #=> String
    #   resp.snapshot.status #=> String
    #   resp.snapshot.source #=> String
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.arn #=> String
    #   resp.snapshot.cluster_configuration.name #=> String
    #   resp.snapshot.cluster_configuration.description #=> String
    #   resp.snapshot.cluster_configuration.node_type #=> String
    #   resp.snapshot.cluster_configuration.engine_version #=> String
    #   resp.snapshot.cluster_configuration.maintenance_window #=> String
    #   resp.snapshot.cluster_configuration.topic_arn #=> String
    #   resp.snapshot.cluster_configuration.port #=> Integer
    #   resp.snapshot.cluster_configuration.parameter_group_name #=> String
    #   resp.snapshot.cluster_configuration.subnet_group_name #=> String
    #   resp.snapshot.cluster_configuration.vpc_id #=> String
    #   resp.snapshot.cluster_configuration.snapshot_retention_limit #=> Integer
    #   resp.snapshot.cluster_configuration.snapshot_window #=> String
    #   resp.snapshot.cluster_configuration.num_shards #=> Integer
    #   resp.snapshot.cluster_configuration.shards #=> Array
    #   resp.snapshot.cluster_configuration.shards[0].name #=> String
    #   resp.snapshot.cluster_configuration.shards[0].configuration.slots #=> String
    #   resp.snapshot.cluster_configuration.shards[0].configuration.replica_count #=> Integer
    #   resp.snapshot.cluster_configuration.shards[0].size #=> String
    #   resp.snapshot.cluster_configuration.shards[0].snapshot_creation_time #=> Time
    #   resp.snapshot.data_tiering #=> String, one of "true", "false"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CopySnapshot AWS API Documentation
    #
    # @overload copy_snapshot(params = {})
    # @param [Hash] params ({})
    def copy_snapshot(params = {}, options = {})
      req = build_request(:copy_snapshot, params)
      req.send_request(options)
    end

    # Creates an Access Control List. For more information, see
    # [Authenticating users with Access Contol Lists (ACLs)][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html
    #
    # @option params [required, String] :acl_name
    #   The name of the Access Control List.
    #
    # @option params [Array<String>] :user_names
    #   The list of users that belong to the Access Control List.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #
    # @return [Types::CreateACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateACLResponse#acl #acl} => Types::ACL
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_acl({
    #     acl_name: "String", # required
    #     user_names: ["UserName"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.acl.name #=> String
    #   resp.acl.status #=> String
    #   resp.acl.user_names #=> Array
    #   resp.acl.user_names[0] #=> String
    #   resp.acl.minimum_engine_version #=> String
    #   resp.acl.pending_changes.user_names_to_remove #=> Array
    #   resp.acl.pending_changes.user_names_to_remove[0] #=> String
    #   resp.acl.pending_changes.user_names_to_add #=> Array
    #   resp.acl.pending_changes.user_names_to_add[0] #=> String
    #   resp.acl.clusters #=> Array
    #   resp.acl.clusters[0] #=> String
    #   resp.acl.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateACL AWS API Documentation
    #
    # @overload create_acl(params = {})
    # @param [Hash] params ({})
    def create_acl(params = {}, options = {})
      req = build_request(:create_acl, params)
      req.send_request(options)
    end

    # Creates a cluster. All nodes in the cluster run the same
    # protocol-compliant engine software.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster. This value must be unique as it also serves
    #   as the cluster identifier.
    #
    # @option params [required, String] :node_type
    #   The compute and memory capacity of the nodes in the cluster.
    #
    # @option params [String] :parameter_group_name
    #   The name of the parameter group associated with the cluster.
    #
    # @option params [String] :description
    #   An optional description of the cluster.
    #
    # @option params [Integer] :num_shards
    #   The number of shards the cluster will contain. The default value is 1.
    #
    # @option params [Integer] :num_replicas_per_shard
    #   The number of replicas to apply to each shard. The default value is 1.
    #   The maximum is 5.
    #
    # @option params [String] :subnet_group_name
    #   The name of the subnet group to be used for the cluster.
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of security group names to associate with this cluster.
    #
    # @option params [String] :maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #
    # @option params [Integer] :port
    #   The port number on which each of the nodes accepts connections.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic to which notifications are sent.
    #
    # @option params [Boolean] :tls_enabled
    #   A flag to enable in-transit encryption on the cluster.
    #
    # @option params [String] :kms_key_id
    #   The ID of the KMS key used to encrypt the cluster.
    #
    # @option params [Array<String>] :snapshot_arns
    #   A list of Amazon Resource Names (ARN) that uniquely identify the RDB
    #   snapshot files stored in Amazon S3. The snapshot files are used to
    #   populate the new cluster. The Amazon S3 object name in the ARN cannot
    #   contain any commas.
    #
    # @option params [String] :snapshot_name
    #   The name of a snapshot from which to restore data into the new
    #   cluster. The snapshot status changes to restoring while the new
    #   cluster is being created.
    #
    # @option params [Integer] :snapshot_retention_limit
    #   The number of days for which MemoryDB retains automatic snapshots
    #   before deleting them. For example, if you set SnapshotRetentionLimit
    #   to 5, a snapshot that was taken today is retained for 5 days before
    #   being deleted.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to be added to this resource. Tags are comma-separated
    #   key,value pairs (e.g. Key=myKey, Value=myKeyValue. You can include
    #   multiple tags as shown following: Key=myKey, Value=myKeyValue
    #   Key=mySecondKey, Value=mySecondKeyValue.
    #
    # @option params [String] :snapshot_window
    #   The daily time range (in UTC) during which MemoryDB begins taking a
    #   daily snapshot of your shard.
    #
    #   Example: 05:00-09:00
    #
    #   If you do not specify this parameter, MemoryDB automatically chooses
    #   an appropriate time range.
    #
    # @option params [required, String] :acl_name
    #   The name of the Access Control List to associate with the cluster.
    #
    # @option params [String] :engine_version
    #   The version number of the Redis engine to be used for the cluster.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   When set to true, the cluster will automatically receive minor engine
    #   version upgrades after launch.
    #
    # @option params [Boolean] :data_tiering
    #   Enables data tiering. Data tiering is only supported for clusters
    #   using the r6gd node type. This parameter must be set when using r6gd
    #   nodes. For more information, see [Data tiering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     cluster_name: "String", # required
    #     node_type: "String", # required
    #     parameter_group_name: "String",
    #     description: "String",
    #     num_shards: 1,
    #     num_replicas_per_shard: 1,
    #     subnet_group_name: "String",
    #     security_group_ids: ["String"],
    #     maintenance_window: "String",
    #     port: 1,
    #     sns_topic_arn: "String",
    #     tls_enabled: false,
    #     kms_key_id: "String",
    #     snapshot_arns: ["String"],
    #     snapshot_name: "String",
    #     snapshot_retention_limit: 1,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     snapshot_window: "String",
    #     acl_name: "ACLName", # required
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     data_tiering: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.cluster.pending_updates.acls.acl_to_apply #=> String
    #   resp.cluster.pending_updates.service_updates #=> Array
    #   resp.cluster.pending_updates.service_updates[0].service_update_name #=> String
    #   resp.cluster.pending_updates.service_updates[0].status #=> String, one of "available", "in-progress", "complete", "scheduled"
    #   resp.cluster.number_of_shards #=> Integer
    #   resp.cluster.shards #=> Array
    #   resp.cluster.shards[0].name #=> String
    #   resp.cluster.shards[0].status #=> String
    #   resp.cluster.shards[0].slots #=> String
    #   resp.cluster.shards[0].nodes #=> Array
    #   resp.cluster.shards[0].nodes[0].name #=> String
    #   resp.cluster.shards[0].nodes[0].status #=> String
    #   resp.cluster.shards[0].nodes[0].availability_zone #=> String
    #   resp.cluster.shards[0].nodes[0].create_time #=> Time
    #   resp.cluster.shards[0].nodes[0].endpoint.address #=> String
    #   resp.cluster.shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.cluster.shards[0].number_of_nodes #=> Integer
    #   resp.cluster.availability_mode #=> String, one of "singleaz", "multiaz"
    #   resp.cluster.cluster_endpoint.address #=> String
    #   resp.cluster.cluster_endpoint.port #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.engine_version #=> String
    #   resp.cluster.engine_patch_version #=> String
    #   resp.cluster.parameter_group_name #=> String
    #   resp.cluster.parameter_group_status #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_id #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.subnet_group_name #=> String
    #   resp.cluster.tls_enabled #=> Boolean
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.sns_topic_arn #=> String
    #   resp.cluster.sns_topic_status #=> String
    #   resp.cluster.snapshot_retention_limit #=> Integer
    #   resp.cluster.maintenance_window #=> String
    #   resp.cluster.snapshot_window #=> String
    #   resp.cluster.acl_name #=> String
    #   resp.cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.cluster.data_tiering #=> String, one of "true", "false"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a new MemoryDB parameter group. A parameter group is a
    # collection of parameters and their values that are applied to all of
    # the nodes in any cluster. For more information, see [Configuring
    # engine parameters using parameter groups][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/parametergroups.html
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group.
    #
    # @option params [required, String] :family
    #   The name of the parameter group family that the parameter group can be
    #   used with.
    #
    # @option params [String] :description
    #   An optional description of the parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #
    # @return [Types::CreateParameterGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateParameterGroupResponse#parameter_group #parameter_group} => Types::ParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_parameter_group({
    #     parameter_group_name: "String", # required
    #     family: "String", # required
    #     description: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter_group.name #=> String
    #   resp.parameter_group.family #=> String
    #   resp.parameter_group.description #=> String
    #   resp.parameter_group.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateParameterGroup AWS API Documentation
    #
    # @overload create_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_parameter_group(params = {}, options = {})
      req = build_request(:create_parameter_group, params)
      req.send_request(options)
    end

    # Creates a copy of an entire cluster at a specific moment in time.
    #
    # @option params [required, String] :cluster_name
    #   The snapshot is created from this cluster.
    #
    # @option params [required, String] :snapshot_name
    #   A name for the snapshot being created.
    #
    # @option params [String] :kms_key_id
    #   The ID of the KMS key used to encrypt the snapshot.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #
    # @return [Types::CreateSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     cluster_name: "String", # required
    #     snapshot_name: "String", # required
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.name #=> String
    #   resp.snapshot.status #=> String
    #   resp.snapshot.source #=> String
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.arn #=> String
    #   resp.snapshot.cluster_configuration.name #=> String
    #   resp.snapshot.cluster_configuration.description #=> String
    #   resp.snapshot.cluster_configuration.node_type #=> String
    #   resp.snapshot.cluster_configuration.engine_version #=> String
    #   resp.snapshot.cluster_configuration.maintenance_window #=> String
    #   resp.snapshot.cluster_configuration.topic_arn #=> String
    #   resp.snapshot.cluster_configuration.port #=> Integer
    #   resp.snapshot.cluster_configuration.parameter_group_name #=> String
    #   resp.snapshot.cluster_configuration.subnet_group_name #=> String
    #   resp.snapshot.cluster_configuration.vpc_id #=> String
    #   resp.snapshot.cluster_configuration.snapshot_retention_limit #=> Integer
    #   resp.snapshot.cluster_configuration.snapshot_window #=> String
    #   resp.snapshot.cluster_configuration.num_shards #=> Integer
    #   resp.snapshot.cluster_configuration.shards #=> Array
    #   resp.snapshot.cluster_configuration.shards[0].name #=> String
    #   resp.snapshot.cluster_configuration.shards[0].configuration.slots #=> String
    #   resp.snapshot.cluster_configuration.shards[0].configuration.replica_count #=> Integer
    #   resp.snapshot.cluster_configuration.shards[0].size #=> String
    #   resp.snapshot.cluster_configuration.shards[0].snapshot_creation_time #=> Time
    #   resp.snapshot.data_tiering #=> String, one of "true", "false"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # Creates a subnet group. A subnet group is a collection of subnets
    # (typically private) that you can designate for your clusters running
    # in an Amazon Virtual Private Cloud (VPC) environment. When you create
    # a cluster in an Amazon VPC, you must specify a subnet group. MemoryDB
    # uses that subnet group to choose a subnet and IP addresses within that
    # subnet to associate with your nodes. For more information, see
    # [Subnets and subnet groups][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/subnetgroups.html
    #
    # @option params [required, String] :subnet_group_name
    #   The name of the subnet group.
    #
    # @option params [String] :description
    #   A description for the subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of VPC subnet IDs for the subnet group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #
    # @return [Types::CreateSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubnetGroupResponse#subnet_group #subnet_group} => Types::SubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subnet_group({
    #     subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.subnet_group.name #=> String
    #   resp.subnet_group.description #=> String
    #   resp.subnet_group.vpc_id #=> String
    #   resp.subnet_group.subnets #=> Array
    #   resp.subnet_group.subnets[0].identifier #=> String
    #   resp.subnet_group.subnets[0].availability_zone.name #=> String
    #   resp.subnet_group.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateSubnetGroup AWS API Documentation
    #
    # @overload create_subnet_group(params = {})
    # @param [Hash] params ({})
    def create_subnet_group(params = {}, options = {})
      req = build_request(:create_subnet_group, params)
      req.send_request(options)
    end

    # Creates a MemoryDB user. For more information, see [Authenticating
    # users with Access Contol Lists (ACLs)][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html
    #
    # @option params [required, String] :user_name
    #   The name of the user. This value must be unique as it also serves as
    #   the user identifier.
    #
    # @option params [required, Types::AuthenticationMode] :authentication_mode
    #   Denotes the user's authentication properties, such as whether it
    #   requires a password to authenticate.
    #
    # @option params [required, String] :access_string
    #   Access permissions string used for this user.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     user_name: "UserName", # required
    #     authentication_mode: { # required
    #       type: "password", # accepts password, iam
    #       passwords: ["String"],
    #     },
    #     access_string: "AccessString", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.user.name #=> String
    #   resp.user.status #=> String
    #   resp.user.access_string #=> String
    #   resp.user.acl_names #=> Array
    #   resp.user.acl_names[0] #=> String
    #   resp.user.minimum_engine_version #=> String
    #   resp.user.authentication.type #=> String, one of "password", "no-password", "iam"
    #   resp.user.authentication.password_count #=> Integer
    #   resp.user.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes an Access Control List. The ACL must first be disassociated
    # from the cluster before it can be deleted. For more information, see
    # [Authenticating users with Access Contol Lists (ACLs)][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html
    #
    # @option params [required, String] :acl_name
    #   The name of the Access Control List to delete
    #
    # @return [Types::DeleteACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteACLResponse#acl #acl} => Types::ACL
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_acl({
    #     acl_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.acl.name #=> String
    #   resp.acl.status #=> String
    #   resp.acl.user_names #=> Array
    #   resp.acl.user_names[0] #=> String
    #   resp.acl.minimum_engine_version #=> String
    #   resp.acl.pending_changes.user_names_to_remove #=> Array
    #   resp.acl.pending_changes.user_names_to_remove[0] #=> String
    #   resp.acl.pending_changes.user_names_to_add #=> Array
    #   resp.acl.pending_changes.user_names_to_add[0] #=> String
    #   resp.acl.clusters #=> Array
    #   resp.acl.clusters[0] #=> String
    #   resp.acl.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteACL AWS API Documentation
    #
    # @overload delete_acl(params = {})
    # @param [Hash] params ({})
    def delete_acl(params = {}, options = {})
      req = build_request(:delete_acl, params)
      req.send_request(options)
    end

    # Deletes a cluster. It also deletes all associated nodes and node
    # endpoints
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster to be deleted
    #
    # @option params [String] :final_snapshot_name
    #   The user-supplied name of a final cluster snapshot. This is the unique
    #   name that identifies the snapshot. MemoryDB creates the snapshot, and
    #   then deletes the cluster immediately afterward.
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_name: "String", # required
    #     final_snapshot_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.cluster.pending_updates.acls.acl_to_apply #=> String
    #   resp.cluster.pending_updates.service_updates #=> Array
    #   resp.cluster.pending_updates.service_updates[0].service_update_name #=> String
    #   resp.cluster.pending_updates.service_updates[0].status #=> String, one of "available", "in-progress", "complete", "scheduled"
    #   resp.cluster.number_of_shards #=> Integer
    #   resp.cluster.shards #=> Array
    #   resp.cluster.shards[0].name #=> String
    #   resp.cluster.shards[0].status #=> String
    #   resp.cluster.shards[0].slots #=> String
    #   resp.cluster.shards[0].nodes #=> Array
    #   resp.cluster.shards[0].nodes[0].name #=> String
    #   resp.cluster.shards[0].nodes[0].status #=> String
    #   resp.cluster.shards[0].nodes[0].availability_zone #=> String
    #   resp.cluster.shards[0].nodes[0].create_time #=> Time
    #   resp.cluster.shards[0].nodes[0].endpoint.address #=> String
    #   resp.cluster.shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.cluster.shards[0].number_of_nodes #=> Integer
    #   resp.cluster.availability_mode #=> String, one of "singleaz", "multiaz"
    #   resp.cluster.cluster_endpoint.address #=> String
    #   resp.cluster.cluster_endpoint.port #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.engine_version #=> String
    #   resp.cluster.engine_patch_version #=> String
    #   resp.cluster.parameter_group_name #=> String
    #   resp.cluster.parameter_group_status #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_id #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.subnet_group_name #=> String
    #   resp.cluster.tls_enabled #=> Boolean
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.sns_topic_arn #=> String
    #   resp.cluster.sns_topic_status #=> String
    #   resp.cluster.snapshot_retention_limit #=> Integer
    #   resp.cluster.maintenance_window #=> String
    #   resp.cluster.snapshot_window #=> String
    #   resp.cluster.acl_name #=> String
    #   resp.cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.cluster.data_tiering #=> String, one of "true", "false"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified parameter group. You cannot delete a parameter
    # group if it is associated with any clusters. You cannot delete the
    # default parameter groups in your account.
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group to delete.
    #
    # @return [Types::DeleteParameterGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteParameterGroupResponse#parameter_group #parameter_group} => Types::ParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parameter_group({
    #     parameter_group_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter_group.name #=> String
    #   resp.parameter_group.family #=> String
    #   resp.parameter_group.description #=> String
    #   resp.parameter_group.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteParameterGroup AWS API Documentation
    #
    # @overload delete_parameter_group(params = {})
    # @param [Hash] params ({})
    def delete_parameter_group(params = {}, options = {})
      req = build_request(:delete_parameter_group, params)
      req.send_request(options)
    end

    # Deletes an existing snapshot. When you receive a successful response
    # from this operation, MemoryDB immediately begins deleting the
    # snapshot; you cannot cancel or revert this operation.
    #
    # @option params [required, String] :snapshot_name
    #   The name of the snapshot to delete
    #
    # @return [Types::DeleteSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot({
    #     snapshot_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.name #=> String
    #   resp.snapshot.status #=> String
    #   resp.snapshot.source #=> String
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.arn #=> String
    #   resp.snapshot.cluster_configuration.name #=> String
    #   resp.snapshot.cluster_configuration.description #=> String
    #   resp.snapshot.cluster_configuration.node_type #=> String
    #   resp.snapshot.cluster_configuration.engine_version #=> String
    #   resp.snapshot.cluster_configuration.maintenance_window #=> String
    #   resp.snapshot.cluster_configuration.topic_arn #=> String
    #   resp.snapshot.cluster_configuration.port #=> Integer
    #   resp.snapshot.cluster_configuration.parameter_group_name #=> String
    #   resp.snapshot.cluster_configuration.subnet_group_name #=> String
    #   resp.snapshot.cluster_configuration.vpc_id #=> String
    #   resp.snapshot.cluster_configuration.snapshot_retention_limit #=> Integer
    #   resp.snapshot.cluster_configuration.snapshot_window #=> String
    #   resp.snapshot.cluster_configuration.num_shards #=> Integer
    #   resp.snapshot.cluster_configuration.shards #=> Array
    #   resp.snapshot.cluster_configuration.shards[0].name #=> String
    #   resp.snapshot.cluster_configuration.shards[0].configuration.slots #=> String
    #   resp.snapshot.cluster_configuration.shards[0].configuration.replica_count #=> Integer
    #   resp.snapshot.cluster_configuration.shards[0].size #=> String
    #   resp.snapshot.cluster_configuration.shards[0].snapshot_creation_time #=> Time
    #   resp.snapshot.data_tiering #=> String, one of "true", "false"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteSnapshot AWS API Documentation
    #
    # @overload delete_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_snapshot(params = {}, options = {})
      req = build_request(:delete_snapshot, params)
      req.send_request(options)
    end

    # Deletes a subnet group. You cannot delete a default subnet group or
    # one that is associated with any clusters.
    #
    # @option params [required, String] :subnet_group_name
    #   The name of the subnet group to delete
    #
    # @return [Types::DeleteSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSubnetGroupResponse#subnet_group #subnet_group} => Types::SubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subnet_group({
    #     subnet_group_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subnet_group.name #=> String
    #   resp.subnet_group.description #=> String
    #   resp.subnet_group.vpc_id #=> String
    #   resp.subnet_group.subnets #=> Array
    #   resp.subnet_group.subnets[0].identifier #=> String
    #   resp.subnet_group.subnets[0].availability_zone.name #=> String
    #   resp.subnet_group.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteSubnetGroup AWS API Documentation
    #
    # @overload delete_subnet_group(params = {})
    # @param [Hash] params ({})
    def delete_subnet_group(params = {}, options = {})
      req = build_request(:delete_subnet_group, params)
      req.send_request(options)
    end

    # Deletes a user. The user will be removed from all ACLs and in turn
    # removed from all clusters.
    #
    # @option params [required, String] :user_name
    #   The name of the user to delete
    #
    # @return [Types::DeleteUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     user_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.name #=> String
    #   resp.user.status #=> String
    #   resp.user.access_string #=> String
    #   resp.user.acl_names #=> Array
    #   resp.user.acl_names[0] #=> String
    #   resp.user.minimum_engine_version #=> String
    #   resp.user.authentication.type #=> String, one of "password", "no-password", "iam"
    #   resp.user.authentication.password_count #=> Integer
    #   resp.user.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Returns a list of ACLs
    #
    # @option params [String] :acl_name
    #   The name of the ACL
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @return [Types::DescribeACLsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeACLsResponse#acls #acls} => Array&lt;Types::ACL&gt;
    #   * {Types::DescribeACLsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_acls({
    #     acl_name: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.acls #=> Array
    #   resp.acls[0].name #=> String
    #   resp.acls[0].status #=> String
    #   resp.acls[0].user_names #=> Array
    #   resp.acls[0].user_names[0] #=> String
    #   resp.acls[0].minimum_engine_version #=> String
    #   resp.acls[0].pending_changes.user_names_to_remove #=> Array
    #   resp.acls[0].pending_changes.user_names_to_remove[0] #=> String
    #   resp.acls[0].pending_changes.user_names_to_add #=> Array
    #   resp.acls[0].pending_changes.user_names_to_add[0] #=> String
    #   resp.acls[0].clusters #=> Array
    #   resp.acls[0].clusters[0] #=> String
    #   resp.acls[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeACLs AWS API Documentation
    #
    # @overload describe_acls(params = {})
    # @param [Hash] params ({})
    def describe_acls(params = {}, options = {})
      req = build_request(:describe_acls, params)
      req.send_request(options)
    end

    # Returns information about all provisioned clusters if no cluster
    # identifier is specified, or about a specific cluster if a cluster name
    # is supplied.
    #
    # @option params [String] :cluster_name
    #   The name of the cluster
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @option params [Boolean] :show_shard_details
    #   An optional flag that can be included in the request to retrieve
    #   information about the individual shard(s).
    #
    # @return [Types::DescribeClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClustersResponse#next_token #next_token} => String
    #   * {Types::DescribeClustersResponse#clusters #clusters} => Array&lt;Types::Cluster&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters({
    #     cluster_name: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     show_shard_details: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.clusters #=> Array
    #   resp.clusters[0].name #=> String
    #   resp.clusters[0].description #=> String
    #   resp.clusters[0].status #=> String
    #   resp.clusters[0].pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.clusters[0].pending_updates.acls.acl_to_apply #=> String
    #   resp.clusters[0].pending_updates.service_updates #=> Array
    #   resp.clusters[0].pending_updates.service_updates[0].service_update_name #=> String
    #   resp.clusters[0].pending_updates.service_updates[0].status #=> String, one of "available", "in-progress", "complete", "scheduled"
    #   resp.clusters[0].number_of_shards #=> Integer
    #   resp.clusters[0].shards #=> Array
    #   resp.clusters[0].shards[0].name #=> String
    #   resp.clusters[0].shards[0].status #=> String
    #   resp.clusters[0].shards[0].slots #=> String
    #   resp.clusters[0].shards[0].nodes #=> Array
    #   resp.clusters[0].shards[0].nodes[0].name #=> String
    #   resp.clusters[0].shards[0].nodes[0].status #=> String
    #   resp.clusters[0].shards[0].nodes[0].availability_zone #=> String
    #   resp.clusters[0].shards[0].nodes[0].create_time #=> Time
    #   resp.clusters[0].shards[0].nodes[0].endpoint.address #=> String
    #   resp.clusters[0].shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.clusters[0].shards[0].number_of_nodes #=> Integer
    #   resp.clusters[0].availability_mode #=> String, one of "singleaz", "multiaz"
    #   resp.clusters[0].cluster_endpoint.address #=> String
    #   resp.clusters[0].cluster_endpoint.port #=> Integer
    #   resp.clusters[0].node_type #=> String
    #   resp.clusters[0].engine_version #=> String
    #   resp.clusters[0].engine_patch_version #=> String
    #   resp.clusters[0].parameter_group_name #=> String
    #   resp.clusters[0].parameter_group_status #=> String
    #   resp.clusters[0].security_groups #=> Array
    #   resp.clusters[0].security_groups[0].security_group_id #=> String
    #   resp.clusters[0].security_groups[0].status #=> String
    #   resp.clusters[0].subnet_group_name #=> String
    #   resp.clusters[0].tls_enabled #=> Boolean
    #   resp.clusters[0].kms_key_id #=> String
    #   resp.clusters[0].arn #=> String
    #   resp.clusters[0].sns_topic_arn #=> String
    #   resp.clusters[0].sns_topic_status #=> String
    #   resp.clusters[0].snapshot_retention_limit #=> Integer
    #   resp.clusters[0].maintenance_window #=> String
    #   resp.clusters[0].snapshot_window #=> String
    #   resp.clusters[0].acl_name #=> String
    #   resp.clusters[0].auto_minor_version_upgrade #=> Boolean
    #   resp.clusters[0].data_tiering #=> String, one of "true", "false"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeClusters AWS API Documentation
    #
    # @overload describe_clusters(params = {})
    # @param [Hash] params ({})
    def describe_clusters(params = {}, options = {})
      req = build_request(:describe_clusters, params)
      req.send_request(options)
    end

    # Returns a list of the available Redis engine versions.
    #
    # @option params [String] :engine_version
    #   The Redis engine version
    #
    # @option params [String] :parameter_group_family
    #   The name of a specific parameter group family to return details for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @option params [Boolean] :default_only
    #   If true, specifies that only the default version of the specified
    #   engine or engine and major version combination is to be returned.
    #
    # @return [Types::DescribeEngineVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEngineVersionsResponse#next_token #next_token} => String
    #   * {Types::DescribeEngineVersionsResponse#engine_versions #engine_versions} => Array&lt;Types::EngineVersionInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engine_versions({
    #     engine_version: "String",
    #     parameter_group_family: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     default_only: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.engine_versions #=> Array
    #   resp.engine_versions[0].engine_version #=> String
    #   resp.engine_versions[0].engine_patch_version #=> String
    #   resp.engine_versions[0].parameter_group_family #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeEngineVersions AWS API Documentation
    #
    # @overload describe_engine_versions(params = {})
    # @param [Hash] params ({})
    def describe_engine_versions(params = {}, options = {})
      req = build_request(:describe_engine_versions, params)
      req.send_request(options)
    end

    # Returns events related to clusters, security groups, and parameter
    # groups. You can obtain events specific to a particular cluster,
    # security group, or parameter group by providing the name as a
    # parameter. By default, only the events occurring within the last hour
    # are returned; however, you can retrieve up to 14 days' worth of
    # events if necessary.
    #
    # @option params [String] :source_name
    #   The identifier of the event source for which events are returned. If
    #   not specified, all sources are included in the response.
    #
    # @option params [String] :source_type
    #   The event source to retrieve events for. If no value is specified, all
    #   events are returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
    #
    # @option params [Integer] :duration
    #   The number of minutes worth of events to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @return [Types::DescribeEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsResponse#next_token #next_token} => String
    #   * {Types::DescribeEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     source_name: "String",
    #     source_type: "node", # accepts node, parameter-group, subnet-group, cluster, user, acl
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.events #=> Array
    #   resp.events[0].source_name #=> String
    #   resp.events[0].source_type #=> String, one of "node", "parameter-group", "subnet-group", "cluster", "user", "acl"
    #   resp.events[0].message #=> String
    #   resp.events[0].date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns a list of parameter group descriptions. If a parameter group
    # name is specified, the list contains only the descriptions for that
    # group.
    #
    # @option params [String] :parameter_group_name
    #   The name of a specific parameter group to return details for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @return [Types::DescribeParameterGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeParameterGroupsResponse#next_token #next_token} => String
    #   * {Types::DescribeParameterGroupsResponse#parameter_groups #parameter_groups} => Array&lt;Types::ParameterGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameter_groups({
    #     parameter_group_name: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.parameter_groups #=> Array
    #   resp.parameter_groups[0].name #=> String
    #   resp.parameter_groups[0].family #=> String
    #   resp.parameter_groups[0].description #=> String
    #   resp.parameter_groups[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeParameterGroups AWS API Documentation
    #
    # @overload describe_parameter_groups(params = {})
    # @param [Hash] params ({})
    def describe_parameter_groups(params = {}, options = {})
      req = build_request(:describe_parameter_groups, params)
      req.send_request(options)
    end

    # Returns the detailed parameter list for a particular parameter group.
    #
    # @option params [required, String] :parameter_group_name
    #   he name of a specific parameter group to return details for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @return [Types::DescribeParametersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeParametersResponse#next_token #next_token} => String
    #   * {Types::DescribeParametersResponse#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameters({
    #     parameter_group_name: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].value #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.parameters[0].allowed_values #=> String
    #   resp.parameters[0].minimum_engine_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeParameters AWS API Documentation
    #
    # @overload describe_parameters(params = {})
    # @param [Hash] params ({})
    def describe_parameters(params = {}, options = {})
      req = build_request(:describe_parameters, params)
      req.send_request(options)
    end

    # Returns information about reserved nodes for this account, or about a
    # specified reserved node.
    #
    # @option params [String] :reservation_id
    #   The reserved node identifier filter value. Use this parameter to show
    #   only the reservation that matches the specified reservation ID.
    #
    # @option params [String] :reserved_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show only
    #   purchased reservations matching the specified offering identifier.
    #
    # @option params [String] :node_type
    #   The node type filter value. Use this parameter to show only those
    #   reservations matching the specified node type. For more information,
    #   see [Supported node types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported
    #
    # @option params [String] :duration
    #   The duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for this duration.
    #
    # @option params [String] :offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type. Valid
    #   values: "All Upfront"\|"Partial Upfront"\| "No Upfront"
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by MaxRecords.
    #
    # @return [Types::DescribeReservedNodesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedNodesResponse#next_token #next_token} => String
    #   * {Types::DescribeReservedNodesResponse#reserved_nodes #reserved_nodes} => Array&lt;Types::ReservedNode&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_nodes({
    #     reservation_id: "String",
    #     reserved_nodes_offering_id: "String",
    #     node_type: "String",
    #     duration: "String",
    #     offering_type: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reserved_nodes #=> Array
    #   resp.reserved_nodes[0].reservation_id #=> String
    #   resp.reserved_nodes[0].reserved_nodes_offering_id #=> String
    #   resp.reserved_nodes[0].node_type #=> String
    #   resp.reserved_nodes[0].start_time #=> Time
    #   resp.reserved_nodes[0].duration #=> Integer
    #   resp.reserved_nodes[0].fixed_price #=> Float
    #   resp.reserved_nodes[0].node_count #=> Integer
    #   resp.reserved_nodes[0].offering_type #=> String
    #   resp.reserved_nodes[0].state #=> String
    #   resp.reserved_nodes[0].recurring_charges #=> Array
    #   resp.reserved_nodes[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_nodes[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_nodes[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeReservedNodes AWS API Documentation
    #
    # @overload describe_reserved_nodes(params = {})
    # @param [Hash] params ({})
    def describe_reserved_nodes(params = {}, options = {})
      req = build_request(:describe_reserved_nodes, params)
      req.send_request(options)
    end

    # Lists available reserved node offerings.
    #
    # @option params [String] :reserved_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show only
    #   the available offering that matches the specified reservation
    #   identifier.
    #
    # @option params [String] :node_type
    #   The node type for the reserved nodes. For more information, see
    #   [Supported node types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported
    #
    # @option params [String] :duration
    #   Duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for a given duration.
    #
    # @option params [String] :offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type. Valid
    #   values: "All Upfront"\|"Partial Upfront"\| "No Upfront"
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by MaxRecords.
    #
    # @return [Types::DescribeReservedNodesOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedNodesOfferingsResponse#next_token #next_token} => String
    #   * {Types::DescribeReservedNodesOfferingsResponse#reserved_nodes_offerings #reserved_nodes_offerings} => Array&lt;Types::ReservedNodesOffering&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_nodes_offerings({
    #     reserved_nodes_offering_id: "String",
    #     node_type: "String",
    #     duration: "String",
    #     offering_type: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reserved_nodes_offerings #=> Array
    #   resp.reserved_nodes_offerings[0].reserved_nodes_offering_id #=> String
    #   resp.reserved_nodes_offerings[0].node_type #=> String
    #   resp.reserved_nodes_offerings[0].duration #=> Integer
    #   resp.reserved_nodes_offerings[0].fixed_price #=> Float
    #   resp.reserved_nodes_offerings[0].offering_type #=> String
    #   resp.reserved_nodes_offerings[0].recurring_charges #=> Array
    #   resp.reserved_nodes_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_nodes_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeReservedNodesOfferings AWS API Documentation
    #
    # @overload describe_reserved_nodes_offerings(params = {})
    # @param [Hash] params ({})
    def describe_reserved_nodes_offerings(params = {}, options = {})
      req = build_request(:describe_reserved_nodes_offerings, params)
      req.send_request(options)
    end

    # Returns details of the service updates
    #
    # @option params [String] :service_update_name
    #   The unique ID of the service update to describe.
    #
    # @option params [Array<String>] :cluster_names
    #   The list of cluster names to identify service updates to apply
    #
    # @option params [Array<String>] :status
    #   The status(es) of the service updates to filter on
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @return [Types::DescribeServiceUpdatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceUpdatesResponse#next_token #next_token} => String
    #   * {Types::DescribeServiceUpdatesResponse#service_updates #service_updates} => Array&lt;Types::ServiceUpdate&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_updates({
    #     service_update_name: "String",
    #     cluster_names: ["String"],
    #     status: ["available"], # accepts available, in-progress, complete, scheduled
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.service_updates #=> Array
    #   resp.service_updates[0].cluster_name #=> String
    #   resp.service_updates[0].service_update_name #=> String
    #   resp.service_updates[0].release_date #=> Time
    #   resp.service_updates[0].description #=> String
    #   resp.service_updates[0].status #=> String, one of "available", "in-progress", "complete", "scheduled"
    #   resp.service_updates[0].type #=> String, one of "security-update"
    #   resp.service_updates[0].nodes_updated #=> String
    #   resp.service_updates[0].auto_update_start_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeServiceUpdates AWS API Documentation
    #
    # @overload describe_service_updates(params = {})
    # @param [Hash] params ({})
    def describe_service_updates(params = {}, options = {})
      req = build_request(:describe_service_updates, params)
      req.send_request(options)
    end

    # Returns information about cluster snapshots. By default,
    # DescribeSnapshots lists all of your snapshots; it can optionally
    # describe a single snapshot, or just the snapshots associated with a
    # particular cluster.
    #
    # @option params [String] :cluster_name
    #   A user-supplied cluster identifier. If this parameter is specified,
    #   only snapshots associated with that specific cluster are described.
    #
    # @option params [String] :snapshot_name
    #   A user-supplied name of the snapshot. If this parameter is specified,
    #   only this named snapshot is described.
    #
    # @option params [String] :source
    #   If set to system, the output shows snapshots that were automatically
    #   created by MemoryDB. If set to user the output shows snapshots that
    #   were manually created. If omitted, the output shows both automatically
    #   and manually created snapshots.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [Boolean] :show_detail
    #   A Boolean value which if true, the shard configuration is included in
    #   the snapshot description.
    #
    # @return [Types::DescribeSnapshotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSnapshotsResponse#next_token #next_token} => String
    #   * {Types::DescribeSnapshotsResponse#snapshots #snapshots} => Array&lt;Types::Snapshot&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshots({
    #     cluster_name: "String",
    #     snapshot_name: "String",
    #     source: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     show_detail: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].name #=> String
    #   resp.snapshots[0].status #=> String
    #   resp.snapshots[0].source #=> String
    #   resp.snapshots[0].kms_key_id #=> String
    #   resp.snapshots[0].arn #=> String
    #   resp.snapshots[0].cluster_configuration.name #=> String
    #   resp.snapshots[0].cluster_configuration.description #=> String
    #   resp.snapshots[0].cluster_configuration.node_type #=> String
    #   resp.snapshots[0].cluster_configuration.engine_version #=> String
    #   resp.snapshots[0].cluster_configuration.maintenance_window #=> String
    #   resp.snapshots[0].cluster_configuration.topic_arn #=> String
    #   resp.snapshots[0].cluster_configuration.port #=> Integer
    #   resp.snapshots[0].cluster_configuration.parameter_group_name #=> String
    #   resp.snapshots[0].cluster_configuration.subnet_group_name #=> String
    #   resp.snapshots[0].cluster_configuration.vpc_id #=> String
    #   resp.snapshots[0].cluster_configuration.snapshot_retention_limit #=> Integer
    #   resp.snapshots[0].cluster_configuration.snapshot_window #=> String
    #   resp.snapshots[0].cluster_configuration.num_shards #=> Integer
    #   resp.snapshots[0].cluster_configuration.shards #=> Array
    #   resp.snapshots[0].cluster_configuration.shards[0].name #=> String
    #   resp.snapshots[0].cluster_configuration.shards[0].configuration.slots #=> String
    #   resp.snapshots[0].cluster_configuration.shards[0].configuration.replica_count #=> Integer
    #   resp.snapshots[0].cluster_configuration.shards[0].size #=> String
    #   resp.snapshots[0].cluster_configuration.shards[0].snapshot_creation_time #=> Time
    #   resp.snapshots[0].data_tiering #=> String, one of "true", "false"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeSnapshots AWS API Documentation
    #
    # @overload describe_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_snapshots(params = {}, options = {})
      req = build_request(:describe_snapshots, params)
      req.send_request(options)
    end

    # Returns a list of subnet group descriptions. If a subnet group name is
    # specified, the list contains only the description of that group.
    #
    # @option params [String] :subnet_group_name
    #   The name of the subnet group to return details for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @return [Types::DescribeSubnetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubnetGroupsResponse#next_token #next_token} => String
    #   * {Types::DescribeSubnetGroupsResponse#subnet_groups #subnet_groups} => Array&lt;Types::SubnetGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subnet_groups({
    #     subnet_group_name: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.subnet_groups #=> Array
    #   resp.subnet_groups[0].name #=> String
    #   resp.subnet_groups[0].description #=> String
    #   resp.subnet_groups[0].vpc_id #=> String
    #   resp.subnet_groups[0].subnets #=> Array
    #   resp.subnet_groups[0].subnets[0].identifier #=> String
    #   resp.subnet_groups[0].subnets[0].availability_zone.name #=> String
    #   resp.subnet_groups[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeSubnetGroups AWS API Documentation
    #
    # @overload describe_subnet_groups(params = {})
    # @param [Hash] params ({})
    def describe_subnet_groups(params = {}, options = {})
      req = build_request(:describe_subnet_groups, params)
      req.send_request(options)
    end

    # Returns a list of users.
    #
    # @option params [String] :user_name
    #   The name of the user
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filter to determine the list of users to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #
    # @return [Types::DescribeUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::DescribeUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_users({
    #     user_name: "UserName",
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].name #=> String
    #   resp.users[0].status #=> String
    #   resp.users[0].access_string #=> String
    #   resp.users[0].acl_names #=> Array
    #   resp.users[0].acl_names[0] #=> String
    #   resp.users[0].minimum_engine_version #=> String
    #   resp.users[0].authentication.type #=> String, one of "password", "no-password", "iam"
    #   resp.users[0].authentication.password_count #=> Integer
    #   resp.users[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeUsers AWS API Documentation
    #
    # @overload describe_users(params = {})
    # @param [Hash] params ({})
    def describe_users(params = {}, options = {})
      req = build_request(:describe_users, params)
      req.send_request(options)
    end

    # Used to failover a shard. This API is designed for testing the
    # behavior of your application in case of MemoryDB failover. It is not
    # designed to be used as a production-level tool for initiating a
    # failover to overcome a problem you may have with the cluster.
    # Moreover, in certain conditions such as large scale operational
    # events, Amazon may block this API.
    #
    # @option params [required, String] :cluster_name
    #   The cluster being failed over
    #
    # @option params [required, String] :shard_name
    #   The name of the shard
    #
    # @return [Types::FailoverShardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FailoverShardResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.failover_shard({
    #     cluster_name: "String", # required
    #     shard_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.cluster.pending_updates.acls.acl_to_apply #=> String
    #   resp.cluster.pending_updates.service_updates #=> Array
    #   resp.cluster.pending_updates.service_updates[0].service_update_name #=> String
    #   resp.cluster.pending_updates.service_updates[0].status #=> String, one of "available", "in-progress", "complete", "scheduled"
    #   resp.cluster.number_of_shards #=> Integer
    #   resp.cluster.shards #=> Array
    #   resp.cluster.shards[0].name #=> String
    #   resp.cluster.shards[0].status #=> String
    #   resp.cluster.shards[0].slots #=> String
    #   resp.cluster.shards[0].nodes #=> Array
    #   resp.cluster.shards[0].nodes[0].name #=> String
    #   resp.cluster.shards[0].nodes[0].status #=> String
    #   resp.cluster.shards[0].nodes[0].availability_zone #=> String
    #   resp.cluster.shards[0].nodes[0].create_time #=> Time
    #   resp.cluster.shards[0].nodes[0].endpoint.address #=> String
    #   resp.cluster.shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.cluster.shards[0].number_of_nodes #=> Integer
    #   resp.cluster.availability_mode #=> String, one of "singleaz", "multiaz"
    #   resp.cluster.cluster_endpoint.address #=> String
    #   resp.cluster.cluster_endpoint.port #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.engine_version #=> String
    #   resp.cluster.engine_patch_version #=> String
    #   resp.cluster.parameter_group_name #=> String
    #   resp.cluster.parameter_group_status #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_id #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.subnet_group_name #=> String
    #   resp.cluster.tls_enabled #=> Boolean
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.sns_topic_arn #=> String
    #   resp.cluster.sns_topic_status #=> String
    #   resp.cluster.snapshot_retention_limit #=> Integer
    #   resp.cluster.maintenance_window #=> String
    #   resp.cluster.snapshot_window #=> String
    #   resp.cluster.acl_name #=> String
    #   resp.cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.cluster.data_tiering #=> String, one of "true", "false"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/FailoverShard AWS API Documentation
    #
    # @overload failover_shard(params = {})
    # @param [Hash] params ({})
    def failover_shard(params = {}, options = {})
      req = build_request(:failover_shard, params)
      req.send_request(options)
    end

    # Lists all available node types that you can scale to from your
    # cluster's current node type. When you use the UpdateCluster operation
    # to scale your cluster, the value of the NodeType parameter must be one
    # of the node types returned by this operation.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster you want to scale. MemoryDB uses the cluster
    #   name to identify the current node type being used by this cluster, and
    #   from that to create a list of node types you can scale up to.
    #
    # @return [Types::ListAllowedNodeTypeUpdatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAllowedNodeTypeUpdatesResponse#scale_up_node_types #scale_up_node_types} => Array&lt;String&gt;
    #   * {Types::ListAllowedNodeTypeUpdatesResponse#scale_down_node_types #scale_down_node_types} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_allowed_node_type_updates({
    #     cluster_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scale_up_node_types #=> Array
    #   resp.scale_up_node_types[0] #=> String
    #   resp.scale_down_node_types #=> Array
    #   resp.scale_down_node_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ListAllowedNodeTypeUpdates AWS API Documentation
    #
    # @overload list_allowed_node_type_updates(params = {})
    # @param [Hash] params ({})
    def list_allowed_node_type_updates(params = {}, options = {})
      req = build_request(:list_allowed_node_type_updates, params)
      req.send_request(options)
    end

    # Lists all tags currently on a named resource. A tag is a key-value
    # pair where the key and value are case-sensitive. You can use tags to
    # categorize and track your MemoryDB resources. For more information,
    # see [Tagging your MemoryDB resources][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want the
    #   list of tags
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Allows you to purchase a reserved node offering. Reserved nodes are
    # not eligible for cancellation and are non-refundable.
    #
    # @option params [required, String] :reserved_nodes_offering_id
    #   The ID of the reserved node offering to purchase.
    #
    # @option params [String] :reservation_id
    #   A customer-specified identifier to track this reservation.
    #
    # @option params [Integer] :node_count
    #   The number of node instances to reserve.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #
    # @return [Types::PurchaseReservedNodesOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseReservedNodesOfferingResponse#reserved_node #reserved_node} => Types::ReservedNode
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_nodes_offering({
    #     reserved_nodes_offering_id: "String", # required
    #     reservation_id: "String",
    #     node_count: 1,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_node.reservation_id #=> String
    #   resp.reserved_node.reserved_nodes_offering_id #=> String
    #   resp.reserved_node.node_type #=> String
    #   resp.reserved_node.start_time #=> Time
    #   resp.reserved_node.duration #=> Integer
    #   resp.reserved_node.fixed_price #=> Float
    #   resp.reserved_node.node_count #=> Integer
    #   resp.reserved_node.offering_type #=> String
    #   resp.reserved_node.state #=> String
    #   resp.reserved_node.recurring_charges #=> Array
    #   resp.reserved_node.recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_node.recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_node.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/PurchaseReservedNodesOffering AWS API Documentation
    #
    # @overload purchase_reserved_nodes_offering(params = {})
    # @param [Hash] params ({})
    def purchase_reserved_nodes_offering(params = {}, options = {})
      req = build_request(:purchase_reserved_nodes_offering, params)
      req.send_request(options)
    end

    # Modifies the parameters of a parameter group to the engine or system
    # default value. You can reset specific parameters by submitting a list
    # of parameter names. To reset the entire parameter group, specify the
    # AllParameters and ParameterGroupName parameters.
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group to reset.
    #
    # @option params [Boolean] :all_parameters
    #   If true, all parameters in the parameter group are reset to their
    #   default values. If false, only the parameters listed by ParameterNames
    #   are reset to their default values.
    #
    # @option params [Array<String>] :parameter_names
    #   An array of parameter names to reset to their default values. If
    #   AllParameters is true, do not use ParameterNames. If AllParameters is
    #   false, you must specify the name of at least one parameter to reset.
    #
    # @return [Types::ResetParameterGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetParameterGroupResponse#parameter_group #parameter_group} => Types::ParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_parameter_group({
    #     parameter_group_name: "String", # required
    #     all_parameters: false,
    #     parameter_names: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter_group.name #=> String
    #   resp.parameter_group.family #=> String
    #   resp.parameter_group.description #=> String
    #   resp.parameter_group.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ResetParameterGroup AWS API Documentation
    #
    # @overload reset_parameter_group(params = {})
    # @param [Hash] params ({})
    def reset_parameter_group(params = {}, options = {})
      req = build_request(:reset_parameter_group, params)
      req.send_request(options)
    end

    # A tag is a key-value pair where the key and value are case-sensitive.
    # You can use tags to categorize and track all your MemoryDB resources.
    # When you add or remove tags on clusters, those actions will be
    # replicated to all nodes in the cluster. For more information, see
    # [Resource-level permissions][1].
    #
    # For example, you can use cost-allocation tags to your MemoryDB
    # resources, Amazon generates a cost allocation report as a
    # comma-separated value (CSV) file with your usage and costs aggregated
    # by your tags. You can apply tags that represent business categories
    # (such as cost centers, application names, or owners) to organize your
    # costs across multiple services. For more information, see [Using Cost
    # Allocation Tags][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/iam.resourcelevelpermissions.html
    # [2]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which the tags are
    #   to be added
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #
    # @return [Types::TagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourceResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Use this operation to remove tags on a resource
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which the tags are
    #   to be removed
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of keys of the tags that are to be removed
    #
    # @return [Types::UntagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagResourceResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Changes the list of users that belong to the Access Control List.
    #
    # @option params [required, String] :acl_name
    #   The name of the Access Control List
    #
    # @option params [Array<String>] :user_names_to_add
    #   The list of users to add to the Access Control List
    #
    # @option params [Array<String>] :user_names_to_remove
    #   The list of users to remove from the Access Control List
    #
    # @return [Types::UpdateACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateACLResponse#acl #acl} => Types::ACL
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_acl({
    #     acl_name: "String", # required
    #     user_names_to_add: ["UserName"],
    #     user_names_to_remove: ["UserName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.acl.name #=> String
    #   resp.acl.status #=> String
    #   resp.acl.user_names #=> Array
    #   resp.acl.user_names[0] #=> String
    #   resp.acl.minimum_engine_version #=> String
    #   resp.acl.pending_changes.user_names_to_remove #=> Array
    #   resp.acl.pending_changes.user_names_to_remove[0] #=> String
    #   resp.acl.pending_changes.user_names_to_add #=> Array
    #   resp.acl.pending_changes.user_names_to_add[0] #=> String
    #   resp.acl.clusters #=> Array
    #   resp.acl.clusters[0] #=> String
    #   resp.acl.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateACL AWS API Documentation
    #
    # @overload update_acl(params = {})
    # @param [Hash] params ({})
    def update_acl(params = {}, options = {})
      req = build_request(:update_acl, params)
      req.send_request(options)
    end

    # Modifies the settings for a cluster. You can use this operation to
    # change one or more cluster configuration settings by specifying the
    # settings and the new values.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster to update
    #
    # @option params [String] :description
    #   The description of the cluster to update
    #
    # @option params [Array<String>] :security_group_ids
    #   The SecurityGroupIds to update
    #
    # @option params [String] :maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #
    # @option params [String] :sns_topic_arn
    #   The SNS topic ARN to update
    #
    # @option params [String] :sns_topic_status
    #   The status of the Amazon SNS notification topic. Notifications are
    #   sent only if the status is active.
    #
    # @option params [String] :parameter_group_name
    #   The name of the parameter group to update
    #
    # @option params [String] :snapshot_window
    #   The daily time range (in UTC) during which MemoryDB begins taking a
    #   daily snapshot of your cluster.
    #
    # @option params [Integer] :snapshot_retention_limit
    #   The number of days for which MemoryDB retains automatic cluster
    #   snapshots before deleting them. For example, if you set
    #   SnapshotRetentionLimit to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    # @option params [String] :node_type
    #   A valid node type that you want to scale this cluster up or down to.
    #
    # @option params [String] :engine_version
    #   The upgraded version of the engine to be run on the nodes. You can
    #   upgrade to a newer engine version, but you cannot downgrade to an
    #   earlier engine version. If you want to use an earlier engine version,
    #   you must delete the existing cluster and create it anew with the
    #   earlier engine version.
    #
    # @option params [Types::ReplicaConfigurationRequest] :replica_configuration
    #   The number of replicas that will reside in each shard
    #
    # @option params [Types::ShardConfigurationRequest] :shard_configuration
    #   The number of shards in the cluster
    #
    # @option params [String] :acl_name
    #   The Access Control List that is associated with the cluster
    #
    # @return [Types::UpdateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster({
    #     cluster_name: "String", # required
    #     description: "String",
    #     security_group_ids: ["String"],
    #     maintenance_window: "String",
    #     sns_topic_arn: "String",
    #     sns_topic_status: "String",
    #     parameter_group_name: "String",
    #     snapshot_window: "String",
    #     snapshot_retention_limit: 1,
    #     node_type: "String",
    #     engine_version: "String",
    #     replica_configuration: {
    #       replica_count: 1,
    #     },
    #     shard_configuration: {
    #       shard_count: 1,
    #     },
    #     acl_name: "ACLName",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.cluster.pending_updates.acls.acl_to_apply #=> String
    #   resp.cluster.pending_updates.service_updates #=> Array
    #   resp.cluster.pending_updates.service_updates[0].service_update_name #=> String
    #   resp.cluster.pending_updates.service_updates[0].status #=> String, one of "available", "in-progress", "complete", "scheduled"
    #   resp.cluster.number_of_shards #=> Integer
    #   resp.cluster.shards #=> Array
    #   resp.cluster.shards[0].name #=> String
    #   resp.cluster.shards[0].status #=> String
    #   resp.cluster.shards[0].slots #=> String
    #   resp.cluster.shards[0].nodes #=> Array
    #   resp.cluster.shards[0].nodes[0].name #=> String
    #   resp.cluster.shards[0].nodes[0].status #=> String
    #   resp.cluster.shards[0].nodes[0].availability_zone #=> String
    #   resp.cluster.shards[0].nodes[0].create_time #=> Time
    #   resp.cluster.shards[0].nodes[0].endpoint.address #=> String
    #   resp.cluster.shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.cluster.shards[0].number_of_nodes #=> Integer
    #   resp.cluster.availability_mode #=> String, one of "singleaz", "multiaz"
    #   resp.cluster.cluster_endpoint.address #=> String
    #   resp.cluster.cluster_endpoint.port #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.engine_version #=> String
    #   resp.cluster.engine_patch_version #=> String
    #   resp.cluster.parameter_group_name #=> String
    #   resp.cluster.parameter_group_status #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_id #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.subnet_group_name #=> String
    #   resp.cluster.tls_enabled #=> Boolean
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.sns_topic_arn #=> String
    #   resp.cluster.sns_topic_status #=> String
    #   resp.cluster.snapshot_retention_limit #=> Integer
    #   resp.cluster.maintenance_window #=> String
    #   resp.cluster.snapshot_window #=> String
    #   resp.cluster.acl_name #=> String
    #   resp.cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.cluster.data_tiering #=> String, one of "true", "false"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateCluster AWS API Documentation
    #
    # @overload update_cluster(params = {})
    # @param [Hash] params ({})
    def update_cluster(params = {}, options = {})
      req = build_request(:update_cluster, params)
      req.send_request(options)
    end

    # Updates the parameters of a parameter group. You can modify up to 20
    # parameters in a single request by submitting a list parameter name and
    # value pairs.
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group to update.
    #
    # @option params [required, Array<Types::ParameterNameValue>] :parameter_name_values
    #   An array of parameter names and values for the parameter update. You
    #   must supply at least one parameter name and value; subsequent
    #   arguments are optional. A maximum of 20 parameters may be updated per
    #   request.
    #
    # @return [Types::UpdateParameterGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateParameterGroupResponse#parameter_group #parameter_group} => Types::ParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_parameter_group({
    #     parameter_group_name: "String", # required
    #     parameter_name_values: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter_group.name #=> String
    #   resp.parameter_group.family #=> String
    #   resp.parameter_group.description #=> String
    #   resp.parameter_group.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateParameterGroup AWS API Documentation
    #
    # @overload update_parameter_group(params = {})
    # @param [Hash] params ({})
    def update_parameter_group(params = {}, options = {})
      req = build_request(:update_parameter_group, params)
      req.send_request(options)
    end

    # Updates a subnet group. For more information, see [Updating a subnet
    # group][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/ubnetGroups.Modifying.html
    #
    # @option params [required, String] :subnet_group_name
    #   The name of the subnet group
    #
    # @option params [String] :description
    #   A description of the subnet group
    #
    # @option params [Array<String>] :subnet_ids
    #   The EC2 subnet IDs for the subnet group.
    #
    # @return [Types::UpdateSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubnetGroupResponse#subnet_group #subnet_group} => Types::SubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subnet_group({
    #     subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.subnet_group.name #=> String
    #   resp.subnet_group.description #=> String
    #   resp.subnet_group.vpc_id #=> String
    #   resp.subnet_group.subnets #=> Array
    #   resp.subnet_group.subnets[0].identifier #=> String
    #   resp.subnet_group.subnets[0].availability_zone.name #=> String
    #   resp.subnet_group.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateSubnetGroup AWS API Documentation
    #
    # @overload update_subnet_group(params = {})
    # @param [Hash] params ({})
    def update_subnet_group(params = {}, options = {})
      req = build_request(:update_subnet_group, params)
      req.send_request(options)
    end

    # Changes user password(s) and/or access string.
    #
    # @option params [required, String] :user_name
    #   The name of the user
    #
    # @option params [Types::AuthenticationMode] :authentication_mode
    #   Denotes the user's authentication properties, such as whether it
    #   requires a password to authenticate.
    #
    # @option params [String] :access_string
    #   Access permissions string used for this user.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     user_name: "UserName", # required
    #     authentication_mode: {
    #       type: "password", # accepts password, iam
    #       passwords: ["String"],
    #     },
    #     access_string: "AccessString",
    #   })
    #
    # @example Response structure
    #
    #   resp.user.name #=> String
    #   resp.user.status #=> String
    #   resp.user.access_string #=> String
    #   resp.user.acl_names #=> Array
    #   resp.user.acl_names[0] #=> String
    #   resp.user.minimum_engine_version #=> String
    #   resp.user.authentication.type #=> String, one of "password", "no-password", "iam"
    #   resp.user.authentication.password_count #=> Integer
    #   resp.user.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-memorydb'
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
