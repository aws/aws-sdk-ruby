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

Aws::Plugins::GlobalConfiguration.add_identifier(:verifiedpermissions)

module Aws::VerifiedPermissions
  # An API client for VerifiedPermissions.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::VerifiedPermissions::Client.new(
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

    @identifier = :verifiedpermissions

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
    add_plugin(Aws::VerifiedPermissions::Plugins::Endpoints)

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
    #   @option options [Aws::VerifiedPermissions::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::VerifiedPermissions::EndpointParameters`
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

    # Creates a reference to an Amazon Cognito user pool as an external
    # identity provider (IdP).
    #
    # After you create an identity source, you can use the identities
    # provided by the IdP as proxies for the principal in authorization
    # queries that use the [IsAuthorizedWithToken][1] operation. These
    # identities take the form of tokens that contain claims about the user,
    # such as IDs, attributes and group memberships. Amazon Cognito provides
    # both identity tokens and access tokens, and Verified Permissions can
    # use either or both. Any combination of identity and access tokens
    # results in the same Cedar principal. Verified Permissions
    # automatically translates the information about the identities into the
    # standard Cedar attributes that can be evaluated by your policies.
    # Because the Amazon Cognito identity and access tokens can contain
    # different information, the tokens you choose to use determine which
    # principal attributes are available to access when evaluating Cedar
    # policies.
    #
    # If you delete a Amazon Cognito user pool or user, tokens from that
    # deleted pool or that deleted user continue to be usable until they
    # expire.
    #
    # <note markdown="1"> To reference a user from this identity source in your Cedar policies,
    # use the following syntax.
    #
    #  *IdentityType::"&lt;CognitoUserPoolIdentifier&gt;\|&lt;CognitoClientId&gt;*
    #
    #  Where `IdentityType` is the string that you provide to the
    # `PrincipalEntityType` parameter for this operation. The
    # `CognitoUserPoolId` and `CognitoClientId` are defined by the Amazon
    # Cognito user pool.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store in which you want to store this
    #   identity source. Only policies and requests made using this policy
    #   store can reference identities from the identity provider configured
    #   in the new identity source.
    #
    # @option params [required, Types::Configuration] :configuration
    #   Specifies the details required to communicate with the identity
    #   provider (IdP) associated with this identity source.
    #
    #   <note markdown="1"> At this time, the only valid member of this structure is a Amazon
    #   Cognito user pool configuration.
    #
    #    You must specify a `UserPoolArn`, and optionally, a `ClientId`.
    #
    #    </note>
    #
    # @option params [String] :principal_entity_type
    #   Specifies the namespace and data type of the principals generated for
    #   identities authenticated by the new identity source.
    #
    # @return [Types::CreateIdentitySourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdentitySourceOutput#created_date #created_date} => Time
    #   * {Types::CreateIdentitySourceOutput#identity_source_id #identity_source_id} => String
    #   * {Types::CreateIdentitySourceOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::CreateIdentitySourceOutput#policy_store_id #policy_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_source({
    #     client_token: "IdempotencyToken",
    #     policy_store_id: "PolicyStoreId", # required
    #     configuration: { # required
    #       cognito_user_pool_configuration: {
    #         user_pool_arn: "UserPoolArn", # required
    #         client_ids: ["ClientId"],
    #       },
    #     },
    #     principal_entity_type: "PrincipalEntityType",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_date #=> Time
    #   resp.identity_source_id #=> String
    #   resp.last_updated_date #=> Time
    #   resp.policy_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreateIdentitySource AWS API Documentation
    #
    # @overload create_identity_source(params = {})
    # @param [Hash] params ({})
    def create_identity_source(params = {}, options = {})
      req = build_request(:create_identity_source, params)
      req.send_request(options)
    end

    # Creates a Cedar policy and saves it in the specified policy store. You
    # can create either a static policy or a policy linked to a policy
    # template.
    #
    # * To create a static policy, provide the Cedar policy text in the
    #   `StaticPolicy` section of the `PolicyDefinition`.
    #
    # * To create a policy that is dynamically linked to a policy template,
    #   specify the policy template ID and the principal and resource to
    #   associate with this policy in the `templateLinked` section of the
    #   `PolicyDefinition`. If the policy template is ever updated, any
    #   policies linked to the policy template automatically use the updated
    #   template.
    #
    # <note markdown="1"> Creating a policy causes it to be validated against the schema in the
    # policy store. If the policy doesn't pass validation, the operation
    # fails and the policy isn't stored.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the `PolicyStoreId` of the policy store you want to store
    #   the policy in.
    #
    # @option params [required, Types::PolicyDefinition] :definition
    #   A structure that specifies the policy type and content to use for the
    #   new policy. You must include either a static or a templateLinked
    #   element. The policy content must be written in the Cedar policy
    #   language.
    #
    # @return [Types::CreatePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyOutput#policy_store_id #policy_store_id} => String
    #   * {Types::CreatePolicyOutput#policy_id #policy_id} => String
    #   * {Types::CreatePolicyOutput#policy_type #policy_type} => String
    #   * {Types::CreatePolicyOutput#principal #principal} => Types::EntityIdentifier
    #   * {Types::CreatePolicyOutput#resource #resource} => Types::EntityIdentifier
    #   * {Types::CreatePolicyOutput#created_date #created_date} => Time
    #   * {Types::CreatePolicyOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy({
    #     client_token: "IdempotencyToken",
    #     policy_store_id: "PolicyStoreId", # required
    #     definition: { # required
    #       static: {
    #         description: "StaticPolicyDescription",
    #         statement: "PolicyStatement", # required
    #       },
    #       template_linked: {
    #         policy_template_id: "PolicyTemplateId", # required
    #         principal: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         resource: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_id #=> String
    #   resp.policy_type #=> String, one of "STATIC", "TEMPLATE_LINKED"
    #   resp.principal.entity_type #=> String
    #   resp.principal.entity_id #=> String
    #   resp.resource.entity_type #=> String
    #   resp.resource.entity_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicy AWS API Documentation
    #
    # @overload create_policy(params = {})
    # @param [Hash] params ({})
    def create_policy(params = {}, options = {})
      req = build_request(:create_policy, params)
      req.send_request(options)
    end

    # Creates a policy store. A policy store is a container for policy
    # resources.
    #
    # <note markdown="1"> Although [Cedar supports multiple namespaces][1], Verified Permissions
    # currently supports only one namespace per policy store.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.cedarpolicy.com/schema.html#namespace
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [required, Types::ValidationSettings] :validation_settings
    #   Specifies the validation setting for this policy store.
    #
    #   Currently, the only valid and required value is `Mode`.
    #
    #   We recommend that you turn on `STRICT` mode only after you define a
    #   schema. If a schema doesn't exist, then `STRICT` mode causes any
    #   policy to fail validation, and Verified Permissions rejects the
    #   policy. You can turn off validation by using the
    #   [UpdatePolicyStore][1]. Then, when you have a schema defined, use
    #   [UpdatePolicyStore][1] again to turn validation back on.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore
    #
    # @return [Types::CreatePolicyStoreOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyStoreOutput#policy_store_id #policy_store_id} => String
    #   * {Types::CreatePolicyStoreOutput#arn #arn} => String
    #   * {Types::CreatePolicyStoreOutput#created_date #created_date} => Time
    #   * {Types::CreatePolicyStoreOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_store({
    #     client_token: "IdempotencyToken",
    #     validation_settings: { # required
    #       mode: "OFF", # required, accepts OFF, STRICT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.arn #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyStore AWS API Documentation
    #
    # @overload create_policy_store(params = {})
    # @param [Hash] params ({})
    def create_policy_store(params = {}, options = {})
      req = build_request(:create_policy_store, params)
      req.send_request(options)
    end

    # Creates a policy template. A template can use placeholders for the
    # principal and resource. A template must be instantiated into a policy
    # by associating it with specific principals and resources to use for
    # the placeholders. That instantiated policy can then be considered in
    # authorization decisions. The instantiated policy works identically to
    # any other policy, except that it is dynamically linked to the
    # template. If the template changes, then any policies that are linked
    # to that template are immediately updated as well.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [required, String] :policy_store_id
    #   The ID of the policy store in which to create the policy template.
    #
    # @option params [String] :description
    #   Specifies a description for the policy template.
    #
    # @option params [required, String] :statement
    #   Specifies the content that you want to use for the new policy
    #   template, written in the Cedar policy language.
    #
    # @return [Types::CreatePolicyTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyTemplateOutput#policy_store_id #policy_store_id} => String
    #   * {Types::CreatePolicyTemplateOutput#policy_template_id #policy_template_id} => String
    #   * {Types::CreatePolicyTemplateOutput#created_date #created_date} => Time
    #   * {Types::CreatePolicyTemplateOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_template({
    #     client_token: "IdempotencyToken",
    #     policy_store_id: "PolicyStoreId", # required
    #     description: "PolicyTemplateDescription",
    #     statement: "PolicyStatement", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_template_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyTemplate AWS API Documentation
    #
    # @overload create_policy_template(params = {})
    # @param [Hash] params ({})
    def create_policy_template(params = {}, options = {})
      req = build_request(:create_policy_template, params)
      req.send_request(options)
    end

    # Deletes an identity source that references an identity provider (IdP)
    # such as Amazon Cognito. After you delete the identity source, you can
    # no longer use tokens for identities from that identity source to
    # represent principals in authorization queries made using
    # [IsAuthorizedWithToken][1]. operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the identity source
    #   that you want to delete.
    #
    # @option params [required, String] :identity_source_id
    #   Specifies the ID of the identity source that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_source({
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_source_id: "IdentitySourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeleteIdentitySource AWS API Documentation
    #
    # @overload delete_identity_source(params = {})
    # @param [Hash] params ({})
    def delete_identity_source(params = {}, options = {})
      req = build_request(:delete_identity_source, params)
      req.send_request(options)
    end

    # Deletes the specified policy from the policy store.
    #
    # This operation is idempotent; if you specify a policy that doesn't
    # exist, the request response returns a successful `HTTP 200` status
    # code.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy that you
    #   want to delete.
    #
    # @option params [required, String] :policy_id
    #   Specifies the ID of the policy that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes the specified policy store.
    #
    # This operation is idempotent. If you specify a policy store that does
    # not exist, the request response will still return a successful HTTP
    # 200 status code.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_store({
    #     policy_store_id: "PolicyStoreId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyStore AWS API Documentation
    #
    # @overload delete_policy_store(params = {})
    # @param [Hash] params ({})
    def delete_policy_store(params = {}, options = {})
      req = build_request(:delete_policy_store, params)
      req.send_request(options)
    end

    # Deletes the specified policy template from the policy store.
    #
    # This operation also deletes any policies that were created from the
    # specified policy template. Those policies are immediately removed from
    # all future API responses, and are asynchronously deleted from the
    # policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy template
    #   that you want to delete.
    #
    # @option params [required, String] :policy_template_id
    #   Specifies the ID of the policy template that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_template({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyTemplate AWS API Documentation
    #
    # @overload delete_policy_template(params = {})
    # @param [Hash] params ({})
    def delete_policy_template(params = {}, options = {})
      req = build_request(:delete_policy_template, params)
      req.send_request(options)
    end

    # Retrieves the details about the specified identity source.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the identity source
    #   you want information about.
    #
    # @option params [required, String] :identity_source_id
    #   Specifies the ID of the identity source you want information about.
    #
    # @return [Types::GetIdentitySourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentitySourceOutput#created_date #created_date} => Time
    #   * {Types::GetIdentitySourceOutput#details #details} => Types::IdentitySourceDetails
    #   * {Types::GetIdentitySourceOutput#identity_source_id #identity_source_id} => String
    #   * {Types::GetIdentitySourceOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::GetIdentitySourceOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetIdentitySourceOutput#principal_entity_type #principal_entity_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_source({
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_source_id: "IdentitySourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_date #=> Time
    #   resp.details.client_ids #=> Array
    #   resp.details.client_ids[0] #=> String
    #   resp.details.user_pool_arn #=> String
    #   resp.details.discovery_url #=> String
    #   resp.details.open_id_issuer #=> String, one of "COGNITO"
    #   resp.identity_source_id #=> String
    #   resp.last_updated_date #=> Time
    #   resp.policy_store_id #=> String
    #   resp.principal_entity_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetIdentitySource AWS API Documentation
    #
    # @overload get_identity_source(params = {})
    # @param [Hash] params ({})
    def get_identity_source(params = {}, options = {})
      req = build_request(:get_identity_source, params)
      req.send_request(options)
    end

    # Retrieves information about the specified policy.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy that you
    #   want information about.
    #
    # @option params [required, String] :policy_id
    #   Specifies the ID of the policy you want information about.
    #
    # @return [Types::GetPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetPolicyOutput#policy_id #policy_id} => String
    #   * {Types::GetPolicyOutput#policy_type #policy_type} => String
    #   * {Types::GetPolicyOutput#principal #principal} => Types::EntityIdentifier
    #   * {Types::GetPolicyOutput#resource #resource} => Types::EntityIdentifier
    #   * {Types::GetPolicyOutput#definition #definition} => Types::PolicyDefinitionDetail
    #   * {Types::GetPolicyOutput#created_date #created_date} => Time
    #   * {Types::GetPolicyOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_id #=> String
    #   resp.policy_type #=> String, one of "STATIC", "TEMPLATE_LINKED"
    #   resp.principal.entity_type #=> String
    #   resp.principal.entity_id #=> String
    #   resp.resource.entity_type #=> String
    #   resp.resource.entity_id #=> String
    #   resp.definition.static.description #=> String
    #   resp.definition.static.statement #=> String
    #   resp.definition.template_linked.policy_template_id #=> String
    #   resp.definition.template_linked.principal.entity_type #=> String
    #   resp.definition.template_linked.principal.entity_id #=> String
    #   resp.definition.template_linked.resource.entity_type #=> String
    #   resp.definition.template_linked.resource.entity_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Retrieves details about a policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that you want information about.
    #
    # @return [Types::GetPolicyStoreOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyStoreOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetPolicyStoreOutput#arn #arn} => String
    #   * {Types::GetPolicyStoreOutput#validation_settings #validation_settings} => Types::ValidationSettings
    #   * {Types::GetPolicyStoreOutput#created_date #created_date} => Time
    #   * {Types::GetPolicyStoreOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_store({
    #     policy_store_id: "PolicyStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.arn #=> String
    #   resp.validation_settings.mode #=> String, one of "OFF", "STRICT"
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyStore AWS API Documentation
    #
    # @overload get_policy_store(params = {})
    # @param [Hash] params ({})
    def get_policy_store(params = {}, options = {})
      req = build_request(:get_policy_store, params)
      req.send_request(options)
    end

    # Retrieve the details for the specified policy template in the
    # specified policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy template
    #   that you want information about.
    #
    # @option params [required, String] :policy_template_id
    #   Specifies the ID of the policy template that you want information
    #   about.
    #
    # @return [Types::GetPolicyTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyTemplateOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetPolicyTemplateOutput#policy_template_id #policy_template_id} => String
    #   * {Types::GetPolicyTemplateOutput#description #description} => String
    #   * {Types::GetPolicyTemplateOutput#statement #statement} => String
    #   * {Types::GetPolicyTemplateOutput#created_date #created_date} => Time
    #   * {Types::GetPolicyTemplateOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_template({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_template_id #=> String
    #   resp.description #=> String
    #   resp.statement #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyTemplate AWS API Documentation
    #
    # @overload get_policy_template(params = {})
    # @param [Hash] params ({})
    def get_policy_template(params = {}, options = {})
      req = build_request(:get_policy_template, params)
      req.send_request(options)
    end

    # Retrieve the details for the specified schema in the specified policy
    # store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the schema.
    #
    # @return [Types::GetSchemaOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetSchemaOutput#schema #schema} => String
    #   * {Types::GetSchemaOutput#created_date #created_date} => Time
    #   * {Types::GetSchemaOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema({
    #     policy_store_id: "PolicyStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.schema #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetSchema AWS API Documentation
    #
    # @overload get_schema(params = {})
    # @param [Hash] params ({})
    def get_schema(params = {}, options = {})
      req = build_request(:get_schema, params)
      req.send_request(options)
    end

    # Makes an authorization decision about a service request described in
    # the parameters. The information in the parameters can also define
    # additional context that Verified Permissions can include in the
    # evaluation. The request is evaluated against all matching policies in
    # the specified policy store. The result of the decision is either
    # `Allow` or `Deny`, along with a list of the policies that resulted in
    # the decision.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store. Policies in this policy store
    #   will be used to make an authorization decision for the input.
    #
    # @option params [Types::EntityIdentifier] :principal
    #   Specifies the principal for which the authorization decision is to be
    #   made.
    #
    # @option params [Types::ActionIdentifier] :action
    #   Specifies the requested action to be authorized. For example, is the
    #   principal authorized to perform this action on the resource?
    #
    # @option params [Types::EntityIdentifier] :resource
    #   Specifies the resource for which the authorization decision is to be
    #   made.
    #
    # @option params [Types::ContextDefinition] :context
    #   Specifies additional context that can be used to make more granular
    #   authorization decisions.
    #
    # @option params [Types::EntitiesDefinition] :entities
    #   Specifies the list of resources and principals and their associated
    #   attributes that Verified Permissions can examine when evaluating the
    #   policies.
    #
    #   <note markdown="1"> You can include only principal and resource entities in this
    #   parameter; you can't include actions. You must specify actions in the
    #   schema.
    #
    #    </note>
    #
    # @return [Types::IsAuthorizedOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IsAuthorizedOutput#decision #decision} => String
    #   * {Types::IsAuthorizedOutput#determining_policies #determining_policies} => Array&lt;Types::DeterminingPolicyItem&gt;
    #   * {Types::IsAuthorizedOutput#errors #errors} => Array&lt;Types::EvaluationErrorItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.is_authorized({
    #     policy_store_id: "PolicyStoreId", # required
    #     principal: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     action: {
    #       action_type: "ActionType", # required
    #       action_id: "ActionId", # required
    #     },
    #     resource: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     context: {
    #       context_map: {
    #         "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #     },
    #     entities: {
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.decision #=> String, one of "ALLOW", "DENY"
    #   resp.determining_policies #=> Array
    #   resp.determining_policies[0].policy_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IsAuthorized AWS API Documentation
    #
    # @overload is_authorized(params = {})
    # @param [Hash] params ({})
    def is_authorized(params = {}, options = {})
      req = build_request(:is_authorized, params)
      req.send_request(options)
    end

    # Makes an authorization decision about a service request described in
    # the parameters. The principal in this request comes from an external
    # identity source. The information in the parameters can also define
    # additional context that Verified Permissions can include in the
    # evaluation. The request is evaluated against all matching policies in
    # the specified policy store. The result of the decision is either
    # `Allow` or `Deny`, along with a list of the policies that resulted in
    # the decision.
    #
    # If you delete a Amazon Cognito user pool or user, tokens from that
    # deleted pool or that deleted user continue to be usable until they
    # expire.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store. Policies in this policy store
    #   will be used to make an authorization decision for the input.
    #
    # @option params [String] :identity_token
    #   Specifies an identity token for the principal to be authorized. This
    #   token is provided to you by the identity provider (IdP) associated
    #   with the specified identity source. You must specify either an
    #   `AccessToken` or an `IdentityToken`, but not both.
    #
    # @option params [String] :access_token
    #   Specifies an access token for the principal to be authorized. This
    #   token is provided to you by the identity provider (IdP) associated
    #   with the specified identity source. You must specify either an
    #   `AccessToken` or an `IdentityToken`, but not both.
    #
    # @option params [Types::ActionIdentifier] :action
    #   Specifies the requested action to be authorized. Is the specified
    #   principal authorized to perform this action on the specified resource.
    #
    # @option params [Types::EntityIdentifier] :resource
    #   Specifies the resource for which the authorization decision is made.
    #   For example, is the principal allowed to perform the action on the
    #   resource?
    #
    # @option params [Types::ContextDefinition] :context
    #   Specifies additional context that can be used to make more granular
    #   authorization decisions.
    #
    # @option params [Types::EntitiesDefinition] :entities
    #   Specifies the list of resources and principals and their associated
    #   attributes that Verified Permissions can examine when evaluating the
    #   policies.
    #
    #   <note markdown="1"> You can include only principal and resource entities in this
    #   parameter; you can't include actions. You must specify actions in the
    #   schema.
    #
    #    </note>
    #
    # @return [Types::IsAuthorizedWithTokenOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IsAuthorizedWithTokenOutput#decision #decision} => String
    #   * {Types::IsAuthorizedWithTokenOutput#determining_policies #determining_policies} => Array&lt;Types::DeterminingPolicyItem&gt;
    #   * {Types::IsAuthorizedWithTokenOutput#errors #errors} => Array&lt;Types::EvaluationErrorItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.is_authorized_with_token({
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_token: "Token",
    #     access_token: "Token",
    #     action: {
    #       action_type: "ActionType", # required
    #       action_id: "ActionId", # required
    #     },
    #     resource: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     context: {
    #       context_map: {
    #         "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #     },
    #     entities: {
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.decision #=> String, one of "ALLOW", "DENY"
    #   resp.determining_policies #=> Array
    #   resp.determining_policies[0].policy_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IsAuthorizedWithToken AWS API Documentation
    #
    # @overload is_authorized_with_token(params = {})
    # @param [Hash] params ({})
    def is_authorized_with_token(params = {}, options = {})
      req = build_request(:is_authorized_with_token, params)
      req.send_request(options)
    end

    # Returns a paginated list of all of the identity sources defined in the
    # specified policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the identity
    #   sources that you want to list.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every operation
    #   to ensure that you receive all of the results.
    #
    # @option params [Array<Types::IdentitySourceFilter>] :filters
    #   Specifies characteristics of an identity source that you can use to
    #   limit the output to matching identity sources.
    #
    # @return [Types::ListIdentitySourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentitySourcesOutput#next_token #next_token} => String
    #   * {Types::ListIdentitySourcesOutput#identity_sources #identity_sources} => Array&lt;Types::IdentitySourceItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_sources({
    #     policy_store_id: "PolicyStoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         principal_entity_type: "PrincipalEntityType",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.identity_sources #=> Array
    #   resp.identity_sources[0].created_date #=> Time
    #   resp.identity_sources[0].details.client_ids #=> Array
    #   resp.identity_sources[0].details.client_ids[0] #=> String
    #   resp.identity_sources[0].details.user_pool_arn #=> String
    #   resp.identity_sources[0].details.discovery_url #=> String
    #   resp.identity_sources[0].details.open_id_issuer #=> String, one of "COGNITO"
    #   resp.identity_sources[0].identity_source_id #=> String
    #   resp.identity_sources[0].last_updated_date #=> Time
    #   resp.identity_sources[0].policy_store_id #=> String
    #   resp.identity_sources[0].principal_entity_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListIdentitySources AWS API Documentation
    #
    # @overload list_identity_sources(params = {})
    # @param [Hash] params ({})
    def list_identity_sources(params = {}, options = {})
      req = build_request(:list_identity_sources, params)
      req.send_request(options)
    end

    # Returns a paginated list of all policies stored in the specified
    # policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store you want to list policies from.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every operation
    #   to ensure that you receive all of the results.
    #
    # @option params [Types::PolicyFilter] :filter
    #   Specifies a filter that limits the response to only policies that
    #   match the specified criteria. For example, you list only the policies
    #   that reference a specified principal.
    #
    # @return [Types::ListPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesOutput#next_token #next_token} => String
    #   * {Types::ListPoliciesOutput#policies #policies} => Array&lt;Types::PolicyItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     policy_store_id: "PolicyStoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: {
    #       principal: {
    #         unspecified: false,
    #         identifier: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #       },
    #       resource: {
    #         unspecified: false,
    #         identifier: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #       },
    #       policy_type: "STATIC", # accepts STATIC, TEMPLATE_LINKED
    #       policy_template_id: "PolicyTemplateId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policies #=> Array
    #   resp.policies[0].policy_store_id #=> String
    #   resp.policies[0].policy_id #=> String
    #   resp.policies[0].policy_type #=> String, one of "STATIC", "TEMPLATE_LINKED"
    #   resp.policies[0].principal.entity_type #=> String
    #   resp.policies[0].principal.entity_id #=> String
    #   resp.policies[0].resource.entity_type #=> String
    #   resp.policies[0].resource.entity_id #=> String
    #   resp.policies[0].definition.static.description #=> String
    #   resp.policies[0].definition.template_linked.policy_template_id #=> String
    #   resp.policies[0].definition.template_linked.principal.entity_type #=> String
    #   resp.policies[0].definition.template_linked.principal.entity_id #=> String
    #   resp.policies[0].definition.template_linked.resource.entity_type #=> String
    #   resp.policies[0].definition.template_linked.resource.entity_id #=> String
    #   resp.policies[0].created_date #=> Time
    #   resp.policies[0].last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicies AWS API Documentation
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Returns a paginated list of all policy stores in the calling Amazon
    # Web Services account.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every operation
    #   to ensure that you receive all of the results.
    #
    # @return [Types::ListPolicyStoresOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyStoresOutput#next_token #next_token} => String
    #   * {Types::ListPolicyStoresOutput#policy_stores #policy_stores} => Array&lt;Types::PolicyStoreItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_stores({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policy_stores #=> Array
    #   resp.policy_stores[0].policy_store_id #=> String
    #   resp.policy_stores[0].arn #=> String
    #   resp.policy_stores[0].created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicyStores AWS API Documentation
    #
    # @overload list_policy_stores(params = {})
    # @param [Hash] params ({})
    def list_policy_stores(params = {}, options = {})
      req = build_request(:list_policy_stores, params)
      req.send_request(options)
    end

    # Returns a paginated list of all policy templates in the specified
    # policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy
    #   templates you want to list.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every operation
    #   to ensure that you receive all of the results.
    #
    # @return [Types::ListPolicyTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListPolicyTemplatesOutput#policy_templates #policy_templates} => Array&lt;Types::PolicyTemplateItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_templates({
    #     policy_store_id: "PolicyStoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policy_templates #=> Array
    #   resp.policy_templates[0].policy_store_id #=> String
    #   resp.policy_templates[0].policy_template_id #=> String
    #   resp.policy_templates[0].description #=> String
    #   resp.policy_templates[0].created_date #=> Time
    #   resp.policy_templates[0].last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicyTemplates AWS API Documentation
    #
    # @overload list_policy_templates(params = {})
    # @param [Hash] params ({})
    def list_policy_templates(params = {}, options = {})
      req = build_request(:list_policy_templates, params)
      req.send_request(options)
    end

    # Creates or updates the policy schema in the specified policy store.
    # The schema is used to validate any Cedar policies and policy templates
    # submitted to the policy store. Any changes to the schema validate only
    # policies and templates submitted after the schema change. Existing
    # policies and templates are not re-evaluated against the changed
    # schema. If you later update a policy, then it is evaluated against the
    # new schema at that time.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store in which to place the schema.
    #
    # @option params [required, Types::SchemaDefinition] :definition
    #   Specifies the definition of the schema to be stored. The schema
    #   definition must be written in Cedar schema JSON.
    #
    # @return [Types::PutSchemaOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSchemaOutput#policy_store_id #policy_store_id} => String
    #   * {Types::PutSchemaOutput#namespaces #namespaces} => Array&lt;String&gt;
    #   * {Types::PutSchemaOutput#created_date #created_date} => Time
    #   * {Types::PutSchemaOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_schema({
    #     policy_store_id: "PolicyStoreId", # required
    #     definition: { # required
    #       cedar_json: "SchemaJson",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.namespaces #=> Array
    #   resp.namespaces[0] #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PutSchema AWS API Documentation
    #
    # @overload put_schema(params = {})
    # @param [Hash] params ({})
    def put_schema(params = {}, options = {})
      req = build_request(:put_schema, params)
      req.send_request(options)
    end

    # Updates the specified identity source to use a new identity provider
    # (IdP) source, or to change the mapping of identities from the IdP to a
    # different principal entity type.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the identity source
    #   that you want to update.
    #
    # @option params [required, String] :identity_source_id
    #   Specifies the ID of the identity source that you want to update.
    #
    # @option params [required, Types::UpdateConfiguration] :update_configuration
    #   Specifies the details required to communicate with the identity
    #   provider (IdP) associated with this identity source.
    #
    #   <note markdown="1"> At this time, the only valid member of this structure is a Amazon
    #   Cognito user pool configuration.
    #
    #    You must specify a `userPoolArn`, and optionally, a `ClientId`.
    #
    #    </note>
    #
    # @option params [String] :principal_entity_type
    #   Specifies the data type of principals generated for identities
    #   authenticated by the identity source.
    #
    # @return [Types::UpdateIdentitySourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdentitySourceOutput#created_date #created_date} => Time
    #   * {Types::UpdateIdentitySourceOutput#identity_source_id #identity_source_id} => String
    #   * {Types::UpdateIdentitySourceOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::UpdateIdentitySourceOutput#policy_store_id #policy_store_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_source({
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_source_id: "IdentitySourceId", # required
    #     update_configuration: { # required
    #       cognito_user_pool_configuration: {
    #         user_pool_arn: "UserPoolArn", # required
    #         client_ids: ["ClientId"],
    #       },
    #     },
    #     principal_entity_type: "PrincipalEntityType",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_date #=> Time
    #   resp.identity_source_id #=> String
    #   resp.last_updated_date #=> Time
    #   resp.policy_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdateIdentitySource AWS API Documentation
    #
    # @overload update_identity_source(params = {})
    # @param [Hash] params ({})
    def update_identity_source(params = {}, options = {})
      req = build_request(:update_identity_source, params)
      req.send_request(options)
    end

    # Modifies a Cedar static policy in the specified policy store. You can
    # change only certain elements of the [UpdatePolicyDefinition][1]
    # parameter. You can directly update only static policies. To change a
    # template-linked policy, you must update the template instead, using
    # [UpdatePolicyTemplate][2].
    #
    # <note markdown="1"> If policy validation is enabled in the policy store, then updating a
    # static policy causes Verified Permissions to validate the policy
    # against the schema in the policy store. If the updated static policy
    # doesn't pass validation, the operation fails and the update isn't
    # stored.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyInput.html#amazonverifiedpermissions-UpdatePolicy-request-UpdatePolicyDefinition
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy that you
    #   want to update.
    #
    # @option params [required, String] :policy_id
    #   Specifies the ID of the policy that you want to update. To find this
    #   value, you can use [ListPolicies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html
    #
    # @option params [required, Types::UpdatePolicyDefinition] :definition
    #   Specifies the updated policy content that you want to replace on the
    #   specified policy. The content must be valid Cedar policy language
    #   text.
    #
    #   You can change only the following elements from the policy definition:
    #
    #   * The `action` referenced by the policy.
    #
    #   * Any conditional clauses, such as `when` or `unless` clauses.
    #
    #   You **can't** change the following elements:
    #
    #   * Changing from `static` to `templateLinked`.
    #
    #   * Changing the effect of the policy from `permit` or `forbid`.
    #
    #   * The `principal` referenced by the policy.
    #
    #   * The `resource` referenced by the policy.
    #
    # @return [Types::UpdatePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyOutput#policy_store_id #policy_store_id} => String
    #   * {Types::UpdatePolicyOutput#policy_id #policy_id} => String
    #   * {Types::UpdatePolicyOutput#policy_type #policy_type} => String
    #   * {Types::UpdatePolicyOutput#principal #principal} => Types::EntityIdentifier
    #   * {Types::UpdatePolicyOutput#resource #resource} => Types::EntityIdentifier
    #   * {Types::UpdatePolicyOutput#created_date #created_date} => Time
    #   * {Types::UpdatePolicyOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #     definition: { # required
    #       static: {
    #         description: "StaticPolicyDescription",
    #         statement: "PolicyStatement", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_id #=> String
    #   resp.policy_type #=> String, one of "STATIC", "TEMPLATE_LINKED"
    #   resp.principal.entity_type #=> String
    #   resp.principal.entity_id #=> String
    #   resp.resource.entity_type #=> String
    #   resp.resource.entity_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicy AWS API Documentation
    #
    # @overload update_policy(params = {})
    # @param [Hash] params ({})
    def update_policy(params = {}, options = {})
      req = build_request(:update_policy, params)
      req.send_request(options)
    end

    # Modifies the validation setting for a policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that you want to update
    #
    # @option params [required, Types::ValidationSettings] :validation_settings
    #   A structure that defines the validation settings that want to enable
    #   for the policy store.
    #
    # @return [Types::UpdatePolicyStoreOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyStoreOutput#policy_store_id #policy_store_id} => String
    #   * {Types::UpdatePolicyStoreOutput#arn #arn} => String
    #   * {Types::UpdatePolicyStoreOutput#created_date #created_date} => Time
    #   * {Types::UpdatePolicyStoreOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy_store({
    #     policy_store_id: "PolicyStoreId", # required
    #     validation_settings: { # required
    #       mode: "OFF", # required, accepts OFF, STRICT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.arn #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyStore AWS API Documentation
    #
    # @overload update_policy_store(params = {})
    # @param [Hash] params ({})
    def update_policy_store(params = {}, options = {})
      req = build_request(:update_policy_store, params)
      req.send_request(options)
    end

    # Updates the specified policy template. You can update only the
    # description and the some elements of the [policyBody][1].
    #
    # Changes you make to the policy template content are immediately
    # reflected in authorization decisions that involve all template-linked
    # policies instantiated from this template.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html#amazonverifiedpermissions-UpdatePolicyTemplate-request-policyBody
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy template
    #   that you want to update.
    #
    # @option params [required, String] :policy_template_id
    #   Specifies the ID of the policy template that you want to update.
    #
    # @option params [String] :description
    #   Specifies a new description to apply to the policy template.
    #
    # @option params [required, String] :statement
    #   Specifies new statement content written in Cedar policy language to
    #   replace the current body of the policy template.
    #
    #   You can change only the following elements of the policy body:
    #
    #   * The `action` referenced by the policy template.
    #
    #   * Any conditional clauses, such as `when` or `unless` clauses.
    #
    #   You **can't** change the following elements:
    #
    #   * The effect (`permit` or `forbid`) of the policy template.
    #
    #   * The `principal` referenced by the policy template.
    #
    #   * The `resource` referenced by the policy template.
    #
    # @return [Types::UpdatePolicyTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyTemplateOutput#policy_store_id #policy_store_id} => String
    #   * {Types::UpdatePolicyTemplateOutput#policy_template_id #policy_template_id} => String
    #   * {Types::UpdatePolicyTemplateOutput#created_date #created_date} => Time
    #   * {Types::UpdatePolicyTemplateOutput#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy_template({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #     description: "PolicyTemplateDescription",
    #     statement: "PolicyStatement", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_template_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyTemplate AWS API Documentation
    #
    # @overload update_policy_template(params = {})
    # @param [Hash] params ({})
    def update_policy_template(params = {}, options = {})
      req = build_request(:update_policy_template, params)
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
      context[:gem_name] = 'aws-sdk-verifiedpermissions'
      context[:gem_version] = '1.7.0'
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
