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

Aws::Plugins::GlobalConfiguration.add_identifier(:docdbelastic)

module Aws::DocDBElastic
  # An API client for DocDBElastic.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DocDBElastic::Client.new(
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

    @identifier = :docdbelastic

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
    add_plugin(Aws::DocDBElastic::Plugins::Endpoints)

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
    #   @option options [Aws::DocDBElastic::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::DocDBElastic::EndpointParameters`
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

    # Creates a new Elastic DocumentDB cluster and returns its Cluster
    # structure.
    #
    # @option params [required, String] :admin_user_name
    #   The name of the Elastic DocumentDB cluster administrator.
    #
    #   *Constraints*:
    #
    #   * Must be from 1 to 63 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word.
    #
    # @option params [required, String] :admin_user_password
    #   The password for the Elastic DocumentDB cluster administrator and can
    #   contain any printable ASCII characters.
    #
    #   *Constraints*:
    #
    #   * Must contain from 8 to 100 characters.
    #
    #   * Cannot contain a forward slash (/), double quote ("), or the "at"
    #     symbol (@).
    #
    # @option params [required, String] :auth_type
    #   The authentication type for the Elastic DocumentDB cluster.
    #
    # @option params [String] :client_token
    #   The client token for the Elastic DocumentDB cluster.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :cluster_name
    #   The name of the new Elastic DocumentDB cluster. This parameter is
    #   stored as a lowercase string.
    #
    #   *Constraints*:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   *Example*: `my-cluster`
    #
    # @option params [String] :kms_key_id
    #   The KMS key identifier to use to encrypt the new Elastic DocumentDB
    #   cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a cluster using the same Amazon
    #   account that owns this KMS encryption key, you can use the KMS key
    #   alias instead of the ARN as the KMS encryption key.
    #
    #   If an encryption key is not specified, Elastic DocumentDB uses the
    #   default encryption key that KMS creates for your account. Your account
    #   has a different default encryption key for each Amazon Region.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   *Format*: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   *Default*: a 30-minute window selected at random from an 8-hour block
    #   of time for each Amazon Web Services Region, occurring on a random day
    #   of the week.
    #
    #   *Valid days*: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   *Constraints*: Minimum 30-minute window.
    #
    # @option params [required, Integer] :shard_capacity
    #   The capacity of each shard in the new Elastic DocumentDB cluster.
    #
    # @option params [required, Integer] :shard_count
    #   The number of shards to create in the new Elastic DocumentDB cluster.
    #
    # @option params [Array<String>] :subnet_ids
    #   The Amazon EC2 subnet IDs for the new Elastic DocumentDB cluster.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be assigned to the new Elastic DocumentDB cluster.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the new Elastic
    #   DocumentDB cluster.
    #
    # @return [Types::CreateClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterOutput#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     admin_user_name: "String", # required
    #     admin_user_password: "Password", # required
    #     auth_type: "PLAIN_TEXT", # required, accepts PLAIN_TEXT, SECRET_ARN
    #     client_token: "String",
    #     cluster_name: "String", # required
    #     kms_key_id: "String",
    #     preferred_maintenance_window: "String",
    #     shard_capacity: 1, # required
    #     shard_count: 1, # required
    #     subnet_ids: ["String"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     vpc_security_group_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.admin_user_name #=> String
    #   resp.cluster.auth_type #=> String, one of "PLAIN_TEXT", "SECRET_ARN"
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_endpoint #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.create_time #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.shard_capacity #=> Integer
    #   resp.cluster.shard_count #=> Integer
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #   resp.cluster.subnet_ids #=> Array
    #   resp.cluster.subnet_ids[0] #=> String
    #   resp.cluster.vpc_security_group_ids #=> Array
    #   resp.cluster.vpc_security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a snapshot of a cluster.
    #
    # @option params [required, String] :cluster_arn
    #   The arn of the Elastic DocumentDB cluster that the snapshot will be
    #   taken from.
    #
    # @option params [required, String] :snapshot_name
    #   The name of the Elastic DocumentDB snapshot.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be assigned to the new Elastic DocumentDB snapshot.
    #
    # @return [Types::CreateClusterSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterSnapshotOutput#snapshot #snapshot} => Types::ClusterSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_snapshot({
    #     cluster_arn: "String", # required
    #     snapshot_name: "CreateClusterSnapshotInputSnapshotNameString", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.admin_user_name #=> String
    #   resp.snapshot.cluster_arn #=> String
    #   resp.snapshot.cluster_creation_time #=> String
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.snapshot_arn #=> String
    #   resp.snapshot.snapshot_creation_time #=> String
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #   resp.snapshot.subnet_ids #=> Array
    #   resp.snapshot.subnet_ids[0] #=> String
    #   resp.snapshot.vpc_security_group_ids #=> Array
    #   resp.snapshot.vpc_security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateClusterSnapshot AWS API Documentation
    #
    # @overload create_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def create_cluster_snapshot(params = {}, options = {})
      req = build_request(:create_cluster_snapshot, params)
      req.send_request(options)
    end

    # Delete a Elastic DocumentDB cluster.
    #
    # @option params [required, String] :cluster_arn
    #   The arn of the Elastic DocumentDB cluster that is to be deleted.
    #
    # @return [Types::DeleteClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterOutput#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.admin_user_name #=> String
    #   resp.cluster.auth_type #=> String, one of "PLAIN_TEXT", "SECRET_ARN"
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_endpoint #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.create_time #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.shard_capacity #=> Integer
    #   resp.cluster.shard_count #=> Integer
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #   resp.cluster.subnet_ids #=> Array
    #   resp.cluster.subnet_ids[0] #=> String
    #   resp.cluster.vpc_security_group_ids #=> Array
    #   resp.cluster.vpc_security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Delete a Elastic DocumentDB snapshot.
    #
    # @option params [required, String] :snapshot_arn
    #   The arn of the Elastic DocumentDB snapshot that is to be deleted.
    #
    # @return [Types::DeleteClusterSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterSnapshotOutput#snapshot #snapshot} => Types::ClusterSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_snapshot({
    #     snapshot_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.admin_user_name #=> String
    #   resp.snapshot.cluster_arn #=> String
    #   resp.snapshot.cluster_creation_time #=> String
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.snapshot_arn #=> String
    #   resp.snapshot.snapshot_creation_time #=> String
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #   resp.snapshot.subnet_ids #=> Array
    #   resp.snapshot.subnet_ids[0] #=> String
    #   resp.snapshot.vpc_security_group_ids #=> Array
    #   resp.snapshot.vpc_security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteClusterSnapshot AWS API Documentation
    #
    # @overload delete_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_cluster_snapshot(params = {}, options = {})
      req = build_request(:delete_cluster_snapshot, params)
      req.send_request(options)
    end

    # Returns information about a specific Elastic DocumentDB cluster.
    #
    # @option params [required, String] :cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #
    # @return [Types::GetClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClusterOutput#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cluster({
    #     cluster_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.admin_user_name #=> String
    #   resp.cluster.auth_type #=> String, one of "PLAIN_TEXT", "SECRET_ARN"
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_endpoint #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.create_time #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.shard_capacity #=> Integer
    #   resp.cluster.shard_count #=> Integer
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #   resp.cluster.subnet_ids #=> Array
    #   resp.cluster.subnet_ids[0] #=> String
    #   resp.cluster.vpc_security_group_ids #=> Array
    #   resp.cluster.vpc_security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetCluster AWS API Documentation
    #
    # @overload get_cluster(params = {})
    # @param [Hash] params ({})
    def get_cluster(params = {}, options = {})
      req = build_request(:get_cluster, params)
      req.send_request(options)
    end

    # Returns information about a specific Elastic DocumentDB snapshot
    #
    # @option params [required, String] :snapshot_arn
    #   The arn of the Elastic DocumentDB snapshot.
    #
    # @return [Types::GetClusterSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClusterSnapshotOutput#snapshot #snapshot} => Types::ClusterSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cluster_snapshot({
    #     snapshot_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.admin_user_name #=> String
    #   resp.snapshot.cluster_arn #=> String
    #   resp.snapshot.cluster_creation_time #=> String
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.snapshot_arn #=> String
    #   resp.snapshot.snapshot_creation_time #=> String
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #   resp.snapshot.subnet_ids #=> Array
    #   resp.snapshot.subnet_ids[0] #=> String
    #   resp.snapshot.vpc_security_group_ids #=> Array
    #   resp.snapshot.vpc_security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetClusterSnapshot AWS API Documentation
    #
    # @overload get_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def get_cluster_snapshot(params = {}, options = {})
      req = build_request(:get_cluster_snapshot, params)
      req.send_request(options)
    end

    # Returns information about Elastic DocumentDB snapshots for a specified
    # cluster.
    #
    # @option params [String] :cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of entries to recieve in the response.
    #
    # @option params [String] :next_token
    #   The nextToken which is used the get the next page of data.
    #
    # @return [Types::ListClusterSnapshotsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClusterSnapshotsOutput#next_token #next_token} => String
    #   * {Types::ListClusterSnapshotsOutput#snapshots #snapshots} => Array&lt;Types::ClusterSnapshotInList&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cluster_snapshots({
    #     cluster_arn: "String",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].cluster_arn #=> String
    #   resp.snapshots[0].snapshot_arn #=> String
    #   resp.snapshots[0].snapshot_creation_time #=> String
    #   resp.snapshots[0].snapshot_name #=> String
    #   resp.snapshots[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClusterSnapshots AWS API Documentation
    #
    # @overload list_cluster_snapshots(params = {})
    # @param [Hash] params ({})
    def list_cluster_snapshots(params = {}, options = {})
      req = build_request(:list_cluster_snapshots, params)
      req.send_request(options)
    end

    # Returns information about provisioned Elastic DocumentDB clusters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of entries to recieve in the response.
    #
    # @option params [String] :next_token
    #   The nextToken which is used the get the next page of data.
    #
    # @return [Types::ListClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersOutput#clusters #clusters} => Array&lt;Types::ClusterInList&gt;
    #   * {Types::ListClustersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0].cluster_arn #=> String
    #   resp.clusters[0].cluster_name #=> String
    #   resp.clusters[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Lists all tags on a Elastic DocumentDB resource
    #
    # @option params [required, String] :resource_arn
    #   The arn of the Elastic DocumentDB resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Restores a Elastic DocumentDB cluster from a snapshot.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Elastic DocumentDB cluster.
    #
    # @option params [String] :kms_key_id
    #   The KMS key identifier to use to encrypt the new Elastic DocumentDB
    #   cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a cluster using the same Amazon
    #   account that owns this KMS encryption key, you can use the KMS key
    #   alias instead of the ARN as the KMS encryption key.
    #
    #   If an encryption key is not specified here, Elastic DocumentDB uses
    #   the default encryption key that KMS creates for your account. Your
    #   account has a different default encryption key for each Amazon Region.
    #
    # @option params [required, String] :snapshot_arn
    #   The arn of the Elastic DocumentDB snapshot.
    #
    # @option params [Array<String>] :subnet_ids
    #   The Amazon EC2 subnet IDs for the Elastic DocumentDB cluster.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of the tag names to be assigned to the restored DB cluster, in
    #   the form of an array of key-value pairs in which the key is the tag
    #   name and the value is the key value.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the Elastic
    #   DocumentDB cluster.
    #
    # @return [Types::RestoreClusterFromSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreClusterFromSnapshotOutput#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_cluster_from_snapshot({
    #     cluster_name: "String", # required
    #     kms_key_id: "String",
    #     snapshot_arn: "String", # required
    #     subnet_ids: ["String"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     vpc_security_group_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.admin_user_name #=> String
    #   resp.cluster.auth_type #=> String, one of "PLAIN_TEXT", "SECRET_ARN"
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_endpoint #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.create_time #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.shard_capacity #=> Integer
    #   resp.cluster.shard_count #=> Integer
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #   resp.cluster.subnet_ids #=> Array
    #   resp.cluster.subnet_ids[0] #=> String
    #   resp.cluster.vpc_security_group_ids #=> Array
    #   resp.cluster.vpc_security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/RestoreClusterFromSnapshot AWS API Documentation
    #
    # @overload restore_cluster_from_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_cluster_from_snapshot(params = {}, options = {})
      req = build_request(:restore_cluster_from_snapshot, params)
      req.send_request(options)
    end

    # Adds metadata tags to a Elastic DocumentDB resource
    #
    # @option params [required, String] :resource_arn
    #   The arn of the Elastic DocumentDB resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to be assigned to the Elastic DocumentDB resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes metadata tags to a Elastic DocumentDB resource
    #
    # @option params [required, String] :resource_arn
    #   The arn of the Elastic DocumentDB resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to be removed from the Elastic DocumentDB resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies a Elastic DocumentDB cluster. This includes updating
    # admin-username/password, upgrading API version setting up a backup
    # window and maintenance window
    #
    # @option params [String] :admin_user_password
    #   The password for the Elastic DocumentDB cluster administrator. This
    #   password can contain any printable ASCII character except forward
    #   slash (/), double quote ("), or the "at" symbol (@).
    #
    #   *Constraints*: Must contain from 8 to 100 characters.
    #
    # @option params [String] :auth_type
    #   The authentication type for the Elastic DocumentDB cluster.
    #
    # @option params [String] :client_token
    #   The client token for the Elastic DocumentDB cluster.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   *Format*: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   *Default*: a 30-minute window selected at random from an 8-hour block
    #   of time for each Amazon Web Services Region, occurring on a random day
    #   of the week.
    #
    #   *Valid days*: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   *Constraints*: Minimum 30-minute window.
    #
    # @option params [Integer] :shard_capacity
    #   The capacity of each shard in the Elastic DocumentDB cluster.
    #
    # @option params [Integer] :shard_count
    #   The number of shards to create in the Elastic DocumentDB cluster.
    #
    # @option params [Array<String>] :subnet_ids
    #   The number of shards to create in the Elastic DocumentDB cluster.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the new Elastic
    #   DocumentDB cluster.
    #
    # @return [Types::UpdateClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterOutput#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster({
    #     admin_user_password: "Password",
    #     auth_type: "PLAIN_TEXT", # accepts PLAIN_TEXT, SECRET_ARN
    #     client_token: "String",
    #     cluster_arn: "String", # required
    #     preferred_maintenance_window: "String",
    #     shard_capacity: 1,
    #     shard_count: 1,
    #     subnet_ids: ["String"],
    #     vpc_security_group_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.admin_user_name #=> String
    #   resp.cluster.auth_type #=> String, one of "PLAIN_TEXT", "SECRET_ARN"
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_endpoint #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.create_time #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.shard_capacity #=> Integer
    #   resp.cluster.shard_count #=> Integer
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "VPC_ENDPOINT_LIMIT_EXCEEDED", "IP_ADDRESS_LIMIT_EXCEEDED", "INVALID_SECURITY_GROUP_ID", "INVALID_SUBNET_ID", "INACCESSIBLE_ENCRYPTION_CREDS"
    #   resp.cluster.subnet_ids #=> Array
    #   resp.cluster.subnet_ids[0] #=> String
    #   resp.cluster.vpc_security_group_ids #=> Array
    #   resp.cluster.vpc_security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UpdateCluster AWS API Documentation
    #
    # @overload update_cluster(params = {})
    # @param [Hash] params ({})
    def update_cluster(params = {}, options = {})
      req = build_request(:update_cluster, params)
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
      context[:gem_name] = 'aws-sdk-docdbelastic'
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
