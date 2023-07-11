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

Aws::Plugins::GlobalConfiguration.add_identifier(:managedblockchain)

module Aws::ManagedBlockchain
  # An API client for ManagedBlockchain.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ManagedBlockchain::Client.new(
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

    @identifier = :managedblockchain

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
    add_plugin(Aws::ManagedBlockchain::Plugins::Endpoints)

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
    #   @option options [Aws::ManagedBlockchain::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ManagedBlockchain::EndpointParameters`
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

    # Creates a new accessor for use with Managed Blockchain Ethereum nodes.
    # An accessor contains information required for token based access to
    # your Ethereum nodes.
    #
    # @option params [required, String] :client_request_token
    #   This is a unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the operation. An idempotent operation completes no
    #   more than once. This identifier is required only if you make a service
    #   request directly using an HTTP client. It is generated automatically
    #   if you use an Amazon Web Services SDK or the Amazon Web Services CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :accessor_type
    #   The type of accessor.
    #
    #   <note markdown="1"> Currently, accessor type is restricted to `BILLING_TOKEN`.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to assign to the Accessor.
    #
    #   Each tag consists of a key and an optional value. You can specify
    #   multiple key-value pairs in a single request with an overall maximum
    #   of 50 tags allowed per resource.
    #
    #   For more information about tags, see [Tagging Resources][1] in the
    #   *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging
    #   Resources][2] in the *Amazon Managed Blockchain Hyperledger Fabric
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
    #   [2]: https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
    #
    # @return [Types::CreateAccessorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessorOutput#accessor_id #accessor_id} => String
    #   * {Types::CreateAccessorOutput#billing_token #billing_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_accessor({
    #     client_request_token: "ClientRequestTokenString", # required
    #     accessor_type: "BILLING_TOKEN", # required, accepts BILLING_TOKEN
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.accessor_id #=> String
    #   resp.billing_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateAccessor AWS API Documentation
    #
    # @overload create_accessor(params = {})
    # @param [Hash] params ({})
    def create_accessor(params = {}, options = {})
      req = build_request(:create_accessor, params)
      req.send_request(options)
    end

    # Creates a member within a Managed Blockchain network.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an Amazon Web Services SDK or the CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :invitation_id
    #   The unique identifier of the invitation that is sent to the member to
    #   join the network.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network in which the member is created.
    #
    # @option params [required, Types::MemberConfiguration] :member_configuration
    #   Member configuration parameters.
    #
    # @return [Types::CreateMemberOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMemberOutput#member_id #member_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_member({
    #     client_request_token: "ClientRequestTokenString", # required
    #     invitation_id: "ResourceIdString", # required
    #     network_id: "ResourceIdString", # required
    #     member_configuration: { # required
    #       name: "NetworkMemberNameString", # required
    #       description: "DescriptionString",
    #       framework_configuration: { # required
    #         fabric: {
    #           admin_username: "UsernameString", # required
    #           admin_password: "PasswordString", # required
    #         },
    #       },
    #       log_publishing_configuration: {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #         },
    #       },
    #       tags: {
    #         "TagKey" => "TagValue",
    #       },
    #       kms_key_arn: "ArnString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.member_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateMember AWS API Documentation
    #
    # @overload create_member(params = {})
    # @param [Hash] params ({})
    def create_member(params = {}, options = {})
      req = build_request(:create_member, params)
      req.send_request(options)
    end

    # Creates a new blockchain network using Amazon Managed Blockchain.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :client_request_token
    #   This is a unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the operation. An idempotent operation completes no
    #   more than once. This identifier is required only if you make a service
    #   request directly using an HTTP client. It is generated automatically
    #   if you use an Amazon Web Services SDK or the Amazon Web Services CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the network.
    #
    # @option params [String] :description
    #   An optional description for the network.
    #
    # @option params [required, String] :framework
    #   The blockchain framework that the network uses.
    #
    # @option params [required, String] :framework_version
    #   The version of the blockchain framework that the network uses.
    #
    # @option params [Types::NetworkFrameworkConfiguration] :framework_configuration
    #   Configuration properties of the blockchain framework relevant to the
    #   network configuration.
    #
    # @option params [required, Types::VotingPolicy] :voting_policy
    #   The voting rules used by the network to determine if a proposal is
    #   approved.
    #
    # @option params [required, Types::MemberConfiguration] :member_configuration
    #   Configuration properties for the first member within the network.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to assign to the network.
    #
    #   Each tag consists of a key and an optional value. You can specify
    #   multiple key-value pairs in a single request with an overall maximum
    #   of 50 tags allowed per resource.
    #
    #   For more information about tags, see [Tagging Resources][1] in the
    #   *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging
    #   Resources][2] in the *Amazon Managed Blockchain Hyperledger Fabric
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
    #   [2]: https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
    #
    # @return [Types::CreateNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkOutput#network_id #network_id} => String
    #   * {Types::CreateNetworkOutput#member_id #member_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network({
    #     client_request_token: "ClientRequestTokenString", # required
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     framework: "HYPERLEDGER_FABRIC", # required, accepts HYPERLEDGER_FABRIC, ETHEREUM
    #     framework_version: "FrameworkVersionString", # required
    #     framework_configuration: {
    #       fabric: {
    #         edition: "STARTER", # required, accepts STARTER, STANDARD
    #       },
    #     },
    #     voting_policy: { # required
    #       approval_threshold_policy: {
    #         threshold_percentage: 1,
    #         proposal_duration_in_hours: 1,
    #         threshold_comparator: "GREATER_THAN", # accepts GREATER_THAN, GREATER_THAN_OR_EQUAL_TO
    #       },
    #     },
    #     member_configuration: { # required
    #       name: "NetworkMemberNameString", # required
    #       description: "DescriptionString",
    #       framework_configuration: { # required
    #         fabric: {
    #           admin_username: "UsernameString", # required
    #           admin_password: "PasswordString", # required
    #         },
    #       },
    #       log_publishing_configuration: {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #         },
    #       },
    #       tags: {
    #         "TagKey" => "TagValue",
    #       },
    #       kms_key_arn: "ArnString",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.network_id #=> String
    #   resp.member_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateNetwork AWS API Documentation
    #
    # @overload create_network(params = {})
    # @param [Hash] params ({})
    def create_network(params = {}, options = {})
      req = build_request(:create_network, params)
      req.send_request(options)
    end

    # Creates a node on the specified blockchain network.
    #
    # Applies to Hyperledger Fabric and Ethereum.
    #
    # @option params [required, String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an Amazon Web Services SDK or the CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network for the node.
    #
    #   Ethereum public networks have the following `NetworkId`s:
    #
    #   * `n-ethereum-mainnet`
    #
    #   * `n-ethereum-goerli`
    #
    #   * `n-ethereum-rinkeby`
    #
    # @option params [String] :member_id
    #   The unique identifier of the member that owns this node.
    #
    #   Applies only to Hyperledger Fabric.
    #
    # @option params [required, Types::NodeConfiguration] :node_configuration
    #   The properties of a node configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to assign to the node.
    #
    #   Each tag consists of a key and an optional value. You can specify
    #   multiple key-value pairs in a single request with an overall maximum
    #   of 50 tags allowed per resource.
    #
    #   For more information about tags, see [Tagging Resources][1] in the
    #   *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging
    #   Resources][2] in the *Amazon Managed Blockchain Hyperledger Fabric
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
    #   [2]: https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
    #
    # @return [Types::CreateNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNodeOutput#node_id #node_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_node({
    #     client_request_token: "ClientRequestTokenString", # required
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     node_configuration: { # required
    #       instance_type: "InstanceTypeString", # required
    #       availability_zone: "AvailabilityZoneString",
    #       log_publishing_configuration: {
    #         fabric: {
    #           chaincode_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #           peer_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #         },
    #       },
    #       state_db: "LevelDB", # accepts LevelDB, CouchDB
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.node_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateNode AWS API Documentation
    #
    # @overload create_node(params = {})
    # @param [Hash] params ({})
    def create_node(params = {}, options = {})
      req = build_request(:create_node, params)
      req.send_request(options)
    end

    # Creates a proposal for a change to the network that other members of
    # the network can vote on, for example, a proposal to add a new member
    # to the network. Any member can create a proposal.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an Amazon Web Services SDK or the CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network for which the proposal is made.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member that is creating the proposal.
    #   This identifier is especially useful for identifying the member making
    #   the proposal when multiple members exist in a single Amazon Web
    #   Services account.
    #
    # @option params [required, Types::ProposalActions] :actions
    #   The type of actions proposed, such as inviting a member or removing a
    #   member. The types of `Actions` in a proposal are mutually exclusive.
    #   For example, a proposal with `Invitations` actions cannot also contain
    #   `Removals` actions.
    #
    # @option params [String] :description
    #   A description for the proposal that is visible to voting members, for
    #   example, "Proposal to add Example Corp. as member."
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to assign to the proposal.
    #
    #   Each tag consists of a key and an optional value. You can specify
    #   multiple key-value pairs in a single request with an overall maximum
    #   of 50 tags allowed per resource.
    #
    #   For more information about tags, see [Tagging Resources][1] in the
    #   *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging
    #   Resources][2] in the *Amazon Managed Blockchain Hyperledger Fabric
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
    #   [2]: https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
    #
    # @return [Types::CreateProposalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProposalOutput#proposal_id #proposal_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_proposal({
    #     client_request_token: "ClientRequestTokenString", # required
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     actions: { # required
    #       invitations: [
    #         {
    #           principal: "PrincipalString", # required
    #         },
    #       ],
    #       removals: [
    #         {
    #           member_id: "ResourceIdString", # required
    #         },
    #       ],
    #     },
    #     description: "DescriptionString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.proposal_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateProposal AWS API Documentation
    #
    # @overload create_proposal(params = {})
    # @param [Hash] params ({})
    def create_proposal(params = {}, options = {})
      req = build_request(:create_proposal, params)
      req.send_request(options)
    end

    # Deletes an accessor that your Amazon Web Services account owns. An
    # accessor object is a container that has the information required for
    # token based access to your Ethereum nodes including, the
    # `BILLING_TOKEN`. After an accessor is deleted, the status of the
    # accessor changes from `AVAILABLE` to `PENDING_DELETION`. An accessor
    # in the `PENDING_DELETION` state can’t be used for new WebSocket
    # requests or HTTP requests. However, WebSocket connections that were
    # initiated while the accessor was in the `AVAILABLE` state remain open
    # until they expire (up to 2 hours).
    #
    # @option params [required, String] :accessor_id
    #   The unique identifier of the accessor.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_accessor({
    #     accessor_id: "ResourceIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/DeleteAccessor AWS API Documentation
    #
    # @overload delete_accessor(params = {})
    # @param [Hash] params ({})
    def delete_accessor(params = {}, options = {})
      req = build_request(:delete_accessor, params)
      req.send_request(options)
    end

    # Deletes a member. Deleting a member removes the member and all
    # associated resources from the network. `DeleteMember` can only be
    # called for a specified `MemberId` if the principal performing the
    # action is associated with the Amazon Web Services account that owns
    # the member. In all other cases, the `DeleteMember` action is carried
    # out as the result of an approved proposal to remove a member. If
    # `MemberId` is the last member in a network specified by the last
    # Amazon Web Services account, the network is deleted also.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network from which the member is removed.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_member({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/DeleteMember AWS API Documentation
    #
    # @overload delete_member(params = {})
    # @param [Hash] params ({})
    def delete_member(params = {}, options = {})
      req = build_request(:delete_member, params)
      req.send_request(options)
    end

    # Deletes a node that your Amazon Web Services account owns. All data on
    # the node is lost and cannot be recovered.
    #
    # Applies to Hyperledger Fabric and Ethereum.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network that the node is on.
    #
    #   Ethereum public networks have the following `NetworkId`s:
    #
    #   * `n-ethereum-mainnet`
    #
    #   * `n-ethereum-goerli`
    #
    #   * `n-ethereum-rinkeby`
    #
    # @option params [String] :member_id
    #   The unique identifier of the member that owns this node.
    #
    #   Applies only to Hyperledger Fabric and is required for Hyperledger
    #   Fabric.
    #
    # @option params [required, String] :node_id
    #   The unique identifier of the node.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_node({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     node_id: "ResourceIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/DeleteNode AWS API Documentation
    #
    # @overload delete_node(params = {})
    # @param [Hash] params ({})
    def delete_node(params = {}, options = {})
      req = build_request(:delete_node, params)
      req.send_request(options)
    end

    # Returns detailed information about an accessor. An accessor object is
    # a container that has the information required for token based access
    # to your Ethereum nodes.
    #
    # @option params [required, String] :accessor_id
    #   The unique identifier of the accessor.
    #
    # @return [Types::GetAccessorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessorOutput#accessor #accessor} => Types::Accessor
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_accessor({
    #     accessor_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accessor.id #=> String
    #   resp.accessor.type #=> String, one of "BILLING_TOKEN"
    #   resp.accessor.billing_token #=> String
    #   resp.accessor.status #=> String, one of "AVAILABLE", "PENDING_DELETION", "DELETED"
    #   resp.accessor.creation_date #=> Time
    #   resp.accessor.arn #=> String
    #   resp.accessor.tags #=> Hash
    #   resp.accessor.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetAccessor AWS API Documentation
    #
    # @overload get_accessor(params = {})
    # @param [Hash] params ({})
    def get_accessor(params = {}, options = {})
      req = build_request(:get_accessor, params)
      req.send_request(options)
    end

    # Returns detailed information about a member.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network to which the member belongs.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member.
    #
    # @return [Types::GetMemberOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemberOutput#member #member} => Types::Member
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.network_id #=> String
    #   resp.member.id #=> String
    #   resp.member.name #=> String
    #   resp.member.description #=> String
    #   resp.member.framework_attributes.fabric.admin_username #=> String
    #   resp.member.framework_attributes.fabric.ca_endpoint #=> String
    #   resp.member.log_publishing_configuration.fabric.ca_logs.cloudwatch.enabled #=> Boolean
    #   resp.member.status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "INACCESSIBLE_ENCRYPTION_KEY"
    #   resp.member.creation_date #=> Time
    #   resp.member.tags #=> Hash
    #   resp.member.tags["TagKey"] #=> String
    #   resp.member.arn #=> String
    #   resp.member.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetMember AWS API Documentation
    #
    # @overload get_member(params = {})
    # @param [Hash] params ({})
    def get_member(params = {}, options = {})
      req = build_request(:get_member, params)
      req.send_request(options)
    end

    # Returns detailed information about a network.
    #
    # Applies to Hyperledger Fabric and Ethereum.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network to get information about.
    #
    # @return [Types::GetNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkOutput#network #network} => Types::Network
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network({
    #     network_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network.id #=> String
    #   resp.network.name #=> String
    #   resp.network.description #=> String
    #   resp.network.framework #=> String, one of "HYPERLEDGER_FABRIC", "ETHEREUM"
    #   resp.network.framework_version #=> String
    #   resp.network.framework_attributes.fabric.ordering_service_endpoint #=> String
    #   resp.network.framework_attributes.fabric.edition #=> String, one of "STARTER", "STANDARD"
    #   resp.network.framework_attributes.ethereum.chain_id #=> String
    #   resp.network.vpc_endpoint_service_name #=> String
    #   resp.network.voting_policy.approval_threshold_policy.threshold_percentage #=> Integer
    #   resp.network.voting_policy.approval_threshold_policy.proposal_duration_in_hours #=> Integer
    #   resp.network.voting_policy.approval_threshold_policy.threshold_comparator #=> String, one of "GREATER_THAN", "GREATER_THAN_OR_EQUAL_TO"
    #   resp.network.status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"
    #   resp.network.creation_date #=> Time
    #   resp.network.tags #=> Hash
    #   resp.network.tags["TagKey"] #=> String
    #   resp.network.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetNetwork AWS API Documentation
    #
    # @overload get_network(params = {})
    # @param [Hash] params ({})
    def get_network(params = {}, options = {})
      req = build_request(:get_network, params)
      req.send_request(options)
    end

    # Returns detailed information about a node.
    #
    # Applies to Hyperledger Fabric and Ethereum.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network that the node is on.
    #
    # @option params [String] :member_id
    #   The unique identifier of the member that owns the node.
    #
    #   Applies only to Hyperledger Fabric and is required for Hyperledger
    #   Fabric.
    #
    # @option params [required, String] :node_id
    #   The unique identifier of the node.
    #
    # @return [Types::GetNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNodeOutput#node #node} => Types::Node
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_node({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     node_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.node.network_id #=> String
    #   resp.node.member_id #=> String
    #   resp.node.id #=> String
    #   resp.node.instance_type #=> String
    #   resp.node.availability_zone #=> String
    #   resp.node.framework_attributes.fabric.peer_endpoint #=> String
    #   resp.node.framework_attributes.fabric.peer_event_endpoint #=> String
    #   resp.node.framework_attributes.ethereum.http_endpoint #=> String
    #   resp.node.framework_attributes.ethereum.web_socket_endpoint #=> String
    #   resp.node.log_publishing_configuration.fabric.chaincode_logs.cloudwatch.enabled #=> Boolean
    #   resp.node.log_publishing_configuration.fabric.peer_logs.cloudwatch.enabled #=> Boolean
    #   resp.node.state_db #=> String, one of "LevelDB", "CouchDB"
    #   resp.node.status #=> String, one of "CREATING", "AVAILABLE", "UNHEALTHY", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED", "INACCESSIBLE_ENCRYPTION_KEY"
    #   resp.node.creation_date #=> Time
    #   resp.node.tags #=> Hash
    #   resp.node.tags["TagKey"] #=> String
    #   resp.node.arn #=> String
    #   resp.node.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetNode AWS API Documentation
    #
    # @overload get_node(params = {})
    # @param [Hash] params ({})
    def get_node(params = {}, options = {})
      req = build_request(:get_node, params)
      req.send_request(options)
    end

    # Returns detailed information about a proposal.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network for which the proposal is made.
    #
    # @option params [required, String] :proposal_id
    #   The unique identifier of the proposal.
    #
    # @return [Types::GetProposalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProposalOutput#proposal #proposal} => Types::Proposal
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_proposal({
    #     network_id: "ResourceIdString", # required
    #     proposal_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.proposal.proposal_id #=> String
    #   resp.proposal.network_id #=> String
    #   resp.proposal.description #=> String
    #   resp.proposal.actions.invitations #=> Array
    #   resp.proposal.actions.invitations[0].principal #=> String
    #   resp.proposal.actions.removals #=> Array
    #   resp.proposal.actions.removals[0].member_id #=> String
    #   resp.proposal.proposed_by_member_id #=> String
    #   resp.proposal.proposed_by_member_name #=> String
    #   resp.proposal.status #=> String, one of "IN_PROGRESS", "APPROVED", "REJECTED", "EXPIRED", "ACTION_FAILED"
    #   resp.proposal.creation_date #=> Time
    #   resp.proposal.expiration_date #=> Time
    #   resp.proposal.yes_vote_count #=> Integer
    #   resp.proposal.no_vote_count #=> Integer
    #   resp.proposal.outstanding_vote_count #=> Integer
    #   resp.proposal.tags #=> Hash
    #   resp.proposal.tags["TagKey"] #=> String
    #   resp.proposal.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetProposal AWS API Documentation
    #
    # @overload get_proposal(params = {})
    # @param [Hash] params ({})
    def get_proposal(params = {}, options = {})
      req = build_request(:get_proposal, params)
      req.send_request(options)
    end

    # Returns a list of the accessors and their properties. Accessor objects
    # are containers that have the information required for token based
    # access to your Ethereum nodes.
    #
    # @option params [Integer] :max_results
    #   The maximum number of accessors to list.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListAccessorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessorsOutput#accessors #accessors} => Array&lt;Types::AccessorSummary&gt;
    #   * {Types::ListAccessorsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accessors({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.accessors #=> Array
    #   resp.accessors[0].id #=> String
    #   resp.accessors[0].type #=> String, one of "BILLING_TOKEN"
    #   resp.accessors[0].status #=> String, one of "AVAILABLE", "PENDING_DELETION", "DELETED"
    #   resp.accessors[0].creation_date #=> Time
    #   resp.accessors[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListAccessors AWS API Documentation
    #
    # @overload list_accessors(params = {})
    # @param [Hash] params ({})
    def list_accessors(params = {}, options = {})
      req = build_request(:list_accessors, params)
      req.send_request(options)
    end

    # Returns a list of all invitations for the current Amazon Web Services
    # account.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [Integer] :max_results
    #   The maximum number of invitations to return.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListInvitationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvitationsOutput#invitations #invitations} => Array&lt;Types::Invitation&gt;
    #   * {Types::ListInvitationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.invitations #=> Array
    #   resp.invitations[0].invitation_id #=> String
    #   resp.invitations[0].creation_date #=> Time
    #   resp.invitations[0].expiration_date #=> Time
    #   resp.invitations[0].status #=> String, one of "PENDING", "ACCEPTED", "ACCEPTING", "REJECTED", "EXPIRED"
    #   resp.invitations[0].network_summary.id #=> String
    #   resp.invitations[0].network_summary.name #=> String
    #   resp.invitations[0].network_summary.description #=> String
    #   resp.invitations[0].network_summary.framework #=> String, one of "HYPERLEDGER_FABRIC", "ETHEREUM"
    #   resp.invitations[0].network_summary.framework_version #=> String
    #   resp.invitations[0].network_summary.status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"
    #   resp.invitations[0].network_summary.creation_date #=> Time
    #   resp.invitations[0].network_summary.arn #=> String
    #   resp.invitations[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListInvitations AWS API Documentation
    #
    # @overload list_invitations(params = {})
    # @param [Hash] params ({})
    def list_invitations(params = {}, options = {})
      req = build_request(:list_invitations, params)
      req.send_request(options)
    end

    # Returns a list of the members in a network and properties of their
    # configurations.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network for which to list members.
    #
    # @option params [String] :name
    #   The optional name of the member to list.
    #
    # @option params [String] :status
    #   An optional status specifier. If provided, only members currently in
    #   this status are listed.
    #
    # @option params [Boolean] :is_owned
    #   An optional Boolean value. If provided, the request is limited either
    #   to members that the current Amazon Web Services account owns (`true`)
    #   or that other Amazon Web Services accountsn own (`false`). If omitted,
    #   all members are listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of members to return in the request.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListMembersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersOutput#members #members} => Array&lt;Types::MemberSummary&gt;
    #   * {Types::ListMembersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     network_id: "ResourceIdString", # required
    #     name: "String",
    #     status: "CREATING", # accepts CREATING, AVAILABLE, CREATE_FAILED, UPDATING, DELETING, DELETED, INACCESSIBLE_ENCRYPTION_KEY
    #     is_owned: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].id #=> String
    #   resp.members[0].name #=> String
    #   resp.members[0].description #=> String
    #   resp.members[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "INACCESSIBLE_ENCRYPTION_KEY"
    #   resp.members[0].creation_date #=> Time
    #   resp.members[0].is_owned #=> Boolean
    #   resp.members[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Returns information about the networks in which the current Amazon Web
    # Services account participates.
    #
    # Applies to Hyperledger Fabric and Ethereum.
    #
    # @option params [String] :name
    #   The name of the network.
    #
    # @option params [String] :framework
    #   An optional framework specifier. If provided, only networks of this
    #   framework type are listed.
    #
    # @option params [String] :status
    #   An optional status specifier. If provided, only networks currently in
    #   this status are listed.
    #
    #   Applies only to Hyperledger Fabric.
    #
    # @option params [Integer] :max_results
    #   The maximum number of networks to list.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListNetworksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworksOutput#networks #networks} => Array&lt;Types::NetworkSummary&gt;
    #   * {Types::ListNetworksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_networks({
    #     name: "String",
    #     framework: "HYPERLEDGER_FABRIC", # accepts HYPERLEDGER_FABRIC, ETHEREUM
    #     status: "CREATING", # accepts CREATING, AVAILABLE, CREATE_FAILED, DELETING, DELETED
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.networks #=> Array
    #   resp.networks[0].id #=> String
    #   resp.networks[0].name #=> String
    #   resp.networks[0].description #=> String
    #   resp.networks[0].framework #=> String, one of "HYPERLEDGER_FABRIC", "ETHEREUM"
    #   resp.networks[0].framework_version #=> String
    #   resp.networks[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"
    #   resp.networks[0].creation_date #=> Time
    #   resp.networks[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListNetworks AWS API Documentation
    #
    # @overload list_networks(params = {})
    # @param [Hash] params ({})
    def list_networks(params = {}, options = {})
      req = build_request(:list_networks, params)
      req.send_request(options)
    end

    # Returns information about the nodes within a network.
    #
    # Applies to Hyperledger Fabric and Ethereum.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network for which to list nodes.
    #
    # @option params [String] :member_id
    #   The unique identifier of the member who owns the nodes to list.
    #
    #   Applies only to Hyperledger Fabric and is required for Hyperledger
    #   Fabric.
    #
    # @option params [String] :status
    #   An optional status specifier. If provided, only nodes currently in
    #   this status are listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of nodes to list.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListNodesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNodesOutput#nodes #nodes} => Array&lt;Types::NodeSummary&gt;
    #   * {Types::ListNodesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodes({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     status: "CREATING", # accepts CREATING, AVAILABLE, UNHEALTHY, CREATE_FAILED, UPDATING, DELETING, DELETED, FAILED, INACCESSIBLE_ENCRYPTION_KEY
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.nodes #=> Array
    #   resp.nodes[0].id #=> String
    #   resp.nodes[0].status #=> String, one of "CREATING", "AVAILABLE", "UNHEALTHY", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED", "INACCESSIBLE_ENCRYPTION_KEY"
    #   resp.nodes[0].creation_date #=> Time
    #   resp.nodes[0].availability_zone #=> String
    #   resp.nodes[0].instance_type #=> String
    #   resp.nodes[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListNodes AWS API Documentation
    #
    # @overload list_nodes(params = {})
    # @param [Hash] params ({})
    def list_nodes(params = {}, options = {})
      req = build_request(:list_nodes, params)
      req.send_request(options)
    end

    # Returns the list of votes for a specified proposal, including the
    # value of each vote and the unique identifier of the member that cast
    # the vote.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network.
    #
    # @option params [required, String] :proposal_id
    #   The unique identifier of the proposal.
    #
    # @option params [Integer] :max_results
    #   The maximum number of votes to return.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListProposalVotesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProposalVotesOutput#proposal_votes #proposal_votes} => Array&lt;Types::VoteSummary&gt;
    #   * {Types::ListProposalVotesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proposal_votes({
    #     network_id: "ResourceIdString", # required
    #     proposal_id: "ResourceIdString", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.proposal_votes #=> Array
    #   resp.proposal_votes[0].vote #=> String, one of "YES", "NO"
    #   resp.proposal_votes[0].member_name #=> String
    #   resp.proposal_votes[0].member_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListProposalVotes AWS API Documentation
    #
    # @overload list_proposal_votes(params = {})
    # @param [Hash] params ({})
    def list_proposal_votes(params = {}, options = {})
      req = build_request(:list_proposal_votes, params)
      req.send_request(options)
    end

    # Returns a list of proposals for the network.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network.
    #
    # @option params [Integer] :max_results
    #   The maximum number of proposals to return.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListProposalsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProposalsOutput#proposals #proposals} => Array&lt;Types::ProposalSummary&gt;
    #   * {Types::ListProposalsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proposals({
    #     network_id: "ResourceIdString", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.proposals #=> Array
    #   resp.proposals[0].proposal_id #=> String
    #   resp.proposals[0].description #=> String
    #   resp.proposals[0].proposed_by_member_id #=> String
    #   resp.proposals[0].proposed_by_member_name #=> String
    #   resp.proposals[0].status #=> String, one of "IN_PROGRESS", "APPROVED", "REJECTED", "EXPIRED", "ACTION_FAILED"
    #   resp.proposals[0].creation_date #=> Time
    #   resp.proposals[0].expiration_date #=> Time
    #   resp.proposals[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListProposals AWS API Documentation
    #
    # @overload list_proposals(params = {})
    # @param [Hash] params ({})
    def list_proposals(params = {}, options = {})
      req = build_request(:list_proposals, params)
      req.send_request(options)
    end

    # Returns a list of tags for the specified resource. Each tag consists
    # of a key and optional value.
    #
    # For more information about tags, see [Tagging Resources][1] in the
    # *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging
    # Resources][2] in the *Amazon Managed Blockchain Hyperledger Fabric
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
    # [2]: https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For more information
    #   about ARNs and their format, see [Amazon Resource Names (ARNs)][1] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Rejects an invitation to join a network. This action can be called by
    # a principal in an Amazon Web Services account that has received an
    # invitation to create a member and join a network.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :invitation_id
    #   The unique identifier of the invitation to reject.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_invitation({
    #     invitation_id: "ResourceIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/RejectInvitation AWS API Documentation
    #
    # @overload reject_invitation(params = {})
    # @param [Hash] params ({})
    def reject_invitation(params = {}, options = {})
      req = build_request(:reject_invitation, params)
      req.send_request(options)
    end

    # Adds or overwrites the specified tags for the specified Amazon Managed
    # Blockchain resource. Each tag consists of a key and optional value.
    #
    # When you specify a tag key that already exists, the tag value is
    # overwritten with the new value. Use `UntagResource` to remove tag
    # keys.
    #
    # A resource can have up to 50 tags. If you try to create more than 50
    # tags for a resource, your request fails and returns an error.
    #
    # For more information about tags, see [Tagging Resources][1] in the
    # *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging
    # Resources][2] in the *Amazon Managed Blockchain Hyperledger Fabric
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
    # [2]: https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For more information
    #   about ARNs and their format, see [Amazon Resource Names (ARNs)][1] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to assign to the specified resource. Tag values can be empty,
    #   for example, `"MyTagKey" : ""`. You can specify multiple key-value
    #   pairs in a single request, with an overall maximum of 50 tags added to
    #   each resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ArnString", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the Amazon Managed Blockchain
    # resource.
    #
    # For more information about tags, see [Tagging Resources][1] in the
    # *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging
    # Resources][2] in the *Amazon Managed Blockchain Hyperledger Fabric
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
    # [2]: https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For more information
    #   about ARNs and their format, see [Amazon Resource Names (ARNs)][1] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ArnString", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a member configuration with new parameters.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the Managed Blockchain network to which the
    #   member belongs.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member.
    #
    # @option params [Types::MemberLogPublishingConfiguration] :log_publishing_configuration
    #   Configuration properties for publishing to Amazon CloudWatch Logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_member({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     log_publishing_configuration: {
    #       fabric: {
    #         ca_logs: {
    #           cloudwatch: {
    #             enabled: false,
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/UpdateMember AWS API Documentation
    #
    # @overload update_member(params = {})
    # @param [Hash] params ({})
    def update_member(params = {}, options = {})
      req = build_request(:update_member, params)
      req.send_request(options)
    end

    # Updates a node configuration with new parameters.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network that the node is on.
    #
    # @option params [String] :member_id
    #   The unique identifier of the member that owns the node.
    #
    #   Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :node_id
    #   The unique identifier of the node.
    #
    # @option params [Types::NodeLogPublishingConfiguration] :log_publishing_configuration
    #   Configuration properties for publishing to Amazon CloudWatch Logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_node({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     node_id: "ResourceIdString", # required
    #     log_publishing_configuration: {
    #       fabric: {
    #         chaincode_logs: {
    #           cloudwatch: {
    #             enabled: false,
    #           },
    #         },
    #         peer_logs: {
    #           cloudwatch: {
    #             enabled: false,
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/UpdateNode AWS API Documentation
    #
    # @overload update_node(params = {})
    # @param [Hash] params ({})
    def update_node(params = {}, options = {})
      req = build_request(:update_node, params)
      req.send_request(options)
    end

    # Casts a vote for a specified `ProposalId` on behalf of a member. The
    # member to vote as, specified by `VoterMemberId`, must be in the same
    # Amazon Web Services account as the principal that calls the action.
    #
    # Applies only to Hyperledger Fabric.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network.
    #
    # @option params [required, String] :proposal_id
    #   The unique identifier of the proposal.
    #
    # @option params [required, String] :voter_member_id
    #   The unique identifier of the member casting the vote.
    #
    # @option params [required, String] :vote
    #   The value of the vote.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.vote_on_proposal({
    #     network_id: "ResourceIdString", # required
    #     proposal_id: "ResourceIdString", # required
    #     voter_member_id: "ResourceIdString", # required
    #     vote: "YES", # required, accepts YES, NO
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/VoteOnProposal AWS API Documentation
    #
    # @overload vote_on_proposal(params = {})
    # @param [Hash] params ({})
    def vote_on_proposal(params = {}, options = {})
      req = build_request(:vote_on_proposal, params)
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
      context[:gem_name] = 'aws-sdk-managedblockchain'
      context[:gem_version] = '1.43.0'
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
