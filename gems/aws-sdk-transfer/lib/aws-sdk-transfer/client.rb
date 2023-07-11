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

Aws::Plugins::GlobalConfiguration.add_identifier(:transfer)

module Aws::Transfer
  # An API client for Transfer.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Transfer::Client.new(
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

    @identifier = :transfer

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
    add_plugin(Aws::Transfer::Plugins::Endpoints)

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
    #   @option options [Aws::Transfer::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Transfer::EndpointParameters`
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

    # Used by administrators to choose which groups in the directory should
    # have access to upload and download files over the enabled protocols
    # using Transfer Family. For example, a Microsoft Active Directory might
    # contain 50,000 users, but only a small fraction might need the ability
    # to transfer files to the server. An administrator can use
    # `CreateAccess` to limit the access to the correct set of users who
    # need this ability.
    #
    # @option params [String] :home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    # @option params [String] :home_directory_type
    #   The type of landing directory (folder) that you want your users' home
    #   directory to be when they log in to the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the `HomeDirectoryMappings`
    #   for how you want to make Amazon S3 or Amazon EFS paths visible to your
    #   users.
    #
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to make
    #   them visible. You must specify the `Entry` and `Target` pair, where
    #   `Entry` shows how the path is made visible and `Target` is the actual
    #   Amazon S3 or Amazon EFS path. If you only specify a target, it is
    #   displayed as is. You also must ensure that your Identity and Access
    #   Management (IAM) role provides access to paths in `Target`. This value
    #   can be set only when `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ \{ "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" \} ]`
    #
    #   In most cases, you can use this value instead of the session policy to
    #   lock down your user to the designated home directory ("`chroot`").
    #   To do this, you can set `Entry` to `/` and set `Target` to the
    #   `HomeDirectory` parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ \{ "Entry": "/", "Target": "/bucket_name/home/mydirectory" \} ]`
    #
    # @option params [String] :policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `$\{Transfer:UserName\}`, `$\{Transfer:HomeDirectory\}`, and
    #   `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> This policy applies only when the domain of `ServerId` is Amazon S3.
    #   Amazon EFS does not use session policies.
    #
    #    For session policies, Transfer Family stores the policy as a JSON
    #   blob, instead of the Amazon Resource Name (ARN) of the policy. You
    #   save the policy as a JSON blob and pass it in the `Policy` argument.
    #
    #    For an example of a session policy, see [Example session policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *Security Token
    #   Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #
    # @option params [Types::PosixProfile] :posix_profile
    #   The full POSIX identity, including user ID (`Uid`), group ID (`Gid`),
    #   and any secondary groups IDs (`SecondaryGids`), that controls your
    #   users' access to your Amazon EFS file systems. The POSIX permissions
    #   that are set on files and directories in your file system determine
    #   the level of access your users get when transferring files into and
    #   out of your Amazon EFS file systems.
    #
    # @option params [required, String] :role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3 bucket
    #   or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users when
    #   transferring files into and out of your Amazon S3 bucket or Amazon EFS
    #   file system. The IAM role should also contain a trust relationship
    #   that allows the server to access your resources when servicing your
    #   users' transfer requests.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance. This is the
    #   specific server that you added your user to.
    #
    # @option params [required, String] :external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate have
    #   access to your Amazon S3 or Amazon EFS resources over the enabled
    #   protocols using Transfer Family. If you know the group name, you can
    #   view the SID values by running the following command using Windows
    #   PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your Active
    #   Directory group.
    #
    #   The regular expression used to validate this parameter is a string of
    #   characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any of
    #   the following characters: =,.@:/-
    #
    # @return [Types::CreateAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessResponse#server_id #server_id} => String
    #   * {Types::CreateAccessResponse#external_id #external_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access({
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH", # accepts PATH, LOGICAL
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #       },
    #     ],
    #     policy: "Policy",
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1],
    #     },
    #     role: "Role", # required
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.external_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateAccess AWS API Documentation
    #
    # @overload create_access(params = {})
    # @param [Hash] params ({})
    def create_access(params = {}, options = {})
      req = build_request(:create_access, params)
      req.send_request(options)
    end

    # Creates an agreement. An agreement is a bilateral trading partner
    # agreement, or partnership, between an Transfer Family server and an
    # AS2 process. The agreement defines the file and message transfer
    # relationship between the server and the AS2 process. To define an
    # agreement, Transfer Family combines a server, local profile, partner
    # profile, certificate, and other attributes.
    #
    # The partner is identified with the `PartnerProfileId`, and the AS2
    # process is identified with the `LocalProfileId`.
    #
    # @option params [String] :description
    #   A name or short description to identify the agreement.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance. This is the
    #   specific server that the agreement uses.
    #
    # @option params [required, String] :local_profile_id
    #   A unique identifier for the AS2 local profile.
    #
    # @option params [required, String] :partner_profile_id
    #   A unique identifier for the partner profile used in the agreement.
    #
    # @option params [required, String] :base_directory
    #   The landing directory (folder) for files transferred by using the AS2
    #   protocol.
    #
    #   A `BaseDirectory` example is `/DOC-EXAMPLE-BUCKET/home/mydirectory`.
    #
    # @option params [required, String] :access_role
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a final
    #   JSON file containing relevant metadata of the transmission. So, the
    #   `AccessRole` needs to provide read and write access to the parent
    #   directory of the file location used in the `StartFileTransfer`
    #   request. Additionally, you need to provide read and write access to
    #   the parent directory of the files that you intend to send with
    #   `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets Manager,
    #   then the role also needs the `kms:Decrypt` permission for that key.
    #
    # @option params [String] :status
    #   The status of the agreement. The agreement can be either `ACTIVE` or
    #   `INACTIVE`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for agreements.
    #
    # @return [Types::CreateAgreementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgreementResponse#agreement_id #agreement_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agreement({
    #     description: "Description",
    #     server_id: "ServerId", # required
    #     local_profile_id: "ProfileId", # required
    #     partner_profile_id: "ProfileId", # required
    #     base_directory: "HomeDirectory", # required
    #     access_role: "Role", # required
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
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
    #   resp.agreement_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateAgreement AWS API Documentation
    #
    # @overload create_agreement(params = {})
    # @param [Hash] params ({})
    def create_agreement(params = {}, options = {})
      req = build_request(:create_agreement, params)
      req.send_request(options)
    end

    # Creates the connector, which captures the parameters for an outbound
    # connection for the AS2 protocol. The connector is required for sending
    # files to an externally hosted AS2 server. For more details about
    # connectors, see [Create AS2 connectors][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transfer/latest/userguide/create-b2b-server.html#configure-as2-connector
    #
    # @option params [required, String] :url
    #   The URL of the partner's AS2 endpoint.
    #
    # @option params [required, Types::As2ConnectorConfig] :as_2_config
    #   A structure that contains the parameters for a connector object.
    #
    # @option params [required, String] :access_role
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a final
    #   JSON file containing relevant metadata of the transmission. So, the
    #   `AccessRole` needs to provide read and write access to the parent
    #   directory of the file location used in the `StartFileTransfer`
    #   request. Additionally, you need to provide read and write access to
    #   the parent directory of the files that you intend to send with
    #   `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets Manager,
    #   then the role also needs the `kms:Decrypt` permission for that key.
    #
    # @option params [String] :logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a connector to turn on CloudWatch logging for
    #   Amazon S3 events. When set, you can view connector activity in your
    #   CloudWatch logs.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for connectors.
    #   Tags are metadata attached to connectors for any purpose.
    #
    # @return [Types::CreateConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectorResponse#connector_id #connector_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector({
    #     url: "Url", # required
    #     as_2_config: { # required
    #       local_profile_id: "ProfileId",
    #       partner_profile_id: "ProfileId",
    #       message_subject: "MessageSubject",
    #       compression: "ZLIB", # accepts ZLIB, DISABLED
    #       encryption_algorithm: "AES128_CBC", # accepts AES128_CBC, AES192_CBC, AES256_CBC, NONE
    #       signing_algorithm: "SHA256", # accepts SHA256, SHA384, SHA512, SHA1, NONE
    #       mdn_signing_algorithm: "SHA256", # accepts SHA256, SHA384, SHA512, SHA1, NONE, DEFAULT
    #       mdn_response: "SYNC", # accepts SYNC, NONE
    #       basic_auth_secret_id: "As2ConnectorSecretId",
    #     },
    #     access_role: "Role", # required
    #     logging_role: "Role",
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
    #   resp.connector_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateConnector AWS API Documentation
    #
    # @overload create_connector(params = {})
    # @param [Hash] params ({})
    def create_connector(params = {}, options = {})
      req = build_request(:create_connector, params)
      req.send_request(options)
    end

    # Creates the local or partner profile to use for AS2 transfers.
    #
    # @option params [required, String] :as_2_id
    #   The `As2Id` is the *AS2-name*, as defined in the [RFC 4130][1]. For
    #   inbound transfers, this is the `AS2-From` header for the AS2 messages
    #   sent from the partner. For outbound connectors, this is the `AS2-To`
    #   header for the AS2 messages sent to the partner using the
    #   `StartFileTransfer` API operation. This ID cannot include spaces.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc4130
    #
    # @option params [required, String] :profile_type
    #   Determines the type of profile to create:
    #
    #   * Specify `LOCAL` to create a local profile. A local profile
    #     represents the AS2-enabled Transfer Family server organization or
    #     party.
    #
    #   * Specify `PARTNER` to create a partner profile. A partner profile
    #     represents a remote organization, external to Transfer Family.
    #
    # @option params [Array<String>] :certificate_ids
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for AS2 profiles.
    #
    # @return [Types::CreateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfileResponse#profile_id #profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile({
    #     as_2_id: "As2Id", # required
    #     profile_type: "LOCAL", # required, accepts LOCAL, PARTNER
    #     certificate_ids: ["CertificateId"],
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
    #   resp.profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateProfile AWS API Documentation
    #
    # @overload create_profile(params = {})
    # @param [Hash] params ({})
    def create_profile(params = {}, options = {})
      req = build_request(:create_profile, params)
      req.send_request(options)
    end

    # Instantiates an auto-scaling virtual server based on the selected file
    # transfer protocol in Amazon Web Services. When you make updates to
    # your file transfer protocol-enabled server or when you work with
    # users, use the service-generated `ServerId` property that is assigned
    # to the newly created server.
    #
    # @option params [String] :certificate
    #   The Amazon Resource Name (ARN) of the Certificate Manager (ACM)
    #   certificate. Required when `Protocols` is set to `FTPS`.
    #
    #   To request a new public certificate, see [Request a public
    #   certificate][1] in the *Certificate Manager User Guide*.
    #
    #   To import an existing certificate into ACM, see [Importing
    #   certificates into ACM][2] in the *Certificate Manager User Guide*.
    #
    #   To request a private certificate to use FTPS through private IP
    #   addresses, see [Request a private certificate][3] in the *Certificate
    #   Manager User Guide*.
    #
    #   Certificates with the following cryptographic algorithms and key sizes
    #   are supported:
    #
    #   * 2048-bit RSA (RSA\_2048)
    #
    #   * 4096-bit RSA (RSA\_4096)
    #
    #   * Elliptic Prime Curve 256 bit (EC\_prime256v1)
    #
    #   * Elliptic Prime Curve 384 bit (EC\_secp384r1)
    #
    #   * Elliptic Prime Curve 521 bit (EC\_secp521r1)
    #
    #   <note markdown="1"> The certificate must be a valid SSL/TLS X.509 version 3 certificate
    #   with FQDN or IP address specified and information about the issuer.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   [3]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html
    #
    # @option params [String] :domain
    #   The domain of the storage system that is used for file transfers.
    #   There are two domains available: Amazon Simple Storage Service (Amazon
    #   S3) and Amazon Elastic File System (Amazon EFS). The default value is
    #   S3.
    #
    #   <note markdown="1"> After the server is created, the domain cannot be changed.
    #
    #    </note>
    #
    # @option params [Types::EndpointDetails] :endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are configured
    #   for your server. When you host your endpoint within your VPC, you can
    #   make your endpoint accessible only to resources within your VPC, or
    #   you can attach Elastic IP addresses and make your endpoint accessible
    #   to clients over the internet. Your VPC's default security groups are
    #   automatically assigned to your endpoint.
    #
    # @option params [String] :endpoint_type
    #   The type of endpoint that you want your server to use. You can choose
    #   to make your server's endpoint publicly accessible (PUBLIC) or host
    #   it inside your VPC. With an endpoint that is hosted in a VPC, you can
    #   restrict access to your server and resources only within your VPC or
    #   choose to make it internet facing by attaching Elastic IP addresses
    #   directly to it.
    #
    #   <note markdown="1"> After May 19, 2021, you won't be able to create a server using
    #   `EndpointType=VPC_ENDPOINT` in your Amazon Web Services account if
    #   your account hasn't already done so before May 19, 2021. If you have
    #   already created servers with `EndpointType=VPC_ENDPOINT` in your
    #   Amazon Web Services account on or before May 19, 2021, you will not be
    #   affected. After this date, use `EndpointType`=`VPC`.
    #
    #    For more information, see
    #   https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
    #
    #    It is recommended that you use `VPC` as the `EndpointType`. With this
    #   endpoint type, you have the option to directly associate up to three
    #   Elastic IPv4 addresses (BYO IP included) with your server's endpoint
    #   and use VPC security groups to restrict traffic by the client's
    #   public IP address. This is not possible with `EndpointType` set to
    #   `VPC_ENDPOINT`.
    #
    #    </note>
    #
    # @option params [String] :host_key
    #   The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled
    #   server. You can add multiple host keys, in case you want to rotate
    #   keys, or have a set of active keys that use different algorithms.
    #
    #   Use the following command to generate an RSA 2048 bit key with no
    #   passphrase:
    #
    #   `ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key`.
    #
    #   Use a minimum value of 2048 for the `-b` option. You can create a
    #   stronger key by using 3072 or 4096.
    #
    #   Use the following command to generate an ECDSA 256 bit key with no
    #   passphrase:
    #
    #   `ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key`.
    #
    #   Valid values for the `-b` option for ECDSA are 256, 384, and 521.
    #
    #   Use the following command to generate an ED25519 key with no
    #   passphrase:
    #
    #   `ssh-keygen -t ed25519 -N "" -f my-new-server-key`.
    #
    #   For all of these commands, you can replace *my-new-server-key* with a
    #   string of your choice.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   SFTP-enabled server to a new server, don't update the host key.
    #   Accidentally changing a server's host key can be disruptive.
    #
    #   For more information, see [Manage host keys for your SFTP-enabled
    #   server][1] in the *Transfer Family User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key
    #
    # @option params [Types::IdentityProviderDetails] :identity_provider_details
    #   Required when `IdentityProviderType` is set to
    #   `AWS_DIRECTORY_SERVICE`, `Amazon Web Services_LAMBDA` or
    #   `API_GATEWAY`. Accepts an array containing all of the information
    #   required to use a directory in `AWS_DIRECTORY_SERVICE` or invoke a
    #   customer-supplied authentication API, including the API Gateway URL.
    #   Not required when `IdentityProviderType` is set to `SERVICE_MANAGED`.
    #
    # @option params [String] :identity_provider_type
    #   The mode of authentication for a server. The default value is
    #   `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the Transfer Family service.
    #
    #   Use `AWS_DIRECTORY_SERVICE` to provide access to Active Directory
    #   groups in Directory Service for Microsoft Active Directory or
    #   Microsoft Active Directory in your on-premises environment or in
    #   Amazon Web Services using AD Connector. This option also requires you
    #   to provide a Directory ID by using the `IdentityProviderDetails`
    #   parameter.
    #
    #   Use the `API_GATEWAY` value to integrate with an identity provider of
    #   your choosing. The `API_GATEWAY` setting requires you to provide an
    #   Amazon API Gateway endpoint URL to call for authentication by using
    #   the `IdentityProviderDetails` parameter.
    #
    #   Use the `AWS_LAMBDA` value to directly use an Lambda function as your
    #   identity provider. If you choose this value, you must specify the ARN
    #   for the Lambda function in the `Function` parameter for the
    #   `IdentityProviderDetails` data type.
    #
    # @option params [String] :logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a server to turn on Amazon CloudWatch logging
    #   for Amazon S3 or Amazon EFSevents. When set, you can view user
    #   activity in your CloudWatch logs.
    #
    # @option params [String] :post_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed after the user authenticates.
    #
    #   <note markdown="1"> The SFTP protocol does not support post-authentication display
    #   banners.
    #
    #    </note>
    #
    # @option params [String] :pre_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed before the user authenticates. For example, the
    #   following banner displays details about using the system:
    #
    #   `This system is for the use of authorized users only. Individuals
    #   using this computer system without authority, or in excess of their
    #   authority, are subject to having all of their activities on this
    #   system monitored and recorded by system personnel.`
    #
    # @option params [Array<String>] :protocols
    #   Specifies the file transfer protocol or protocols over which your file
    #   transfer protocol client can connect to your server's endpoint. The
    #   available protocols are:
    #
    #   * `SFTP` (Secure Shell (SSH) File Transfer Protocol): File transfer
    #     over SSH
    #
    #   * `FTPS` (File Transfer Protocol Secure): File transfer with TLS
    #     encryption
    #
    #   * `FTP` (File Transfer Protocol): Unencrypted file transfer
    #
    #   * `AS2` (Applicability Statement 2): used for transporting structured
    #     business-to-business data
    #
    #   <note markdown="1"> * If you select `FTPS`, you must choose a certificate stored in
    #     Certificate Manager (ACM) which is used to identify your server when
    #     clients connect to it over FTPS.
    #
    #   * If `Protocol` includes either `FTP` or `FTPS`, then the
    #     `EndpointType` must be `VPC` and the `IdentityProviderType` must be
    #     either `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `FTP`, then `AddressAllocationIds` cannot be
    #     associated.
    #
    #   * If `Protocol` is set only to `SFTP`, the `EndpointType` can be set
    #     to `PUBLIC` and the `IdentityProviderType` can be set any of the
    #     supported identity types: `SERVICE_MANAGED`,
    #     `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `AS2`, then the `EndpointType` must be `VPC`,
    #     and domain must be Amazon S3.
    #
    #    </note>
    #
    # @option params [Types::ProtocolDetails] :protocol_details
    #   The protocol settings that are configured for your server.
    #
    #   * To indicate passive mode (for FTP and FTPS protocols), use the
    #     `PassiveIp` parameter. Enter a single dotted-quad IPv4 address, such
    #     as the external IP address of a firewall, router, or load balancer.
    #
    #   * To ignore the error that is generated when the client attempts to
    #     use the `SETSTAT` command on a file that you are uploading to an
    #     Amazon S3 bucket, use the `SetStatOption` parameter. To have the
    #     Transfer Family server ignore the `SETSTAT` command and upload files
    #     without needing to make any changes to your SFTP client, set the
    #     value to `ENABLE_NO_OP`. If you set the `SetStatOption` parameter to
    #     `ENABLE_NO_OP`, Transfer Family generates a log entry to Amazon
    #     CloudWatch Logs, so that you can determine when the client is making
    #     a `SETSTAT` call.
    #
    #   * To determine whether your Transfer Family server resumes recent,
    #     negotiated sessions through a unique session ID, use the
    #     `TlsSessionResumptionMode` parameter.
    #
    #   * `As2Transports` indicates the transport method for the AS2 messages.
    #     Currently, only HTTP is supported.
    #
    # @option params [String] :security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for servers.
    #
    # @option params [Types::WorkflowDetails] :workflow_details
    #   Specifies the workflow ID for the workflow to assign and the execution
    #   role that's used for executing the workflow.
    #
    #   In addition to a workflow to execute when a file is uploaded
    #   completely, `WorkflowDetails` can also contain a workflow ID (and
    #   execution role) for a workflow to execute on partial upload. A partial
    #   upload occurs when the server session disconnects while the file is
    #   still being uploaded.
    #
    # @option params [Array<String>] :structured_log_destinations
    #   Specifies the log groups to which your server logs are sent.
    #
    #   To specify a log group, you must provide the ARN for an existing log
    #   group. In this case, the format of the log group is as follows:
    #
    #   `arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*`
    #
    #   For example,
    #   `arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*`
    #
    #   If you have previously specified a log group for a server, you can
    #   clear it, and in effect turn off structured logging, by providing an
    #   empty value for this parameter in an `update-server` call. For
    #   example:
    #
    #   `update-server --server-id s-1234567890abcdef0
    #   --structured-log-destinations`
    #
    # @return [Types::CreateServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServerResponse#server_id #server_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_server({
    #     certificate: "Certificate",
    #     domain: "S3", # accepts S3, EFS
    #     endpoint_details: {
    #       address_allocation_ids: ["AddressAllocationId"],
    #       subnet_ids: ["SubnetId"],
    #       vpc_endpoint_id: "VpcEndpointId",
    #       vpc_id: "VpcId",
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     endpoint_type: "PUBLIC", # accepts PUBLIC, VPC, VPC_ENDPOINT
    #     host_key: "HostKey",
    #     identity_provider_details: {
    #       url: "Url",
    #       invocation_role: "Role",
    #       directory_id: "DirectoryId",
    #       function: "Function",
    #       sftp_authentication_methods: "PASSWORD", # accepts PASSWORD, PUBLIC_KEY, PUBLIC_KEY_OR_PASSWORD, PUBLIC_KEY_AND_PASSWORD
    #     },
    #     identity_provider_type: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, API_GATEWAY, AWS_DIRECTORY_SERVICE, AWS_LAMBDA
    #     logging_role: "Role",
    #     post_authentication_login_banner: "PostAuthenticationLoginBanner",
    #     pre_authentication_login_banner: "PreAuthenticationLoginBanner",
    #     protocols: ["SFTP"], # accepts SFTP, FTP, FTPS, AS2
    #     protocol_details: {
    #       passive_ip: "PassiveIp",
    #       tls_session_resumption_mode: "DISABLED", # accepts DISABLED, ENABLED, ENFORCED
    #       set_stat_option: "DEFAULT", # accepts DEFAULT, ENABLE_NO_OP
    #       as_2_transports: ["HTTP"], # accepts HTTP
    #     },
    #     security_policy_name: "SecurityPolicyName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     workflow_details: {
    #       on_upload: [
    #         {
    #           workflow_id: "WorkflowId", # required
    #           execution_role: "Role", # required
    #         },
    #       ],
    #       on_partial_upload: [
    #         {
    #           workflow_id: "WorkflowId", # required
    #           execution_role: "Role", # required
    #         },
    #       ],
    #     },
    #     structured_log_destinations: ["Arn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateServer AWS API Documentation
    #
    # @overload create_server(params = {})
    # @param [Hash] params ({})
    def create_server(params = {}, options = {})
      req = build_request(:create_server, params)
      req.send_request(options)
    end

    # Creates a user and associates them with an existing file transfer
    # protocol-enabled server. You can only create and associate users with
    # servers that have the `IdentityProviderType` set to `SERVICE_MANAGED`.
    # Using parameters for `CreateUser`, you can specify the user name, set
    # the home directory, store the user's public key, and assign the
    # user's Identity and Access Management (IAM) role. You can also
    # optionally add a session policy, and assign metadata with tags that
    # can be used to group and search for users.
    #
    # @option params [String] :home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    # @option params [String] :home_directory_type
    #   The type of landing directory (folder) that you want your users' home
    #   directory to be when they log in to the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the `HomeDirectoryMappings`
    #   for how you want to make Amazon S3 or Amazon EFS paths visible to your
    #   users.
    #
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to make
    #   them visible. You must specify the `Entry` and `Target` pair, where
    #   `Entry` shows how the path is made visible and `Target` is the actual
    #   Amazon S3 or Amazon EFS path. If you only specify a target, it is
    #   displayed as is. You also must ensure that your Identity and Access
    #   Management (IAM) role provides access to paths in `Target`. This value
    #   can be set only when `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ \{ "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" \} ]`
    #
    #   In most cases, you can use this value instead of the session policy to
    #   lock your user down to the designated home directory ("`chroot`").
    #   To do this, you can set `Entry` to `/` and set `Target` to the
    #   HomeDirectory parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ \{ "Entry": "/", "Target": "/bucket_name/home/mydirectory" \} ]`
    #
    # @option params [String] :policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `$\{Transfer:UserName\}`, `$\{Transfer:HomeDirectory\}`, and
    #   `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> This policy applies only when the domain of `ServerId` is Amazon S3.
    #   Amazon EFS does not use session policies.
    #
    #    For session policies, Transfer Family stores the policy as a JSON
    #   blob, instead of the Amazon Resource Name (ARN) of the policy. You
    #   save the policy as a JSON blob and pass it in the `Policy` argument.
    #
    #    For an example of a session policy, see [Example session policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *Amazon Web Services
    #   Security Token Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #
    # @option params [Types::PosixProfile] :posix_profile
    #   Specifies the full POSIX identity, including user ID (`Uid`), group ID
    #   (`Gid`), and any secondary groups IDs (`SecondaryGids`), that controls
    #   your users' access to your Amazon EFS file systems. The POSIX
    #   permissions that are set on files and directories in Amazon EFS
    #   determine the level of access your users get when transferring files
    #   into and out of your Amazon EFS file systems.
    #
    # @option params [required, String] :role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3 bucket
    #   or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users when
    #   transferring files into and out of your Amazon S3 bucket or Amazon EFS
    #   file system. The IAM role should also contain a trust relationship
    #   that allows the server to access your resources when servicing your
    #   users' transfer requests.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance. This is the
    #   specific server that you added your user to.
    #
    # @option params [String] :ssh_public_key_body
    #   The public portion of the Secure Shell (SSH) key used to authenticate
    #   the user to the server.
    #
    #   The three standard SSH public key format elements are `<key type>`,
    #   `<body base64>`, and an optional `<comment>`, with spaces between each
    #   element.
    #
    #   Transfer Family accepts RSA, ECDSA, and ED25519 keys.
    #
    #   * For RSA keys, the key type is `ssh-rsa`.
    #
    #   * For ED25519 keys, the key type is `ssh-ed25519`.
    #
    #   * For ECDSA keys, the key type is either `ecdsa-sha2-nistp256`,
    #     `ecdsa-sha2-nistp384`, or `ecdsa-sha2-nistp521`, depending on the
    #     size of the key you generated.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for users. Tags
    #   are metadata attached to users for any purpose.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user and is associated with a
    #   `ServerId`. This user name must be a minimum of 3 and a maximum of 100
    #   characters long. The following are valid characters: a-z, A-Z, 0-9,
    #   underscore '\_', hyphen '-', period '.', and at sign '@'. The
    #   user name can't start with a hyphen, period, or at sign.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#server_id #server_id} => String
    #   * {Types::CreateUserResponse#user_name #user_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH", # accepts PATH, LOGICAL
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #       },
    #     ],
    #     policy: "Policy",
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1],
    #     },
    #     role: "Role", # required
    #     server_id: "ServerId", # required
    #     ssh_public_key_body: "SshPublicKeyBody",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     user_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Allows you to create a workflow with specified steps and step details
    # the workflow invokes after file transfer completes. After creating a
    # workflow, you can associate the workflow created with any transfer
    # servers by specifying the `workflow-details` field in `CreateServer`
    # and `UpdateServer` operations.
    #
    # @option params [String] :description
    #   A textual description for the workflow.
    #
    # @option params [required, Array<Types::WorkflowStep>] :steps
    #   Specifies the details for the steps that are in the specified
    #   workflow.
    #
    #   The `TYPE` specifies which of the following actions is being taken for
    #   this step.
    #
    #   * <b> <code>COPY</code> </b> - Copy the file to another location.
    #
    #   * <b> <code>CUSTOM</code> </b> - Perform a custom step with an Lambda
    #     function target.
    #
    #   * <b> <code>DECRYPT</code> </b> - Decrypt a file that was encrypted
    #     before it was uploaded.
    #
    #   * <b> <code>DELETE</code> </b> - Delete the file.
    #
    #   * <b> <code>TAG</code> </b> - Add a tag to the file.
    #
    #   <note markdown="1"> Currently, copying and tagging are supported only on S3.
    #
    #    </note>
    #
    #   For file location, you specify either the Amazon S3 bucket and key, or
    #   the Amazon EFS file system ID and path.
    #
    # @option params [Array<Types::WorkflowStep>] :on_exception_steps
    #   Specifies the steps (actions) to take if errors are encountered during
    #   execution of the workflow.
    #
    #   <note markdown="1"> For custom steps, the Lambda function needs to send `FAILURE` to the
    #   call back API to kick off the exception steps. Additionally, if the
    #   Lambda does not send `SUCCESS` before it times out, the exception
    #   steps are executed.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for workflows.
    #   Tags are metadata attached to workflows for any purpose.
    #
    # @return [Types::CreateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowResponse#workflow_id #workflow_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow({
    #     description: "WorkflowDescription",
    #     steps: [ # required
    #       {
    #         type: "COPY", # accepts COPY, CUSTOM, TAG, DELETE, DECRYPT
    #         copy_step_details: {
    #           name: "WorkflowStepName",
    #           destination_file_location: {
    #             s3_file_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key",
    #             },
    #             efs_file_location: {
    #               file_system_id: "EfsFileSystemId",
    #               path: "EfsPath",
    #             },
    #           },
    #           overwrite_existing: "TRUE", # accepts TRUE, FALSE
    #           source_file_location: "SourceFileLocation",
    #         },
    #         custom_step_details: {
    #           name: "WorkflowStepName",
    #           target: "CustomStepTarget",
    #           timeout_seconds: 1,
    #           source_file_location: "SourceFileLocation",
    #         },
    #         delete_step_details: {
    #           name: "WorkflowStepName",
    #           source_file_location: "SourceFileLocation",
    #         },
    #         tag_step_details: {
    #           name: "WorkflowStepName",
    #           tags: [
    #             {
    #               key: "S3TagKey", # required
    #               value: "S3TagValue", # required
    #             },
    #           ],
    #           source_file_location: "SourceFileLocation",
    #         },
    #         decrypt_step_details: {
    #           name: "WorkflowStepName",
    #           type: "PGP", # required, accepts PGP
    #           source_file_location: "SourceFileLocation",
    #           overwrite_existing: "TRUE", # accepts TRUE, FALSE
    #           destination_file_location: { # required
    #             s3_file_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key",
    #             },
    #             efs_file_location: {
    #               file_system_id: "EfsFileSystemId",
    #               path: "EfsPath",
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     on_exception_steps: [
    #       {
    #         type: "COPY", # accepts COPY, CUSTOM, TAG, DELETE, DECRYPT
    #         copy_step_details: {
    #           name: "WorkflowStepName",
    #           destination_file_location: {
    #             s3_file_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key",
    #             },
    #             efs_file_location: {
    #               file_system_id: "EfsFileSystemId",
    #               path: "EfsPath",
    #             },
    #           },
    #           overwrite_existing: "TRUE", # accepts TRUE, FALSE
    #           source_file_location: "SourceFileLocation",
    #         },
    #         custom_step_details: {
    #           name: "WorkflowStepName",
    #           target: "CustomStepTarget",
    #           timeout_seconds: 1,
    #           source_file_location: "SourceFileLocation",
    #         },
    #         delete_step_details: {
    #           name: "WorkflowStepName",
    #           source_file_location: "SourceFileLocation",
    #         },
    #         tag_step_details: {
    #           name: "WorkflowStepName",
    #           tags: [
    #             {
    #               key: "S3TagKey", # required
    #               value: "S3TagValue", # required
    #             },
    #           ],
    #           source_file_location: "SourceFileLocation",
    #         },
    #         decrypt_step_details: {
    #           name: "WorkflowStepName",
    #           type: "PGP", # required, accepts PGP
    #           source_file_location: "SourceFileLocation",
    #           overwrite_existing: "TRUE", # accepts TRUE, FALSE
    #           destination_file_location: { # required
    #             s3_file_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key",
    #             },
    #             efs_file_location: {
    #               file_system_id: "EfsFileSystemId",
    #               path: "EfsPath",
    #             },
    #           },
    #         },
    #       },
    #     ],
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
    #   resp.workflow_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateWorkflow AWS API Documentation
    #
    # @overload create_workflow(params = {})
    # @param [Hash] params ({})
    def create_workflow(params = {}, options = {})
      req = build_request(:create_workflow, params)
      req.send_request(options)
    end

    # Allows you to delete the access specified in the `ServerID` and
    # `ExternalID` parameters.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that has this user
    #   assigned.
    #
    # @option params [required, String] :external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate have
    #   access to your Amazon S3 or Amazon EFS resources over the enabled
    #   protocols using Transfer Family. If you know the group name, you can
    #   view the SID values by running the following command using Windows
    #   PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your Active
    #   Directory group.
    #
    #   The regular expression used to validate this parameter is a string of
    #   characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any of
    #   the following characters: =,.@:/-
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access({
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteAccess AWS API Documentation
    #
    # @overload delete_access(params = {})
    # @param [Hash] params ({})
    def delete_access(params = {}, options = {})
      req = build_request(:delete_access, params)
      req.send_request(options)
    end

    # Delete the agreement that's specified in the provided `AgreementId`.
    #
    # @option params [required, String] :agreement_id
    #   A unique identifier for the agreement. This identifier is returned
    #   when you create an agreement.
    #
    # @option params [required, String] :server_id
    #   The server identifier associated with the agreement that you are
    #   deleting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agreement({
    #     agreement_id: "AgreementId", # required
    #     server_id: "ServerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteAgreement AWS API Documentation
    #
    # @overload delete_agreement(params = {})
    # @param [Hash] params ({})
    def delete_agreement(params = {}, options = {})
      req = build_request(:delete_agreement, params)
      req.send_request(options)
    end

    # Deletes the certificate that's specified in the `CertificateId`
    # parameter.
    #
    # @option params [required, String] :certificate_id
    #   The identifier of the certificate object that you are deleting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteCertificate AWS API Documentation
    #
    # @overload delete_certificate(params = {})
    # @param [Hash] params ({})
    def delete_certificate(params = {}, options = {})
      req = build_request(:delete_certificate, params)
      req.send_request(options)
    end

    # Deletes the agreement that's specified in the provided `ConnectorId`.
    #
    # @option params [required, String] :connector_id
    #   The unique identifier for the connector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector({
    #     connector_id: "ConnectorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteConnector AWS API Documentation
    #
    # @overload delete_connector(params = {})
    # @param [Hash] params ({})
    def delete_connector(params = {}, options = {})
      req = build_request(:delete_connector, params)
      req.send_request(options)
    end

    # Deletes the host key that's specified in the `HostKeyId` parameter.
    #
    # @option params [required, String] :server_id
    #   The identifier of the server that contains the host key that you are
    #   deleting.
    #
    # @option params [required, String] :host_key_id
    #   The identifier of the host key that you are deleting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_host_key({
    #     server_id: "ServerId", # required
    #     host_key_id: "HostKeyId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteHostKey AWS API Documentation
    #
    # @overload delete_host_key(params = {})
    # @param [Hash] params ({})
    def delete_host_key(params = {}, options = {})
      req = build_request(:delete_host_key, params)
      req.send_request(options)
    end

    # Deletes the profile that's specified in the `ProfileId` parameter.
    #
    # @option params [required, String] :profile_id
    #   The identifier of the profile that you are deleting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile({
    #     profile_id: "ProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteProfile AWS API Documentation
    #
    # @overload delete_profile(params = {})
    # @param [Hash] params ({})
    def delete_profile(params = {}, options = {})
      req = build_request(:delete_profile, params)
      req.send_request(options)
    end

    # Deletes the file transfer protocol-enabled server that you specify.
    #
    # No response returns from this operation.
    #
    # @option params [required, String] :server_id
    #   A unique system-assigned identifier for a server instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_server({
    #     server_id: "ServerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteServer AWS API Documentation
    #
    # @overload delete_server(params = {})
    # @param [Hash] params ({})
    def delete_server(params = {}, options = {})
      req = build_request(:delete_server, params)
      req.send_request(options)
    end

    # Deletes a user's Secure Shell (SSH) public key.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a file transfer
    #   protocol-enabled server instance that has the user assigned to it.
    #
    # @option params [required, String] :ssh_public_key_id
    #   A unique identifier used to reference your user's specific SSH key.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user whose public key is being
    #   deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ssh_public_key({
    #     server_id: "ServerId", # required
    #     ssh_public_key_id: "SshPublicKeyId", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteSshPublicKey AWS API Documentation
    #
    # @overload delete_ssh_public_key(params = {})
    # @param [Hash] params ({})
    def delete_ssh_public_key(params = {}, options = {})
      req = build_request(:delete_ssh_public_key, params)
      req.send_request(options)
    end

    # Deletes the user belonging to a file transfer protocol-enabled server
    # you specify.
    #
    # No response returns from this operation.
    #
    # <note markdown="1"> When you delete a user from a server, the user's information is lost.
    #
    #  </note>
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance that has the
    #   user assigned to it.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user that is being deleted from a
    #   server.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes the specified workflow.
    #
    # @option params [required, String] :workflow_id
    #   A unique identifier for the workflow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     workflow_id: "WorkflowId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # Describes the access that is assigned to the specific file transfer
    # protocol-enabled server, as identified by its `ServerId` property and
    # its `ExternalId`.
    #
    # The response from this call returns the properties of the access that
    # is associated with the `ServerId` value that was specified.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that has this access
    #   assigned.
    #
    # @option params [required, String] :external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate have
    #   access to your Amazon S3 or Amazon EFS resources over the enabled
    #   protocols using Transfer Family. If you know the group name, you can
    #   view the SID values by running the following command using Windows
    #   PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your Active
    #   Directory group.
    #
    #   The regular expression used to validate this parameter is a string of
    #   characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any of
    #   the following characters: =,.@:/-
    #
    # @return [Types::DescribeAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccessResponse#server_id #server_id} => String
    #   * {Types::DescribeAccessResponse#access #access} => Types::DescribedAccess
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_access({
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.access.home_directory #=> String
    #   resp.access.home_directory_mappings #=> Array
    #   resp.access.home_directory_mappings[0].entry #=> String
    #   resp.access.home_directory_mappings[0].target #=> String
    #   resp.access.home_directory_type #=> String, one of "PATH", "LOGICAL"
    #   resp.access.policy #=> String
    #   resp.access.posix_profile.uid #=> Integer
    #   resp.access.posix_profile.gid #=> Integer
    #   resp.access.posix_profile.secondary_gids #=> Array
    #   resp.access.posix_profile.secondary_gids[0] #=> Integer
    #   resp.access.role #=> String
    #   resp.access.external_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeAccess AWS API Documentation
    #
    # @overload describe_access(params = {})
    # @param [Hash] params ({})
    def describe_access(params = {}, options = {})
      req = build_request(:describe_access, params)
      req.send_request(options)
    end

    # Describes the agreement that's identified by the `AgreementId`.
    #
    # @option params [required, String] :agreement_id
    #   A unique identifier for the agreement. This identifier is returned
    #   when you create an agreement.
    #
    # @option params [required, String] :server_id
    #   The server identifier that's associated with the agreement.
    #
    # @return [Types::DescribeAgreementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAgreementResponse#agreement #agreement} => Types::DescribedAgreement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agreement({
    #     agreement_id: "AgreementId", # required
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement.arn #=> String
    #   resp.agreement.agreement_id #=> String
    #   resp.agreement.description #=> String
    #   resp.agreement.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.agreement.server_id #=> String
    #   resp.agreement.local_profile_id #=> String
    #   resp.agreement.partner_profile_id #=> String
    #   resp.agreement.base_directory #=> String
    #   resp.agreement.access_role #=> String
    #   resp.agreement.tags #=> Array
    #   resp.agreement.tags[0].key #=> String
    #   resp.agreement.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeAgreement AWS API Documentation
    #
    # @overload describe_agreement(params = {})
    # @param [Hash] params ({})
    def describe_agreement(params = {}, options = {})
      req = build_request(:describe_agreement, params)
      req.send_request(options)
    end

    # Describes the certificate that's identified by the `CertificateId`.
    #
    # @option params [required, String] :certificate_id
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #
    # @return [Types::DescribeCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificateResponse#certificate #certificate} => Types::DescribedCertificate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate.arn #=> String
    #   resp.certificate.certificate_id #=> String
    #   resp.certificate.usage #=> String, one of "SIGNING", "ENCRYPTION"
    #   resp.certificate.status #=> String, one of "ACTIVE", "PENDING_ROTATION", "INACTIVE"
    #   resp.certificate.certificate #=> String
    #   resp.certificate.certificate_chain #=> String
    #   resp.certificate.active_date #=> Time
    #   resp.certificate.inactive_date #=> Time
    #   resp.certificate.serial #=> String
    #   resp.certificate.not_before_date #=> Time
    #   resp.certificate.not_after_date #=> Time
    #   resp.certificate.type #=> String, one of "CERTIFICATE", "CERTIFICATE_WITH_PRIVATE_KEY"
    #   resp.certificate.description #=> String
    #   resp.certificate.tags #=> Array
    #   resp.certificate.tags[0].key #=> String
    #   resp.certificate.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeCertificate AWS API Documentation
    #
    # @overload describe_certificate(params = {})
    # @param [Hash] params ({})
    def describe_certificate(params = {}, options = {})
      req = build_request(:describe_certificate, params)
      req.send_request(options)
    end

    # Describes the connector that's identified by the `ConnectorId.`
    #
    # @option params [required, String] :connector_id
    #   The unique identifier for the connector.
    #
    # @return [Types::DescribeConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectorResponse#connector #connector} => Types::DescribedConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector({
    #     connector_id: "ConnectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connector.arn #=> String
    #   resp.connector.connector_id #=> String
    #   resp.connector.url #=> String
    #   resp.connector.as_2_config.local_profile_id #=> String
    #   resp.connector.as_2_config.partner_profile_id #=> String
    #   resp.connector.as_2_config.message_subject #=> String
    #   resp.connector.as_2_config.compression #=> String, one of "ZLIB", "DISABLED"
    #   resp.connector.as_2_config.encryption_algorithm #=> String, one of "AES128_CBC", "AES192_CBC", "AES256_CBC", "NONE"
    #   resp.connector.as_2_config.signing_algorithm #=> String, one of "SHA256", "SHA384", "SHA512", "SHA1", "NONE"
    #   resp.connector.as_2_config.mdn_signing_algorithm #=> String, one of "SHA256", "SHA384", "SHA512", "SHA1", "NONE", "DEFAULT"
    #   resp.connector.as_2_config.mdn_response #=> String, one of "SYNC", "NONE"
    #   resp.connector.as_2_config.basic_auth_secret_id #=> String
    #   resp.connector.access_role #=> String
    #   resp.connector.logging_role #=> String
    #   resp.connector.tags #=> Array
    #   resp.connector.tags[0].key #=> String
    #   resp.connector.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeConnector AWS API Documentation
    #
    # @overload describe_connector(params = {})
    # @param [Hash] params ({})
    def describe_connector(params = {}, options = {})
      req = build_request(:describe_connector, params)
      req.send_request(options)
    end

    # You can use `DescribeExecution` to check the details of the execution
    # of the specified workflow.
    #
    # <note markdown="1"> This API call only returns details for in-progress workflows.
    #
    #  If you provide an ID for an execution that is not in progress, or if
    # the execution doesn't match the specified workflow ID, you receive a
    # `ResourceNotFound` exception.
    #
    #  </note>
    #
    # @option params [required, String] :execution_id
    #   A unique identifier for the execution of a workflow.
    #
    # @option params [required, String] :workflow_id
    #   A unique identifier for the workflow.
    #
    # @return [Types::DescribeExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExecutionResponse#workflow_id #workflow_id} => String
    #   * {Types::DescribeExecutionResponse#execution #execution} => Types::DescribedExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_execution({
    #     execution_id: "ExecutionId", # required
    #     workflow_id: "WorkflowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_id #=> String
    #   resp.execution.execution_id #=> String
    #   resp.execution.initial_file_location.s3_file_location.bucket #=> String
    #   resp.execution.initial_file_location.s3_file_location.key #=> String
    #   resp.execution.initial_file_location.s3_file_location.version_id #=> String
    #   resp.execution.initial_file_location.s3_file_location.etag #=> String
    #   resp.execution.initial_file_location.efs_file_location.file_system_id #=> String
    #   resp.execution.initial_file_location.efs_file_location.path #=> String
    #   resp.execution.service_metadata.user_details.user_name #=> String
    #   resp.execution.service_metadata.user_details.server_id #=> String
    #   resp.execution.service_metadata.user_details.session_id #=> String
    #   resp.execution.execution_role #=> String
    #   resp.execution.logging_configuration.logging_role #=> String
    #   resp.execution.logging_configuration.log_group_name #=> String
    #   resp.execution.posix_profile.uid #=> Integer
    #   resp.execution.posix_profile.gid #=> Integer
    #   resp.execution.posix_profile.secondary_gids #=> Array
    #   resp.execution.posix_profile.secondary_gids[0] #=> Integer
    #   resp.execution.status #=> String, one of "IN_PROGRESS", "COMPLETED", "EXCEPTION", "HANDLING_EXCEPTION"
    #   resp.execution.results.steps #=> Array
    #   resp.execution.results.steps[0].step_type #=> String, one of "COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"
    #   resp.execution.results.steps[0].outputs #=> String
    #   resp.execution.results.steps[0].error.type #=> String, one of "PERMISSION_DENIED", "CUSTOM_STEP_FAILED", "THROTTLED", "ALREADY_EXISTS", "NOT_FOUND", "BAD_REQUEST", "TIMEOUT", "INTERNAL_SERVER_ERROR"
    #   resp.execution.results.steps[0].error.message #=> String
    #   resp.execution.results.on_exception_steps #=> Array
    #   resp.execution.results.on_exception_steps[0].step_type #=> String, one of "COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"
    #   resp.execution.results.on_exception_steps[0].outputs #=> String
    #   resp.execution.results.on_exception_steps[0].error.type #=> String, one of "PERMISSION_DENIED", "CUSTOM_STEP_FAILED", "THROTTLED", "ALREADY_EXISTS", "NOT_FOUND", "BAD_REQUEST", "TIMEOUT", "INTERNAL_SERVER_ERROR"
    #   resp.execution.results.on_exception_steps[0].error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeExecution AWS API Documentation
    #
    # @overload describe_execution(params = {})
    # @param [Hash] params ({})
    def describe_execution(params = {}, options = {})
      req = build_request(:describe_execution, params)
      req.send_request(options)
    end

    # Returns the details of the host key that's specified by the
    # `HostKeyId` and `ServerId`.
    #
    # @option params [required, String] :server_id
    #   The identifier of the server that contains the host key that you want
    #   described.
    #
    # @option params [required, String] :host_key_id
    #   The identifier of the host key that you want described.
    #
    # @return [Types::DescribeHostKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHostKeyResponse#host_key #host_key} => Types::DescribedHostKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_host_key({
    #     server_id: "ServerId", # required
    #     host_key_id: "HostKeyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.host_key.arn #=> String
    #   resp.host_key.host_key_id #=> String
    #   resp.host_key.host_key_fingerprint #=> String
    #   resp.host_key.description #=> String
    #   resp.host_key.type #=> String
    #   resp.host_key.date_imported #=> Time
    #   resp.host_key.tags #=> Array
    #   resp.host_key.tags[0].key #=> String
    #   resp.host_key.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeHostKey AWS API Documentation
    #
    # @overload describe_host_key(params = {})
    # @param [Hash] params ({})
    def describe_host_key(params = {}, options = {})
      req = build_request(:describe_host_key, params)
      req.send_request(options)
    end

    # Returns the details of the profile that's specified by the
    # `ProfileId`.
    #
    # @option params [required, String] :profile_id
    #   The identifier of the profile that you want described.
    #
    # @return [Types::DescribeProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProfileResponse#profile #profile} => Types::DescribedProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_profile({
    #     profile_id: "ProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.arn #=> String
    #   resp.profile.profile_id #=> String
    #   resp.profile.profile_type #=> String, one of "LOCAL", "PARTNER"
    #   resp.profile.as_2_id #=> String
    #   resp.profile.certificate_ids #=> Array
    #   resp.profile.certificate_ids[0] #=> String
    #   resp.profile.tags #=> Array
    #   resp.profile.tags[0].key #=> String
    #   resp.profile.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeProfile AWS API Documentation
    #
    # @overload describe_profile(params = {})
    # @param [Hash] params ({})
    def describe_profile(params = {}, options = {})
      req = build_request(:describe_profile, params)
      req.send_request(options)
    end

    # Describes the security policy that is attached to your file transfer
    # protocol-enabled server. The response contains a description of the
    # security policy's properties. For more information about security
    # policies, see [Working with security policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html
    #
    # @option params [required, String] :security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #
    # @return [Types::DescribeSecurityPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityPolicyResponse#security_policy #security_policy} => Types::DescribedSecurityPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_policy({
    #     security_policy_name: "SecurityPolicyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_policy.fips #=> Boolean
    #   resp.security_policy.security_policy_name #=> String
    #   resp.security_policy.ssh_ciphers #=> Array
    #   resp.security_policy.ssh_ciphers[0] #=> String
    #   resp.security_policy.ssh_kexs #=> Array
    #   resp.security_policy.ssh_kexs[0] #=> String
    #   resp.security_policy.ssh_macs #=> Array
    #   resp.security_policy.ssh_macs[0] #=> String
    #   resp.security_policy.tls_ciphers #=> Array
    #   resp.security_policy.tls_ciphers[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeSecurityPolicy AWS API Documentation
    #
    # @overload describe_security_policy(params = {})
    # @param [Hash] params ({})
    def describe_security_policy(params = {}, options = {})
      req = build_request(:describe_security_policy, params)
      req.send_request(options)
    end

    # Describes a file transfer protocol-enabled server that you specify by
    # passing the `ServerId` parameter.
    #
    # The response contains a description of a server's properties. When
    # you set `EndpointType` to VPC, the response will contain the
    # `EndpointDetails`.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server.
    #
    # @return [Types::DescribeServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServerResponse#server #server} => Types::DescribedServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_server({
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server.arn #=> String
    #   resp.server.certificate #=> String
    #   resp.server.protocol_details.passive_ip #=> String
    #   resp.server.protocol_details.tls_session_resumption_mode #=> String, one of "DISABLED", "ENABLED", "ENFORCED"
    #   resp.server.protocol_details.set_stat_option #=> String, one of "DEFAULT", "ENABLE_NO_OP"
    #   resp.server.protocol_details.as_2_transports #=> Array
    #   resp.server.protocol_details.as_2_transports[0] #=> String, one of "HTTP"
    #   resp.server.domain #=> String, one of "S3", "EFS"
    #   resp.server.endpoint_details.address_allocation_ids #=> Array
    #   resp.server.endpoint_details.address_allocation_ids[0] #=> String
    #   resp.server.endpoint_details.subnet_ids #=> Array
    #   resp.server.endpoint_details.subnet_ids[0] #=> String
    #   resp.server.endpoint_details.vpc_endpoint_id #=> String
    #   resp.server.endpoint_details.vpc_id #=> String
    #   resp.server.endpoint_details.security_group_ids #=> Array
    #   resp.server.endpoint_details.security_group_ids[0] #=> String
    #   resp.server.endpoint_type #=> String, one of "PUBLIC", "VPC", "VPC_ENDPOINT"
    #   resp.server.host_key_fingerprint #=> String
    #   resp.server.identity_provider_details.url #=> String
    #   resp.server.identity_provider_details.invocation_role #=> String
    #   resp.server.identity_provider_details.directory_id #=> String
    #   resp.server.identity_provider_details.function #=> String
    #   resp.server.identity_provider_details.sftp_authentication_methods #=> String, one of "PASSWORD", "PUBLIC_KEY", "PUBLIC_KEY_OR_PASSWORD", "PUBLIC_KEY_AND_PASSWORD"
    #   resp.server.identity_provider_type #=> String, one of "SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"
    #   resp.server.logging_role #=> String
    #   resp.server.post_authentication_login_banner #=> String
    #   resp.server.pre_authentication_login_banner #=> String
    #   resp.server.protocols #=> Array
    #   resp.server.protocols[0] #=> String, one of "SFTP", "FTP", "FTPS", "AS2"
    #   resp.server.security_policy_name #=> String
    #   resp.server.server_id #=> String
    #   resp.server.state #=> String, one of "OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"
    #   resp.server.tags #=> Array
    #   resp.server.tags[0].key #=> String
    #   resp.server.tags[0].value #=> String
    #   resp.server.user_count #=> Integer
    #   resp.server.workflow_details.on_upload #=> Array
    #   resp.server.workflow_details.on_upload[0].workflow_id #=> String
    #   resp.server.workflow_details.on_upload[0].execution_role #=> String
    #   resp.server.workflow_details.on_partial_upload #=> Array
    #   resp.server.workflow_details.on_partial_upload[0].workflow_id #=> String
    #   resp.server.workflow_details.on_partial_upload[0].execution_role #=> String
    #   resp.server.structured_log_destinations #=> Array
    #   resp.server.structured_log_destinations[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * server_offline
    #   * server_online
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeServer AWS API Documentation
    #
    # @overload describe_server(params = {})
    # @param [Hash] params ({})
    def describe_server(params = {}, options = {})
      req = build_request(:describe_server, params)
      req.send_request(options)
    end

    # Describes the user assigned to the specific file transfer
    # protocol-enabled server, as identified by its `ServerId` property.
    #
    # The response from this call returns the properties of the user
    # associated with the `ServerId` value that was specified.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that has this user
    #   assigned.
    #
    # @option params [required, String] :user_name
    #   The name of the user assigned to one or more servers. User names are
    #   part of the sign-in credentials to use the Transfer Family service and
    #   perform file transfer tasks.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#server_id #server_id} => String
    #   * {Types::DescribeUserResponse#user #user} => Types::DescribedUser
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.user.arn #=> String
    #   resp.user.home_directory #=> String
    #   resp.user.home_directory_mappings #=> Array
    #   resp.user.home_directory_mappings[0].entry #=> String
    #   resp.user.home_directory_mappings[0].target #=> String
    #   resp.user.home_directory_type #=> String, one of "PATH", "LOGICAL"
    #   resp.user.policy #=> String
    #   resp.user.posix_profile.uid #=> Integer
    #   resp.user.posix_profile.gid #=> Integer
    #   resp.user.posix_profile.secondary_gids #=> Array
    #   resp.user.posix_profile.secondary_gids[0] #=> Integer
    #   resp.user.role #=> String
    #   resp.user.ssh_public_keys #=> Array
    #   resp.user.ssh_public_keys[0].date_imported #=> Time
    #   resp.user.ssh_public_keys[0].ssh_public_key_body #=> String
    #   resp.user.ssh_public_keys[0].ssh_public_key_id #=> String
    #   resp.user.tags #=> Array
    #   resp.user.tags[0].key #=> String
    #   resp.user.tags[0].value #=> String
    #   resp.user.user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Describes the specified workflow.
    #
    # @option params [required, String] :workflow_id
    #   A unique identifier for the workflow.
    #
    # @return [Types::DescribeWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkflowResponse#workflow #workflow} => Types::DescribedWorkflow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workflow({
    #     workflow_id: "WorkflowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow.arn #=> String
    #   resp.workflow.description #=> String
    #   resp.workflow.steps #=> Array
    #   resp.workflow.steps[0].type #=> String, one of "COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"
    #   resp.workflow.steps[0].copy_step_details.name #=> String
    #   resp.workflow.steps[0].copy_step_details.destination_file_location.s3_file_location.bucket #=> String
    #   resp.workflow.steps[0].copy_step_details.destination_file_location.s3_file_location.key #=> String
    #   resp.workflow.steps[0].copy_step_details.destination_file_location.efs_file_location.file_system_id #=> String
    #   resp.workflow.steps[0].copy_step_details.destination_file_location.efs_file_location.path #=> String
    #   resp.workflow.steps[0].copy_step_details.overwrite_existing #=> String, one of "TRUE", "FALSE"
    #   resp.workflow.steps[0].copy_step_details.source_file_location #=> String
    #   resp.workflow.steps[0].custom_step_details.name #=> String
    #   resp.workflow.steps[0].custom_step_details.target #=> String
    #   resp.workflow.steps[0].custom_step_details.timeout_seconds #=> Integer
    #   resp.workflow.steps[0].custom_step_details.source_file_location #=> String
    #   resp.workflow.steps[0].delete_step_details.name #=> String
    #   resp.workflow.steps[0].delete_step_details.source_file_location #=> String
    #   resp.workflow.steps[0].tag_step_details.name #=> String
    #   resp.workflow.steps[0].tag_step_details.tags #=> Array
    #   resp.workflow.steps[0].tag_step_details.tags[0].key #=> String
    #   resp.workflow.steps[0].tag_step_details.tags[0].value #=> String
    #   resp.workflow.steps[0].tag_step_details.source_file_location #=> String
    #   resp.workflow.steps[0].decrypt_step_details.name #=> String
    #   resp.workflow.steps[0].decrypt_step_details.type #=> String, one of "PGP"
    #   resp.workflow.steps[0].decrypt_step_details.source_file_location #=> String
    #   resp.workflow.steps[0].decrypt_step_details.overwrite_existing #=> String, one of "TRUE", "FALSE"
    #   resp.workflow.steps[0].decrypt_step_details.destination_file_location.s3_file_location.bucket #=> String
    #   resp.workflow.steps[0].decrypt_step_details.destination_file_location.s3_file_location.key #=> String
    #   resp.workflow.steps[0].decrypt_step_details.destination_file_location.efs_file_location.file_system_id #=> String
    #   resp.workflow.steps[0].decrypt_step_details.destination_file_location.efs_file_location.path #=> String
    #   resp.workflow.on_exception_steps #=> Array
    #   resp.workflow.on_exception_steps[0].type #=> String, one of "COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"
    #   resp.workflow.on_exception_steps[0].copy_step_details.name #=> String
    #   resp.workflow.on_exception_steps[0].copy_step_details.destination_file_location.s3_file_location.bucket #=> String
    #   resp.workflow.on_exception_steps[0].copy_step_details.destination_file_location.s3_file_location.key #=> String
    #   resp.workflow.on_exception_steps[0].copy_step_details.destination_file_location.efs_file_location.file_system_id #=> String
    #   resp.workflow.on_exception_steps[0].copy_step_details.destination_file_location.efs_file_location.path #=> String
    #   resp.workflow.on_exception_steps[0].copy_step_details.overwrite_existing #=> String, one of "TRUE", "FALSE"
    #   resp.workflow.on_exception_steps[0].copy_step_details.source_file_location #=> String
    #   resp.workflow.on_exception_steps[0].custom_step_details.name #=> String
    #   resp.workflow.on_exception_steps[0].custom_step_details.target #=> String
    #   resp.workflow.on_exception_steps[0].custom_step_details.timeout_seconds #=> Integer
    #   resp.workflow.on_exception_steps[0].custom_step_details.source_file_location #=> String
    #   resp.workflow.on_exception_steps[0].delete_step_details.name #=> String
    #   resp.workflow.on_exception_steps[0].delete_step_details.source_file_location #=> String
    #   resp.workflow.on_exception_steps[0].tag_step_details.name #=> String
    #   resp.workflow.on_exception_steps[0].tag_step_details.tags #=> Array
    #   resp.workflow.on_exception_steps[0].tag_step_details.tags[0].key #=> String
    #   resp.workflow.on_exception_steps[0].tag_step_details.tags[0].value #=> String
    #   resp.workflow.on_exception_steps[0].tag_step_details.source_file_location #=> String
    #   resp.workflow.on_exception_steps[0].decrypt_step_details.name #=> String
    #   resp.workflow.on_exception_steps[0].decrypt_step_details.type #=> String, one of "PGP"
    #   resp.workflow.on_exception_steps[0].decrypt_step_details.source_file_location #=> String
    #   resp.workflow.on_exception_steps[0].decrypt_step_details.overwrite_existing #=> String, one of "TRUE", "FALSE"
    #   resp.workflow.on_exception_steps[0].decrypt_step_details.destination_file_location.s3_file_location.bucket #=> String
    #   resp.workflow.on_exception_steps[0].decrypt_step_details.destination_file_location.s3_file_location.key #=> String
    #   resp.workflow.on_exception_steps[0].decrypt_step_details.destination_file_location.efs_file_location.file_system_id #=> String
    #   resp.workflow.on_exception_steps[0].decrypt_step_details.destination_file_location.efs_file_location.path #=> String
    #   resp.workflow.workflow_id #=> String
    #   resp.workflow.tags #=> Array
    #   resp.workflow.tags[0].key #=> String
    #   resp.workflow.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeWorkflow AWS API Documentation
    #
    # @overload describe_workflow(params = {})
    # @param [Hash] params ({})
    def describe_workflow(params = {}, options = {})
      req = build_request(:describe_workflow, params)
      req.send_request(options)
    end

    # Imports the signing and encryption certificates that you need to
    # create local (AS2) profiles and partner profiles.
    #
    # @option params [required, String] :usage
    #   Specifies whether this certificate is used for signing or encryption.
    #
    # @option params [required, String] :certificate
    #   * For the CLI, provide a file path for a certificate in URI format.
    #     For example, `--certificate file://encryption-cert.pem`.
    #     Alternatively, you can provide the raw content.
    #
    #   * For the SDK, specify the raw content of a certificate file. For
    #     example, `` --certificate "`cat encryption-cert.pem`" ``.
    #
    # @option params [String] :certificate_chain
    #   An optional list of certificates that make up the chain for the
    #   certificate that's being imported.
    #
    # @option params [String] :private_key
    #   * For the CLI, provide a file path for a private key in URI format.For
    #     example, `--private-key file://encryption-key.pem`. Alternatively,
    #     you can provide the raw content of the private key file.
    #
    #   * For the SDK, specify the raw content of a private key file. For
    #     example, `` --private-key "`cat encryption-key.pem`" ``
    #
    # @option params [Time,DateTime,Date,Integer,String] :active_date
    #   An optional date that specifies when the certificate becomes active.
    #
    # @option params [Time,DateTime,Date,Integer,String] :inactive_date
    #   An optional date that specifies when the certificate becomes inactive.
    #
    # @option params [String] :description
    #   A short description that helps identify the certificate.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for certificates.
    #
    # @return [Types::ImportCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportCertificateResponse#certificate_id #certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_certificate({
    #     usage: "SIGNING", # required, accepts SIGNING, ENCRYPTION
    #     certificate: "CertificateBodyType", # required
    #     certificate_chain: "CertificateChainType",
    #     private_key: "PrivateKeyType",
    #     active_date: Time.now,
    #     inactive_date: Time.now,
    #     description: "Description",
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
    #   resp.certificate_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportCertificate AWS API Documentation
    #
    # @overload import_certificate(params = {})
    # @param [Hash] params ({})
    def import_certificate(params = {}, options = {})
      req = build_request(:import_certificate, params)
      req.send_request(options)
    end

    # Adds a host key to the server that's specified by the `ServerId`
    # parameter.
    #
    # @option params [required, String] :server_id
    #   The identifier of the server that contains the host key that you are
    #   importing.
    #
    # @option params [required, String] :host_key_body
    #   The private key portion of an SSH key pair.
    #
    #   Transfer Family accepts RSA, ECDSA, and ED25519 keys.
    #
    # @option params [String] :description
    #   The text description that identifies this host key.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for host keys.
    #
    # @return [Types::ImportHostKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportHostKeyResponse#server_id #server_id} => String
    #   * {Types::ImportHostKeyResponse#host_key_id #host_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_host_key({
    #     server_id: "ServerId", # required
    #     host_key_body: "HostKey", # required
    #     description: "HostKeyDescription",
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
    #   resp.server_id #=> String
    #   resp.host_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportHostKey AWS API Documentation
    #
    # @overload import_host_key(params = {})
    # @param [Hash] params ({})
    def import_host_key(params = {}, options = {})
      req = build_request(:import_host_key, params)
      req.send_request(options)
    end

    # Adds a Secure Shell (SSH) public key to a Transfer Family user
    # identified by a `UserName` value assigned to the specific file
    # transfer protocol-enabled server, identified by `ServerId`.
    #
    # The response returns the `UserName` value, the `ServerId` value, and
    # the name of the `SshPublicKeyId`.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server.
    #
    # @option params [required, String] :ssh_public_key_body
    #   The public key portion of an SSH key pair.
    #
    #   Transfer Family accepts RSA, ECDSA, and ED25519 keys.
    #
    # @option params [required, String] :user_name
    #   The name of the Transfer Family user that is assigned to one or more
    #   servers.
    #
    # @return [Types::ImportSshPublicKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportSshPublicKeyResponse#server_id #server_id} => String
    #   * {Types::ImportSshPublicKeyResponse#ssh_public_key_id #ssh_public_key_id} => String
    #   * {Types::ImportSshPublicKeyResponse#user_name #user_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_ssh_public_key({
    #     server_id: "ServerId", # required
    #     ssh_public_key_body: "SshPublicKeyBody", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.ssh_public_key_id #=> String
    #   resp.user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportSshPublicKey AWS API Documentation
    #
    # @overload import_ssh_public_key(params = {})
    # @param [Hash] params ({})
    def import_ssh_public_key(params = {}, options = {})
      req = build_request(:import_ssh_public_key, params)
      req.send_request(options)
    end

    # Lists the details for all the accesses you have on your server.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of access SIDs to return.
    #
    # @option params [String] :next_token
    #   When you can get additional results from the `ListAccesses` call, a
    #   `NextToken` parameter is returned in the output. You can then pass in
    #   a subsequent command to the `NextToken` parameter to continue listing
    #   additional accesses.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that has users
    #   assigned to it.
    #
    # @return [Types::ListAccessesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessesResponse#next_token #next_token} => String
    #   * {Types::ListAccessesResponse#server_id #server_id} => String
    #   * {Types::ListAccessesResponse#accesses #accesses} => Array&lt;Types::ListedAccess&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accesses({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.server_id #=> String
    #   resp.accesses #=> Array
    #   resp.accesses[0].home_directory #=> String
    #   resp.accesses[0].home_directory_type #=> String, one of "PATH", "LOGICAL"
    #   resp.accesses[0].role #=> String
    #   resp.accesses[0].external_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListAccesses AWS API Documentation
    #
    # @overload list_accesses(params = {})
    # @param [Hash] params ({})
    def list_accesses(params = {}, options = {})
      req = build_request(:list_accesses, params)
      req.send_request(options)
    end

    # Returns a list of the agreements for the server that's identified by
    # the `ServerId` that you supply. If you want to limit the results to a
    # certain number, supply a value for the `MaxResults` parameter. If you
    # ran the command previously and received a value for `NextToken`, you
    # can supply that value to continue listing agreements from where you
    # left off.
    #
    # @option params [Integer] :max_results
    #   The maximum number of agreements to return.
    #
    # @option params [String] :next_token
    #   When you can get additional results from the `ListAgreements` call, a
    #   `NextToken` parameter is returned in the output. You can then pass in
    #   a subsequent command to the `NextToken` parameter to continue listing
    #   additional agreements.
    #
    # @option params [required, String] :server_id
    #   The identifier of the server for which you want a list of agreements.
    #
    # @return [Types::ListAgreementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgreementsResponse#next_token #next_token} => String
    #   * {Types::ListAgreementsResponse#agreements #agreements} => Array&lt;Types::ListedAgreement&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agreements({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.agreements #=> Array
    #   resp.agreements[0].arn #=> String
    #   resp.agreements[0].agreement_id #=> String
    #   resp.agreements[0].description #=> String
    #   resp.agreements[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.agreements[0].server_id #=> String
    #   resp.agreements[0].local_profile_id #=> String
    #   resp.agreements[0].partner_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListAgreements AWS API Documentation
    #
    # @overload list_agreements(params = {})
    # @param [Hash] params ({})
    def list_agreements(params = {}, options = {})
      req = build_request(:list_agreements, params)
      req.send_request(options)
    end

    # Returns a list of the current certificates that have been imported
    # into Transfer Family. If you want to limit the results to a certain
    # number, supply a value for the `MaxResults` parameter. If you ran the
    # command previously and received a value for the `NextToken` parameter,
    # you can supply that value to continue listing certificates from where
    # you left off.
    #
    # @option params [Integer] :max_results
    #   The maximum number of certificates to return.
    #
    # @option params [String] :next_token
    #   When you can get additional results from the `ListCertificates` call,
    #   a `NextToken` parameter is returned in the output. You can then pass
    #   in a subsequent command to the `NextToken` parameter to continue
    #   listing additional certificates.
    #
    # @return [Types::ListCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificatesResponse#next_token #next_token} => String
    #   * {Types::ListCertificatesResponse#certificates #certificates} => Array&lt;Types::ListedCertificate&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.certificates #=> Array
    #   resp.certificates[0].arn #=> String
    #   resp.certificates[0].certificate_id #=> String
    #   resp.certificates[0].usage #=> String, one of "SIGNING", "ENCRYPTION"
    #   resp.certificates[0].status #=> String, one of "ACTIVE", "PENDING_ROTATION", "INACTIVE"
    #   resp.certificates[0].active_date #=> Time
    #   resp.certificates[0].inactive_date #=> Time
    #   resp.certificates[0].type #=> String, one of "CERTIFICATE", "CERTIFICATE_WITH_PRIVATE_KEY"
    #   resp.certificates[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListCertificates AWS API Documentation
    #
    # @overload list_certificates(params = {})
    # @param [Hash] params ({})
    def list_certificates(params = {}, options = {})
      req = build_request(:list_certificates, params)
      req.send_request(options)
    end

    # Lists the connectors for the specified Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of connectors to return.
    #
    # @option params [String] :next_token
    #   When you can get additional results from the `ListConnectors` call, a
    #   `NextToken` parameter is returned in the output. You can then pass in
    #   a subsequent command to the `NextToken` parameter to continue listing
    #   additional connectors.
    #
    # @return [Types::ListConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectorsResponse#next_token #next_token} => String
    #   * {Types::ListConnectorsResponse#connectors #connectors} => Array&lt;Types::ListedConnector&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connectors({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.connectors #=> Array
    #   resp.connectors[0].arn #=> String
    #   resp.connectors[0].connector_id #=> String
    #   resp.connectors[0].url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListConnectors AWS API Documentation
    #
    # @overload list_connectors(params = {})
    # @param [Hash] params ({})
    def list_connectors(params = {}, options = {})
      req = build_request(:list_connectors, params)
      req.send_request(options)
    end

    # Lists all in-progress executions for the specified workflow.
    #
    # <note markdown="1"> If the specified workflow ID cannot be found, `ListExecutions` returns
    # a `ResourceNotFound` exception.
    #
    #  </note>
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of executions to return.
    #
    # @option params [String] :next_token
    #   `ListExecutions` returns the `NextToken` parameter in the output. You
    #   can then pass the `NextToken` parameter in a subsequent command to
    #   continue listing additional executions.
    #
    #   This is useful for pagination, for instance. If you have 100
    #   executions for a workflow, you might only want to list first 10. If
    #   so, call the API by specifying the `max-results`:
    #
    #   `aws transfer list-executions --max-results 10`
    #
    #   This returns details for the first 10 executions, as well as the
    #   pointer (`NextToken`) to the eleventh execution. You can now call the
    #   API again, supplying the `NextToken` value you received:
    #
    #   `aws transfer list-executions --max-results 10 --next-token
    #   $somePointerReturnedFromPreviousListResult`
    #
    #   This call returns the next 10 executions, the 11th through the 20th.
    #   You can then repeat the call until the details for all 100 executions
    #   have been returned.
    #
    # @option params [required, String] :workflow_id
    #   A unique identifier for the workflow.
    #
    # @return [Types::ListExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExecutionsResponse#next_token #next_token} => String
    #   * {Types::ListExecutionsResponse#workflow_id #workflow_id} => String
    #   * {Types::ListExecutionsResponse#executions #executions} => Array&lt;Types::ListedExecution&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_executions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     workflow_id: "WorkflowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workflow_id #=> String
    #   resp.executions #=> Array
    #   resp.executions[0].execution_id #=> String
    #   resp.executions[0].initial_file_location.s3_file_location.bucket #=> String
    #   resp.executions[0].initial_file_location.s3_file_location.key #=> String
    #   resp.executions[0].initial_file_location.s3_file_location.version_id #=> String
    #   resp.executions[0].initial_file_location.s3_file_location.etag #=> String
    #   resp.executions[0].initial_file_location.efs_file_location.file_system_id #=> String
    #   resp.executions[0].initial_file_location.efs_file_location.path #=> String
    #   resp.executions[0].service_metadata.user_details.user_name #=> String
    #   resp.executions[0].service_metadata.user_details.server_id #=> String
    #   resp.executions[0].service_metadata.user_details.session_id #=> String
    #   resp.executions[0].status #=> String, one of "IN_PROGRESS", "COMPLETED", "EXCEPTION", "HANDLING_EXCEPTION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListExecutions AWS API Documentation
    #
    # @overload list_executions(params = {})
    # @param [Hash] params ({})
    def list_executions(params = {}, options = {})
      req = build_request(:list_executions, params)
      req.send_request(options)
    end

    # Returns a list of host keys for the server that's specified by the
    # `ServerId` parameter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of host keys to return.
    #
    # @option params [String] :next_token
    #   When there are additional results that were not returned, a
    #   `NextToken` parameter is returned. You can use that value for a
    #   subsequent call to `ListHostKeys` to continue listing results.
    #
    # @option params [required, String] :server_id
    #   The identifier of the server that contains the host keys that you want
    #   to view.
    #
    # @return [Types::ListHostKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHostKeysResponse#next_token #next_token} => String
    #   * {Types::ListHostKeysResponse#server_id #server_id} => String
    #   * {Types::ListHostKeysResponse#host_keys #host_keys} => Array&lt;Types::ListedHostKey&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_host_keys({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.server_id #=> String
    #   resp.host_keys #=> Array
    #   resp.host_keys[0].arn #=> String
    #   resp.host_keys[0].host_key_id #=> String
    #   resp.host_keys[0].fingerprint #=> String
    #   resp.host_keys[0].description #=> String
    #   resp.host_keys[0].type #=> String
    #   resp.host_keys[0].date_imported #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListHostKeys AWS API Documentation
    #
    # @overload list_host_keys(params = {})
    # @param [Hash] params ({})
    def list_host_keys(params = {}, options = {})
      req = build_request(:list_host_keys, params)
      req.send_request(options)
    end

    # Returns a list of the profiles for your system. If you want to limit
    # the results to a certain number, supply a value for the `MaxResults`
    # parameter. If you ran the command previously and received a value for
    # `NextToken`, you can supply that value to continue listing profiles
    # from where you left off.
    #
    # @option params [Integer] :max_results
    #   The maximum number of profiles to return.
    #
    # @option params [String] :next_token
    #   When there are additional results that were not returned, a
    #   `NextToken` parameter is returned. You can use that value for a
    #   subsequent call to `ListProfiles` to continue listing results.
    #
    # @option params [String] :profile_type
    #   Indicates whether to list only `LOCAL` type profiles or only `PARTNER`
    #   type profiles. If not supplied in the request, the command lists all
    #   types of profiles.
    #
    # @return [Types::ListProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfilesResponse#next_token #next_token} => String
    #   * {Types::ListProfilesResponse#profiles #profiles} => Array&lt;Types::ListedProfile&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profiles({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     profile_type: "LOCAL", # accepts LOCAL, PARTNER
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.profiles #=> Array
    #   resp.profiles[0].arn #=> String
    #   resp.profiles[0].profile_id #=> String
    #   resp.profiles[0].as_2_id #=> String
    #   resp.profiles[0].profile_type #=> String, one of "LOCAL", "PARTNER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListProfiles AWS API Documentation
    #
    # @overload list_profiles(params = {})
    # @param [Hash] params ({})
    def list_profiles(params = {}, options = {})
      req = build_request(:list_profiles, params)
      req.send_request(options)
    end

    # Lists the security policies that are attached to your file transfer
    # protocol-enabled servers.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of security policies to return as a response to
    #   the `ListSecurityPolicies` query.
    #
    # @option params [String] :next_token
    #   When additional results are obtained from the `ListSecurityPolicies`
    #   command, a `NextToken` parameter is returned in the output. You can
    #   then pass the `NextToken` parameter in a subsequent command to
    #   continue listing additional security policies.
    #
    # @return [Types::ListSecurityPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityPoliciesResponse#next_token #next_token} => String
    #   * {Types::ListSecurityPoliciesResponse#security_policy_names #security_policy_names} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_policies({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.security_policy_names #=> Array
    #   resp.security_policy_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListSecurityPolicies AWS API Documentation
    #
    # @overload list_security_policies(params = {})
    # @param [Hash] params ({})
    def list_security_policies(params = {}, options = {})
      req = build_request(:list_security_policies, params)
      req.send_request(options)
    end

    # Lists the file transfer protocol-enabled servers that are associated
    # with your Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of servers to return as a response to the
    #   `ListServers` query.
    #
    # @option params [String] :next_token
    #   When additional results are obtained from the `ListServers` command, a
    #   `NextToken` parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional servers.
    #
    # @return [Types::ListServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServersResponse#next_token #next_token} => String
    #   * {Types::ListServersResponse#servers #servers} => Array&lt;Types::ListedServer&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_servers({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.servers #=> Array
    #   resp.servers[0].arn #=> String
    #   resp.servers[0].domain #=> String, one of "S3", "EFS"
    #   resp.servers[0].identity_provider_type #=> String, one of "SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"
    #   resp.servers[0].endpoint_type #=> String, one of "PUBLIC", "VPC", "VPC_ENDPOINT"
    #   resp.servers[0].logging_role #=> String
    #   resp.servers[0].server_id #=> String
    #   resp.servers[0].state #=> String, one of "OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"
    #   resp.servers[0].user_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListServers AWS API Documentation
    #
    # @overload list_servers(params = {})
    # @param [Hash] params ({})
    def list_servers(params = {}, options = {})
      req = build_request(:list_servers, params)
      req.send_request(options)
    end

    # Lists all of the tags associated with the Amazon Resource Name (ARN)
    # that you specify. The resource can be a user, server, or role.
    #
    # @option params [required, String] :arn
    #   Requests the tags associated with a particular Amazon Resource Name
    #   (ARN). An ARN is an identifier for a specific Amazon Web Services
    #   resource, such as a server, user, or role.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of tags to return as a response to the
    #   `ListTagsForResource` request.
    #
    # @option params [String] :next_token
    #   When you request additional results from the `ListTagsForResource`
    #   operation, a `NextToken` parameter is returned in the input. You can
    #   then pass in a subsequent command to the `NextToken` parameter to
    #   continue listing additional tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#arn #arn} => String
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the users for a file transfer protocol-enabled server that you
    # specify by passing the `ServerId` parameter.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of users to return as a response to the
    #   `ListUsers` request.
    #
    # @option params [String] :next_token
    #   When you can get additional results from the `ListUsers` call, a
    #   `NextToken` parameter is returned in the output. You can then pass in
    #   a subsequent command to the `NextToken` parameter to continue listing
    #   additional users.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that has users
    #   assigned to it.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#server_id #server_id} => String
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::ListedUser&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.server_id #=> String
    #   resp.users #=> Array
    #   resp.users[0].arn #=> String
    #   resp.users[0].home_directory #=> String
    #   resp.users[0].home_directory_type #=> String, one of "PATH", "LOGICAL"
    #   resp.users[0].role #=> String
    #   resp.users[0].ssh_public_key_count #=> Integer
    #   resp.users[0].user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Lists all workflows associated with your Amazon Web Services account
    # for your current region.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of workflows to return.
    #
    # @option params [String] :next_token
    #   `ListWorkflows` returns the `NextToken` parameter in the output. You
    #   can then pass the `NextToken` parameter in a subsequent command to
    #   continue listing additional workflows.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #   * {Types::ListWorkflowsResponse#workflows #workflows} => Array&lt;Types::ListedWorkflow&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workflows #=> Array
    #   resp.workflows[0].workflow_id #=> String
    #   resp.workflows[0].description #=> String
    #   resp.workflows[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Sends a callback for asynchronous custom steps.
    #
    # The `ExecutionId`, `WorkflowId`, and `Token` are passed to the target
    # resource during execution of a custom step of a workflow. You must
    # include those with their callback as well as providing a status.
    #
    # @option params [required, String] :workflow_id
    #   A unique identifier for the workflow.
    #
    # @option params [required, String] :execution_id
    #   A unique identifier for the execution of a workflow.
    #
    # @option params [required, String] :token
    #   Used to distinguish between multiple callbacks for multiple Lambda
    #   steps within the same execution.
    #
    # @option params [required, String] :status
    #   Indicates whether the specified step succeeded or failed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_workflow_step_state({
    #     workflow_id: "WorkflowId", # required
    #     execution_id: "ExecutionId", # required
    #     token: "CallbackToken", # required
    #     status: "SUCCESS", # required, accepts SUCCESS, FAILURE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/SendWorkflowStepState AWS API Documentation
    #
    # @overload send_workflow_step_state(params = {})
    # @param [Hash] params ({})
    def send_workflow_step_state(params = {}, options = {})
      req = build_request(:send_workflow_step_state, params)
      req.send_request(options)
    end

    # Begins an outbound file transfer to a remote AS2 server. You specify
    # the `ConnectorId` and the file paths for where to send the files.
    #
    # @option params [required, String] :connector_id
    #   The unique identifier for the connector.
    #
    # @option params [required, Array<String>] :send_file_paths
    #   An array of strings. Each string represents the absolute path for one
    #   outbound file transfer. For example, ` DOC-EXAMPLE-BUCKET/myfile.txt
    #   `.
    #
    # @return [Types::StartFileTransferResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFileTransferResponse#transfer_id #transfer_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_file_transfer({
    #     connector_id: "ConnectorId", # required
    #     send_file_paths: ["FilePath"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transfer_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartFileTransfer AWS API Documentation
    #
    # @overload start_file_transfer(params = {})
    # @param [Hash] params ({})
    def start_file_transfer(params = {}, options = {})
      req = build_request(:start_file_transfer, params)
      req.send_request(options)
    end

    # Changes the state of a file transfer protocol-enabled server from
    # `OFFLINE` to `ONLINE`. It has no impact on a server that is already
    # `ONLINE`. An `ONLINE` server can accept and process file transfer
    # jobs.
    #
    # The state of `STARTING` indicates that the server is in an
    # intermediate state, either not fully able to respond, or not fully
    # online. The values of `START_FAILED` can indicate an error condition.
    #
    # No response is returned from this call.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that you start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_server({
    #     server_id: "ServerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartServer AWS API Documentation
    #
    # @overload start_server(params = {})
    # @param [Hash] params ({})
    def start_server(params = {}, options = {})
      req = build_request(:start_server, params)
      req.send_request(options)
    end

    # Changes the state of a file transfer protocol-enabled server from
    # `ONLINE` to `OFFLINE`. An `OFFLINE` server cannot accept and process
    # file transfer jobs. Information tied to your server, such as server
    # and user properties, are not affected by stopping your server.
    #
    # <note markdown="1"> Stopping the server does not reduce or impact your file transfer
    # protocol endpoint billing; you must delete the server to stop being
    # billed.
    #
    #  </note>
    #
    # The state of `STOPPING` indicates that the server is in an
    # intermediate state, either not fully able to respond, or not fully
    # offline. The values of `STOP_FAILED` can indicate an error condition.
    #
    # No response is returned from this call.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that you stopped.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_server({
    #     server_id: "ServerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StopServer AWS API Documentation
    #
    # @overload stop_server(params = {})
    # @param [Hash] params ({})
    def stop_server(params = {}, options = {})
      req = build_request(:stop_server, params)
      req.send_request(options)
    end

    # Attaches a key-value pair to a resource, as identified by its Amazon
    # Resource Name (ARN). Resources are users, servers, roles, and other
    # entities.
    #
    # There is no response returned from this call.
    #
    # @option params [required, String] :arn
    #   An Amazon Resource Name (ARN) for a specific Amazon Web Services
    #   resource, such as a server, user, or role.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Key-value pairs assigned to ARNs that you can use to group and search
    #   for resources by type. You can attach this metadata to resources
    #   (servers, users, workflows, and so on) for any purpose.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # If the `IdentityProviderType` of a file transfer protocol-enabled
    # server is `AWS_DIRECTORY_SERVICE` or `API_Gateway`, tests whether your
    # identity provider is set up successfully. We highly recommend that you
    # call this operation to test your authentication method as soon as you
    # create your server. By doing so, you can troubleshoot issues with the
    # identity provider integration to ensure that your users can
    # successfully use the service.
    #
    # The `ServerId` and `UserName` parameters are required. The
    # `ServerProtocol`, `SourceIp`, and `UserPassword` are all optional.
    #
    # Note the following:
    #
    # * You cannot use `TestIdentityProvider` if the `IdentityProviderType`
    #   of your server is `SERVICE_MANAGED`.
    #
    # * `TestIdentityProvider` does not work with keys: it only accepts
    #   passwords.
    #
    # * `TestIdentityProvider` can test the password operation for a custom
    #   Identity Provider that handles keys and passwords.
    #
    # * If you provide any incorrect values for any parameters, the
    #   `Response` field is empty.
    #
    # * If you provide a server ID for a server that uses service-managed
    #   users, you get an error:
    #
    #   ` An error occurred (InvalidRequestException) when calling the
    #   TestIdentityProvider operation: s-server-ID not configured for
    #   external auth `
    #
    # * If you enter a Server ID for the `--server-id` parameter that does
    #   not identify an actual Transfer server, you receive the following
    #   error:
    #
    #   `An error occurred (ResourceNotFoundException) when calling the
    #   TestIdentityProvider operation: Unknown server`.
    #
    #   It is possible your sever is in a different region. You can specify
    #   a region by adding the following: `--region region-code`, such as
    #   `--region us-east-2` to specify a server in **US East (Ohio)**.
    #
    # @option params [required, String] :server_id
    #   A system-assigned identifier for a specific server. That server's
    #   user authentication method is tested with a user name and password.
    #
    # @option params [String] :server_protocol
    #   The type of file transfer protocol to be tested.
    #
    #   The available protocols are:
    #
    #   * Secure Shell (SSH) File Transfer Protocol (SFTP)
    #
    #   * File Transfer Protocol Secure (FTPS)
    #
    #   * File Transfer Protocol (FTP)
    #
    #   * Applicability Statement 2 (AS2)
    #
    # @option params [String] :source_ip
    #   The source IP address of the account to be tested.
    #
    # @option params [required, String] :user_name
    #   The name of the account to be tested.
    #
    # @option params [String] :user_password
    #   The password of the account to be tested.
    #
    # @return [Types::TestIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestIdentityProviderResponse#response #response} => String
    #   * {Types::TestIdentityProviderResponse#status_code #status_code} => Integer
    #   * {Types::TestIdentityProviderResponse#message #message} => String
    #   * {Types::TestIdentityProviderResponse#url #url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_identity_provider({
    #     server_id: "ServerId", # required
    #     server_protocol: "SFTP", # accepts SFTP, FTP, FTPS, AS2
    #     source_ip: "SourceIp",
    #     user_name: "UserName", # required
    #     user_password: "UserPassword",
    #   })
    #
    # @example Response structure
    #
    #   resp.response #=> String
    #   resp.status_code #=> Integer
    #   resp.message #=> String
    #   resp.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TestIdentityProvider AWS API Documentation
    #
    # @overload test_identity_provider(params = {})
    # @param [Hash] params ({})
    def test_identity_provider(params = {}, options = {})
      req = build_request(:test_identity_provider, params)
      req.send_request(options)
    end

    # Detaches a key-value pair from a resource, as identified by its Amazon
    # Resource Name (ARN). Resources are users, servers, roles, and other
    # entities.
    #
    # No response is returned from this call.
    #
    # @option params [required, String] :arn
    #   The value of the resource that will have the tag removed. An Amazon
    #   Resource Name (ARN) is an identifier for a specific Amazon Web
    #   Services resource, such as a server, user, or role.
    #
    # @option params [required, Array<String>] :tag_keys
    #   TagKeys are key-value pairs assigned to ARNs that can be used to group
    #   and search for resources by type. This metadata can be attached to
    #   resources for any purpose.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Allows you to update parameters for the access specified in the
    # `ServerID` and `ExternalID` parameters.
    #
    # @option params [String] :home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    # @option params [String] :home_directory_type
    #   The type of landing directory (folder) that you want your users' home
    #   directory to be when they log in to the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the `HomeDirectoryMappings`
    #   for how you want to make Amazon S3 or Amazon EFS paths visible to your
    #   users.
    #
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to make
    #   them visible. You must specify the `Entry` and `Target` pair, where
    #   `Entry` shows how the path is made visible and `Target` is the actual
    #   Amazon S3 or Amazon EFS path. If you only specify a target, it is
    #   displayed as is. You also must ensure that your Identity and Access
    #   Management (IAM) role provides access to paths in `Target`. This value
    #   can be set only when `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ \{ "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" \} ]`
    #
    #   In most cases, you can use this value instead of the session policy to
    #   lock down your user to the designated home directory ("`chroot`").
    #   To do this, you can set `Entry` to `/` and set `Target` to the
    #   `HomeDirectory` parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ \{ "Entry": "/", "Target": "/bucket_name/home/mydirectory" \} ]`
    #
    # @option params [String] :policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `$\{Transfer:UserName\}`, `$\{Transfer:HomeDirectory\}`, and
    #   `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> This policy applies only when the domain of `ServerId` is Amazon S3.
    #   Amazon EFS does not use session policies.
    #
    #    For session policies, Transfer Family stores the policy as a JSON
    #   blob, instead of the Amazon Resource Name (ARN) of the policy. You
    #   save the policy as a JSON blob and pass it in the `Policy` argument.
    #
    #    For an example of a session policy, see [Example session policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *Amazon Web
    #   ServicesSecurity Token Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #
    # @option params [Types::PosixProfile] :posix_profile
    #   The full POSIX identity, including user ID (`Uid`), group ID (`Gid`),
    #   and any secondary groups IDs (`SecondaryGids`), that controls your
    #   users' access to your Amazon EFS file systems. The POSIX permissions
    #   that are set on files and directories in your file system determine
    #   the level of access your users get when transferring files into and
    #   out of your Amazon EFS file systems.
    #
    # @option params [String] :role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3 bucket
    #   or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users when
    #   transferring files into and out of your Amazon S3 bucket or Amazon EFS
    #   file system. The IAM role should also contain a trust relationship
    #   that allows the server to access your resources when servicing your
    #   users' transfer requests.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance. This is the
    #   specific server that you added your user to.
    #
    # @option params [required, String] :external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate have
    #   access to your Amazon S3 or Amazon EFS resources over the enabled
    #   protocols using Transfer Family. If you know the group name, you can
    #   view the SID values by running the following command using Windows
    #   PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your Active
    #   Directory group.
    #
    #   The regular expression used to validate this parameter is a string of
    #   characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any of
    #   the following characters: =,.@:/-
    #
    # @return [Types::UpdateAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccessResponse#server_id #server_id} => String
    #   * {Types::UpdateAccessResponse#external_id #external_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access({
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH", # accepts PATH, LOGICAL
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #       },
    #     ],
    #     policy: "Policy",
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1],
    #     },
    #     role: "Role",
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.external_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateAccess AWS API Documentation
    #
    # @overload update_access(params = {})
    # @param [Hash] params ({})
    def update_access(params = {}, options = {})
      req = build_request(:update_access, params)
      req.send_request(options)
    end

    # Updates some of the parameters for an existing agreement. Provide the
    # `AgreementId` and the `ServerId` for the agreement that you want to
    # update, along with the new values for the parameters to update.
    #
    # @option params [required, String] :agreement_id
    #   A unique identifier for the agreement. This identifier is returned
    #   when you create an agreement.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance. This is the
    #   specific server that the agreement uses.
    #
    # @option params [String] :description
    #   To replace the existing description, provide a short description for
    #   the agreement.
    #
    # @option params [String] :status
    #   You can update the status for the agreement, either activating an
    #   inactive agreement or the reverse.
    #
    # @option params [String] :local_profile_id
    #   A unique identifier for the AS2 local profile.
    #
    #   To change the local profile identifier, provide a new value here.
    #
    # @option params [String] :partner_profile_id
    #   A unique identifier for the partner profile. To change the partner
    #   profile identifier, provide a new value here.
    #
    # @option params [String] :base_directory
    #   To change the landing directory (folder) for files that are
    #   transferred, provide the bucket folder that you want to use; for
    #   example, `/DOC-EXAMPLE-BUCKET/home/mydirectory `.
    #
    # @option params [String] :access_role
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a final
    #   JSON file containing relevant metadata of the transmission. So, the
    #   `AccessRole` needs to provide read and write access to the parent
    #   directory of the file location used in the `StartFileTransfer`
    #   request. Additionally, you need to provide read and write access to
    #   the parent directory of the files that you intend to send with
    #   `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets Manager,
    #   then the role also needs the `kms:Decrypt` permission for that key.
    #
    # @return [Types::UpdateAgreementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgreementResponse#agreement_id #agreement_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agreement({
    #     agreement_id: "AgreementId", # required
    #     server_id: "ServerId", # required
    #     description: "Description",
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     local_profile_id: "ProfileId",
    #     partner_profile_id: "ProfileId",
    #     base_directory: "HomeDirectory",
    #     access_role: "Role",
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateAgreement AWS API Documentation
    #
    # @overload update_agreement(params = {})
    # @param [Hash] params ({})
    def update_agreement(params = {}, options = {})
      req = build_request(:update_agreement, params)
      req.send_request(options)
    end

    # Updates the active and inactive dates for a certificate.
    #
    # @option params [required, String] :certificate_id
    #   The identifier of the certificate object that you are updating.
    #
    # @option params [Time,DateTime,Date,Integer,String] :active_date
    #   An optional date that specifies when the certificate becomes active.
    #
    # @option params [Time,DateTime,Date,Integer,String] :inactive_date
    #   An optional date that specifies when the certificate becomes inactive.
    #
    # @option params [String] :description
    #   A short description to help identify the certificate.
    #
    # @return [Types::UpdateCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCertificateResponse#certificate_id #certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_certificate({
    #     certificate_id: "CertificateId", # required
    #     active_date: Time.now,
    #     inactive_date: Time.now,
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateCertificate AWS API Documentation
    #
    # @overload update_certificate(params = {})
    # @param [Hash] params ({})
    def update_certificate(params = {}, options = {})
      req = build_request(:update_certificate, params)
      req.send_request(options)
    end

    # Updates some of the parameters for an existing connector. Provide the
    # `ConnectorId` for the connector that you want to update, along with
    # the new values for the parameters to update.
    #
    # @option params [required, String] :connector_id
    #   The unique identifier for the connector.
    #
    # @option params [String] :url
    #   The URL of the partner's AS2 endpoint.
    #
    # @option params [Types::As2ConnectorConfig] :as_2_config
    #   A structure that contains the parameters for a connector object.
    #
    # @option params [String] :access_role
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a final
    #   JSON file containing relevant metadata of the transmission. So, the
    #   `AccessRole` needs to provide read and write access to the parent
    #   directory of the file location used in the `StartFileTransfer`
    #   request. Additionally, you need to provide read and write access to
    #   the parent directory of the files that you intend to send with
    #   `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets Manager,
    #   then the role also needs the `kms:Decrypt` permission for that key.
    #
    # @option params [String] :logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a connector to turn on CloudWatch logging for
    #   Amazon S3 events. When set, you can view connector activity in your
    #   CloudWatch logs.
    #
    # @return [Types::UpdateConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConnectorResponse#connector_id #connector_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connector({
    #     connector_id: "ConnectorId", # required
    #     url: "Url",
    #     as_2_config: {
    #       local_profile_id: "ProfileId",
    #       partner_profile_id: "ProfileId",
    #       message_subject: "MessageSubject",
    #       compression: "ZLIB", # accepts ZLIB, DISABLED
    #       encryption_algorithm: "AES128_CBC", # accepts AES128_CBC, AES192_CBC, AES256_CBC, NONE
    #       signing_algorithm: "SHA256", # accepts SHA256, SHA384, SHA512, SHA1, NONE
    #       mdn_signing_algorithm: "SHA256", # accepts SHA256, SHA384, SHA512, SHA1, NONE, DEFAULT
    #       mdn_response: "SYNC", # accepts SYNC, NONE
    #       basic_auth_secret_id: "As2ConnectorSecretId",
    #     },
    #     access_role: "Role",
    #     logging_role: "Role",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateConnector AWS API Documentation
    #
    # @overload update_connector(params = {})
    # @param [Hash] params ({})
    def update_connector(params = {}, options = {})
      req = build_request(:update_connector, params)
      req.send_request(options)
    end

    # Updates the description for the host key that's specified by the
    # `ServerId` and `HostKeyId` parameters.
    #
    # @option params [required, String] :server_id
    #   The identifier of the server that contains the host key that you are
    #   updating.
    #
    # @option params [required, String] :host_key_id
    #   The identifier of the host key that you are updating.
    #
    # @option params [required, String] :description
    #   An updated description for the host key.
    #
    # @return [Types::UpdateHostKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateHostKeyResponse#server_id #server_id} => String
    #   * {Types::UpdateHostKeyResponse#host_key_id #host_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_host_key({
    #     server_id: "ServerId", # required
    #     host_key_id: "HostKeyId", # required
    #     description: "HostKeyDescription", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.host_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateHostKey AWS API Documentation
    #
    # @overload update_host_key(params = {})
    # @param [Hash] params ({})
    def update_host_key(params = {}, options = {})
      req = build_request(:update_host_key, params)
      req.send_request(options)
    end

    # Updates some of the parameters for an existing profile. Provide the
    # `ProfileId` for the profile that you want to update, along with the
    # new values for the parameters to update.
    #
    # @option params [required, String] :profile_id
    #   The identifier of the profile object that you are updating.
    #
    # @option params [Array<String>] :certificate_ids
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #
    # @return [Types::UpdateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProfileResponse#profile_id #profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile({
    #     profile_id: "ProfileId", # required
    #     certificate_ids: ["CertificateId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateProfile AWS API Documentation
    #
    # @overload update_profile(params = {})
    # @param [Hash] params ({})
    def update_profile(params = {}, options = {})
      req = build_request(:update_profile, params)
      req.send_request(options)
    end

    # Updates the file transfer protocol-enabled server's properties after
    # that server has been created.
    #
    # The `UpdateServer` call returns the `ServerId` of the server you
    # updated.
    #
    # @option params [String] :certificate
    #   The Amazon Resource Name (ARN) of the Amazon Web ServicesCertificate
    #   Manager (ACM) certificate. Required when `Protocols` is set to `FTPS`.
    #
    #   To request a new public certificate, see [Request a public
    #   certificate][1] in the <i> Amazon Web ServicesCertificate Manager User
    #   Guide</i>.
    #
    #   To import an existing certificate into ACM, see [Importing
    #   certificates into ACM][2] in the <i> Amazon Web ServicesCertificate
    #   Manager User Guide</i>.
    #
    #   To request a private certificate to use FTPS through private IP
    #   addresses, see [Request a private certificate][3] in the <i> Amazon
    #   Web ServicesCertificate Manager User Guide</i>.
    #
    #   Certificates with the following cryptographic algorithms and key sizes
    #   are supported:
    #
    #   * 2048-bit RSA (RSA\_2048)
    #
    #   * 4096-bit RSA (RSA\_4096)
    #
    #   * Elliptic Prime Curve 256 bit (EC\_prime256v1)
    #
    #   * Elliptic Prime Curve 384 bit (EC\_secp384r1)
    #
    #   * Elliptic Prime Curve 521 bit (EC\_secp521r1)
    #
    #   <note markdown="1"> The certificate must be a valid SSL/TLS X.509 version 3 certificate
    #   with FQDN or IP address specified and information about the issuer.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   [3]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html
    #
    # @option params [Types::ProtocolDetails] :protocol_details
    #   The protocol settings that are configured for your server.
    #
    #   * To indicate passive mode (for FTP and FTPS protocols), use the
    #     `PassiveIp` parameter. Enter a single dotted-quad IPv4 address, such
    #     as the external IP address of a firewall, router, or load balancer.
    #
    #   * To ignore the error that is generated when the client attempts to
    #     use the `SETSTAT` command on a file that you are uploading to an
    #     Amazon S3 bucket, use the `SetStatOption` parameter. To have the
    #     Transfer Family server ignore the `SETSTAT` command and upload files
    #     without needing to make any changes to your SFTP client, set the
    #     value to `ENABLE_NO_OP`. If you set the `SetStatOption` parameter to
    #     `ENABLE_NO_OP`, Transfer Family generates a log entry to Amazon
    #     CloudWatch Logs, so that you can determine when the client is making
    #     a `SETSTAT` call.
    #
    #   * To determine whether your Transfer Family server resumes recent,
    #     negotiated sessions through a unique session ID, use the
    #     `TlsSessionResumptionMode` parameter.
    #
    #   * `As2Transports` indicates the transport method for the AS2 messages.
    #     Currently, only HTTP is supported.
    #
    # @option params [Types::EndpointDetails] :endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are configured
    #   for your server. When you host your endpoint within your VPC, you can
    #   make your endpoint accessible only to resources within your VPC, or
    #   you can attach Elastic IP addresses and make your endpoint accessible
    #   to clients over the internet. Your VPC's default security groups are
    #   automatically assigned to your endpoint.
    #
    # @option params [String] :endpoint_type
    #   The type of endpoint that you want your server to use. You can choose
    #   to make your server's endpoint publicly accessible (PUBLIC) or host
    #   it inside your VPC. With an endpoint that is hosted in a VPC, you can
    #   restrict access to your server and resources only within your VPC or
    #   choose to make it internet facing by attaching Elastic IP addresses
    #   directly to it.
    #
    #   <note markdown="1"> After May 19, 2021, you won't be able to create a server using
    #   `EndpointType=VPC_ENDPOINT` in your Amazon Web Servicesaccount if your
    #   account hasn't already done so before May 19, 2021. If you have
    #   already created servers with `EndpointType=VPC_ENDPOINT` in your
    #   Amazon Web Servicesaccount on or before May 19, 2021, you will not be
    #   affected. After this date, use `EndpointType`=`VPC`.
    #
    #    For more information, see
    #   https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
    #
    #    It is recommended that you use `VPC` as the `EndpointType`. With this
    #   endpoint type, you have the option to directly associate up to three
    #   Elastic IPv4 addresses (BYO IP included) with your server's endpoint
    #   and use VPC security groups to restrict traffic by the client's
    #   public IP address. This is not possible with `EndpointType` set to
    #   `VPC_ENDPOINT`.
    #
    #    </note>
    #
    # @option params [String] :host_key
    #   The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled
    #   server. You can add multiple host keys, in case you want to rotate
    #   keys, or have a set of active keys that use different algorithms.
    #
    #   Use the following command to generate an RSA 2048 bit key with no
    #   passphrase:
    #
    #   `ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key`.
    #
    #   Use a minimum value of 2048 for the `-b` option. You can create a
    #   stronger key by using 3072 or 4096.
    #
    #   Use the following command to generate an ECDSA 256 bit key with no
    #   passphrase:
    #
    #   `ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key`.
    #
    #   Valid values for the `-b` option for ECDSA are 256, 384, and 521.
    #
    #   Use the following command to generate an ED25519 key with no
    #   passphrase:
    #
    #   `ssh-keygen -t ed25519 -N "" -f my-new-server-key`.
    #
    #   For all of these commands, you can replace *my-new-server-key* with a
    #   string of your choice.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   SFTP-enabled server to a new server, don't update the host key.
    #   Accidentally changing a server's host key can be disruptive.
    #
    #   For more information, see [Manage host keys for your SFTP-enabled
    #   server][1] in the *Transfer Family User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key
    #
    # @option params [Types::IdentityProviderDetails] :identity_provider_details
    #   An array containing all of the information required to call a
    #   customer's authentication API method.
    #
    # @option params [String] :logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a server to turn on Amazon CloudWatch logging
    #   for Amazon S3 or Amazon EFSevents. When set, you can view user
    #   activity in your CloudWatch logs.
    #
    # @option params [String] :post_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed after the user authenticates.
    #
    #   <note markdown="1"> The SFTP protocol does not support post-authentication display
    #   banners.
    #
    #    </note>
    #
    # @option params [String] :pre_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed before the user authenticates. For example, the
    #   following banner displays details about using the system:
    #
    #   `This system is for the use of authorized users only. Individuals
    #   using this computer system without authority, or in excess of their
    #   authority, are subject to having all of their activities on this
    #   system monitored and recorded by system personnel.`
    #
    # @option params [Array<String>] :protocols
    #   Specifies the file transfer protocol or protocols over which your file
    #   transfer protocol client can connect to your server's endpoint. The
    #   available protocols are:
    #
    #   * `SFTP` (Secure Shell (SSH) File Transfer Protocol): File transfer
    #     over SSH
    #
    #   * `FTPS` (File Transfer Protocol Secure): File transfer with TLS
    #     encryption
    #
    #   * `FTP` (File Transfer Protocol): Unencrypted file transfer
    #
    #   * `AS2` (Applicability Statement 2): used for transporting structured
    #     business-to-business data
    #
    #   <note markdown="1"> * If you select `FTPS`, you must choose a certificate stored in
    #     Certificate Manager (ACM) which is used to identify your server when
    #     clients connect to it over FTPS.
    #
    #   * If `Protocol` includes either `FTP` or `FTPS`, then the
    #     `EndpointType` must be `VPC` and the `IdentityProviderType` must be
    #     either `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `FTP`, then `AddressAllocationIds` cannot be
    #     associated.
    #
    #   * If `Protocol` is set only to `SFTP`, the `EndpointType` can be set
    #     to `PUBLIC` and the `IdentityProviderType` can be set any of the
    #     supported identity types: `SERVICE_MANAGED`,
    #     `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `AS2`, then the `EndpointType` must be `VPC`,
    #     and domain must be Amazon S3.
    #
    #    </note>
    #
    # @option params [String] :security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance that the
    #   Transfer Family user is assigned to.
    #
    # @option params [Types::WorkflowDetails] :workflow_details
    #   Specifies the workflow ID for the workflow to assign and the execution
    #   role that's used for executing the workflow.
    #
    #   In addition to a workflow to execute when a file is uploaded
    #   completely, `WorkflowDetails` can also contain a workflow ID (and
    #   execution role) for a workflow to execute on partial upload. A partial
    #   upload occurs when the server session disconnects while the file is
    #   still being uploaded.
    #
    #   To remove an associated workflow from a server, you can provide an
    #   empty `OnUpload` object, as in the following example.
    #
    #   `aws transfer update-server --server-id s-01234567890abcdef
    #   --workflow-details '\{"OnUpload":[]\}'`
    #
    # @option params [Array<String>] :structured_log_destinations
    #   Specifies the log groups to which your server logs are sent.
    #
    #   To specify a log group, you must provide the ARN for an existing log
    #   group. In this case, the format of the log group is as follows:
    #
    #   `arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*`
    #
    #   For example,
    #   `arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*`
    #
    #   If you have previously specified a log group for a server, you can
    #   clear it, and in effect turn off structured logging, by providing an
    #   empty value for this parameter in an `update-server` call. For
    #   example:
    #
    #   `update-server --server-id s-1234567890abcdef0
    #   --structured-log-destinations`
    #
    # @return [Types::UpdateServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServerResponse#server_id #server_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server({
    #     certificate: "Certificate",
    #     protocol_details: {
    #       passive_ip: "PassiveIp",
    #       tls_session_resumption_mode: "DISABLED", # accepts DISABLED, ENABLED, ENFORCED
    #       set_stat_option: "DEFAULT", # accepts DEFAULT, ENABLE_NO_OP
    #       as_2_transports: ["HTTP"], # accepts HTTP
    #     },
    #     endpoint_details: {
    #       address_allocation_ids: ["AddressAllocationId"],
    #       subnet_ids: ["SubnetId"],
    #       vpc_endpoint_id: "VpcEndpointId",
    #       vpc_id: "VpcId",
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     endpoint_type: "PUBLIC", # accepts PUBLIC, VPC, VPC_ENDPOINT
    #     host_key: "HostKey",
    #     identity_provider_details: {
    #       url: "Url",
    #       invocation_role: "Role",
    #       directory_id: "DirectoryId",
    #       function: "Function",
    #       sftp_authentication_methods: "PASSWORD", # accepts PASSWORD, PUBLIC_KEY, PUBLIC_KEY_OR_PASSWORD, PUBLIC_KEY_AND_PASSWORD
    #     },
    #     logging_role: "NullableRole",
    #     post_authentication_login_banner: "PostAuthenticationLoginBanner",
    #     pre_authentication_login_banner: "PreAuthenticationLoginBanner",
    #     protocols: ["SFTP"], # accepts SFTP, FTP, FTPS, AS2
    #     security_policy_name: "SecurityPolicyName",
    #     server_id: "ServerId", # required
    #     workflow_details: {
    #       on_upload: [
    #         {
    #           workflow_id: "WorkflowId", # required
    #           execution_role: "Role", # required
    #         },
    #       ],
    #       on_partial_upload: [
    #         {
    #           workflow_id: "WorkflowId", # required
    #           execution_role: "Role", # required
    #         },
    #       ],
    #     },
    #     structured_log_destinations: ["Arn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateServer AWS API Documentation
    #
    # @overload update_server(params = {})
    # @param [Hash] params ({})
    def update_server(params = {}, options = {})
      req = build_request(:update_server, params)
      req.send_request(options)
    end

    # Assigns new properties to a user. Parameters you pass modify any or
    # all of the following: the home directory, role, and policy for the
    # `UserName` and `ServerId` you specify.
    #
    # The response returns the `ServerId` and the `UserName` for the updated
    # user.
    #
    # @option params [String] :home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    # @option params [String] :home_directory_type
    #   The type of landing directory (folder) that you want your users' home
    #   directory to be when they log in to the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the `HomeDirectoryMappings`
    #   for how you want to make Amazon S3 or Amazon EFS paths visible to your
    #   users.
    #
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to make
    #   them visible. You must specify the `Entry` and `Target` pair, where
    #   `Entry` shows how the path is made visible and `Target` is the actual
    #   Amazon S3 or Amazon EFS path. If you only specify a target, it is
    #   displayed as is. You also must ensure that your Identity and Access
    #   Management (IAM) role provides access to paths in `Target`. This value
    #   can be set only when `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ \{ "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" \} ]`
    #
    #   In most cases, you can use this value instead of the session policy to
    #   lock down your user to the designated home directory ("`chroot`").
    #   To do this, you can set `Entry` to '/' and set `Target` to the
    #   HomeDirectory parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ \{ "Entry": "/", "Target": "/bucket_name/home/mydirectory" \} ]`
    #
    # @option params [String] :policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `$\{Transfer:UserName\}`, `$\{Transfer:HomeDirectory\}`, and
    #   `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> This policy applies only when the domain of `ServerId` is Amazon S3.
    #   Amazon EFS does not use session policies.
    #
    #    For session policies, Transfer Family stores the policy as a JSON
    #   blob, instead of the Amazon Resource Name (ARN) of the policy. You
    #   save the policy as a JSON blob and pass it in the `Policy` argument.
    #
    #    For an example of a session policy, see [Creating a session
    #   policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *Amazon Web Services
    #   Security Token Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/session-policy
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #
    # @option params [Types::PosixProfile] :posix_profile
    #   Specifies the full POSIX identity, including user ID (`Uid`), group ID
    #   (`Gid`), and any secondary groups IDs (`SecondaryGids`), that controls
    #   your users' access to your Amazon Elastic File Systems (Amazon EFS).
    #   The POSIX permissions that are set on files and directories in your
    #   file system determines the level of access your users get when
    #   transferring files into and out of your Amazon EFS file systems.
    #
    # @option params [String] :role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3 bucket
    #   or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users when
    #   transferring files into and out of your Amazon S3 bucket or Amazon EFS
    #   file system. The IAM role should also contain a trust relationship
    #   that allows the server to access your resources when servicing your
    #   users' transfer requests.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a Transfer Family server
    #   instance that the user is assigned to.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user and is associated with a server
    #   as specified by the `ServerId`. This user name must be a minimum of 3
    #   and a maximum of 100 characters long. The following are valid
    #   characters: a-z, A-Z, 0-9, underscore '\_', hyphen '-', period
    #   '.', and at sign '@'. The user name can't start with a hyphen,
    #   period, or at sign.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#server_id #server_id} => String
    #   * {Types::UpdateUserResponse#user_name #user_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH", # accepts PATH, LOGICAL
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #       },
    #     ],
    #     policy: "Policy",
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1],
    #     },
    #     role: "Role",
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateUser AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-transfer'
      context[:gem_version] = '1.75.0'
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
    # | waiter_name    | params                   | :delay   | :max_attempts |
    # | -------------- | ------------------------ | -------- | ------------- |
    # | server_offline | {Client#describe_server} | 30       | 120           |
    # | server_online  | {Client#describe_server} | 30       | 120           |
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
        server_offline: Waiters::ServerOffline,
        server_online: Waiters::ServerOnline
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
