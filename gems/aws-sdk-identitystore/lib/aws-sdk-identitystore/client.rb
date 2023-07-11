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

Aws::Plugins::GlobalConfiguration.add_identifier(:identitystore)

module Aws::IdentityStore
  # An API client for IdentityStore.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IdentityStore::Client.new(
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

    @identifier = :identitystore

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
    add_plugin(Aws::IdentityStore::Plugins::Endpoints)

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
    #   @option options [Aws::IdentityStore::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::IdentityStore::EndpointParameters`
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

    # Creates a group within the specified identity store.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [String] :display_name
    #   A string containing the name of the group. This value is commonly
    #   displayed when the group is referenced. "Administrator" and
    #   "AWSAdministrators" are reserved names and can't be used for users
    #   or groups.
    #
    # @option params [String] :description
    #   A string containing the description of the group.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group_id #group_id} => String
    #   * {Types::CreateGroupResponse#identity_store_id #identity_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     identity_store_id: "IdentityStoreId", # required
    #     display_name: "GroupDisplayName",
    #     description: "SensitiveStringType",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_id #=> String
    #   resp.identity_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Creates a relationship between a member and a group. The following
    # identifiers must be specified: `GroupId`, `IdentityStoreId`, and
    # `MemberId`.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, String] :group_id
    #   The identifier for a group in the identity store.
    #
    # @option params [required, Types::MemberId] :member_id
    #   An object that contains the identifier of a group member. Setting the
    #   `UserID` field to the specific identifier for a user indicates that
    #   the user is a member of the group.
    #
    # @return [Types::CreateGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupMembershipResponse#membership_id #membership_id} => String
    #   * {Types::CreateGroupMembershipResponse#identity_store_id #identity_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_membership({
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     member_id: { # required
    #       user_id: "ResourceId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_id #=> String
    #   resp.identity_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/CreateGroupMembership AWS API Documentation
    #
    # @overload create_group_membership(params = {})
    # @param [Hash] params ({})
    def create_group_membership(params = {}, options = {})
      req = build_request(:create_group_membership, params)
      req.send_request(options)
    end

    # Creates a user within the specified identity store.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [String] :user_name
    #   A unique string used to identify the user. The length limit is 128
    #   characters. This value can consist of letters, accented characters,
    #   symbols, numbers, and punctuation. This value is specified at the time
    #   the user is created and stored as an attribute of the user object in
    #   the identity store. "Administrator" and "AWSAdministrators" are
    #   reserved names and can't be used for users or groups.
    #
    # @option params [Types::Name] :name
    #   An object containing the name of the user.
    #
    # @option params [String] :display_name
    #   A string containing the name of the user. This value is typically
    #   formatted for display when the user is referenced. For example, "John
    #   Doe."
    #
    # @option params [String] :nick_name
    #   A string containing an alternate name for the user.
    #
    # @option params [String] :profile_url
    #   A string containing a URL that might be associated with the user.
    #
    # @option params [Array<Types::Email>] :emails
    #   A list of `Email` objects containing email addresses associated with
    #   the user.
    #
    # @option params [Array<Types::Address>] :addresses
    #   A list of `Address` objects containing addresses associated with the
    #   user.
    #
    # @option params [Array<Types::PhoneNumber>] :phone_numbers
    #   A list of `PhoneNumber` objects containing phone numbers associated
    #   with the user.
    #
    # @option params [String] :user_type
    #   A string indicating the type of user. Possible values are left
    #   unspecified. The value can vary based on your specific use case.
    #
    # @option params [String] :title
    #   A string containing the title of the user. Possible values are left
    #   unspecified. The value can vary based on your specific use case.
    #
    # @option params [String] :preferred_language
    #   A string containing the preferred language of the user. For example,
    #   "American English" or "en-us."
    #
    # @option params [String] :locale
    #   A string containing the geographical region or location of the user.
    #
    # @option params [String] :timezone
    #   A string containing the time zone of the user.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_id #user_id} => String
    #   * {Types::CreateUserResponse#identity_store_id #identity_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     identity_store_id: "IdentityStoreId", # required
    #     user_name: "UserName",
    #     name: {
    #       formatted: "SensitiveStringType",
    #       family_name: "SensitiveStringType",
    #       given_name: "SensitiveStringType",
    #       middle_name: "SensitiveStringType",
    #       honorific_prefix: "SensitiveStringType",
    #       honorific_suffix: "SensitiveStringType",
    #     },
    #     display_name: "SensitiveStringType",
    #     nick_name: "SensitiveStringType",
    #     profile_url: "SensitiveStringType",
    #     emails: [
    #       {
    #         value: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false,
    #       },
    #     ],
    #     addresses: [
    #       {
    #         street_address: "SensitiveStringType",
    #         locality: "SensitiveStringType",
    #         region: "SensitiveStringType",
    #         postal_code: "SensitiveStringType",
    #         country: "SensitiveStringType",
    #         formatted: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false,
    #       },
    #     ],
    #     phone_numbers: [
    #       {
    #         value: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false,
    #       },
    #     ],
    #     user_type: "SensitiveStringType",
    #     title: "SensitiveStringType",
    #     preferred_language: "SensitiveStringType",
    #     locale: "SensitiveStringType",
    #     timezone: "SensitiveStringType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.identity_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Delete a group within an identity store given `GroupId`.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, String] :group_id
    #   The identifier for a group in the identity store.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Delete a membership within a group given `MembershipId`.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, String] :membership_id
    #   The identifier for a `GroupMembership` in an identity store.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group_membership({
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/DeleteGroupMembership AWS API Documentation
    #
    # @overload delete_group_membership(params = {})
    # @param [Hash] params ({})
    def delete_group_membership(params = {}, options = {})
      req = build_request(:delete_group_membership, params)
      req.send_request(options)
    end

    # Deletes a user within an identity store given `UserId`.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, String] :user_id
    #   The identifier for a user in the identity store.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Retrieves the group metadata and attributes from `GroupId` in an
    # identity store.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store, such as
    #   `d-1234567890`. In this example, `d-` is a fixed prefix, and
    #   `1234567890` is a randomly generated string that contains numbers and
    #   lower case letters. This value is generated at the time that a new
    #   identity store is created.
    #
    # @option params [required, String] :group_id
    #   The identifier for a group in the identity store.
    #
    # @return [Types::DescribeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupResponse#group_id #group_id} => String
    #   * {Types::DescribeGroupResponse#display_name #display_name} => String
    #   * {Types::DescribeGroupResponse#external_ids #external_ids} => Array&lt;Types::ExternalId&gt;
    #   * {Types::DescribeGroupResponse#description #description} => String
    #   * {Types::DescribeGroupResponse#identity_store_id #identity_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group({
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_id #=> String
    #   resp.display_name #=> String
    #   resp.external_ids #=> Array
    #   resp.external_ids[0].issuer #=> String
    #   resp.external_ids[0].id #=> String
    #   resp.description #=> String
    #   resp.identity_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/DescribeGroup AWS API Documentation
    #
    # @overload describe_group(params = {})
    # @param [Hash] params ({})
    def describe_group(params = {}, options = {})
      req = build_request(:describe_group, params)
      req.send_request(options)
    end

    # Retrieves membership metadata and attributes from `MembershipId` in an
    # identity store.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, String] :membership_id
    #   The identifier for a `GroupMembership` in an identity store.
    #
    # @return [Types::DescribeGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupMembershipResponse#identity_store_id #identity_store_id} => String
    #   * {Types::DescribeGroupMembershipResponse#membership_id #membership_id} => String
    #   * {Types::DescribeGroupMembershipResponse#group_id #group_id} => String
    #   * {Types::DescribeGroupMembershipResponse#member_id #member_id} => Types::MemberId
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group_membership({
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_store_id #=> String
    #   resp.membership_id #=> String
    #   resp.group_id #=> String
    #   resp.member_id.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/DescribeGroupMembership AWS API Documentation
    #
    # @overload describe_group_membership(params = {})
    # @param [Hash] params ({})
    def describe_group_membership(params = {}, options = {})
      req = build_request(:describe_group_membership, params)
      req.send_request(options)
    end

    # Retrieves the user metadata and attributes from the `UserId` in an
    # identity store.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store, such as
    #   `d-1234567890`. In this example, `d-` is a fixed prefix, and
    #   `1234567890` is a randomly generated string that contains numbers and
    #   lower case letters. This value is generated at the time that a new
    #   identity store is created.
    #
    # @option params [required, String] :user_id
    #   The identifier for a user in the identity store.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user_name #user_name} => String
    #   * {Types::DescribeUserResponse#user_id #user_id} => String
    #   * {Types::DescribeUserResponse#external_ids #external_ids} => Array&lt;Types::ExternalId&gt;
    #   * {Types::DescribeUserResponse#name #name} => Types::Name
    #   * {Types::DescribeUserResponse#display_name #display_name} => String
    #   * {Types::DescribeUserResponse#nick_name #nick_name} => String
    #   * {Types::DescribeUserResponse#profile_url #profile_url} => String
    #   * {Types::DescribeUserResponse#emails #emails} => Array&lt;Types::Email&gt;
    #   * {Types::DescribeUserResponse#addresses #addresses} => Array&lt;Types::Address&gt;
    #   * {Types::DescribeUserResponse#phone_numbers #phone_numbers} => Array&lt;Types::PhoneNumber&gt;
    #   * {Types::DescribeUserResponse#user_type #user_type} => String
    #   * {Types::DescribeUserResponse#title #title} => String
    #   * {Types::DescribeUserResponse#preferred_language #preferred_language} => String
    #   * {Types::DescribeUserResponse#locale #locale} => String
    #   * {Types::DescribeUserResponse#timezone #timezone} => String
    #   * {Types::DescribeUserResponse#identity_store_id #identity_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_name #=> String
    #   resp.user_id #=> String
    #   resp.external_ids #=> Array
    #   resp.external_ids[0].issuer #=> String
    #   resp.external_ids[0].id #=> String
    #   resp.name.formatted #=> String
    #   resp.name.family_name #=> String
    #   resp.name.given_name #=> String
    #   resp.name.middle_name #=> String
    #   resp.name.honorific_prefix #=> String
    #   resp.name.honorific_suffix #=> String
    #   resp.display_name #=> String
    #   resp.nick_name #=> String
    #   resp.profile_url #=> String
    #   resp.emails #=> Array
    #   resp.emails[0].value #=> String
    #   resp.emails[0].type #=> String
    #   resp.emails[0].primary #=> Boolean
    #   resp.addresses #=> Array
    #   resp.addresses[0].street_address #=> String
    #   resp.addresses[0].locality #=> String
    #   resp.addresses[0].region #=> String
    #   resp.addresses[0].postal_code #=> String
    #   resp.addresses[0].country #=> String
    #   resp.addresses[0].formatted #=> String
    #   resp.addresses[0].type #=> String
    #   resp.addresses[0].primary #=> Boolean
    #   resp.phone_numbers #=> Array
    #   resp.phone_numbers[0].value #=> String
    #   resp.phone_numbers[0].type #=> String
    #   resp.phone_numbers[0].primary #=> Boolean
    #   resp.user_type #=> String
    #   resp.title #=> String
    #   resp.preferred_language #=> String
    #   resp.locale #=> String
    #   resp.timezone #=> String
    #   resp.identity_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Retrieves `GroupId` in an identity store.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, Types::AlternateIdentifier] :alternate_identifier
    #   A unique identifier for a user or group that is not the primary
    #   identifier. This value can be an identifier from an external identity
    #   provider (IdP) that is associated with the user, the group, or a
    #   unique attribute. For the unique attribute, the only valid path is
    #   `displayName`.
    #
    # @return [Types::GetGroupIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupIdResponse#group_id #group_id} => String
    #   * {Types::GetGroupIdResponse#identity_store_id #identity_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_id({
    #     identity_store_id: "IdentityStoreId", # required
    #     alternate_identifier: { # required
    #       external_id: {
    #         issuer: "ExternalIdIssuer", # required
    #         id: "ExternalIdIdentifier", # required
    #       },
    #       unique_attribute: {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: "value", # required, value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.group_id #=> String
    #   resp.identity_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/GetGroupId AWS API Documentation
    #
    # @overload get_group_id(params = {})
    # @param [Hash] params ({})
    def get_group_id(params = {}, options = {})
      req = build_request(:get_group_id, params)
      req.send_request(options)
    end

    # Retrieves the `MembershipId` in an identity store.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, String] :group_id
    #   The identifier for a group in the identity store.
    #
    # @option params [required, Types::MemberId] :member_id
    #   An object that contains the identifier of a group member. Setting the
    #   `UserID` field to the specific identifier for a user indicates that
    #   the user is a member of the group.
    #
    # @return [Types::GetGroupMembershipIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupMembershipIdResponse#membership_id #membership_id} => String
    #   * {Types::GetGroupMembershipIdResponse#identity_store_id #identity_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_membership_id({
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     member_id: { # required
    #       user_id: "ResourceId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_id #=> String
    #   resp.identity_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/GetGroupMembershipId AWS API Documentation
    #
    # @overload get_group_membership_id(params = {})
    # @param [Hash] params ({})
    def get_group_membership_id(params = {}, options = {})
      req = build_request(:get_group_membership_id, params)
      req.send_request(options)
    end

    # Retrieves the `UserId` in an identity store.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, Types::AlternateIdentifier] :alternate_identifier
    #   A unique identifier for a user or group that is not the primary
    #   identifier. This value can be an identifier from an external identity
    #   provider (IdP) that is associated with the user, the group, or a
    #   unique attribute. For the unique attribute, the only valid paths are
    #   `userName` and `emails.value`.
    #
    # @return [Types::GetUserIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserIdResponse#user_id #user_id} => String
    #   * {Types::GetUserIdResponse#identity_store_id #identity_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_id({
    #     identity_store_id: "IdentityStoreId", # required
    #     alternate_identifier: { # required
    #       external_id: {
    #         issuer: "ExternalIdIssuer", # required
    #         id: "ExternalIdIdentifier", # required
    #       },
    #       unique_attribute: {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: "value", # required, value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.identity_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/GetUserId AWS API Documentation
    #
    # @overload get_user_id(params = {})
    # @param [Hash] params ({})
    def get_user_id(params = {}, options = {})
      req = build_request(:get_user_id, params)
      req.send_request(options)
    end

    # Checks the user's membership in all requested groups and returns if
    # the member exists in all queried groups.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, Types::MemberId] :member_id
    #   An object containing the identifier of a group member.
    #
    # @option params [required, Array<String>] :group_ids
    #   A list of identifiers for groups in the identity store.
    #
    # @return [Types::IsMemberInGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IsMemberInGroupsResponse#results #results} => Array&lt;Types::GroupMembershipExistenceResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.is_member_in_groups({
    #     identity_store_id: "IdentityStoreId", # required
    #     member_id: { # required
    #       user_id: "ResourceId",
    #     },
    #     group_ids: ["ResourceId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].group_id #=> String
    #   resp.results[0].member_id.user_id #=> String
    #   resp.results[0].membership_exists #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/IsMemberInGroups AWS API Documentation
    #
    # @overload is_member_in_groups(params = {})
    # @param [Hash] params ({})
    def is_member_in_groups(params = {}, options = {})
      req = build_request(:is_member_in_groups, params)
      req.send_request(options)
    end

    # For the specified group in the specified identity store, returns the
    # list of all `GroupMembership` objects and returns results in paginated
    # form.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, String] :group_id
    #   The identifier for a group in the identity store.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request. This
    #   parameter is used in all `List` requests to specify how many results
    #   to return in one page.
    #
    # @option params [String] :next_token
    #   The pagination token used for the `ListUsers`, `ListGroups` and
    #   `ListGroupMemberships` API operations. This value is generated by the
    #   identity store service. It is returned in the API response if the
    #   total results are more than the size of one page. This token is also
    #   returned when it is used in the API request to search for the next
    #   page.
    #
    # @return [Types::ListGroupMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupMembershipsResponse#group_memberships #group_memberships} => Array&lt;Types::GroupMembership&gt;
    #   * {Types::ListGroupMembershipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_memberships({
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_memberships #=> Array
    #   resp.group_memberships[0].identity_store_id #=> String
    #   resp.group_memberships[0].membership_id #=> String
    #   resp.group_memberships[0].group_id #=> String
    #   resp.group_memberships[0].member_id.user_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/ListGroupMemberships AWS API Documentation
    #
    # @overload list_group_memberships(params = {})
    # @param [Hash] params ({})
    def list_group_memberships(params = {}, options = {})
      req = build_request(:list_group_memberships, params)
      req.send_request(options)
    end

    # For the specified member in the specified identity store, returns the
    # list of all `GroupMembership` objects and returns results in paginated
    # form.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, Types::MemberId] :member_id
    #   An object that contains the identifier of a group member. Setting the
    #   `UserID` field to the specific identifier for a user indicates that
    #   the user is a member of the group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request. This
    #   parameter is used in the `ListUsers` and `ListGroups` requests to
    #   specify how many results to return in one page. The length limit is 50
    #   characters.
    #
    # @option params [String] :next_token
    #   The pagination token used for the `ListUsers`, `ListGroups`, and
    #   `ListGroupMemberships` API operations. This value is generated by the
    #   identity store service. It is returned in the API response if the
    #   total results are more than the size of one page. This token is also
    #   returned when it is used in the API request to search for the next
    #   page.
    #
    # @return [Types::ListGroupMembershipsForMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupMembershipsForMemberResponse#group_memberships #group_memberships} => Array&lt;Types::GroupMembership&gt;
    #   * {Types::ListGroupMembershipsForMemberResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_memberships_for_member({
    #     identity_store_id: "IdentityStoreId", # required
    #     member_id: { # required
    #       user_id: "ResourceId",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_memberships #=> Array
    #   resp.group_memberships[0].identity_store_id #=> String
    #   resp.group_memberships[0].membership_id #=> String
    #   resp.group_memberships[0].group_id #=> String
    #   resp.group_memberships[0].member_id.user_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/ListGroupMembershipsForMember AWS API Documentation
    #
    # @overload list_group_memberships_for_member(params = {})
    # @param [Hash] params ({})
    def list_group_memberships_for_member(params = {}, options = {})
      req = build_request(:list_group_memberships_for_member, params)
      req.send_request(options)
    end

    # Lists all groups in the identity store. Returns a paginated list of
    # complete `Group` objects. Filtering for a `Group` by the `DisplayName`
    # attribute is deprecated. Instead, use the `GetGroupId` API action.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store, such as
    #   `d-1234567890`. In this example, `d-` is a fixed prefix, and
    #   `1234567890` is a randomly generated string that contains numbers and
    #   lower case letters. This value is generated at the time that a new
    #   identity store is created.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request. This
    #   parameter is used in the `ListUsers` and `ListGroups` requests to
    #   specify how many results to return in one page. The length limit is 50
    #   characters.
    #
    # @option params [String] :next_token
    #   The pagination token used for the `ListUsers` and `ListGroups` API
    #   operations. This value is generated by the identity store service. It
    #   is returned in the API response if the total results are more than the
    #   size of one page. This token is also returned when it is used in the
    #   API request to search for the next page.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of `Filter` objects, which is used in the `ListUsers` and
    #   `ListGroups` requests.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#groups #groups} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     identity_store_id: "IdentityStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: "SensitiveStringType", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_id #=> String
    #   resp.groups[0].display_name #=> String
    #   resp.groups[0].external_ids #=> Array
    #   resp.groups[0].external_ids[0].issuer #=> String
    #   resp.groups[0].external_ids[0].id #=> String
    #   resp.groups[0].description #=> String
    #   resp.groups[0].identity_store_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists all users in the identity store. Returns a paginated list of
    # complete `User` objects. Filtering for a `User` by the `UserName`
    # attribute is deprecated. Instead, use the `GetUserId` API action.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store, such as
    #   `d-1234567890`. In this example, `d-` is a fixed prefix, and
    #   `1234567890` is a randomly generated string that contains numbers and
    #   lower case letters. This value is generated at the time that a new
    #   identity store is created.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request. This
    #   parameter is used in the `ListUsers` and `ListGroups` requests to
    #   specify how many results to return in one page. The length limit is 50
    #   characters.
    #
    # @option params [String] :next_token
    #   The pagination token used for the `ListUsers` and `ListGroups` API
    #   operations. This value is generated by the identity store service. It
    #   is returned in the API response if the total results are more than the
    #   size of one page. This token is also returned when it is used in the
    #   API request to search for the next page.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of `Filter` objects, which is used in the `ListUsers` and
    #   `ListGroups` requests.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     identity_store_id: "IdentityStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: "SensitiveStringType", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_name #=> String
    #   resp.users[0].user_id #=> String
    #   resp.users[0].external_ids #=> Array
    #   resp.users[0].external_ids[0].issuer #=> String
    #   resp.users[0].external_ids[0].id #=> String
    #   resp.users[0].name.formatted #=> String
    #   resp.users[0].name.family_name #=> String
    #   resp.users[0].name.given_name #=> String
    #   resp.users[0].name.middle_name #=> String
    #   resp.users[0].name.honorific_prefix #=> String
    #   resp.users[0].name.honorific_suffix #=> String
    #   resp.users[0].display_name #=> String
    #   resp.users[0].nick_name #=> String
    #   resp.users[0].profile_url #=> String
    #   resp.users[0].emails #=> Array
    #   resp.users[0].emails[0].value #=> String
    #   resp.users[0].emails[0].type #=> String
    #   resp.users[0].emails[0].primary #=> Boolean
    #   resp.users[0].addresses #=> Array
    #   resp.users[0].addresses[0].street_address #=> String
    #   resp.users[0].addresses[0].locality #=> String
    #   resp.users[0].addresses[0].region #=> String
    #   resp.users[0].addresses[0].postal_code #=> String
    #   resp.users[0].addresses[0].country #=> String
    #   resp.users[0].addresses[0].formatted #=> String
    #   resp.users[0].addresses[0].type #=> String
    #   resp.users[0].addresses[0].primary #=> Boolean
    #   resp.users[0].phone_numbers #=> Array
    #   resp.users[0].phone_numbers[0].value #=> String
    #   resp.users[0].phone_numbers[0].type #=> String
    #   resp.users[0].phone_numbers[0].primary #=> Boolean
    #   resp.users[0].user_type #=> String
    #   resp.users[0].title #=> String
    #   resp.users[0].preferred_language #=> String
    #   resp.users[0].locale #=> String
    #   resp.users[0].timezone #=> String
    #   resp.users[0].identity_store_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # For the specified group in the specified identity store, updates the
    # group metadata and attributes.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, String] :group_id
    #   The identifier for a group in the identity store.
    #
    # @option params [required, Array<Types::AttributeOperation>] :operations
    #   A list of `AttributeOperation` objects to apply to the requested
    #   group. These operations might add, replace, or remove an attribute.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     operations: [ # required
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # For the specified user in the specified identity store, updates the
    # user metadata and attributes.
    #
    # @option params [required, String] :identity_store_id
    #   The globally unique identifier for the identity store.
    #
    # @option params [required, String] :user_id
    #   The identifier for a user in the identity store.
    #
    # @option params [required, Array<Types::AttributeOperation>] :operations
    #   A list of `AttributeOperation` objects to apply to the requested user.
    #   These operations might add, replace, or remove an attribute.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #     operations: [ # required
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15/UpdateUser AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-identitystore'
      context[:gem_version] = '1.29.0'
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
