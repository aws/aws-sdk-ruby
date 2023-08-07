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

Aws::Plugins::GlobalConfiguration.add_identifier(:fsx)

module Aws::FSx
  # An API client for FSx.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::FSx::Client.new(
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

    @identifier = :fsx

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
    add_plugin(Aws::FSx::Plugins::Endpoints)

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
    #   @option options [Aws::FSx::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::FSx::EndpointParameters`
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

    # Use this action to associate one or more Domain Name Server (DNS)
    # aliases with an existing Amazon FSx for Windows File Server file
    # system. A file system can have a maximum of 50 DNS aliases associated
    # with it at any one time. If you try to associate a DNS alias that is
    # already associated with the file system, FSx takes no action on that
    # alias in the request. For more information, see [Working with DNS
    # Aliases][1] and [Walkthrough 5: Using DNS aliases to access your file
    # system][2], including additional steps you must take to be able to
    # access your file system using a DNS alias.
    #
    # The system response shows the DNS aliases that Amazon FSx is
    # attempting to associate with the file system. Use the API operation to
    # monitor the status of the aliases Amazon FSx is associating with the
    # file system.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html
    # [2]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :file_system_id
    #   Specifies the file system with which you want to associate one or more
    #   DNS aliases.
    #
    # @option params [required, Array<String>] :aliases
    #   An array of one or more DNS alias names to associate with the file
    #   system. The alias name has to comply with the following formatting
    #   requirements:
    #
    #   * Formatted as a fully-qualified domain name (FQDN), <i>
    #     <code>hostname.domain</code> </i>, for example,
    #     `accounting.corp.example.com`.
    #
    #   * Can contain alphanumeric characters and the hyphen (-).
    #
    #   * Cannot start or end with a hyphen.
    #
    #   * Can start with a numeric.
    #
    #   For DNS alias names, Amazon FSx stores alphabetic characters as
    #   lowercase letters (a-z), regardless of how you specify them: as
    #   uppercase letters, lowercase letters, or the corresponding letters in
    #   escape codes.
    #
    # @return [Types::AssociateFileSystemAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateFileSystemAliasesResponse#aliases #aliases} => Array&lt;Types::Alias&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_file_system_aliases({
    #     client_request_token: "ClientRequestToken",
    #     file_system_id: "FileSystemId", # required
    #     aliases: ["AlternateDNSName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0].name #=> String
    #   resp.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/AssociateFileSystemAliases AWS API Documentation
    #
    # @overload associate_file_system_aliases(params = {})
    # @param [Hash] params ({})
    def associate_file_system_aliases(params = {}, options = {})
      req = build_request(:associate_file_system_aliases, params)
      req.send_request(options)
    end

    # Cancels an existing Amazon FSx for Lustre data repository task if that
    # task is in either the `PENDING` or `EXECUTING` state. When you cancel
    # a task, Amazon FSx does the following.
    #
    # * Any files that FSx has already exported are not reverted.
    #
    # * FSx continues to export any files that are "in-flight" when the
    #   cancel operation is received.
    #
    # * FSx does not export any files that have not yet been exported.
    #
    # @option params [required, String] :task_id
    #   Specifies the data repository task to cancel.
    #
    # @return [Types::CancelDataRepositoryTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelDataRepositoryTaskResponse#lifecycle #lifecycle} => String
    #   * {Types::CancelDataRepositoryTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_data_repository_task({
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle #=> String, one of "PENDING", "EXECUTING", "FAILED", "SUCCEEDED", "CANCELED", "CANCELING"
    #   resp.task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CancelDataRepositoryTask AWS API Documentation
    #
    # @overload cancel_data_repository_task(params = {})
    # @param [Hash] params ({})
    def cancel_data_repository_task(params = {}, options = {})
      req = build_request(:cancel_data_repository_task, params)
      req.send_request(options)
    end

    # Copies an existing backup within the same Amazon Web Services account
    # to another Amazon Web Services Region (cross-Region copy) or within
    # the same Amazon Web Services Region (in-Region copy). You can have up
    # to five backup copy requests in progress to a single destination
    # Region per account.
    #
    # You can use cross-Region backup copies for cross-Region disaster
    # recovery. You can periodically take backups and copy them to another
    # Region so that in the event of a disaster in the primary Region, you
    # can restore from backup and recover availability quickly in the other
    # Region. You can make cross-Region copies only within your Amazon Web
    # Services partition. A partition is a grouping of Regions. Amazon Web
    # Services currently has three partitions: `aws` (Standard Regions),
    # `aws-cn` (China Regions), and `aws-us-gov` (Amazon Web Services
    # GovCloud \[US\] Regions).
    #
    # You can also use backup copies to clone your file dataset to another
    # Region or within the same Region.
    #
    # You can use the `SourceRegion` parameter to specify the Amazon Web
    # Services Region from which the backup will be copied. For example, if
    # you make the call from the `us-west-1` Region and want to copy a
    # backup from the `us-east-2` Region, you specify `us-east-2` in the
    # `SourceRegion` parameter to make a cross-Region copy. If you don't
    # specify a Region, the backup copy is created in the same Region where
    # the request is sent from (in-Region copy).
    #
    # For more information about creating backup copies, see [ Copying
    # backups][1] in the *Amazon FSx for Windows User Guide*, [Copying
    # backups][2] in the *Amazon FSx for Lustre User Guide*, and [Copying
    # backups][3] in the *Amazon FSx for OpenZFS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#copy-backups
    # [2]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html#copy-backups
    # [3]: https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html#copy-backups
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :source_backup_id
    #   The ID of the source backup. Specifies the ID of the backup that's
    #   being copied.
    #
    # @option params [String] :source_region
    #   The source Amazon Web Services Region of the backup. Specifies the
    #   Amazon Web Services Region from which the backup is being copied. The
    #   source and destination Regions must be in the same Amazon Web Services
    #   partition. If you don't specify a Region, `SourceRegion` defaults to
    #   the Region where the request is sent from (in-Region copy).
    #
    # @option params [String] :kms_key_id
    #   Specifies the ID of the Key Management Service (KMS) key to use for
    #   encrypting data on Amazon FSx file systems, as follows:
    #
    #   * Amazon FSx for Lustre `PERSISTENT_1` and `PERSISTENT_2` deployment
    #     types only.
    #
    #     `SCRATCH_1` and `SCRATCH_2` types are encrypted using the Amazon FSx
    #     service KMS key for your account.
    #
    #   * Amazon FSx for NetApp ONTAP
    #
    #   * Amazon FSx for OpenZFS
    #
    #   * Amazon FSx for Windows File Server
    #
    #   If a `KmsKeyId` isn't specified, the Amazon FSx-managed KMS key for
    #   your account is used. For more information, see [Encrypt][1] in the
    #   *Key Management Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
    #
    # @option params [Boolean] :copy_tags
    #   A Boolean flag indicating whether tags from the source backup should
    #   be copied to the backup copy. This value defaults to `false`.
    #
    #   If you set `CopyTags` to `true` and the source backup has existing
    #   tags, you can use the `Tags` parameter to create new tags, provided
    #   that the sum of the source backup tags and the new tags doesn't
    #   exceed 50. Both sets of tags are merged. If there are tag conflicts
    #   (for example, two tags with the same key but different values), the
    #   tags created with the `Tags` parameter take precedence.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #
    # @return [Types::CopyBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyBackupResponse#backup #backup} => Types::Backup
    #
    #
    # @example Example: To copy a backup
    #
    #   # This operation copies an Amazon FSx backup.
    #
    #   resp = client.copy_backup({
    #     source_backup_id: "backup-03e3c82e0183b7b6b", 
    #     source_region: "us-east-2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     backup: {
    #       backup_id: "backup-0a3364eded1014b28", 
    #       creation_time: Time.parse(1617954808.068), 
    #       file_system: {
    #         file_system_id: "fs-0498eed5fe91001ec", 
    #         file_system_type: "LUSTRE", 
    #         lustre_configuration: {
    #           automatic_backup_retention_days: 0, 
    #           deployment_type: "PERSISTENT_1", 
    #           per_unit_storage_throughput: 50, 
    #           weekly_maintenance_start_time: "1:05:00", 
    #         }, 
    #         resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0f5179e395f597e66", 
    #         storage_capacity: 2400, 
    #         storage_type: "SSD", 
    #       }, 
    #       kms_key_id: "arn:aws:fsx:us-east-1:012345678912:key/d1234e22-543a-12b7-a98f-e12c2b54001a", 
    #       lifecycle: "COPYING", 
    #       owner_id: "123456789012", 
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:backup/backup-0a3364eded1014b28", 
    #       tags: [
    #         {
    #           key: "Name", 
    #           value: "MyBackup", 
    #         }, 
    #       ], 
    #       type: "USER_INITIATED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_backup({
    #     client_request_token: "ClientRequestToken",
    #     source_backup_id: "SourceBackupId", # required
    #     source_region: "Region",
    #     kms_key_id: "KmsKeyId",
    #     copy_tags: false,
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
    #   resp.backup.backup_id #=> String
    #   resp.backup.lifecycle #=> String, one of "AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"
    #   resp.backup.failure_details.message #=> String
    #   resp.backup.type #=> String, one of "AUTOMATIC", "USER_INITIATED", "AWS_BACKUP"
    #   resp.backup.progress_percent #=> Integer
    #   resp.backup.creation_time #=> Time
    #   resp.backup.kms_key_id #=> String
    #   resp.backup.resource_arn #=> String
    #   resp.backup.tags #=> Array
    #   resp.backup.tags[0].key #=> String
    #   resp.backup.tags[0].value #=> String
    #   resp.backup.file_system.owner_id #=> String
    #   resp.backup.file_system.creation_time #=> Time
    #   resp.backup.file_system.file_system_id #=> String
    #   resp.backup.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.backup.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.backup.file_system.failure_details.message #=> String
    #   resp.backup.file_system.storage_capacity #=> Integer
    #   resp.backup.file_system.storage_type #=> String, one of "SSD", "HDD"
    #   resp.backup.file_system.vpc_id #=> String
    #   resp.backup.file_system.subnet_ids #=> Array
    #   resp.backup.file_system.subnet_ids[0] #=> String
    #   resp.backup.file_system.network_interface_ids #=> Array
    #   resp.backup.file_system.network_interface_ids[0] #=> String
    #   resp.backup.file_system.dns_name #=> String
    #   resp.backup.file_system.kms_key_id #=> String
    #   resp.backup.file_system.resource_arn #=> String
    #   resp.backup.file_system.tags #=> Array
    #   resp.backup.file_system.tags[0].key #=> String
    #   resp.backup.file_system.tags[0].value #=> String
    #   resp.backup.file_system.windows_configuration.active_directory_id #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.backup.file_system.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backup.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.backup.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.backup.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.backup.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.backup.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.backup.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.backup.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.file_system.windows_configuration.aliases #=> Array
    #   resp.backup.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.backup.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.backup.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backup.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backup.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.backup.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.backup.file_system.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.backup.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.backup.file_system.lustre_configuration.mount_name #=> String
    #   resp.backup.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.file_system.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.backup.file_system.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.backup.file_system.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.backup.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.backup.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.backup.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.backup.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.backup.file_system.administrative_actions #=> Array
    #   resp.backup.file_system.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.backup.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.backup.file_system.administrative_actions[0].request_time #=> Time
    #   resp.backup.file_system.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.backup.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.backup.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backup.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.file_system.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.backup.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.backup.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.backup.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.backup.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.backup.file_system.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.backup.file_system.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.backup.file_system.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.backup.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backup.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backup.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.backup.file_system.ontap_configuration.route_table_ids #=> Array
    #   resp.backup.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.backup.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.backup.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.ontap_configuration.fsx_admin_password #=> String
    #   resp.backup.file_system.file_system_type_version #=> String
    #   resp.backup.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.backup.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.file_system.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backup.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.backup.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backup.file_system.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backup.file_system.open_zfs_configuration.root_volume_id #=> String
    #   resp.backup.directory_information.domain_name #=> String
    #   resp.backup.directory_information.active_directory_id #=> String
    #   resp.backup.directory_information.resource_arn #=> String
    #   resp.backup.owner_id #=> String
    #   resp.backup.source_backup_id #=> String
    #   resp.backup.source_backup_region #=> String
    #   resp.backup.resource_type #=> String, one of "FILE_SYSTEM", "VOLUME"
    #   resp.backup.volume.creation_time #=> Time
    #   resp.backup.volume.file_system_id #=> String
    #   resp.backup.volume.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.backup.volume.name #=> String
    #   resp.backup.volume.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.backup.volume.ontap_configuration.junction_path #=> String
    #   resp.backup.volume.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.backup.volume.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.backup.volume.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.backup.volume.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.backup.volume.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.backup.volume.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.backup.volume.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.backup.volume.ontap_configuration.uuid #=> String
    #   resp.backup.volume.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.backup.volume.ontap_configuration.snapshot_policy #=> String
    #   resp.backup.volume.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.backup.volume.resource_arn #=> String
    #   resp.backup.volume.tags #=> Array
    #   resp.backup.volume.tags[0].key #=> String
    #   resp.backup.volume.tags[0].value #=> String
    #   resp.backup.volume.volume_id #=> String
    #   resp.backup.volume.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.backup.volume.lifecycle_transition_reason.message #=> String
    #   resp.backup.volume.administrative_actions #=> Array
    #   resp.backup.volume.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.backup.volume.administrative_actions[0].progress_percent #=> Integer
    #   resp.backup.volume.administrative_actions[0].request_time #=> Time
    #   resp.backup.volume.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.backup.volume.administrative_actions[0].failure_details.message #=> String
    #   resp.backup.volume.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backup.volume.open_zfs_configuration.parent_volume_id #=> String
    #   resp.backup.volume.open_zfs_configuration.volume_path #=> String
    #   resp.backup.volume.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.backup.volume.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.backup.volume.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.backup.volume.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.backup.volume.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.backup.volume.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.backup.volume.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.backup.volume.open_zfs_configuration.read_only #=> Boolean
    #   resp.backup.volume.open_zfs_configuration.nfs_exports #=> Array
    #   resp.backup.volume.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.backup.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.backup.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.backup.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.backup.volume.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.backup.volume.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.backup.volume.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.backup.volume.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.backup.volume.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.backup.volume.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.backup.volume.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CopyBackup AWS API Documentation
    #
    # @overload copy_backup(params = {})
    # @param [Hash] params ({})
    def copy_backup(params = {}, options = {})
      req = build_request(:copy_backup, params)
      req.send_request(options)
    end

    # Creates a backup of an existing Amazon FSx for Windows File Server
    # file system, Amazon FSx for Lustre file system, Amazon FSx for NetApp
    # ONTAP volume, or Amazon FSx for OpenZFS file system. We recommend
    # creating regular backups so that you can restore a file system or
    # volume from a backup if an issue arises with the original file system
    # or volume.
    #
    # For Amazon FSx for Lustre file systems, you can create a backup only
    # for file systems that have the following configuration:
    #
    # * A Persistent deployment type
    #
    # * Are *not* linked to a data repository
    #
    # For more information about backups, see the following:
    #
    # * For Amazon FSx for Lustre, see [Working with FSx for Lustre
    #   backups][1].
    #
    # * For Amazon FSx for Windows, see [Working with FSx for Windows
    #   backups][2].
    #
    # * For Amazon FSx for NetApp ONTAP, see [Working with FSx for NetApp
    #   ONTAP backups][3].
    #
    # * For Amazon FSx for OpenZFS, see [Working with FSx for OpenZFS
    #   backups][4].
    #
    # If a backup with the specified client request token exists and the
    # parameters match, this operation returns the description of the
    # existing backup. If a backup with the specified client request token
    # exists and the parameters don't match, this operation returns
    # `IncompatibleParameterError`. If a backup with the specified client
    # request token doesn't exist, `CreateBackup` does the following:
    #
    # * Creates a new Amazon FSx backup with an assigned ID, and an initial
    #   lifecycle state of `CREATING`.
    #
    # * Returns the description of the backup.
    #
    # By using the idempotent operation, you can retry a `CreateBackup`
    # operation without the risk of creating an extra backup. This approach
    # can be useful when an initial call fails in a way that makes it
    # unclear whether a backup was created. If you use the same client
    # request token and the initial call created a backup, the operation
    # returns a successful result because all the parameters are the same.
    #
    # The `CreateBackup` operation returns while the backup's lifecycle
    # state is still `CREATING`. You can check the backup creation status by
    # calling the [DescribeBackups][5] operation, which returns the backup
    # state along with other information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html
    # [2]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html
    # [3]: https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/using-backups.html
    # [4]: https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html
    # [5]: https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeBackups.html
    #
    # @option params [String] :file_system_id
    #   The ID of the file system to back up.
    #
    # @option params [String] :client_request_token
    #   (Optional) A string of up to 63 ASCII characters that Amazon FSx uses
    #   to ensure idempotent creation. This string is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an Amazon
    #   Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   (Optional) The tags to apply to the backup at backup creation. The key
    #   value of the `Name` tag appears in the console as the backup name. If
    #   you have set `CopyTagsToBackups` to `true`, and you specify one or
    #   more tags using the `CreateBackup` operation, no existing file system
    #   tags are copied from the file system to the backup.
    #
    # @option params [String] :volume_id
    #   (Optional) The ID of the FSx for ONTAP volume to back up.
    #
    # @return [Types::CreateBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackupResponse#backup #backup} => Types::Backup
    #
    #
    # @example Example: To create a new backup
    #
    #   # This operation creates a new backup.
    #
    #   resp = client.create_backup({
    #     file_system_id: "fs-0498eed5fe91001ec", 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyBackup", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     backup: {
    #       backup_id: "backup-03e3c82e0183b7b6b", 
    #       creation_time: Time.parse("1481841524.0"), 
    #       file_system: {
    #         file_system_id: "fs-0498eed5fe91001ec", 
    #         owner_id: "012345678912", 
    #         storage_capacity: 300, 
    #         windows_configuration: {
    #           active_directory_id: "d-1234abcd12", 
    #           automatic_backup_retention_days: 30, 
    #           daily_automatic_backup_start_time: "05:00", 
    #           weekly_maintenance_start_time: "1:05:00", 
    #         }, 
    #       }, 
    #       lifecycle: "CREATING", 
    #       progress_percent: 0, 
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:backup/backup-03e3c82e0183b7b6b", 
    #       tags: [
    #         {
    #           key: "Name", 
    #           value: "MyBackup", 
    #         }, 
    #       ], 
    #       type: "USER_INITIATED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup({
    #     file_system_id: "FileSystemId",
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     volume_id: "VolumeId",
    #   })
    #
    # @example Response structure
    #
    #   resp.backup.backup_id #=> String
    #   resp.backup.lifecycle #=> String, one of "AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"
    #   resp.backup.failure_details.message #=> String
    #   resp.backup.type #=> String, one of "AUTOMATIC", "USER_INITIATED", "AWS_BACKUP"
    #   resp.backup.progress_percent #=> Integer
    #   resp.backup.creation_time #=> Time
    #   resp.backup.kms_key_id #=> String
    #   resp.backup.resource_arn #=> String
    #   resp.backup.tags #=> Array
    #   resp.backup.tags[0].key #=> String
    #   resp.backup.tags[0].value #=> String
    #   resp.backup.file_system.owner_id #=> String
    #   resp.backup.file_system.creation_time #=> Time
    #   resp.backup.file_system.file_system_id #=> String
    #   resp.backup.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.backup.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.backup.file_system.failure_details.message #=> String
    #   resp.backup.file_system.storage_capacity #=> Integer
    #   resp.backup.file_system.storage_type #=> String, one of "SSD", "HDD"
    #   resp.backup.file_system.vpc_id #=> String
    #   resp.backup.file_system.subnet_ids #=> Array
    #   resp.backup.file_system.subnet_ids[0] #=> String
    #   resp.backup.file_system.network_interface_ids #=> Array
    #   resp.backup.file_system.network_interface_ids[0] #=> String
    #   resp.backup.file_system.dns_name #=> String
    #   resp.backup.file_system.kms_key_id #=> String
    #   resp.backup.file_system.resource_arn #=> String
    #   resp.backup.file_system.tags #=> Array
    #   resp.backup.file_system.tags[0].key #=> String
    #   resp.backup.file_system.tags[0].value #=> String
    #   resp.backup.file_system.windows_configuration.active_directory_id #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.backup.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.backup.file_system.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backup.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.backup.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.backup.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.backup.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.backup.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.backup.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.backup.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.file_system.windows_configuration.aliases #=> Array
    #   resp.backup.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.backup.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.backup.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backup.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backup.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.backup.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.backup.file_system.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.backup.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.backup.file_system.lustre_configuration.mount_name #=> String
    #   resp.backup.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.file_system.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.backup.file_system.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.backup.file_system.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.backup.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.backup.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.backup.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.backup.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.backup.file_system.administrative_actions #=> Array
    #   resp.backup.file_system.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.backup.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.backup.file_system.administrative_actions[0].request_time #=> Time
    #   resp.backup.file_system.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.backup.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.backup.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.backup.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backup.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.file_system.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.backup.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.backup.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.backup.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.backup.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.backup.file_system.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.backup.file_system.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.backup.file_system.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.backup.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backup.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backup.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.backup.file_system.ontap_configuration.route_table_ids #=> Array
    #   resp.backup.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.backup.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.backup.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.ontap_configuration.fsx_admin_password #=> String
    #   resp.backup.file_system.file_system_type_version #=> String
    #   resp.backup.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.backup.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.file_system.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backup.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.backup.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backup.file_system.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backup.file_system.open_zfs_configuration.root_volume_id #=> String
    #   resp.backup.directory_information.domain_name #=> String
    #   resp.backup.directory_information.active_directory_id #=> String
    #   resp.backup.directory_information.resource_arn #=> String
    #   resp.backup.owner_id #=> String
    #   resp.backup.source_backup_id #=> String
    #   resp.backup.source_backup_region #=> String
    #   resp.backup.resource_type #=> String, one of "FILE_SYSTEM", "VOLUME"
    #   resp.backup.volume.creation_time #=> Time
    #   resp.backup.volume.file_system_id #=> String
    #   resp.backup.volume.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.backup.volume.name #=> String
    #   resp.backup.volume.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.backup.volume.ontap_configuration.junction_path #=> String
    #   resp.backup.volume.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.backup.volume.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.backup.volume.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.backup.volume.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.backup.volume.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.backup.volume.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.backup.volume.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.backup.volume.ontap_configuration.uuid #=> String
    #   resp.backup.volume.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.backup.volume.ontap_configuration.snapshot_policy #=> String
    #   resp.backup.volume.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.backup.volume.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.backup.volume.resource_arn #=> String
    #   resp.backup.volume.tags #=> Array
    #   resp.backup.volume.tags[0].key #=> String
    #   resp.backup.volume.tags[0].value #=> String
    #   resp.backup.volume.volume_id #=> String
    #   resp.backup.volume.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.backup.volume.lifecycle_transition_reason.message #=> String
    #   resp.backup.volume.administrative_actions #=> Array
    #   resp.backup.volume.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.backup.volume.administrative_actions[0].progress_percent #=> Integer
    #   resp.backup.volume.administrative_actions[0].request_time #=> Time
    #   resp.backup.volume.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backup.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.backup.volume.administrative_actions[0].failure_details.message #=> String
    #   resp.backup.volume.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.backup.volume.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backup.volume.open_zfs_configuration.parent_volume_id #=> String
    #   resp.backup.volume.open_zfs_configuration.volume_path #=> String
    #   resp.backup.volume.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.backup.volume.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.backup.volume.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.backup.volume.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.backup.volume.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.backup.volume.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.backup.volume.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.backup.volume.open_zfs_configuration.read_only #=> Boolean
    #   resp.backup.volume.open_zfs_configuration.nfs_exports #=> Array
    #   resp.backup.volume.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.backup.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.backup.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.backup.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.backup.volume.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.backup.volume.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.backup.volume.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.backup.volume.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.backup.volume.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.backup.volume.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.backup.volume.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateBackup AWS API Documentation
    #
    # @overload create_backup(params = {})
    # @param [Hash] params ({})
    def create_backup(params = {}, options = {})
      req = build_request(:create_backup, params)
      req.send_request(options)
    end

    # Creates an Amazon FSx for Lustre data repository association (DRA). A
    # data repository association is a link between a directory on the file
    # system and an Amazon S3 bucket or prefix. You can have a maximum of 8
    # data repository associations on a file system. Data repository
    # associations are supported on all FSx for Lustre 2.12 and newer file
    # systems, excluding `scratch_1` deployment type.
    #
    # Each data repository association must have a unique Amazon FSx file
    # system directory and a unique S3 bucket or prefix associated with it.
    # You can configure a data repository association for automatic import
    # only, for automatic export only, or for both. To learn more about
    # linking a data repository to your file system, see [Linking your file
    # system to an S3 bucket][1].
    #
    # <note markdown="1"> `CreateDataRepositoryAssociation` isn't supported on Amazon File
    # Cache resources. To create a DRA on Amazon File Cache, use the
    # `CreateFileCache` operation.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html
    #
    # @option params [required, String] :file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #
    # @option params [String] :file_system_path
    #   A path on the file system that points to a high-level directory (such
    #   as `/ns1/`) or subdirectory (such as `/ns1/subdir/`) that will be
    #   mapped 1-1 with `DataRepositoryPath`. The leading forward slash in the
    #   name is required. Two data repository associations cannot have
    #   overlapping file system paths. For example, if a data repository is
    #   associated with file system path `/ns1/`, then you cannot link another
    #   data repository with file system path `/ns1/ns2`.
    #
    #   This path specifies where in your file system files will be exported
    #   from or imported to. This file system directory can be linked to only
    #   one Amazon S3 bucket, and no other S3 bucket can be linked to the
    #   directory.
    #
    #   <note markdown="1"> If you specify only a forward slash (`/`) as the file system path, you
    #   can link only one data repository to the file system. You can only
    #   specify "/" as the file system path for the first data repository
    #   associated with a file system.
    #
    #    </note>
    #
    # @option params [required, String] :data_repository_path
    #   The path to the Amazon S3 data repository that will be linked to the
    #   file system. The path can be an S3 bucket or prefix in the format
    #   `s3://myBucket/myPrefix/`. This path specifies where in the S3 data
    #   repository files will be imported from or exported to.
    #
    # @option params [Boolean] :batch_import_meta_data_on_create
    #   Set to `true` to run an import data repository task to import metadata
    #   from the data repository to the file system after the data repository
    #   association is created. Default is `false`.
    #
    # @option params [Integer] :imported_file_chunk_size
    #   For files imported from a data repository, this value determines the
    #   stripe count and maximum amount of data per file (in MiB) stored on a
    #   single physical disk. The maximum number of disks that a single file
    #   can be striped across is limited by the total number of disks that
    #   make up the file system.
    #
    #   The default chunk size is 1,024 MiB (1 GiB) and can go as high as
    #   512,000 MiB (500 GiB). Amazon S3 objects have a maximum size of 5 TB.
    #
    # @option params [Types::S3DataRepositoryConfiguration] :s3
    #   The configuration for an Amazon S3 data repository linked to an Amazon
    #   FSx Lustre file system with a data repository association. The
    #   configuration defines which file events (new, changed, or deleted
    #   files or directories) are automatically imported from the linked data
    #   repository to the file system or automatically exported from the file
    #   system to the data repository.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #
    # @return [Types::CreateDataRepositoryAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataRepositoryAssociationResponse#association #association} => Types::DataRepositoryAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_repository_association({
    #     file_system_id: "FileSystemId", # required
    #     file_system_path: "Namespace",
    #     data_repository_path: "ArchivePath", # required
    #     batch_import_meta_data_on_create: false,
    #     imported_file_chunk_size: 1,
    #     s3: {
    #       auto_import_policy: {
    #         events: ["NEW"], # accepts NEW, CHANGED, DELETED
    #       },
    #       auto_export_policy: {
    #         events: ["NEW"], # accepts NEW, CHANGED, DELETED
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
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
    #   resp.association.association_id #=> String
    #   resp.association.resource_arn #=> String
    #   resp.association.file_system_id #=> String
    #   resp.association.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.association.failure_details.message #=> String
    #   resp.association.file_system_path #=> String
    #   resp.association.data_repository_path #=> String
    #   resp.association.batch_import_meta_data_on_create #=> Boolean
    #   resp.association.imported_file_chunk_size #=> Integer
    #   resp.association.s3.auto_import_policy.events #=> Array
    #   resp.association.s3.auto_import_policy.events[0] #=> String, one of "NEW", "CHANGED", "DELETED"
    #   resp.association.s3.auto_export_policy.events #=> Array
    #   resp.association.s3.auto_export_policy.events[0] #=> String, one of "NEW", "CHANGED", "DELETED"
    #   resp.association.tags #=> Array
    #   resp.association.tags[0].key #=> String
    #   resp.association.tags[0].value #=> String
    #   resp.association.creation_time #=> Time
    #   resp.association.file_cache_id #=> String
    #   resp.association.file_cache_path #=> String
    #   resp.association.data_repository_subdirectories #=> Array
    #   resp.association.data_repository_subdirectories[0] #=> String
    #   resp.association.nfs.version #=> String, one of "NFS3"
    #   resp.association.nfs.dns_ips #=> Array
    #   resp.association.nfs.dns_ips[0] #=> String
    #   resp.association.nfs.auto_export_policy.events #=> Array
    #   resp.association.nfs.auto_export_policy.events[0] #=> String, one of "NEW", "CHANGED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateDataRepositoryAssociation AWS API Documentation
    #
    # @overload create_data_repository_association(params = {})
    # @param [Hash] params ({})
    def create_data_repository_association(params = {}, options = {})
      req = build_request(:create_data_repository_association, params)
      req.send_request(options)
    end

    # Creates an Amazon FSx for Lustre data repository task. You use data
    # repository tasks to perform bulk operations between your Amazon FSx
    # file system and its linked data repositories. An example of a data
    # repository task is exporting any data and metadata changes, including
    # POSIX metadata, to files, directories, and symbolic links (symlinks)
    # from your FSx file system to a linked data repository. A
    # `CreateDataRepositoryTask` operation will fail if a data repository is
    # not linked to the FSx file system. To learn more about data repository
    # tasks, see [Data Repository Tasks][1]. To learn more about linking a
    # data repository to your file system, see [Linking your file system to
    # an S3 bucket][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html
    # [2]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html
    #
    # @option params [required, String] :type
    #   Specifies the type of data repository task to create.
    #
    # @option params [Array<String>] :paths
    #   A list of paths for the data repository task to use when the task is
    #   processed. If a path that you provide isn't valid, the task fails.
    #
    #   * For export tasks, the list contains paths on the Amazon FSx file
    #     system from which the files are exported to the Amazon S3 bucket.
    #     The default path is the file system root directory. The paths you
    #     provide need to be relative to the mount point of the file system.
    #     If the mount point is `/mnt/fsx` and `/mnt/fsx/path1` is a directory
    #     or file on the file system you want to export, then the path to
    #     provide is `path1`.
    #
    #   * For import tasks, the list contains paths in the Amazon S3 bucket
    #     from which POSIX metadata changes are imported to the Amazon FSx
    #     file system. The path can be an S3 bucket or prefix in the format
    #     `s3://myBucket/myPrefix` (where `myPrefix` is optional).
    #
    # @option params [required, String] :file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #
    # @option params [required, Types::CompletionReport] :report
    #   Defines whether or not Amazon FSx provides a CompletionReport once the
    #   task has completed. A CompletionReport provides a detailed report on
    #   the files that Amazon FSx processed that meet the criteria specified
    #   by the `Scope` parameter. For more information, see [Working with Task
    #   Completion Reports][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/task-completion-report.html
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #
    # @option params [Integer] :capacity_to_release
    #   Specifies the amount of data to release, in GiB, by an Amazon File
    #   Cache `AUTO_RELEASE_DATA` task that automatically releases files from
    #   the cache.
    #
    # @return [Types::CreateDataRepositoryTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataRepositoryTaskResponse#data_repository_task #data_repository_task} => Types::DataRepositoryTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_repository_task({
    #     type: "EXPORT_TO_REPOSITORY", # required, accepts EXPORT_TO_REPOSITORY, IMPORT_METADATA_FROM_REPOSITORY, RELEASE_DATA_FROM_FILESYSTEM, AUTO_RELEASE_DATA
    #     paths: ["DataRepositoryTaskPath"],
    #     file_system_id: "FileSystemId", # required
    #     report: { # required
    #       enabled: false, # required
    #       path: "ArchivePath",
    #       format: "REPORT_CSV_20191124", # accepts REPORT_CSV_20191124
    #       scope: "FAILED_FILES_ONLY", # accepts FAILED_FILES_ONLY
    #     },
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     capacity_to_release: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_repository_task.task_id #=> String
    #   resp.data_repository_task.lifecycle #=> String, one of "PENDING", "EXECUTING", "FAILED", "SUCCEEDED", "CANCELED", "CANCELING"
    #   resp.data_repository_task.type #=> String, one of "EXPORT_TO_REPOSITORY", "IMPORT_METADATA_FROM_REPOSITORY", "RELEASE_DATA_FROM_FILESYSTEM", "AUTO_RELEASE_DATA"
    #   resp.data_repository_task.creation_time #=> Time
    #   resp.data_repository_task.start_time #=> Time
    #   resp.data_repository_task.end_time #=> Time
    #   resp.data_repository_task.resource_arn #=> String
    #   resp.data_repository_task.tags #=> Array
    #   resp.data_repository_task.tags[0].key #=> String
    #   resp.data_repository_task.tags[0].value #=> String
    #   resp.data_repository_task.file_system_id #=> String
    #   resp.data_repository_task.paths #=> Array
    #   resp.data_repository_task.paths[0] #=> String
    #   resp.data_repository_task.failure_details.message #=> String
    #   resp.data_repository_task.status.total_count #=> Integer
    #   resp.data_repository_task.status.succeeded_count #=> Integer
    #   resp.data_repository_task.status.failed_count #=> Integer
    #   resp.data_repository_task.status.last_updated_time #=> Time
    #   resp.data_repository_task.status.released_capacity #=> Integer
    #   resp.data_repository_task.report.enabled #=> Boolean
    #   resp.data_repository_task.report.path #=> String
    #   resp.data_repository_task.report.format #=> String, one of "REPORT_CSV_20191124"
    #   resp.data_repository_task.report.scope #=> String, one of "FAILED_FILES_ONLY"
    #   resp.data_repository_task.capacity_to_release #=> Integer
    #   resp.data_repository_task.file_cache_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateDataRepositoryTask AWS API Documentation
    #
    # @overload create_data_repository_task(params = {})
    # @param [Hash] params ({})
    def create_data_repository_task(params = {}, options = {})
      req = build_request(:create_data_repository_task, params)
      req.send_request(options)
    end

    # Creates a new Amazon File Cache resource.
    #
    # You can use this operation with a client request token in the request
    # that Amazon File Cache uses to ensure idempotent creation. If a cache
    # with the specified client request token exists and the parameters
    # match, `CreateFileCache` returns the description of the existing
    # cache. If a cache with the specified client request token exists and
    # the parameters don't match, this call returns
    # `IncompatibleParameterError`. If a file cache with the specified
    # client request token doesn't exist, `CreateFileCache` does the
    # following:
    #
    # * Creates a new, empty Amazon File Cache resourcewith an assigned ID,
    #   and an initial lifecycle state of `CREATING`.
    #
    # * Returns the description of the cache in JSON format.
    #
    # <note markdown="1"> The `CreateFileCache` call returns while the cache's lifecycle state
    # is still `CREATING`. You can check the cache creation status by
    # calling the [DescribeFileCaches][1] operation, which returns the cache
    # state along with other information.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html
    #
    # @option params [String] :client_request_token
    #   An idempotency token for resource creation, in a string of up to 63
    #   ASCII characters. This token is automatically filled on your behalf
    #   when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   By using the idempotent operation, you can retry a `CreateFileCache`
    #   operation without the risk of creating an extra cache. This approach
    #   can be useful when an initial call fails in a way that makes it
    #   unclear whether a cache was created. Examples are if a transport level
    #   timeout occurred, or your connection was reset. If you use the same
    #   client request token and the initial call created a cache, the client
    #   receives success as long as the parameters are the same.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :file_cache_type
    #   The type of cache that you're creating, which must be `LUSTRE`.
    #
    # @option params [required, String] :file_cache_type_version
    #   Sets the Lustre version for the cache that you're creating, which
    #   must be `2.12`.
    #
    # @option params [required, Integer] :storage_capacity
    #   The storage capacity of the cache in gibibytes (GiB). Valid values are
    #   1200 GiB, 2400 GiB, and increments of 2400 GiB.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of subnet IDs that the cache will be accessible from. You can
    #   specify only one subnet ID in a call to the `CreateFileCache`
    #   operation.
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of IDs specifying the security groups to apply to all network
    #   interfaces created for Amazon File Cache access. This list isn't
    #   returned in later requests to describe the cache.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #
    # @option params [Boolean] :copy_tags_to_data_repository_associations
    #   A boolean flag indicating whether tags for the cache should be copied
    #   to data repository associations. This value defaults to false.
    #
    # @option params [String] :kms_key_id
    #   Specifies the ID of the Key Management Service (KMS) key to use for
    #   encrypting data on an Amazon File Cache. If a `KmsKeyId` isn't
    #   specified, the Amazon FSx-managed KMS key for your account is used.
    #   For more information, see [Encrypt][1] in the *Key Management Service
    #   API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
    #
    # @option params [Types::CreateFileCacheLustreConfiguration] :lustre_configuration
    #   The configuration for the Amazon File Cache resource being created.
    #
    # @option params [Array<Types::FileCacheDataRepositoryAssociation>] :data_repository_associations
    #   A list of up to 8 configurations for data repository associations
    #   (DRAs) to be created during the cache creation. The DRAs link the
    #   cache to either an Amazon S3 data repository or a Network File System
    #   (NFS) data repository that supports the NFSv3 protocol.
    #
    #   The DRA configurations must meet the following requirements:
    #
    #   * All configurations on the list must be of the same data repository
    #     type, either all S3 or all NFS. A cache can't link to different
    #     data repository types at the same time.
    #
    #   * An NFS DRA must link to an NFS file system that supports the NFSv3
    #     protocol.
    #
    #   DRA automatic import and automatic export is not supported.
    #
    # @return [Types::CreateFileCacheResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFileCacheResponse#file_cache #file_cache} => Types::FileCacheCreating
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_cache({
    #     client_request_token: "ClientRequestToken",
    #     file_cache_type: "LUSTRE", # required, accepts LUSTRE
    #     file_cache_type_version: "FileSystemTypeVersion", # required
    #     storage_capacity: 1, # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     copy_tags_to_data_repository_associations: false,
    #     kms_key_id: "KmsKeyId",
    #     lustre_configuration: {
    #       per_unit_storage_throughput: 1, # required
    #       deployment_type: "CACHE_1", # required, accepts CACHE_1
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       metadata_configuration: { # required
    #         storage_capacity: 1, # required
    #       },
    #     },
    #     data_repository_associations: [
    #       {
    #         file_cache_path: "Namespace", # required
    #         data_repository_path: "ArchivePath", # required
    #         data_repository_subdirectories: ["Namespace"],
    #         nfs: {
    #           version: "NFS3", # required, accepts NFS3
    #           dns_ips: ["IpAddress"],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.file_cache.owner_id #=> String
    #   resp.file_cache.creation_time #=> Time
    #   resp.file_cache.file_cache_id #=> String
    #   resp.file_cache.file_cache_type #=> String, one of "LUSTRE"
    #   resp.file_cache.file_cache_type_version #=> String
    #   resp.file_cache.lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"
    #   resp.file_cache.failure_details.message #=> String
    #   resp.file_cache.storage_capacity #=> Integer
    #   resp.file_cache.vpc_id #=> String
    #   resp.file_cache.subnet_ids #=> Array
    #   resp.file_cache.subnet_ids[0] #=> String
    #   resp.file_cache.network_interface_ids #=> Array
    #   resp.file_cache.network_interface_ids[0] #=> String
    #   resp.file_cache.dns_name #=> String
    #   resp.file_cache.kms_key_id #=> String
    #   resp.file_cache.resource_arn #=> String
    #   resp.file_cache.tags #=> Array
    #   resp.file_cache.tags[0].key #=> String
    #   resp.file_cache.tags[0].value #=> String
    #   resp.file_cache.copy_tags_to_data_repository_associations #=> Boolean
    #   resp.file_cache.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.file_cache.lustre_configuration.deployment_type #=> String, one of "CACHE_1"
    #   resp.file_cache.lustre_configuration.mount_name #=> String
    #   resp.file_cache.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_cache.lustre_configuration.metadata_configuration.storage_capacity #=> Integer
    #   resp.file_cache.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.file_cache.lustre_configuration.log_configuration.destination #=> String
    #   resp.file_cache.data_repository_association_ids #=> Array
    #   resp.file_cache.data_repository_association_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileCache AWS API Documentation
    #
    # @overload create_file_cache(params = {})
    # @param [Hash] params ({})
    def create_file_cache(params = {}, options = {})
      req = build_request(:create_file_cache, params)
      req.send_request(options)
    end

    # Creates a new, empty Amazon FSx file system. You can create the
    # following supported Amazon FSx file systems using the
    # `CreateFileSystem` API operation:
    #
    # * Amazon FSx for Lustre
    #
    # * Amazon FSx for NetApp ONTAP
    #
    # * Amazon FSx for OpenZFS
    #
    # * Amazon FSx for Windows File Server
    #
    # This operation requires a client request token in the request that
    # Amazon FSx uses to ensure idempotent creation. This means that calling
    # the operation multiple times with the same client request token has no
    # effect. By using the idempotent operation, you can retry a
    # `CreateFileSystem` operation without the risk of creating an extra
    # file system. This approach can be useful when an initial call fails in
    # a way that makes it unclear whether a file system was created.
    # Examples are if a transport level timeout occurred, or your connection
    # was reset. If you use the same client request token and the initial
    # call created a file system, the client receives success as long as the
    # parameters are the same.
    #
    # If a file system with the specified client request token exists and
    # the parameters match, `CreateFileSystem` returns the description of
    # the existing file system. If a file system with the specified client
    # request token exists and the parameters don't match, this call
    # returns `IncompatibleParameterError`. If a file system with the
    # specified client request token doesn't exist, `CreateFileSystem` does
    # the following:
    #
    # * Creates a new, empty Amazon FSx file system with an assigned ID, and
    #   an initial lifecycle state of `CREATING`.
    #
    # * Returns the description of the file system in JSON format.
    #
    # <note markdown="1"> The `CreateFileSystem` call returns while the file system's lifecycle
    # state is still `CREATING`. You can check the file-system creation
    # status by calling the [DescribeFileSystems][1] operation, which
    # returns the file system state along with other information.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html
    #
    # @option params [String] :client_request_token
    #   A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #   idempotent creation. This string is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :file_system_type
    #   The type of Amazon FSx file system to create. Valid values are
    #   `WINDOWS`, `LUSTRE`, `ONTAP`, and `OPENZFS`.
    #
    # @option params [required, Integer] :storage_capacity
    #   Sets the storage capacity of the file system that you're creating, in
    #   gibibytes (GiB).
    #
    #   **FSx for Lustre file systems** - The amount of storage capacity that
    #   you can configure depends on the value that you set for `StorageType`
    #   and the Lustre `DeploymentType`, as follows:
    #
    #   * For `SCRATCH_2`, `PERSISTENT_2` and `PERSISTENT_1` deployment types
    #     using SSD storage type, the valid values are 1200 GiB, 2400 GiB, and
    #     increments of 2400 GiB.
    #
    #   * For `PERSISTENT_1` HDD file systems, valid values are increments of
    #     6000 GiB for 12 MB/s/TiB file systems and increments of 1800 GiB for
    #     40 MB/s/TiB file systems.
    #
    #   * For `SCRATCH_1` deployment type, valid values are 1200 GiB, 2400
    #     GiB, and increments of 3600 GiB.
    #
    #   **FSx for ONTAP file systems** - The amount of storage capacity that
    #   you can configure is from 1024 GiB up to 196,608 GiB (192 TiB).
    #
    #   **FSx for OpenZFS file systems** - The amount of storage capacity that
    #   you can configure is from 64 GiB up to 524,288 GiB (512 TiB).
    #
    #   **FSx for Windows File Server file systems** - The amount of storage
    #   capacity that you can configure depends on the value that you set for
    #   `StorageType` as follows:
    #
    #   * For SSD storage, valid values are 32 GiB-65,536 GiB (64 TiB).
    #
    #   * For HDD storage, valid values are 2000 GiB-65,536 GiB (64 TiB).
    #
    # @option params [String] :storage_type
    #   Sets the storage type for the file system that you're creating. Valid
    #   values are `SSD` and `HDD`.
    #
    #   * Set to `SSD` to use solid state drive storage. SSD is supported on
    #     all Windows, Lustre, ONTAP, and OpenZFS deployment types.
    #
    #   * Set to `HDD` to use hard disk drive storage. HDD is supported on
    #     `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment types,
    #     and on `PERSISTENT_1` Lustre file system deployment types.
    #
    #   Default value is `SSD`. For more information, see [ Storage type
    #   options][1] in the *FSx for Windows File Server User Guide* and
    #   [Multiple storage options][2] in the *FSx for Lustre User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options
    #   [2]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html#storage-options
    #
    # @option params [required, Array<String>] :subnet_ids
    #   Specifies the IDs of the subnets that the file system will be
    #   accessible from. For Windows and ONTAP `MULTI_AZ_1` deployment
    #   types,provide exactly two subnet IDs, one for the preferred file
    #   server and one for the standby file server. You specify one of these
    #   subnets as the preferred subnet using the `WindowsConfiguration >
    #   PreferredSubnetID` or `OntapConfiguration > PreferredSubnetID`
    #   properties. For more information about Multi-AZ file system
    #   configuration, see [ Availability and durability: Single-AZ and
    #   Multi-AZ file systems][1] in the *Amazon FSx for Windows User Guide*
    #   and [ Availability and durability][2] in the *Amazon FSx for ONTAP
    #   User Guide*.
    #
    #   For Windows `SINGLE_AZ_1` and `SINGLE_AZ_2` and all Lustre deployment
    #   types, provide exactly one subnet ID. The file server is launched in
    #   that subnet's Availability Zone.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html
    #   [2]: https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of IDs specifying the security groups to apply to all network
    #   interfaces created for file system access. This list isn't returned
    #   in later requests to describe the file system.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to apply to the file system that's being created. The key
    #   value of the `Name` tag appears in the console as the file system
    #   name.
    #
    # @option params [String] :kms_key_id
    #   Specifies the ID of the Key Management Service (KMS) key to use for
    #   encrypting data on Amazon FSx file systems, as follows:
    #
    #   * Amazon FSx for Lustre `PERSISTENT_1` and `PERSISTENT_2` deployment
    #     types only.
    #
    #     `SCRATCH_1` and `SCRATCH_2` types are encrypted using the Amazon FSx
    #     service KMS key for your account.
    #
    #   * Amazon FSx for NetApp ONTAP
    #
    #   * Amazon FSx for OpenZFS
    #
    #   * Amazon FSx for Windows File Server
    #
    #   If a `KmsKeyId` isn't specified, the Amazon FSx-managed KMS key for
    #   your account is used. For more information, see [Encrypt][1] in the
    #   *Key Management Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
    #
    # @option params [Types::CreateFileSystemWindowsConfiguration] :windows_configuration
    #   The Microsoft Windows configuration for the file system that's being
    #   created.
    #
    # @option params [Types::CreateFileSystemLustreConfiguration] :lustre_configuration
    #   The Lustre configuration for the file system being created.
    #
    #   <note markdown="1"> The following parameters are not supported for file systems with a
    #   data repository association created with .
    #
    #    * `AutoImportPolicy`
    #
    #   * `ExportPath`
    #
    #   * `ImportedChunkSize`
    #
    #   * `ImportPath`
    #
    #    </note>
    #
    # @option params [Types::CreateFileSystemOntapConfiguration] :ontap_configuration
    #   The ONTAP configuration properties of the FSx for ONTAP file system
    #   that you are creating.
    #
    # @option params [String] :file_system_type_version
    #   (Optional) For FSx for Lustre file systems, sets the Lustre version
    #   for the file system that you're creating. Valid values are `2.10` and
    #   `2.12`:
    #
    #   * 2\.10 is supported by the Scratch and Persistent\_1 Lustre deployment
    #     types.
    #
    #   * 2\.12 is supported by all Lustre deployment types. `2.12` is required
    #     when setting FSx for Lustre `DeploymentType` to `PERSISTENT_2`.
    #
    #   Default value = `2.10`, except when `DeploymentType` is set to
    #   `PERSISTENT_2`, then the default is `2.12`.
    #
    #   <note markdown="1"> If you set `FileSystemTypeVersion` to `2.10` for a `PERSISTENT_2`
    #   Lustre deployment type, the `CreateFileSystem` operation fails.
    #
    #    </note>
    #
    # @option params [Types::CreateFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   The OpenZFS configuration for the file system that's being created.
    #
    # @return [Types::CreateFileSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFileSystemResponse#file_system #file_system} => Types::FileSystem
    #
    #
    # @example Example: To create a new file system
    #
    #   # This operation creates a new Amazon FSx for Windows File Server file system.
    #
    #   resp = client.create_file_system({
    #     client_request_token: "a8ca07e4-61ec-4399-99f4-19853801bcd5", 
    #     file_system_type: "WINDOWS", 
    #     kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/1111abcd-2222-3333-4444-55556666eeff", 
    #     security_group_ids: [
    #       "sg-edcd9784", 
    #     ], 
    #     storage_capacity: 3200, 
    #     storage_type: "HDD", 
    #     subnet_ids: [
    #       "subnet-1234abcd", 
    #     ], 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #     windows_configuration: {
    #       active_directory_id: "d-1234abcd12", 
    #       aliases: [
    #         "accounting.corp.example.com", 
    #       ], 
    #       automatic_backup_retention_days: 30, 
    #       daily_automatic_backup_start_time: "05:00", 
    #       throughput_capacity: 32, 
    #       weekly_maintenance_start_time: "1:05:00", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system: {
    #       creation_time: Time.parse("1481841524.0"), 
    #       dns_name: "fs-0123456789abcdef0.fsx.com", 
    #       file_system_id: "fs-0123456789abcdef0", 
    #       kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/1111abcd-2222-3333-4444-55556666eeff", 
    #       lifecycle: "CREATING", 
    #       owner_id: "012345678912", 
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0123456789abcdef0", 
    #       storage_capacity: 3200, 
    #       storage_type: "HDD", 
    #       subnet_ids: [
    #         "subnet-1234abcd", 
    #       ], 
    #       tags: [
    #         {
    #           key: "Name", 
    #           value: "MyFileSystem", 
    #         }, 
    #       ], 
    #       vpc_id: "vpc-ab1234cd", 
    #       windows_configuration: {
    #         active_directory_id: "d-1234abcd12", 
    #         aliases: [
    #           {
    #             lifecycle: "CREATING", 
    #             name: "accounting.corp.example.com", 
    #           }, 
    #         ], 
    #         automatic_backup_retention_days: 30, 
    #         daily_automatic_backup_start_time: "05:00", 
    #         throughput_capacity: 32, 
    #         weekly_maintenance_start_time: "1:05:00", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system({
    #     client_request_token: "ClientRequestToken",
    #     file_system_type: "WINDOWS", # required, accepts WINDOWS, LUSTRE, ONTAP, OPENZFS
    #     storage_capacity: 1, # required
    #     storage_type: "SSD", # accepts SSD, HDD
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     kms_key_id: "KmsKeyId",
    #     windows_configuration: {
    #       active_directory_id: "DirectoryId",
    #       self_managed_active_directory_configuration: {
    #         domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #         user_name: "DirectoryUserName", # required
    #         password: "DirectoryPassword", # required
    #         dns_ips: ["IpAddress"], # required
    #       },
    #       deployment_type: "MULTI_AZ_1", # accepts MULTI_AZ_1, SINGLE_AZ_1, SINGLE_AZ_2
    #       preferred_subnet_id: "SubnetId",
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       aliases: ["AlternateDNSName"],
    #       audit_log_configuration: {
    #         file_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #         file_share_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #         audit_log_destination: "GeneralARN",
    #       },
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       import_path: "ArchivePath",
    #       export_path: "ArchivePath",
    #       imported_file_chunk_size: 1,
    #       deployment_type: "SCRATCH_1", # accepts SCRATCH_1, SCRATCH_2, PERSISTENT_1, PERSISTENT_2
    #       auto_import_policy: "NONE", # accepts NONE, NEW, NEW_CHANGED, NEW_CHANGED_DELETED
    #       per_unit_storage_throughput: 1,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       drive_cache_type: "NONE", # accepts NONE, READ
    #       data_compression_type: "NONE", # accepts NONE, LZ4
    #       log_configuration: {
    #         level: "DISABLED", # required, accepts DISABLED, WARN_ONLY, ERROR_ONLY, WARN_ERROR
    #         destination: "GeneralARN",
    #       },
    #       root_squash_configuration: {
    #         root_squash: "LustreRootSquash",
    #         no_squash_nids: ["LustreNoSquashNid"],
    #       },
    #     },
    #     ontap_configuration: {
    #       automatic_backup_retention_days: 1,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       deployment_type: "MULTI_AZ_1", # required, accepts MULTI_AZ_1, SINGLE_AZ_1
    #       endpoint_ip_address_range: "IpAddressRange",
    #       fsx_admin_password: "AdminPassword",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC", # accepts AUTOMATIC, USER_PROVISIONED
    #         iops: 1,
    #       },
    #       preferred_subnet_id: "SubnetId",
    #       route_table_ids: ["RouteTableId"],
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #     },
    #     file_system_type_version: "FileSystemTypeVersion",
    #     open_zfs_configuration: {
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       copy_tags_to_volumes: false,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       deployment_type: "SINGLE_AZ_1", # required, accepts SINGLE_AZ_1, SINGLE_AZ_2
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC", # accepts AUTOMATIC, USER_PROVISIONED
    #         iops: 1,
    #       },
    #       root_volume_configuration: {
    #         record_size_ki_b: 1,
    #         data_compression_type: "NONE", # accepts NONE, ZSTD, LZ4
    #         nfs_exports: [
    #           {
    #             client_configurations: [ # required
    #               {
    #                 clients: "OpenZFSClients", # required
    #                 options: ["OpenZFSNfsExportOption"], # required
    #               },
    #             ],
    #           },
    #         ],
    #         user_and_group_quotas: [
    #           {
    #             type: "USER", # required, accepts USER, GROUP
    #             id: 1, # required
    #             storage_capacity_quota_gi_b: 1, # required
    #           },
    #         ],
    #         copy_tags_to_snapshots: false,
    #         read_only: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system.owner_id #=> String
    #   resp.file_system.creation_time #=> Time
    #   resp.file_system.file_system_id #=> String
    #   resp.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.file_system.failure_details.message #=> String
    #   resp.file_system.storage_capacity #=> Integer
    #   resp.file_system.storage_type #=> String, one of "SSD", "HDD"
    #   resp.file_system.vpc_id #=> String
    #   resp.file_system.subnet_ids #=> Array
    #   resp.file_system.subnet_ids[0] #=> String
    #   resp.file_system.network_interface_ids #=> Array
    #   resp.file_system.network_interface_ids[0] #=> String
    #   resp.file_system.dns_name #=> String
    #   resp.file_system.kms_key_id #=> String
    #   resp.file_system.resource_arn #=> String
    #   resp.file_system.tags #=> Array
    #   resp.file_system.tags[0].key #=> String
    #   resp.file_system.tags[0].value #=> String
    #   resp.file_system.windows_configuration.active_directory_id #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.file_system.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.windows_configuration.aliases #=> Array
    #   resp.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.file_system.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.file_system.lustre_configuration.mount_name #=> String
    #   resp.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.file_system.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.file_system.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.file_system.administrative_actions #=> Array
    #   resp.file_system.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.file_system.administrative_actions[0].request_time #=> Time
    #   resp.file_system.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.file_system.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.file_system.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.file_system.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.file_system.ontap_configuration.route_table_ids #=> Array
    #   resp.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.ontap_configuration.fsx_admin_password #=> String
    #   resp.file_system.file_system_type_version #=> String
    #   resp.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_system.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_system.open_zfs_configuration.root_volume_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystem AWS API Documentation
    #
    # @overload create_file_system(params = {})
    # @param [Hash] params ({})
    def create_file_system(params = {}, options = {})
      req = build_request(:create_file_system, params)
      req.send_request(options)
    end

    # Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File
    # Server, or Amazon FSx for OpenZFS file system from an existing Amazon
    # FSx backup.
    #
    # If a file system with the specified client request token exists and
    # the parameters match, this operation returns the description of the
    # file system. If a file system with the specified client request token
    # exists but the parameters don't match, this call returns
    # `IncompatibleParameterError`. If a file system with the specified
    # client request token doesn't exist, this operation does the
    # following:
    #
    # * Creates a new Amazon FSx file system from backup with an assigned
    #   ID, and an initial lifecycle state of `CREATING`.
    #
    # * Returns the description of the file system.
    #
    # Parameters like the Active Directory, default share name, automatic
    # backup, and backup settings default to the parameters of the file
    # system that was backed up, unless overridden. You can explicitly
    # supply other settings.
    #
    # By using the idempotent operation, you can retry a
    # `CreateFileSystemFromBackup` call without the risk of creating an
    # extra file system. This approach can be useful when an initial call
    # fails in a way that makes it unclear whether a file system was
    # created. Examples are if a transport level timeout occurred, or your
    # connection was reset. If you use the same client request token and the
    # initial call created a file system, the client receives a success
    # message as long as the parameters are the same.
    #
    # <note markdown="1"> The `CreateFileSystemFromBackup` call returns while the file system's
    # lifecycle state is still `CREATING`. You can check the file-system
    # creation status by calling the [ DescribeFileSystems][1] operation,
    # which returns the file system state along with other information.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html
    #
    # @option params [required, String] :backup_id
    #   The ID of the source backup. Specifies the backup that you are
    #   copying.
    #
    # @option params [String] :client_request_token
    #   A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #   idempotent creation. This string is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<String>] :subnet_ids
    #   Specifies the IDs of the subnets that the file system will be
    #   accessible from. For Windows `MULTI_AZ_1` file system deployment
    #   types, provide exactly two subnet IDs, one for the preferred file
    #   server and one for the standby file server. You specify one of these
    #   subnets as the preferred subnet using the `WindowsConfiguration >
    #   PreferredSubnetID` property.
    #
    #   Windows `SINGLE_AZ_1` and `SINGLE_AZ_2` file system deployment types,
    #   Lustre file systems, and OpenZFS file systems provide exactly one
    #   subnet ID. The file server is launched in that subnet's Availability
    #   Zone.
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of IDs for the security groups that apply to the specified
    #   network interfaces created for file system access. These security
    #   groups apply to all network interfaces. This value isn't returned in
    #   later `DescribeFileSystem` requests.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be applied to the file system at file system creation. The
    #   key value of the `Name` tag appears in the console as the file system
    #   name.
    #
    # @option params [Types::CreateFileSystemWindowsConfiguration] :windows_configuration
    #   The configuration for this Microsoft Windows file system.
    #
    # @option params [Types::CreateFileSystemLustreConfiguration] :lustre_configuration
    #   The Lustre configuration for the file system being created.
    #
    #   <note markdown="1"> The following parameters are not supported for file systems with a
    #   data repository association created with .
    #
    #    * `AutoImportPolicy`
    #
    #   * `ExportPath`
    #
    #   * `ImportedChunkSize`
    #
    #   * `ImportPath`
    #
    #    </note>
    #
    # @option params [String] :storage_type
    #   Sets the storage type for the Windows or OpenZFS file system that
    #   you're creating from a backup. Valid values are `SSD` and `HDD`.
    #
    #   * Set to `SSD` to use solid state drive storage. SSD is supported on
    #     all Windows and OpenZFS deployment types.
    #
    #   * Set to `HDD` to use hard disk drive storage. HDD is supported on
    #     `SINGLE_AZ_2` and `MULTI_AZ_1` FSx for Windows File Server file
    #     system deployment types.
    #
    #   The default value is `SSD`.
    #
    #   <note markdown="1"> HDD and SSD storage types have different minimum storage capacity
    #   requirements. A restored file system's storage capacity is tied to
    #   the file system that was backed up. You can create a file system that
    #   uses HDD storage from a backup of a file system that used SSD storage
    #   if the original SSD file system had a storage capacity of at least
    #   2000 GiB.
    #
    #    </note>
    #
    # @option params [String] :kms_key_id
    #   Specifies the ID of the Key Management Service (KMS) key to use for
    #   encrypting data on Amazon FSx file systems, as follows:
    #
    #   * Amazon FSx for Lustre `PERSISTENT_1` and `PERSISTENT_2` deployment
    #     types only.
    #
    #     `SCRATCH_1` and `SCRATCH_2` types are encrypted using the Amazon FSx
    #     service KMS key for your account.
    #
    #   * Amazon FSx for NetApp ONTAP
    #
    #   * Amazon FSx for OpenZFS
    #
    #   * Amazon FSx for Windows File Server
    #
    #   If a `KmsKeyId` isn't specified, the Amazon FSx-managed KMS key for
    #   your account is used. For more information, see [Encrypt][1] in the
    #   *Key Management Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
    #
    # @option params [String] :file_system_type_version
    #   Sets the version for the Amazon FSx for Lustre file system that
    #   you're creating from a backup. Valid values are `2.10` and `2.12`.
    #
    #   You don't need to specify `FileSystemTypeVersion` because it will be
    #   applied using the backup's `FileSystemTypeVersion` setting. If you
    #   choose to specify `FileSystemTypeVersion` when creating from backup,
    #   the value must match the backup's `FileSystemTypeVersion` setting.
    #
    # @option params [Types::CreateFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   The OpenZFS configuration for the file system that's being created.
    #
    # @option params [Integer] :storage_capacity
    #   Sets the storage capacity of the OpenZFS file system that you're
    #   creating from a backup, in gibibytes (GiB). Valid values are from 64
    #   GiB up to 524,288 GiB (512 TiB). However, the value that you specify
    #   must be equal to or greater than the backup's storage capacity value.
    #   If you don't use the `StorageCapacity` parameter, the default is the
    #   backup's `StorageCapacity` value.
    #
    #   If used to create a file system other than OpenZFS, you must provide a
    #   value that matches the backup's `StorageCapacity` value. If you
    #   provide any other value, Amazon FSx responds with a 400 Bad Request.
    #
    # @return [Types::CreateFileSystemFromBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFileSystemFromBackupResponse#file_system #file_system} => Types::FileSystem
    #
    #
    # @example Example: To create a new file system from backup
    #
    #   # This operation creates a new file system from backup.
    #
    #   resp = client.create_file_system_from_backup({
    #     backup_id: "backup-03e3c82e0183b7b6b", 
    #     client_request_token: "f4c94ed7-238d-4c46-93db-48cd62ec33b7", 
    #     security_group_ids: [
    #       "sg-edcd9784", 
    #     ], 
    #     subnet_ids: [
    #       "subnet-1234abcd", 
    #     ], 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #     windows_configuration: {
    #       throughput_capacity: 8, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system: {
    #       creation_time: Time.parse("1481841524.0"), 
    #       dns_name: "fs-0498eed5fe91001ec.fsx.com", 
    #       file_system_id: "fs-0498eed5fe91001ec", 
    #       kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6", 
    #       lifecycle: "CREATING", 
    #       owner_id: "012345678912", 
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #       storage_capacity: 300, 
    #       subnet_ids: [
    #         "subnet-1234abcd", 
    #       ], 
    #       tags: [
    #         {
    #           key: "Name", 
    #           value: "MyFileSystem", 
    #         }, 
    #       ], 
    #       vpc_id: "vpc-ab1234cd", 
    #       windows_configuration: {
    #         active_directory_id: "d-1234abcd12", 
    #         automatic_backup_retention_days: 30, 
    #         daily_automatic_backup_start_time: "05:00", 
    #         throughput_capacity: 8, 
    #         weekly_maintenance_start_time: "1:05:00", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system_from_backup({
    #     backup_id: "BackupId", # required
    #     client_request_token: "ClientRequestToken",
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     windows_configuration: {
    #       active_directory_id: "DirectoryId",
    #       self_managed_active_directory_configuration: {
    #         domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #         user_name: "DirectoryUserName", # required
    #         password: "DirectoryPassword", # required
    #         dns_ips: ["IpAddress"], # required
    #       },
    #       deployment_type: "MULTI_AZ_1", # accepts MULTI_AZ_1, SINGLE_AZ_1, SINGLE_AZ_2
    #       preferred_subnet_id: "SubnetId",
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       aliases: ["AlternateDNSName"],
    #       audit_log_configuration: {
    #         file_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #         file_share_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #         audit_log_destination: "GeneralARN",
    #       },
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       import_path: "ArchivePath",
    #       export_path: "ArchivePath",
    #       imported_file_chunk_size: 1,
    #       deployment_type: "SCRATCH_1", # accepts SCRATCH_1, SCRATCH_2, PERSISTENT_1, PERSISTENT_2
    #       auto_import_policy: "NONE", # accepts NONE, NEW, NEW_CHANGED, NEW_CHANGED_DELETED
    #       per_unit_storage_throughput: 1,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       drive_cache_type: "NONE", # accepts NONE, READ
    #       data_compression_type: "NONE", # accepts NONE, LZ4
    #       log_configuration: {
    #         level: "DISABLED", # required, accepts DISABLED, WARN_ONLY, ERROR_ONLY, WARN_ERROR
    #         destination: "GeneralARN",
    #       },
    #       root_squash_configuration: {
    #         root_squash: "LustreRootSquash",
    #         no_squash_nids: ["LustreNoSquashNid"],
    #       },
    #     },
    #     storage_type: "SSD", # accepts SSD, HDD
    #     kms_key_id: "KmsKeyId",
    #     file_system_type_version: "FileSystemTypeVersion",
    #     open_zfs_configuration: {
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       copy_tags_to_volumes: false,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       deployment_type: "SINGLE_AZ_1", # required, accepts SINGLE_AZ_1, SINGLE_AZ_2
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC", # accepts AUTOMATIC, USER_PROVISIONED
    #         iops: 1,
    #       },
    #       root_volume_configuration: {
    #         record_size_ki_b: 1,
    #         data_compression_type: "NONE", # accepts NONE, ZSTD, LZ4
    #         nfs_exports: [
    #           {
    #             client_configurations: [ # required
    #               {
    #                 clients: "OpenZFSClients", # required
    #                 options: ["OpenZFSNfsExportOption"], # required
    #               },
    #             ],
    #           },
    #         ],
    #         user_and_group_quotas: [
    #           {
    #             type: "USER", # required, accepts USER, GROUP
    #             id: 1, # required
    #             storage_capacity_quota_gi_b: 1, # required
    #           },
    #         ],
    #         copy_tags_to_snapshots: false,
    #         read_only: false,
    #       },
    #     },
    #     storage_capacity: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system.owner_id #=> String
    #   resp.file_system.creation_time #=> Time
    #   resp.file_system.file_system_id #=> String
    #   resp.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.file_system.failure_details.message #=> String
    #   resp.file_system.storage_capacity #=> Integer
    #   resp.file_system.storage_type #=> String, one of "SSD", "HDD"
    #   resp.file_system.vpc_id #=> String
    #   resp.file_system.subnet_ids #=> Array
    #   resp.file_system.subnet_ids[0] #=> String
    #   resp.file_system.network_interface_ids #=> Array
    #   resp.file_system.network_interface_ids[0] #=> String
    #   resp.file_system.dns_name #=> String
    #   resp.file_system.kms_key_id #=> String
    #   resp.file_system.resource_arn #=> String
    #   resp.file_system.tags #=> Array
    #   resp.file_system.tags[0].key #=> String
    #   resp.file_system.tags[0].value #=> String
    #   resp.file_system.windows_configuration.active_directory_id #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.file_system.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.windows_configuration.aliases #=> Array
    #   resp.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.file_system.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.file_system.lustre_configuration.mount_name #=> String
    #   resp.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.file_system.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.file_system.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.file_system.administrative_actions #=> Array
    #   resp.file_system.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.file_system.administrative_actions[0].request_time #=> Time
    #   resp.file_system.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.file_system.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.file_system.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.file_system.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.file_system.ontap_configuration.route_table_ids #=> Array
    #   resp.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.ontap_configuration.fsx_admin_password #=> String
    #   resp.file_system.file_system_type_version #=> String
    #   resp.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_system.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_system.open_zfs_configuration.root_volume_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemFromBackup AWS API Documentation
    #
    # @overload create_file_system_from_backup(params = {})
    # @param [Hash] params ({})
    def create_file_system_from_backup(params = {}, options = {})
      req = build_request(:create_file_system_from_backup, params)
      req.send_request(options)
    end

    # Creates a snapshot of an existing Amazon FSx for OpenZFS volume. With
    # snapshots, you can easily undo file changes and compare file versions
    # by restoring the volume to a previous version.
    #
    # If a snapshot with the specified client request token exists, and the
    # parameters match, this operation returns the description of the
    # existing snapshot. If a snapshot with the specified client request
    # token exists, and the parameters don't match, this operation returns
    # `IncompatibleParameterError`. If a snapshot with the specified client
    # request token doesn't exist, `CreateSnapshot` does the following:
    #
    # * Creates a new OpenZFS snapshot with an assigned ID, and an initial
    #   lifecycle state of `CREATING`.
    #
    # * Returns the description of the snapshot.
    #
    # By using the idempotent operation, you can retry a `CreateSnapshot`
    # operation without the risk of creating an extra snapshot. This
    # approach can be useful when an initial call fails in a way that makes
    # it unclear whether a snapshot was created. If you use the same client
    # request token and the initial call created a snapshot, the operation
    # returns a successful result because all the parameters are the same.
    #
    # The `CreateSnapshot` operation returns while the snapshot's lifecycle
    # state is still `CREATING`. You can check the snapshot creation status
    # by calling the [DescribeSnapshots][1] operation, which returns the
    # snapshot state along with other information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeSnapshots.html
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the snapshot.
    #
    # @option params [required, String] :volume_id
    #   The ID of the volume that you are taking a snapshot of.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #
    # @return [Types::CreateSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     client_request_token: "ClientRequestToken",
    #     name: "SnapshotName", # required
    #     volume_id: "VolumeId", # required
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
    #   resp.snapshot.resource_arn #=> String
    #   resp.snapshot.snapshot_id #=> String
    #   resp.snapshot.name #=> String
    #   resp.snapshot.volume_id #=> String
    #   resp.snapshot.creation_time #=> Time
    #   resp.snapshot.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.snapshot.lifecycle_transition_reason.message #=> String
    #   resp.snapshot.tags #=> Array
    #   resp.snapshot.tags[0].key #=> String
    #   resp.snapshot.tags[0].value #=> String
    #   resp.snapshot.administrative_actions #=> Array
    #   resp.snapshot.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.snapshot.administrative_actions[0].progress_percent #=> Integer
    #   resp.snapshot.administrative_actions[0].request_time #=> Time
    #   resp.snapshot.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.snapshot.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.snapshot.administrative_actions[0].failure_details.message #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.snapshot.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.name #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.snapshot.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP
    # file system.
    #
    # @option params [Types::CreateSvmActiveDirectoryConfiguration] :active_directory_configuration
    #   Describes the self-managed Microsoft Active Directory to which you
    #   want to join the SVM. Joining an Active Directory provides user
    #   authentication and access control for SMB clients, including Microsoft
    #   Windows and macOS client accessing the file system.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #
    # @option params [required, String] :name
    #   The name of the SVM.
    #
    # @option params [String] :svm_admin_password
    #   The password to use when managing the SVM using the NetApp ONTAP CLI
    #   or REST API. If you do not specify a password, you can still use the
    #   file system's `fsxadmin` user to manage the SVM.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #
    # @option params [String] :root_volume_security_style
    #   The security style of the root volume of the SVM. Specify one of the
    #   following values:
    #
    #   * `UNIX` if the file system is managed by a UNIX administrator, the
    #     majority of users are NFS clients, and an application accessing the
    #     data uses a UNIX user as the service account.
    #
    #   * `NTFS` if the file system is managed by a Windows administrator, the
    #     majority of users are SMB clients, and an application accessing the
    #     data uses a Windows user as the service account.
    #
    #   * `MIXED` if the file system is managed by both UNIX and Windows
    #     administrators and users consist of both NFS and SMB clients.
    #
    # @return [Types::CreateStorageVirtualMachineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStorageVirtualMachineResponse#storage_virtual_machine #storage_virtual_machine} => Types::StorageVirtualMachine
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_storage_virtual_machine({
    #     active_directory_configuration: {
    #       net_bios_name: "NetBiosAlias", # required
    #       self_managed_active_directory_configuration: {
    #         domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #         user_name: "DirectoryUserName", # required
    #         password: "DirectoryPassword", # required
    #         dns_ips: ["IpAddress"], # required
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     file_system_id: "FileSystemId", # required
    #     name: "StorageVirtualMachineName", # required
    #     svm_admin_password: "AdminPassword",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     root_volume_security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_virtual_machine.active_directory_configuration.net_bios_name #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.storage_virtual_machine.creation_time #=> Time
    #   resp.storage_virtual_machine.endpoints.iscsi.dns_name #=> String
    #   resp.storage_virtual_machine.endpoints.iscsi.ip_addresses #=> Array
    #   resp.storage_virtual_machine.endpoints.iscsi.ip_addresses[0] #=> String
    #   resp.storage_virtual_machine.endpoints.management.dns_name #=> String
    #   resp.storage_virtual_machine.endpoints.management.ip_addresses #=> Array
    #   resp.storage_virtual_machine.endpoints.management.ip_addresses[0] #=> String
    #   resp.storage_virtual_machine.endpoints.nfs.dns_name #=> String
    #   resp.storage_virtual_machine.endpoints.nfs.ip_addresses #=> Array
    #   resp.storage_virtual_machine.endpoints.nfs.ip_addresses[0] #=> String
    #   resp.storage_virtual_machine.endpoints.smb.dns_name #=> String
    #   resp.storage_virtual_machine.endpoints.smb.ip_addresses #=> Array
    #   resp.storage_virtual_machine.endpoints.smb.ip_addresses[0] #=> String
    #   resp.storage_virtual_machine.file_system_id #=> String
    #   resp.storage_virtual_machine.lifecycle #=> String, one of "CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"
    #   resp.storage_virtual_machine.name #=> String
    #   resp.storage_virtual_machine.resource_arn #=> String
    #   resp.storage_virtual_machine.storage_virtual_machine_id #=> String
    #   resp.storage_virtual_machine.subtype #=> String, one of "DEFAULT", "DP_DESTINATION", "SYNC_DESTINATION", "SYNC_SOURCE"
    #   resp.storage_virtual_machine.uuid #=> String
    #   resp.storage_virtual_machine.tags #=> Array
    #   resp.storage_virtual_machine.tags[0].key #=> String
    #   resp.storage_virtual_machine.tags[0].value #=> String
    #   resp.storage_virtual_machine.lifecycle_transition_reason.message #=> String
    #   resp.storage_virtual_machine.root_volume_security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateStorageVirtualMachine AWS API Documentation
    #
    # @overload create_storage_virtual_machine(params = {})
    # @param [Hash] params ({})
    def create_storage_virtual_machine(params = {}, options = {})
      req = build_request(:create_storage_virtual_machine, params)
      req.send_request(options)
    end

    # Creates an FSx for ONTAP or Amazon FSx for OpenZFS storage volume.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :volume_type
    #   Specifies the type of volume to create; `ONTAP` and `OPENZFS` are the
    #   only valid volume types.
    #
    # @option params [required, String] :name
    #   Specifies the name of the volume that you're creating.
    #
    # @option params [Types::CreateOntapVolumeConfiguration] :ontap_configuration
    #   Specifies the configuration to use when creating the ONTAP volume.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #
    # @option params [Types::CreateOpenZFSVolumeConfiguration] :open_zfs_configuration
    #   Specifies the configuration to use when creating the OpenZFS volume.
    #
    # @return [Types::CreateVolumeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVolumeResponse#volume #volume} => Types::Volume
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_volume({
    #     client_request_token: "ClientRequestToken",
    #     volume_type: "ONTAP", # required, accepts ONTAP, OPENZFS
    #     name: "VolumeName", # required
    #     ontap_configuration: {
    #       junction_path: "JunctionPath",
    #       security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #       size_in_megabytes: 1, # required
    #       storage_efficiency_enabled: false,
    #       storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #       tiering_policy: {
    #         cooling_period: 1,
    #         name: "SNAPSHOT_ONLY", # accepts SNAPSHOT_ONLY, AUTO, ALL, NONE
    #       },
    #       ontap_volume_type: "RW", # accepts RW, DP
    #       snapshot_policy: "SnapshotPolicy",
    #       copy_tags_to_backups: false,
    #       snaplock_configuration: {
    #         audit_log_volume: false,
    #         autocommit_period: {
    #           type: "MINUTES", # required, accepts MINUTES, HOURS, DAYS, MONTHS, YEARS, NONE
    #           value: 1,
    #         },
    #         privileged_delete: "DISABLED", # accepts DISABLED, ENABLED, PERMANENTLY_DISABLED
    #         retention_period: {
    #           default_retention: { # required
    #             type: "SECONDS", # required, accepts SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
    #             value: 1,
    #           },
    #           minimum_retention: { # required
    #             type: "SECONDS", # required, accepts SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
    #             value: 1,
    #           },
    #           maximum_retention: { # required
    #             type: "SECONDS", # required, accepts SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
    #             value: 1,
    #           },
    #         },
    #         snaplock_type: "COMPLIANCE", # required, accepts COMPLIANCE, ENTERPRISE
    #         volume_append_mode_enabled: false,
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     open_zfs_configuration: {
    #       parent_volume_id: "VolumeId", # required
    #       storage_capacity_reservation_gi_b: 1,
    #       storage_capacity_quota_gi_b: 1,
    #       record_size_ki_b: 1,
    #       data_compression_type: "NONE", # accepts NONE, ZSTD, LZ4
    #       copy_tags_to_snapshots: false,
    #       origin_snapshot: {
    #         snapshot_arn: "ResourceARN", # required
    #         copy_strategy: "CLONE", # required, accepts CLONE, FULL_COPY
    #       },
    #       read_only: false,
    #       nfs_exports: [
    #         {
    #           client_configurations: [ # required
    #             {
    #               clients: "OpenZFSClients", # required
    #               options: ["OpenZFSNfsExportOption"], # required
    #             },
    #           ],
    #         },
    #       ],
    #       user_and_group_quotas: [
    #         {
    #           type: "USER", # required, accepts USER, GROUP
    #           id: 1, # required
    #           storage_capacity_quota_gi_b: 1, # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.volume.creation_time #=> Time
    #   resp.volume.file_system_id #=> String
    #   resp.volume.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.volume.name #=> String
    #   resp.volume.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.volume.ontap_configuration.junction_path #=> String
    #   resp.volume.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.volume.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.volume.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.volume.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.volume.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.volume.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.volume.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.volume.ontap_configuration.uuid #=> String
    #   resp.volume.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.volume.ontap_configuration.snapshot_policy #=> String
    #   resp.volume.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.volume.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.volume.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.volume.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.volume.resource_arn #=> String
    #   resp.volume.tags #=> Array
    #   resp.volume.tags[0].key #=> String
    #   resp.volume.tags[0].value #=> String
    #   resp.volume.volume_id #=> String
    #   resp.volume.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.volume.lifecycle_transition_reason.message #=> String
    #   resp.volume.administrative_actions #=> Array
    #   resp.volume.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.volume.administrative_actions[0].progress_percent #=> Integer
    #   resp.volume.administrative_actions[0].request_time #=> Time
    #   resp.volume.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.volume.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.volume.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.volume.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.volume.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.volume.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.volume.administrative_actions[0].failure_details.message #=> String
    #   resp.volume.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.volume.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.volume.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.volume.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.volume.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.volume.open_zfs_configuration.parent_volume_id #=> String
    #   resp.volume.open_zfs_configuration.volume_path #=> String
    #   resp.volume.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.volume.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.volume.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.volume.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.volume.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.volume.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.volume.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.volume.open_zfs_configuration.read_only #=> Boolean
    #   resp.volume.open_zfs_configuration.nfs_exports #=> Array
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.volume.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.volume.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.volume.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.volume.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.volume.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.volume.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.volume.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateVolume AWS API Documentation
    #
    # @overload create_volume(params = {})
    # @param [Hash] params ({})
    def create_volume(params = {}, options = {})
      req = build_request(:create_volume, params)
      req.send_request(options)
    end

    # Creates a new Amazon FSx for NetApp ONTAP volume from an existing
    # Amazon FSx volume backup.
    #
    # @option params [required, String] :backup_id
    #   The ID of the source backup. Specifies the backup that you are
    #   copying.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the new volume you're creating.
    #
    # @option params [Types::CreateOntapVolumeConfiguration] :ontap_configuration
    #   Specifies the configuration of the ONTAP volume that you are creating.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #
    # @return [Types::CreateVolumeFromBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVolumeFromBackupResponse#volume #volume} => Types::Volume
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_volume_from_backup({
    #     backup_id: "BackupId", # required
    #     client_request_token: "ClientRequestToken",
    #     name: "VolumeName", # required
    #     ontap_configuration: {
    #       junction_path: "JunctionPath",
    #       security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #       size_in_megabytes: 1, # required
    #       storage_efficiency_enabled: false,
    #       storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #       tiering_policy: {
    #         cooling_period: 1,
    #         name: "SNAPSHOT_ONLY", # accepts SNAPSHOT_ONLY, AUTO, ALL, NONE
    #       },
    #       ontap_volume_type: "RW", # accepts RW, DP
    #       snapshot_policy: "SnapshotPolicy",
    #       copy_tags_to_backups: false,
    #       snaplock_configuration: {
    #         audit_log_volume: false,
    #         autocommit_period: {
    #           type: "MINUTES", # required, accepts MINUTES, HOURS, DAYS, MONTHS, YEARS, NONE
    #           value: 1,
    #         },
    #         privileged_delete: "DISABLED", # accepts DISABLED, ENABLED, PERMANENTLY_DISABLED
    #         retention_period: {
    #           default_retention: { # required
    #             type: "SECONDS", # required, accepts SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
    #             value: 1,
    #           },
    #           minimum_retention: { # required
    #             type: "SECONDS", # required, accepts SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
    #             value: 1,
    #           },
    #           maximum_retention: { # required
    #             type: "SECONDS", # required, accepts SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
    #             value: 1,
    #           },
    #         },
    #         snaplock_type: "COMPLIANCE", # required, accepts COMPLIANCE, ENTERPRISE
    #         volume_append_mode_enabled: false,
    #       },
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
    #   resp.volume.creation_time #=> Time
    #   resp.volume.file_system_id #=> String
    #   resp.volume.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.volume.name #=> String
    #   resp.volume.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.volume.ontap_configuration.junction_path #=> String
    #   resp.volume.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.volume.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.volume.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.volume.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.volume.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.volume.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.volume.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.volume.ontap_configuration.uuid #=> String
    #   resp.volume.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.volume.ontap_configuration.snapshot_policy #=> String
    #   resp.volume.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.volume.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.volume.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.volume.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.volume.resource_arn #=> String
    #   resp.volume.tags #=> Array
    #   resp.volume.tags[0].key #=> String
    #   resp.volume.tags[0].value #=> String
    #   resp.volume.volume_id #=> String
    #   resp.volume.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.volume.lifecycle_transition_reason.message #=> String
    #   resp.volume.administrative_actions #=> Array
    #   resp.volume.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.volume.administrative_actions[0].progress_percent #=> Integer
    #   resp.volume.administrative_actions[0].request_time #=> Time
    #   resp.volume.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.volume.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.volume.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.volume.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.volume.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.volume.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.volume.administrative_actions[0].failure_details.message #=> String
    #   resp.volume.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.volume.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.volume.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.volume.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.volume.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.volume.open_zfs_configuration.parent_volume_id #=> String
    #   resp.volume.open_zfs_configuration.volume_path #=> String
    #   resp.volume.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.volume.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.volume.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.volume.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.volume.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.volume.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.volume.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.volume.open_zfs_configuration.read_only #=> Boolean
    #   resp.volume.open_zfs_configuration.nfs_exports #=> Array
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.volume.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.volume.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.volume.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.volume.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.volume.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.volume.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.volume.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateVolumeFromBackup AWS API Documentation
    #
    # @overload create_volume_from_backup(params = {})
    # @param [Hash] params ({})
    def create_volume_from_backup(params = {}, options = {})
      req = build_request(:create_volume_from_backup, params)
      req.send_request(options)
    end

    # Deletes an Amazon FSx backup. After deletion, the backup no longer
    # exists, and its data is gone.
    #
    # The `DeleteBackup` call returns instantly. The backup won't show up
    # in later `DescribeBackups` calls.
    #
    # The data in a deleted backup is also deleted and can't be recovered
    # by any means.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup that you want to delete.
    #
    # @option params [String] :client_request_token
    #   A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #   idempotent deletion. This parameter is automatically filled on your
    #   behalf when using the CLI or SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackupResponse#backup_id #backup_id} => String
    #   * {Types::DeleteBackupResponse#lifecycle #lifecycle} => String
    #
    #
    # @example Example: To delete a backup
    #
    #   # This operation deletes an Amazon FSx file system backup.
    #
    #   resp = client.delete_backup({
    #     backup_id: "backup-03e3c82e0183b7b6b", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     backup_id: "backup-03e3c82e0183b7b6b", 
    #     lifecycle: "DELETED", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup({
    #     backup_id: "BackupId", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_id #=> String
    #   resp.lifecycle #=> String, one of "AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteBackup AWS API Documentation
    #
    # @overload delete_backup(params = {})
    # @param [Hash] params ({})
    def delete_backup(params = {}, options = {})
      req = build_request(:delete_backup, params)
      req.send_request(options)
    end

    # Deletes a data repository association on an Amazon FSx for Lustre file
    # system. Deleting the data repository association unlinks the file
    # system from the Amazon S3 bucket. When deleting a data repository
    # association, you have the option of deleting the data in the file
    # system that corresponds to the data repository association. Data
    # repository associations are supported on all FSx for Lustre 2.12 and
    # newer file systems, excluding `scratch_1` deployment type.
    #
    # @option params [required, String] :association_id
    #   The ID of the data repository association that you want to delete.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :delete_data_in_file_system
    #   Set to `true` to delete the data in the file system that corresponds
    #   to the data repository association.
    #
    # @return [Types::DeleteDataRepositoryAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataRepositoryAssociationResponse#association_id #association_id} => String
    #   * {Types::DeleteDataRepositoryAssociationResponse#lifecycle #lifecycle} => String
    #   * {Types::DeleteDataRepositoryAssociationResponse#delete_data_in_file_system #delete_data_in_file_system} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_repository_association({
    #     association_id: "DataRepositoryAssociationId", # required
    #     client_request_token: "ClientRequestToken",
    #     delete_data_in_file_system: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.association_id #=> String
    #   resp.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.delete_data_in_file_system #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteDataRepositoryAssociation AWS API Documentation
    #
    # @overload delete_data_repository_association(params = {})
    # @param [Hash] params ({})
    def delete_data_repository_association(params = {}, options = {})
      req = build_request(:delete_data_repository_association, params)
      req.send_request(options)
    end

    # Deletes an Amazon File Cache resource. After deletion, the cache no
    # longer exists, and its data is gone.
    #
    # The `DeleteFileCache` operation returns while the cache has the
    # `DELETING` status. You can check the cache deletion status by calling
    # the [DescribeFileCaches][1] operation, which returns a list of caches
    # in your account. If you pass the cache ID for a deleted cache, the
    # `DescribeFileCaches` operation returns a `FileCacheNotFound` error.
    #
    # The data in a deleted cache is also deleted and can't be recovered by
    # any means.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html
    #
    # @option params [required, String] :file_cache_id
    #   The ID of the cache that's being deleted.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteFileCacheResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFileCacheResponse#file_cache_id #file_cache_id} => String
    #   * {Types::DeleteFileCacheResponse#lifecycle #lifecycle} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_cache({
    #     file_cache_id: "FileCacheId", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.file_cache_id #=> String
    #   resp.lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileCache AWS API Documentation
    #
    # @overload delete_file_cache(params = {})
    # @param [Hash] params ({})
    def delete_file_cache(params = {}, options = {})
      req = build_request(:delete_file_cache, params)
      req.send_request(options)
    end

    # Deletes a file system. After deletion, the file system no longer
    # exists, and its data is gone. Any existing automatic backups and
    # snapshots are also deleted.
    #
    # To delete an Amazon FSx for NetApp ONTAP file system, first delete all
    # the volumes and storage virtual machines (SVMs) on the file system.
    # Then provide a `FileSystemId` value to the `DeleFileSystem` operation.
    #
    # By default, when you delete an Amazon FSx for Windows File Server file
    # system, a final backup is created upon deletion. This final backup
    # isn't subject to the file system's retention policy, and must be
    # manually deleted.
    #
    # The `DeleteFileSystem` operation returns while the file system has the
    # `DELETING` status. You can check the file system deletion status by
    # calling the [DescribeFileSystems][1] operation, which returns a list
    # of file systems in your account. If you pass the file system ID for a
    # deleted file system, the `DescribeFileSystems` operation returns a
    # `FileSystemNotFound` error.
    #
    # <note markdown="1"> If a data repository task is in a `PENDING` or `EXECUTING` state,
    # deleting an Amazon FSx for Lustre file system will fail with an HTTP
    # status code 400 (Bad Request).
    #
    #  </note>
    #
    # The data in a deleted file system is also deleted and can't be
    # recovered by any means.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system that you want to delete.
    #
    # @option params [String] :client_request_token
    #   A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #   idempotent deletion. This token is automatically filled on your behalf
    #   when using the Command Line Interface (CLI) or an Amazon Web Services
    #   SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::DeleteFileSystemWindowsConfiguration] :windows_configuration
    #   The configuration object for the Microsoft Windows file system used in
    #   the `DeleteFileSystem` operation.
    #
    # @option params [Types::DeleteFileSystemLustreConfiguration] :lustre_configuration
    #   The configuration object for the Amazon FSx for Lustre file system
    #   being deleted in the `DeleteFileSystem` operation.
    #
    # @option params [Types::DeleteFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   The configuration object for the OpenZFS file system used in the
    #   `DeleteFileSystem` operation.
    #
    # @return [Types::DeleteFileSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFileSystemResponse#file_system_id #file_system_id} => String
    #   * {Types::DeleteFileSystemResponse#lifecycle #lifecycle} => String
    #   * {Types::DeleteFileSystemResponse#windows_response #windows_response} => Types::DeleteFileSystemWindowsResponse
    #   * {Types::DeleteFileSystemResponse#lustre_response #lustre_response} => Types::DeleteFileSystemLustreResponse
    #   * {Types::DeleteFileSystemResponse#open_zfs_response #open_zfs_response} => Types::DeleteFileSystemOpenZFSResponse
    #
    #
    # @example Example: To delete a file system
    #
    #   # This operation deletes an Amazon FSx file system.
    #
    #   resp = client.delete_file_system({
    #     file_system_id: "fs-0498eed5fe91001ec", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system_id: "fs-0498eed5fe91001ec", 
    #     lifecycle: "DELETING", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system({
    #     file_system_id: "FileSystemId", # required
    #     client_request_token: "ClientRequestToken",
    #     windows_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         },
    #       ],
    #     },
    #     lustre_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         },
    #       ],
    #     },
    #     open_zfs_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         },
    #       ],
    #       options: ["DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"], # accepts DELETE_CHILD_VOLUMES_AND_SNAPSHOTS
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system_id #=> String
    #   resp.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.windows_response.final_backup_id #=> String
    #   resp.windows_response.final_backup_tags #=> Array
    #   resp.windows_response.final_backup_tags[0].key #=> String
    #   resp.windows_response.final_backup_tags[0].value #=> String
    #   resp.lustre_response.final_backup_id #=> String
    #   resp.lustre_response.final_backup_tags #=> Array
    #   resp.lustre_response.final_backup_tags[0].key #=> String
    #   resp.lustre_response.final_backup_tags[0].value #=> String
    #   resp.open_zfs_response.final_backup_id #=> String
    #   resp.open_zfs_response.final_backup_tags #=> Array
    #   resp.open_zfs_response.final_backup_tags[0].key #=> String
    #   resp.open_zfs_response.final_backup_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystem AWS API Documentation
    #
    # @overload delete_file_system(params = {})
    # @param [Hash] params ({})
    def delete_file_system(params = {}, options = {})
      req = build_request(:delete_file_system, params)
      req.send_request(options)
    end

    # Deletes an Amazon FSx for OpenZFS snapshot. After deletion, the
    # snapshot no longer exists, and its data is gone. Deleting a snapshot
    # doesn't affect snapshots stored in a file system backup.
    #
    # The `DeleteSnapshot` operation returns instantly. The snapshot appears
    # with the lifecycle status of `DELETING` until the deletion is
    # complete.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the snapshot that you want to delete.
    #
    # @return [Types::DeleteSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSnapshotResponse#snapshot_id #snapshot_id} => String
    #   * {Types::DeleteSnapshotResponse#lifecycle #lifecycle} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot({
    #     client_request_token: "ClientRequestToken",
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_id #=> String
    #   resp.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteSnapshot AWS API Documentation
    #
    # @overload delete_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_snapshot(params = {}, options = {})
      req = build_request(:delete_snapshot, params)
      req.send_request(options)
    end

    # Deletes an existing Amazon FSx for ONTAP storage virtual machine
    # (SVM). Prior to deleting an SVM, you must delete all non-root volumes
    # in the SVM, otherwise the operation will fail.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :storage_virtual_machine_id
    #   The ID of the SVM that you want to delete.
    #
    # @return [Types::DeleteStorageVirtualMachineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStorageVirtualMachineResponse#storage_virtual_machine_id #storage_virtual_machine_id} => String
    #   * {Types::DeleteStorageVirtualMachineResponse#lifecycle #lifecycle} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_storage_virtual_machine({
    #     client_request_token: "ClientRequestToken",
    #     storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_virtual_machine_id #=> String
    #   resp.lifecycle #=> String, one of "CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteStorageVirtualMachine AWS API Documentation
    #
    # @overload delete_storage_virtual_machine(params = {})
    # @param [Hash] params ({})
    def delete_storage_virtual_machine(params = {}, options = {})
      req = build_request(:delete_storage_virtual_machine, params)
      req.send_request(options)
    end

    # Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS
    # volume.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :volume_id
    #   The ID of the volume that you are deleting.
    #
    # @option params [Types::DeleteVolumeOntapConfiguration] :ontap_configuration
    #   For Amazon FSx for ONTAP volumes, specify whether to take a final
    #   backup of the volume and apply tags to the backup. To apply tags to
    #   the backup, you must have the `fsx:TagResource` permission.
    #
    # @option params [Types::DeleteVolumeOpenZFSConfiguration] :open_zfs_configuration
    #   For Amazon FSx for OpenZFS volumes, specify whether to delete all
    #   child volumes and snapshots.
    #
    # @return [Types::DeleteVolumeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVolumeResponse#volume_id #volume_id} => String
    #   * {Types::DeleteVolumeResponse#lifecycle #lifecycle} => String
    #   * {Types::DeleteVolumeResponse#ontap_response #ontap_response} => Types::DeleteVolumeOntapResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_volume({
    #     client_request_token: "ClientRequestToken",
    #     volume_id: "VolumeId", # required
    #     ontap_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         },
    #       ],
    #       bypass_snaplock_enterprise_retention: false,
    #     },
    #     open_zfs_configuration: {
    #       options: ["DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"], # accepts DELETE_CHILD_VOLUMES_AND_SNAPSHOTS
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_id #=> String
    #   resp.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.ontap_response.final_backup_id #=> String
    #   resp.ontap_response.final_backup_tags #=> Array
    #   resp.ontap_response.final_backup_tags[0].key #=> String
    #   resp.ontap_response.final_backup_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteVolume AWS API Documentation
    #
    # @overload delete_volume(params = {})
    # @param [Hash] params ({})
    def delete_volume(params = {}, options = {})
      req = build_request(:delete_volume, params)
      req.send_request(options)
    end

    # Returns the description of a specific Amazon FSx backup, if a
    # `BackupIds` value is provided for that backup. Otherwise, it returns
    # all backups owned by your Amazon Web Services account in the Amazon
    # Web Services Region of the endpoint that you're calling.
    #
    # When retrieving all backups, you can optionally specify the
    # `MaxResults` parameter to limit the number of backups in a response.
    # If more backups remain, Amazon FSx returns a `NextToken` value in the
    # response. In this case, send a later request with the `NextToken`
    # request parameter set to the value of the `NextToken` value from the
    # last response.
    #
    # This operation is used in an iterative process to retrieve a list of
    # your backups. `DescribeBackups` is called first without a `NextToken`
    # value. Then the operation continues to be called with the `NextToken`
    # parameter set to the value of the last `NextToken` value until a
    # response has no `NextToken` value.
    #
    # When using this operation, keep the following in mind:
    #
    # * The operation might return fewer than the `MaxResults` value of
    #   backup descriptions while still including a `NextToken` value.
    #
    # * The order of the backups returned in the response of one
    #   `DescribeBackups` call and the order of the backups returned across
    #   the responses of a multi-call iteration is unspecified.
    #
    # @option params [Array<String>] :backup_ids
    #   The IDs of the backups that you want to retrieve. This parameter value
    #   overrides any filters. If any IDs aren't found, a `BackupNotFound`
    #   error occurs.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters structure. The supported names are `file-system-id`,
    #   `backup-type`, `file-system-type`, and `volume-id`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of backups to return in the response. This parameter
    #   value must be greater than 0. The number of items that Amazon FSx
    #   returns is the minimum of the `MaxResults` parameter specified in the
    #   request and the service's internal maximum number of items per page.
    #
    # @option params [String] :next_token
    #   An opaque pagination token returned from a previous `DescribeBackups`
    #   operation. If a token is present, the operation continues the list
    #   from where the returning call left off.
    #
    # @return [Types::DescribeBackupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupsResponse#backups #backups} => Array&lt;Types::Backup&gt;
    #   * {Types::DescribeBackupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe Amazon FSx backups
    #
    #   # This operation describes all of the Amazon FSx backups in an account.
    #
    #   resp = client.describe_backups({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     backups: [
    #       {
    #         backup_id: "backup-03e3c82e0183b7b6b", 
    #         creation_time: Time.parse("1481841524.0"), 
    #         file_system: {
    #           file_system_id: "fs-0498eed5fe91001ec", 
    #           owner_id: "012345678912", 
    #           storage_capacity: 300, 
    #           windows_configuration: {
    #             active_directory_id: "d-1234abcd12", 
    #             automatic_backup_retention_days: 30, 
    #             daily_automatic_backup_start_time: "05:00", 
    #             weekly_maintenance_start_time: "1:05:00", 
    #           }, 
    #         }, 
    #         lifecycle: "AVAILABLE", 
    #         resource_arn: "arn:aws:fsx:us-east-1:012345678912:backup/backup-03e3c82e0183b7b6b", 
    #         tags: [
    #           {
    #             key: "Name", 
    #             value: "MyBackup", 
    #           }, 
    #         ], 
    #         type: "USER_INITIATED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backups({
    #     backup_ids: ["BackupId"],
    #     filters: [
    #       {
    #         name: "file-system-id", # accepts file-system-id, backup-type, file-system-type, volume-id, data-repository-type, file-cache-id, file-cache-type
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.backups #=> Array
    #   resp.backups[0].backup_id #=> String
    #   resp.backups[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"
    #   resp.backups[0].failure_details.message #=> String
    #   resp.backups[0].type #=> String, one of "AUTOMATIC", "USER_INITIATED", "AWS_BACKUP"
    #   resp.backups[0].progress_percent #=> Integer
    #   resp.backups[0].creation_time #=> Time
    #   resp.backups[0].kms_key_id #=> String
    #   resp.backups[0].resource_arn #=> String
    #   resp.backups[0].tags #=> Array
    #   resp.backups[0].tags[0].key #=> String
    #   resp.backups[0].tags[0].value #=> String
    #   resp.backups[0].file_system.owner_id #=> String
    #   resp.backups[0].file_system.creation_time #=> Time
    #   resp.backups[0].file_system.file_system_id #=> String
    #   resp.backups[0].file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.backups[0].file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.backups[0].file_system.failure_details.message #=> String
    #   resp.backups[0].file_system.storage_capacity #=> Integer
    #   resp.backups[0].file_system.storage_type #=> String, one of "SSD", "HDD"
    #   resp.backups[0].file_system.vpc_id #=> String
    #   resp.backups[0].file_system.subnet_ids #=> Array
    #   resp.backups[0].file_system.subnet_ids[0] #=> String
    #   resp.backups[0].file_system.network_interface_ids #=> Array
    #   resp.backups[0].file_system.network_interface_ids[0] #=> String
    #   resp.backups[0].file_system.dns_name #=> String
    #   resp.backups[0].file_system.kms_key_id #=> String
    #   resp.backups[0].file_system.resource_arn #=> String
    #   resp.backups[0].file_system.tags #=> Array
    #   resp.backups[0].file_system.tags[0].key #=> String
    #   resp.backups[0].file_system.tags[0].value #=> String
    #   resp.backups[0].file_system.windows_configuration.active_directory_id #=> String
    #   resp.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.backups[0].file_system.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backups[0].file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.backups[0].file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.backups[0].file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.backups[0].file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.backups[0].file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.backups[0].file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.backups[0].file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backups[0].file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backups[0].file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backups[0].file_system.windows_configuration.aliases #=> Array
    #   resp.backups[0].file_system.windows_configuration.aliases[0].name #=> String
    #   resp.backups[0].file_system.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.backups[0].file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backups[0].file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backups[0].file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.backups[0].file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.backups[0].file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.backups[0].file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.backups[0].file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.backups[0].file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.backups[0].file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.backups[0].file_system.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.backups[0].file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.backups[0].file_system.lustre_configuration.mount_name #=> String
    #   resp.backups[0].file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backups[0].file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backups[0].file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backups[0].file_system.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.backups[0].file_system.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.backups[0].file_system.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.backups[0].file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.backups[0].file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.backups[0].file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.backups[0].file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.backups[0].file_system.administrative_actions #=> Array
    #   resp.backups[0].file_system.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.backups[0].file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].request_time #=> Time
    #   resp.backups[0].file_system.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.backups[0].file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.backups[0].file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.backups[0].file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backups[0].file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backups[0].file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backups[0].file_system.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.backups[0].file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.backups[0].file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.backups[0].file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.backups[0].file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.backups[0].file_system.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.backups[0].file_system.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.backups[0].file_system.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.backups[0].file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backups[0].file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backups[0].file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.backups[0].file_system.ontap_configuration.route_table_ids #=> Array
    #   resp.backups[0].file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.backups[0].file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.backups[0].file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].file_system.ontap_configuration.fsx_admin_password #=> String
    #   resp.backups[0].file_system.file_system_type_version #=> String
    #   resp.backups[0].file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backups[0].file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backups[0].file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.backups[0].file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backups[0].file_system.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backups[0].file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.backups[0].file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].file_system.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backups[0].file_system.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backups[0].file_system.open_zfs_configuration.root_volume_id #=> String
    #   resp.backups[0].directory_information.domain_name #=> String
    #   resp.backups[0].directory_information.active_directory_id #=> String
    #   resp.backups[0].directory_information.resource_arn #=> String
    #   resp.backups[0].owner_id #=> String
    #   resp.backups[0].source_backup_id #=> String
    #   resp.backups[0].source_backup_region #=> String
    #   resp.backups[0].resource_type #=> String, one of "FILE_SYSTEM", "VOLUME"
    #   resp.backups[0].volume.creation_time #=> Time
    #   resp.backups[0].volume.file_system_id #=> String
    #   resp.backups[0].volume.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.backups[0].volume.name #=> String
    #   resp.backups[0].volume.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.backups[0].volume.ontap_configuration.junction_path #=> String
    #   resp.backups[0].volume.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.backups[0].volume.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.backups[0].volume.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.backups[0].volume.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.backups[0].volume.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.backups[0].volume.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.backups[0].volume.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.backups[0].volume.ontap_configuration.uuid #=> String
    #   resp.backups[0].volume.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.backups[0].volume.ontap_configuration.snapshot_policy #=> String
    #   resp.backups[0].volume.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.backups[0].volume.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.backups[0].volume.resource_arn #=> String
    #   resp.backups[0].volume.tags #=> Array
    #   resp.backups[0].volume.tags[0].key #=> String
    #   resp.backups[0].volume.tags[0].value #=> String
    #   resp.backups[0].volume.volume_id #=> String
    #   resp.backups[0].volume.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.backups[0].volume.lifecycle_transition_reason.message #=> String
    #   resp.backups[0].volume.administrative_actions #=> Array
    #   resp.backups[0].volume.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.backups[0].volume.administrative_actions[0].progress_percent #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].request_time #=> Time
    #   resp.backups[0].volume.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.backups[0].volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].failure_details.message #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.backups[0].volume.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.backups[0].volume.open_zfs_configuration.parent_volume_id #=> String
    #   resp.backups[0].volume.open_zfs_configuration.volume_path #=> String
    #   resp.backups[0].volume.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.backups[0].volume.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.backups[0].volume.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.backups[0].volume.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.backups[0].volume.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.backups[0].volume.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.backups[0].volume.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.backups[0].volume.open_zfs_configuration.read_only #=> Boolean
    #   resp.backups[0].volume.open_zfs_configuration.nfs_exports #=> Array
    #   resp.backups[0].volume.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.backups[0].volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.backups[0].volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.backups[0].volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.backups[0].volume.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.backups[0].volume.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.backups[0].volume.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.backups[0].volume.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.backups[0].volume.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.backups[0].volume.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.backups[0].volume.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeBackups AWS API Documentation
    #
    # @overload describe_backups(params = {})
    # @param [Hash] params ({})
    def describe_backups(params = {}, options = {})
      req = build_request(:describe_backups, params)
      req.send_request(options)
    end

    # Returns the description of specific Amazon FSx for Lustre or Amazon
    # File Cache data repository associations, if one or more
    # `AssociationIds` values are provided in the request, or if filters are
    # used in the request. Data repository associations are supported on
    # Amazon File Cache resources and all FSx for Lustre 2.12 and newer file
    # systems, excluding `scratch_1` deployment type.
    #
    # You can use filters to narrow the response to include just data
    # repository associations for specific file systems (use the
    # `file-system-id` filter with the ID of the file system) or caches (use
    # the `file-cache-id` filter with the ID of the cache), or data
    # repository associations for a specific repository type (use the
    # `data-repository-type` filter with a value of `S3` or `NFS`). If you
    # don't use filters, the response returns all data repository
    # associations owned by your Amazon Web Services account in the Amazon
    # Web Services Region of the endpoint that you're calling.
    #
    # When retrieving all data repository associations, you can paginate the
    # response by using the optional `MaxResults` parameter to limit the
    # number of data repository associations returned in a response. If more
    # data repository associations remain, a `NextToken` value is returned
    # in the response. In this case, send a later request with the
    # `NextToken` request parameter set to the value of `NextToken` from the
    # last response.
    #
    # @option params [Array<String>] :association_ids
    #   IDs of the data repository associations whose descriptions you want to
    #   retrieve (String).
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of `Filter` elements.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resources to return in the response. This value
    #   must be an integer greater than zero.
    #
    # @option params [String] :next_token
    #   (Optional) Opaque pagination token returned from a previous operation
    #   (String). If present, this token indicates from what point you can
    #   continue processing the request, where the previous `NextToken` value
    #   left off.
    #
    # @return [Types::DescribeDataRepositoryAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataRepositoryAssociationsResponse#associations #associations} => Array&lt;Types::DataRepositoryAssociation&gt;
    #   * {Types::DescribeDataRepositoryAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_repository_associations({
    #     association_ids: ["DataRepositoryAssociationId"],
    #     filters: [
    #       {
    #         name: "file-system-id", # accepts file-system-id, backup-type, file-system-type, volume-id, data-repository-type, file-cache-id, file-cache-type
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].association_id #=> String
    #   resp.associations[0].resource_arn #=> String
    #   resp.associations[0].file_system_id #=> String
    #   resp.associations[0].lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.associations[0].failure_details.message #=> String
    #   resp.associations[0].file_system_path #=> String
    #   resp.associations[0].data_repository_path #=> String
    #   resp.associations[0].batch_import_meta_data_on_create #=> Boolean
    #   resp.associations[0].imported_file_chunk_size #=> Integer
    #   resp.associations[0].s3.auto_import_policy.events #=> Array
    #   resp.associations[0].s3.auto_import_policy.events[0] #=> String, one of "NEW", "CHANGED", "DELETED"
    #   resp.associations[0].s3.auto_export_policy.events #=> Array
    #   resp.associations[0].s3.auto_export_policy.events[0] #=> String, one of "NEW", "CHANGED", "DELETED"
    #   resp.associations[0].tags #=> Array
    #   resp.associations[0].tags[0].key #=> String
    #   resp.associations[0].tags[0].value #=> String
    #   resp.associations[0].creation_time #=> Time
    #   resp.associations[0].file_cache_id #=> String
    #   resp.associations[0].file_cache_path #=> String
    #   resp.associations[0].data_repository_subdirectories #=> Array
    #   resp.associations[0].data_repository_subdirectories[0] #=> String
    #   resp.associations[0].nfs.version #=> String, one of "NFS3"
    #   resp.associations[0].nfs.dns_ips #=> Array
    #   resp.associations[0].nfs.dns_ips[0] #=> String
    #   resp.associations[0].nfs.auto_export_policy.events #=> Array
    #   resp.associations[0].nfs.auto_export_policy.events[0] #=> String, one of "NEW", "CHANGED", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeDataRepositoryAssociations AWS API Documentation
    #
    # @overload describe_data_repository_associations(params = {})
    # @param [Hash] params ({})
    def describe_data_repository_associations(params = {}, options = {})
      req = build_request(:describe_data_repository_associations, params)
      req.send_request(options)
    end

    # Returns the description of specific Amazon FSx for Lustre or Amazon
    # File Cache data repository tasks, if one or more `TaskIds` values are
    # provided in the request, or if filters are used in the request. You
    # can use filters to narrow the response to include just tasks for
    # specific file systems or caches, or tasks in a specific lifecycle
    # state. Otherwise, it returns all data repository tasks owned by your
    # Amazon Web Services account in the Amazon Web Services Region of the
    # endpoint that you're calling.
    #
    # When retrieving all tasks, you can paginate the response by using the
    # optional `MaxResults` parameter to limit the number of tasks returned
    # in a response. If more tasks remain, a `NextToken` value is returned
    # in the response. In this case, send a later request with the
    # `NextToken` request parameter set to the value of `NextToken` from the
    # last response.
    #
    # @option params [Array<String>] :task_ids
    #   (Optional) IDs of the tasks whose descriptions you want to retrieve
    #   (String).
    #
    # @option params [Array<Types::DataRepositoryTaskFilter>] :filters
    #   (Optional) You can use filters to narrow the
    #   `DescribeDataRepositoryTasks` response to include just tasks for
    #   specific file systems, or tasks in a specific lifecycle state.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resources to return in the response. This value
    #   must be an integer greater than zero.
    #
    # @option params [String] :next_token
    #   (Optional) Opaque pagination token returned from a previous operation
    #   (String). If present, this token indicates from what point you can
    #   continue processing the request, where the previous `NextToken` value
    #   left off.
    #
    # @return [Types::DescribeDataRepositoryTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataRepositoryTasksResponse#data_repository_tasks #data_repository_tasks} => Array&lt;Types::DataRepositoryTask&gt;
    #   * {Types::DescribeDataRepositoryTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_repository_tasks({
    #     task_ids: ["TaskId"],
    #     filters: [
    #       {
    #         name: "file-system-id", # accepts file-system-id, task-lifecycle, data-repository-association-id, file-cache-id
    #         values: ["DataRepositoryTaskFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_repository_tasks #=> Array
    #   resp.data_repository_tasks[0].task_id #=> String
    #   resp.data_repository_tasks[0].lifecycle #=> String, one of "PENDING", "EXECUTING", "FAILED", "SUCCEEDED", "CANCELED", "CANCELING"
    #   resp.data_repository_tasks[0].type #=> String, one of "EXPORT_TO_REPOSITORY", "IMPORT_METADATA_FROM_REPOSITORY", "RELEASE_DATA_FROM_FILESYSTEM", "AUTO_RELEASE_DATA"
    #   resp.data_repository_tasks[0].creation_time #=> Time
    #   resp.data_repository_tasks[0].start_time #=> Time
    #   resp.data_repository_tasks[0].end_time #=> Time
    #   resp.data_repository_tasks[0].resource_arn #=> String
    #   resp.data_repository_tasks[0].tags #=> Array
    #   resp.data_repository_tasks[0].tags[0].key #=> String
    #   resp.data_repository_tasks[0].tags[0].value #=> String
    #   resp.data_repository_tasks[0].file_system_id #=> String
    #   resp.data_repository_tasks[0].paths #=> Array
    #   resp.data_repository_tasks[0].paths[0] #=> String
    #   resp.data_repository_tasks[0].failure_details.message #=> String
    #   resp.data_repository_tasks[0].status.total_count #=> Integer
    #   resp.data_repository_tasks[0].status.succeeded_count #=> Integer
    #   resp.data_repository_tasks[0].status.failed_count #=> Integer
    #   resp.data_repository_tasks[0].status.last_updated_time #=> Time
    #   resp.data_repository_tasks[0].status.released_capacity #=> Integer
    #   resp.data_repository_tasks[0].report.enabled #=> Boolean
    #   resp.data_repository_tasks[0].report.path #=> String
    #   resp.data_repository_tasks[0].report.format #=> String, one of "REPORT_CSV_20191124"
    #   resp.data_repository_tasks[0].report.scope #=> String, one of "FAILED_FILES_ONLY"
    #   resp.data_repository_tasks[0].capacity_to_release #=> Integer
    #   resp.data_repository_tasks[0].file_cache_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeDataRepositoryTasks AWS API Documentation
    #
    # @overload describe_data_repository_tasks(params = {})
    # @param [Hash] params ({})
    def describe_data_repository_tasks(params = {}, options = {})
      req = build_request(:describe_data_repository_tasks, params)
      req.send_request(options)
    end

    # Returns the description of a specific Amazon File Cache resource, if a
    # `FileCacheIds` value is provided for that cache. Otherwise, it returns
    # descriptions of all caches owned by your Amazon Web Services account
    # in the Amazon Web Services Region of the endpoint that you're
    # calling.
    #
    # When retrieving all cache descriptions, you can optionally specify the
    # `MaxResults` parameter to limit the number of descriptions in a
    # response. If more cache descriptions remain, the operation returns a
    # `NextToken` value in the response. In this case, send a later request
    # with the `NextToken` request parameter set to the value of `NextToken`
    # from the last response.
    #
    # This operation is used in an iterative process to retrieve a list of
    # your cache descriptions. `DescribeFileCaches` is called first without
    # a `NextToken`value. Then the operation continues to be called with the
    # `NextToken` parameter set to the value of the last `NextToken` value
    # until a response has no `NextToken`.
    #
    # When using this operation, keep the following in mind:
    #
    # * The implementation might return fewer than `MaxResults` cache
    #   descriptions while still including a `NextToken` value.
    #
    # * The order of caches returned in the response of one
    #   `DescribeFileCaches` call and the order of caches returned across
    #   the responses of a multicall iteration is unspecified.
    #
    # @option params [Array<String>] :file_cache_ids
    #   IDs of the caches whose descriptions you want to retrieve (String).
    #
    # @option params [Integer] :max_results
    #   The maximum number of resources to return in the response. This value
    #   must be an integer greater than zero.
    #
    # @option params [String] :next_token
    #   (Optional) Opaque pagination token returned from a previous operation
    #   (String). If present, this token indicates from what point you can
    #   continue processing the request, where the previous `NextToken` value
    #   left off.
    #
    # @return [Types::DescribeFileCachesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFileCachesResponse#file_caches #file_caches} => Array&lt;Types::FileCache&gt;
    #   * {Types::DescribeFileCachesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_caches({
    #     file_cache_ids: ["FileCacheId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.file_caches #=> Array
    #   resp.file_caches[0].owner_id #=> String
    #   resp.file_caches[0].creation_time #=> Time
    #   resp.file_caches[0].file_cache_id #=> String
    #   resp.file_caches[0].file_cache_type #=> String, one of "LUSTRE"
    #   resp.file_caches[0].file_cache_type_version #=> String
    #   resp.file_caches[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"
    #   resp.file_caches[0].failure_details.message #=> String
    #   resp.file_caches[0].storage_capacity #=> Integer
    #   resp.file_caches[0].vpc_id #=> String
    #   resp.file_caches[0].subnet_ids #=> Array
    #   resp.file_caches[0].subnet_ids[0] #=> String
    #   resp.file_caches[0].network_interface_ids #=> Array
    #   resp.file_caches[0].network_interface_ids[0] #=> String
    #   resp.file_caches[0].dns_name #=> String
    #   resp.file_caches[0].kms_key_id #=> String
    #   resp.file_caches[0].resource_arn #=> String
    #   resp.file_caches[0].lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.file_caches[0].lustre_configuration.deployment_type #=> String, one of "CACHE_1"
    #   resp.file_caches[0].lustre_configuration.mount_name #=> String
    #   resp.file_caches[0].lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_caches[0].lustre_configuration.metadata_configuration.storage_capacity #=> Integer
    #   resp.file_caches[0].lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.file_caches[0].lustre_configuration.log_configuration.destination #=> String
    #   resp.file_caches[0].data_repository_association_ids #=> Array
    #   resp.file_caches[0].data_repository_association_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeFileCaches AWS API Documentation
    #
    # @overload describe_file_caches(params = {})
    # @param [Hash] params ({})
    def describe_file_caches(params = {}, options = {})
      req = build_request(:describe_file_caches, params)
      req.send_request(options)
    end

    # Returns the DNS aliases that are associated with the specified Amazon
    # FSx for Windows File Server file system. A history of all DNS aliases
    # that have been associated with and disassociated from the file system
    # is available in the list of AdministrativeAction provided in the
    # DescribeFileSystems operation response.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system to return the associated DNS aliases for
    #   (String).
    #
    # @option params [Integer] :max_results
    #   Maximum number of DNS aliases to return in the response (integer).
    #   This parameter value must be greater than 0. The number of items that
    #   Amazon FSx returns is the minimum of the `MaxResults` parameter
    #   specified in the request and the service's internal maximum number of
    #   items per page.
    #
    # @option params [String] :next_token
    #   Opaque pagination token returned from a previous
    #   `DescribeFileSystemAliases` operation (String). If a token is included
    #   in the request, the action continues the list from where the previous
    #   returning call left off.
    #
    # @return [Types::DescribeFileSystemAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFileSystemAliasesResponse#aliases #aliases} => Array&lt;Types::Alias&gt;
    #   * {Types::DescribeFileSystemAliasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_system_aliases({
    #     client_request_token: "ClientRequestToken",
    #     file_system_id: "FileSystemId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0].name #=> String
    #   resp.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeFileSystemAliases AWS API Documentation
    #
    # @overload describe_file_system_aliases(params = {})
    # @param [Hash] params ({})
    def describe_file_system_aliases(params = {}, options = {})
      req = build_request(:describe_file_system_aliases, params)
      req.send_request(options)
    end

    # Returns the description of specific Amazon FSx file systems, if a
    # `FileSystemIds` value is provided for that file system. Otherwise, it
    # returns descriptions of all file systems owned by your Amazon Web
    # Services account in the Amazon Web Services Region of the endpoint
    # that you're calling.
    #
    # When retrieving all file system descriptions, you can optionally
    # specify the `MaxResults` parameter to limit the number of descriptions
    # in a response. If more file system descriptions remain, Amazon FSx
    # returns a `NextToken` value in the response. In this case, send a
    # later request with the `NextToken` request parameter set to the value
    # of `NextToken` from the last response.
    #
    # This operation is used in an iterative process to retrieve a list of
    # your file system descriptions. `DescribeFileSystems` is called first
    # without a `NextToken`value. Then the operation continues to be called
    # with the `NextToken` parameter set to the value of the last
    # `NextToken` value until a response has no `NextToken`.
    #
    # When using this operation, keep the following in mind:
    #
    # * The implementation might return fewer than `MaxResults` file system
    #   descriptions while still including a `NextToken` value.
    #
    # * The order of file systems returned in the response of one
    #   `DescribeFileSystems` call and the order of file systems returned
    #   across the responses of a multicall iteration is unspecified.
    #
    # @option params [Array<String>] :file_system_ids
    #   IDs of the file systems whose descriptions you want to retrieve
    #   (String).
    #
    # @option params [Integer] :max_results
    #   Maximum number of file systems to return in the response (integer).
    #   This parameter value must be greater than 0. The number of items that
    #   Amazon FSx returns is the minimum of the `MaxResults` parameter
    #   specified in the request and the service's internal maximum number of
    #   items per page.
    #
    # @option params [String] :next_token
    #   Opaque pagination token returned from a previous `DescribeFileSystems`
    #   operation (String). If a token present, the operation continues the
    #   list from where the returning call left off.
    #
    # @return [Types::DescribeFileSystemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFileSystemsResponse#file_systems #file_systems} => Array&lt;Types::FileSystem&gt;
    #   * {Types::DescribeFileSystemsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe an Amazon FSx file system
    #
    #   # This operation describes all of the Amazon FSx file systems in an account.
    #
    #   resp = client.describe_file_systems({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_systems: [
    #       {
    #         creation_time: Time.parse("1481841524.0"), 
    #         dns_name: "fs-0498eed5fe91001ec.fsx.com", 
    #         file_system_id: "fs-0498eed5fe91001ec", 
    #         kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6", 
    #         lifecycle: "AVAILABLE", 
    #         network_interface_ids: [
    #           "eni-abcd1234", 
    #         ], 
    #         owner_id: "012345678912", 
    #         resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #         storage_capacity: 300, 
    #         subnet_ids: [
    #           "subnet-1234abcd", 
    #         ], 
    #         tags: [
    #           {
    #             key: "Name", 
    #             value: "MyFileSystem", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-ab1234cd", 
    #         windows_configuration: {
    #           active_directory_id: "d-1234abcd12", 
    #           automatic_backup_retention_days: 30, 
    #           daily_automatic_backup_start_time: "05:00", 
    #           throughput_capacity: 8, 
    #           weekly_maintenance_start_time: "1:05:00", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_systems({
    #     file_system_ids: ["FileSystemId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.file_systems #=> Array
    #   resp.file_systems[0].owner_id #=> String
    #   resp.file_systems[0].creation_time #=> Time
    #   resp.file_systems[0].file_system_id #=> String
    #   resp.file_systems[0].file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.file_systems[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.file_systems[0].failure_details.message #=> String
    #   resp.file_systems[0].storage_capacity #=> Integer
    #   resp.file_systems[0].storage_type #=> String, one of "SSD", "HDD"
    #   resp.file_systems[0].vpc_id #=> String
    #   resp.file_systems[0].subnet_ids #=> Array
    #   resp.file_systems[0].subnet_ids[0] #=> String
    #   resp.file_systems[0].network_interface_ids #=> Array
    #   resp.file_systems[0].network_interface_ids[0] #=> String
    #   resp.file_systems[0].dns_name #=> String
    #   resp.file_systems[0].kms_key_id #=> String
    #   resp.file_systems[0].resource_arn #=> String
    #   resp.file_systems[0].tags #=> Array
    #   resp.file_systems[0].tags[0].key #=> String
    #   resp.file_systems[0].tags[0].value #=> String
    #   resp.file_systems[0].windows_configuration.active_directory_id #=> String
    #   resp.file_systems[0].windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.file_systems[0].windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.file_systems[0].windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.file_systems[0].windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.file_systems[0].windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.file_systems[0].windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.file_systems[0].windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_systems[0].windows_configuration.remote_administration_endpoint #=> String
    #   resp.file_systems[0].windows_configuration.preferred_subnet_id #=> String
    #   resp.file_systems[0].windows_configuration.preferred_file_server_ip #=> String
    #   resp.file_systems[0].windows_configuration.throughput_capacity #=> Integer
    #   resp.file_systems[0].windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.file_systems[0].windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.file_systems[0].windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_systems[0].windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_systems[0].windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_systems[0].windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_systems[0].windows_configuration.aliases #=> Array
    #   resp.file_systems[0].windows_configuration.aliases[0].name #=> String
    #   resp.file_systems[0].windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.file_systems[0].windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_systems[0].windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_systems[0].windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.file_systems[0].lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_systems[0].lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.file_systems[0].lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.file_systems[0].lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.file_systems[0].lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.file_systems[0].lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.file_systems[0].lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.file_systems[0].lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.file_systems[0].lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.file_systems[0].lustre_configuration.mount_name #=> String
    #   resp.file_systems[0].lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_systems[0].lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_systems[0].lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_systems[0].lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.file_systems[0].lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.file_systems[0].lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.file_systems[0].lustre_configuration.log_configuration.destination #=> String
    #   resp.file_systems[0].lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.file_systems[0].lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.file_systems[0].lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.file_systems[0].administrative_actions #=> Array
    #   resp.file_systems[0].administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.file_systems[0].administrative_actions[0].progress_percent #=> Integer
    #   resp.file_systems[0].administrative_actions[0].request_time #=> Time
    #   resp.file_systems[0].administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.file_systems[0].administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.file_systems[0].administrative_actions[0].failure_details.message #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.name #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.file_systems[0].administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_systems[0].ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_systems[0].ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_systems[0].ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.file_systems[0].ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.file_systems[0].ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.file_systems[0].ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.file_systems[0].ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.file_systems[0].ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.file_systems[0].ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.file_systems[0].ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.file_systems[0].ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_systems[0].ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_systems[0].ontap_configuration.preferred_subnet_id #=> String
    #   resp.file_systems[0].ontap_configuration.route_table_ids #=> Array
    #   resp.file_systems[0].ontap_configuration.route_table_ids[0] #=> String
    #   resp.file_systems[0].ontap_configuration.throughput_capacity #=> Integer
    #   resp.file_systems[0].ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_systems[0].ontap_configuration.fsx_admin_password #=> String
    #   resp.file_systems[0].file_system_type_version #=> String
    #   resp.file_systems[0].open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_systems[0].open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_systems[0].open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.file_systems[0].open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_systems[0].open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_systems[0].open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.file_systems[0].open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_systems[0].open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_systems[0].open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_systems[0].open_zfs_configuration.root_volume_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeFileSystems AWS API Documentation
    #
    # @overload describe_file_systems(params = {})
    # @param [Hash] params ({})
    def describe_file_systems(params = {}, options = {})
      req = build_request(:describe_file_systems, params)
      req.send_request(options)
    end

    # Returns the description of specific Amazon FSx for OpenZFS snapshots,
    # if a `SnapshotIds` value is provided. Otherwise, this operation
    # returns all snapshots owned by your Amazon Web Services account in the
    # Amazon Web Services Region of the endpoint that you're calling.
    #
    # When retrieving all snapshots, you can optionally specify the
    # `MaxResults` parameter to limit the number of snapshots in a response.
    # If more backups remain, Amazon FSx returns a `NextToken` value in the
    # response. In this case, send a later request with the `NextToken`
    # request parameter set to the value of `NextToken` from the last
    # response.
    #
    # Use this operation in an iterative process to retrieve a list of your
    # snapshots. `DescribeSnapshots` is called first without a `NextToken`
    # value. Then the operation continues to be called with the `NextToken`
    # parameter set to the value of the last `NextToken` value until a
    # response has no `NextToken` value.
    #
    # When using this operation, keep the following in mind:
    #
    # * The operation might return fewer than the `MaxResults` value of
    #   snapshot descriptions while still including a `NextToken` value.
    #
    # * The order of snapshots returned in the response of one
    #   `DescribeSnapshots` call and the order of backups returned across
    #   the responses of a multi-call iteration is unspecified.
    #
    # @option params [Array<String>] :snapshot_ids
    #   The IDs of the snapshots that you want to retrieve. This parameter
    #   value overrides any filters. If any IDs aren't found, a
    #   `SnapshotNotFound` error occurs.
    #
    # @option params [Array<Types::SnapshotFilter>] :filters
    #   The filters structure. The supported names are `file-system-id` or
    #   `volume-id`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resources to return in the response. This value
    #   must be an integer greater than zero.
    #
    # @option params [String] :next_token
    #   (Optional) Opaque pagination token returned from a previous operation
    #   (String). If present, this token indicates from what point you can
    #   continue processing the request, where the previous `NextToken` value
    #   left off.
    #
    # @return [Types::DescribeSnapshotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSnapshotsResponse#snapshots #snapshots} => Array&lt;Types::Snapshot&gt;
    #   * {Types::DescribeSnapshotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshots({
    #     snapshot_ids: ["SnapshotId"],
    #     filters: [
    #       {
    #         name: "file-system-id", # accepts file-system-id, volume-id
    #         values: ["SnapshotFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].resource_arn #=> String
    #   resp.snapshots[0].snapshot_id #=> String
    #   resp.snapshots[0].name #=> String
    #   resp.snapshots[0].volume_id #=> String
    #   resp.snapshots[0].creation_time #=> Time
    #   resp.snapshots[0].lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.snapshots[0].lifecycle_transition_reason.message #=> String
    #   resp.snapshots[0].tags #=> Array
    #   resp.snapshots[0].tags[0].key #=> String
    #   resp.snapshots[0].tags[0].value #=> String
    #   resp.snapshots[0].administrative_actions #=> Array
    #   resp.snapshots[0].administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.snapshots[0].administrative_actions[0].progress_percent #=> Integer
    #   resp.snapshots[0].administrative_actions[0].request_time #=> Time
    #   resp.snapshots[0].administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.snapshots[0].administrative_actions[0].failure_details.message #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.name #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.snapshots[0].administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeSnapshots AWS API Documentation
    #
    # @overload describe_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_snapshots(params = {}, options = {})
      req = build_request(:describe_snapshots, params)
      req.send_request(options)
    end

    # Describes one or more Amazon FSx for NetApp ONTAP storage virtual
    # machines (SVMs).
    #
    # @option params [Array<String>] :storage_virtual_machine_ids
    #   Enter the ID of one or more SVMs that you want to view.
    #
    # @option params [Array<Types::StorageVirtualMachineFilter>] :filters
    #   Enter a filter name:value pair to view a select set of SVMs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resources to return in the response. This value
    #   must be an integer greater than zero.
    #
    # @option params [String] :next_token
    #   (Optional) Opaque pagination token returned from a previous operation
    #   (String). If present, this token indicates from what point you can
    #   continue processing the request, where the previous `NextToken` value
    #   left off.
    #
    # @return [Types::DescribeStorageVirtualMachinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStorageVirtualMachinesResponse#storage_virtual_machines #storage_virtual_machines} => Array&lt;Types::StorageVirtualMachine&gt;
    #   * {Types::DescribeStorageVirtualMachinesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_storage_virtual_machines({
    #     storage_virtual_machine_ids: ["StorageVirtualMachineId"],
    #     filters: [
    #       {
    #         name: "file-system-id", # accepts file-system-id
    #         values: ["StorageVirtualMachineFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_virtual_machines #=> Array
    #   resp.storage_virtual_machines[0].active_directory_configuration.net_bios_name #=> String
    #   resp.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.storage_virtual_machines[0].creation_time #=> Time
    #   resp.storage_virtual_machines[0].endpoints.iscsi.dns_name #=> String
    #   resp.storage_virtual_machines[0].endpoints.iscsi.ip_addresses #=> Array
    #   resp.storage_virtual_machines[0].endpoints.iscsi.ip_addresses[0] #=> String
    #   resp.storage_virtual_machines[0].endpoints.management.dns_name #=> String
    #   resp.storage_virtual_machines[0].endpoints.management.ip_addresses #=> Array
    #   resp.storage_virtual_machines[0].endpoints.management.ip_addresses[0] #=> String
    #   resp.storage_virtual_machines[0].endpoints.nfs.dns_name #=> String
    #   resp.storage_virtual_machines[0].endpoints.nfs.ip_addresses #=> Array
    #   resp.storage_virtual_machines[0].endpoints.nfs.ip_addresses[0] #=> String
    #   resp.storage_virtual_machines[0].endpoints.smb.dns_name #=> String
    #   resp.storage_virtual_machines[0].endpoints.smb.ip_addresses #=> Array
    #   resp.storage_virtual_machines[0].endpoints.smb.ip_addresses[0] #=> String
    #   resp.storage_virtual_machines[0].file_system_id #=> String
    #   resp.storage_virtual_machines[0].lifecycle #=> String, one of "CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"
    #   resp.storage_virtual_machines[0].name #=> String
    #   resp.storage_virtual_machines[0].resource_arn #=> String
    #   resp.storage_virtual_machines[0].storage_virtual_machine_id #=> String
    #   resp.storage_virtual_machines[0].subtype #=> String, one of "DEFAULT", "DP_DESTINATION", "SYNC_DESTINATION", "SYNC_SOURCE"
    #   resp.storage_virtual_machines[0].uuid #=> String
    #   resp.storage_virtual_machines[0].tags #=> Array
    #   resp.storage_virtual_machines[0].tags[0].key #=> String
    #   resp.storage_virtual_machines[0].tags[0].value #=> String
    #   resp.storage_virtual_machines[0].lifecycle_transition_reason.message #=> String
    #   resp.storage_virtual_machines[0].root_volume_security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeStorageVirtualMachines AWS API Documentation
    #
    # @overload describe_storage_virtual_machines(params = {})
    # @param [Hash] params ({})
    def describe_storage_virtual_machines(params = {}, options = {})
      req = build_request(:describe_storage_virtual_machines, params)
      req.send_request(options)
    end

    # Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for
    # OpenZFS volumes.
    #
    # @option params [Array<String>] :volume_ids
    #   The IDs of the volumes whose descriptions you want to retrieve.
    #
    # @option params [Array<Types::VolumeFilter>] :filters
    #   Enter a filter `Name` and `Values` pair to view a select set of
    #   volumes.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resources to return in the response. This value
    #   must be an integer greater than zero.
    #
    # @option params [String] :next_token
    #   (Optional) Opaque pagination token returned from a previous operation
    #   (String). If present, this token indicates from what point you can
    #   continue processing the request, where the previous `NextToken` value
    #   left off.
    #
    # @return [Types::DescribeVolumesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVolumesResponse#volumes #volumes} => Array&lt;Types::Volume&gt;
    #   * {Types::DescribeVolumesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_volumes({
    #     volume_ids: ["VolumeId"],
    #     filters: [
    #       {
    #         name: "file-system-id", # accepts file-system-id, storage-virtual-machine-id
    #         values: ["VolumeFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.volumes #=> Array
    #   resp.volumes[0].creation_time #=> Time
    #   resp.volumes[0].file_system_id #=> String
    #   resp.volumes[0].lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.volumes[0].name #=> String
    #   resp.volumes[0].ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.volumes[0].ontap_configuration.junction_path #=> String
    #   resp.volumes[0].ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.volumes[0].ontap_configuration.size_in_megabytes #=> Integer
    #   resp.volumes[0].ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.volumes[0].ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.volumes[0].ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.volumes[0].ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.volumes[0].ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.volumes[0].ontap_configuration.uuid #=> String
    #   resp.volumes[0].ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.volumes[0].ontap_configuration.snapshot_policy #=> String
    #   resp.volumes[0].ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.volumes[0].ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.volumes[0].resource_arn #=> String
    #   resp.volumes[0].tags #=> Array
    #   resp.volumes[0].tags[0].key #=> String
    #   resp.volumes[0].tags[0].value #=> String
    #   resp.volumes[0].volume_id #=> String
    #   resp.volumes[0].volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.volumes[0].lifecycle_transition_reason.message #=> String
    #   resp.volumes[0].administrative_actions #=> Array
    #   resp.volumes[0].administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.volumes[0].administrative_actions[0].progress_percent #=> Integer
    #   resp.volumes[0].administrative_actions[0].request_time #=> Time
    #   resp.volumes[0].administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.volumes[0].administrative_actions[0].failure_details.message #=> String
    #   resp.volumes[0].administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.volumes[0].administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.volumes[0].open_zfs_configuration.parent_volume_id #=> String
    #   resp.volumes[0].open_zfs_configuration.volume_path #=> String
    #   resp.volumes[0].open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.volumes[0].open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.volumes[0].open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.volumes[0].open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.volumes[0].open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.volumes[0].open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.volumes[0].open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.volumes[0].open_zfs_configuration.read_only #=> Boolean
    #   resp.volumes[0].open_zfs_configuration.nfs_exports #=> Array
    #   resp.volumes[0].open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.volumes[0].open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.volumes[0].open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.volumes[0].open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.volumes[0].open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.volumes[0].open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.volumes[0].open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.volumes[0].open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.volumes[0].open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.volumes[0].open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.volumes[0].open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeVolumes AWS API Documentation
    #
    # @overload describe_volumes(params = {})
    # @param [Hash] params ({})
    def describe_volumes(params = {}, options = {})
      req = build_request(:describe_volumes, params)
      req.send_request(options)
    end

    # Use this action to disassociate, or remove, one or more Domain Name
    # Service (DNS) aliases from an Amazon FSx for Windows File Server file
    # system. If you attempt to disassociate a DNS alias that is not
    # associated with the file system, Amazon FSx responds with a 400 Bad
    # Request. For more information, see [Working with DNS Aliases][1].
    #
    # The system generated response showing the DNS aliases that Amazon FSx
    # is attempting to disassociate from the file system. Use the API
    # operation to monitor the status of the aliases Amazon FSx is
    # disassociating with the file system.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :file_system_id
    #   Specifies the file system from which to disassociate the DNS aliases.
    #
    # @option params [required, Array<String>] :aliases
    #   An array of one or more DNS alias names to disassociate, or remove,
    #   from the file system.
    #
    # @return [Types::DisassociateFileSystemAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateFileSystemAliasesResponse#aliases #aliases} => Array&lt;Types::Alias&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_file_system_aliases({
    #     client_request_token: "ClientRequestToken",
    #     file_system_id: "FileSystemId", # required
    #     aliases: ["AlternateDNSName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0].name #=> String
    #   resp.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DisassociateFileSystemAliases AWS API Documentation
    #
    # @overload disassociate_file_system_aliases(params = {})
    # @param [Hash] params ({})
    def disassociate_file_system_aliases(params = {}, options = {})
      req = build_request(:disassociate_file_system_aliases, params)
      req.send_request(options)
    end

    # Lists tags for Amazon FSx resources.
    #
    # When retrieving all tags, you can optionally specify the `MaxResults`
    # parameter to limit the number of tags in a response. If more tags
    # remain, Amazon FSx returns a `NextToken` value in the response. In
    # this case, send a later request with the `NextToken` request parameter
    # set to the value of `NextToken` from the last response.
    #
    # This action is used in an iterative process to retrieve a list of your
    # tags. `ListTagsForResource` is called first without a
    # `NextToken`value. Then the action continues to be called with the
    # `NextToken` parameter set to the value of the last `NextToken` value
    # until a response has no `NextToken`.
    #
    # When using this action, keep the following in mind:
    #
    # * The implementation might return fewer than `MaxResults` file system
    #   descriptions while still including a `NextToken` value.
    #
    # * The order of tags returned in the response of one
    #   `ListTagsForResource` call and the order of tags returned across the
    #   responses of a multi-call iteration is unspecified.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the Amazon FSx resource that will have its tags listed.
    #
    # @option params [Integer] :max_results
    #   Maximum number of tags to return in the response (integer). This
    #   parameter value must be greater than 0. The number of items that
    #   Amazon FSx returns is the minimum of the `MaxResults` parameter
    #   specified in the request and the service's internal maximum number of
    #   items per page.
    #
    # @option params [String] :next_token
    #   Opaque pagination token returned from a previous `ListTagsForResource`
    #   operation (String). If a token present, the action continues the list
    #   from where the returning call left off.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list tags for a resource
    #
    #   # This operation lists tags for an Amazon FSx resource.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
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
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceARN", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Releases the file system lock from an Amazon FSx for OpenZFS file
    # system.
    #
    # @option params [required, String] :file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ReleaseFileSystemNfsV3LocksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReleaseFileSystemNfsV3LocksResponse#file_system #file_system} => Types::FileSystem
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_file_system_nfs_v3_locks({
    #     file_system_id: "FileSystemId", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system.owner_id #=> String
    #   resp.file_system.creation_time #=> Time
    #   resp.file_system.file_system_id #=> String
    #   resp.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.file_system.failure_details.message #=> String
    #   resp.file_system.storage_capacity #=> Integer
    #   resp.file_system.storage_type #=> String, one of "SSD", "HDD"
    #   resp.file_system.vpc_id #=> String
    #   resp.file_system.subnet_ids #=> Array
    #   resp.file_system.subnet_ids[0] #=> String
    #   resp.file_system.network_interface_ids #=> Array
    #   resp.file_system.network_interface_ids[0] #=> String
    #   resp.file_system.dns_name #=> String
    #   resp.file_system.kms_key_id #=> String
    #   resp.file_system.resource_arn #=> String
    #   resp.file_system.tags #=> Array
    #   resp.file_system.tags[0].key #=> String
    #   resp.file_system.tags[0].value #=> String
    #   resp.file_system.windows_configuration.active_directory_id #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.file_system.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.windows_configuration.aliases #=> Array
    #   resp.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.file_system.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.file_system.lustre_configuration.mount_name #=> String
    #   resp.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.file_system.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.file_system.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.file_system.administrative_actions #=> Array
    #   resp.file_system.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.file_system.administrative_actions[0].request_time #=> Time
    #   resp.file_system.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.file_system.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.file_system.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.file_system.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.file_system.ontap_configuration.route_table_ids #=> Array
    #   resp.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.ontap_configuration.fsx_admin_password #=> String
    #   resp.file_system.file_system_type_version #=> String
    #   resp.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_system.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_system.open_zfs_configuration.root_volume_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ReleaseFileSystemNfsV3Locks AWS API Documentation
    #
    # @overload release_file_system_nfs_v3_locks(params = {})
    # @param [Hash] params ({})
    def release_file_system_nfs_v3_locks(params = {}, options = {})
      req = build_request(:release_file_system_nfs_v3_locks, params)
      req.send_request(options)
    end

    # Returns an Amazon FSx for OpenZFS volume to the state saved by the
    # specified snapshot.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :volume_id
    #   The ID of the volume that you are restoring.
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the source snapshot. Specifies the snapshot that you are
    #   restoring from.
    #
    # @option params [Array<String>] :options
    #   The settings used when restoring the specified volume from snapshot.
    #
    #   * `DELETE_INTERMEDIATE_SNAPSHOTS` - Deletes snapshots between the
    #     current state and the specified snapshot. If there are intermediate
    #     snapshots and this option isn't used, `RestoreVolumeFromSnapshot`
    #     fails.
    #
    #   * `DELETE_CLONED_VOLUMES` - Deletes any dependent clone volumes
    #     created from intermediate snapshots. If there are any dependent
    #     clone volumes and this option isn't used,
    #     `RestoreVolumeFromSnapshot` fails.
    #
    # @return [Types::RestoreVolumeFromSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreVolumeFromSnapshotResponse#volume_id #volume_id} => String
    #   * {Types::RestoreVolumeFromSnapshotResponse#lifecycle #lifecycle} => String
    #   * {Types::RestoreVolumeFromSnapshotResponse#administrative_actions #administrative_actions} => Array&lt;Types::AdministrativeAction&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_volume_from_snapshot({
    #     client_request_token: "ClientRequestToken",
    #     volume_id: "VolumeId", # required
    #     snapshot_id: "SnapshotId", # required
    #     options: ["DELETE_INTERMEDIATE_SNAPSHOTS"], # accepts DELETE_INTERMEDIATE_SNAPSHOTS, DELETE_CLONED_VOLUMES
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_id #=> String
    #   resp.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.administrative_actions #=> Array
    #   resp.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.administrative_actions[0].progress_percent #=> Integer
    #   resp.administrative_actions[0].request_time #=> Time
    #   resp.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.administrative_actions[0].failure_details.message #=> String
    #   resp.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.administrative_actions[0].target_volume_values.name #=> String
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/RestoreVolumeFromSnapshot AWS API Documentation
    #
    # @overload restore_volume_from_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_volume_from_snapshot(params = {}, options = {})
      req = build_request(:restore_volume_from_snapshot, params)
      req.send_request(options)
    end

    # Tags an Amazon FSx resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon FSx resource that you
    #   want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags for the resource. If a tag with a given key already
    #   exists, the value is replaced by the one specified in this parameter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To tag a resource
    #
    #   # This operation tags an Amazon FSx resource.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
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
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # This action removes a tag from an Amazon FSx resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the Amazon FSx resource to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys of tags on the resource to untag. In case the tag key
    #   doesn't exist, the call will still succeed to be idempotent.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To untag a resource
    #
    #   # This operation untags an Amazon FSx resource.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #     tag_keys: [
    #       "Name", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing data repository association
    # on an Amazon FSx for Lustre file system. Data repository associations
    # are supported on all FSx for Lustre 2.12 and newer file systems,
    # excluding `scratch_1` deployment type.
    #
    # @option params [required, String] :association_id
    #   The ID of the data repository association that you are updating.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :imported_file_chunk_size
    #   For files imported from a data repository, this value determines the
    #   stripe count and maximum amount of data per file (in MiB) stored on a
    #   single physical disk. The maximum number of disks that a single file
    #   can be striped across is limited by the total number of disks that
    #   make up the file system.
    #
    #   The default chunk size is 1,024 MiB (1 GiB) and can go as high as
    #   512,000 MiB (500 GiB). Amazon S3 objects have a maximum size of 5 TB.
    #
    # @option params [Types::S3DataRepositoryConfiguration] :s3
    #   The configuration for an Amazon S3 data repository linked to an Amazon
    #   FSx Lustre file system with a data repository association. The
    #   configuration defines which file events (new, changed, or deleted
    #   files or directories) are automatically imported from the linked data
    #   repository to the file system or automatically exported from the file
    #   system to the data repository.
    #
    # @return [Types::UpdateDataRepositoryAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataRepositoryAssociationResponse#association #association} => Types::DataRepositoryAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_repository_association({
    #     association_id: "DataRepositoryAssociationId", # required
    #     client_request_token: "ClientRequestToken",
    #     imported_file_chunk_size: 1,
    #     s3: {
    #       auto_import_policy: {
    #         events: ["NEW"], # accepts NEW, CHANGED, DELETED
    #       },
    #       auto_export_policy: {
    #         events: ["NEW"], # accepts NEW, CHANGED, DELETED
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.association.association_id #=> String
    #   resp.association.resource_arn #=> String
    #   resp.association.file_system_id #=> String
    #   resp.association.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.association.failure_details.message #=> String
    #   resp.association.file_system_path #=> String
    #   resp.association.data_repository_path #=> String
    #   resp.association.batch_import_meta_data_on_create #=> Boolean
    #   resp.association.imported_file_chunk_size #=> Integer
    #   resp.association.s3.auto_import_policy.events #=> Array
    #   resp.association.s3.auto_import_policy.events[0] #=> String, one of "NEW", "CHANGED", "DELETED"
    #   resp.association.s3.auto_export_policy.events #=> Array
    #   resp.association.s3.auto_export_policy.events[0] #=> String, one of "NEW", "CHANGED", "DELETED"
    #   resp.association.tags #=> Array
    #   resp.association.tags[0].key #=> String
    #   resp.association.tags[0].value #=> String
    #   resp.association.creation_time #=> Time
    #   resp.association.file_cache_id #=> String
    #   resp.association.file_cache_path #=> String
    #   resp.association.data_repository_subdirectories #=> Array
    #   resp.association.data_repository_subdirectories[0] #=> String
    #   resp.association.nfs.version #=> String, one of "NFS3"
    #   resp.association.nfs.dns_ips #=> Array
    #   resp.association.nfs.dns_ips[0] #=> String
    #   resp.association.nfs.auto_export_policy.events #=> Array
    #   resp.association.nfs.auto_export_policy.events[0] #=> String, one of "NEW", "CHANGED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateDataRepositoryAssociation AWS API Documentation
    #
    # @overload update_data_repository_association(params = {})
    # @param [Hash] params ({})
    def update_data_repository_association(params = {}, options = {})
      req = build_request(:update_data_repository_association, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing Amazon File Cache resource.
    # You can update multiple properties in a single request.
    #
    # @option params [required, String] :file_cache_id
    #   The ID of the cache that you are updating.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::UpdateFileCacheLustreConfiguration] :lustre_configuration
    #   The configuration updates for an Amazon File Cache resource.
    #
    # @return [Types::UpdateFileCacheResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFileCacheResponse#file_cache #file_cache} => Types::FileCache
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_file_cache({
    #     file_cache_id: "FileCacheId", # required
    #     client_request_token: "ClientRequestToken",
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_cache.owner_id #=> String
    #   resp.file_cache.creation_time #=> Time
    #   resp.file_cache.file_cache_id #=> String
    #   resp.file_cache.file_cache_type #=> String, one of "LUSTRE"
    #   resp.file_cache.file_cache_type_version #=> String
    #   resp.file_cache.lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"
    #   resp.file_cache.failure_details.message #=> String
    #   resp.file_cache.storage_capacity #=> Integer
    #   resp.file_cache.vpc_id #=> String
    #   resp.file_cache.subnet_ids #=> Array
    #   resp.file_cache.subnet_ids[0] #=> String
    #   resp.file_cache.network_interface_ids #=> Array
    #   resp.file_cache.network_interface_ids[0] #=> String
    #   resp.file_cache.dns_name #=> String
    #   resp.file_cache.kms_key_id #=> String
    #   resp.file_cache.resource_arn #=> String
    #   resp.file_cache.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.file_cache.lustre_configuration.deployment_type #=> String, one of "CACHE_1"
    #   resp.file_cache.lustre_configuration.mount_name #=> String
    #   resp.file_cache.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_cache.lustre_configuration.metadata_configuration.storage_capacity #=> Integer
    #   resp.file_cache.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.file_cache.lustre_configuration.log_configuration.destination #=> String
    #   resp.file_cache.data_repository_association_ids #=> Array
    #   resp.file_cache.data_repository_association_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileCache AWS API Documentation
    #
    # @overload update_file_cache(params = {})
    # @param [Hash] params ({})
    def update_file_cache(params = {}, options = {})
      req = build_request(:update_file_cache, params)
      req.send_request(options)
    end

    # Use this operation to update the configuration of an existing Amazon
    # FSx file system. You can update multiple properties in a single
    # request.
    #
    # For FSx for Windows File Server file systems, you can update the
    # following properties:
    #
    # * `AuditLogConfiguration`
    #
    # * `AutomaticBackupRetentionDays`
    #
    # * `DailyAutomaticBackupStartTime`
    #
    # * `SelfManagedActiveDirectoryConfiguration`
    #
    # * `StorageCapacity`
    #
    # * `ThroughputCapacity`
    #
    # * `WeeklyMaintenanceStartTime`
    #
    # For FSx for Lustre file systems, you can update the following
    # properties:
    #
    # * `AutoImportPolicy`
    #
    # * `AutomaticBackupRetentionDays`
    #
    # * `DailyAutomaticBackupStartTime`
    #
    # * `DataCompressionType`
    #
    # * `LogConfiguration`
    #
    # * `LustreRootSquashConfiguration`
    #
    # * `StorageCapacity`
    #
    # * `WeeklyMaintenanceStartTime`
    #
    # For FSx for ONTAP file systems, you can update the following
    # properties:
    #
    # * `AddRouteTableIds`
    #
    # * `AutomaticBackupRetentionDays`
    #
    # * `DailyAutomaticBackupStartTime`
    #
    # * `DiskIopsConfiguration`
    #
    # * `FsxAdminPassword`
    #
    # * `RemoveRouteTableIds`
    #
    # * `StorageCapacity`
    #
    # * `ThroughputCapacity`
    #
    # * `WeeklyMaintenanceStartTime`
    #
    # For FSx for OpenZFS file systems, you can update the following
    # properties:
    #
    # * `AutomaticBackupRetentionDays`
    #
    # * `CopyTagsToBackups`
    #
    # * `CopyTagsToVolumes`
    #
    # * `DailyAutomaticBackupStartTime`
    #
    # * `DiskIopsConfiguration`
    #
    # * `StorageCapacity`
    #
    # * `ThroughputCapacity`
    #
    # * `WeeklyMaintenanceStartTime`
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system that you are updating.
    #
    # @option params [String] :client_request_token
    #   A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #   idempotent updates. This string is automatically filled on your behalf
    #   when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :storage_capacity
    #   Use this parameter to increase the storage capacity of an FSx for
    #   Windows File Server, FSx for Lustre, FSx for OpenZFS, or FSx for ONTAP
    #   file system. Specifies the storage capacity target value, in GiB, to
    #   increase the storage capacity for the file system that you're
    #   updating.
    #
    #   <note markdown="1"> You can't make a storage capacity increase request if there is an
    #   existing storage capacity increase request in progress.
    #
    #    </note>
    #
    #   For Lustre file systems, the storage capacity target value can be the
    #   following:
    #
    #   * For `SCRATCH_2`, `PERSISTENT_1`, and `PERSISTENT_2 SSD` deployment
    #     types, valid values are in multiples of 2400 GiB. The value must be
    #     greater than the current storage capacity.
    #
    #   * For `PERSISTENT HDD` file systems, valid values are multiples of
    #     6000 GiB for 12-MBps throughput per TiB file systems and multiples
    #     of 1800 GiB for 40-MBps throughput per TiB file systems. The values
    #     must be greater than the current storage capacity.
    #
    #   * For `SCRATCH_1` file systems, you can't increase the storage
    #     capacity.
    #
    #   For more information, see [Managing storage and throughput
    #   capacity][1] in the *FSx for Lustre User Guide*.
    #
    #   For FSx for OpenZFS file systems, the storage capacity target value
    #   must be at least 10 percent greater than the current storage capacity
    #   value. For more information, see [Managing storage capacity][2] in the
    #   *FSx for OpenZFS User Guide*.
    #
    #   For Windows file systems, the storage capacity target value must be at
    #   least 10 percent greater than the current storage capacity value. To
    #   increase storage capacity, the file system must have at least 16 MBps
    #   of throughput capacity. For more information, see [Managing storage
    #   capacity][3] in the *Amazon FSxfor Windows File Server User Guide*.
    #
    #   For ONTAP file systems, the storage capacity target value must be at
    #   least 10 percent greater than the current storage capacity value. For
    #   more information, see [Managing storage capacity and provisioned
    #   IOPS][4] in the *Amazon FSx for NetApp ONTAP User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html
    #   [2]: https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-storage-capacity.html
    #   [3]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html
    #   [4]: https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-storage-capacity.html
    #
    # @option params [Types::UpdateFileSystemWindowsConfiguration] :windows_configuration
    #   The configuration updates for an Amazon FSx for Windows File Server
    #   file system.
    #
    # @option params [Types::UpdateFileSystemLustreConfiguration] :lustre_configuration
    #   The configuration object for Amazon FSx for Lustre file systems used
    #   in the `UpdateFileSystem` operation.
    #
    # @option params [Types::UpdateFileSystemOntapConfiguration] :ontap_configuration
    #   The configuration updates for an Amazon FSx for NetApp ONTAP file
    #   system.
    #
    # @option params [Types::UpdateFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   The configuration updates for an FSx for OpenZFS file system.
    #
    # @return [Types::UpdateFileSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFileSystemResponse#file_system #file_system} => Types::FileSystem
    #
    #
    # @example Example: To update an existing file system
    #
    #   # This operation updates an existing file system.
    #
    #   resp = client.update_file_system({
    #     file_system_id: "fs-0498eed5fe91001ec", 
    #     windows_configuration: {
    #       automatic_backup_retention_days: 10, 
    #       daily_automatic_backup_start_time: "06:00", 
    #       weekly_maintenance_start_time: "3:06:00", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system: {
    #       creation_time: Time.parse("1481841524.0"), 
    #       dns_name: "fs-0498eed5fe91001ec.fsx.com", 
    #       file_system_id: "fs-0498eed5fe91001ec", 
    #       kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6", 
    #       lifecycle: "AVAILABLE", 
    #       owner_id: "012345678912", 
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #       storage_capacity: 300, 
    #       subnet_ids: [
    #         "subnet-1234abcd", 
    #       ], 
    #       tags: [
    #         {
    #           key: "Name", 
    #           value: "MyFileSystem", 
    #         }, 
    #       ], 
    #       vpc_id: "vpc-ab1234cd", 
    #       windows_configuration: {
    #         automatic_backup_retention_days: 10, 
    #         daily_automatic_backup_start_time: "06:00", 
    #         throughput_capacity: 8, 
    #         weekly_maintenance_start_time: "3:06:00", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_file_system({
    #     file_system_id: "FileSystemId", # required
    #     client_request_token: "ClientRequestToken",
    #     storage_capacity: 1,
    #     windows_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       throughput_capacity: 1,
    #       self_managed_active_directory_configuration: {
    #         user_name: "DirectoryUserName",
    #         password: "DirectoryPassword",
    #         dns_ips: ["IpAddress"],
    #         domain_name: "ActiveDirectoryFullyQualifiedName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #       },
    #       audit_log_configuration: {
    #         file_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #         file_share_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #         audit_log_destination: "GeneralARN",
    #       },
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       auto_import_policy: "NONE", # accepts NONE, NEW, NEW_CHANGED, NEW_CHANGED_DELETED
    #       data_compression_type: "NONE", # accepts NONE, LZ4
    #       log_configuration: {
    #         level: "DISABLED", # required, accepts DISABLED, WARN_ONLY, ERROR_ONLY, WARN_ERROR
    #         destination: "GeneralARN",
    #       },
    #       root_squash_configuration: {
    #         root_squash: "LustreRootSquash",
    #         no_squash_nids: ["LustreNoSquashNid"],
    #       },
    #     },
    #     ontap_configuration: {
    #       automatic_backup_retention_days: 1,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       fsx_admin_password: "AdminPassword",
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC", # accepts AUTOMATIC, USER_PROVISIONED
    #         iops: 1,
    #       },
    #       throughput_capacity: 1,
    #       add_route_table_ids: ["RouteTableId"],
    #       remove_route_table_ids: ["RouteTableId"],
    #     },
    #     open_zfs_configuration: {
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       copy_tags_to_volumes: false,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       throughput_capacity: 1,
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC", # accepts AUTOMATIC, USER_PROVISIONED
    #         iops: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system.owner_id #=> String
    #   resp.file_system.creation_time #=> Time
    #   resp.file_system.file_system_id #=> String
    #   resp.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.file_system.failure_details.message #=> String
    #   resp.file_system.storage_capacity #=> Integer
    #   resp.file_system.storage_type #=> String, one of "SSD", "HDD"
    #   resp.file_system.vpc_id #=> String
    #   resp.file_system.subnet_ids #=> Array
    #   resp.file_system.subnet_ids[0] #=> String
    #   resp.file_system.network_interface_ids #=> Array
    #   resp.file_system.network_interface_ids[0] #=> String
    #   resp.file_system.dns_name #=> String
    #   resp.file_system.kms_key_id #=> String
    #   resp.file_system.resource_arn #=> String
    #   resp.file_system.tags #=> Array
    #   resp.file_system.tags[0].key #=> String
    #   resp.file_system.tags[0].value #=> String
    #   resp.file_system.windows_configuration.active_directory_id #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.file_system.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.windows_configuration.aliases #=> Array
    #   resp.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.file_system.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.file_system.lustre_configuration.mount_name #=> String
    #   resp.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.file_system.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.file_system.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.file_system.administrative_actions #=> Array
    #   resp.file_system.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.file_system.administrative_actions[0].request_time #=> Time
    #   resp.file_system.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.file_system.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.file_system.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.file_system.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.file_system.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.file_system.ontap_configuration.route_table_ids #=> Array
    #   resp.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.ontap_configuration.fsx_admin_password #=> String
    #   resp.file_system.file_system_type_version #=> String
    #   resp.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.file_system.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.file_system.open_zfs_configuration.root_volume_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystem AWS API Documentation
    #
    # @overload update_file_system(params = {})
    # @param [Hash] params ({})
    def update_file_system(params = {}, options = {})
      req = build_request(:update_file_system, params)
      req.send_request(options)
    end

    # Updates the name of an Amazon FSx for OpenZFS snapshot.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the snapshot to update.
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the snapshot that you want to update, in the format
    #   `fsvolsnap-0123456789abcdef0`.
    #
    # @return [Types::UpdateSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_snapshot({
    #     client_request_token: "ClientRequestToken",
    #     name: "SnapshotName", # required
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.resource_arn #=> String
    #   resp.snapshot.snapshot_id #=> String
    #   resp.snapshot.name #=> String
    #   resp.snapshot.volume_id #=> String
    #   resp.snapshot.creation_time #=> Time
    #   resp.snapshot.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.snapshot.lifecycle_transition_reason.message #=> String
    #   resp.snapshot.tags #=> Array
    #   resp.snapshot.tags[0].key #=> String
    #   resp.snapshot.tags[0].value #=> String
    #   resp.snapshot.administrative_actions #=> Array
    #   resp.snapshot.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.snapshot.administrative_actions[0].progress_percent #=> Integer
    #   resp.snapshot.administrative_actions[0].request_time #=> Time
    #   resp.snapshot.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.snapshot.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.snapshot.administrative_actions[0].failure_details.message #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.snapshot.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.name #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snapshot_policy #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.tags #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.tags[0].key #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.tags[0].value #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.snapshot.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #   resp.snapshot.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateSnapshot AWS API Documentation
    #
    # @overload update_snapshot(params = {})
    # @param [Hash] params ({})
    def update_snapshot(params = {}, options = {})
      req = build_request(:update_snapshot, params)
      req.send_request(options)
    end

    # Updates an FSx for ONTAP storage virtual machine (SVM).
    #
    # @option params [Types::UpdateSvmActiveDirectoryConfiguration] :active_directory_configuration
    #   Specifies updates to an SVM's Microsoft Active Directory (AD)
    #   configuration.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :storage_virtual_machine_id
    #   The ID of the SVM that you want to update, in the format
    #   `svm-0123456789abcdef0`.
    #
    # @option params [String] :svm_admin_password
    #   Specifies a new SvmAdminPassword.
    #
    # @return [Types::UpdateStorageVirtualMachineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStorageVirtualMachineResponse#storage_virtual_machine #storage_virtual_machine} => Types::StorageVirtualMachine
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_storage_virtual_machine({
    #     active_directory_configuration: {
    #       self_managed_active_directory_configuration: {
    #         user_name: "DirectoryUserName",
    #         password: "DirectoryPassword",
    #         dns_ips: ["IpAddress"],
    #         domain_name: "ActiveDirectoryFullyQualifiedName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #       },
    #       net_bios_name: "NetBiosAlias",
    #     },
    #     client_request_token: "ClientRequestToken",
    #     storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #     svm_admin_password: "AdminPassword",
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_virtual_machine.active_directory_configuration.net_bios_name #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.storage_virtual_machine.creation_time #=> Time
    #   resp.storage_virtual_machine.endpoints.iscsi.dns_name #=> String
    #   resp.storage_virtual_machine.endpoints.iscsi.ip_addresses #=> Array
    #   resp.storage_virtual_machine.endpoints.iscsi.ip_addresses[0] #=> String
    #   resp.storage_virtual_machine.endpoints.management.dns_name #=> String
    #   resp.storage_virtual_machine.endpoints.management.ip_addresses #=> Array
    #   resp.storage_virtual_machine.endpoints.management.ip_addresses[0] #=> String
    #   resp.storage_virtual_machine.endpoints.nfs.dns_name #=> String
    #   resp.storage_virtual_machine.endpoints.nfs.ip_addresses #=> Array
    #   resp.storage_virtual_machine.endpoints.nfs.ip_addresses[0] #=> String
    #   resp.storage_virtual_machine.endpoints.smb.dns_name #=> String
    #   resp.storage_virtual_machine.endpoints.smb.ip_addresses #=> Array
    #   resp.storage_virtual_machine.endpoints.smb.ip_addresses[0] #=> String
    #   resp.storage_virtual_machine.file_system_id #=> String
    #   resp.storage_virtual_machine.lifecycle #=> String, one of "CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"
    #   resp.storage_virtual_machine.name #=> String
    #   resp.storage_virtual_machine.resource_arn #=> String
    #   resp.storage_virtual_machine.storage_virtual_machine_id #=> String
    #   resp.storage_virtual_machine.subtype #=> String, one of "DEFAULT", "DP_DESTINATION", "SYNC_DESTINATION", "SYNC_SOURCE"
    #   resp.storage_virtual_machine.uuid #=> String
    #   resp.storage_virtual_machine.tags #=> Array
    #   resp.storage_virtual_machine.tags[0].key #=> String
    #   resp.storage_virtual_machine.tags[0].value #=> String
    #   resp.storage_virtual_machine.lifecycle_transition_reason.message #=> String
    #   resp.storage_virtual_machine.root_volume_security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateStorageVirtualMachine AWS API Documentation
    #
    # @overload update_storage_virtual_machine(params = {})
    # @param [Hash] params ({})
    def update_storage_virtual_machine(params = {}, options = {})
      req = build_request(:update_storage_virtual_machine, params)
      req.send_request(options)
    end

    # Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon
    # FSx for OpenZFS volume.
    #
    # @option params [String] :client_request_token
    #   (Optional) An idempotency token for resource creation, in a string of
    #   up to 63 ASCII characters. This token is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :volume_id
    #   The ID of the volume that you want to update, in the format
    #   `fsvol-0123456789abcdef0`.
    #
    # @option params [Types::UpdateOntapVolumeConfiguration] :ontap_configuration
    #   The configuration of the ONTAP volume that you are updating.
    #
    # @option params [String] :name
    #   The name of the OpenZFS volume. OpenZFS root volumes are automatically
    #   named `FSX`. Child volume names must be unique among their parent
    #   volume's children. The name of the volume is part of the mount string
    #   for the OpenZFS volume.
    #
    # @option params [Types::UpdateOpenZFSVolumeConfiguration] :open_zfs_configuration
    #   The configuration of the OpenZFS volume that you are updating.
    #
    # @return [Types::UpdateVolumeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVolumeResponse#volume #volume} => Types::Volume
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_volume({
    #     client_request_token: "ClientRequestToken",
    #     volume_id: "VolumeId", # required
    #     ontap_configuration: {
    #       junction_path: "JunctionPath",
    #       security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #       size_in_megabytes: 1,
    #       storage_efficiency_enabled: false,
    #       tiering_policy: {
    #         cooling_period: 1,
    #         name: "SNAPSHOT_ONLY", # accepts SNAPSHOT_ONLY, AUTO, ALL, NONE
    #       },
    #       snapshot_policy: "SnapshotPolicy",
    #       copy_tags_to_backups: false,
    #       snaplock_configuration: {
    #         audit_log_volume: false,
    #         autocommit_period: {
    #           type: "MINUTES", # required, accepts MINUTES, HOURS, DAYS, MONTHS, YEARS, NONE
    #           value: 1,
    #         },
    #         privileged_delete: "DISABLED", # accepts DISABLED, ENABLED, PERMANENTLY_DISABLED
    #         retention_period: {
    #           default_retention: { # required
    #             type: "SECONDS", # required, accepts SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
    #             value: 1,
    #           },
    #           minimum_retention: { # required
    #             type: "SECONDS", # required, accepts SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
    #             value: 1,
    #           },
    #           maximum_retention: { # required
    #             type: "SECONDS", # required, accepts SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
    #             value: 1,
    #           },
    #         },
    #         volume_append_mode_enabled: false,
    #       },
    #     },
    #     name: "VolumeName",
    #     open_zfs_configuration: {
    #       storage_capacity_reservation_gi_b: 1,
    #       storage_capacity_quota_gi_b: 1,
    #       record_size_ki_b: 1,
    #       data_compression_type: "NONE", # accepts NONE, ZSTD, LZ4
    #       nfs_exports: [
    #         {
    #           client_configurations: [ # required
    #             {
    #               clients: "OpenZFSClients", # required
    #               options: ["OpenZFSNfsExportOption"], # required
    #             },
    #           ],
    #         },
    #       ],
    #       user_and_group_quotas: [
    #         {
    #           type: "USER", # required, accepts USER, GROUP
    #           id: 1, # required
    #           storage_capacity_quota_gi_b: 1, # required
    #         },
    #       ],
    #       read_only: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.volume.creation_time #=> Time
    #   resp.volume.file_system_id #=> String
    #   resp.volume.lifecycle #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"
    #   resp.volume.name #=> String
    #   resp.volume.ontap_configuration.flex_cache_endpoint_type #=> String, one of "NONE", "ORIGIN", "CACHE"
    #   resp.volume.ontap_configuration.junction_path #=> String
    #   resp.volume.ontap_configuration.security_style #=> String, one of "UNIX", "NTFS", "MIXED"
    #   resp.volume.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.volume.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.volume.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.volume.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.volume.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.volume.ontap_configuration.tiering_policy.name #=> String, one of "SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"
    #   resp.volume.ontap_configuration.uuid #=> String
    #   resp.volume.ontap_configuration.ontap_volume_type #=> String, one of "RW", "DP", "LS"
    #   resp.volume.ontap_configuration.snapshot_policy #=> String
    #   resp.volume.ontap_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.ontap_configuration.snaplock_configuration.audit_log_volume #=> Boolean
    #   resp.volume.ontap_configuration.snaplock_configuration.autocommit_period.type #=> String, one of "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"
    #   resp.volume.ontap_configuration.snaplock_configuration.autocommit_period.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.privileged_delete #=> String, one of "DISABLED", "ENABLED", "PERMANENTLY_DISABLED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.default_retention.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.minimum_retention.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.type #=> String, one of "SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"
    #   resp.volume.ontap_configuration.snaplock_configuration.retention_period.maximum_retention.value #=> Integer
    #   resp.volume.ontap_configuration.snaplock_configuration.snaplock_type #=> String, one of "COMPLIANCE", "ENTERPRISE"
    #   resp.volume.ontap_configuration.snaplock_configuration.volume_append_mode_enabled #=> Boolean
    #   resp.volume.resource_arn #=> String
    #   resp.volume.tags #=> Array
    #   resp.volume.tags[0].key #=> String
    #   resp.volume.tags[0].value #=> String
    #   resp.volume.volume_id #=> String
    #   resp.volume.volume_type #=> String, one of "ONTAP", "OPENZFS"
    #   resp.volume.lifecycle_transition_reason.message #=> String
    #   resp.volume.administrative_actions #=> Array
    #   resp.volume.administrative_actions[0].administrative_action_type #=> String, one of "FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE"
    #   resp.volume.administrative_actions[0].progress_percent #=> Integer
    #   resp.volume.administrative_actions[0].request_time #=> Time
    #   resp.volume.administrative_actions[0].status #=> String, one of "FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"
    #   resp.volume.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.volume.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of "WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"
    #   resp.volume.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"
    #   resp.volume.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.storage_type #=> String, one of "SSD", "HDD"
    #   resp.volume.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.subnet_ids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.tags #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.tags[0].key #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.tags[0].value #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of "DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"
    #   resp.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of "CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of "NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of "SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of "NONE", "READ"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of "NONE", "LZ4"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of "DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of "MULTI_AZ_1", "SINGLE_AZ_1"
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.dns_name #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management.ip_addresses[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.ontap_configuration.fsx_admin_password #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of "SINGLE_AZ_1", "SINGLE_AZ_2"
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.mode #=> String, one of "AUTOMATIC", "USER_PROVISIONED"
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.volume.administrative_actions[0].failure_details.message #=> String
    #   resp.volume.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.volume.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.volume.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of "PENDING", "CREATING", "DELETING", "AVAILABLE"
    #   resp.volume.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason.message #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.tags #=> Array
    #   resp.volume.administrative_actions[0].target_snapshot_values.tags[0].key #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.tags[0].value #=> String
    #   resp.volume.administrative_actions[0].target_snapshot_values.administrative_actions #=> Types::AdministrativeActions
    #   resp.volume.open_zfs_configuration.parent_volume_id #=> String
    #   resp.volume.open_zfs_configuration.volume_path #=> String
    #   resp.volume.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.volume.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.volume.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.volume.open_zfs_configuration.data_compression_type #=> String, one of "NONE", "ZSTD", "LZ4"
    #   resp.volume.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.volume.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.volume.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of "CLONE", "FULL_COPY"
    #   resp.volume.open_zfs_configuration.read_only #=> Boolean
    #   resp.volume.open_zfs_configuration.nfs_exports #=> Array
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array
    #   resp.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.volume.open_zfs_configuration.user_and_group_quotas #=> Array
    #   resp.volume.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of "USER", "GROUP"
    #   resp.volume.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.volume.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.volume.open_zfs_configuration.restore_to_snapshot #=> String
    #   resp.volume.open_zfs_configuration.delete_intermediate_snaphots #=> Boolean
    #   resp.volume.open_zfs_configuration.delete_cloned_volumes #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateVolume AWS API Documentation
    #
    # @overload update_volume(params = {})
    # @param [Hash] params ({})
    def update_volume(params = {}, options = {})
      req = build_request(:update_volume, params)
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
      context[:gem_name] = 'aws-sdk-fsx'
      context[:gem_version] = '1.73.0'
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
