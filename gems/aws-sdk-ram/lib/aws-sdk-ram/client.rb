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

Aws::Plugins::GlobalConfiguration.add_identifier(:ram)

module Aws::RAM
  # An API client for RAM.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RAM::Client.new(
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

    @identifier = :ram

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
    add_plugin(Aws::RAM::Plugins::Endpoints)

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
    #   @option options [Aws::RAM::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::RAM::EndpointParameters`
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

    # Accepts an invitation to a resource share from another Amazon Web
    # Services account. After you accept the invitation, the resources
    # included in the resource share are available to interact with in the
    # relevant Amazon Web Services Management Consoles and tools.
    #
    # @option params [required, String] :resource_share_invitation_arn
    #   The [Amazon Resource Name (ARN)][1] of the invitation that you want to
    #   accept.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::AcceptResourceShareInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptResourceShareInvitationResponse#resource_share_invitation #resource_share_invitation} => Types::ResourceShareInvitation
    #   * {Types::AcceptResourceShareInvitationResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_resource_share_invitation({
    #     resource_share_invitation_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_invitation.resource_share_invitation_arn #=> String
    #   resp.resource_share_invitation.resource_share_name #=> String
    #   resp.resource_share_invitation.resource_share_arn #=> String
    #   resp.resource_share_invitation.sender_account_id #=> String
    #   resp.resource_share_invitation.receiver_account_id #=> String
    #   resp.resource_share_invitation.invitation_timestamp #=> Time
    #   resp.resource_share_invitation.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "EXPIRED"
    #   resp.resource_share_invitation.resource_share_associations #=> Array
    #   resp.resource_share_invitation.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_invitation.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_invitation.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_invitation.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_invitation.resource_share_associations[0].external #=> Boolean
    #   resp.resource_share_invitation.receiver_arn #=> String
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AcceptResourceShareInvitation AWS API Documentation
    #
    # @overload accept_resource_share_invitation(params = {})
    # @param [Hash] params ({})
    def accept_resource_share_invitation(params = {}, options = {})
      req = build_request(:accept_resource_share_invitation, params)
      req.send_request(options)
    end

    # Adds the specified list of principals and list of resources to a
    # resource share. Principals that already have access to this resource
    # share immediately receive access to the added resources. Newly added
    # principals immediately receive access to the resources shared in this
    # resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   that you want to add principals or resources to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :resource_arns
    #   Specifies a list of [Amazon Resource Names (ARNs)][1] of the resources
    #   that you want to share. This can be `null` if you want to add only
    #   principals.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :principals
    #   Specifies a list of principals to whom you want to the resource share.
    #   This can be `null` if you want to add only resources.
    #
    #   What the principals can do with the resources in the share is
    #   determined by the RAM permissions that you associate with the resource
    #   share. See AssociateResourceSharePermission.
    #
    #   You can include the following values:
    #
    #   * An Amazon Web Services account ID, for example: `123456789012`
    #
    #   * An [Amazon Resource Name (ARN)][1] of an organization in
    #     Organizations, for example:
    #     `organizations::123456789012:organization/o-exampleorgid`
    #
    #   * An ARN of an organizational unit (OU) in Organizations, for example:
    #     `organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123`
    #
    #   * An ARN of an IAM role, for example:
    #     `iam::123456789012:role/rolename`
    #
    #   * An ARN of an IAM user, for example: `iam::123456789012user/username`
    #
    #   <note markdown="1"> Not all resource types can be shared with IAM roles and users. For
    #   more information, see [Sharing with IAM roles and users][2] in the
    #   *Resource Access Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::AssociateResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResourceShareResponse#resource_share_associations #resource_share_associations} => Array&lt;Types::ResourceShareAssociation&gt;
    #   * {Types::AssociateResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resource_share({
    #     resource_share_arn: "String", # required
    #     resource_arns: ["String"],
    #     principals: ["String"],
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_associations #=> Array
    #   resp.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_associations[0].external #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceShare AWS API Documentation
    #
    # @overload associate_resource_share(params = {})
    # @param [Hash] params ({})
    def associate_resource_share(params = {}, options = {})
      req = build_request(:associate_resource_share, params)
      req.send_request(options)
    end

    # Adds or replaces the RAM permission for a resource type included in a
    # resource share. You can have exactly one permission associated with
    # each resource type in the resource share. You can add a new RAM
    # permission only if there are currently no resources of that resource
    # type currently in the resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share to
    #   which you want to add or replace permissions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the RAM permission to
    #   associate with the resource share. To find the ARN for a permission,
    #   use either the ListPermissions operation or go to the [Permissions
    #   library][2] page in the RAM console and then choose the name of the
    #   permission. The ARN is displayed on the detail page.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://console.aws.amazon.com/ram/home#Permissions:
    #
    # @option params [Boolean] :replace
    #   Specifies whether the specified permission should replace the existing
    #   permission associated with the resource share. Use `true` to replace
    #   the current permissions. Use `false` to add the permission to a
    #   resource share that currently doesn't have a permission. The default
    #   value is `false`.
    #
    #   <note markdown="1"> A resource share can have only one permission per resource type. If a
    #   resource share already has a permission for the specified resource
    #   type and you don't set `replace` to `true` then the operation returns
    #   an error. This helps prevent accidental overwriting of a permission.
    #
    #    </note>
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Integer] :permission_version
    #   Specifies the version of the RAM permission to associate with the
    #   resource share. You can specify *only* the version that is currently
    #   set as the default version for the permission. If you also set the
    #   `replace` pararameter to `true`, then this operation updates an
    #   outdated version of the permission to the current default version.
    #
    #   <note markdown="1"> You don't need to specify this parameter because the default behavior
    #   is to use the version that is currently set as the default version for
    #   the permission. This parameter is supported for backwards
    #   compatibility.
    #
    #    </note>
    #
    # @return [Types::AssociateResourceSharePermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResourceSharePermissionResponse#return_value #return_value} => Boolean
    #   * {Types::AssociateResourceSharePermissionResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resource_share_permission({
    #     resource_share_arn: "String", # required
    #     permission_arn: "String", # required
    #     replace: false,
    #     client_token: "String",
    #     permission_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceSharePermission AWS API Documentation
    #
    # @overload associate_resource_share_permission(params = {})
    # @param [Hash] params ({})
    def associate_resource_share_permission(params = {}, options = {})
      req = build_request(:associate_resource_share_permission, params)
      req.send_request(options)
    end

    # Creates a customer managed permission for a specified resource type
    # that you can attach to resource shares. It is created in the Amazon
    # Web Services Region in which you call the operation.
    #
    # @option params [required, String] :name
    #   Specifies the name of the customer managed permission. The name must
    #   be unique within the Amazon Web Services Region.
    #
    # @option params [required, String] :resource_type
    #   Specifies the name of the resource type that this customer managed
    #   permission applies to.
    #
    #   The format is ` <service-code>:<resource-type> ` and is not case
    #   sensitive. For example, to specify an Amazon EC2 Subnet, you can use
    #   the string `ec2:subnet`. To see the list of valid values for this
    #   parameter, query the ListResourceTypes operation.
    #
    # @option params [required, String] :policy_template
    #   A string in JSON format string that contains the following elements of
    #   a resource-based policy:
    #
    #   * **Effect**: must be set to `ALLOW`.
    #
    #   * **Action**: specifies the actions that are allowed by this customer
    #     managed permission. The list must contain only actions that are
    #     supported by the specified resource type. For a list of all actions
    #     supported by each resource type, see [Actions, resources, and
    #     condition keys for Amazon Web Services services][1] in the *Identity
    #     and Access Management User Guide*.
    #
    #   * **Condition**: (optional) specifies conditional parameters that must
    #     evaluate to true when a user attempts an action for that action to
    #     be allowed. For more information about the Condition element, see
    #     [IAM policies: Condition element][2] in the *Identity and Access
    #     Management User Guide*.
    #
    #   This template can't include either the `Resource` or `Principal`
    #   elements. Those are both filled in by RAM when it instantiates the
    #   resource-based policy on each resource shared using this managed
    #   permission. The `Resource` comes from the ARN of the specific resource
    #   that you are sharing. The `Principal` comes from the list of
    #   identities added to the resource share.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Array<Types::Tag>] :tags
    #   Specifies a list of one or more tag key and value pairs to attach to
    #   the permission.
    #
    # @return [Types::CreatePermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePermissionResponse#permission #permission} => Types::ResourceSharePermissionSummary
    #   * {Types::CreatePermissionResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission({
    #     name: "PermissionName", # required
    #     resource_type: "String", # required
    #     policy_template: "Policy", # required
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.permission.arn #=> String
    #   resp.permission.version #=> String
    #   resp.permission.default_version #=> Boolean
    #   resp.permission.name #=> String
    #   resp.permission.resource_type #=> String
    #   resp.permission.status #=> String
    #   resp.permission.creation_time #=> Time
    #   resp.permission.last_updated_time #=> Time
    #   resp.permission.is_resource_type_default #=> Boolean
    #   resp.permission.permission_type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.permission.feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.permission.tags #=> Array
    #   resp.permission.tags[0].key #=> String
    #   resp.permission.tags[0].value #=> String
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreatePermission AWS API Documentation
    #
    # @overload create_permission(params = {})
    # @param [Hash] params ({})
    def create_permission(params = {}, options = {})
      req = build_request(:create_permission, params)
      req.send_request(options)
    end

    # Creates a new version of the specified customer managed permission.
    # The new version is automatically set as the default version of the
    # customer managed permission. New resource shares automatically use the
    # default permission. Existing resource shares continue to use their
    # original permission versions, but you can use
    # ReplacePermissionAssociations to update them.
    #
    # If the specified customer managed permission already has the maximum
    # of 5 versions, then you must delete one of the existing versions
    # before you can create a new one.
    #
    # @option params [required, String] :permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the customer managed
    #   permission you're creating a new version for.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :policy_template
    #   A string in JSON format string that contains the following elements of
    #   a resource-based policy:
    #
    #   * **Effect**: must be set to `ALLOW`.
    #
    #   * **Action**: specifies the actions that are allowed by this customer
    #     managed permission. The list must contain only actions that are
    #     supported by the specified resource type. For a list of all actions
    #     supported by each resource type, see [Actions, resources, and
    #     condition keys for Amazon Web Services services][1] in the *Identity
    #     and Access Management User Guide*.
    #
    #   * **Condition**: (optional) specifies conditional parameters that must
    #     evaluate to true when a user attempts an action for that action to
    #     be allowed. For more information about the Condition element, see
    #     [IAM policies: Condition element][2] in the *Identity and Access
    #     Management User Guide*.
    #
    #   This template can't include either the `Resource` or `Principal`
    #   elements. Those are both filled in by RAM when it instantiates the
    #   resource-based policy on each resource shared using this managed
    #   permission. The `Resource` comes from the ARN of the specific resource
    #   that you are sharing. The `Principal` comes from the list of
    #   identities added to the resource share.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::CreatePermissionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePermissionVersionResponse#permission #permission} => Types::ResourceSharePermissionDetail
    #   * {Types::CreatePermissionVersionResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission_version({
    #     permission_arn: "String", # required
    #     policy_template: "Policy", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.permission.arn #=> String
    #   resp.permission.version #=> String
    #   resp.permission.default_version #=> Boolean
    #   resp.permission.name #=> String
    #   resp.permission.resource_type #=> String
    #   resp.permission.permission #=> String
    #   resp.permission.creation_time #=> Time
    #   resp.permission.last_updated_time #=> Time
    #   resp.permission.is_resource_type_default #=> Boolean
    #   resp.permission.permission_type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.permission.feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.permission.status #=> String, one of "ATTACHABLE", "UNATTACHABLE", "DELETING", "DELETED"
    #   resp.permission.tags #=> Array
    #   resp.permission.tags[0].key #=> String
    #   resp.permission.tags[0].value #=> String
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreatePermissionVersion AWS API Documentation
    #
    # @overload create_permission_version(params = {})
    # @param [Hash] params ({})
    def create_permission_version(params = {}, options = {})
      req = build_request(:create_permission_version, params)
      req.send_request(options)
    end

    # Creates a resource share. You can provide a list of the [Amazon
    # Resource Names (ARNs)][1] for the resources that you want to share, a
    # list of principals you want to share the resources with, and the
    # permissions to grant those principals.
    #
    # <note markdown="1"> Sharing a resource makes it available for use by principals outside of
    # the Amazon Web Services account that created the resource. Sharing
    # doesn't change any permissions or quotas that apply to the resource
    # in the account that created it.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :name
    #   Specifies the name of the resource share.
    #
    # @option params [Array<String>] :resource_arns
    #   Specifies a list of one or more ARNs of the resources to associate
    #   with the resource share.
    #
    # @option params [Array<String>] :principals
    #   Specifies a list of one or more principals to associate with the
    #   resource share.
    #
    #   You can include the following values:
    #
    #   * An Amazon Web Services account ID, for example: `123456789012`
    #
    #   * An [Amazon Resource Name (ARN)][1] of an organization in
    #     Organizations, for example:
    #     `organizations::123456789012:organization/o-exampleorgid`
    #
    #   * An ARN of an organizational unit (OU) in Organizations, for example:
    #     `organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123`
    #
    #   * An ARN of an IAM role, for example:
    #     `iam::123456789012:role/rolename`
    #
    #   * An ARN of an IAM user, for example: `iam::123456789012user/username`
    #
    #   <note markdown="1"> Not all resource types can be shared with IAM roles and users. For
    #   more information, see [Sharing with IAM roles and users][2] in the
    #   *Resource Access Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types
    #
    # @option params [Array<Types::Tag>] :tags
    #   Specifies one or more tags to attach to the resource share itself. It
    #   doesn't attach the tags to the resources associated with the resource
    #   share.
    #
    # @option params [Boolean] :allow_external_principals
    #   Specifies whether principals outside your organization in
    #   Organizations can be associated with a resource share. A value of
    #   `true` lets you share with individual Amazon Web Services accounts
    #   that are *not* in your organization. A value of `false` only has
    #   meaning if your account is a member of an Amazon Web Services
    #   Organization. The default value is `true`.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Array<String>] :permission_arns
    #   Specifies the [Amazon Resource Names (ARNs)][1] of the RAM permission
    #   to associate with the resource share. If you do not specify an ARN for
    #   the permission, RAM automatically attaches the default version of the
    #   permission for each resource type. You can associate only one
    #   permission with each resource type included in the resource share.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::CreateResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceShareResponse#resource_share #resource_share} => Types::ResourceShare
    #   * {Types::CreateResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_share({
    #     name: "String", # required
    #     resource_arns: ["String"],
    #     principals: ["String"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     allow_external_principals: false,
    #     client_token: "String",
    #     permission_arns: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share.resource_share_arn #=> String
    #   resp.resource_share.name #=> String
    #   resp.resource_share.owning_account_id #=> String
    #   resp.resource_share.allow_external_principals #=> Boolean
    #   resp.resource_share.status #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"
    #   resp.resource_share.status_message #=> String
    #   resp.resource_share.tags #=> Array
    #   resp.resource_share.tags[0].key #=> String
    #   resp.resource_share.tags[0].value #=> String
    #   resp.resource_share.creation_time #=> Time
    #   resp.resource_share.last_updated_time #=> Time
    #   resp.resource_share.feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreateResourceShare AWS API Documentation
    #
    # @overload create_resource_share(params = {})
    # @param [Hash] params ({})
    def create_resource_share(params = {}, options = {})
      req = build_request(:create_resource_share, params)
      req.send_request(options)
    end

    # Deletes the specified customer managed permission in the Amazon Web
    # Services Region in which you call this operation. You can delete a
    # customer managed permission only if it isn't attached to any resource
    # share. The operation deletes all versions associated with the customer
    # managed permission.
    #
    # @option params [required, String] :permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the customer managed
    #   permission that you want to delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::DeletePermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePermissionResponse#return_value #return_value} => Boolean
    #   * {Types::DeletePermissionResponse#client_token #client_token} => String
    #   * {Types::DeletePermissionResponse#permission_status #permission_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission({
    #     permission_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #   resp.client_token #=> String
    #   resp.permission_status #=> String, one of "ATTACHABLE", "UNATTACHABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeletePermission AWS API Documentation
    #
    # @overload delete_permission(params = {})
    # @param [Hash] params ({})
    def delete_permission(params = {}, options = {})
      req = build_request(:delete_permission, params)
      req.send_request(options)
    end

    # Deletes one version of a customer managed permission. The version you
    # specify must not be attached to any resource share and must not be the
    # default version for the permission.
    #
    # If a customer managed permission has the maximum of 5 versions, then
    # you must delete at least one version before you can create another.
    #
    # @option params [required, String] :permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the permission with
    #   the version you want to delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Integer] :permission_version
    #   Specifies the version number to delete.
    #
    #   You can't delete the default version for a customer managed
    #   permission.
    #
    #   You can't delete a version if it's the only version of the
    #   permission. You must either first create another version, or delete
    #   the permission completely.
    #
    #   You can't delete a version if it is attached to any resource shares.
    #   If the version is the default, you must first use
    #   SetDefaultPermissionVersion to set a different version as the default
    #   for the customer managed permission, and then use
    #   AssociateResourceSharePermission to update your resource shares to use
    #   the new default version.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::DeletePermissionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePermissionVersionResponse#return_value #return_value} => Boolean
    #   * {Types::DeletePermissionVersionResponse#client_token #client_token} => String
    #   * {Types::DeletePermissionVersionResponse#permission_status #permission_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission_version({
    #     permission_arn: "String", # required
    #     permission_version: 1, # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #   resp.client_token #=> String
    #   resp.permission_status #=> String, one of "ATTACHABLE", "UNATTACHABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeletePermissionVersion AWS API Documentation
    #
    # @overload delete_permission_version(params = {})
    # @param [Hash] params ({})
    def delete_permission_version(params = {}, options = {})
      req = build_request(:delete_permission_version, params)
      req.send_request(options)
    end

    # Deletes the specified resource share.
    #
    # This doesn't delete any of the resources that were associated with
    # the resource share; it only stops the sharing of those resources
    # through this resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share to
    #   delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::DeleteResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourceShareResponse#return_value #return_value} => Boolean
    #   * {Types::DeleteResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_share({
    #     resource_share_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeleteResourceShare AWS API Documentation
    #
    # @overload delete_resource_share(params = {})
    # @param [Hash] params ({})
    def delete_resource_share(params = {}, options = {})
      req = build_request(:delete_resource_share, params)
      req.send_request(options)
    end

    # Removes the specified principals or resources from participating in
    # the specified resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   Specifies [Amazon Resource Name (ARN)][1] of the resource share that
    #   you want to remove resources or principals from.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :resource_arns
    #   Specifies a list of [Amazon Resource Names (ARNs)][1] for one or more
    #   resources that you want to remove from the resource share. After the
    #   operation runs, these resources are no longer shared with principals
    #   associated with the resource share.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :principals
    #   Specifies a list of one or more principals that no longer are to have
    #   access to the resources in this resource share.
    #
    #   You can include the following values:
    #
    #   * An Amazon Web Services account ID, for example: `123456789012`
    #
    #   * An [Amazon Resource Name (ARN)][1] of an organization in
    #     Organizations, for example:
    #     `organizations::123456789012:organization/o-exampleorgid`
    #
    #   * An ARN of an organizational unit (OU) in Organizations, for example:
    #     `organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123`
    #
    #   * An ARN of an IAM role, for example:
    #     `iam::123456789012:role/rolename`
    #
    #   * An ARN of an IAM user, for example: `iam::123456789012user/username`
    #
    #   <note markdown="1"> Not all resource types can be shared with IAM roles and users. For
    #   more information, see [Sharing with IAM roles and users][2] in the
    #   *Resource Access Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::DisassociateResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResourceShareResponse#resource_share_associations #resource_share_associations} => Array&lt;Types::ResourceShareAssociation&gt;
    #   * {Types::DisassociateResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resource_share({
    #     resource_share_arn: "String", # required
    #     resource_arns: ["String"],
    #     principals: ["String"],
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_associations #=> Array
    #   resp.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_associations[0].external #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceShare AWS API Documentation
    #
    # @overload disassociate_resource_share(params = {})
    # @param [Hash] params ({})
    def disassociate_resource_share(params = {}, options = {})
      req = build_request(:disassociate_resource_share, params)
      req.send_request(options)
    end

    # Removes a managed permission from a resource share. Permission changes
    # take effect immediately. You can remove a managed permission from a
    # resource share only if there are currently no resources of the
    # relevant resource type currently attached to the resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   The [Amazon Resource Name (ARN)][1] of the resource share that you
    #   want to remove the managed permission from.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :permission_arn
    #   The [Amazon Resource Name (ARN)][1] of the managed permission to
    #   disassociate from the resource share. Changes to permissions take
    #   effect immediately.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::DisassociateResourceSharePermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResourceSharePermissionResponse#return_value #return_value} => Boolean
    #   * {Types::DisassociateResourceSharePermissionResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resource_share_permission({
    #     resource_share_arn: "String", # required
    #     permission_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceSharePermission AWS API Documentation
    #
    # @overload disassociate_resource_share_permission(params = {})
    # @param [Hash] params ({})
    def disassociate_resource_share_permission(params = {}, options = {})
      req = build_request(:disassociate_resource_share_permission, params)
      req.send_request(options)
    end

    # Enables resource sharing within your organization in Organizations.
    # This operation creates a service-linked role called
    # `AWSServiceRoleForResourceAccessManager` that has the IAM managed
    # policy named AWSResourceAccessManagerServiceRolePolicy attached. This
    # role permits RAM to retrieve information about the organization and
    # its structure. This lets you share resources with all of the accounts
    # in the calling account's organization by specifying the organization
    # ID, or all of the accounts in an organizational unit (OU) by
    # specifying the OU ID. Until you enable sharing within the
    # organization, you can specify only individual Amazon Web Services
    # accounts, or for supported resource types, IAM roles and users.
    #
    # You must call this operation from an IAM role or user in the
    # organization's management account.
    #
    # @return [Types::EnableSharingWithAwsOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableSharingWithAwsOrganizationResponse#return_value #return_value} => Boolean
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/EnableSharingWithAwsOrganization AWS API Documentation
    #
    # @overload enable_sharing_with_aws_organization(params = {})
    # @param [Hash] params ({})
    def enable_sharing_with_aws_organization(params = {}, options = {})
      req = build_request(:enable_sharing_with_aws_organization, params)
      req.send_request(options)
    end

    # Retrieves the contents of a managed permission in JSON format.
    #
    # @option params [required, String] :permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the permission whose
    #   contents you want to retrieve. To find the ARN for a permission, use
    #   either the ListPermissions operation or go to the [Permissions
    #   library][2] page in the RAM console and then choose the name of the
    #   permission. The ARN is displayed on the detail page.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://console.aws.amazon.com/ram/home#Permissions:
    #
    # @option params [Integer] :permission_version
    #   Specifies the version number of the RAM permission to retrieve. If you
    #   don't specify this parameter, the operation retrieves the default
    #   version.
    #
    #   To see the list of available versions, use ListPermissionVersions.
    #
    # @return [Types::GetPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPermissionResponse#permission #permission} => Types::ResourceSharePermissionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_permission({
    #     permission_arn: "String", # required
    #     permission_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permission.arn #=> String
    #   resp.permission.version #=> String
    #   resp.permission.default_version #=> Boolean
    #   resp.permission.name #=> String
    #   resp.permission.resource_type #=> String
    #   resp.permission.permission #=> String
    #   resp.permission.creation_time #=> Time
    #   resp.permission.last_updated_time #=> Time
    #   resp.permission.is_resource_type_default #=> Boolean
    #   resp.permission.permission_type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.permission.feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.permission.status #=> String, one of "ATTACHABLE", "UNATTACHABLE", "DELETING", "DELETED"
    #   resp.permission.tags #=> Array
    #   resp.permission.tags[0].key #=> String
    #   resp.permission.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetPermission AWS API Documentation
    #
    # @overload get_permission(params = {})
    # @param [Hash] params ({})
    def get_permission(params = {}, options = {})
      req = build_request(:get_permission, params)
      req.send_request(options)
    end

    # Retrieves the resource policies for the specified resources that you
    # own and have shared.
    #
    # @option params [required, Array<String>] :resource_arns
    #   Specifies the [Amazon Resource Names (ARNs)][1] of the resources whose
    #   policies you want to retrieve.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :principal
    #   Specifies the principal.
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
    # @return [Types::GetResourcePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePoliciesResponse#policies #policies} => Array&lt;String&gt;
    #   * {Types::GetResourcePoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policies({
    #     resource_arns: ["String"], # required
    #     principal: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourcePolicies AWS API Documentation
    #
    # @overload get_resource_policies(params = {})
    # @param [Hash] params ({})
    def get_resource_policies(params = {}, options = {})
      req = build_request(:get_resource_policies, params)
      req.send_request(options)
    end

    # Retrieves the lists of resources and principals that associated for
    # resource shares that you own.
    #
    # @option params [required, String] :association_type
    #   Specifies whether you want to retrieve the associations that involve a
    #   specified resource or principal.
    #
    #   * `PRINCIPAL` – list the principals whose associations you want to
    #     see.
    #
    #   * `RESOURCE` – list the resources whose associations you want to see.
    #
    # @option params [Array<String>] :resource_share_arns
    #   Specifies a list of [Amazon Resource Names (ARNs)][1] of the resource
    #   share whose associations you want to retrieve.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :resource_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of a resource whose
    #   resource shares you want to retrieve.
    #
    #   You cannot specify this parameter if the association type is
    #   `PRINCIPAL`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :principal
    #   Specifies the ID of the principal whose resource shares you want to
    #   retrieve. This can be an Amazon Web Services account ID, an
    #   organization ID, an organizational unit ID, or the [Amazon Resource
    #   Name (ARN)][1] of an individual IAM user or role.
    #
    #   You cannot specify this parameter if the association type is
    #   `RESOURCE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :association_status
    #   Specifies that you want to retrieve only associations that have this
    #   status.
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
    # @return [Types::GetResourceShareAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceShareAssociationsResponse#resource_share_associations #resource_share_associations} => Array&lt;Types::ResourceShareAssociation&gt;
    #   * {Types::GetResourceShareAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_share_associations({
    #     association_type: "PRINCIPAL", # required, accepts PRINCIPAL, RESOURCE
    #     resource_share_arns: ["String"],
    #     resource_arn: "String",
    #     principal: "String",
    #     association_status: "ASSOCIATING", # accepts ASSOCIATING, ASSOCIATED, FAILED, DISASSOCIATING, DISASSOCIATED
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_associations #=> Array
    #   resp.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_associations[0].external #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareAssociations AWS API Documentation
    #
    # @overload get_resource_share_associations(params = {})
    # @param [Hash] params ({})
    def get_resource_share_associations(params = {}, options = {})
      req = build_request(:get_resource_share_associations, params)
      req.send_request(options)
    end

    # Retrieves details about invitations that you have received for
    # resource shares.
    #
    # @option params [Array<String>] :resource_share_invitation_arns
    #   Specifies the [Amazon Resource Names (ARNs)][1] of the resource share
    #   invitations you want information about.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :resource_share_arns
    #   Specifies that you want details about invitations only for the
    #   resource shares described by this list of [Amazon Resource Names
    #   (ARNs)][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    # @return [Types::GetResourceShareInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceShareInvitationsResponse#resource_share_invitations #resource_share_invitations} => Array&lt;Types::ResourceShareInvitation&gt;
    #   * {Types::GetResourceShareInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_share_invitations({
    #     resource_share_invitation_arns: ["String"],
    #     resource_share_arns: ["String"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_invitations #=> Array
    #   resp.resource_share_invitations[0].resource_share_invitation_arn #=> String
    #   resp.resource_share_invitations[0].resource_share_name #=> String
    #   resp.resource_share_invitations[0].resource_share_arn #=> String
    #   resp.resource_share_invitations[0].sender_account_id #=> String
    #   resp.resource_share_invitations[0].receiver_account_id #=> String
    #   resp.resource_share_invitations[0].invitation_timestamp #=> Time
    #   resp.resource_share_invitations[0].status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "EXPIRED"
    #   resp.resource_share_invitations[0].resource_share_associations #=> Array
    #   resp.resource_share_invitations[0].resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_invitations[0].resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_invitations[0].resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_invitations[0].resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_invitations[0].resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_invitations[0].resource_share_associations[0].status_message #=> String
    #   resp.resource_share_invitations[0].resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_invitations[0].resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_invitations[0].resource_share_associations[0].external #=> Boolean
    #   resp.resource_share_invitations[0].receiver_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareInvitations AWS API Documentation
    #
    # @overload get_resource_share_invitations(params = {})
    # @param [Hash] params ({})
    def get_resource_share_invitations(params = {}, options = {})
      req = build_request(:get_resource_share_invitations, params)
      req.send_request(options)
    end

    # Retrieves details about the resource shares that you own or that are
    # shared with you.
    #
    # @option params [Array<String>] :resource_share_arns
    #   Specifies the [Amazon Resource Names (ARNs)][1] of individual resource
    #   shares that you want information about.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :resource_share_status
    #   Specifies that you want to retrieve details of only those resource
    #   shares that have this status.
    #
    # @option params [required, String] :resource_owner
    #   Specifies that you want to retrieve details of only those resource
    #   shares that match the following:
    #
    #   * <b> <code>SELF</code> </b> – resource shares that your account
    #     shares with other accounts
    #
    #   * <b> <code>OTHER-ACCOUNTS</code> </b> – resource shares that other
    #     accounts share with your account
    #
    # @option params [String] :name
    #   Specifies the name of an individual resource share that you want to
    #   retrieve details about.
    #
    # @option params [Array<Types::TagFilter>] :tag_filters
    #   Specifies that you want to retrieve details of only those resource
    #   shares that match the specified tag keys and values.
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
    # @option params [String] :permission_arn
    #   Specifies that you want to retrieve details of only those resource
    #   shares that use the managed permission with this [Amazon Resource Name
    #   (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :permission_version
    #   Specifies that you want to retrieve details for only those resource
    #   shares that use the specified version of the managed permission.
    #
    # @return [Types::GetResourceSharesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceSharesResponse#resource_shares #resource_shares} => Array&lt;Types::ResourceShare&gt;
    #   * {Types::GetResourceSharesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_shares({
    #     resource_share_arns: ["String"],
    #     resource_share_status: "PENDING", # accepts PENDING, ACTIVE, FAILED, DELETING, DELETED
    #     resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #     name: "String",
    #     tag_filters: [
    #       {
    #         tag_key: "TagKey",
    #         tag_values: ["TagValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #     permission_arn: "String",
    #     permission_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_shares #=> Array
    #   resp.resource_shares[0].resource_share_arn #=> String
    #   resp.resource_shares[0].name #=> String
    #   resp.resource_shares[0].owning_account_id #=> String
    #   resp.resource_shares[0].allow_external_principals #=> Boolean
    #   resp.resource_shares[0].status #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"
    #   resp.resource_shares[0].status_message #=> String
    #   resp.resource_shares[0].tags #=> Array
    #   resp.resource_shares[0].tags[0].key #=> String
    #   resp.resource_shares[0].tags[0].value #=> String
    #   resp.resource_shares[0].creation_time #=> Time
    #   resp.resource_shares[0].last_updated_time #=> Time
    #   resp.resource_shares[0].feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShares AWS API Documentation
    #
    # @overload get_resource_shares(params = {})
    # @param [Hash] params ({})
    def get_resource_shares(params = {}, options = {})
      req = build_request(:get_resource_shares, params)
      req.send_request(options)
    end

    # Lists the resources in a resource share that is shared with you but
    # for which the invitation is still `PENDING`. That means that you
    # haven't accepted or rejected the invitation and the invitation
    # hasn't expired.
    #
    # @option params [required, String] :resource_share_invitation_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the invitation. You
    #   can use GetResourceShareInvitations to find the ARN of the invitation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    # @option params [String] :resource_region_scope
    #   Specifies that you want the results to include only resources that
    #   have the specified scope.
    #
    #   * `ALL` – the results include both global and regional resources or
    #     resource types.
    #
    #   * `GLOBAL` – the results include only global resources or resource
    #     types.
    #
    #   * `REGIONAL` – the results include only regional resources or resource
    #     types.
    #
    #   The default value is `ALL`.
    #
    # @return [Types::ListPendingInvitationResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPendingInvitationResourcesResponse#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::ListPendingInvitationResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pending_invitation_resources({
    #     resource_share_invitation_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #     resource_region_scope: "ALL", # accepts ALL, REGIONAL, GLOBAL
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].arn #=> String
    #   resp.resources[0].type #=> String
    #   resp.resources[0].resource_share_arn #=> String
    #   resp.resources[0].resource_group_arn #=> String
    #   resp.resources[0].status #=> String, one of "AVAILABLE", "ZONAL_RESOURCE_INACCESSIBLE", "LIMIT_EXCEEDED", "UNAVAILABLE", "PENDING"
    #   resp.resources[0].status_message #=> String
    #   resp.resources[0].creation_time #=> Time
    #   resp.resources[0].last_updated_time #=> Time
    #   resp.resources[0].resource_region_scope #=> String, one of "REGIONAL", "GLOBAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPendingInvitationResources AWS API Documentation
    #
    # @overload list_pending_invitation_resources(params = {})
    # @param [Hash] params ({})
    def list_pending_invitation_resources(params = {}, options = {})
      req = build_request(:list_pending_invitation_resources, params)
      req.send_request(options)
    end

    # Lists information about the managed permission and its associations to
    # any resource shares that use this managed permission. This lets you
    # see which resource shares use which versions of the specified managed
    # permission.
    #
    # @option params [String] :permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the managed
    #   permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :permission_version
    #   Specifies that you want to list only those associations with resource
    #   shares that use this version of the managed permission. If you don't
    #   provide a value for this parameter, then the operation returns
    #   information about associations with resource shares that use any
    #   version of the managed permission.
    #
    # @option params [String] :association_status
    #   Specifies that you want to list only those associations with resource
    #   shares that match this status.
    #
    # @option params [String] :resource_type
    #   Specifies that you want to list only those associations with resource
    #   shares that include at least one resource of this resource type.
    #
    # @option params [String] :feature_set
    #   Specifies that you want to list only those associations with resource
    #   shares that have a `featureSet` with this value.
    #
    # @option params [Boolean] :default_version
    #   When `true`, specifies that you want to list only those associations
    #   with resource shares that use the default version of the specified
    #   managed permission.
    #
    #   When `false` (the default value), lists associations with resource
    #   shares that use any version of the specified managed permission.
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
    # @return [Types::ListPermissionAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionAssociationsResponse#permissions #permissions} => Array&lt;Types::AssociatedPermission&gt;
    #   * {Types::ListPermissionAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_associations({
    #     permission_arn: "String",
    #     permission_version: 1,
    #     association_status: "ASSOCIATING", # accepts ASSOCIATING, ASSOCIATED, FAILED, DISASSOCIATING, DISASSOCIATED
    #     resource_type: "String",
    #     feature_set: "CREATED_FROM_POLICY", # accepts CREATED_FROM_POLICY, PROMOTING_TO_STANDARD, STANDARD
    #     default_version: false,
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].arn #=> String
    #   resp.permissions[0].permission_version #=> String
    #   resp.permissions[0].default_version #=> Boolean
    #   resp.permissions[0].resource_type #=> String
    #   resp.permissions[0].status #=> String
    #   resp.permissions[0].feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.permissions[0].last_updated_time #=> Time
    #   resp.permissions[0].resource_share_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionAssociations AWS API Documentation
    #
    # @overload list_permission_associations(params = {})
    # @param [Hash] params ({})
    def list_permission_associations(params = {}, options = {})
      req = build_request(:list_permission_associations, params)
      req.send_request(options)
    end

    # Lists the available versions of the specified RAM permission.
    #
    # @option params [required, String] :permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the RAM permission
    #   whose versions you want to list. You can use the `permissionVersion`
    #   parameter on the AssociateResourceSharePermission operation to specify
    #   a non-default version to attach.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    # @return [Types::ListPermissionVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionVersionsResponse#permissions #permissions} => Array&lt;Types::ResourceSharePermissionSummary&gt;
    #   * {Types::ListPermissionVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_versions({
    #     permission_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].arn #=> String
    #   resp.permissions[0].version #=> String
    #   resp.permissions[0].default_version #=> Boolean
    #   resp.permissions[0].name #=> String
    #   resp.permissions[0].resource_type #=> String
    #   resp.permissions[0].status #=> String
    #   resp.permissions[0].creation_time #=> Time
    #   resp.permissions[0].last_updated_time #=> Time
    #   resp.permissions[0].is_resource_type_default #=> Boolean
    #   resp.permissions[0].permission_type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.permissions[0].feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.permissions[0].tags #=> Array
    #   resp.permissions[0].tags[0].key #=> String
    #   resp.permissions[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionVersions AWS API Documentation
    #
    # @overload list_permission_versions(params = {})
    # @param [Hash] params ({})
    def list_permission_versions(params = {}, options = {})
      req = build_request(:list_permission_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of available RAM permissions that you can use for the
    # supported resource types.
    #
    # @option params [String] :resource_type
    #   Specifies that you want to list only those permissions that apply to
    #   the specified resource type. This parameter is not case sensitive.
    #
    #   For example, to list only permissions that apply to Amazon EC2
    #   subnets, specify `ec2:subnet`. You can use the ListResourceTypes
    #   operation to get the specific string required.
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
    # @option params [String] :permission_type
    #   Specifies that you want to list only permissions of this type:
    #
    #   * `AWS` – returns only Amazon Web Services managed permissions.
    #
    #   * `LOCAL` – returns only customer managed permissions
    #
    #   * `ALL` – returns both Amazon Web Services managed permissions and
    #     customer managed permissions.
    #
    #   If you don't specify this parameter, the default is `All`.
    #
    # @return [Types::ListPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourceSharePermissionSummary&gt;
    #   * {Types::ListPermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions({
    #     resource_type: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     permission_type: "ALL", # accepts ALL, AWS_MANAGED, CUSTOMER_MANAGED
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].arn #=> String
    #   resp.permissions[0].version #=> String
    #   resp.permissions[0].default_version #=> Boolean
    #   resp.permissions[0].name #=> String
    #   resp.permissions[0].resource_type #=> String
    #   resp.permissions[0].status #=> String
    #   resp.permissions[0].creation_time #=> Time
    #   resp.permissions[0].last_updated_time #=> Time
    #   resp.permissions[0].is_resource_type_default #=> Boolean
    #   resp.permissions[0].permission_type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.permissions[0].feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.permissions[0].tags #=> Array
    #   resp.permissions[0].tags[0].key #=> String
    #   resp.permissions[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissions AWS API Documentation
    #
    # @overload list_permissions(params = {})
    # @param [Hash] params ({})
    def list_permissions(params = {}, options = {})
      req = build_request(:list_permissions, params)
      req.send_request(options)
    end

    # Lists the principals that you are sharing resources with or that are
    # sharing resources with you.
    #
    # @option params [required, String] :resource_owner
    #   Specifies that you want to list information for only resource shares
    #   that match the following:
    #
    #   * <b> <code>SELF</code> </b> – principals that your account is sharing
    #     resources with
    #
    #   * <b> <code>OTHER-ACCOUNTS</code> </b> – principals that are sharing
    #     resources with your account
    #
    # @option params [String] :resource_arn
    #   Specifies that you want to list principal information for the resource
    #   share with the specified [Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :principals
    #   Specifies that you want to list information for only the listed
    #   principals.
    #
    #   You can include the following values:
    #
    #   * An Amazon Web Services account ID, for example: `123456789012`
    #
    #   * An [Amazon Resource Name (ARN)][1] of an organization in
    #     Organizations, for example:
    #     `organizations::123456789012:organization/o-exampleorgid`
    #
    #   * An ARN of an organizational unit (OU) in Organizations, for example:
    #     `organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123`
    #
    #   * An ARN of an IAM role, for example:
    #     `iam::123456789012:role/rolename`
    #
    #   * An ARN of an IAM user, for example: `iam::123456789012user/username`
    #
    #   <note markdown="1"> Not all resource types can be shared with IAM roles and users. For
    #   more information, see [Sharing with IAM roles and users][2] in the
    #   *Resource Access Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types
    #
    # @option params [String] :resource_type
    #   Specifies that you want to list information for only principals
    #   associated with resource shares that include the specified resource
    #   type.
    #
    #   For a list of valid values, query the ListResourceTypes operation.
    #
    # @option params [Array<String>] :resource_share_arns
    #   Specifies that you want to list information for only principals
    #   associated with the resource shares specified by a list the [Amazon
    #   Resource Names (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    # @return [Types::ListPrincipalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrincipalsResponse#principals #principals} => Array&lt;Types::Principal&gt;
    #   * {Types::ListPrincipalsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principals({
    #     resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #     resource_arn: "String",
    #     principals: ["String"],
    #     resource_type: "String",
    #     resource_share_arns: ["String"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.principals #=> Array
    #   resp.principals[0].id #=> String
    #   resp.principals[0].resource_share_arn #=> String
    #   resp.principals[0].creation_time #=> Time
    #   resp.principals[0].last_updated_time #=> Time
    #   resp.principals[0].external #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPrincipals AWS API Documentation
    #
    # @overload list_principals(params = {})
    # @param [Hash] params ({})
    def list_principals(params = {}, options = {})
      req = build_request(:list_principals, params)
      req.send_request(options)
    end

    # Retrieves the current status of the asynchronous tasks performed by
    # RAM when you perform the ReplacePermissionAssociationsWork operation.
    #
    # @option params [Array<String>] :work_ids
    #   A list of IDs. These values come from the `id`field of the
    #   `replacePermissionAssociationsWork`structure returned by the
    #   ReplacePermissionAssociations operation.
    #
    # @option params [String] :status
    #   Specifies that you want to see only the details about requests with a
    #   status that matches this value.
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
    # @return [Types::ListReplacePermissionAssociationsWorkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReplacePermissionAssociationsWorkResponse#replace_permission_associations_works #replace_permission_associations_works} => Array&lt;Types::ReplacePermissionAssociationsWork&gt;
    #   * {Types::ListReplacePermissionAssociationsWorkResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_replace_permission_associations_work({
    #     work_ids: ["String"],
    #     status: "IN_PROGRESS", # accepts IN_PROGRESS, COMPLETED, FAILED
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.replace_permission_associations_works #=> Array
    #   resp.replace_permission_associations_works[0].id #=> String
    #   resp.replace_permission_associations_works[0].from_permission_arn #=> String
    #   resp.replace_permission_associations_works[0].from_permission_version #=> String
    #   resp.replace_permission_associations_works[0].to_permission_arn #=> String
    #   resp.replace_permission_associations_works[0].to_permission_version #=> String
    #   resp.replace_permission_associations_works[0].status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.replace_permission_associations_works[0].status_message #=> String
    #   resp.replace_permission_associations_works[0].creation_time #=> Time
    #   resp.replace_permission_associations_works[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListReplacePermissionAssociationsWork AWS API Documentation
    #
    # @overload list_replace_permission_associations_work(params = {})
    # @param [Hash] params ({})
    def list_replace_permission_associations_work(params = {}, options = {})
      req = build_request(:list_replace_permission_associations_work, params)
      req.send_request(options)
    end

    # Lists the RAM permissions that are associated with a resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   for which you want to retrieve the associated permissions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    # @return [Types::ListResourceSharePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceSharePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourceSharePermissionSummary&gt;
    #   * {Types::ListResourceSharePermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_share_permissions({
    #     resource_share_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].arn #=> String
    #   resp.permissions[0].version #=> String
    #   resp.permissions[0].default_version #=> Boolean
    #   resp.permissions[0].name #=> String
    #   resp.permissions[0].resource_type #=> String
    #   resp.permissions[0].status #=> String
    #   resp.permissions[0].creation_time #=> Time
    #   resp.permissions[0].last_updated_time #=> Time
    #   resp.permissions[0].is_resource_type_default #=> Boolean
    #   resp.permissions[0].permission_type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.permissions[0].feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.permissions[0].tags #=> Array
    #   resp.permissions[0].tags[0].key #=> String
    #   resp.permissions[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceSharePermissions AWS API Documentation
    #
    # @overload list_resource_share_permissions(params = {})
    # @param [Hash] params ({})
    def list_resource_share_permissions(params = {}, options = {})
      req = build_request(:list_resource_share_permissions, params)
      req.send_request(options)
    end

    # Lists the resource types that can be shared by RAM.
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
    # @option params [String] :resource_region_scope
    #   Specifies that you want the results to include only resources that
    #   have the specified scope.
    #
    #   * `ALL` – the results include both global and regional resources or
    #     resource types.
    #
    #   * `GLOBAL` – the results include only global resources or resource
    #     types.
    #
    #   * `REGIONAL` – the results include only regional resources or resource
    #     types.
    #
    #   The default value is `ALL`.
    #
    # @return [Types::ListResourceTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceTypesResponse#resource_types #resource_types} => Array&lt;Types::ServiceNameAndResourceType&gt;
    #   * {Types::ListResourceTypesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_types({
    #     next_token: "String",
    #     max_results: 1,
    #     resource_region_scope: "ALL", # accepts ALL, REGIONAL, GLOBAL
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_types #=> Array
    #   resp.resource_types[0].resource_type #=> String
    #   resp.resource_types[0].service_name #=> String
    #   resp.resource_types[0].resource_region_scope #=> String, one of "REGIONAL", "GLOBAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceTypes AWS API Documentation
    #
    # @overload list_resource_types(params = {})
    # @param [Hash] params ({})
    def list_resource_types(params = {}, options = {})
      req = build_request(:list_resource_types, params)
      req.send_request(options)
    end

    # Lists the resources that you added to a resource share or the
    # resources that are shared with you.
    #
    # @option params [required, String] :resource_owner
    #   Specifies that you want to list only the resource shares that match
    #   the following:
    #
    #   * <b> <code>SELF</code> </b> – resources that your account shares with
    #     other accounts
    #
    #   * <b> <code>OTHER-ACCOUNTS</code> </b> – resources that other accounts
    #     share with your account
    #
    # @option params [String] :principal
    #   Specifies that you want to list only the resource shares that are
    #   associated with the specified principal.
    #
    # @option params [String] :resource_type
    #   Specifies that you want to list only the resource shares that include
    #   resources of the specified resource type.
    #
    #   For valid values, query the ListResourceTypes operation.
    #
    # @option params [Array<String>] :resource_arns
    #   Specifies that you want to list only the resource shares that include
    #   resources with the specified [Amazon Resource Names (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :resource_share_arns
    #   Specifies that you want to list only resources in the resource shares
    #   identified by the specified [Amazon Resource Names (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    # @option params [String] :resource_region_scope
    #   Specifies that you want the results to include only resources that
    #   have the specified scope.
    #
    #   * `ALL` – the results include both global and regional resources or
    #     resource types.
    #
    #   * `GLOBAL` – the results include only global resources or resource
    #     types.
    #
    #   * `REGIONAL` – the results include only regional resources or resource
    #     types.
    #
    #   The default value is `ALL`.
    #
    # @return [Types::ListResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesResponse#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::ListResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources({
    #     resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #     principal: "String",
    #     resource_type: "String",
    #     resource_arns: ["String"],
    #     resource_share_arns: ["String"],
    #     next_token: "String",
    #     max_results: 1,
    #     resource_region_scope: "ALL", # accepts ALL, REGIONAL, GLOBAL
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].arn #=> String
    #   resp.resources[0].type #=> String
    #   resp.resources[0].resource_share_arn #=> String
    #   resp.resources[0].resource_group_arn #=> String
    #   resp.resources[0].status #=> String, one of "AVAILABLE", "ZONAL_RESOURCE_INACCESSIBLE", "LIMIT_EXCEEDED", "UNAVAILABLE", "PENDING"
    #   resp.resources[0].status_message #=> String
    #   resp.resources[0].creation_time #=> Time
    #   resp.resources[0].last_updated_time #=> Time
    #   resp.resources[0].resource_region_scope #=> String, one of "REGIONAL", "GLOBAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResources AWS API Documentation
    #
    # @overload list_resources(params = {})
    # @param [Hash] params ({})
    def list_resources(params = {}, options = {})
      req = build_request(:list_resources, params)
      req.send_request(options)
    end

    # When you attach a resource-based policy to a resource, RAM
    # automatically creates a resource share of
    # `featureSet`=`CREATED_FROM_POLICY` with a managed permission that has
    # the same IAM permissions as the original resource-based policy.
    # However, this type of managed permission is visible to only the
    # resource share owner, and the associated resource share can't be
    # modified by using RAM.
    #
    # This operation creates a separate, fully manageable customer managed
    # permission that has the same IAM permissions as the original
    # resource-based policy. You can associate this customer managed
    # permission to any resource shares.
    #
    # Before you use PromoteResourceShareCreatedFromPolicy, you should first
    # run this operation to ensure that you have an appropriate customer
    # managed permission that can be associated with the promoted resource
    # share.
    #
    # <note markdown="1"> * The original `CREATED_FROM_POLICY` policy isn't deleted, and
    #   resource shares using that original policy aren't automatically
    #   updated.
    #
    # * You can't modify a `CREATED_FROM_POLICY` resource share so you
    #   can't associate the new customer managed permission by using
    #   `ReplacePermsissionAssociations`. However, if you use
    #   PromoteResourceShareCreatedFromPolicy, that operation automatically
    #   associates the fully manageable customer managed permission to the
    #   newly promoted `STANDARD` resource share.
    #
    # * After you promote a resource share, if the original
    #   `CREATED_FROM_POLICY` managed permission has no other associations
    #   to A resource share, then RAM automatically deletes it.
    #
    #  </note>
    #
    # @option params [required, String] :permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the
    #   `CREATED_FROM_POLICY` permission that you want to promote. You can get
    #   this [Amazon Resource Name (ARN)][1] by calling the
    #   ListResourceSharePermissions operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :name
    #   Specifies a name for the promoted customer managed permission.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::PromotePermissionCreatedFromPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PromotePermissionCreatedFromPolicyResponse#permission #permission} => Types::ResourceSharePermissionSummary
    #   * {Types::PromotePermissionCreatedFromPolicyResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.promote_permission_created_from_policy({
    #     permission_arn: "String", # required
    #     name: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.permission.arn #=> String
    #   resp.permission.version #=> String
    #   resp.permission.default_version #=> Boolean
    #   resp.permission.name #=> String
    #   resp.permission.resource_type #=> String
    #   resp.permission.status #=> String
    #   resp.permission.creation_time #=> Time
    #   resp.permission.last_updated_time #=> Time
    #   resp.permission.is_resource_type_default #=> Boolean
    #   resp.permission.permission_type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.permission.feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.permission.tags #=> Array
    #   resp.permission.tags[0].key #=> String
    #   resp.permission.tags[0].value #=> String
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PromotePermissionCreatedFromPolicy AWS API Documentation
    #
    # @overload promote_permission_created_from_policy(params = {})
    # @param [Hash] params ({})
    def promote_permission_created_from_policy(params = {}, options = {})
      req = build_request(:promote_permission_created_from_policy, params)
      req.send_request(options)
    end

    # When you attach a resource-based policy to a resource, RAM
    # automatically creates a resource share of
    # `featureSet`=`CREATED_FROM_POLICY` with a managed permission that has
    # the same IAM permissions as the original resource-based policy.
    # However, this type of managed permission is visible to only the
    # resource share owner, and the associated resource share can't be
    # modified by using RAM.
    #
    # This operation promotes the resource share to a `STANDARD` resource
    # share that is fully manageable in RAM. When you promote a resource
    # share, you can then manage the resource share in RAM and it becomes
    # visible to all of the principals you shared it with.
    #
    # Before you perform this operation, you should first run
    # PromotePermissionCreatedFromPolicyto ensure that you have an
    # appropriate customer managed permission that can be associated with
    # this resource share after its is promoted. If this operation can't
    # find a managed permission that exactly matches the existing
    # `CREATED_FROM_POLICY` permission, then this operation fails.
    #
    # @option params [required, String] :resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share to
    #   promote.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::PromoteResourceShareCreatedFromPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PromoteResourceShareCreatedFromPolicyResponse#return_value #return_value} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.promote_resource_share_created_from_policy({
    #     resource_share_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PromoteResourceShareCreatedFromPolicy AWS API Documentation
    #
    # @overload promote_resource_share_created_from_policy(params = {})
    # @param [Hash] params ({})
    def promote_resource_share_created_from_policy(params = {}, options = {})
      req = build_request(:promote_resource_share_created_from_policy, params)
      req.send_request(options)
    end

    # Rejects an invitation to a resource share from another Amazon Web
    # Services account.
    #
    # @option params [required, String] :resource_share_invitation_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the invitation that
    #   you want to reject.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::RejectResourceShareInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectResourceShareInvitationResponse#resource_share_invitation #resource_share_invitation} => Types::ResourceShareInvitation
    #   * {Types::RejectResourceShareInvitationResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_resource_share_invitation({
    #     resource_share_invitation_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_invitation.resource_share_invitation_arn #=> String
    #   resp.resource_share_invitation.resource_share_name #=> String
    #   resp.resource_share_invitation.resource_share_arn #=> String
    #   resp.resource_share_invitation.sender_account_id #=> String
    #   resp.resource_share_invitation.receiver_account_id #=> String
    #   resp.resource_share_invitation.invitation_timestamp #=> Time
    #   resp.resource_share_invitation.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "EXPIRED"
    #   resp.resource_share_invitation.resource_share_associations #=> Array
    #   resp.resource_share_invitation.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_invitation.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_invitation.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_invitation.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_invitation.resource_share_associations[0].external #=> Boolean
    #   resp.resource_share_invitation.receiver_arn #=> String
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/RejectResourceShareInvitation AWS API Documentation
    #
    # @overload reject_resource_share_invitation(params = {})
    # @param [Hash] params ({})
    def reject_resource_share_invitation(params = {}, options = {})
      req = build_request(:reject_resource_share_invitation, params)
      req.send_request(options)
    end

    # Updates all resource shares that use a managed permission to a
    # different managed permission. This operation always applies the
    # default version of the target managed permission. You can optionally
    # specify that the update applies to only resource shares that currently
    # use a specified version. This enables you to update to the latest
    # version, without changing the which managed permission is used.
    #
    # You can use this operation to update all of your resource shares to
    # use the current default version of the permission by specifying the
    # same value for the `fromPermissionArn` and `toPermissionArn`
    # parameters.
    #
    # You can use the optional `fromPermissionVersion` parameter to update
    # only those resources that use a specified version of the managed
    # permission to the new managed permission.
    #
    # To successfully perform this operation, you must have permission to
    # update the resource-based policy on all affected resource types.
    #
    # @option params [required, String] :from_permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the managed
    #   permission that you want to replace.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :from_permission_version
    #   Specifies that you want to updated the permissions for only those
    #   resource shares that use the specified version of the managed
    #   permission.
    #
    # @option params [required, String] :to_permission_arn
    #   Specifies the ARN of the managed permission that you want to associate
    #   with resource shares in place of the one specified by
    #   `fromPerssionArn` and `fromPermissionVersion`.
    #
    #   The operation always associates the version that is currently the
    #   default for the specified managed permission.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::ReplacePermissionAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplacePermissionAssociationsResponse#replace_permission_associations_work #replace_permission_associations_work} => Types::ReplacePermissionAssociationsWork
    #   * {Types::ReplacePermissionAssociationsResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replace_permission_associations({
    #     from_permission_arn: "String", # required
    #     from_permission_version: 1,
    #     to_permission_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replace_permission_associations_work.id #=> String
    #   resp.replace_permission_associations_work.from_permission_arn #=> String
    #   resp.replace_permission_associations_work.from_permission_version #=> String
    #   resp.replace_permission_associations_work.to_permission_arn #=> String
    #   resp.replace_permission_associations_work.to_permission_version #=> String
    #   resp.replace_permission_associations_work.status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.replace_permission_associations_work.status_message #=> String
    #   resp.replace_permission_associations_work.creation_time #=> Time
    #   resp.replace_permission_associations_work.last_updated_time #=> Time
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ReplacePermissionAssociations AWS API Documentation
    #
    # @overload replace_permission_associations(params = {})
    # @param [Hash] params ({})
    def replace_permission_associations(params = {}, options = {})
      req = build_request(:replace_permission_associations, params)
      req.send_request(options)
    end

    # Designates the specified version number as the default version for the
    # specified customer managed permission. New resource shares
    # automatically use this new default permission. Existing resource
    # shares continue to use their original permission version, but you can
    # use ReplacePermissionAssociations to update them.
    #
    # @option params [required, String] :permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the customer managed
    #   permission whose default version you want to change.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Integer] :permission_version
    #   Specifies the version number that you want to designate as the default
    #   for customer managed permission. To see a list of all available
    #   version numbers, use ListPermissionVersions.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::SetDefaultPermissionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetDefaultPermissionVersionResponse#return_value #return_value} => Boolean
    #   * {Types::SetDefaultPermissionVersionResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_permission_version({
    #     permission_arn: "String", # required
    #     permission_version: 1, # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/SetDefaultPermissionVersion AWS API Documentation
    #
    # @overload set_default_permission_version(params = {})
    # @param [Hash] params ({})
    def set_default_permission_version(params = {}, options = {})
      req = build_request(:set_default_permission_version, params)
      req.send_request(options)
    end

    # Adds the specified tag keys and values to a resource share or managed
    # permission. If you choose a resource share, the tags are attached to
    # only the resource share, not to the resources that are in the resource
    # share.
    #
    # The tags on a managed permission are the same for all versions of the
    # managed permission.
    #
    # @option params [String] :resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   that you want to add tags to. You must specify *either*
    #   `resourceShareArn`, or `resourceArn`, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of one or more tag key and value pairs. The tag key must be
    #   present and not be an empty string. The tag value must be present but
    #   can be an empty string.
    #
    # @option params [String] :resource_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the managed
    #   permission that you want to add tags to. You must specify *either*
    #   `resourceArn`, or `resourceShareArn`, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_share_arn: "String",
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     resource_arn: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tag key and value pairs from the specified
    # resource share or managed permission.
    #
    # @option params [String] :resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   that you want to remove tags from. The tags are removed from the
    #   resource share, not the resources in the resource share. You must
    #   specify either `resourceShareArn`, or `resourceArn`, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specifies a list of one or more tag keys that you want to remove.
    #
    # @option params [String] :resource_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the managed
    #   permission that you want to remove tags from. You must specify either
    #   `resourceArn`, or `resourceShareArn`, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_share_arn: "String",
    #     tag_keys: ["TagKey"], # required
    #     resource_arn: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies some of the properties of the specified resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   that you want to modify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :name
    #   If specified, the new name that you want to attach to the resource
    #   share.
    #
    # @option params [Boolean] :allow_external_principals
    #   Specifies whether principals outside your organization in
    #   Organizations can be associated with a resource share.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::UpdateResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResourceShareResponse#resource_share #resource_share} => Types::ResourceShare
    #   * {Types::UpdateResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_share({
    #     resource_share_arn: "String", # required
    #     name: "String",
    #     allow_external_principals: false,
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share.resource_share_arn #=> String
    #   resp.resource_share.name #=> String
    #   resp.resource_share.owning_account_id #=> String
    #   resp.resource_share.allow_external_principals #=> Boolean
    #   resp.resource_share.status #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"
    #   resp.resource_share.status_message #=> String
    #   resp.resource_share.tags #=> Array
    #   resp.resource_share.tags[0].key #=> String
    #   resp.resource_share.tags[0].value #=> String
    #   resp.resource_share.creation_time #=> Time
    #   resp.resource_share.last_updated_time #=> Time
    #   resp.resource_share.feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UpdateResourceShare AWS API Documentation
    #
    # @overload update_resource_share(params = {})
    # @param [Hash] params ({})
    def update_resource_share(params = {}, options = {})
      req = build_request(:update_resource_share, params)
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
      context[:gem_name] = 'aws-sdk-ram'
      context[:gem_version] = '1.48.0'
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
