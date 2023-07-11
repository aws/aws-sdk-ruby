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

Aws::Plugins::GlobalConfiguration.add_identifier(:rolesanywhere)

module Aws::RolesAnywhere
  # An API client for RolesAnywhere.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RolesAnywhere::Client.new(
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

    @identifier = :rolesanywhere

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
    add_plugin(Aws::RolesAnywhere::Plugins::Endpoints)

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
    #   @option options [Aws::RolesAnywhere::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::RolesAnywhere::EndpointParameters`
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

    # Creates a *profile*, a list of the roles that Roles Anywhere service
    # is trusted to assume. You use profiles to intersect permissions with
    # IAM managed policies.
    #
    # <b>Required permissions: </b> `rolesanywhere:CreateProfile`.
    #
    # @option params [Integer] :duration_seconds
    #   The number of seconds the vended session credentials are valid for.
    #
    # @option params [Boolean] :enabled
    #   Specifies whether the profile is enabled.
    #
    # @option params [Array<String>] :managed_policy_arns
    #   A list of managed policy ARNs that apply to the vended session
    #   credentials.
    #
    # @option params [required, String] :name
    #   The name of the profile.
    #
    # @option params [Boolean] :require_instance_properties
    #   Specifies whether instance properties are required in temporary
    #   credential requests with this profile.
    #
    # @option params [required, Array<String>] :role_arns
    #   A list of IAM roles that this profile can assume in a temporary
    #   credential request.
    #
    # @option params [String] :session_policy
    #   A session policy that applies to the trust boundary of the vended
    #   session credentials.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the profile.
    #
    # @return [Types::ProfileDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProfileDetailResponse#profile #profile} => Types::ProfileDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile({
    #     duration_seconds: 1,
    #     enabled: false,
    #     managed_policy_arns: ["ManagedPolicyListMemberString"],
    #     name: "ResourceName", # required
    #     require_instance_properties: false,
    #     role_arns: ["RoleArn"], # required
    #     session_policy: "String",
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
    #   resp.profile.created_at #=> Time
    #   resp.profile.created_by #=> String
    #   resp.profile.duration_seconds #=> Integer
    #   resp.profile.enabled #=> Boolean
    #   resp.profile.managed_policy_arns #=> Array
    #   resp.profile.managed_policy_arns[0] #=> String
    #   resp.profile.name #=> String
    #   resp.profile.profile_arn #=> String
    #   resp.profile.profile_id #=> String
    #   resp.profile.require_instance_properties #=> Boolean
    #   resp.profile.role_arns #=> Array
    #   resp.profile.role_arns[0] #=> String
    #   resp.profile.session_policy #=> String
    #   resp.profile.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/CreateProfile AWS API Documentation
    #
    # @overload create_profile(params = {})
    # @param [Hash] params ({})
    def create_profile(params = {}, options = {})
      req = build_request(:create_profile, params)
      req.send_request(options)
    end

    # Creates a trust anchor to establish trust between IAM Roles Anywhere
    # and your certificate authority (CA). You can define a trust anchor as
    # a reference to an Private Certificate Authority (Private CA) or by
    # uploading a CA certificate. Your Amazon Web Services workloads can
    # authenticate with the trust anchor using certificates issued by the CA
    # in exchange for temporary Amazon Web Services credentials.
    #
    # <b>Required permissions: </b> `rolesanywhere:CreateTrustAnchor`.
    #
    # @option params [Boolean] :enabled
    #   Specifies whether the trust anchor is enabled.
    #
    # @option params [required, String] :name
    #   The name of the trust anchor.
    #
    # @option params [Array<Types::NotificationSetting>] :notification_settings
    #   A list of notification settings to be associated to the trust anchor.
    #
    # @option params [required, Types::Source] :source
    #   The trust anchor type and its related certificate data.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the trust anchor.
    #
    # @return [Types::TrustAnchorDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TrustAnchorDetailResponse#trust_anchor #trust_anchor} => Types::TrustAnchorDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trust_anchor({
    #     enabled: false,
    #     name: "ResourceName", # required
    #     notification_settings: [
    #       {
    #         channel: "ALL", # accepts ALL
    #         enabled: false, # required
    #         event: "CA_CERTIFICATE_EXPIRY", # required, accepts CA_CERTIFICATE_EXPIRY, END_ENTITY_CERTIFICATE_EXPIRY
    #         threshold: 1,
    #       },
    #     ],
    #     source: { # required
    #       source_data: {
    #         acm_pca_arn: "String",
    #         x509_certificate_data: "SourceDataX509CertificateDataString",
    #       },
    #       source_type: "AWS_ACM_PCA", # accepts AWS_ACM_PCA, CERTIFICATE_BUNDLE, SELF_SIGNED_REPOSITORY
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
    #   resp.trust_anchor.created_at #=> Time
    #   resp.trust_anchor.enabled #=> Boolean
    #   resp.trust_anchor.name #=> String
    #   resp.trust_anchor.notification_settings #=> Array
    #   resp.trust_anchor.notification_settings[0].channel #=> String, one of "ALL"
    #   resp.trust_anchor.notification_settings[0].configured_by #=> String
    #   resp.trust_anchor.notification_settings[0].enabled #=> Boolean
    #   resp.trust_anchor.notification_settings[0].event #=> String, one of "CA_CERTIFICATE_EXPIRY", "END_ENTITY_CERTIFICATE_EXPIRY"
    #   resp.trust_anchor.notification_settings[0].threshold #=> Integer
    #   resp.trust_anchor.source.source_data.acm_pca_arn #=> String
    #   resp.trust_anchor.source.source_data.x509_certificate_data #=> String
    #   resp.trust_anchor.source.source_type #=> String, one of "AWS_ACM_PCA", "CERTIFICATE_BUNDLE", "SELF_SIGNED_REPOSITORY"
    #   resp.trust_anchor.trust_anchor_arn #=> String
    #   resp.trust_anchor.trust_anchor_id #=> String
    #   resp.trust_anchor.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/CreateTrustAnchor AWS API Documentation
    #
    # @overload create_trust_anchor(params = {})
    # @param [Hash] params ({})
    def create_trust_anchor(params = {}, options = {})
      req = build_request(:create_trust_anchor, params)
      req.send_request(options)
    end

    # Deletes a certificate revocation list (CRL).
    #
    # <b>Required permissions: </b> `rolesanywhere:DeleteCrl`.
    #
    # @option params [required, String] :crl_id
    #   The unique identifier of the certificate revocation list (CRL).
    #
    # @return [Types::CrlDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CrlDetailResponse#crl #crl} => Types::CrlDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_crl({
    #     crl_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.crl.created_at #=> Time
    #   resp.crl.crl_arn #=> String
    #   resp.crl.crl_data #=> String
    #   resp.crl.crl_id #=> String
    #   resp.crl.enabled #=> Boolean
    #   resp.crl.name #=> String
    #   resp.crl.trust_anchor_arn #=> String
    #   resp.crl.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/DeleteCrl AWS API Documentation
    #
    # @overload delete_crl(params = {})
    # @param [Hash] params ({})
    def delete_crl(params = {}, options = {})
      req = build_request(:delete_crl, params)
      req.send_request(options)
    end

    # Deletes a profile.
    #
    # <b>Required permissions: </b> `rolesanywhere:DeleteProfile`.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile.
    #
    # @return [Types::ProfileDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProfileDetailResponse#profile #profile} => Types::ProfileDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile({
    #     profile_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.created_at #=> Time
    #   resp.profile.created_by #=> String
    #   resp.profile.duration_seconds #=> Integer
    #   resp.profile.enabled #=> Boolean
    #   resp.profile.managed_policy_arns #=> Array
    #   resp.profile.managed_policy_arns[0] #=> String
    #   resp.profile.name #=> String
    #   resp.profile.profile_arn #=> String
    #   resp.profile.profile_id #=> String
    #   resp.profile.require_instance_properties #=> Boolean
    #   resp.profile.role_arns #=> Array
    #   resp.profile.role_arns[0] #=> String
    #   resp.profile.session_policy #=> String
    #   resp.profile.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/DeleteProfile AWS API Documentation
    #
    # @overload delete_profile(params = {})
    # @param [Hash] params ({})
    def delete_profile(params = {}, options = {})
      req = build_request(:delete_profile, params)
      req.send_request(options)
    end

    # Deletes a trust anchor.
    #
    # <b>Required permissions: </b> `rolesanywhere:DeleteTrustAnchor`.
    #
    # @option params [required, String] :trust_anchor_id
    #   The unique identifier of the trust anchor.
    #
    # @return [Types::TrustAnchorDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TrustAnchorDetailResponse#trust_anchor #trust_anchor} => Types::TrustAnchorDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trust_anchor({
    #     trust_anchor_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_anchor.created_at #=> Time
    #   resp.trust_anchor.enabled #=> Boolean
    #   resp.trust_anchor.name #=> String
    #   resp.trust_anchor.notification_settings #=> Array
    #   resp.trust_anchor.notification_settings[0].channel #=> String, one of "ALL"
    #   resp.trust_anchor.notification_settings[0].configured_by #=> String
    #   resp.trust_anchor.notification_settings[0].enabled #=> Boolean
    #   resp.trust_anchor.notification_settings[0].event #=> String, one of "CA_CERTIFICATE_EXPIRY", "END_ENTITY_CERTIFICATE_EXPIRY"
    #   resp.trust_anchor.notification_settings[0].threshold #=> Integer
    #   resp.trust_anchor.source.source_data.acm_pca_arn #=> String
    #   resp.trust_anchor.source.source_data.x509_certificate_data #=> String
    #   resp.trust_anchor.source.source_type #=> String, one of "AWS_ACM_PCA", "CERTIFICATE_BUNDLE", "SELF_SIGNED_REPOSITORY"
    #   resp.trust_anchor.trust_anchor_arn #=> String
    #   resp.trust_anchor.trust_anchor_id #=> String
    #   resp.trust_anchor.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/DeleteTrustAnchor AWS API Documentation
    #
    # @overload delete_trust_anchor(params = {})
    # @param [Hash] params ({})
    def delete_trust_anchor(params = {}, options = {})
      req = build_request(:delete_trust_anchor, params)
      req.send_request(options)
    end

    # Disables a certificate revocation list (CRL).
    #
    # <b>Required permissions: </b> `rolesanywhere:DisableCrl`.
    #
    # @option params [required, String] :crl_id
    #   The unique identifier of the certificate revocation list (CRL).
    #
    # @return [Types::CrlDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CrlDetailResponse#crl #crl} => Types::CrlDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_crl({
    #     crl_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.crl.created_at #=> Time
    #   resp.crl.crl_arn #=> String
    #   resp.crl.crl_data #=> String
    #   resp.crl.crl_id #=> String
    #   resp.crl.enabled #=> Boolean
    #   resp.crl.name #=> String
    #   resp.crl.trust_anchor_arn #=> String
    #   resp.crl.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/DisableCrl AWS API Documentation
    #
    # @overload disable_crl(params = {})
    # @param [Hash] params ({})
    def disable_crl(params = {}, options = {})
      req = build_request(:disable_crl, params)
      req.send_request(options)
    end

    # Disables a profile. When disabled, temporary credential requests with
    # this profile fail.
    #
    # <b>Required permissions: </b> `rolesanywhere:DisableProfile`.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile.
    #
    # @return [Types::ProfileDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProfileDetailResponse#profile #profile} => Types::ProfileDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_profile({
    #     profile_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.created_at #=> Time
    #   resp.profile.created_by #=> String
    #   resp.profile.duration_seconds #=> Integer
    #   resp.profile.enabled #=> Boolean
    #   resp.profile.managed_policy_arns #=> Array
    #   resp.profile.managed_policy_arns[0] #=> String
    #   resp.profile.name #=> String
    #   resp.profile.profile_arn #=> String
    #   resp.profile.profile_id #=> String
    #   resp.profile.require_instance_properties #=> Boolean
    #   resp.profile.role_arns #=> Array
    #   resp.profile.role_arns[0] #=> String
    #   resp.profile.session_policy #=> String
    #   resp.profile.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/DisableProfile AWS API Documentation
    #
    # @overload disable_profile(params = {})
    # @param [Hash] params ({})
    def disable_profile(params = {}, options = {})
      req = build_request(:disable_profile, params)
      req.send_request(options)
    end

    # Disables a trust anchor. When disabled, temporary credential requests
    # specifying this trust anchor are unauthorized.
    #
    # <b>Required permissions: </b> `rolesanywhere:DisableTrustAnchor`.
    #
    # @option params [required, String] :trust_anchor_id
    #   The unique identifier of the trust anchor.
    #
    # @return [Types::TrustAnchorDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TrustAnchorDetailResponse#trust_anchor #trust_anchor} => Types::TrustAnchorDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_trust_anchor({
    #     trust_anchor_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_anchor.created_at #=> Time
    #   resp.trust_anchor.enabled #=> Boolean
    #   resp.trust_anchor.name #=> String
    #   resp.trust_anchor.notification_settings #=> Array
    #   resp.trust_anchor.notification_settings[0].channel #=> String, one of "ALL"
    #   resp.trust_anchor.notification_settings[0].configured_by #=> String
    #   resp.trust_anchor.notification_settings[0].enabled #=> Boolean
    #   resp.trust_anchor.notification_settings[0].event #=> String, one of "CA_CERTIFICATE_EXPIRY", "END_ENTITY_CERTIFICATE_EXPIRY"
    #   resp.trust_anchor.notification_settings[0].threshold #=> Integer
    #   resp.trust_anchor.source.source_data.acm_pca_arn #=> String
    #   resp.trust_anchor.source.source_data.x509_certificate_data #=> String
    #   resp.trust_anchor.source.source_type #=> String, one of "AWS_ACM_PCA", "CERTIFICATE_BUNDLE", "SELF_SIGNED_REPOSITORY"
    #   resp.trust_anchor.trust_anchor_arn #=> String
    #   resp.trust_anchor.trust_anchor_id #=> String
    #   resp.trust_anchor.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/DisableTrustAnchor AWS API Documentation
    #
    # @overload disable_trust_anchor(params = {})
    # @param [Hash] params ({})
    def disable_trust_anchor(params = {}, options = {})
      req = build_request(:disable_trust_anchor, params)
      req.send_request(options)
    end

    # Enables a certificate revocation list (CRL). When enabled,
    # certificates stored in the CRL are unauthorized to receive session
    # credentials.
    #
    # <b>Required permissions: </b> `rolesanywhere:EnableCrl`.
    #
    # @option params [required, String] :crl_id
    #   The unique identifier of the certificate revocation list (CRL).
    #
    # @return [Types::CrlDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CrlDetailResponse#crl #crl} => Types::CrlDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_crl({
    #     crl_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.crl.created_at #=> Time
    #   resp.crl.crl_arn #=> String
    #   resp.crl.crl_data #=> String
    #   resp.crl.crl_id #=> String
    #   resp.crl.enabled #=> Boolean
    #   resp.crl.name #=> String
    #   resp.crl.trust_anchor_arn #=> String
    #   resp.crl.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/EnableCrl AWS API Documentation
    #
    # @overload enable_crl(params = {})
    # @param [Hash] params ({})
    def enable_crl(params = {}, options = {})
      req = build_request(:enable_crl, params)
      req.send_request(options)
    end

    # Enables temporary credential requests for a profile.
    #
    # <b>Required permissions: </b> `rolesanywhere:EnableProfile`.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile.
    #
    # @return [Types::ProfileDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProfileDetailResponse#profile #profile} => Types::ProfileDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_profile({
    #     profile_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.created_at #=> Time
    #   resp.profile.created_by #=> String
    #   resp.profile.duration_seconds #=> Integer
    #   resp.profile.enabled #=> Boolean
    #   resp.profile.managed_policy_arns #=> Array
    #   resp.profile.managed_policy_arns[0] #=> String
    #   resp.profile.name #=> String
    #   resp.profile.profile_arn #=> String
    #   resp.profile.profile_id #=> String
    #   resp.profile.require_instance_properties #=> Boolean
    #   resp.profile.role_arns #=> Array
    #   resp.profile.role_arns[0] #=> String
    #   resp.profile.session_policy #=> String
    #   resp.profile.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/EnableProfile AWS API Documentation
    #
    # @overload enable_profile(params = {})
    # @param [Hash] params ({})
    def enable_profile(params = {}, options = {})
      req = build_request(:enable_profile, params)
      req.send_request(options)
    end

    # Enables a trust anchor. When enabled, certificates in the trust anchor
    # chain are authorized for trust validation.
    #
    # <b>Required permissions: </b> `rolesanywhere:EnableTrustAnchor`.
    #
    # @option params [required, String] :trust_anchor_id
    #   The unique identifier of the trust anchor.
    #
    # @return [Types::TrustAnchorDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TrustAnchorDetailResponse#trust_anchor #trust_anchor} => Types::TrustAnchorDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_trust_anchor({
    #     trust_anchor_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_anchor.created_at #=> Time
    #   resp.trust_anchor.enabled #=> Boolean
    #   resp.trust_anchor.name #=> String
    #   resp.trust_anchor.notification_settings #=> Array
    #   resp.trust_anchor.notification_settings[0].channel #=> String, one of "ALL"
    #   resp.trust_anchor.notification_settings[0].configured_by #=> String
    #   resp.trust_anchor.notification_settings[0].enabled #=> Boolean
    #   resp.trust_anchor.notification_settings[0].event #=> String, one of "CA_CERTIFICATE_EXPIRY", "END_ENTITY_CERTIFICATE_EXPIRY"
    #   resp.trust_anchor.notification_settings[0].threshold #=> Integer
    #   resp.trust_anchor.source.source_data.acm_pca_arn #=> String
    #   resp.trust_anchor.source.source_data.x509_certificate_data #=> String
    #   resp.trust_anchor.source.source_type #=> String, one of "AWS_ACM_PCA", "CERTIFICATE_BUNDLE", "SELF_SIGNED_REPOSITORY"
    #   resp.trust_anchor.trust_anchor_arn #=> String
    #   resp.trust_anchor.trust_anchor_id #=> String
    #   resp.trust_anchor.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/EnableTrustAnchor AWS API Documentation
    #
    # @overload enable_trust_anchor(params = {})
    # @param [Hash] params ({})
    def enable_trust_anchor(params = {}, options = {})
      req = build_request(:enable_trust_anchor, params)
      req.send_request(options)
    end

    # Gets a certificate revocation list (CRL).
    #
    # <b>Required permissions: </b> `rolesanywhere:GetCrl`.
    #
    # @option params [required, String] :crl_id
    #   The unique identifier of the certificate revocation list (CRL).
    #
    # @return [Types::CrlDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CrlDetailResponse#crl #crl} => Types::CrlDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_crl({
    #     crl_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.crl.created_at #=> Time
    #   resp.crl.crl_arn #=> String
    #   resp.crl.crl_data #=> String
    #   resp.crl.crl_id #=> String
    #   resp.crl.enabled #=> Boolean
    #   resp.crl.name #=> String
    #   resp.crl.trust_anchor_arn #=> String
    #   resp.crl.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/GetCrl AWS API Documentation
    #
    # @overload get_crl(params = {})
    # @param [Hash] params ({})
    def get_crl(params = {}, options = {})
      req = build_request(:get_crl, params)
      req.send_request(options)
    end

    # Gets a profile.
    #
    # <b>Required permissions: </b> `rolesanywhere:GetProfile`.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile.
    #
    # @return [Types::ProfileDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProfileDetailResponse#profile #profile} => Types::ProfileDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile({
    #     profile_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.created_at #=> Time
    #   resp.profile.created_by #=> String
    #   resp.profile.duration_seconds #=> Integer
    #   resp.profile.enabled #=> Boolean
    #   resp.profile.managed_policy_arns #=> Array
    #   resp.profile.managed_policy_arns[0] #=> String
    #   resp.profile.name #=> String
    #   resp.profile.profile_arn #=> String
    #   resp.profile.profile_id #=> String
    #   resp.profile.require_instance_properties #=> Boolean
    #   resp.profile.role_arns #=> Array
    #   resp.profile.role_arns[0] #=> String
    #   resp.profile.session_policy #=> String
    #   resp.profile.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/GetProfile AWS API Documentation
    #
    # @overload get_profile(params = {})
    # @param [Hash] params ({})
    def get_profile(params = {}, options = {})
      req = build_request(:get_profile, params)
      req.send_request(options)
    end

    # Gets a *subject*, which associates a certificate identity with
    # authentication attempts. The subject stores auditing information such
    # as the status of the last authentication attempt, the certificate data
    # used in the attempt, and the last time the associated identity
    # attempted authentication.
    #
    # <b>Required permissions: </b> `rolesanywhere:GetSubject`.
    #
    # @option params [required, String] :subject_id
    #   The unique identifier of the subject.
    #
    # @return [Types::SubjectDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubjectDetailResponse#subject #subject} => Types::SubjectDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subject({
    #     subject_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subject.created_at #=> Time
    #   resp.subject.credentials #=> Array
    #   resp.subject.credentials[0].enabled #=> Boolean
    #   resp.subject.credentials[0].failed #=> Boolean
    #   resp.subject.credentials[0].issuer #=> String
    #   resp.subject.credentials[0].seen_at #=> Time
    #   resp.subject.credentials[0].serial_number #=> String
    #   resp.subject.credentials[0].x509_certificate_data #=> String
    #   resp.subject.enabled #=> Boolean
    #   resp.subject.instance_properties #=> Array
    #   resp.subject.instance_properties[0].failed #=> Boolean
    #   resp.subject.instance_properties[0].properties #=> Hash
    #   resp.subject.instance_properties[0].properties["InstancePropertyMapKeyString"] #=> String
    #   resp.subject.instance_properties[0].seen_at #=> Time
    #   resp.subject.last_seen_at #=> Time
    #   resp.subject.subject_arn #=> String
    #   resp.subject.subject_id #=> String
    #   resp.subject.updated_at #=> Time
    #   resp.subject.x509_subject #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/GetSubject AWS API Documentation
    #
    # @overload get_subject(params = {})
    # @param [Hash] params ({})
    def get_subject(params = {}, options = {})
      req = build_request(:get_subject, params)
      req.send_request(options)
    end

    # Gets a trust anchor.
    #
    # <b>Required permissions: </b> `rolesanywhere:GetTrustAnchor`.
    #
    # @option params [required, String] :trust_anchor_id
    #   The unique identifier of the trust anchor.
    #
    # @return [Types::TrustAnchorDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TrustAnchorDetailResponse#trust_anchor #trust_anchor} => Types::TrustAnchorDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trust_anchor({
    #     trust_anchor_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_anchor.created_at #=> Time
    #   resp.trust_anchor.enabled #=> Boolean
    #   resp.trust_anchor.name #=> String
    #   resp.trust_anchor.notification_settings #=> Array
    #   resp.trust_anchor.notification_settings[0].channel #=> String, one of "ALL"
    #   resp.trust_anchor.notification_settings[0].configured_by #=> String
    #   resp.trust_anchor.notification_settings[0].enabled #=> Boolean
    #   resp.trust_anchor.notification_settings[0].event #=> String, one of "CA_CERTIFICATE_EXPIRY", "END_ENTITY_CERTIFICATE_EXPIRY"
    #   resp.trust_anchor.notification_settings[0].threshold #=> Integer
    #   resp.trust_anchor.source.source_data.acm_pca_arn #=> String
    #   resp.trust_anchor.source.source_data.x509_certificate_data #=> String
    #   resp.trust_anchor.source.source_type #=> String, one of "AWS_ACM_PCA", "CERTIFICATE_BUNDLE", "SELF_SIGNED_REPOSITORY"
    #   resp.trust_anchor.trust_anchor_arn #=> String
    #   resp.trust_anchor.trust_anchor_id #=> String
    #   resp.trust_anchor.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/GetTrustAnchor AWS API Documentation
    #
    # @overload get_trust_anchor(params = {})
    # @param [Hash] params ({})
    def get_trust_anchor(params = {}, options = {})
      req = build_request(:get_trust_anchor, params)
      req.send_request(options)
    end

    # Imports the certificate revocation list (CRL). A CRL is a list of
    # certificates that have been revoked by the issuing certificate
    # Authority (CA). IAM Roles Anywhere validates against the CRL before
    # issuing credentials.
    #
    # <b>Required permissions: </b> `rolesanywhere:ImportCrl`.
    #
    # @option params [required, String, StringIO, File] :crl_data
    #   The x509 v3 specified certificate revocation list (CRL).
    #
    # @option params [Boolean] :enabled
    #   Specifies whether the certificate revocation list (CRL) is enabled.
    #
    # @option params [required, String] :name
    #   The name of the certificate revocation list (CRL).
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to attach to the certificate revocation list (CRL).
    #
    # @option params [required, String] :trust_anchor_arn
    #   The ARN of the TrustAnchor the certificate revocation list (CRL) will
    #   provide revocation for.
    #
    # @return [Types::CrlDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CrlDetailResponse#crl #crl} => Types::CrlDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_crl({
    #     crl_data: "data", # required
    #     enabled: false,
    #     name: "ResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     trust_anchor_arn: "TrustAnchorArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.crl.created_at #=> Time
    #   resp.crl.crl_arn #=> String
    #   resp.crl.crl_data #=> String
    #   resp.crl.crl_id #=> String
    #   resp.crl.enabled #=> Boolean
    #   resp.crl.name #=> String
    #   resp.crl.trust_anchor_arn #=> String
    #   resp.crl.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ImportCrl AWS API Documentation
    #
    # @overload import_crl(params = {})
    # @param [Hash] params ({})
    def import_crl(params = {}, options = {})
      req = build_request(:import_crl, params)
      req.send_request(options)
    end

    # Lists all certificate revocation lists (CRL) in the authenticated
    # account and Amazon Web Services Region.
    #
    # <b>Required permissions: </b> `rolesanywhere:ListCrls`.
    #
    # @option params [String] :next_token
    #   A token that indicates where the output should continue from, if a
    #   previous request did not show all results. To get the next results,
    #   make the request again with this value.
    #
    # @option params [Integer] :page_size
    #   The number of resources in the paginated list.
    #
    # @return [Types::ListCrlsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCrlsResponse#crls #crls} => Array&lt;Types::CrlDetail&gt;
    #   * {Types::ListCrlsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_crls({
    #     next_token: "ListRequestNextTokenString",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.crls #=> Array
    #   resp.crls[0].created_at #=> Time
    #   resp.crls[0].crl_arn #=> String
    #   resp.crls[0].crl_data #=> String
    #   resp.crls[0].crl_id #=> String
    #   resp.crls[0].enabled #=> Boolean
    #   resp.crls[0].name #=> String
    #   resp.crls[0].trust_anchor_arn #=> String
    #   resp.crls[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListCrls AWS API Documentation
    #
    # @overload list_crls(params = {})
    # @param [Hash] params ({})
    def list_crls(params = {}, options = {})
      req = build_request(:list_crls, params)
      req.send_request(options)
    end

    # Lists all profiles in the authenticated account and Amazon Web
    # Services Region.
    #
    # <b>Required permissions: </b> `rolesanywhere:ListProfiles`.
    #
    # @option params [String] :next_token
    #   A token that indicates where the output should continue from, if a
    #   previous request did not show all results. To get the next results,
    #   make the request again with this value.
    #
    # @option params [Integer] :page_size
    #   The number of resources in the paginated list.
    #
    # @return [Types::ListProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfilesResponse#next_token #next_token} => String
    #   * {Types::ListProfilesResponse#profiles #profiles} => Array&lt;Types::ProfileDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profiles({
    #     next_token: "ListRequestNextTokenString",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.profiles #=> Array
    #   resp.profiles[0].created_at #=> Time
    #   resp.profiles[0].created_by #=> String
    #   resp.profiles[0].duration_seconds #=> Integer
    #   resp.profiles[0].enabled #=> Boolean
    #   resp.profiles[0].managed_policy_arns #=> Array
    #   resp.profiles[0].managed_policy_arns[0] #=> String
    #   resp.profiles[0].name #=> String
    #   resp.profiles[0].profile_arn #=> String
    #   resp.profiles[0].profile_id #=> String
    #   resp.profiles[0].require_instance_properties #=> Boolean
    #   resp.profiles[0].role_arns #=> Array
    #   resp.profiles[0].role_arns[0] #=> String
    #   resp.profiles[0].session_policy #=> String
    #   resp.profiles[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListProfiles AWS API Documentation
    #
    # @overload list_profiles(params = {})
    # @param [Hash] params ({})
    def list_profiles(params = {}, options = {})
      req = build_request(:list_profiles, params)
      req.send_request(options)
    end

    # Lists the subjects in the authenticated account and Amazon Web
    # Services Region.
    #
    # <b>Required permissions: </b> `rolesanywhere:ListSubjects`.
    #
    # @option params [String] :next_token
    #   A token that indicates where the output should continue from, if a
    #   previous request did not show all results. To get the next results,
    #   make the request again with this value.
    #
    # @option params [Integer] :page_size
    #   The number of resources in the paginated list.
    #
    # @return [Types::ListSubjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubjectsResponse#next_token #next_token} => String
    #   * {Types::ListSubjectsResponse#subjects #subjects} => Array&lt;Types::SubjectSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subjects({
    #     next_token: "ListRequestNextTokenString",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.subjects #=> Array
    #   resp.subjects[0].created_at #=> Time
    #   resp.subjects[0].enabled #=> Boolean
    #   resp.subjects[0].last_seen_at #=> Time
    #   resp.subjects[0].subject_arn #=> String
    #   resp.subjects[0].subject_id #=> String
    #   resp.subjects[0].updated_at #=> Time
    #   resp.subjects[0].x509_subject #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListSubjects AWS API Documentation
    #
    # @overload list_subjects(params = {})
    # @param [Hash] params ({})
    def list_subjects(params = {}, options = {})
      req = build_request(:list_subjects, params)
      req.send_request(options)
    end

    # Lists the tags attached to the resource.
    #
    # <b>Required permissions: </b> `rolesanywhere:ListTagsForResource`.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the trust anchors in the authenticated account and Amazon Web
    # Services Region.
    #
    # <b>Required permissions: </b> `rolesanywhere:ListTrustAnchors`.
    #
    # @option params [String] :next_token
    #   A token that indicates where the output should continue from, if a
    #   previous request did not show all results. To get the next results,
    #   make the request again with this value.
    #
    # @option params [Integer] :page_size
    #   The number of resources in the paginated list.
    #
    # @return [Types::ListTrustAnchorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrustAnchorsResponse#next_token #next_token} => String
    #   * {Types::ListTrustAnchorsResponse#trust_anchors #trust_anchors} => Array&lt;Types::TrustAnchorDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trust_anchors({
    #     next_token: "ListRequestNextTokenString",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.trust_anchors #=> Array
    #   resp.trust_anchors[0].created_at #=> Time
    #   resp.trust_anchors[0].enabled #=> Boolean
    #   resp.trust_anchors[0].name #=> String
    #   resp.trust_anchors[0].notification_settings #=> Array
    #   resp.trust_anchors[0].notification_settings[0].channel #=> String, one of "ALL"
    #   resp.trust_anchors[0].notification_settings[0].configured_by #=> String
    #   resp.trust_anchors[0].notification_settings[0].enabled #=> Boolean
    #   resp.trust_anchors[0].notification_settings[0].event #=> String, one of "CA_CERTIFICATE_EXPIRY", "END_ENTITY_CERTIFICATE_EXPIRY"
    #   resp.trust_anchors[0].notification_settings[0].threshold #=> Integer
    #   resp.trust_anchors[0].source.source_data.acm_pca_arn #=> String
    #   resp.trust_anchors[0].source.source_data.x509_certificate_data #=> String
    #   resp.trust_anchors[0].source.source_type #=> String, one of "AWS_ACM_PCA", "CERTIFICATE_BUNDLE", "SELF_SIGNED_REPOSITORY"
    #   resp.trust_anchors[0].trust_anchor_arn #=> String
    #   resp.trust_anchors[0].trust_anchor_id #=> String
    #   resp.trust_anchors[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListTrustAnchors AWS API Documentation
    #
    # @overload list_trust_anchors(params = {})
    # @param [Hash] params ({})
    def list_trust_anchors(params = {}, options = {})
      req = build_request(:list_trust_anchors, params)
      req.send_request(options)
    end

    # Attaches a list of *notification settings* to a trust anchor.
    #
    # A notification setting includes information such as event name,
    # threshold, status of the notification setting, and the channel to
    # notify.
    #
    # <b>Required permissions: </b> `rolesanywhere:PutNotificationSettings`.
    #
    # @option params [required, Array<Types::NotificationSetting>] :notification_settings
    #   A list of notification settings to be associated to the trust anchor.
    #
    # @option params [required, String] :trust_anchor_id
    #   The unique identifier of the trust anchor.
    #
    # @return [Types::PutNotificationSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutNotificationSettingsResponse#trust_anchor #trust_anchor} => Types::TrustAnchorDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_notification_settings({
    #     notification_settings: [ # required
    #       {
    #         channel: "ALL", # accepts ALL
    #         enabled: false, # required
    #         event: "CA_CERTIFICATE_EXPIRY", # required, accepts CA_CERTIFICATE_EXPIRY, END_ENTITY_CERTIFICATE_EXPIRY
    #         threshold: 1,
    #       },
    #     ],
    #     trust_anchor_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_anchor.created_at #=> Time
    #   resp.trust_anchor.enabled #=> Boolean
    #   resp.trust_anchor.name #=> String
    #   resp.trust_anchor.notification_settings #=> Array
    #   resp.trust_anchor.notification_settings[0].channel #=> String, one of "ALL"
    #   resp.trust_anchor.notification_settings[0].configured_by #=> String
    #   resp.trust_anchor.notification_settings[0].enabled #=> Boolean
    #   resp.trust_anchor.notification_settings[0].event #=> String, one of "CA_CERTIFICATE_EXPIRY", "END_ENTITY_CERTIFICATE_EXPIRY"
    #   resp.trust_anchor.notification_settings[0].threshold #=> Integer
    #   resp.trust_anchor.source.source_data.acm_pca_arn #=> String
    #   resp.trust_anchor.source.source_data.x509_certificate_data #=> String
    #   resp.trust_anchor.source.source_type #=> String, one of "AWS_ACM_PCA", "CERTIFICATE_BUNDLE", "SELF_SIGNED_REPOSITORY"
    #   resp.trust_anchor.trust_anchor_arn #=> String
    #   resp.trust_anchor.trust_anchor_id #=> String
    #   resp.trust_anchor.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/PutNotificationSettings AWS API Documentation
    #
    # @overload put_notification_settings(params = {})
    # @param [Hash] params ({})
    def put_notification_settings(params = {}, options = {})
      req = build_request(:put_notification_settings, params)
      req.send_request(options)
    end

    # Resets the *custom notification setting* to IAM Roles Anywhere default
    # setting.
    #
    # <b>Required permissions: </b>
    # `rolesanywhere:ResetNotificationSettings`.
    #
    # @option params [required, Array<Types::NotificationSettingKey>] :notification_setting_keys
    #   A list of notification setting keys to reset. A notification setting
    #   key includes the event and the channel.
    #
    # @option params [required, String] :trust_anchor_id
    #   The unique identifier of the trust anchor.
    #
    # @return [Types::ResetNotificationSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetNotificationSettingsResponse#trust_anchor #trust_anchor} => Types::TrustAnchorDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_notification_settings({
    #     notification_setting_keys: [ # required
    #       {
    #         channel: "ALL", # accepts ALL
    #         event: "CA_CERTIFICATE_EXPIRY", # required, accepts CA_CERTIFICATE_EXPIRY, END_ENTITY_CERTIFICATE_EXPIRY
    #       },
    #     ],
    #     trust_anchor_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_anchor.created_at #=> Time
    #   resp.trust_anchor.enabled #=> Boolean
    #   resp.trust_anchor.name #=> String
    #   resp.trust_anchor.notification_settings #=> Array
    #   resp.trust_anchor.notification_settings[0].channel #=> String, one of "ALL"
    #   resp.trust_anchor.notification_settings[0].configured_by #=> String
    #   resp.trust_anchor.notification_settings[0].enabled #=> Boolean
    #   resp.trust_anchor.notification_settings[0].event #=> String, one of "CA_CERTIFICATE_EXPIRY", "END_ENTITY_CERTIFICATE_EXPIRY"
    #   resp.trust_anchor.notification_settings[0].threshold #=> Integer
    #   resp.trust_anchor.source.source_data.acm_pca_arn #=> String
    #   resp.trust_anchor.source.source_data.x509_certificate_data #=> String
    #   resp.trust_anchor.source.source_type #=> String, one of "AWS_ACM_PCA", "CERTIFICATE_BUNDLE", "SELF_SIGNED_REPOSITORY"
    #   resp.trust_anchor.trust_anchor_arn #=> String
    #   resp.trust_anchor.trust_anchor_id #=> String
    #   resp.trust_anchor.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ResetNotificationSettings AWS API Documentation
    #
    # @overload reset_notification_settings(params = {})
    # @param [Hash] params ({})
    def reset_notification_settings(params = {}, options = {})
      req = build_request(:reset_notification_settings, params)
      req.send_request(options)
    end

    # Attaches tags to a resource.
    #
    # <b>Required permissions: </b> `rolesanywhere:TagResource`.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to attach to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the resource.
    #
    # <b>Required permissions: </b> `rolesanywhere:UntagResource`.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys. Tag keys are the unique identifiers of tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the certificate revocation list (CRL). A CRL is a list of
    # certificates that have been revoked by the issuing certificate
    # authority (CA). IAM Roles Anywhere validates against the CRL before
    # issuing credentials.
    #
    # <b>Required permissions: </b> `rolesanywhere:UpdateCrl`.
    #
    # @option params [String, StringIO, File] :crl_data
    #   The x509 v3 specified certificate revocation list (CRL).
    #
    # @option params [required, String] :crl_id
    #   The unique identifier of the certificate revocation list (CRL).
    #
    # @option params [String] :name
    #   The name of the Crl.
    #
    # @return [Types::CrlDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CrlDetailResponse#crl #crl} => Types::CrlDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_crl({
    #     crl_data: "data",
    #     crl_id: "Uuid", # required
    #     name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.crl.created_at #=> Time
    #   resp.crl.crl_arn #=> String
    #   resp.crl.crl_data #=> String
    #   resp.crl.crl_id #=> String
    #   resp.crl.enabled #=> Boolean
    #   resp.crl.name #=> String
    #   resp.crl.trust_anchor_arn #=> String
    #   resp.crl.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/UpdateCrl AWS API Documentation
    #
    # @overload update_crl(params = {})
    # @param [Hash] params ({})
    def update_crl(params = {}, options = {})
      req = build_request(:update_crl, params)
      req.send_request(options)
    end

    # Updates a *profile*, a list of the roles that IAM Roles Anywhere
    # service is trusted to assume. You use profiles to intersect
    # permissions with IAM managed policies.
    #
    # <b>Required permissions: </b> `rolesanywhere:UpdateProfile`.
    #
    # @option params [Integer] :duration_seconds
    #   The number of seconds the vended session credentials are valid for.
    #
    # @option params [Array<String>] :managed_policy_arns
    #   A list of managed policy ARNs that apply to the vended session
    #   credentials.
    #
    # @option params [String] :name
    #   The name of the profile.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile.
    #
    # @option params [Array<String>] :role_arns
    #   A list of IAM roles that this profile can assume in a temporary
    #   credential request.
    #
    # @option params [String] :session_policy
    #   A session policy that applies to the trust boundary of the vended
    #   session credentials.
    #
    # @return [Types::ProfileDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProfileDetailResponse#profile #profile} => Types::ProfileDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile({
    #     duration_seconds: 1,
    #     managed_policy_arns: ["ManagedPolicyListMemberString"],
    #     name: "ResourceName",
    #     profile_id: "Uuid", # required
    #     role_arns: ["RoleArn"],
    #     session_policy: "UpdateProfileRequestSessionPolicyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.created_at #=> Time
    #   resp.profile.created_by #=> String
    #   resp.profile.duration_seconds #=> Integer
    #   resp.profile.enabled #=> Boolean
    #   resp.profile.managed_policy_arns #=> Array
    #   resp.profile.managed_policy_arns[0] #=> String
    #   resp.profile.name #=> String
    #   resp.profile.profile_arn #=> String
    #   resp.profile.profile_id #=> String
    #   resp.profile.require_instance_properties #=> Boolean
    #   resp.profile.role_arns #=> Array
    #   resp.profile.role_arns[0] #=> String
    #   resp.profile.session_policy #=> String
    #   resp.profile.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/UpdateProfile AWS API Documentation
    #
    # @overload update_profile(params = {})
    # @param [Hash] params ({})
    def update_profile(params = {}, options = {})
      req = build_request(:update_profile, params)
      req.send_request(options)
    end

    # Updates a trust anchor. You establish trust between IAM Roles Anywhere
    # and your certificate authority (CA) by configuring a trust anchor. You
    # can define a trust anchor as a reference to an Private Certificate
    # Authority (Private CA) or by uploading a CA certificate. Your Amazon
    # Web Services workloads can authenticate with the trust anchor using
    # certificates issued by the CA in exchange for temporary Amazon Web
    # Services credentials.
    #
    # <b>Required permissions: </b> `rolesanywhere:UpdateTrustAnchor`.
    #
    # @option params [String] :name
    #   The name of the trust anchor.
    #
    # @option params [Types::Source] :source
    #   The trust anchor type and its related certificate data.
    #
    # @option params [required, String] :trust_anchor_id
    #   The unique identifier of the trust anchor.
    #
    # @return [Types::TrustAnchorDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TrustAnchorDetailResponse#trust_anchor #trust_anchor} => Types::TrustAnchorDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trust_anchor({
    #     name: "ResourceName",
    #     source: {
    #       source_data: {
    #         acm_pca_arn: "String",
    #         x509_certificate_data: "SourceDataX509CertificateDataString",
    #       },
    #       source_type: "AWS_ACM_PCA", # accepts AWS_ACM_PCA, CERTIFICATE_BUNDLE, SELF_SIGNED_REPOSITORY
    #     },
    #     trust_anchor_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_anchor.created_at #=> Time
    #   resp.trust_anchor.enabled #=> Boolean
    #   resp.trust_anchor.name #=> String
    #   resp.trust_anchor.notification_settings #=> Array
    #   resp.trust_anchor.notification_settings[0].channel #=> String, one of "ALL"
    #   resp.trust_anchor.notification_settings[0].configured_by #=> String
    #   resp.trust_anchor.notification_settings[0].enabled #=> Boolean
    #   resp.trust_anchor.notification_settings[0].event #=> String, one of "CA_CERTIFICATE_EXPIRY", "END_ENTITY_CERTIFICATE_EXPIRY"
    #   resp.trust_anchor.notification_settings[0].threshold #=> Integer
    #   resp.trust_anchor.source.source_data.acm_pca_arn #=> String
    #   resp.trust_anchor.source.source_data.x509_certificate_data #=> String
    #   resp.trust_anchor.source.source_type #=> String, one of "AWS_ACM_PCA", "CERTIFICATE_BUNDLE", "SELF_SIGNED_REPOSITORY"
    #   resp.trust_anchor.trust_anchor_arn #=> String
    #   resp.trust_anchor.trust_anchor_id #=> String
    #   resp.trust_anchor.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/UpdateTrustAnchor AWS API Documentation
    #
    # @overload update_trust_anchor(params = {})
    # @param [Hash] params ({})
    def update_trust_anchor(params = {}, options = {})
      req = build_request(:update_trust_anchor, params)
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
      context[:gem_name] = 'aws-sdk-rolesanywhere'
      context[:gem_version] = '1.8.0'
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
