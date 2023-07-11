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

Aws::Plugins::GlobalConfiguration.add_identifier(:efs)

module Aws::EFS
  # An API client for EFS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EFS::Client.new(
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

    @identifier = :efs

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
    add_plugin(Aws::EFS::Plugins::Endpoints)

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
    #   @option options [Aws::EFS::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::EFS::EndpointParameters`
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

    # Creates an EFS access point. An access point is an
    # application-specific view into an EFS file system that applies an
    # operating system user and group, and a file system path, to any file
    # system request made through the access point. The operating system
    # user and group override any identity information provided by the NFS
    # client. The file system path is exposed as the access point's root
    # directory. Applications using the access point can only access data in
    # the application's own directory and any subdirectories. To learn
    # more, see [Mounting a file system using EFS access points][1].
    #
    # <note markdown="1"> If multiple requests to create access points on the same file system
    # are sent in quick succession, and the file system is near the limit of
    # 1,000 access points, you may experience a throttling response for
    # these requests. This is to ensure that the file system does not exceed
    # the stated access point limit.
    #
    #  </note>
    #
    # This operation requires permissions for the
    # `elasticfilesystem:CreateAccessPoint` action.
    #
    # Access points can be tagged on creation. If tags are specified in the
    # creation action, IAM performs additional authorization on the
    # `elasticfilesystem:TagResource` action to verify if users have
    # permissions to create tags. Therefore, you must grant explicit
    # permissions to use the `elasticfilesystem:TagResource` action. For
    # more information, see [Granting permissions to tag resources during
    # creation][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html
    # [2]: https://docs.aws.amazon.com/efs/latest/ug/using-tags-efs.html#supported-iam-actions-tagging.html
    #
    # @option params [required, String] :client_token
    #   A string of up to 64 ASCII characters that Amazon EFS uses to ensure
    #   idempotent creation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Creates tags associated with the access point. Each tag is a key-value
    #   pair, each key must be unique. For more information, see [Tagging
    #   Amazon Web Services resources][1] in the *Amazon Web Services General
    #   Reference Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [required, String] :file_system_id
    #   The ID of the EFS file system that the access point provides access
    #   to.
    #
    # @option params [Types::PosixUser] :posix_user
    #   The operating system user and group applied to all file system
    #   requests made using the access point.
    #
    # @option params [Types::RootDirectory] :root_directory
    #   Specifies the directory on the Amazon EFS file system that the access
    #   point exposes as the root directory of your file system to NFS clients
    #   using the access point. The clients using the access point can only
    #   access the root directory and below. If the `RootDirectory` &gt;
    #   `Path` specified does not exist, EFS creates it and applies the
    #   `CreationInfo` settings when a client connects to an access point.
    #   When specifying a `RootDirectory`, you must provide the `Path`, and
    #   the `CreationInfo`.
    #
    #   Amazon EFS creates a root directory only if you have provided the
    #   CreationInfo: OwnUid, OwnGID, and permissions for the directory. If
    #   you do not provide this information, Amazon EFS does not create the
    #   root directory. If the root directory does not exist, attempts to
    #   mount using the access point will fail.
    #
    # @return [Types::AccessPointDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AccessPointDescription#client_token #client_token} => String
    #   * {Types::AccessPointDescription#name #name} => String
    #   * {Types::AccessPointDescription#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::AccessPointDescription#access_point_id #access_point_id} => String
    #   * {Types::AccessPointDescription#access_point_arn #access_point_arn} => String
    #   * {Types::AccessPointDescription#file_system_id #file_system_id} => String
    #   * {Types::AccessPointDescription#posix_user #posix_user} => Types::PosixUser
    #   * {Types::AccessPointDescription#root_directory #root_directory} => Types::RootDirectory
    #   * {Types::AccessPointDescription#owner_id #owner_id} => String
    #   * {Types::AccessPointDescription#life_cycle_state #life_cycle_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_point({
    #     client_token: "ClientToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     file_system_id: "FileSystemId", # required
    #     posix_user: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1],
    #     },
    #     root_directory: {
    #       path: "Path",
    #       creation_info: {
    #         owner_uid: 1, # required
    #         owner_gid: 1, # required
    #         permissions: "Permissions", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.name #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.access_point_id #=> String
    #   resp.access_point_arn #=> String
    #   resp.file_system_id #=> String
    #   resp.posix_user.uid #=> Integer
    #   resp.posix_user.gid #=> Integer
    #   resp.posix_user.secondary_gids #=> Array
    #   resp.posix_user.secondary_gids[0] #=> Integer
    #   resp.root_directory.path #=> String
    #   resp.root_directory.creation_info.owner_uid #=> Integer
    #   resp.root_directory.creation_info.owner_gid #=> Integer
    #   resp.root_directory.creation_info.permissions #=> String
    #   resp.owner_id #=> String
    #   resp.life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted", "error"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateAccessPoint AWS API Documentation
    #
    # @overload create_access_point(params = {})
    # @param [Hash] params ({})
    def create_access_point(params = {}, options = {})
      req = build_request(:create_access_point, params)
      req.send_request(options)
    end

    # Creates a new, empty file system. The operation requires a creation
    # token in the request that Amazon EFS uses to ensure idempotent
    # creation (calling the operation with same creation token has no
    # effect). If a file system does not currently exist that is owned by
    # the caller's Amazon Web Services account with the specified creation
    # token, this operation does the following:
    #
    # * Creates a new, empty file system. The file system will have an
    #   Amazon EFS assigned ID, and an initial lifecycle state `creating`.
    #
    # * Returns with the description of the created file system.
    #
    # Otherwise, this operation returns a `FileSystemAlreadyExists` error
    # with the ID of the existing file system.
    #
    # <note markdown="1"> For basic use cases, you can use a randomly generated UUID for the
    # creation token.
    #
    #  </note>
    #
    # The idempotent operation allows you to retry a `CreateFileSystem` call
    # without risk of creating an extra file system. This can happen when an
    # initial call fails in a way that leaves it uncertain whether or not a
    # file system was actually created. An example might be that a transport
    # level timeout occurred or your connection was reset. As long as you
    # use the same creation token, if the initial call had succeeded in
    # creating a file system, the client can learn of its existence from the
    # `FileSystemAlreadyExists` error.
    #
    # For more information, see [Creating a file system][1] in the *Amazon
    # EFS User Guide*.
    #
    # <note markdown="1"> The `CreateFileSystem` call returns while the file system's lifecycle
    # state is still `creating`. You can check the file system creation
    # status by calling the DescribeFileSystems operation, which among other
    # things returns the file system state.
    #
    #  </note>
    #
    # This operation accepts an optional `PerformanceMode` parameter that
    # you choose for your file system. We recommend `generalPurpose`
    # performance mode for most file systems. File systems using the `maxIO`
    # performance mode can scale to higher levels of aggregate throughput
    # and operations per second with a tradeoff of slightly higher latencies
    # for most file operations. The performance mode can't be changed after
    # the file system has been created. For more information, see [Amazon
    # EFS performance modes][2].
    #
    # You can set the throughput mode for the file system using the
    # `ThroughputMode` parameter.
    #
    # After the file system is fully created, Amazon EFS sets its lifecycle
    # state to `available`, at which point you can create one or more mount
    # targets for the file system in your VPC. For more information, see
    # CreateMountTarget. You mount your Amazon EFS file system on an EC2
    # instances in your VPC by using the mount target. For more information,
    # see [Amazon EFS: How it Works][3].
    #
    # This operation requires permissions for the
    # `elasticfilesystem:CreateFileSystem` action.
    #
    # File systems can be tagged on creation. If tags are specified in the
    # creation action, IAM performs additional authorization on the
    # `elasticfilesystem:TagResource` action to verify if users have
    # permissions to create tags. Therefore, you must grant explicit
    # permissions to use the `elasticfilesystem:TagResource` action. For
    # more information, see [Granting permissions to tag resources during
    # creation][4].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/creating-using-create-fs.html#creating-using-create-fs-part1
    # [2]: https://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html
    # [3]: https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html
    # [4]: https://docs.aws.amazon.com/efs/latest/ug/using-tags-efs.html#supported-iam-actions-tagging.html
    #
    # @option params [required, String] :creation_token
    #   A string of up to 64 ASCII characters. Amazon EFS uses this to ensure
    #   idempotent creation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :performance_mode
    #   The performance mode of the file system. We recommend `generalPurpose`
    #   performance mode for most file systems. File systems using the `maxIO`
    #   performance mode can scale to higher levels of aggregate throughput
    #   and operations per second with a tradeoff of slightly higher latencies
    #   for most file operations. The performance mode can't be changed after
    #   the file system has been created.
    #
    #   <note markdown="1"> The `maxIO` mode is not supported on file systems using One Zone
    #   storage classes.
    #
    #    </note>
    #
    # @option params [Boolean] :encrypted
    #   A Boolean value that, if true, creates an encrypted file system. When
    #   creating an encrypted file system, you have the option of specifying
    #   an existing Key Management Service key (KMS key). If you don't
    #   specify a KMS key, then the default KMS key for Amazon EFS,
    #   `/aws/elasticfilesystem`, is used to protect the encrypted file
    #   system.
    #
    # @option params [String] :kms_key_id
    #   The ID of the KMS key that you want to use to protect the encrypted
    #   file system. This parameter is required only if you want to use a
    #   non-default KMS key. If this parameter is not specified, the default
    #   KMS key for Amazon EFS is used. You can specify a KMS key ID using the
    #   following formats:
    #
    #   * Key ID - A unique identifier of the key, for example
    #     `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   * ARN - An Amazon Resource Name (ARN) for the key, for example
    #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   * Key alias - A previously created display name for a key, for example
    #     `alias/projectKey1`.
    #
    #   * Key alias ARN - An ARN for a key alias, for example
    #     `arn:aws:kms:us-west-2:444455556666:alias/projectKey1`.
    #
    #   If you use `KmsKeyId`, you must set the
    #   CreateFileSystemRequest$Encrypted parameter to true.
    #
    #   EFS accepts only symmetric KMS keys. You cannot use asymmetric KMS
    #   keys with Amazon EFS file systems.
    #
    # @option params [String] :throughput_mode
    #   Specifies the throughput mode for the file system. The mode can be
    #   `bursting`, `provisioned`, or `elastic`. If you set `ThroughputMode`
    #   to `provisioned`, you must also set a value for
    #   `ProvisionedThroughputInMibps`. After you create the file system, you
    #   can decrease your file system's throughput in Provisioned Throughput
    #   mode or change between the throughput modes, with certain time
    #   restrictions. For more information, see [Specifying throughput with
    #   provisioned mode][1] in the *Amazon EFS User Guide*.
    #
    #   Default is `bursting`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput
    #
    # @option params [Float] :provisioned_throughput_in_mibps
    #   The throughput, measured in MiB/s, that you want to provision for a
    #   file system that you're creating. Valid values are 1-1024. Required
    #   if `ThroughputMode` is set to `provisioned`. The upper limit for
    #   throughput is 1024 MiB/s. To increase this limit, contact Amazon Web
    #   Services Support. For more information, see [Amazon EFS quotas that
    #   you can increase][1] in the *Amazon EFS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits
    #
    # @option params [String] :availability_zone_name
    #   Used to create a file system that uses One Zone storage classes. It
    #   specifies the Amazon Web Services Availability Zone in which to create
    #   the file system. Use the format `us-east-1a` to specify the
    #   Availability Zone. For more information about One Zone storage
    #   classes, see [Using EFS storage classes][1] in the *Amazon EFS User
    #   Guide*.
    #
    #   <note markdown="1"> One Zone storage classes are not available in all Availability Zones
    #   in Amazon Web Services Regions where Amazon EFS is available.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html
    #
    # @option params [Boolean] :backup
    #   Specifies whether automatic backups are enabled on the file system
    #   that you are creating. Set the value to `true` to enable automatic
    #   backups. If you are creating a file system that uses One Zone storage
    #   classes, automatic backups are enabled by default. For more
    #   information, see [Automatic backups][1] in the *Amazon EFS User
    #   Guide*.
    #
    #   Default is `false`. However, if you specify an `AvailabilityZoneName`,
    #   the default is `true`.
    #
    #   <note markdown="1"> Backup is not available in all Amazon Web Services Regions where
    #   Amazon EFS is available.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups
    #
    # @option params [Array<Types::Tag>] :tags
    #   Use to create one or more tags associated with the file system. Each
    #   tag is a user-defined key-value pair. Name your file system on
    #   creation by including a `"Key":"Name","Value":"\{value\}"` key-value
    #   pair. Each key must be unique. For more information, see [Tagging
    #   Amazon Web Services resources][1] in the *Amazon Web Services General
    #   Reference Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::FileSystemDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FileSystemDescription#owner_id #owner_id} => String
    #   * {Types::FileSystemDescription#creation_token #creation_token} => String
    #   * {Types::FileSystemDescription#file_system_id #file_system_id} => String
    #   * {Types::FileSystemDescription#file_system_arn #file_system_arn} => String
    #   * {Types::FileSystemDescription#creation_time #creation_time} => Time
    #   * {Types::FileSystemDescription#life_cycle_state #life_cycle_state} => String
    #   * {Types::FileSystemDescription#name #name} => String
    #   * {Types::FileSystemDescription#number_of_mount_targets #number_of_mount_targets} => Integer
    #   * {Types::FileSystemDescription#size_in_bytes #size_in_bytes} => Types::FileSystemSize
    #   * {Types::FileSystemDescription#performance_mode #performance_mode} => String
    #   * {Types::FileSystemDescription#encrypted #encrypted} => Boolean
    #   * {Types::FileSystemDescription#kms_key_id #kms_key_id} => String
    #   * {Types::FileSystemDescription#throughput_mode #throughput_mode} => String
    #   * {Types::FileSystemDescription#provisioned_throughput_in_mibps #provisioned_throughput_in_mibps} => Float
    #   * {Types::FileSystemDescription#availability_zone_name #availability_zone_name} => String
    #   * {Types::FileSystemDescription#availability_zone_id #availability_zone_id} => String
    #   * {Types::FileSystemDescription#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: To create a new file system
    #
    #   # This operation creates a new, encrypted file system with automatic backups enabled, and the default generalpurpose
    #   # performance mode.
    #
    #   resp = client.create_file_system({
    #     backup: true, 
    #     creation_token: "tokenstring", 
    #     encrypted: true, 
    #     performance_mode: "generalPurpose", 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     creation_time: Time.parse("1481841524.0"), 
    #     creation_token: "tokenstring", 
    #     encrypted: true, 
    #     file_system_id: "fs-01234567", 
    #     life_cycle_state: "creating", 
    #     number_of_mount_targets: 0, 
    #     owner_id: "012345678912", 
    #     performance_mode: "generalPurpose", 
    #     size_in_bytes: {
    #       value: 0, 
    #     }, 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system({
    #     creation_token: "CreationToken", # required
    #     performance_mode: "generalPurpose", # accepts generalPurpose, maxIO
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId",
    #     throughput_mode: "bursting", # accepts bursting, provisioned, elastic
    #     provisioned_throughput_in_mibps: 1.0,
    #     availability_zone_name: "AvailabilityZoneName",
    #     backup: false,
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
    #   resp.owner_id #=> String
    #   resp.creation_token #=> String
    #   resp.file_system_id #=> String
    #   resp.file_system_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted", "error"
    #   resp.name #=> String
    #   resp.number_of_mount_targets #=> Integer
    #   resp.size_in_bytes.value #=> Integer
    #   resp.size_in_bytes.timestamp #=> Time
    #   resp.size_in_bytes.value_in_ia #=> Integer
    #   resp.size_in_bytes.value_in_standard #=> Integer
    #   resp.performance_mode #=> String, one of "generalPurpose", "maxIO"
    #   resp.encrypted #=> Boolean
    #   resp.kms_key_id #=> String
    #   resp.throughput_mode #=> String, one of "bursting", "provisioned", "elastic"
    #   resp.provisioned_throughput_in_mibps #=> Float
    #   resp.availability_zone_name #=> String
    #   resp.availability_zone_id #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateFileSystem AWS API Documentation
    #
    # @overload create_file_system(params = {})
    # @param [Hash] params ({})
    def create_file_system(params = {}, options = {})
      req = build_request(:create_file_system, params)
      req.send_request(options)
    end

    # Creates a mount target for a file system. You can then mount the file
    # system on EC2 instances by using the mount target.
    #
    # You can create one mount target in each Availability Zone in your VPC.
    # All EC2 instances in a VPC within a given Availability Zone share a
    # single mount target for a given file system. If you have multiple
    # subnets in an Availability Zone, you create a mount target in one of
    # the subnets. EC2 instances do not need to be in the same subnet as the
    # mount target in order to access their file system.
    #
    # You can create only one mount target for an EFS file system using One
    # Zone storage classes. You must create that mount target in the same
    # Availability Zone in which the file system is located. Use the
    # `AvailabilityZoneName` and `AvailabiltyZoneId` properties in the
    # DescribeFileSystems response object to get this information. Use the
    # `subnetId` associated with the file system's Availability Zone when
    # creating the mount target.
    #
    # For more information, see [Amazon EFS: How it Works][1].
    #
    # To create a mount target for a file system, the file system's
    # lifecycle state must be `available`. For more information, see
    # DescribeFileSystems.
    #
    # In the request, provide the following:
    #
    # * The file system ID for which you are creating the mount target.
    #
    # * A subnet ID, which determines the following:
    #
    #   * The VPC in which Amazon EFS creates the mount target
    #
    #   * The Availability Zone in which Amazon EFS creates the mount target
    #
    #   * The IP address range from which Amazon EFS selects the IP address
    #     of the mount target (if you don't specify an IP address in the
    #     request)
    #
    # After creating the mount target, Amazon EFS returns a response that
    # includes, a `MountTargetId` and an `IpAddress`. You use this IP
    # address when mounting the file system in an EC2 instance. You can also
    # use the mount target's DNS name when mounting the file system. The
    # EC2 instance on which you mount the file system by using the mount
    # target can resolve the mount target's DNS name to its IP address. For
    # more information, see [How it Works: Implementation Overview][2].
    #
    # Note that you can create mount targets for a file system in only one
    # VPC, and there can be only one mount target per Availability Zone.
    # That is, if the file system already has one or more mount targets
    # created for it, the subnet specified in the request to add another
    # mount target must meet the following requirements:
    #
    # * Must belong to the same VPC as the subnets of the existing mount
    #   targets
    #
    # * Must not be in the same Availability Zone as any of the subnets of
    #   the existing mount targets
    #
    # If the request satisfies the requirements, Amazon EFS does the
    # following:
    #
    # * Creates a new mount target in the specified subnet.
    #
    # * Also creates a new network interface in the subnet as follows:
    #
    #   * If the request provides an `IpAddress`, Amazon EFS assigns that IP
    #     address to the network interface. Otherwise, Amazon EFS assigns a
    #     free address in the subnet (in the same way that the Amazon EC2
    #     `CreateNetworkInterface` call does when a request does not specify
    #     a primary private IP address).
    #
    #   * If the request provides `SecurityGroups`, this network interface
    #     is associated with those security groups. Otherwise, it belongs to
    #     the default security group for the subnet's VPC.
    #
    #   * Assigns the description `Mount target fsmt-id for file system
    #     fs-id ` where ` fsmt-id ` is the mount target ID, and ` fs-id ` is
    #     the `FileSystemId`.
    #
    #   * Sets the `requesterManaged` property of the network interface to
    #     `true`, and the `requesterId` value to `EFS`.
    #
    #   Each Amazon EFS mount target has one corresponding requester-managed
    #   EC2 network interface. After the network interface is created,
    #   Amazon EFS sets the `NetworkInterfaceId` field in the mount
    #   target's description to the network interface ID, and the
    #   `IpAddress` field to its address. If network interface creation
    #   fails, the entire `CreateMountTarget` operation fails.
    #
    # <note markdown="1"> The `CreateMountTarget` call returns only after creating the network
    # interface, but while the mount target state is still `creating`, you
    # can check the mount target creation status by calling the
    # DescribeMountTargets operation, which among other things returns the
    # mount target state.
    #
    #  </note>
    #
    # We recommend that you create a mount target in each of the
    # Availability Zones. There are cost considerations for using a file
    # system in an Availability Zone through a mount target created in
    # another Availability Zone. For more information, see [Amazon EFS][3].
    # In addition, by always using a mount target local to the instance's
    # Availability Zone, you eliminate a partial failure scenario. If the
    # Availability Zone in which your mount target is created goes down,
    # then you can't access your file system through that mount target.
    #
    # This operation requires permissions for the following action on the
    # file system:
    #
    # * `elasticfilesystem:CreateMountTarget`
    #
    # ^
    #
    # This operation also requires permissions for the following Amazon EC2
    # actions:
    #
    # * `ec2:DescribeSubnets`
    #
    # * `ec2:DescribeNetworkInterfaces`
    #
    # * `ec2:CreateNetworkInterface`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html
    # [2]: https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation
    # [3]: http://aws.amazon.com/efs/
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system for which to create the mount target.
    #
    # @option params [required, String] :subnet_id
    #   The ID of the subnet to add the mount target in. For file systems that
    #   use One Zone storage classes, use the subnet that is associated with
    #   the file system's Availability Zone.
    #
    # @option params [String] :ip_address
    #   Valid IPv4 address within the address range of the specified subnet.
    #
    # @option params [Array<String>] :security_groups
    #   Up to five VPC security group IDs, of the form `sg-xxxxxxxx`. These
    #   must be for the same VPC as subnet specified.
    #
    # @return [Types::MountTargetDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MountTargetDescription#owner_id #owner_id} => String
    #   * {Types::MountTargetDescription#mount_target_id #mount_target_id} => String
    #   * {Types::MountTargetDescription#file_system_id #file_system_id} => String
    #   * {Types::MountTargetDescription#subnet_id #subnet_id} => String
    #   * {Types::MountTargetDescription#life_cycle_state #life_cycle_state} => String
    #   * {Types::MountTargetDescription#ip_address #ip_address} => String
    #   * {Types::MountTargetDescription#network_interface_id #network_interface_id} => String
    #   * {Types::MountTargetDescription#availability_zone_id #availability_zone_id} => String
    #   * {Types::MountTargetDescription#availability_zone_name #availability_zone_name} => String
    #   * {Types::MountTargetDescription#vpc_id #vpc_id} => String
    #
    #
    # @example Example: To create a new mount target
    #
    #   # This operation creates a new mount target for an EFS file system.
    #
    #   resp = client.create_mount_target({
    #     file_system_id: "fs-01234567", 
    #     subnet_id: "subnet-1234abcd", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system_id: "fs-01234567", 
    #     ip_address: "192.0.0.2", 
    #     life_cycle_state: "creating", 
    #     mount_target_id: "fsmt-12340abc", 
    #     network_interface_id: "eni-cedf6789", 
    #     owner_id: "012345678912", 
    #     subnet_id: "subnet-1234abcd", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mount_target({
    #     file_system_id: "FileSystemId", # required
    #     subnet_id: "SubnetId", # required
    #     ip_address: "IpAddress",
    #     security_groups: ["SecurityGroup"],
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_id #=> String
    #   resp.mount_target_id #=> String
    #   resp.file_system_id #=> String
    #   resp.subnet_id #=> String
    #   resp.life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted", "error"
    #   resp.ip_address #=> String
    #   resp.network_interface_id #=> String
    #   resp.availability_zone_id #=> String
    #   resp.availability_zone_name #=> String
    #   resp.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateMountTarget AWS API Documentation
    #
    # @overload create_mount_target(params = {})
    # @param [Hash] params ({})
    def create_mount_target(params = {}, options = {})
      req = build_request(:create_mount_target, params)
      req.send_request(options)
    end

    # Creates a replication configuration that replicates an existing EFS
    # file system to a new, read-only file system. For more information, see
    # [Amazon EFS replication][1] in the *Amazon EFS User Guide*. The
    # replication configuration specifies the following:
    #
    # * **Source file system** - An existing EFS file system that you want
    #   replicated. The source file system cannot be a destination file
    #   system in an existing replication configuration.
    #
    # * **Destination file system configuration** - The configuration of the
    #   destination file system to which the source file system will be
    #   replicated. There can only be one destination file system in a
    #   replication configuration. The destination file system configuration
    #   consists of the following properties:
    #
    #   * **Amazon Web Services Region** - The Amazon Web Services Region in
    #     which the destination file system is created. Amazon EFS
    #     replication is available in all Amazon Web Services Regions that
    #     Amazon EFS is available in, except Africa (Cape Town), Asia
    #     Pacific (Hong Kong), Asia Pacific (Jakarta), Europe (Milan), and
    #     Middle East (Bahrain).
    #
    #   * **Availability Zone** - If you want the destination file system to
    #     use EFS One Zone availability and durability, you must specify the
    #     Availability Zone to create the file system in. For more
    #     information about EFS storage classes, see [ Amazon EFS storage
    #     classes][2] in the *Amazon EFS User Guide*.
    #
    #   * **Encryption** - All destination file systems are created with
    #     encryption at rest enabled. You can specify the Key Management
    #     Service (KMS) key that is used to encrypt the destination file
    #     system. If you don't specify a KMS key, your service-managed KMS
    #     key for Amazon EFS is used.
    #
    #     <note markdown="1"> After the file system is created, you cannot change the KMS key.
    #
    #      </note>
    #
    # The following properties are set by default:
    #
    # * **Performance mode** - The destination file system's performance
    #   mode matches that of the source file system, unless the destination
    #   file system uses EFS One Zone storage. In that case, the General
    #   Purpose performance mode is used. The performance mode cannot be
    #   changed.
    #
    # * **Throughput mode** - The destination file system's throughput mode
    #   matches that of the source file system. After the file system is
    #   created, you can modify the throughput mode.
    #
    # The following properties are turned off by default:
    #
    # * **Lifecycle management** - EFS lifecycle management and EFS
    #   Intelligent-Tiering are not enabled on the destination file system.
    #   After the destination file system is created, you can enable EFS
    #   lifecycle management and EFS Intelligent-Tiering.
    #
    # * **Automatic backups** - Automatic daily backups not enabled on the
    #   destination file system. After the file system is created, you can
    #   change this setting.
    #
    # For more information, see [Amazon EFS replication][1] in the *Amazon
    # EFS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html
    # [2]: https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html
    #
    # @option params [required, String] :source_file_system_id
    #   Specifies the Amazon EFS file system that you want to replicate. This
    #   file system cannot already be a source or destination file system in
    #   another replication configuration.
    #
    # @option params [required, Array<Types::DestinationToCreate>] :destinations
    #   An array of destination configuration objects. Only one destination
    #   configuration object is supported.
    #
    # @return [Types::ReplicationConfigurationDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationConfigurationDescription#source_file_system_id #source_file_system_id} => String
    #   * {Types::ReplicationConfigurationDescription#source_file_system_region #source_file_system_region} => String
    #   * {Types::ReplicationConfigurationDescription#source_file_system_arn #source_file_system_arn} => String
    #   * {Types::ReplicationConfigurationDescription#original_source_file_system_arn #original_source_file_system_arn} => String
    #   * {Types::ReplicationConfigurationDescription#creation_time #creation_time} => Time
    #   * {Types::ReplicationConfigurationDescription#destinations #destinations} => Array&lt;Types::Destination&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_configuration({
    #     source_file_system_id: "FileSystemId", # required
    #     destinations: [ # required
    #       {
    #         region: "RegionName",
    #         availability_zone_name: "AvailabilityZoneName",
    #         kms_key_id: "KmsKeyId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.source_file_system_id #=> String
    #   resp.source_file_system_region #=> String
    #   resp.source_file_system_arn #=> String
    #   resp.original_source_file_system_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.destinations #=> Array
    #   resp.destinations[0].status #=> String, one of "ENABLED", "ENABLING", "DELETING", "ERROR", "PAUSED", "PAUSING"
    #   resp.destinations[0].file_system_id #=> String
    #   resp.destinations[0].region #=> String
    #   resp.destinations[0].last_replicated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateReplicationConfiguration AWS API Documentation
    #
    # @overload create_replication_configuration(params = {})
    # @param [Hash] params ({})
    def create_replication_configuration(params = {}, options = {})
      req = build_request(:create_replication_configuration, params)
      req.send_request(options)
    end

    # <note markdown="1"> DEPRECATED - `CreateTags` is deprecated and not maintained. To create
    # tags for EFS resources, use the API action.
    #
    #  </note>
    #
    # Creates or overwrites tags associated with a file system. Each tag is
    # a key-value pair. If a tag key specified in the request already exists
    # on the file system, this operation overwrites its value with the value
    # provided in the request. If you add the `Name` tag to your file
    # system, Amazon EFS returns it in the response to the
    # DescribeFileSystems operation.
    #
    # This operation requires permission for the
    # `elasticfilesystem:CreateTags` action.
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system whose tags you want to modify (String). This
    #   operation modifies the tags only, not the file system.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of `Tag` objects to add. Each `Tag` object is a key-value
    #   pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a new tag
    #
    #   # This operation creates a new tag for an EFS file system.
    #
    #   resp = client.create_tags({
    #     file_system_id: "fs-01234567", 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags({
    #     file_system_id: "FileSystemId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateTags AWS API Documentation
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Deletes the specified access point. After deletion is complete, new
    # clients can no longer connect to the access points. Clients connected
    # to the access point at the time of deletion will continue to function
    # until they terminate their connection.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DeleteAccessPoint` action.
    #
    # @option params [required, String] :access_point_id
    #   The ID of the access point that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point({
    #     access_point_id: "AccessPointId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteAccessPoint AWS API Documentation
    #
    # @overload delete_access_point(params = {})
    # @param [Hash] params ({})
    def delete_access_point(params = {}, options = {})
      req = build_request(:delete_access_point, params)
      req.send_request(options)
    end

    # Deletes a file system, permanently severing access to its contents.
    # Upon return, the file system no longer exists and you can't access
    # any contents of the deleted file system.
    #
    # You need to manually delete mount targets attached to a file system
    # before you can delete an EFS file system. This step is performed for
    # you when you use the Amazon Web Services console to delete a file
    # system.
    #
    # <note markdown="1"> You cannot delete a file system that is part of an EFS Replication
    # configuration. You need to delete the replication configuration first.
    #
    #  </note>
    #
    # You can't delete a file system that is in use. That is, if the file
    # system has any mount targets, you must first delete them. For more
    # information, see DescribeMountTargets and DeleteMountTarget.
    #
    # <note markdown="1"> The `DeleteFileSystem` call returns while the file system state is
    # still `deleting`. You can check the file system deletion status by
    # calling the DescribeFileSystems operation, which returns a list of
    # file systems in your account. If you pass file system ID or creation
    # token for the deleted file system, the DescribeFileSystems returns a
    # `404 FileSystemNotFound` error.
    #
    #  </note>
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DeleteFileSystem` action.
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a file system
    #
    #   # This operation deletes an EFS file system.
    #
    #   resp = client.delete_file_system({
    #     file_system_id: "fs-01234567", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteFileSystem AWS API Documentation
    #
    # @overload delete_file_system(params = {})
    # @param [Hash] params ({})
    def delete_file_system(params = {}, options = {})
      req = build_request(:delete_file_system, params)
      req.send_request(options)
    end

    # Deletes the `FileSystemPolicy` for the specified file system. The
    # default `FileSystemPolicy` goes into effect once the existing policy
    # is deleted. For more information about the default file system policy,
    # see [Using Resource-based Policies with EFS][1].
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DeleteFileSystemPolicy` action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/res-based-policies-efs.html
    #
    # @option params [required, String] :file_system_id
    #   Specifies the EFS file system for which to delete the
    #   `FileSystemPolicy`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system_policy({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteFileSystemPolicy AWS API Documentation
    #
    # @overload delete_file_system_policy(params = {})
    # @param [Hash] params ({})
    def delete_file_system_policy(params = {}, options = {})
      req = build_request(:delete_file_system_policy, params)
      req.send_request(options)
    end

    # Deletes the specified mount target.
    #
    # This operation forcibly breaks any mounts of the file system by using
    # the mount target that is being deleted, which might disrupt instances
    # or applications using those mounts. To avoid applications getting cut
    # off abruptly, you might consider unmounting any mounts of the mount
    # target, if feasible. The operation also deletes the associated network
    # interface. Uncommitted writes might be lost, but breaking a mount
    # target using this operation does not corrupt the file system itself.
    # The file system you created remains. You can mount an EC2 instance in
    # your VPC by using another mount target.
    #
    # This operation requires permissions for the following action on the
    # file system:
    #
    # * `elasticfilesystem:DeleteMountTarget`
    #
    # ^
    #
    # <note markdown="1"> The `DeleteMountTarget` call returns while the mount target state is
    # still `deleting`. You can check the mount target deletion by calling
    # the DescribeMountTargets operation, which returns a list of mount
    # target descriptions for the given file system.
    #
    #  </note>
    #
    # The operation also requires permissions for the following Amazon EC2
    # action on the mount target's network interface:
    #
    # * `ec2:DeleteNetworkInterface`
    #
    # ^
    #
    # @option params [required, String] :mount_target_id
    #   The ID of the mount target to delete (String).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a mount target
    #
    #   # This operation deletes a mount target.
    #
    #   resp = client.delete_mount_target({
    #     mount_target_id: "fsmt-12340abc", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mount_target({
    #     mount_target_id: "MountTargetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteMountTarget AWS API Documentation
    #
    # @overload delete_mount_target(params = {})
    # @param [Hash] params ({})
    def delete_mount_target(params = {}, options = {})
      req = build_request(:delete_mount_target, params)
      req.send_request(options)
    end

    # Deletes an existing replication configuration. To delete a replication
    # configuration, you must make the request from the Amazon Web Services
    # Region in which the destination file system is located. Deleting a
    # replication configuration ends the replication process. After a
    # replication configuration is deleted, the destination file system is
    # no longer read-only. You can write to the destination file system
    # after its status becomes `Writeable`.
    #
    # @option params [required, String] :source_file_system_id
    #   The ID of the source file system in the replication configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_configuration({
    #     source_file_system_id: "FileSystemId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteReplicationConfiguration AWS API Documentation
    #
    # @overload delete_replication_configuration(params = {})
    # @param [Hash] params ({})
    def delete_replication_configuration(params = {}, options = {})
      req = build_request(:delete_replication_configuration, params)
      req.send_request(options)
    end

    # <note markdown="1"> DEPRECATED - `DeleteTags` is deprecated and not maintained. To remove
    # tags from EFS resources, use the API action.
    #
    #  </note>
    #
    # Deletes the specified tags from a file system. If the `DeleteTags`
    # request includes a tag key that doesn't exist, Amazon EFS ignores it
    # and doesn't cause an error. For more information about tags and
    # related restrictions, see [Tag restrictions][1] in the *Billing and
    # Cost Management User Guide*.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DeleteTags` action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system whose tags you want to delete (String).
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete tags for an EFS file system
    #
    #   # This operation deletes tags for an EFS file system.
    #
    #   resp = client.delete_tags({
    #     file_system_id: "fs-01234567", 
    #     tag_keys: [
    #       "Name", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     file_system_id: "FileSystemId", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Returns the description of a specific Amazon EFS access point if the
    # `AccessPointId` is provided. If you provide an EFS `FileSystemId`, it
    # returns descriptions of all access points for that file system. You
    # can provide either an `AccessPointId` or a `FileSystemId` in the
    # request, but not both.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeAccessPoints` action.
    #
    # @option params [Integer] :max_results
    #   (Optional) When retrieving all access points for a file system, you
    #   can optionally specify the `MaxItems` parameter to limit the number of
    #   objects returned in a response. The default value is 100.
    #
    # @option params [String] :next_token
    #   `NextToken` is present if the response is paginated. You can use
    #   `NextMarker` in the subsequent request to fetch the next page of
    #   access point descriptions.
    #
    # @option params [String] :access_point_id
    #   (Optional) Specifies an EFS access point to describe in the response;
    #   mutually exclusive with `FileSystemId`.
    #
    # @option params [String] :file_system_id
    #   (Optional) If you provide a `FileSystemId`, EFS returns all access
    #   points for that file system; mutually exclusive with `AccessPointId`.
    #
    # @return [Types::DescribeAccessPointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccessPointsResponse#access_points #access_points} => Array&lt;Types::AccessPointDescription&gt;
    #   * {Types::DescribeAccessPointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_access_points({
    #     max_results: 1,
    #     next_token: "Token",
    #     access_point_id: "AccessPointId",
    #     file_system_id: "FileSystemId",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_points #=> Array
    #   resp.access_points[0].client_token #=> String
    #   resp.access_points[0].name #=> String
    #   resp.access_points[0].tags #=> Array
    #   resp.access_points[0].tags[0].key #=> String
    #   resp.access_points[0].tags[0].value #=> String
    #   resp.access_points[0].access_point_id #=> String
    #   resp.access_points[0].access_point_arn #=> String
    #   resp.access_points[0].file_system_id #=> String
    #   resp.access_points[0].posix_user.uid #=> Integer
    #   resp.access_points[0].posix_user.gid #=> Integer
    #   resp.access_points[0].posix_user.secondary_gids #=> Array
    #   resp.access_points[0].posix_user.secondary_gids[0] #=> Integer
    #   resp.access_points[0].root_directory.path #=> String
    #   resp.access_points[0].root_directory.creation_info.owner_uid #=> Integer
    #   resp.access_points[0].root_directory.creation_info.owner_gid #=> Integer
    #   resp.access_points[0].root_directory.creation_info.permissions #=> String
    #   resp.access_points[0].owner_id #=> String
    #   resp.access_points[0].life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted", "error"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeAccessPoints AWS API Documentation
    #
    # @overload describe_access_points(params = {})
    # @param [Hash] params ({})
    def describe_access_points(params = {}, options = {})
      req = build_request(:describe_access_points, params)
      req.send_request(options)
    end

    # Returns the account preferences settings for the Amazon Web Services
    # account associated with the user making the request, in the current
    # Amazon Web Services Region. For more information, see [Managing Amazon
    # EFS resource IDs](efs/latest/ug/manage-efs-resource-ids.html).
    #
    # @option params [String] :next_token
    #   (Optional) You can use `NextToken` in a subsequent request to fetch
    #   the next page of Amazon Web Services account preferences if the
    #   response payload was paginated.
    #
    # @option params [Integer] :max_results
    #   (Optional) When retrieving account preferences, you can optionally
    #   specify the `MaxItems` parameter to limit the number of objects
    #   returned in a response. The default value is 100.
    #
    # @return [Types::DescribeAccountPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountPreferencesResponse#resource_id_preference #resource_id_preference} => Types::ResourceIdPreference
    #   * {Types::DescribeAccountPreferencesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_preferences({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id_preference.resource_id_type #=> String, one of "LONG_ID", "SHORT_ID"
    #   resp.resource_id_preference.resources #=> Array
    #   resp.resource_id_preference.resources[0] #=> String, one of "FILE_SYSTEM", "MOUNT_TARGET"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeAccountPreferences AWS API Documentation
    #
    # @overload describe_account_preferences(params = {})
    # @param [Hash] params ({})
    def describe_account_preferences(params = {}, options = {})
      req = build_request(:describe_account_preferences, params)
      req.send_request(options)
    end

    # Returns the backup policy for the specified EFS file system.
    #
    # @option params [required, String] :file_system_id
    #   Specifies which EFS file system to retrieve the `BackupPolicy` for.
    #
    # @return [Types::BackupPolicyDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BackupPolicyDescription#backup_policy #backup_policy} => Types::BackupPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backup_policy({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_policy.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeBackupPolicy AWS API Documentation
    #
    # @overload describe_backup_policy(params = {})
    # @param [Hash] params ({})
    def describe_backup_policy(params = {}, options = {})
      req = build_request(:describe_backup_policy, params)
      req.send_request(options)
    end

    # Returns the `FileSystemPolicy` for the specified EFS file system.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeFileSystemPolicy` action.
    #
    # @option params [required, String] :file_system_id
    #   Specifies which EFS file system to retrieve the `FileSystemPolicy`
    #   for.
    #
    # @return [Types::FileSystemPolicyDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FileSystemPolicyDescription#file_system_id #file_system_id} => String
    #   * {Types::FileSystemPolicyDescription#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_system_policy({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeFileSystemPolicy AWS API Documentation
    #
    # @overload describe_file_system_policy(params = {})
    # @param [Hash] params ({})
    def describe_file_system_policy(params = {}, options = {})
      req = build_request(:describe_file_system_policy, params)
      req.send_request(options)
    end

    # Returns the description of a specific Amazon EFS file system if either
    # the file system `CreationToken` or the `FileSystemId` is provided.
    # Otherwise, it returns descriptions of all file systems owned by the
    # caller's Amazon Web Services account in the Amazon Web Services
    # Region of the endpoint that you're calling.
    #
    # When retrieving all file system descriptions, you can optionally
    # specify the `MaxItems` parameter to limit the number of descriptions
    # in a response. This number is automatically set to 100. If more file
    # system descriptions remain, Amazon EFS returns a `NextMarker`, an
    # opaque token, in the response. In this case, you should send a
    # subsequent request with the `Marker` request parameter set to the
    # value of `NextMarker`.
    #
    # To retrieve a list of your file system descriptions, this operation is
    # used in an iterative process, where `DescribeFileSystems` is called
    # first without the `Marker` and then the operation continues to call it
    # with the `Marker` parameter set to the value of the `NextMarker` from
    # the previous response until the response has no `NextMarker`.
    #
    # The order of file systems returned in the response of one
    # `DescribeFileSystems` call and the order of file systems returned
    # across the responses of a multi-call iteration is unspecified.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeFileSystems` action.
    #
    # @option params [Integer] :max_items
    #   (Optional) Specifies the maximum number of file systems to return in
    #   the response (integer). This number is automatically set to 100. The
    #   response is paginated at 100 per page if you have more than 100 file
    #   systems.
    #
    # @option params [String] :marker
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeFileSystems` operation (String). If present, specifies to
    #   continue the list from where the returning call had left off.
    #
    # @option params [String] :creation_token
    #   (Optional) Restricts the list to the file system with this creation
    #   token (String). You specify a creation token when you create an Amazon
    #   EFS file system.
    #
    # @option params [String] :file_system_id
    #   (Optional) ID of the file system whose description you want to
    #   retrieve (String).
    #
    # @return [Types::DescribeFileSystemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFileSystemsResponse#marker #marker} => String
    #   * {Types::DescribeFileSystemsResponse#file_systems #file_systems} => Array&lt;Types::FileSystemDescription&gt;
    #   * {Types::DescribeFileSystemsResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe an EFS file system
    #
    #   # This operation describes all of the EFS file systems in an account.
    #
    #   resp = client.describe_file_systems({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_systems: [
    #       {
    #         creation_time: Time.parse("1481841524.0"), 
    #         creation_token: "tokenstring", 
    #         file_system_id: "fs-01234567", 
    #         life_cycle_state: "available", 
    #         name: "MyFileSystem", 
    #         number_of_mount_targets: 1, 
    #         owner_id: "012345678912", 
    #         performance_mode: "generalPurpose", 
    #         size_in_bytes: {
    #           value: 6144, 
    #         }, 
    #         tags: [
    #           {
    #             key: "Name", 
    #             value: "MyFileSystem", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_systems({
    #     max_items: 1,
    #     marker: "Marker",
    #     creation_token: "CreationToken",
    #     file_system_id: "FileSystemId",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.file_systems #=> Array
    #   resp.file_systems[0].owner_id #=> String
    #   resp.file_systems[0].creation_token #=> String
    #   resp.file_systems[0].file_system_id #=> String
    #   resp.file_systems[0].file_system_arn #=> String
    #   resp.file_systems[0].creation_time #=> Time
    #   resp.file_systems[0].life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted", "error"
    #   resp.file_systems[0].name #=> String
    #   resp.file_systems[0].number_of_mount_targets #=> Integer
    #   resp.file_systems[0].size_in_bytes.value #=> Integer
    #   resp.file_systems[0].size_in_bytes.timestamp #=> Time
    #   resp.file_systems[0].size_in_bytes.value_in_ia #=> Integer
    #   resp.file_systems[0].size_in_bytes.value_in_standard #=> Integer
    #   resp.file_systems[0].performance_mode #=> String, one of "generalPurpose", "maxIO"
    #   resp.file_systems[0].encrypted #=> Boolean
    #   resp.file_systems[0].kms_key_id #=> String
    #   resp.file_systems[0].throughput_mode #=> String, one of "bursting", "provisioned", "elastic"
    #   resp.file_systems[0].provisioned_throughput_in_mibps #=> Float
    #   resp.file_systems[0].availability_zone_name #=> String
    #   resp.file_systems[0].availability_zone_id #=> String
    #   resp.file_systems[0].tags #=> Array
    #   resp.file_systems[0].tags[0].key #=> String
    #   resp.file_systems[0].tags[0].value #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeFileSystems AWS API Documentation
    #
    # @overload describe_file_systems(params = {})
    # @param [Hash] params ({})
    def describe_file_systems(params = {}, options = {})
      req = build_request(:describe_file_systems, params)
      req.send_request(options)
    end

    # Returns the current `LifecycleConfiguration` object for the specified
    # Amazon EFS file system. EFS lifecycle management uses the
    # `LifecycleConfiguration` object to identify which files to move to the
    # EFS Infrequent Access (IA) storage class. For a file system without a
    # `LifecycleConfiguration` object, the call returns an empty array in
    # the response.
    #
    # When EFS Intelligent-Tiering is enabled,
    # `TransitionToPrimaryStorageClass` has a value of `AFTER_1_ACCESS`.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeLifecycleConfiguration` operation.
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system whose `LifecycleConfiguration` object you
    #   want to retrieve (String).
    #
    # @return [Types::LifecycleConfigurationDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LifecycleConfigurationDescription#lifecycle_policies #lifecycle_policies} => Array&lt;Types::LifecyclePolicy&gt;
    #
    #
    # @example Example: To describe the lifecycle configuration for a file system
    #
    #   # This operation describes a file system's LifecycleConfiguration. EFS lifecycle management uses the
    #   # LifecycleConfiguration object to identify which files to move to the EFS Infrequent Access (IA) storage class. 
    #
    #   resp = client.describe_lifecycle_configuration({
    #     file_system_id: "fs-01234567", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_policies: [
    #       {
    #         transition_to_ia: "AFTER_30_DAYS", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_lifecycle_configuration({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policies #=> Array
    #   resp.lifecycle_policies[0].transition_to_ia #=> String, one of "AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS", "AFTER_1_DAY"
    #   resp.lifecycle_policies[0].transition_to_primary_storage_class #=> String, one of "AFTER_1_ACCESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeLifecycleConfiguration AWS API Documentation
    #
    # @overload describe_lifecycle_configuration(params = {})
    # @param [Hash] params ({})
    def describe_lifecycle_configuration(params = {}, options = {})
      req = build_request(:describe_lifecycle_configuration, params)
      req.send_request(options)
    end

    # Returns the security groups currently in effect for a mount target.
    # This operation requires that the network interface of the mount target
    # has been created and the lifecycle state of the mount target is not
    # `deleted`.
    #
    # This operation requires permissions for the following actions:
    #
    # * `elasticfilesystem:DescribeMountTargetSecurityGroups` action on the
    #   mount target's file system.
    #
    # * `ec2:DescribeNetworkInterfaceAttribute` action on the mount
    #   target's network interface.
    #
    # @option params [required, String] :mount_target_id
    #   The ID of the mount target whose security groups you want to retrieve.
    #
    # @return [Types::DescribeMountTargetSecurityGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMountTargetSecurityGroupsResponse#security_groups #security_groups} => Array&lt;String&gt;
    #
    #
    # @example Example: To describe the security groups for a mount target
    #
    #   # This operation describes all of the security groups for a file system's mount target.
    #
    #   resp = client.describe_mount_target_security_groups({
    #     mount_target_id: "fsmt-12340abc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_groups: [
    #       "sg-4567abcd", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mount_target_security_groups({
    #     mount_target_id: "MountTargetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargetSecurityGroups AWS API Documentation
    #
    # @overload describe_mount_target_security_groups(params = {})
    # @param [Hash] params ({})
    def describe_mount_target_security_groups(params = {}, options = {})
      req = build_request(:describe_mount_target_security_groups, params)
      req.send_request(options)
    end

    # Returns the descriptions of all the current mount targets, or a
    # specific mount target, for a file system. When requesting all of the
    # current mount targets, the order of mount targets returned in the
    # response is unspecified.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeMountTargets` action, on either the file
    # system ID that you specify in `FileSystemId`, or on the file system of
    # the mount target that you specify in `MountTargetId`.
    #
    # @option params [Integer] :max_items
    #   (Optional) Maximum number of mount targets to return in the response.
    #   Currently, this number is automatically set to 10, and other values
    #   are ignored. The response is paginated at 100 per page if you have
    #   more than 100 mount targets.
    #
    # @option params [String] :marker
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeMountTargets` operation (String). If present, it specifies to
    #   continue the list from where the previous returning call left off.
    #
    # @option params [String] :file_system_id
    #   (Optional) ID of the file system whose mount targets you want to list
    #   (String). It must be included in your request if an `AccessPointId` or
    #   `MountTargetId` is not included. Accepts either a file system ID or
    #   ARN as input.
    #
    # @option params [String] :mount_target_id
    #   (Optional) ID of the mount target that you want to have described
    #   (String). It must be included in your request if `FileSystemId` is not
    #   included. Accepts either a mount target ID or ARN as input.
    #
    # @option params [String] :access_point_id
    #   (Optional) The ID of the access point whose mount targets that you
    #   want to list. It must be included in your request if a `FileSystemId`
    #   or `MountTargetId` is not included in your request. Accepts either an
    #   access point ID or ARN as input.
    #
    # @return [Types::DescribeMountTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMountTargetsResponse#marker #marker} => String
    #   * {Types::DescribeMountTargetsResponse#mount_targets #mount_targets} => Array&lt;Types::MountTargetDescription&gt;
    #   * {Types::DescribeMountTargetsResponse#next_marker #next_marker} => String
    #
    #
    # @example Example: To describe the mount targets for a file system
    #
    #   # This operation describes all of a file system's mount targets.
    #
    #   resp = client.describe_mount_targets({
    #     file_system_id: "fs-01234567", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     mount_targets: [
    #       {
    #         file_system_id: "fs-01234567", 
    #         ip_address: "192.0.0.2", 
    #         life_cycle_state: "available", 
    #         mount_target_id: "fsmt-12340abc", 
    #         network_interface_id: "eni-cedf6789", 
    #         owner_id: "012345678912", 
    #         subnet_id: "subnet-1234abcd", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mount_targets({
    #     max_items: 1,
    #     marker: "Marker",
    #     file_system_id: "FileSystemId",
    #     mount_target_id: "MountTargetId",
    #     access_point_id: "AccessPointId",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.mount_targets #=> Array
    #   resp.mount_targets[0].owner_id #=> String
    #   resp.mount_targets[0].mount_target_id #=> String
    #   resp.mount_targets[0].file_system_id #=> String
    #   resp.mount_targets[0].subnet_id #=> String
    #   resp.mount_targets[0].life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted", "error"
    #   resp.mount_targets[0].ip_address #=> String
    #   resp.mount_targets[0].network_interface_id #=> String
    #   resp.mount_targets[0].availability_zone_id #=> String
    #   resp.mount_targets[0].availability_zone_name #=> String
    #   resp.mount_targets[0].vpc_id #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargets AWS API Documentation
    #
    # @overload describe_mount_targets(params = {})
    # @param [Hash] params ({})
    def describe_mount_targets(params = {}, options = {})
      req = build_request(:describe_mount_targets, params)
      req.send_request(options)
    end

    # Retrieves the replication configuration for a specific file system. If
    # a file system is not specified, all of the replication configurations
    # for the Amazon Web Services account in an Amazon Web Services Region
    # are retrieved.
    #
    # @option params [String] :file_system_id
    #   You can retrieve the replication configuration for a specific file
    #   system by providing its file system ID.
    #
    # @option params [String] :next_token
    #   `NextToken` is present if the response is paginated. You can use
    #   `NextToken` in a subsequent request to fetch the next page of output.
    #
    # @option params [Integer] :max_results
    #   (Optional) To limit the number of objects returned in a response, you
    #   can specify the `MaxItems` parameter. The default value is 100.
    #
    # @return [Types::DescribeReplicationConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationConfigurationsResponse#replications #replications} => Array&lt;Types::ReplicationConfigurationDescription&gt;
    #   * {Types::DescribeReplicationConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_configurations({
    #     file_system_id: "FileSystemId",
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.replications #=> Array
    #   resp.replications[0].source_file_system_id #=> String
    #   resp.replications[0].source_file_system_region #=> String
    #   resp.replications[0].source_file_system_arn #=> String
    #   resp.replications[0].original_source_file_system_arn #=> String
    #   resp.replications[0].creation_time #=> Time
    #   resp.replications[0].destinations #=> Array
    #   resp.replications[0].destinations[0].status #=> String, one of "ENABLED", "ENABLING", "DELETING", "ERROR", "PAUSED", "PAUSING"
    #   resp.replications[0].destinations[0].file_system_id #=> String
    #   resp.replications[0].destinations[0].region #=> String
    #   resp.replications[0].destinations[0].last_replicated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeReplicationConfigurations AWS API Documentation
    #
    # @overload describe_replication_configurations(params = {})
    # @param [Hash] params ({})
    def describe_replication_configurations(params = {}, options = {})
      req = build_request(:describe_replication_configurations, params)
      req.send_request(options)
    end

    # <note markdown="1"> DEPRECATED - The `DescribeTags` action is deprecated and not
    # maintained. To view tags associated with EFS resources, use the
    # `ListTagsForResource` API action.
    #
    #  </note>
    #
    # Returns the tags associated with a file system. The order of tags
    # returned in the response of one `DescribeTags` call and the order of
    # tags returned across the responses of a multiple-call iteration (when
    # using pagination) is unspecified.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeTags` action.
    #
    # @option params [Integer] :max_items
    #   (Optional) The maximum number of file system tags to return in the
    #   response. Currently, this number is automatically set to 100, and
    #   other values are ignored. The response is paginated at 100 per page if
    #   you have more than 100 tags.
    #
    # @option params [String] :marker
    #   (Optional) An opaque pagination token returned from a previous
    #   `DescribeTags` operation (String). If present, it specifies to
    #   continue the list from where the previous call left off.
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system whose tag set you want to retrieve.
    #
    # @return [Types::DescribeTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsResponse#marker #marker} => String
    #   * {Types::DescribeTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeTagsResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe the tags for a file system
    #
    #   # This operation describes all of a file system's tags.
    #
    #   resp = client.describe_tags({
    #     file_system_id: "fs-01234567", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     max_items: 1,
    #     marker: "Marker",
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Lists all tags for a top-level EFS resource. You must provide the ID
    # of the resource that you want to retrieve the tags for.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeAccessPoints` action.
    #
    # @option params [required, String] :resource_id
    #   Specifies the EFS resource you want to retrieve tags for. You can
    #   retrieve tags for EFS file systems and access points using this API
    #   endpoint.
    #
    # @option params [Integer] :max_results
    #   (Optional) Specifies the maximum number of tag objects to return in
    #   the response. The default value is 100.
    #
    # @option params [String] :next_token
    #   (Optional) You can use `NextToken` in a subsequent request to fetch
    #   the next page of access point descriptions if the response payload was
    #   paginated.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Modifies the set of security groups in effect for a mount target.
    #
    # When you create a mount target, Amazon EFS also creates a new network
    # interface. For more information, see CreateMountTarget. This operation
    # replaces the security groups in effect for the network interface
    # associated with a mount target, with the `SecurityGroups` provided in
    # the request. This operation requires that the network interface of the
    # mount target has been created and the lifecycle state of the mount
    # target is not `deleted`.
    #
    # The operation requires permissions for the following actions:
    #
    # * `elasticfilesystem:ModifyMountTargetSecurityGroups` action on the
    #   mount target's file system.
    #
    # * `ec2:ModifyNetworkInterfaceAttribute` action on the mount target's
    #   network interface.
    #
    # @option params [required, String] :mount_target_id
    #   The ID of the mount target whose security groups you want to modify.
    #
    # @option params [Array<String>] :security_groups
    #   An array of up to five VPC security group IDs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To modify the security groups associated with a mount target for a file system
    #
    #   # This operation modifies the security groups associated with a mount target for a file system.
    #
    #   resp = client.modify_mount_target_security_groups({
    #     mount_target_id: "fsmt-12340abc", 
    #     security_groups: [
    #       "sg-abcd1234", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_mount_target_security_groups({
    #     mount_target_id: "MountTargetId", # required
    #     security_groups: ["SecurityGroup"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ModifyMountTargetSecurityGroups AWS API Documentation
    #
    # @overload modify_mount_target_security_groups(params = {})
    # @param [Hash] params ({})
    def modify_mount_target_security_groups(params = {}, options = {})
      req = build_request(:modify_mount_target_security_groups, params)
      req.send_request(options)
    end

    # Use this operation to set the account preference in the current Amazon
    # Web Services Region to use long 17 character (63 bit) or short 8
    # character (32 bit) resource IDs for new EFS file system and mount
    # target resources. All existing resource IDs are not affected by any
    # changes you make. You can set the ID preference during the opt-in
    # period as EFS transitions to long resource IDs. For more information,
    # see [Managing Amazon EFS resource IDs][1].
    #
    # <note markdown="1"> Starting in October, 2021, you will receive an error if you try to set
    # the account preference to use the short 8 character format resource
    # ID. Contact Amazon Web Services support if you receive an error and
    # must use short IDs for file system and mount target resources.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/manage-efs-resource-ids.html
    #
    # @option params [required, String] :resource_id_type
    #   Specifies the EFS resource ID preference to set for the user's Amazon
    #   Web Services account, in the current Amazon Web Services Region,
    #   either `LONG_ID` (17 characters), or `SHORT_ID` (8 characters).
    #
    #   <note markdown="1"> Starting in October, 2021, you will receive an error when setting the
    #   account preference to `SHORT_ID`. Contact Amazon Web Services support
    #   if you receive an error and must use short IDs for file system and
    #   mount target resources.
    #
    #    </note>
    #
    # @return [Types::PutAccountPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAccountPreferencesResponse#resource_id_preference #resource_id_preference} => Types::ResourceIdPreference
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_preferences({
    #     resource_id_type: "LONG_ID", # required, accepts LONG_ID, SHORT_ID
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id_preference.resource_id_type #=> String, one of "LONG_ID", "SHORT_ID"
    #   resp.resource_id_preference.resources #=> Array
    #   resp.resource_id_preference.resources[0] #=> String, one of "FILE_SYSTEM", "MOUNT_TARGET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/PutAccountPreferences AWS API Documentation
    #
    # @overload put_account_preferences(params = {})
    # @param [Hash] params ({})
    def put_account_preferences(params = {}, options = {})
      req = build_request(:put_account_preferences, params)
      req.send_request(options)
    end

    # Updates the file system's backup policy. Use this action to start or
    # stop automatic backups of the file system.
    #
    # @option params [required, String] :file_system_id
    #   Specifies which EFS file system to update the backup policy for.
    #
    # @option params [required, Types::BackupPolicy] :backup_policy
    #   The backup policy included in the `PutBackupPolicy` request.
    #
    # @return [Types::BackupPolicyDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BackupPolicyDescription#backup_policy #backup_policy} => Types::BackupPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_backup_policy({
    #     file_system_id: "FileSystemId", # required
    #     backup_policy: { # required
    #       status: "ENABLED", # required, accepts ENABLED, ENABLING, DISABLED, DISABLING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_policy.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/PutBackupPolicy AWS API Documentation
    #
    # @overload put_backup_policy(params = {})
    # @param [Hash] params ({})
    def put_backup_policy(params = {}, options = {})
      req = build_request(:put_backup_policy, params)
      req.send_request(options)
    end

    # Applies an Amazon EFS `FileSystemPolicy` to an Amazon EFS file system.
    # A file system policy is an IAM resource-based policy and can contain
    # multiple policy statements. A file system always has exactly one file
    # system policy, which can be the default policy or an explicit policy
    # set or updated using this API operation. EFS file system policies have
    # a 20,000 character limit. When an explicit policy is set, it overrides
    # the default policy. For more information about the default file system
    # policy, see [Default EFS File System Policy][1].
    #
    # <note markdown="1"> EFS file system policies have a 20,000 character limit.
    #
    #  </note>
    #
    # This operation requires permissions for the
    # `elasticfilesystem:PutFileSystemPolicy` action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html#default-filesystempolicy
    #
    # @option params [required, String] :file_system_id
    #   The ID of the EFS file system that you want to create or update the
    #   `FileSystemPolicy` for.
    #
    # @option params [required, String] :policy
    #   The `FileSystemPolicy` that you're creating. Accepts a JSON formatted
    #   policy definition. EFS file system policies have a 20,000 character
    #   limit. To find out more about the elements that make up a file system
    #   policy, see [EFS Resource-based Policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies
    #
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   (Optional) A boolean that specifies whether or not to bypass the
    #   `FileSystemPolicy` lockout safety check. The lockout safety check
    #   determines whether the policy in the request will lock out, or
    #   prevent, the IAM principal that is making the request from making
    #   future `PutFileSystemPolicy` requests on this file system. Set
    #   `BypassPolicyLockoutSafetyCheck` to `True` only when you intend to
    #   prevent the IAM principal that is making the request from making
    #   subsequent `PutFileSystemPolicy` requests on this file system. The
    #   default value is `False`.
    #
    # @return [Types::FileSystemPolicyDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FileSystemPolicyDescription#file_system_id #file_system_id} => String
    #   * {Types::FileSystemPolicyDescription#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_file_system_policy({
    #     file_system_id: "FileSystemId", # required
    #     policy: "Policy", # required
    #     bypass_policy_lockout_safety_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/PutFileSystemPolicy AWS API Documentation
    #
    # @overload put_file_system_policy(params = {})
    # @param [Hash] params ({})
    def put_file_system_policy(params = {}, options = {})
      req = build_request(:put_file_system_policy, params)
      req.send_request(options)
    end

    # Use this action to manage EFS lifecycle management and EFS
    # Intelligent-Tiering. A `LifecycleConfiguration` consists of one or
    # more `LifecyclePolicy` objects that define the following:
    #
    # * **EFS Lifecycle management** - When Amazon EFS automatically
    #   transitions files in a file system into the lower-cost EFS
    #   Infrequent Access (IA) storage class.
    #
    #   To enable EFS Lifecycle management, set the value of
    #   `TransitionToIA` to one of the available options.
    #
    # * **EFS Intelligent-Tiering** - When Amazon EFS automatically
    #   transitions files from IA back into the file system's primary
    #   storage class (EFS Standard or EFS One Zone Standard).
    #
    #   To enable EFS Intelligent-Tiering, set the value of
    #   `TransitionToPrimaryStorageClass` to `AFTER_1_ACCESS`.
    #
    # For more information, see [EFS Lifecycle Management][1].
    #
    # Each Amazon EFS file system supports one lifecycle configuration,
    # which applies to all files in the file system. If a
    # `LifecycleConfiguration` object already exists for the specified file
    # system, a `PutLifecycleConfiguration` call modifies the existing
    # configuration. A `PutLifecycleConfiguration` call with an empty
    # `LifecyclePolicies` array in the request body deletes any existing
    # `LifecycleConfiguration` and turns off lifecycle management and EFS
    # Intelligent-Tiering for the file system.
    #
    # In the request, specify the following:
    #
    # * The ID for the file system for which you are enabling, disabling, or
    #   modifying lifecycle management and EFS Intelligent-Tiering.
    #
    # * A `LifecyclePolicies` array of `LifecyclePolicy` objects that define
    #   when files are moved into IA storage, and when they are moved back
    #   to Standard storage.
    #
    #   <note markdown="1"> Amazon EFS requires that each `LifecyclePolicy` object have only
    #   have a single transition, so the `LifecyclePolicies` array needs to
    #   be structured with separate `LifecyclePolicy` objects. See the
    #   example requests in the following section for more information.
    #
    #    </note>
    #
    # This operation requires permissions for the
    # `elasticfilesystem:PutLifecycleConfiguration` operation.
    #
    # To apply a `LifecycleConfiguration` object to an encrypted file
    # system, you need the same Key Management Service permissions as when
    # you created the encrypted file system.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/lifecycle-management-efs.html
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system for which you are creating the
    #   `LifecycleConfiguration` object (String).
    #
    # @option params [required, Array<Types::LifecyclePolicy>] :lifecycle_policies
    #   An array of `LifecyclePolicy` objects that define the file system's
    #   `LifecycleConfiguration` object. A `LifecycleConfiguration` object
    #   informs EFS lifecycle management and EFS Intelligent-Tiering of the
    #   following:
    #
    #   * When to move files in the file system from primary storage to the IA
    #     storage class.
    #
    #   * When to move files that are in IA storage to primary storage.
    #
    #   <note markdown="1"> When using the `put-lifecycle-configuration` CLI command or the
    #   `PutLifecycleConfiguration` API action, Amazon EFS requires that each
    #   `LifecyclePolicy` object have only a single transition. This means
    #   that in a request body, `LifecyclePolicies` must be structured as an
    #   array of `LifecyclePolicy` objects, one object for each transition,
    #   `TransitionToIA`, `TransitionToPrimaryStorageClass`. See the example
    #   requests in the following section for more information.
    #
    #    </note>
    #
    # @return [Types::LifecycleConfigurationDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LifecycleConfigurationDescription#lifecycle_policies #lifecycle_policies} => Array&lt;Types::LifecyclePolicy&gt;
    #
    #
    # @example Example: Creates a new lifecycleconfiguration object for a file system
    #
    #   # This operation enables lifecycle management on a file system by creating a new LifecycleConfiguration object. A
    #   # LifecycleConfiguration object defines when files in an Amazon EFS file system are automatically transitioned to the
    #   # lower-cost EFS Infrequent Access (IA) storage class. A LifecycleConfiguration applies to all files in a file system.
    #
    #   resp = client.put_lifecycle_configuration({
    #     file_system_id: "fs-01234567", 
    #     lifecycle_policies: [
    #       {
    #         transition_to_ia: "AFTER_30_DAYS", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_policies: [
    #       {
    #         transition_to_ia: "AFTER_30_DAYS", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_configuration({
    #     file_system_id: "FileSystemId", # required
    #     lifecycle_policies: [ # required
    #       {
    #         transition_to_ia: "AFTER_7_DAYS", # accepts AFTER_7_DAYS, AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, AFTER_90_DAYS, AFTER_1_DAY
    #         transition_to_primary_storage_class: "AFTER_1_ACCESS", # accepts AFTER_1_ACCESS
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policies #=> Array
    #   resp.lifecycle_policies[0].transition_to_ia #=> String, one of "AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS", "AFTER_1_DAY"
    #   resp.lifecycle_policies[0].transition_to_primary_storage_class #=> String, one of "AFTER_1_ACCESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/PutLifecycleConfiguration AWS API Documentation
    #
    # @overload put_lifecycle_configuration(params = {})
    # @param [Hash] params ({})
    def put_lifecycle_configuration(params = {}, options = {})
      req = build_request(:put_lifecycle_configuration, params)
      req.send_request(options)
    end

    # Creates a tag for an EFS resource. You can create tags for EFS file
    # systems and access points using this API operation.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:TagResource` action.
    #
    # @option params [required, String] :resource_id
    #   The ID specifying the EFS resource that you want to create a tag for.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of `Tag` objects to add. Each `Tag` object is a key-value
    #   pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an EFS resource. You can remove tags from EFS file
    # systems and access points using this API operation.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:UntagResource` action.
    #
    # @option params [required, String] :resource_id
    #   Specifies the EFS resource that you want to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the key-value tag pairs that you want to remove from the
    #   specified EFS resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the throughput mode or the amount of provisioned throughput of
    # an existing file system.
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system that you want to update.
    #
    # @option params [String] :throughput_mode
    #   (Optional) Updates the file system's throughput mode. If you're not
    #   updating your throughput mode, you don't need to provide this value
    #   in your request. If you are changing the `ThroughputMode` to
    #   `provisioned`, you must also set a value for
    #   `ProvisionedThroughputInMibps`.
    #
    # @option params [Float] :provisioned_throughput_in_mibps
    #   (Optional) Sets the amount of provisioned throughput, in MiB/s, for
    #   the file system. Valid values are 1-1024. If you are changing the
    #   throughput mode to provisioned, you must also provide the amount of
    #   provisioned throughput. Required if `ThroughputMode` is changed to
    #   `provisioned` on update.
    #
    # @return [Types::FileSystemDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FileSystemDescription#owner_id #owner_id} => String
    #   * {Types::FileSystemDescription#creation_token #creation_token} => String
    #   * {Types::FileSystemDescription#file_system_id #file_system_id} => String
    #   * {Types::FileSystemDescription#file_system_arn #file_system_arn} => String
    #   * {Types::FileSystemDescription#creation_time #creation_time} => Time
    #   * {Types::FileSystemDescription#life_cycle_state #life_cycle_state} => String
    #   * {Types::FileSystemDescription#name #name} => String
    #   * {Types::FileSystemDescription#number_of_mount_targets #number_of_mount_targets} => Integer
    #   * {Types::FileSystemDescription#size_in_bytes #size_in_bytes} => Types::FileSystemSize
    #   * {Types::FileSystemDescription#performance_mode #performance_mode} => String
    #   * {Types::FileSystemDescription#encrypted #encrypted} => Boolean
    #   * {Types::FileSystemDescription#kms_key_id #kms_key_id} => String
    #   * {Types::FileSystemDescription#throughput_mode #throughput_mode} => String
    #   * {Types::FileSystemDescription#provisioned_throughput_in_mibps #provisioned_throughput_in_mibps} => Float
    #   * {Types::FileSystemDescription#availability_zone_name #availability_zone_name} => String
    #   * {Types::FileSystemDescription#availability_zone_id #availability_zone_id} => String
    #   * {Types::FileSystemDescription#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_file_system({
    #     file_system_id: "FileSystemId", # required
    #     throughput_mode: "bursting", # accepts bursting, provisioned, elastic
    #     provisioned_throughput_in_mibps: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_id #=> String
    #   resp.creation_token #=> String
    #   resp.file_system_id #=> String
    #   resp.file_system_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted", "error"
    #   resp.name #=> String
    #   resp.number_of_mount_targets #=> Integer
    #   resp.size_in_bytes.value #=> Integer
    #   resp.size_in_bytes.timestamp #=> Time
    #   resp.size_in_bytes.value_in_ia #=> Integer
    #   resp.size_in_bytes.value_in_standard #=> Integer
    #   resp.performance_mode #=> String, one of "generalPurpose", "maxIO"
    #   resp.encrypted #=> Boolean
    #   resp.kms_key_id #=> String
    #   resp.throughput_mode #=> String, one of "bursting", "provisioned", "elastic"
    #   resp.provisioned_throughput_in_mibps #=> Float
    #   resp.availability_zone_name #=> String
    #   resp.availability_zone_id #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/UpdateFileSystem AWS API Documentation
    #
    # @overload update_file_system(params = {})
    # @param [Hash] params ({})
    def update_file_system(params = {}, options = {})
      req = build_request(:update_file_system, params)
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
      context[:gem_name] = 'aws-sdk-efs'
      context[:gem_version] = '1.65.0'
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
