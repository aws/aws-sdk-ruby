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

Aws::Plugins::GlobalConfiguration.add_identifier(:datazone)

module Aws::DataZone
  # An API client for DataZone.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DataZone::Client.new(
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

    @identifier = :datazone

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
    add_plugin(Aws::DataZone::Plugins::Endpoints)

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
    #   @option options [Aws::DataZone::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::DataZone::EndpointParameters`
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

    # Accepts automatically generated business-friendly metadata for your
    # Amazon DataZone assets.
    #
    # @option params [Array<Types::AcceptChoice>] :accept_choices
    #
    # @option params [Types::AcceptRule] :accept_rule
    #   Specifies the rule (or the conditions) under which a prediction can be
    #   accepted.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #
    # @option params [String] :revision
    #
    # @return [Types::AcceptPredictionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptPredictionsOutput#asset_id #asset_id} => String
    #   * {Types::AcceptPredictionsOutput#domain_id #domain_id} => String
    #   * {Types::AcceptPredictionsOutput#revision #revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_predictions({
    #     accept_choices: [
    #       {
    #         prediction_choice: 1,
    #         prediction_target: "String",
    #       },
    #     ],
    #     accept_rule: {
    #       rule: "ALL", # accepts ALL, NONE
    #       threshold: 1.0,
    #     },
    #     client_token: "ClientToken",
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.domain_id #=> String
    #   resp.revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptPredictions AWS API Documentation
    #
    # @overload accept_predictions(params = {})
    # @param [Hash] params ({})
    def accept_predictions(params = {}, options = {})
      req = build_request(:accept_predictions, params)
      req.send_request(options)
    end

    # Accepts a subscription request to a specific asset.
    #
    # @option params [String] :decision_comment
    #   A description that specifies the reason for accepting the specified
    #   subscription request.
    #
    # @option params [required, String] :domain_identifier
    #   The Amazon DataZone domain where the specified subscription request is
    #   being accepted.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the subscription request that is to be
    #   accepted.
    #
    # @return [Types::AcceptSubscriptionRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptSubscriptionRequestOutput#created_at #created_at} => Time
    #   * {Types::AcceptSubscriptionRequestOutput#created_by #created_by} => String
    #   * {Types::AcceptSubscriptionRequestOutput#decision_comment #decision_comment} => String
    #   * {Types::AcceptSubscriptionRequestOutput#domain_id #domain_id} => String
    #   * {Types::AcceptSubscriptionRequestOutput#id #id} => String
    #   * {Types::AcceptSubscriptionRequestOutput#request_reason #request_reason} => String
    #   * {Types::AcceptSubscriptionRequestOutput#reviewer_id #reviewer_id} => String
    #   * {Types::AcceptSubscriptionRequestOutput#status #status} => String
    #   * {Types::AcceptSubscriptionRequestOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::AcceptSubscriptionRequestOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::AcceptSubscriptionRequestOutput#updated_at #updated_at} => Time
    #   * {Types::AcceptSubscriptionRequestOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_subscription_request({
    #     decision_comment: "DecisionComment",
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.decision_comment #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.request_reason #=> String
    #   resp.reviewer_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptSubscriptionRequest AWS API Documentation
    #
    # @overload accept_subscription_request(params = {})
    # @param [Hash] params ({})
    def accept_subscription_request(params = {}, options = {})
      req = build_request(:accept_subscription_request, params)
      req.send_request(options)
    end

    # Cancels the subscription to the specified asset.
    #
    # @option params [required, String] :domain_identifier
    #   The unique identifier of the Amazon DataZone domain where the
    #   subscription request is being cancelled.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the subscription that is being cancelled.
    #
    # @return [Types::CancelSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelSubscriptionOutput#created_at #created_at} => Time
    #   * {Types::CancelSubscriptionOutput#created_by #created_by} => String
    #   * {Types::CancelSubscriptionOutput#domain_id #domain_id} => String
    #   * {Types::CancelSubscriptionOutput#id #id} => String
    #   * {Types::CancelSubscriptionOutput#retain_permissions #retain_permissions} => Boolean
    #   * {Types::CancelSubscriptionOutput#status #status} => String
    #   * {Types::CancelSubscriptionOutput#subscribed_listing #subscribed_listing} => Types::SubscribedListing
    #   * {Types::CancelSubscriptionOutput#subscribed_principal #subscribed_principal} => Types::SubscribedPrincipal
    #   * {Types::CancelSubscriptionOutput#subscription_request_id #subscription_request_id} => String
    #   * {Types::CancelSubscriptionOutput#updated_at #updated_at} => Time
    #   * {Types::CancelSubscriptionOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_subscription({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.retain_permissions #=> Boolean
    #   resp.status #=> String, one of "APPROVED", "REVOKED", "CANCELLED"
    #   resp.subscribed_listing.description #=> String
    #   resp.subscribed_listing.id #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_id #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_type #=> String
    #   resp.subscribed_listing.item.asset_listing.forms #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listing.name #=> String
    #   resp.subscribed_listing.owner_project_id #=> String
    #   resp.subscribed_listing.owner_project_name #=> String
    #   resp.subscribed_listing.revision #=> String
    #   resp.subscribed_principal.project.id #=> String
    #   resp.subscribed_principal.project.name #=> String
    #   resp.subscription_request_id #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CancelSubscription AWS API Documentation
    #
    # @overload cancel_subscription(params = {})
    # @param [Hash] params ({})
    def cancel_subscription(params = {}, options = {})
      req = build_request(:cancel_subscription, params)
      req.send_request(options)
    end

    # Creates an asset in Amazon DataZone catalog.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   Asset description.
    #
    # @option params [required, String] :domain_identifier
    #   Amazon DataZone domain where the asset is created.
    #
    # @option params [String] :external_identifier
    #
    # @option params [Array<Types::FormInput>] :forms_input
    #   Metadata forms attached to the asset.
    #
    # @option params [Array<String>] :glossary_terms
    #   Glossary terms attached to the asset.
    #
    # @option params [required, String] :name
    #   Asset name.
    #
    # @option params [required, String] :owning_project_identifier
    #   The unique identifier of the project that owns this asset.
    #
    # @option params [Types::PredictionConfiguration] :prediction_configuration
    #   The configuration of the automatically generated business-friendly
    #   metadata for the asset.
    #
    # @option params [required, String] :type_identifier
    #   The unique identifier of this asset's type.
    #
    # @option params [String] :type_revision
    #   The revision of this asset's type.
    #
    # @return [Types::CreateAssetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetOutput#created_at #created_at} => Time
    #   * {Types::CreateAssetOutput#created_by #created_by} => String
    #   * {Types::CreateAssetOutput#description #description} => String
    #   * {Types::CreateAssetOutput#domain_id #domain_id} => String
    #   * {Types::CreateAssetOutput#external_identifier #external_identifier} => String
    #   * {Types::CreateAssetOutput#first_revision_created_at #first_revision_created_at} => Time
    #   * {Types::CreateAssetOutput#first_revision_created_by #first_revision_created_by} => String
    #   * {Types::CreateAssetOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateAssetOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateAssetOutput#id #id} => String
    #   * {Types::CreateAssetOutput#listing #listing} => Types::AssetListingDetails
    #   * {Types::CreateAssetOutput#name #name} => String
    #   * {Types::CreateAssetOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateAssetOutput#prediction_configuration #prediction_configuration} => Types::PredictionConfiguration
    #   * {Types::CreateAssetOutput#read_only_forms_output #read_only_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateAssetOutput#revision #revision} => String
    #   * {Types::CreateAssetOutput#type_identifier #type_identifier} => String
    #   * {Types::CreateAssetOutput#type_revision #type_revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     external_identifier: "ExternalIdentifier",
    #     forms_input: [
    #       {
    #         content: "FormInputContentString",
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "Revision",
    #       },
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     name: "AssetName", # required
    #     owning_project_identifier: "ProjectId", # required
    #     prediction_configuration: {
    #       business_name_generation: {
    #         enabled: false,
    #       },
    #     },
    #     type_identifier: "AssetTypeIdentifier", # required
    #     type_revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.external_identifier #=> String
    #   resp.first_revision_created_at #=> Time
    #   resp.first_revision_created_by #=> String
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].content #=> String
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.listing.listing_id #=> String
    #   resp.listing.listing_status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #   resp.name #=> String
    #   resp.owning_project_id #=> String
    #   resp.prediction_configuration.business_name_generation.enabled #=> Boolean
    #   resp.read_only_forms_output #=> Array
    #   resp.read_only_forms_output[0].content #=> String
    #   resp.read_only_forms_output[0].form_name #=> String
    #   resp.read_only_forms_output[0].type_name #=> String
    #   resp.read_only_forms_output[0].type_revision #=> String
    #   resp.revision #=> String
    #   resp.type_identifier #=> String
    #   resp.type_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAsset AWS API Documentation
    #
    # @overload create_asset(params = {})
    # @param [Hash] params ({})
    def create_asset(params = {}, options = {})
      req = build_request(:create_asset, params)
      req.send_request(options)
    end

    # Creates a revision of the asset.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The revised description of the asset.
    #
    # @option params [required, String] :domain_identifier
    #   The unique identifier of the domain where the asset is being revised.
    #
    # @option params [Array<Types::FormInput>] :forms_input
    #   The metadata forms to be attached to the asset as part of asset
    #   revision.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms to be attached to the asset as part of asset
    #   revision.
    #
    # @option params [required, String] :identifier
    #   The identifier of the asset.
    #
    # @option params [required, String] :name
    #   Te revised name of the asset.
    #
    # @option params [Types::PredictionConfiguration] :prediction_configuration
    #   The configuration of the automatically generated business-friendly
    #   metadata for the asset.
    #
    # @option params [String] :type_revision
    #   The revision type of the asset.
    #
    # @return [Types::CreateAssetRevisionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetRevisionOutput#created_at #created_at} => Time
    #   * {Types::CreateAssetRevisionOutput#created_by #created_by} => String
    #   * {Types::CreateAssetRevisionOutput#description #description} => String
    #   * {Types::CreateAssetRevisionOutput#domain_id #domain_id} => String
    #   * {Types::CreateAssetRevisionOutput#external_identifier #external_identifier} => String
    #   * {Types::CreateAssetRevisionOutput#first_revision_created_at #first_revision_created_at} => Time
    #   * {Types::CreateAssetRevisionOutput#first_revision_created_by #first_revision_created_by} => String
    #   * {Types::CreateAssetRevisionOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateAssetRevisionOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateAssetRevisionOutput#id #id} => String
    #   * {Types::CreateAssetRevisionOutput#listing #listing} => Types::AssetListingDetails
    #   * {Types::CreateAssetRevisionOutput#name #name} => String
    #   * {Types::CreateAssetRevisionOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateAssetRevisionOutput#prediction_configuration #prediction_configuration} => Types::PredictionConfiguration
    #   * {Types::CreateAssetRevisionOutput#read_only_forms_output #read_only_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateAssetRevisionOutput#revision #revision} => String
    #   * {Types::CreateAssetRevisionOutput#type_identifier #type_identifier} => String
    #   * {Types::CreateAssetRevisionOutput#type_revision #type_revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset_revision({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     forms_input: [
    #       {
    #         content: "FormInputContentString",
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "Revision",
    #       },
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     identifier: "AssetIdentifier", # required
    #     name: "AssetName", # required
    #     prediction_configuration: {
    #       business_name_generation: {
    #         enabled: false,
    #       },
    #     },
    #     type_revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.external_identifier #=> String
    #   resp.first_revision_created_at #=> Time
    #   resp.first_revision_created_by #=> String
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].content #=> String
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.listing.listing_id #=> String
    #   resp.listing.listing_status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #   resp.name #=> String
    #   resp.owning_project_id #=> String
    #   resp.prediction_configuration.business_name_generation.enabled #=> Boolean
    #   resp.read_only_forms_output #=> Array
    #   resp.read_only_forms_output[0].content #=> String
    #   resp.read_only_forms_output[0].form_name #=> String
    #   resp.read_only_forms_output[0].type_name #=> String
    #   resp.read_only_forms_output[0].type_revision #=> String
    #   resp.revision #=> String
    #   resp.type_identifier #=> String
    #   resp.type_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetRevision AWS API Documentation
    #
    # @overload create_asset_revision(params = {})
    # @param [Hash] params ({})
    def create_asset_revision(params = {}, options = {})
      req = build_request(:create_asset_revision, params)
      req.send_request(options)
    end

    # Creates a custom asset type.
    #
    # @option params [String] :description
    #   The descripton of the custom asset type.
    #
    # @option params [required, String] :domain_identifier
    #   The unique identifier of the Amazon DataZone domain where the custom
    #   asset type is being created.
    #
    # @option params [required, Hash<String,Types::FormEntryInput>] :forms_input
    #   The metadata forms that are to be attached to the custom asset type.
    #
    # @option params [required, String] :name
    #   The name of the custom asset type.
    #
    # @option params [required, String] :owning_project_identifier
    #   The identifier of the Amazon DataZone project that is to own the
    #   custom asset type.
    #
    # @return [Types::CreateAssetTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetTypeOutput#created_at #created_at} => Time
    #   * {Types::CreateAssetTypeOutput#created_by #created_by} => String
    #   * {Types::CreateAssetTypeOutput#description #description} => String
    #   * {Types::CreateAssetTypeOutput#domain_id #domain_id} => String
    #   * {Types::CreateAssetTypeOutput#forms_output #forms_output} => Hash&lt;String,Types::FormEntryOutput&gt;
    #   * {Types::CreateAssetTypeOutput#name #name} => String
    #   * {Types::CreateAssetTypeOutput#origin_domain_id #origin_domain_id} => String
    #   * {Types::CreateAssetTypeOutput#origin_project_id #origin_project_id} => String
    #   * {Types::CreateAssetTypeOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateAssetTypeOutput#revision #revision} => String
    #   * {Types::CreateAssetTypeOutput#updated_at #updated_at} => Time
    #   * {Types::CreateAssetTypeOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset_type({
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     forms_input: { # required
    #       "FormName" => {
    #         required: false,
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision", # required
    #       },
    #     },
    #     name: "TypeName", # required
    #     owning_project_identifier: "ProjectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.forms_output #=> Hash
    #   resp.forms_output["FormName"].required #=> Boolean
    #   resp.forms_output["FormName"].type_name #=> String
    #   resp.forms_output["FormName"].type_revision #=> String
    #   resp.name #=> String
    #   resp.origin_domain_id #=> String
    #   resp.origin_project_id #=> String
    #   resp.owning_project_id #=> String
    #   resp.revision #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetType AWS API Documentation
    #
    # @overload create_asset_type(params = {})
    # @param [Hash] params ({})
    def create_asset_type(params = {}, options = {})
      req = build_request(:create_asset_type, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone data source.
    #
    # @option params [Array<Types::FormInput>] :asset_forms_input
    #   The metadata forms that are to be attached to the assets that this
    #   data source works with.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::DataSourceConfigurationInput] :configuration
    #   Specifies the configuration of the data source. It can be set to
    #   either `glueRunConfiguration` or `redshiftRunConfiguration`.
    #
    # @option params [String] :description
    #   The description of the data source.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where the data source is created.
    #
    # @option params [String] :enable_setting
    #   Specifies whether the data source is enabled.
    #
    # @option params [required, String] :environment_identifier
    #   The unique identifier of the Amazon DataZone environment to which the
    #   data source publishes assets.
    #
    # @option params [required, String] :name
    #   The name of the data source.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the Amazon DataZone project in which you want to add
    #   this data source.
    #
    # @option params [Boolean] :publish_on_import
    #   Specifies whether the assets that this data source creates in the
    #   inventory are to be also automatically published to the catalog.
    #
    # @option params [Types::RecommendationConfiguration] :recommendation
    #   Specifies whether the business name generation is to be enabled for
    #   this data source.
    #
    # @option params [Types::ScheduleConfiguration] :schedule
    #   The schedule of the data source runs.
    #
    # @option params [required, String] :type
    #   The type of the data source.
    #
    # @return [Types::CreateDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceOutput#asset_forms_output #asset_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateDataSourceOutput#configuration #configuration} => Types::DataSourceConfigurationOutput
    #   * {Types::CreateDataSourceOutput#created_at #created_at} => Time
    #   * {Types::CreateDataSourceOutput#description #description} => String
    #   * {Types::CreateDataSourceOutput#domain_id #domain_id} => String
    #   * {Types::CreateDataSourceOutput#enable_setting #enable_setting} => String
    #   * {Types::CreateDataSourceOutput#environment_id #environment_id} => String
    #   * {Types::CreateDataSourceOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::CreateDataSourceOutput#id #id} => String
    #   * {Types::CreateDataSourceOutput#last_run_at #last_run_at} => Time
    #   * {Types::CreateDataSourceOutput#last_run_error_message #last_run_error_message} => Types::DataSourceErrorMessage
    #   * {Types::CreateDataSourceOutput#last_run_status #last_run_status} => String
    #   * {Types::CreateDataSourceOutput#name #name} => String
    #   * {Types::CreateDataSourceOutput#project_id #project_id} => String
    #   * {Types::CreateDataSourceOutput#publish_on_import #publish_on_import} => Boolean
    #   * {Types::CreateDataSourceOutput#recommendation #recommendation} => Types::RecommendationConfiguration
    #   * {Types::CreateDataSourceOutput#schedule #schedule} => Types::ScheduleConfiguration
    #   * {Types::CreateDataSourceOutput#status #status} => String
    #   * {Types::CreateDataSourceOutput#type #type} => String
    #   * {Types::CreateDataSourceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     asset_forms_input: [
    #       {
    #         content: "FormInputContentString",
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "Revision",
    #       },
    #     ],
    #     client_token: "String",
    #     configuration: {
    #       glue_run_configuration: {
    #         data_access_role: "GlueRunConfigurationInputDataAccessRoleString",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "RelationalFilterConfigurationDatabaseNameString", # required
    #             filter_expressions: [
    #               {
    #                 expression: "FilterExpressionExpressionString", # required
    #                 type: "INCLUDE", # required, accepts INCLUDE, EXCLUDE
    #               },
    #             ],
    #             schema_name: "RelationalFilterConfigurationSchemaNameString",
    #           },
    #         ],
    #       },
    #       redshift_run_configuration: {
    #         data_access_role: "RedshiftRunConfigurationInputDataAccessRoleString",
    #         redshift_credential_configuration: { # required
    #           secret_manager_arn: "RedshiftCredentialConfigurationSecretManagerArnString", # required
    #         },
    #         redshift_storage: { # required
    #           redshift_cluster_source: {
    #             cluster_name: "RedshiftClusterStorageClusterNameString", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "RedshiftServerlessStorageWorkgroupNameString", # required
    #           },
    #         },
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "RelationalFilterConfigurationDatabaseNameString", # required
    #             filter_expressions: [
    #               {
    #                 expression: "FilterExpressionExpressionString", # required
    #                 type: "INCLUDE", # required, accepts INCLUDE, EXCLUDE
    #               },
    #             ],
    #             schema_name: "RelationalFilterConfigurationSchemaNameString",
    #           },
    #         ],
    #       },
    #     },
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     enable_setting: "ENABLED", # accepts ENABLED, DISABLED
    #     environment_identifier: "String", # required
    #     name: "Name", # required
    #     project_identifier: "String", # required
    #     publish_on_import: false,
    #     recommendation: {
    #       enable_business_name_generation: false,
    #     },
    #     schedule: {
    #       schedule: "CronString",
    #       timezone: "UTC", # accepts UTC, AFRICA_JOHANNESBURG, AMERICA_MONTREAL, AMERICA_SAO_PAULO, ASIA_BAHRAIN, ASIA_BANGKOK, ASIA_CALCUTTA, ASIA_DUBAI, ASIA_HONG_KONG, ASIA_JAKARTA, ASIA_KUALA_LUMPUR, ASIA_SEOUL, ASIA_SHANGHAI, ASIA_SINGAPORE, ASIA_TAIPEI, ASIA_TOKYO, AUSTRALIA_MELBOURNE, AUSTRALIA_SYDNEY, CANADA_CENTRAL, CET, CST6CDT, ETC_GMT, ETC_GMT0, ETC_GMT_ADD_0, ETC_GMT_ADD_1, ETC_GMT_ADD_10, ETC_GMT_ADD_11, ETC_GMT_ADD_12, ETC_GMT_ADD_2, ETC_GMT_ADD_3, ETC_GMT_ADD_4, ETC_GMT_ADD_5, ETC_GMT_ADD_6, ETC_GMT_ADD_7, ETC_GMT_ADD_8, ETC_GMT_ADD_9, ETC_GMT_NEG_0, ETC_GMT_NEG_1, ETC_GMT_NEG_10, ETC_GMT_NEG_11, ETC_GMT_NEG_12, ETC_GMT_NEG_13, ETC_GMT_NEG_14, ETC_GMT_NEG_2, ETC_GMT_NEG_3, ETC_GMT_NEG_4, ETC_GMT_NEG_5, ETC_GMT_NEG_6, ETC_GMT_NEG_7, ETC_GMT_NEG_8, ETC_GMT_NEG_9, EUROPE_DUBLIN, EUROPE_LONDON, EUROPE_PARIS, EUROPE_STOCKHOLM, EUROPE_ZURICH, ISRAEL, MEXICO_GENERAL, MST7MDT, PACIFIC_AUCKLAND, US_CENTRAL, US_EASTERN, US_MOUNTAIN, US_PACIFIC
    #     },
    #     type: "DataSourceType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_forms_output #=> Array
    #   resp.asset_forms_output[0].content #=> String
    #   resp.asset_forms_output[0].form_name #=> String
    #   resp.asset_forms_output[0].type_name #=> String
    #   resp.asset_forms_output[0].type_revision #=> String
    #   resp.configuration.glue_run_configuration.account_id #=> String
    #   resp.configuration.glue_run_configuration.data_access_role #=> String
    #   resp.configuration.glue_run_configuration.region #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.redshift_run_configuration.account_id #=> String
    #   resp.configuration.redshift_run_configuration.data_access_role #=> String
    #   resp.configuration.redshift_run_configuration.redshift_credential_configuration.secret_manager_arn #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_cluster_source.cluster_name #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_serverless_source.workgroup_name #=> String
    #   resp.configuration.redshift_run_configuration.region #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.environment_id #=> String
    #   resp.error_message.error_detail #=> String
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.id #=> String
    #   resp.last_run_at #=> Time
    #   resp.last_run_error_message.error_detail #=> String
    #   resp.last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.publish_on_import #=> Boolean
    #   resp.recommendation.enable_business_name_generation #=> Boolean
    #   resp.schedule.schedule #=> String
    #   resp.schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.type #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone domain.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the Amazon DataZone domain.
    #
    # @option params [required, String] :domain_execution_role
    #   The domain execution role that is created when an Amazon DataZone
    #   domain is created. The domain execution role is created in the Amazon
    #   Web Services account that houses the Amazon DataZone domain.
    #
    # @option params [String] :kms_key_identifier
    #   The identifier of the Amazon Web Services Key Management Service (KMS)
    #   key that is used to encrypt the Amazon DataZone domain, metadata, and
    #   reporting data.
    #
    # @option params [required, String] :name
    #   The name of the Amazon DataZone domain.
    #
    # @option params [Types::SingleSignOn] :single_sign_on
    #   The single-sign on configuration of the Amazon DataZone domain.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags specified for the Amazon DataZone domain.
    #
    # @return [Types::CreateDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainOutput#arn #arn} => String
    #   * {Types::CreateDomainOutput#description #description} => String
    #   * {Types::CreateDomainOutput#domain_execution_role #domain_execution_role} => String
    #   * {Types::CreateDomainOutput#id #id} => String
    #   * {Types::CreateDomainOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::CreateDomainOutput#name #name} => String
    #   * {Types::CreateDomainOutput#portal_url #portal_url} => String
    #   * {Types::CreateDomainOutput#single_sign_on #single_sign_on} => Types::SingleSignOn
    #   * {Types::CreateDomainOutput#status #status} => String
    #   * {Types::CreateDomainOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     client_token: "String",
    #     description: "String",
    #     domain_execution_role: "RoleArn", # required
    #     kms_key_identifier: "KmsKeyArn",
    #     name: "String", # required
    #     single_sign_on: {
    #       type: "IAM_IDC", # accepts IAM_IDC, DISABLED
    #       user_assignment: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.domain_execution_role #=> String
    #   resp.id #=> String
    #   resp.kms_key_identifier #=> String
    #   resp.name #=> String
    #   resp.portal_url #=> String
    #   resp.single_sign_on.type #=> String, one of "IAM_IDC", "DISABLED"
    #   resp.single_sign_on.user_assignment #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Create an Amazon DataZone environment.
    #
    # @option params [String] :description
    #   The description of the Amazon DataZone environment.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the environment
    #   is created.
    #
    # @option params [required, String] :environment_profile_identifier
    #   The identifier of the environment profile that is used to create this
    #   Amazon DataZone environment.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms that can be used in this Amazon DataZone
    #   environment.
    #
    # @option params [required, String] :name
    #   The name of the Amazon DataZone environment.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the Amazon DataZone project in which this
    #   environment is created.
    #
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   The user parameters of this Amazon DataZone environment.
    #
    # @return [Types::CreateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentOutput#aws_account_id #aws_account_id} => String
    #   * {Types::CreateEnvironmentOutput#aws_account_region #aws_account_region} => String
    #   * {Types::CreateEnvironmentOutput#created_at #created_at} => Time
    #   * {Types::CreateEnvironmentOutput#created_by #created_by} => String
    #   * {Types::CreateEnvironmentOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::CreateEnvironmentOutput#description #description} => String
    #   * {Types::CreateEnvironmentOutput#domain_id #domain_id} => String
    #   * {Types::CreateEnvironmentOutput#environment_actions #environment_actions} => Array&lt;Types::ConfigurableEnvironmentAction&gt;
    #   * {Types::CreateEnvironmentOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::CreateEnvironmentOutput#environment_profile_id #environment_profile_id} => String
    #   * {Types::CreateEnvironmentOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateEnvironmentOutput#id #id} => String
    #   * {Types::CreateEnvironmentOutput#last_deployment #last_deployment} => Types::Deployment
    #   * {Types::CreateEnvironmentOutput#name #name} => String
    #   * {Types::CreateEnvironmentOutput#project_id #project_id} => String
    #   * {Types::CreateEnvironmentOutput#provider #provider} => String
    #   * {Types::CreateEnvironmentOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::Resource&gt;
    #   * {Types::CreateEnvironmentOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::CreateEnvironmentOutput#status #status} => String
    #   * {Types::CreateEnvironmentOutput#updated_at #updated_at} => Time
    #   * {Types::CreateEnvironmentOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     description: "String",
    #     domain_identifier: "DomainId", # required
    #     environment_profile_identifier: "EnvironmentProfileId", # required
    #     glossary_terms: ["GlossaryTermId"],
    #     name: "String", # required
    #     project_identifier: "ProjectId", # required
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.environment_actions #=> Array
    #   resp.environment_actions[0].auth #=> String, one of "IAM", "HTTPS"
    #   resp.environment_actions[0].parameters #=> Array
    #   resp.environment_actions[0].parameters[0].key #=> String
    #   resp.environment_actions[0].parameters[0].value #=> String
    #   resp.environment_actions[0].type #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.environment_profile_id #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.last_deployment.deployment_id #=> String
    #   resp.last_deployment.deployment_status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "PENDING_DEPLOYMENT"
    #   resp.last_deployment.deployment_type #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.last_deployment.failure_reason.code #=> String
    #   resp.last_deployment.failure_reason.message #=> String
    #   resp.last_deployment.is_deployment_complete #=> Boolean
    #   resp.last_deployment.messages #=> Array
    #   resp.last_deployment.messages[0] #=> String
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.provider #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].provider #=> String
    #   resp.provisioned_resources[0].type #=> String
    #   resp.provisioned_resources[0].value #=> String
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"
    #   resp.updated_at #=> Time
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone environment profile.
    #
    # @option params [String] :aws_account_id
    #   The Amazon Web Services account in which the Amazon DataZone
    #   environment is created.
    #
    # @option params [String] :aws_account_region
    #   The Amazon Web Services region in which this environment profile is
    #   created.
    #
    # @option params [String] :description
    #   The description of this Amazon DataZone environment profile.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this environment profile
    #   is created.
    #
    # @option params [required, String] :environment_blueprint_identifier
    #   The ID of the blueprint with which this environment profile is
    #   created.
    #
    # @option params [required, String] :name
    #   The name of this Amazon DataZone environment profile.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the project in which to create the environment
    #   profile.
    #
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   The user parameters of this Amazon DataZone environment profile.
    #
    # @return [Types::CreateEnvironmentProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentProfileOutput#aws_account_id #aws_account_id} => String
    #   * {Types::CreateEnvironmentProfileOutput#aws_account_region #aws_account_region} => String
    #   * {Types::CreateEnvironmentProfileOutput#created_at #created_at} => Time
    #   * {Types::CreateEnvironmentProfileOutput#created_by #created_by} => String
    #   * {Types::CreateEnvironmentProfileOutput#description #description} => String
    #   * {Types::CreateEnvironmentProfileOutput#domain_id #domain_id} => String
    #   * {Types::CreateEnvironmentProfileOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::CreateEnvironmentProfileOutput#id #id} => String
    #   * {Types::CreateEnvironmentProfileOutput#name #name} => String
    #   * {Types::CreateEnvironmentProfileOutput#project_id #project_id} => String
    #   * {Types::CreateEnvironmentProfileOutput#updated_at #updated_at} => Time
    #   * {Types::CreateEnvironmentProfileOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_profile({
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #     name: "EnvironmentProfileName", # required
    #     project_identifier: "ProjectId", # required
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.updated_at #=> Time
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentProfile AWS API Documentation
    #
    # @overload create_environment_profile(params = {})
    # @param [Hash] params ({})
    def create_environment_profile(params = {}, options = {})
      req = build_request(:create_environment_profile, params)
      req.send_request(options)
    end

    # Creates a metadata form type.
    #
    # @option params [String] :description
    #   The description of this Amazon DataZone metadata form type.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this metadata form type
    #   is created.
    #
    # @option params [required, Types::Model] :model
    #   The model of this Amazon DataZone metadata form type.
    #
    # @option params [required, String] :name
    #   The name of this Amazon DataZone metadata form type.
    #
    # @option params [required, String] :owning_project_identifier
    #   The ID of the Amazon DataZone project that owns this metadata form
    #   type.
    #
    # @option params [String] :status
    #   The status of this Amazon DataZone metadata form type.
    #
    # @return [Types::CreateFormTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFormTypeOutput#description #description} => String
    #   * {Types::CreateFormTypeOutput#domain_id #domain_id} => String
    #   * {Types::CreateFormTypeOutput#name #name} => String
    #   * {Types::CreateFormTypeOutput#origin_domain_id #origin_domain_id} => String
    #   * {Types::CreateFormTypeOutput#origin_project_id #origin_project_id} => String
    #   * {Types::CreateFormTypeOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateFormTypeOutput#revision #revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_form_type({
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     model: { # required
    #       smithy: "Smithy",
    #     },
    #     name: "FormTypeName", # required
    #     owning_project_identifier: "ProjectId", # required
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.origin_domain_id #=> String
    #   resp.origin_project_id #=> String
    #   resp.owning_project_id #=> String
    #   resp.revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateFormType AWS API Documentation
    #
    # @overload create_form_type(params = {})
    # @param [Hash] params ({})
    def create_form_type(params = {}, options = {})
      req = build_request(:create_form_type, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone business glossary.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of this business glossary.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   is created.
    #
    # @option params [required, String] :name
    #   The name of this business glossary.
    #
    # @option params [required, String] :owning_project_identifier
    #   The ID of the project that currently owns business glossary.
    #
    # @option params [String] :status
    #   The status of this business glossary.
    #
    # @return [Types::CreateGlossaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGlossaryOutput#description #description} => String
    #   * {Types::CreateGlossaryOutput#domain_id #domain_id} => String
    #   * {Types::CreateGlossaryOutput#id #id} => String
    #   * {Types::CreateGlossaryOutput#name #name} => String
    #   * {Types::CreateGlossaryOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateGlossaryOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_glossary({
    #     client_token: "ClientToken",
    #     description: "GlossaryDescription",
    #     domain_identifier: "DomainId", # required
    #     name: "GlossaryName", # required
    #     owning_project_identifier: "ProjectId", # required
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.owning_project_id #=> String
    #   resp.status #=> String, one of "DISABLED", "ENABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGlossary AWS API Documentation
    #
    # @overload create_glossary(params = {})
    # @param [Hash] params ({})
    def create_glossary(params = {}, options = {})
      req = build_request(:create_glossary, params)
      req.send_request(options)
    end

    # Creates a business glossary term.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   term is created.
    #
    # @option params [required, String] :glossary_identifier
    #   The ID of the business glossary in which this term is created.
    #
    # @option params [String] :long_description
    #   The long description of this business glossary term.
    #
    # @option params [required, String] :name
    #   The name of this business glossary term.
    #
    # @option params [String] :short_description
    #   The short description of this business glossary term.
    #
    # @option params [String] :status
    #   The status of this business glossary term.
    #
    # @option params [Types::TermRelations] :term_relations
    #   The term relations of this business glossary term.
    #
    # @return [Types::CreateGlossaryTermOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGlossaryTermOutput#domain_id #domain_id} => String
    #   * {Types::CreateGlossaryTermOutput#glossary_id #glossary_id} => String
    #   * {Types::CreateGlossaryTermOutput#id #id} => String
    #   * {Types::CreateGlossaryTermOutput#long_description #long_description} => String
    #   * {Types::CreateGlossaryTermOutput#name #name} => String
    #   * {Types::CreateGlossaryTermOutput#short_description #short_description} => String
    #   * {Types::CreateGlossaryTermOutput#status #status} => String
    #   * {Types::CreateGlossaryTermOutput#term_relations #term_relations} => Types::TermRelations
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_glossary_term({
    #     client_token: "ClientToken",
    #     domain_identifier: "DomainId", # required
    #     glossary_identifier: "GlossaryTermId", # required
    #     long_description: "LongDescription",
    #     name: "GlossaryTermName", # required
    #     short_description: "ShortDescription",
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     term_relations: {
    #       classifies: ["GlossaryTermId"],
    #       is_a: ["GlossaryTermId"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.glossary_id #=> String
    #   resp.id #=> String
    #   resp.long_description #=> String
    #   resp.name #=> String
    #   resp.short_description #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.term_relations.classifies #=> Array
    #   resp.term_relations.classifies[0] #=> String
    #   resp.term_relations.is_a #=> Array
    #   resp.term_relations.is_a[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGlossaryTerm AWS API Documentation
    #
    # @overload create_glossary_term(params = {})
    # @param [Hash] params ({})
    def create_glossary_term(params = {}, options = {})
      req = build_request(:create_glossary_term, params)
      req.send_request(options)
    end

    # Creates a group profile in Amazon DataZone.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the group
    #   profile is created.
    #
    # @option params [required, String] :group_identifier
    #   The identifier of the group for which the group profile is created.
    #
    # @return [Types::CreateGroupProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupProfileOutput#domain_id #domain_id} => String
    #   * {Types::CreateGroupProfileOutput#group_name #group_name} => String
    #   * {Types::CreateGroupProfileOutput#id #id} => String
    #   * {Types::CreateGroupProfileOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_profile({
    #     client_token: "String",
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "GroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.group_name #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGroupProfile AWS API Documentation
    #
    # @overload create_group_profile(params = {})
    # @param [Hash] params ({})
    def create_group_profile(params = {}, options = {})
      req = build_request(:create_group_profile, params)
      req.send_request(options)
    end

    # @option params [required, String] :action
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #
    # @option params [required, String] :entity_identifier
    #
    # @option params [String] :entity_revision
    #
    # @option params [required, String] :entity_type
    #
    # @return [Types::CreateListingChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateListingChangeSetOutput#listing_id #listing_id} => String
    #   * {Types::CreateListingChangeSetOutput#listing_revision #listing_revision} => String
    #   * {Types::CreateListingChangeSetOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_listing_change_set({
    #     action: "PUBLISH", # required, accepts PUBLISH, UNPUBLISH
    #     client_token: "ClientToken",
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityId", # required
    #     entity_revision: "Revision",
    #     entity_type: "ASSET", # required, accepts ASSET
    #   })
    #
    # @example Response structure
    #
    #   resp.listing_id #=> String
    #   resp.listing_revision #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateListingChangeSet AWS API Documentation
    #
    # @overload create_listing_change_set(params = {})
    # @param [Hash] params ({})
    def create_listing_change_set(params = {}, options = {})
      req = build_request(:create_listing_change_set, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone project.
    #
    # @option params [String] :description
    #   The description of the Amazon DataZone project.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this project is created.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms that can be used in this Amazon DataZone project.
    #
    # @option params [required, String] :name
    #   The name of the Amazon DataZone project.
    #
    # @return [Types::CreateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectOutput#created_at #created_at} => Time
    #   * {Types::CreateProjectOutput#created_by #created_by} => String
    #   * {Types::CreateProjectOutput#description #description} => String
    #   * {Types::CreateProjectOutput#domain_id #domain_id} => String
    #   * {Types::CreateProjectOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateProjectOutput#id #id} => String
    #   * {Types::CreateProjectOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateProjectOutput#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     glossary_terms: ["GlossaryTermId"],
    #     name: "ProjectName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Creates a project membership in Amazon DataZone.
    #
    # @option params [required, String] :designation
    #   The designation of the project membership.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which project membership is
    #   created.
    #
    # @option params [required, Types::Member] :member
    #   The project member whose project membership was created.
    #
    # @option params [required, String] :project_identifier
    #   The ID of the project for which this project membership was created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project_membership({
    #     designation: "PROJECT_OWNER", # required, accepts PROJECT_OWNER, PROJECT_CONTRIBUTOR
    #     domain_identifier: "DomainId", # required
    #     member: { # required
    #       group_identifier: "String",
    #       user_identifier: "String",
    #     },
    #     project_identifier: "ProjectId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectMembership AWS API Documentation
    #
    # @overload create_project_membership(params = {})
    # @param [Hash] params ({})
    def create_project_membership(params = {}, options = {})
      req = build_request(:create_project_membership, params)
      req.send_request(options)
    end

    # Creates a subsscription grant in Amazon DataZone.
    #
    # @option params [Array<Types::AssetTargetNameMap>] :asset_target_names
    #   The names of the assets for which the subscription grant is created.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription grant
    #   is created.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment in which the subscription grant is created.
    #
    # @option params [required, Types::GrantedEntityInput] :granted_entity
    #   The entity to which the subscription is to be granted.
    #
    # @option params [required, String] :subscription_target_identifier
    #   The ID of the subscription target for which the subscription grant is
    #   created.
    #
    # @return [Types::CreateSubscriptionGrantOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionGrantOutput#assets #assets} => Array&lt;Types::SubscribedAsset&gt;
    #   * {Types::CreateSubscriptionGrantOutput#created_at #created_at} => Time
    #   * {Types::CreateSubscriptionGrantOutput#created_by #created_by} => String
    #   * {Types::CreateSubscriptionGrantOutput#domain_id #domain_id} => String
    #   * {Types::CreateSubscriptionGrantOutput#granted_entity #granted_entity} => Types::GrantedEntity
    #   * {Types::CreateSubscriptionGrantOutput#id #id} => String
    #   * {Types::CreateSubscriptionGrantOutput#status #status} => String
    #   * {Types::CreateSubscriptionGrantOutput#subscription_id #subscription_id} => String
    #   * {Types::CreateSubscriptionGrantOutput#subscription_target_id #subscription_target_id} => String
    #   * {Types::CreateSubscriptionGrantOutput#updated_at #updated_at} => Time
    #   * {Types::CreateSubscriptionGrantOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_grant({
    #     asset_target_names: [
    #       {
    #         asset_id: "AssetId", # required
    #         target_name: "String", # required
    #       },
    #     ],
    #     client_token: "String",
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     granted_entity: { # required
    #       listing: {
    #         identifier: "ListingId", # required
    #         revision: "Revision", # required
    #       },
    #     },
    #     subscription_target_identifier: "SubscriptionTargetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assets #=> Array
    #   resp.assets[0].asset_id #=> String
    #   resp.assets[0].asset_revision #=> String
    #   resp.assets[0].failure_cause.message #=> String
    #   resp.assets[0].failure_timestamp #=> Time
    #   resp.assets[0].granted_timestamp #=> Time
    #   resp.assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.assets[0].target_name #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.granted_entity.listing.id #=> String
    #   resp.granted_entity.listing.revision #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.subscription_id #=> String
    #   resp.subscription_target_id #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionGrant AWS API Documentation
    #
    # @overload create_subscription_grant(params = {})
    # @param [Hash] params ({})
    def create_subscription_grant(params = {}, options = {})
      req = build_request(:create_subscription_grant, params)
      req.send_request(options)
    end

    # Creates a subscription request in Amazon DataZone.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription request
    #   is created.
    #
    # @option params [required, String] :request_reason
    #   The reason for the subscription request.
    #
    # @option params [required, Array<Types::SubscribedListingInput>] :subscribed_listings
    #
    # @option params [required, Array<Types::SubscribedPrincipalInput>] :subscribed_principals
    #   The Amazon DataZone principals for whom the subscription request is
    #   created.
    #
    # @return [Types::CreateSubscriptionRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionRequestOutput#created_at #created_at} => Time
    #   * {Types::CreateSubscriptionRequestOutput#created_by #created_by} => String
    #   * {Types::CreateSubscriptionRequestOutput#decision_comment #decision_comment} => String
    #   * {Types::CreateSubscriptionRequestOutput#domain_id #domain_id} => String
    #   * {Types::CreateSubscriptionRequestOutput#id #id} => String
    #   * {Types::CreateSubscriptionRequestOutput#request_reason #request_reason} => String
    #   * {Types::CreateSubscriptionRequestOutput#reviewer_id #reviewer_id} => String
    #   * {Types::CreateSubscriptionRequestOutput#status #status} => String
    #   * {Types::CreateSubscriptionRequestOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::CreateSubscriptionRequestOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::CreateSubscriptionRequestOutput#updated_at #updated_at} => Time
    #   * {Types::CreateSubscriptionRequestOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_request({
    #     client_token: "String",
    #     domain_identifier: "DomainId", # required
    #     request_reason: "RequestReason", # required
    #     subscribed_listings: [ # required
    #       {
    #         identifier: "ListingId", # required
    #       },
    #     ],
    #     subscribed_principals: [ # required
    #       {
    #         project: {
    #           identifier: "ProjectId",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.decision_comment #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.request_reason #=> String
    #   resp.reviewer_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionRequest AWS API Documentation
    #
    # @overload create_subscription_request(params = {})
    # @param [Hash] params ({})
    def create_subscription_request(params = {}, options = {})
      req = build_request(:create_subscription_request, params)
      req.send_request(options)
    end

    # Creates a subscription target in Amazon DataZone.
    #
    # @option params [required, Array<String>] :applicable_asset_types
    #   The asset types that can be included in the subscription target.
    #
    # @option params [required, Array<String>] :authorized_principals
    #   The authorized principals of the subscription target.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which subscription target is
    #   created.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment in which subscription target is created.
    #
    # @option params [required, String] :manage_access_role
    #   The manage access role that is used to create the subscription target.
    #
    # @option params [required, String] :name
    #   The name of the subscription target.
    #
    # @option params [String] :provider
    #   The provider of the subscription target.
    #
    # @option params [required, Array<Types::SubscriptionTargetForm>] :subscription_target_config
    #   The configuration of the subscription target.
    #
    # @option params [required, String] :type
    #   The type of the subscription target.
    #
    # @return [Types::CreateSubscriptionTargetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionTargetOutput#applicable_asset_types #applicable_asset_types} => Array&lt;String&gt;
    #   * {Types::CreateSubscriptionTargetOutput#authorized_principals #authorized_principals} => Array&lt;String&gt;
    #   * {Types::CreateSubscriptionTargetOutput#created_at #created_at} => Time
    #   * {Types::CreateSubscriptionTargetOutput#created_by #created_by} => String
    #   * {Types::CreateSubscriptionTargetOutput#domain_id #domain_id} => String
    #   * {Types::CreateSubscriptionTargetOutput#environment_id #environment_id} => String
    #   * {Types::CreateSubscriptionTargetOutput#id #id} => String
    #   * {Types::CreateSubscriptionTargetOutput#manage_access_role #manage_access_role} => String
    #   * {Types::CreateSubscriptionTargetOutput#name #name} => String
    #   * {Types::CreateSubscriptionTargetOutput#project_id #project_id} => String
    #   * {Types::CreateSubscriptionTargetOutput#provider #provider} => String
    #   * {Types::CreateSubscriptionTargetOutput#subscription_target_config #subscription_target_config} => Array&lt;Types::SubscriptionTargetForm&gt;
    #   * {Types::CreateSubscriptionTargetOutput#type #type} => String
    #   * {Types::CreateSubscriptionTargetOutput#updated_at #updated_at} => Time
    #   * {Types::CreateSubscriptionTargetOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_target({
    #     applicable_asset_types: ["TypeName"], # required
    #     authorized_principals: ["AuthorizedPrincipalIdentifier"], # required
    #     client_token: "String",
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     manage_access_role: "String", # required
    #     name: "SubscriptionTargetName", # required
    #     provider: "String",
    #     subscription_target_config: [ # required
    #       {
    #         content: "String", # required
    #         form_name: "FormName", # required
    #       },
    #     ],
    #     type: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.applicable_asset_types #=> Array
    #   resp.applicable_asset_types[0] #=> String
    #   resp.authorized_principals #=> Array
    #   resp.authorized_principals[0] #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.environment_id #=> String
    #   resp.id #=> String
    #   resp.manage_access_role #=> String
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.provider #=> String
    #   resp.subscription_target_config #=> Array
    #   resp.subscription_target_config[0].content #=> String
    #   resp.subscription_target_config[0].form_name #=> String
    #   resp.type #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionTarget AWS API Documentation
    #
    # @overload create_subscription_target(params = {})
    # @param [Hash] params ({})
    def create_subscription_target(params = {}, options = {})
      req = build_request(:create_subscription_target, params)
      req.send_request(options)
    end

    # Creates a user profile in Amazon DataZone.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a user profile
    #   is created.
    #
    # @option params [required, String] :user_identifier
    #   The identifier of the user for which the user profile is created.
    #
    # @option params [String] :user_type
    #   The user type of the user for which the user profile is created.
    #
    # @return [Types::CreateUserProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserProfileOutput#details #details} => Types::UserProfileDetails
    #   * {Types::CreateUserProfileOutput#domain_id #domain_id} => String
    #   * {Types::CreateUserProfileOutput#id #id} => String
    #   * {Types::CreateUserProfileOutput#status #status} => String
    #   * {Types::CreateUserProfileOutput#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_profile({
    #     client_token: "String",
    #     domain_identifier: "DomainId", # required
    #     user_identifier: "UserIdentifier", # required
    #     user_type: "IAM_USER", # accepts IAM_USER, IAM_ROLE, SSO_USER
    #   })
    #
    # @example Response structure
    #
    #   resp.details.iam.arn #=> String
    #   resp.details.sso.first_name #=> String
    #   resp.details.sso.last_name #=> String
    #   resp.details.sso.username #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"
    #   resp.type #=> String, one of "IAM", "SSO"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateUserProfile AWS API Documentation
    #
    # @overload create_user_profile(params = {})
    # @param [Hash] params ({})
    def create_user_profile(params = {}, options = {})
      req = build_request(:create_user_profile, params)
      req.send_request(options)
    end

    # Delets an asset in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the asset is deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the asset that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAsset AWS API Documentation
    #
    # @overload delete_asset(params = {})
    # @param [Hash] params ({})
    def delete_asset(params = {}, options = {})
      req = build_request(:delete_asset, params)
      req.send_request(options)
    end

    # Deletes an asset type in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the asset type is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the asset type that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset_type({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetTypeIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAssetType AWS API Documentation
    #
    # @overload delete_asset_type(params = {})
    # @param [Hash] params ({})
    def delete_asset_type(params = {}, options = {})
      req = build_request(:delete_asset_type, params)
      req.send_request(options)
    end

    # Deletes a data source in Amazon DataZone.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the data source is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the data source that is deleted.
    #
    # @return [Types::DeleteDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSourceOutput#asset_forms_output #asset_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::DeleteDataSourceOutput#configuration #configuration} => Types::DataSourceConfigurationOutput
    #   * {Types::DeleteDataSourceOutput#created_at #created_at} => Time
    #   * {Types::DeleteDataSourceOutput#description #description} => String
    #   * {Types::DeleteDataSourceOutput#domain_id #domain_id} => String
    #   * {Types::DeleteDataSourceOutput#enable_setting #enable_setting} => String
    #   * {Types::DeleteDataSourceOutput#environment_id #environment_id} => String
    #   * {Types::DeleteDataSourceOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::DeleteDataSourceOutput#id #id} => String
    #   * {Types::DeleteDataSourceOutput#last_run_at #last_run_at} => Time
    #   * {Types::DeleteDataSourceOutput#last_run_error_message #last_run_error_message} => Types::DataSourceErrorMessage
    #   * {Types::DeleteDataSourceOutput#last_run_status #last_run_status} => String
    #   * {Types::DeleteDataSourceOutput#name #name} => String
    #   * {Types::DeleteDataSourceOutput#project_id #project_id} => String
    #   * {Types::DeleteDataSourceOutput#publish_on_import #publish_on_import} => Boolean
    #   * {Types::DeleteDataSourceOutput#schedule #schedule} => Types::ScheduleConfiguration
    #   * {Types::DeleteDataSourceOutput#status #status} => String
    #   * {Types::DeleteDataSourceOutput#type #type} => String
    #   * {Types::DeleteDataSourceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     client_token: "String",
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_forms_output #=> Array
    #   resp.asset_forms_output[0].content #=> String
    #   resp.asset_forms_output[0].form_name #=> String
    #   resp.asset_forms_output[0].type_name #=> String
    #   resp.asset_forms_output[0].type_revision #=> String
    #   resp.configuration.glue_run_configuration.account_id #=> String
    #   resp.configuration.glue_run_configuration.data_access_role #=> String
    #   resp.configuration.glue_run_configuration.region #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.redshift_run_configuration.account_id #=> String
    #   resp.configuration.redshift_run_configuration.data_access_role #=> String
    #   resp.configuration.redshift_run_configuration.redshift_credential_configuration.secret_manager_arn #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_cluster_source.cluster_name #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_serverless_source.workgroup_name #=> String
    #   resp.configuration.redshift_run_configuration.region #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.environment_id #=> String
    #   resp.error_message.error_detail #=> String
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.id #=> String
    #   resp.last_run_at #=> Time
    #   resp.last_run_error_message.error_detail #=> String
    #   resp.last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.publish_on_import #=> Boolean
    #   resp.schedule.schedule #=> String
    #   resp.schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.type #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Deletes a Amazon DataZone domain.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identifier
    #   The identifier of the Amazon Web Services domain that is to be
    #   deleted.
    #
    # @return [Types::DeleteDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     client_token: "String",
    #     identifier: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Deletes an environment in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the environment that is to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes the blueprint configuration in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the blueprint
    #   configuration is deleted.
    #
    # @option params [required, String] :environment_blueprint_identifier
    #   The ID of the blueprint the configuration of which is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_blueprint_configuration({
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentBlueprintConfiguration AWS API Documentation
    #
    # @overload delete_environment_blueprint_configuration(params = {})
    # @param [Hash] params ({})
    def delete_environment_blueprint_configuration(params = {}, options = {})
      req = build_request(:delete_environment_blueprint_configuration, params)
      req.send_request(options)
    end

    # Deletes an environment profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment profile
    #   is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the environment profile that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_profile({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentProfile AWS API Documentation
    #
    # @overload delete_environment_profile(params = {})
    # @param [Hash] params ({})
    def delete_environment_profile(params = {}, options = {})
      req = build_request(:delete_environment_profile, params)
      req.send_request(options)
    end

    # Delets and metadata form type in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the metadata form type
    #   is deleted.
    #
    # @option params [required, String] :form_type_identifier
    #   The ID of the metadata form type that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_form_type({
    #     domain_identifier: "DomainId", # required
    #     form_type_identifier: "FormTypeIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteFormType AWS API Documentation
    #
    # @overload delete_form_type(params = {})
    # @param [Hash] params ({})
    def delete_form_type(params = {}, options = {})
      req = build_request(:delete_form_type, params)
      req.send_request(options)
    end

    # Deletes a business glossary in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the business glossary is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the business glossary that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_glossary({
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteGlossary AWS API Documentation
    #
    # @overload delete_glossary(params = {})
    # @param [Hash] params ({})
    def delete_glossary(params = {}, options = {})
      req = build_request(:delete_glossary, params)
      req.send_request(options)
    end

    # Deletes a business glossary term in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the business glossary
    #   term is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the business glossary term that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_glossary_term({
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryTermId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteGlossaryTerm AWS API Documentation
    #
    # @overload delete_glossary_term(params = {})
    # @param [Hash] params ({})
    def delete_glossary_term(params = {}, options = {})
      req = build_request(:delete_glossary_term, params)
      req.send_request(options)
    end

    # @option params [required, String] :domain_identifier
    #
    # @option params [required, String] :identifier
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_listing({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ListingId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteListing AWS API Documentation
    #
    # @overload delete_listing(params = {})
    # @param [Hash] params ({})
    def delete_listing(params = {}, options = {})
      req = build_request(:delete_listing, params)
      req.send_request(options)
    end

    # Deletes a project in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the project is deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the project that is to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes project membership in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where project membership is
    #   deleted.
    #
    # @option params [required, Types::Member] :member
    #   The project member whose project membership is deleted.
    #
    # @option params [required, String] :project_identifier
    #   The ID of the Amazon DataZone project the membership to which is
    #   deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project_membership({
    #     domain_identifier: "DomainId", # required
    #     member: { # required
    #       group_identifier: "String",
    #       user_identifier: "String",
    #     },
    #     project_identifier: "ProjectId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectMembership AWS API Documentation
    #
    # @overload delete_project_membership(params = {})
    # @param [Hash] params ({})
    def delete_project_membership(params = {}, options = {})
      req = build_request(:delete_project_membership, params)
      req.send_request(options)
    end

    # Deletes and subscription grant in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where the subscription grant is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription grant that is deleted.
    #
    # @return [Types::DeleteSubscriptionGrantOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSubscriptionGrantOutput#assets #assets} => Array&lt;Types::SubscribedAsset&gt;
    #   * {Types::DeleteSubscriptionGrantOutput#created_at #created_at} => Time
    #   * {Types::DeleteSubscriptionGrantOutput#created_by #created_by} => String
    #   * {Types::DeleteSubscriptionGrantOutput#domain_id #domain_id} => String
    #   * {Types::DeleteSubscriptionGrantOutput#granted_entity #granted_entity} => Types::GrantedEntity
    #   * {Types::DeleteSubscriptionGrantOutput#id #id} => String
    #   * {Types::DeleteSubscriptionGrantOutput#status #status} => String
    #   * {Types::DeleteSubscriptionGrantOutput#subscription_id #subscription_id} => String
    #   * {Types::DeleteSubscriptionGrantOutput#subscription_target_id #subscription_target_id} => String
    #   * {Types::DeleteSubscriptionGrantOutput#updated_at #updated_at} => Time
    #   * {Types::DeleteSubscriptionGrantOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_grant({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionGrantId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assets #=> Array
    #   resp.assets[0].asset_id #=> String
    #   resp.assets[0].asset_revision #=> String
    #   resp.assets[0].failure_cause.message #=> String
    #   resp.assets[0].failure_timestamp #=> Time
    #   resp.assets[0].granted_timestamp #=> Time
    #   resp.assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.assets[0].target_name #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.granted_entity.listing.id #=> String
    #   resp.granted_entity.listing.revision #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.subscription_id #=> String
    #   resp.subscription_target_id #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionGrant AWS API Documentation
    #
    # @overload delete_subscription_grant(params = {})
    # @param [Hash] params ({})
    def delete_subscription_grant(params = {}, options = {})
      req = build_request(:delete_subscription_grant, params)
      req.send_request(options)
    end

    # Deletes a subscription request in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription request
    #   is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription request that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_request({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionRequest AWS API Documentation
    #
    # @overload delete_subscription_request(params = {})
    # @param [Hash] params ({})
    def delete_subscription_request(params = {}, options = {})
      req = build_request(:delete_subscription_request, params)
      req.send_request(options)
    end

    # Deletes a subscription target in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription target
    #   is deleted.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the Amazon DataZone environment in which the subscription
    #   target is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription target that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_target({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "SubscriptionTargetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionTarget AWS API Documentation
    #
    # @overload delete_subscription_target(params = {})
    # @param [Hash] params ({})
    def delete_subscription_target(params = {}, options = {})
      req = build_request(:delete_subscription_target, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone asset.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain to which the asset belongs.
    #
    # @option params [required, String] :identifier
    #   The ID of the Amazon DataZone asset.
    #
    # @option params [String] :revision
    #   The revision of the Amazon DataZone asset.
    #
    # @return [Types::GetAssetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetOutput#created_at #created_at} => Time
    #   * {Types::GetAssetOutput#created_by #created_by} => String
    #   * {Types::GetAssetOutput#description #description} => String
    #   * {Types::GetAssetOutput#domain_id #domain_id} => String
    #   * {Types::GetAssetOutput#external_identifier #external_identifier} => String
    #   * {Types::GetAssetOutput#first_revision_created_at #first_revision_created_at} => Time
    #   * {Types::GetAssetOutput#first_revision_created_by #first_revision_created_by} => String
    #   * {Types::GetAssetOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::GetAssetOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetAssetOutput#id #id} => String
    #   * {Types::GetAssetOutput#listing #listing} => Types::AssetListingDetails
    #   * {Types::GetAssetOutput#name #name} => String
    #   * {Types::GetAssetOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetAssetOutput#read_only_forms_output #read_only_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::GetAssetOutput#revision #revision} => String
    #   * {Types::GetAssetOutput#type_identifier #type_identifier} => String
    #   * {Types::GetAssetOutput#type_revision #type_revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.external_identifier #=> String
    #   resp.first_revision_created_at #=> Time
    #   resp.first_revision_created_by #=> String
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].content #=> String
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.listing.listing_id #=> String
    #   resp.listing.listing_status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #   resp.name #=> String
    #   resp.owning_project_id #=> String
    #   resp.read_only_forms_output #=> Array
    #   resp.read_only_forms_output[0].content #=> String
    #   resp.read_only_forms_output[0].form_name #=> String
    #   resp.read_only_forms_output[0].type_name #=> String
    #   resp.read_only_forms_output[0].type_revision #=> String
    #   resp.revision #=> String
    #   resp.type_identifier #=> String
    #   resp.type_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAsset AWS API Documentation
    #
    # @overload get_asset(params = {})
    # @param [Hash] params ({})
    def get_asset(params = {}, options = {})
      req = build_request(:get_asset, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone asset type.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the asset type exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the asset type.
    #
    # @option params [String] :revision
    #   The revision of the asset type.
    #
    # @return [Types::GetAssetTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetTypeOutput#created_at #created_at} => Time
    #   * {Types::GetAssetTypeOutput#created_by #created_by} => String
    #   * {Types::GetAssetTypeOutput#description #description} => String
    #   * {Types::GetAssetTypeOutput#domain_id #domain_id} => String
    #   * {Types::GetAssetTypeOutput#forms_output #forms_output} => Hash&lt;String,Types::FormEntryOutput&gt;
    #   * {Types::GetAssetTypeOutput#name #name} => String
    #   * {Types::GetAssetTypeOutput#origin_domain_id #origin_domain_id} => String
    #   * {Types::GetAssetTypeOutput#origin_project_id #origin_project_id} => String
    #   * {Types::GetAssetTypeOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetAssetTypeOutput#revision #revision} => String
    #   * {Types::GetAssetTypeOutput#updated_at #updated_at} => Time
    #   * {Types::GetAssetTypeOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_type({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetTypeIdentifier", # required
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.forms_output #=> Hash
    #   resp.forms_output["FormName"].required #=> Boolean
    #   resp.forms_output["FormName"].type_name #=> String
    #   resp.forms_output["FormName"].type_revision #=> String
    #   resp.name #=> String
    #   resp.origin_domain_id #=> String
    #   resp.origin_project_id #=> String
    #   resp.owning_project_id #=> String
    #   resp.revision #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAssetType AWS API Documentation
    #
    # @overload get_asset_type(params = {})
    # @param [Hash] params ({})
    def get_asset_type(params = {}, options = {})
      req = build_request(:get_asset_type, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone data source.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the data source exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the Amazon DataZone data source.
    #
    # @return [Types::GetDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceOutput#asset_forms_output #asset_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::GetDataSourceOutput#configuration #configuration} => Types::DataSourceConfigurationOutput
    #   * {Types::GetDataSourceOutput#created_at #created_at} => Time
    #   * {Types::GetDataSourceOutput#description #description} => String
    #   * {Types::GetDataSourceOutput#domain_id #domain_id} => String
    #   * {Types::GetDataSourceOutput#enable_setting #enable_setting} => String
    #   * {Types::GetDataSourceOutput#environment_id #environment_id} => String
    #   * {Types::GetDataSourceOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::GetDataSourceOutput#id #id} => String
    #   * {Types::GetDataSourceOutput#last_run_asset_count #last_run_asset_count} => Integer
    #   * {Types::GetDataSourceOutput#last_run_at #last_run_at} => Time
    #   * {Types::GetDataSourceOutput#last_run_error_message #last_run_error_message} => Types::DataSourceErrorMessage
    #   * {Types::GetDataSourceOutput#last_run_status #last_run_status} => String
    #   * {Types::GetDataSourceOutput#name #name} => String
    #   * {Types::GetDataSourceOutput#project_id #project_id} => String
    #   * {Types::GetDataSourceOutput#publish_on_import #publish_on_import} => Boolean
    #   * {Types::GetDataSourceOutput#recommendation #recommendation} => Types::RecommendationConfiguration
    #   * {Types::GetDataSourceOutput#schedule #schedule} => Types::ScheduleConfiguration
    #   * {Types::GetDataSourceOutput#status #status} => String
    #   * {Types::GetDataSourceOutput#type #type} => String
    #   * {Types::GetDataSourceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_forms_output #=> Array
    #   resp.asset_forms_output[0].content #=> String
    #   resp.asset_forms_output[0].form_name #=> String
    #   resp.asset_forms_output[0].type_name #=> String
    #   resp.asset_forms_output[0].type_revision #=> String
    #   resp.configuration.glue_run_configuration.account_id #=> String
    #   resp.configuration.glue_run_configuration.data_access_role #=> String
    #   resp.configuration.glue_run_configuration.region #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.redshift_run_configuration.account_id #=> String
    #   resp.configuration.redshift_run_configuration.data_access_role #=> String
    #   resp.configuration.redshift_run_configuration.redshift_credential_configuration.secret_manager_arn #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_cluster_source.cluster_name #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_serverless_source.workgroup_name #=> String
    #   resp.configuration.redshift_run_configuration.region #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.environment_id #=> String
    #   resp.error_message.error_detail #=> String
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.id #=> String
    #   resp.last_run_asset_count #=> Integer
    #   resp.last_run_at #=> Time
    #   resp.last_run_error_message.error_detail #=> String
    #   resp.last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.publish_on_import #=> Boolean
    #   resp.recommendation.enable_business_name_generation #=> Boolean
    #   resp.schedule.schedule #=> String
    #   resp.schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.type #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataSource AWS API Documentation
    #
    # @overload get_data_source(params = {})
    # @param [Hash] params ({})
    def get_data_source(params = {}, options = {})
      req = build_request(:get_data_source, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone data source run.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which this data source run was performed.
    #
    # @option params [required, String] :identifier
    #   The ID of the data source run.
    #
    # @return [Types::GetDataSourceRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceRunOutput#created_at #created_at} => Time
    #   * {Types::GetDataSourceRunOutput#data_source_configuration_snapshot #data_source_configuration_snapshot} => String
    #   * {Types::GetDataSourceRunOutput#data_source_id #data_source_id} => String
    #   * {Types::GetDataSourceRunOutput#domain_id #domain_id} => String
    #   * {Types::GetDataSourceRunOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::GetDataSourceRunOutput#id #id} => String
    #   * {Types::GetDataSourceRunOutput#project_id #project_id} => String
    #   * {Types::GetDataSourceRunOutput#run_statistics_for_assets #run_statistics_for_assets} => Types::RunStatisticsForAssets
    #   * {Types::GetDataSourceRunOutput#started_at #started_at} => Time
    #   * {Types::GetDataSourceRunOutput#status #status} => String
    #   * {Types::GetDataSourceRunOutput#stopped_at #stopped_at} => Time
    #   * {Types::GetDataSourceRunOutput#type #type} => String
    #   * {Types::GetDataSourceRunOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source_run({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceRunId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.data_source_configuration_snapshot #=> String
    #   resp.data_source_id #=> String
    #   resp.domain_id #=> String
    #   resp.error_message.error_detail #=> String
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.id #=> String
    #   resp.project_id #=> String
    #   resp.run_statistics_for_assets.added #=> Integer
    #   resp.run_statistics_for_assets.failed #=> Integer
    #   resp.run_statistics_for_assets.skipped #=> Integer
    #   resp.run_statistics_for_assets.unchanged #=> Integer
    #   resp.run_statistics_for_assets.updated #=> Integer
    #   resp.started_at #=> Time
    #   resp.status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.stopped_at #=> Time
    #   resp.type #=> String, one of "PRIORITIZED", "SCHEDULED"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataSourceRun AWS API Documentation
    #
    # @overload get_data_source_run(params = {})
    # @param [Hash] params ({})
    def get_data_source_run(params = {}, options = {})
      req = build_request(:get_data_source_run, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #   The identifier of the specified Amazon DataZone domain.
    #
    # @return [Types::GetDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainOutput#arn #arn} => String
    #   * {Types::GetDomainOutput#created_at #created_at} => Time
    #   * {Types::GetDomainOutput#description #description} => String
    #   * {Types::GetDomainOutput#domain_execution_role #domain_execution_role} => String
    #   * {Types::GetDomainOutput#id #id} => String
    #   * {Types::GetDomainOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::GetDomainOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetDomainOutput#name #name} => String
    #   * {Types::GetDomainOutput#portal_url #portal_url} => String
    #   * {Types::GetDomainOutput#single_sign_on #single_sign_on} => Types::SingleSignOn
    #   * {Types::GetDomainOutput#status #status} => String
    #   * {Types::GetDomainOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain({
    #     identifier: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.domain_execution_role #=> String
    #   resp.id #=> String
    #   resp.kms_key_identifier #=> String
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #   resp.portal_url #=> String
    #   resp.single_sign_on.type #=> String, one of "IAM_IDC", "DISABLED"
    #   resp.single_sign_on.user_assignment #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDomain AWS API Documentation
    #
    # @overload get_domain(params = {})
    # @param [Hash] params ({})
    def get_domain(params = {}, options = {})
      req = build_request(:get_domain, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone environment.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where the environment exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the Amazon DataZone environment.
    #
    # @return [Types::GetEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentOutput#aws_account_id #aws_account_id} => String
    #   * {Types::GetEnvironmentOutput#aws_account_region #aws_account_region} => String
    #   * {Types::GetEnvironmentOutput#created_at #created_at} => Time
    #   * {Types::GetEnvironmentOutput#created_by #created_by} => String
    #   * {Types::GetEnvironmentOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::GetEnvironmentOutput#description #description} => String
    #   * {Types::GetEnvironmentOutput#domain_id #domain_id} => String
    #   * {Types::GetEnvironmentOutput#environment_actions #environment_actions} => Array&lt;Types::ConfigurableEnvironmentAction&gt;
    #   * {Types::GetEnvironmentOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::GetEnvironmentOutput#environment_profile_id #environment_profile_id} => String
    #   * {Types::GetEnvironmentOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetEnvironmentOutput#id #id} => String
    #   * {Types::GetEnvironmentOutput#last_deployment #last_deployment} => Types::Deployment
    #   * {Types::GetEnvironmentOutput#name #name} => String
    #   * {Types::GetEnvironmentOutput#project_id #project_id} => String
    #   * {Types::GetEnvironmentOutput#provider #provider} => String
    #   * {Types::GetEnvironmentOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::Resource&gt;
    #   * {Types::GetEnvironmentOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::GetEnvironmentOutput#status #status} => String
    #   * {Types::GetEnvironmentOutput#updated_at #updated_at} => Time
    #   * {Types::GetEnvironmentOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.environment_actions #=> Array
    #   resp.environment_actions[0].auth #=> String, one of "IAM", "HTTPS"
    #   resp.environment_actions[0].parameters #=> Array
    #   resp.environment_actions[0].parameters[0].key #=> String
    #   resp.environment_actions[0].parameters[0].value #=> String
    #   resp.environment_actions[0].type #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.environment_profile_id #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.last_deployment.deployment_id #=> String
    #   resp.last_deployment.deployment_status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "PENDING_DEPLOYMENT"
    #   resp.last_deployment.deployment_type #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.last_deployment.failure_reason.code #=> String
    #   resp.last_deployment.failure_reason.message #=> String
    #   resp.last_deployment.is_deployment_complete #=> Boolean
    #   resp.last_deployment.messages #=> Array
    #   resp.last_deployment.messages[0] #=> String
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.provider #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].provider #=> String
    #   resp.provisioned_resources[0].type #=> String
    #   resp.provisioned_resources[0].value #=> String
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"
    #   resp.updated_at #=> Time
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone blueprint.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain in which this blueprint exists.
    #
    # @option params [required, String] :identifier
    #   The ID of this Amazon DataZone blueprint.
    #
    # @return [Types::GetEnvironmentBlueprintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentBlueprintOutput#created_at #created_at} => Time
    #   * {Types::GetEnvironmentBlueprintOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::GetEnvironmentBlueprintOutput#description #description} => String
    #   * {Types::GetEnvironmentBlueprintOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetEnvironmentBlueprintOutput#id #id} => String
    #   * {Types::GetEnvironmentBlueprintOutput#name #name} => String
    #   * {Types::GetEnvironmentBlueprintOutput#provider #provider} => String
    #   * {Types::GetEnvironmentBlueprintOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::GetEnvironmentBlueprintOutput#updated_at #updated_at} => Time
    #   * {Types::GetEnvironmentBlueprintOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_blueprint({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentBlueprintId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.description #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.provider #=> String
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.updated_at #=> Time
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentBlueprint AWS API Documentation
    #
    # @overload get_environment_blueprint(params = {})
    # @param [Hash] params ({})
    def get_environment_blueprint(params = {}, options = {})
      req = build_request(:get_environment_blueprint, params)
      req.send_request(options)
    end

    # Gets the blueprint configuration in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where this blueprint exists.
    #
    # @option params [required, String] :environment_blueprint_identifier
    #   He ID of the blueprint.
    #
    # @return [Types::GetEnvironmentBlueprintConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#created_at #created_at} => Time
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#domain_id #domain_id} => String
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#enabled_regions #enabled_regions} => Array&lt;String&gt;
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#manage_access_role_arn #manage_access_role_arn} => String
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#provisioning_role_arn #provisioning_role_arn} => String
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#regional_parameters #regional_parameters} => Hash&lt;String,Hash&lt;String,String&gt;&gt;
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_blueprint_configuration({
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.domain_id #=> String
    #   resp.enabled_regions #=> Array
    #   resp.enabled_regions[0] #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.manage_access_role_arn #=> String
    #   resp.provisioning_role_arn #=> String
    #   resp.regional_parameters #=> Hash
    #   resp.regional_parameters["RegionName"] #=> Hash
    #   resp.regional_parameters["RegionName"]["String"] #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentBlueprintConfiguration AWS API Documentation
    #
    # @overload get_environment_blueprint_configuration(params = {})
    # @param [Hash] params ({})
    def get_environment_blueprint_configuration(params = {}, options = {})
      req = build_request(:get_environment_blueprint_configuration, params)
      req.send_request(options)
    end

    # Gets an evinronment profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this environment profile
    #   exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the environment profile.
    #
    # @return [Types::GetEnvironmentProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentProfileOutput#aws_account_id #aws_account_id} => String
    #   * {Types::GetEnvironmentProfileOutput#aws_account_region #aws_account_region} => String
    #   * {Types::GetEnvironmentProfileOutput#created_at #created_at} => Time
    #   * {Types::GetEnvironmentProfileOutput#created_by #created_by} => String
    #   * {Types::GetEnvironmentProfileOutput#description #description} => String
    #   * {Types::GetEnvironmentProfileOutput#domain_id #domain_id} => String
    #   * {Types::GetEnvironmentProfileOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::GetEnvironmentProfileOutput#id #id} => String
    #   * {Types::GetEnvironmentProfileOutput#name #name} => String
    #   * {Types::GetEnvironmentProfileOutput#project_id #project_id} => String
    #   * {Types::GetEnvironmentProfileOutput#updated_at #updated_at} => Time
    #   * {Types::GetEnvironmentProfileOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_profile({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.updated_at #=> Time
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentProfile AWS API Documentation
    #
    # @overload get_environment_profile(params = {})
    # @param [Hash] params ({})
    def get_environment_profile(params = {}, options = {})
      req = build_request(:get_environment_profile, params)
      req.send_request(options)
    end

    # Gets a metadata form type in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this metadata form type
    #   exists.
    #
    # @option params [required, String] :form_type_identifier
    #   The ID of the metadata form type.
    #
    # @option params [String] :revision
    #   The revision of this metadata form type.
    #
    # @return [Types::GetFormTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFormTypeOutput#created_at #created_at} => Time
    #   * {Types::GetFormTypeOutput#created_by #created_by} => String
    #   * {Types::GetFormTypeOutput#description #description} => String
    #   * {Types::GetFormTypeOutput#domain_id #domain_id} => String
    #   * {Types::GetFormTypeOutput#imports #imports} => Array&lt;Types::Import&gt;
    #   * {Types::GetFormTypeOutput#model #model} => Types::Model
    #   * {Types::GetFormTypeOutput#name #name} => String
    #   * {Types::GetFormTypeOutput#origin_domain_id #origin_domain_id} => String
    #   * {Types::GetFormTypeOutput#origin_project_id #origin_project_id} => String
    #   * {Types::GetFormTypeOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetFormTypeOutput#revision #revision} => String
    #   * {Types::GetFormTypeOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_form_type({
    #     domain_identifier: "DomainId", # required
    #     form_type_identifier: "FormTypeIdentifier", # required
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.imports #=> Array
    #   resp.imports[0].name #=> String
    #   resp.imports[0].revision #=> String
    #   resp.model.smithy #=> String
    #   resp.name #=> String
    #   resp.origin_domain_id #=> String
    #   resp.origin_project_id #=> String
    #   resp.owning_project_id #=> String
    #   resp.revision #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetFormType AWS API Documentation
    #
    # @overload get_form_type(params = {})
    # @param [Hash] params ({})
    def get_form_type(params = {}, options = {})
      req = build_request(:get_form_type, params)
      req.send_request(options)
    end

    # Gets a business glossary in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the business glossary.
    #
    # @return [Types::GetGlossaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlossaryOutput#created_at #created_at} => Time
    #   * {Types::GetGlossaryOutput#created_by #created_by} => String
    #   * {Types::GetGlossaryOutput#description #description} => String
    #   * {Types::GetGlossaryOutput#domain_id #domain_id} => String
    #   * {Types::GetGlossaryOutput#id #id} => String
    #   * {Types::GetGlossaryOutput#name #name} => String
    #   * {Types::GetGlossaryOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetGlossaryOutput#status #status} => String
    #   * {Types::GetGlossaryOutput#updated_at #updated_at} => Time
    #   * {Types::GetGlossaryOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_glossary({
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.owning_project_id #=> String
    #   resp.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGlossary AWS API Documentation
    #
    # @overload get_glossary(params = {})
    # @param [Hash] params ({})
    def get_glossary(params = {}, options = {})
      req = build_request(:get_glossary, params)
      req.send_request(options)
    end

    # Gets a business glossary term in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   term exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the business glossary term.
    #
    # @return [Types::GetGlossaryTermOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlossaryTermOutput#created_at #created_at} => Time
    #   * {Types::GetGlossaryTermOutput#created_by #created_by} => String
    #   * {Types::GetGlossaryTermOutput#domain_id #domain_id} => String
    #   * {Types::GetGlossaryTermOutput#glossary_id #glossary_id} => String
    #   * {Types::GetGlossaryTermOutput#id #id} => String
    #   * {Types::GetGlossaryTermOutput#long_description #long_description} => String
    #   * {Types::GetGlossaryTermOutput#name #name} => String
    #   * {Types::GetGlossaryTermOutput#short_description #short_description} => String
    #   * {Types::GetGlossaryTermOutput#status #status} => String
    #   * {Types::GetGlossaryTermOutput#term_relations #term_relations} => Types::TermRelations
    #   * {Types::GetGlossaryTermOutput#updated_at #updated_at} => Time
    #   * {Types::GetGlossaryTermOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_glossary_term({
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryTermId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.glossary_id #=> String
    #   resp.id #=> String
    #   resp.long_description #=> String
    #   resp.name #=> String
    #   resp.short_description #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.term_relations.classifies #=> Array
    #   resp.term_relations.classifies[0] #=> String
    #   resp.term_relations.is_a #=> Array
    #   resp.term_relations.is_a[0] #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGlossaryTerm AWS API Documentation
    #
    # @overload get_glossary_term(params = {})
    # @param [Hash] params ({})
    def get_glossary_term(params = {}, options = {})
      req = build_request(:get_glossary_term, params)
      req.send_request(options)
    end

    # Gets a group profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the group
    #   profile exists.
    #
    # @option params [required, String] :group_identifier
    #   The identifier of the group profile.
    #
    # @return [Types::GetGroupProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupProfileOutput#domain_id #domain_id} => String
    #   * {Types::GetGroupProfileOutput#group_name #group_name} => String
    #   * {Types::GetGroupProfileOutput#id #id} => String
    #   * {Types::GetGroupProfileOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_profile({
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "GroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.group_name #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGroupProfile AWS API Documentation
    #
    # @overload get_group_profile(params = {})
    # @param [Hash] params ({})
    def get_group_profile(params = {}, options = {})
      req = build_request(:get_group_profile, params)
      req.send_request(options)
    end

    # Gets the data portal URL for the specified Amazon DataZone domain.
    #
    # @option params [required, String] :domain_identifier
    #   the ID of the Amazon DataZone domain the data portal of which you want
    #   to get.
    #
    # @return [Types::GetIamPortalLoginUrlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIamPortalLoginUrlOutput#auth_code_url #auth_code_url} => String
    #   * {Types::GetIamPortalLoginUrlOutput#user_profile_id #user_profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_iam_portal_login_url({
    #     domain_identifier: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_code_url #=> String
    #   resp.user_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetIamPortalLoginUrl AWS API Documentation
    #
    # @overload get_iam_portal_login_url(params = {})
    # @param [Hash] params ({})
    def get_iam_portal_login_url(params = {}, options = {})
      req = build_request(:get_iam_portal_login_url, params)
      req.send_request(options)
    end

    # @option params [required, String] :domain_identifier
    #
    # @option params [required, String] :identifier
    #
    # @option params [String] :listing_revision
    #
    # @return [Types::GetListingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetListingOutput#created_at #created_at} => Time
    #   * {Types::GetListingOutput#created_by #created_by} => String
    #   * {Types::GetListingOutput#description #description} => String
    #   * {Types::GetListingOutput#domain_id #domain_id} => String
    #   * {Types::GetListingOutput#id #id} => String
    #   * {Types::GetListingOutput#item #item} => Types::ListingItem
    #   * {Types::GetListingOutput#listing_revision #listing_revision} => String
    #   * {Types::GetListingOutput#name #name} => String
    #   * {Types::GetListingOutput#status #status} => String
    #   * {Types::GetListingOutput#updated_at #updated_at} => Time
    #   * {Types::GetListingOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_listing({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ListingId", # required
    #     listing_revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.item.asset_listing.asset_id #=> String
    #   resp.item.asset_listing.asset_revision #=> String
    #   resp.item.asset_listing.asset_type #=> String
    #   resp.item.asset_listing.created_at #=> Time
    #   resp.item.asset_listing.forms #=> String
    #   resp.item.asset_listing.glossary_terms #=> Array
    #   resp.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.item.asset_listing.owning_project_id #=> String
    #   resp.listing_revision #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetListing AWS API Documentation
    #
    # @overload get_listing(params = {})
    # @param [Hash] params ({})
    def get_listing(params = {}, options = {})
      req = build_request(:get_listing, params)
      req.send_request(options)
    end

    # Gets a project in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the project exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the project.
    #
    # @return [Types::GetProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProjectOutput#created_at #created_at} => Time
    #   * {Types::GetProjectOutput#created_by #created_by} => String
    #   * {Types::GetProjectOutput#description #description} => String
    #   * {Types::GetProjectOutput#domain_id #domain_id} => String
    #   * {Types::GetProjectOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetProjectOutput#id #id} => String
    #   * {Types::GetProjectOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetProjectOutput#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_project({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetProject AWS API Documentation
    #
    # @overload get_project(params = {})
    # @param [Hash] params ({})
    def get_project(params = {}, options = {})
      req = build_request(:get_project, params)
      req.send_request(options)
    end

    # Gets a subscription in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription.
    #
    # @return [Types::GetSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionOutput#created_at #created_at} => Time
    #   * {Types::GetSubscriptionOutput#created_by #created_by} => String
    #   * {Types::GetSubscriptionOutput#domain_id #domain_id} => String
    #   * {Types::GetSubscriptionOutput#id #id} => String
    #   * {Types::GetSubscriptionOutput#retain_permissions #retain_permissions} => Boolean
    #   * {Types::GetSubscriptionOutput#status #status} => String
    #   * {Types::GetSubscriptionOutput#subscribed_listing #subscribed_listing} => Types::SubscribedListing
    #   * {Types::GetSubscriptionOutput#subscribed_principal #subscribed_principal} => Types::SubscribedPrincipal
    #   * {Types::GetSubscriptionOutput#subscription_request_id #subscription_request_id} => String
    #   * {Types::GetSubscriptionOutput#updated_at #updated_at} => Time
    #   * {Types::GetSubscriptionOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.retain_permissions #=> Boolean
    #   resp.status #=> String, one of "APPROVED", "REVOKED", "CANCELLED"
    #   resp.subscribed_listing.description #=> String
    #   resp.subscribed_listing.id #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_id #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_type #=> String
    #   resp.subscribed_listing.item.asset_listing.forms #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listing.name #=> String
    #   resp.subscribed_listing.owner_project_id #=> String
    #   resp.subscribed_listing.owner_project_name #=> String
    #   resp.subscribed_listing.revision #=> String
    #   resp.subscribed_principal.project.id #=> String
    #   resp.subscribed_principal.project.name #=> String
    #   resp.subscription_request_id #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscription AWS API Documentation
    #
    # @overload get_subscription(params = {})
    # @param [Hash] params ({})
    def get_subscription(params = {}, options = {})
      req = build_request(:get_subscription, params)
      req.send_request(options)
    end

    # Gets the subscription grant in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription grant
    #   exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription grant.
    #
    # @return [Types::GetSubscriptionGrantOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionGrantOutput#assets #assets} => Array&lt;Types::SubscribedAsset&gt;
    #   * {Types::GetSubscriptionGrantOutput#created_at #created_at} => Time
    #   * {Types::GetSubscriptionGrantOutput#created_by #created_by} => String
    #   * {Types::GetSubscriptionGrantOutput#domain_id #domain_id} => String
    #   * {Types::GetSubscriptionGrantOutput#granted_entity #granted_entity} => Types::GrantedEntity
    #   * {Types::GetSubscriptionGrantOutput#id #id} => String
    #   * {Types::GetSubscriptionGrantOutput#status #status} => String
    #   * {Types::GetSubscriptionGrantOutput#subscription_id #subscription_id} => String
    #   * {Types::GetSubscriptionGrantOutput#subscription_target_id #subscription_target_id} => String
    #   * {Types::GetSubscriptionGrantOutput#updated_at #updated_at} => Time
    #   * {Types::GetSubscriptionGrantOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_grant({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionGrantId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assets #=> Array
    #   resp.assets[0].asset_id #=> String
    #   resp.assets[0].asset_revision #=> String
    #   resp.assets[0].failure_cause.message #=> String
    #   resp.assets[0].failure_timestamp #=> Time
    #   resp.assets[0].granted_timestamp #=> Time
    #   resp.assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.assets[0].target_name #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.granted_entity.listing.id #=> String
    #   resp.granted_entity.listing.revision #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.subscription_id #=> String
    #   resp.subscription_target_id #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionGrant AWS API Documentation
    #
    # @overload get_subscription_grant(params = {})
    # @param [Hash] params ({})
    def get_subscription_grant(params = {}, options = {})
      req = build_request(:get_subscription_grant, params)
      req.send_request(options)
    end

    # Gets the details of the specified subscription request.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to get the
    #   subscription request details.
    #
    # @option params [required, String] :identifier
    #   The identifier of the subscription request the details of which to
    #   get.
    #
    # @return [Types::GetSubscriptionRequestDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionRequestDetailsOutput#created_at #created_at} => Time
    #   * {Types::GetSubscriptionRequestDetailsOutput#created_by #created_by} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#decision_comment #decision_comment} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#domain_id #domain_id} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#id #id} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#request_reason #request_reason} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#reviewer_id #reviewer_id} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#status #status} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::GetSubscriptionRequestDetailsOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::GetSubscriptionRequestDetailsOutput#updated_at #updated_at} => Time
    #   * {Types::GetSubscriptionRequestDetailsOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_request_details({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.decision_comment #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.request_reason #=> String
    #   resp.reviewer_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionRequestDetails AWS API Documentation
    #
    # @overload get_subscription_request_details(params = {})
    # @param [Hash] params ({})
    def get_subscription_request_details(params = {}, options = {})
      req = build_request(:get_subscription_request_details, params)
      req.send_request(options)
    end

    # Gets the subscription target in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription target
    #   exists.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment associated with the subscription target.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription target.
    #
    # @return [Types::GetSubscriptionTargetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionTargetOutput#applicable_asset_types #applicable_asset_types} => Array&lt;String&gt;
    #   * {Types::GetSubscriptionTargetOutput#authorized_principals #authorized_principals} => Array&lt;String&gt;
    #   * {Types::GetSubscriptionTargetOutput#created_at #created_at} => Time
    #   * {Types::GetSubscriptionTargetOutput#created_by #created_by} => String
    #   * {Types::GetSubscriptionTargetOutput#domain_id #domain_id} => String
    #   * {Types::GetSubscriptionTargetOutput#environment_id #environment_id} => String
    #   * {Types::GetSubscriptionTargetOutput#id #id} => String
    #   * {Types::GetSubscriptionTargetOutput#manage_access_role #manage_access_role} => String
    #   * {Types::GetSubscriptionTargetOutput#name #name} => String
    #   * {Types::GetSubscriptionTargetOutput#project_id #project_id} => String
    #   * {Types::GetSubscriptionTargetOutput#provider #provider} => String
    #   * {Types::GetSubscriptionTargetOutput#subscription_target_config #subscription_target_config} => Array&lt;Types::SubscriptionTargetForm&gt;
    #   * {Types::GetSubscriptionTargetOutput#type #type} => String
    #   * {Types::GetSubscriptionTargetOutput#updated_at #updated_at} => Time
    #   * {Types::GetSubscriptionTargetOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_target({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "SubscriptionTargetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.applicable_asset_types #=> Array
    #   resp.applicable_asset_types[0] #=> String
    #   resp.authorized_principals #=> Array
    #   resp.authorized_principals[0] #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.environment_id #=> String
    #   resp.id #=> String
    #   resp.manage_access_role #=> String
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.provider #=> String
    #   resp.subscription_target_config #=> Array
    #   resp.subscription_target_config[0].content #=> String
    #   resp.subscription_target_config[0].form_name #=> String
    #   resp.type #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionTarget AWS API Documentation
    #
    # @overload get_subscription_target(params = {})
    # @param [Hash] params ({})
    def get_subscription_target(params = {}, options = {})
      req = build_request(:get_subscription_target, params)
      req.send_request(options)
    end

    # Gets a user profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   the ID of the Amazon DataZone domain the data portal of which you want
    #   to get.
    #
    # @option params [String] :type
    #   The type of the user profile.
    #
    # @option params [required, String] :user_identifier
    #   The identifier of the user for which you want to get the user profile.
    #
    # @return [Types::GetUserProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserProfileOutput#details #details} => Types::UserProfileDetails
    #   * {Types::GetUserProfileOutput#domain_id #domain_id} => String
    #   * {Types::GetUserProfileOutput#id #id} => String
    #   * {Types::GetUserProfileOutput#status #status} => String
    #   * {Types::GetUserProfileOutput#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_profile({
    #     domain_identifier: "DomainId", # required
    #     type: "IAM", # accepts IAM, SSO
    #     user_identifier: "UserIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.details.iam.arn #=> String
    #   resp.details.sso.first_name #=> String
    #   resp.details.sso.last_name #=> String
    #   resp.details.sso.username #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"
    #   resp.type #=> String, one of "IAM", "SSO"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetUserProfile AWS API Documentation
    #
    # @overload get_user_profile(params = {})
    # @param [Hash] params ({})
    def get_user_profile(params = {}, options = {})
      req = build_request(:get_user_profile, params)
      req.send_request(options)
    end

    # Lists the revisions for the asset.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain.
    #
    # @option params [required, String] :identifier
    #   The identifier of the asset.
    #
    # @option params [Integer] :max_results
    #   The maximum number of revisions to return in a single call to
    #   `ListAssetRevisions`. When the number of revisions to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListAssetRevisions` to list the next set of revisions.
    #
    # @option params [String] :next_token
    #   When the number of revisions is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of revisions, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListAssetRevisions` to list
    #   the next set of revisions.
    #
    # @return [Types::ListAssetRevisionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetRevisionsOutput#items #items} => Array&lt;Types::AssetRevision&gt;
    #   * {Types::ListAssetRevisionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_revisions({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].revision #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListAssetRevisions AWS API Documentation
    #
    # @overload list_asset_revisions(params = {})
    # @param [Hash] params ({})
    def list_asset_revisions(params = {}, options = {})
      req = build_request(:list_asset_revisions, params)
      req.send_request(options)
    end

    # Lists data source run activities.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to list data
    #   source run activities.
    #
    # @option params [required, String] :identifier
    #   The identifier of the data source run.
    #
    # @option params [Integer] :max_results
    #   The maximum number of activities to return in a single call to
    #   `ListDataSourceRunActivities`. When the number of activities to be
    #   listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListDataSourceRunActivities` to list the next set of activities.
    #
    # @option params [String] :next_token
    #   When the number of activities is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of activities, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to
    #   `ListDataSourceRunActivities` to list the next set of activities.
    #
    # @option params [String] :status
    #   The status of the data source run.
    #
    # @return [Types::ListDataSourceRunActivitiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourceRunActivitiesOutput#items #items} => Array&lt;Types::DataSourceRunActivity&gt;
    #   * {Types::ListDataSourceRunActivitiesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_source_run_activities({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceRunId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     status: "FAILED", # accepts FAILED, PUBLISHING_FAILED, SUCCEEDED_CREATED, SUCCEEDED_UPDATED, SKIPPED_ALREADY_IMPORTED, SKIPPED_ARCHIVED, SKIPPED_NO_ACCESS, UNCHANGED
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].data_asset_id #=> String
    #   resp.items[0].data_asset_status #=> String, one of "FAILED", "PUBLISHING_FAILED", "SUCCEEDED_CREATED", "SUCCEEDED_UPDATED", "SKIPPED_ALREADY_IMPORTED", "SKIPPED_ARCHIVED", "SKIPPED_NO_ACCESS", "UNCHANGED"
    #   resp.items[0].data_source_run_id #=> String
    #   resp.items[0].database #=> String
    #   resp.items[0].error_message.error_detail #=> String
    #   resp.items[0].error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.items[0].project_id #=> String
    #   resp.items[0].technical_description #=> String
    #   resp.items[0].technical_name #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourceRunActivities AWS API Documentation
    #
    # @overload list_data_source_run_activities(params = {})
    # @param [Hash] params ({})
    def list_data_source_run_activities(params = {}, options = {})
      req = build_request(:list_data_source_run_activities, params)
      req.send_request(options)
    end

    # Lists data source runs in Amazon DataZone.
    #
    # @option params [required, String] :data_source_identifier
    #   The identifier of the data source.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to invoke the
    #   `ListDataSourceRuns` action.
    #
    # @option params [Integer] :max_results
    #   The maximum number of runs to return in a single call to
    #   `ListDataSourceRuns`. When the number of runs to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `ListDataSourceRuns` to
    #   list the next set of runs.
    #
    # @option params [String] :next_token
    #   When the number of runs is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of runs, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListDataSourceRuns` to list
    #   the next set of runs.
    #
    # @option params [String] :status
    #   The status of the data source.
    #
    # @return [Types::ListDataSourceRunsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourceRunsOutput#items #items} => Array&lt;Types::DataSourceRunSummary&gt;
    #   * {Types::ListDataSourceRunsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_source_runs({
    #     data_source_identifier: "DataSourceId", # required
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     status: "REQUESTED", # accepts REQUESTED, RUNNING, FAILED, PARTIALLY_SUCCEEDED, SUCCESS
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].data_source_id #=> String
    #   resp.items[0].error_message.error_detail #=> String
    #   resp.items[0].error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.items[0].id #=> String
    #   resp.items[0].project_id #=> String
    #   resp.items[0].run_statistics_for_assets.added #=> Integer
    #   resp.items[0].run_statistics_for_assets.failed #=> Integer
    #   resp.items[0].run_statistics_for_assets.skipped #=> Integer
    #   resp.items[0].run_statistics_for_assets.unchanged #=> Integer
    #   resp.items[0].run_statistics_for_assets.updated #=> Integer
    #   resp.items[0].started_at #=> Time
    #   resp.items[0].status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.items[0].stopped_at #=> Time
    #   resp.items[0].type #=> String, one of "PRIORITIZED", "SCHEDULED"
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourceRuns AWS API Documentation
    #
    # @overload list_data_source_runs(params = {})
    # @param [Hash] params ({})
    def list_data_source_runs(params = {}, options = {})
      req = build_request(:list_data_source_runs, params)
      req.send_request(options)
    end

    # Lists data sources in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to list the data
    #   sources.
    #
    # @option params [String] :environment_identifier
    #   The identifier of the environment in which to list the data sources.
    #
    # @option params [Integer] :max_results
    #   The maximum number of data sources to return in a single call to
    #   `ListDataSources`. When the number of data sources to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListDataSources` to list the next set of data sources.
    #
    # @option params [String] :name
    #   The name of the data source.
    #
    # @option params [String] :next_token
    #   When the number of data sources is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of data sources, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListDataSources` to list the next set of data sources.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the project in which to list data sources.
    #
    # @option params [String] :status
    #   The status of the data source.
    #
    # @option params [String] :type
    #   The type of the data source.
    #
    # @return [Types::ListDataSourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesOutput#items #items} => Array&lt;Types::DataSourceSummary&gt;
    #   * {Types::ListDataSourcesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "String",
    #     max_results: 1,
    #     name: "Name",
    #     next_token: "PaginationToken",
    #     project_identifier: "String", # required
    #     status: "CREATING", # accepts CREATING, FAILED_CREATION, READY, UPDATING, FAILED_UPDATE, RUNNING, DELETING, FAILED_DELETION
    #     type: "DataSourceType",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].data_source_id #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].environment_id #=> String
    #   resp.items[0].last_run_asset_count #=> Integer
    #   resp.items[0].last_run_at #=> Time
    #   resp.items[0].last_run_error_message.error_detail #=> String
    #   resp.items[0].last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.items[0].last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.items[0].name #=> String
    #   resp.items[0].schedule.schedule #=> String
    #   resp.items[0].schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.items[0].status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.items[0].type #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone domains.
    #
    # @option params [Integer] :max_results
    #   The maximum number of domains to return in a single call to
    #   `ListDomains`. When the number of domains to be listed is greater than
    #   the value of `MaxResults`, the response contains a `NextToken` value
    #   that you can use in a subsequent call to `ListDomains` to list the
    #   next set of domains.
    #
    # @option params [String] :next_token
    #   When the number of domains is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of domains, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListDomains` to list the
    #   next set of domains.
    #
    # @option params [String] :status
    #   The status of the data source.
    #
    # @return [Types::ListDomainsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsOutput#items #items} => Array&lt;Types::DomainSummary&gt;
    #   * {Types::ListDomainsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     status: "CREATING", # accepts CREATING, AVAILABLE, CREATION_FAILED, DELETING, DELETED, DELETION_FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].description #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].managed_account_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].portal_url #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Lists blueprint configurations for a Amazon DataZone environment.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of blueprint configurations to return in a single
    #   call to `ListEnvironmentBlueprintConfigurations`. When the number of
    #   configurations to be listed is greater than the value of `MaxResults`,
    #   the response contains a `NextToken` value that you can use in a
    #   subsequent call to `ListEnvironmentBlueprintConfigurations` to list
    #   the next set of configurations.
    #
    # @option params [String] :next_token
    #   When the number of blueprint configurations is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   configurations, the response includes a pagination token named
    #   `NextToken`. You can specify this `NextToken` value in a subsequent
    #   call to `ListEnvironmentBlueprintConfigurations` to list the next set
    #   of configurations.
    #
    # @return [Types::ListEnvironmentBlueprintConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentBlueprintConfigurationsOutput#items #items} => Array&lt;Types::EnvironmentBlueprintConfigurationItem&gt;
    #   * {Types::ListEnvironmentBlueprintConfigurationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_blueprint_configurations({
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].enabled_regions #=> Array
    #   resp.items[0].enabled_regions[0] #=> String
    #   resp.items[0].environment_blueprint_id #=> String
    #   resp.items[0].manage_access_role_arn #=> String
    #   resp.items[0].provisioning_role_arn #=> String
    #   resp.items[0].regional_parameters #=> Hash
    #   resp.items[0].regional_parameters["RegionName"] #=> Hash
    #   resp.items[0].regional_parameters["RegionName"]["String"] #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentBlueprintConfigurations AWS API Documentation
    #
    # @overload list_environment_blueprint_configurations(params = {})
    # @param [Hash] params ({})
    def list_environment_blueprint_configurations(params = {}, options = {})
      req = build_request(:list_environment_blueprint_configurations, params)
      req.send_request(options)
    end

    # Lists blueprints in an Amazon DataZone environment.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [Boolean] :managed
    #   Specifies whether the environment blueprint is managed by Amazon
    #   DataZone.
    #
    # @option params [Integer] :max_results
    #   The maximum number of blueprints to return in a single call to
    #   `ListEnvironmentBlueprints`. When the number of blueprints to be
    #   listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListEnvironmentBlueprints` to list the next set of blueprints.
    #
    # @option params [String] :name
    #   The name of the Amazon DataZone environment.
    #
    # @option params [String] :next_token
    #   When the number of blueprints in the environment is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   blueprints in the environment, the response includes a pagination
    #   token named `NextToken`. You can specify this `NextToken` value in a
    #   subsequent call to `ListEnvironmentBlueprints`to list the next set of
    #   blueprints.
    #
    # @return [Types::ListEnvironmentBlueprintsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentBlueprintsOutput#items #items} => Array&lt;Types::EnvironmentBlueprintSummary&gt;
    #   * {Types::ListEnvironmentBlueprintsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_blueprints({
    #     domain_identifier: "DomainId", # required
    #     managed: false,
    #     max_results: 1,
    #     name: "EnvironmentBlueprintName",
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].description #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].provider #=> String
    #   resp.items[0].provisioning_properties.cloud_formation.template_url #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentBlueprints AWS API Documentation
    #
    # @overload list_environment_blueprints(params = {})
    # @param [Hash] params ({})
    def list_environment_blueprints(params = {}, options = {})
      req = build_request(:list_environment_blueprints, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone environment profiles.
    #
    # @option params [String] :aws_account_id
    #   The identifier of the Amazon Web Services account where you want to
    #   list environment profiles.
    #
    # @option params [String] :aws_account_region
    #   The Amazon Web Services region where you want to list environment
    #   profiles.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :environment_blueprint_identifier
    #   The identifier of the blueprint that was used to create the
    #   environment profiles that you want to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environment profiles to return in a single call
    #   to `ListEnvironmentProfiles`. When the number of environment profiles
    #   to be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListEnvironmentProfiles` to list the next set of environment
    #   profiles.
    #
    # @option params [String] :name
    #
    # @option params [String] :next_token
    #   When the number of environment profiles is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of environment
    #   profiles, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListEnvironmentProfiles` to list the next set of environment
    #   profiles.
    #
    # @option params [String] :project_identifier
    #   The identifier of the Amazon DataZone project.
    #
    # @return [Types::ListEnvironmentProfilesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentProfilesOutput#items #items} => Array&lt;Types::EnvironmentProfileSummary&gt;
    #   * {Types::ListEnvironmentProfilesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_profiles({
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId",
    #     max_results: 1,
    #     name: "EnvironmentProfileName",
    #     next_token: "PaginationToken",
    #     project_identifier: "ProjectId",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].aws_account_id #=> String
    #   resp.items[0].aws_account_region #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].environment_blueprint_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].project_id #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentProfiles AWS API Documentation
    #
    # @overload list_environment_profiles(params = {})
    # @param [Hash] params ({})
    def list_environment_profiles(params = {}, options = {})
      req = build_request(:list_environment_profiles, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone environments.
    #
    # @option params [String] :aws_account_id
    #   The identifier of the Amazon Web Services account where you want to
    #   list environments.
    #
    # @option params [String] :aws_account_region
    #   The Amazon Web Services region where you want to list environments.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :environment_blueprint_identifier
    #   The identifier of the Amazon DataZone blueprint.
    #
    # @option params [String] :environment_profile_identifier
    #   The identifier of the environment profile.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environments to return in a single call to
    #   `ListEnvironments`. When the number of environments to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListEnvironments` to list the next set of environments.
    #
    # @option params [String] :name
    #
    # @option params [String] :next_token
    #   When the number of environments is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of environments, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListEnvironments` to list the next set of environments.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the Amazon DataZone project.
    #
    # @option params [String] :provider
    #   The provider of the environment.
    #
    # @option params [String] :status
    #   The status of the environments that you want to list.
    #
    # @return [Types::ListEnvironmentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsOutput#items #items} => Array&lt;Types::EnvironmentSummary&gt;
    #   * {Types::ListEnvironmentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId",
    #     environment_profile_identifier: "EnvironmentProfileId",
    #     max_results: 1,
    #     name: "String",
    #     next_token: "PaginationToken",
    #     project_identifier: "ProjectId", # required
    #     provider: "String",
    #     status: "ACTIVE", # accepts ACTIVE, CREATING, UPDATING, DELETING, CREATE_FAILED, UPDATE_FAILED, DELETE_FAILED, VALIDATION_FAILED, SUSPENDED, DISABLED, EXPIRED, DELETED, INACCESSIBLE
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].aws_account_id #=> String
    #   resp.items[0].aws_account_region #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].environment_profile_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].project_id #=> String
    #   resp.items[0].provider #=> String
    #   resp.items[0].status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Lists all Amazon DataZone notifications.
    #
    # @option params [Time,DateTime,Date,Integer,String] :after_timestamp
    #   The time after which you want to list notifications.
    #
    # @option params [Time,DateTime,Date,Integer,String] :before_timestamp
    #   The time before which you want to list notifications.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of notifications to return in a single call to
    #   `ListNotifications`. When the number of notifications to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListNotifications` to list the next set of notifications.
    #
    # @option params [String] :next_token
    #   When the number of notifications is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of notifications, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListNotifications` to list the next set of notifications.
    #
    # @option params [Array<String>] :subjects
    #   The subjects of notifications.
    #
    # @option params [String] :task_status
    #   The task status of notifications.
    #
    # @option params [required, String] :type
    #   The type of notifications.
    #
    # @return [Types::ListNotificationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationsOutput#next_token #next_token} => String
    #   * {Types::ListNotificationsOutput#notifications #notifications} => Array&lt;Types::NotificationOutput&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notifications({
    #     after_timestamp: Time.now,
    #     before_timestamp: Time.now,
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     subjects: ["String"],
    #     task_status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     type: "TASK", # required, accepts TASK, EVENT
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.notifications #=> Array
    #   resp.notifications[0].action_link #=> String
    #   resp.notifications[0].creation_timestamp #=> Time
    #   resp.notifications[0].domain_identifier #=> String
    #   resp.notifications[0].identifier #=> String
    #   resp.notifications[0].last_updated_timestamp #=> Time
    #   resp.notifications[0].message #=> String
    #   resp.notifications[0].metadata #=> Hash
    #   resp.notifications[0].metadata["String"] #=> String
    #   resp.notifications[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.notifications[0].title #=> String
    #   resp.notifications[0].topic.resource.id #=> String
    #   resp.notifications[0].topic.resource.name #=> String
    #   resp.notifications[0].topic.resource.type #=> String, one of "PROJECT"
    #   resp.notifications[0].topic.role #=> String, one of "PROJECT_OWNER", "PROJECT_CONTRIBUTOR", "PROJECT_VIEWER", "DOMAIN_OWNER", "PROJECT_SUBSCRIBER"
    #   resp.notifications[0].topic.subject #=> String
    #   resp.notifications[0].type #=> String, one of "TASK", "EVENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListNotifications AWS API Documentation
    #
    # @overload list_notifications(params = {})
    # @param [Hash] params ({})
    def list_notifications(params = {}, options = {})
      req = build_request(:list_notifications, params)
      req.send_request(options)
    end

    # Lists all members of the specified project.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which you want to list
    #   project memberships.
    #
    # @option params [Integer] :max_results
    #   The maximum number of memberships to return in a single call to
    #   `ListProjectMemberships`. When the number of memberships to be listed
    #   is greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListProjectMemberships` to list the next set of memberships.
    #
    # @option params [String] :next_token
    #   When the number of memberships is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of memberships, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListProjectMemberships` to
    #   list the next set of memberships.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the project whose memberships you want to list.
    #
    # @option params [String] :sort_by
    #   The method by which you want to sort the project memberships.
    #
    # @option params [String] :sort_order
    #   The sort order of the project memberships.
    #
    # @return [Types::ListProjectMembershipsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectMembershipsOutput#members #members} => Array&lt;Types::ProjectMember&gt;
    #   * {Types::ListProjectMembershipsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_project_memberships({
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     project_identifier: "ProjectId", # required
    #     sort_by: "NAME", # accepts NAME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].designation #=> String, one of "PROJECT_OWNER", "PROJECT_CONTRIBUTOR"
    #   resp.members[0].member_details.group.group_id #=> String
    #   resp.members[0].member_details.user.user_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjectMemberships AWS API Documentation
    #
    # @overload list_project_memberships(params = {})
    # @param [Hash] params ({})
    def list_project_memberships(params = {}, options = {})
      req = build_request(:list_project_memberships, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone projects.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :group_identifier
    #   The identifier of a group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of projects to return in a single call to
    #   `ListProjects`. When the number of projects to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `ListProjects` to list
    #   the next set of projects.
    #
    # @option params [String] :name
    #
    # @option params [String] :next_token
    #   When the number of projects is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of projects, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListProjects` to list the
    #   next set of projects.
    #
    # @option params [String] :user_identifier
    #   The identifier of the Amazon DataZone user.
    #
    # @return [Types::ListProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsOutput#items #items} => Array&lt;Types::ProjectSummary&gt;
    #   * {Types::ListProjectsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "String",
    #     max_results: 1,
    #     name: "ProjectName",
    #     next_token: "PaginationToken",
    #     user_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Lists subscription grants.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :environment_id
    #   The identifier of the Amazon DataZone environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of subscription grants to return in a single call
    #   to `ListSubscriptionGrants`. When the number of subscription grants to
    #   be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListSubscriptionGrants` to list the next set of subscription grants.
    #
    # @option params [String] :next_token
    #   When the number of subscription grants is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   grants, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionGrants` to list the next set of subscription grants.
    #
    # @option params [String] :sort_by
    #   Specifies the way of sorting the results of this action.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order of this action.
    #
    # @option params [String] :subscribed_listing_id
    #   The identifier of the subscribed listing.
    #
    # @option params [String] :subscription_id
    #   The identifier of the subscription.
    #
    # @option params [String] :subscription_target_id
    #   The identifier of the subscription target.
    #
    # @return [Types::ListSubscriptionGrantsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionGrantsOutput#items #items} => Array&lt;Types::SubscriptionGrantSummary&gt;
    #   * {Types::ListSubscriptionGrantsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_grants({
    #     domain_identifier: "DomainId", # required
    #     environment_id: "EnvironmentId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CREATED_AT", # accepts CREATED_AT, UPDATED_AT
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     subscribed_listing_id: "ListingId",
    #     subscription_id: "SubscriptionId",
    #     subscription_target_id: "SubscriptionTargetId",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].assets #=> Array
    #   resp.items[0].assets[0].asset_id #=> String
    #   resp.items[0].assets[0].asset_revision #=> String
    #   resp.items[0].assets[0].failure_cause.message #=> String
    #   resp.items[0].assets[0].failure_timestamp #=> Time
    #   resp.items[0].assets[0].granted_timestamp #=> Time
    #   resp.items[0].assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.items[0].assets[0].target_name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].granted_entity.listing.id #=> String
    #   resp.items[0].granted_entity.listing.revision #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.items[0].subscription_id #=> String
    #   resp.items[0].subscription_target_id #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionGrants AWS API Documentation
    #
    # @overload list_subscription_grants(params = {})
    # @param [Hash] params ({})
    def list_subscription_grants(params = {}, options = {})
      req = build_request(:list_subscription_grants, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone subscription requests.
    #
    # @option params [String] :approver_project_id
    #   The identifier of the subscription request approver's project.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of subscription requests to return in a single call
    #   to `ListSubscriptionRequests`. When the number of subscription
    #   requests to be listed is greater than the value of `MaxResults`, the
    #   response contains a `NextToken` value that you can use in a subsequent
    #   call to `ListSubscriptionRequests` to list the next set of
    #   subscription requests.
    #
    # @option params [String] :next_token
    #   When the number of subscription requests is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   requests, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionRequests` to list the next set of subscription
    #   requests.
    #
    # @option params [String] :owning_project_id
    #   The identifier of the project for the subscription requests.
    #
    # @option params [String] :sort_by
    #   Specifies the way to sort the results of this action.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order for the results of this action.
    #
    # @option params [String] :status
    #   Specifies the status of the subscription requests.
    #
    # @option params [String] :subscribed_listing_id
    #   The identifier of the subscribed listing.
    #
    # @return [Types::ListSubscriptionRequestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionRequestsOutput#items #items} => Array&lt;Types::SubscriptionRequestSummary&gt;
    #   * {Types::ListSubscriptionRequestsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_requests({
    #     approver_project_id: "ProjectId",
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     owning_project_id: "ProjectId",
    #     sort_by: "CREATED_AT", # accepts CREATED_AT, UPDATED_AT
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     status: "PENDING", # accepts PENDING, ACCEPTED, REJECTED
    #     subscribed_listing_id: "ListingId",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].decision_comment #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].request_reason #=> String
    #   resp.items[0].reviewer_id #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.items[0].subscribed_listings #=> Array
    #   resp.items[0].subscribed_listings[0].description #=> String
    #   resp.items[0].subscribed_listings[0].id #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.items[0].subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.items[0].subscribed_listings[0].name #=> String
    #   resp.items[0].subscribed_listings[0].owner_project_id #=> String
    #   resp.items[0].subscribed_listings[0].owner_project_name #=> String
    #   resp.items[0].subscribed_listings[0].revision #=> String
    #   resp.items[0].subscribed_principals #=> Array
    #   resp.items[0].subscribed_principals[0].project.id #=> String
    #   resp.items[0].subscribed_principals[0].project.name #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionRequests AWS API Documentation
    #
    # @overload list_subscription_requests(params = {})
    # @param [Hash] params ({})
    def list_subscription_requests(params = {}, options = {})
      req = build_request(:list_subscription_requests, params)
      req.send_request(options)
    end

    # Lists subscription targets in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain where you want to list
    #   subscription targets.
    #
    # @option params [required, String] :environment_identifier
    #   The identifier of the environment where you want to list subscription
    #   targets.
    #
    # @option params [Integer] :max_results
    #   The maximum number of subscription targets to return in a single call
    #   to `ListSubscriptionTargets`. When the number of subscription targets
    #   to be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListSubscriptionTargets` to list the next set of subscription
    #   targets.
    #
    # @option params [String] :next_token
    #   When the number of subscription targets is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   targets, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionTargets` to list the next set of subscription
    #   targets.
    #
    # @option params [String] :sort_by
    #   Specifies the way in which the results of this action are to be
    #   sorted.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order for the results of this action.
    #
    # @return [Types::ListSubscriptionTargetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionTargetsOutput#items #items} => Array&lt;Types::SubscriptionTargetSummary&gt;
    #   * {Types::ListSubscriptionTargetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_targets({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CREATED_AT", # accepts CREATED_AT, UPDATED_AT
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].applicable_asset_types #=> Array
    #   resp.items[0].applicable_asset_types[0] #=> String
    #   resp.items[0].authorized_principals #=> Array
    #   resp.items[0].authorized_principals[0] #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].environment_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].manage_access_role #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].project_id #=> String
    #   resp.items[0].provider #=> String
    #   resp.items[0].subscription_target_config #=> Array
    #   resp.items[0].subscription_target_config[0].content #=> String
    #   resp.items[0].subscription_target_config[0].form_name #=> String
    #   resp.items[0].type #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionTargets AWS API Documentation
    #
    # @overload list_subscription_targets(params = {})
    # @param [Hash] params ({})
    def list_subscription_targets(params = {}, options = {})
      req = build_request(:list_subscription_targets, params)
      req.send_request(options)
    end

    # Lists subscriptions in Amazon DataZone.
    #
    # @option params [String] :approver_project_id
    #   The identifier of the project for the subscription's approver.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of subscriptions to return in a single call to
    #   `ListSubscriptions`. When the number of subscriptions to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListSubscriptions` to list the next set of Subscriptions.
    #
    # @option params [String] :next_token
    #   When the number of subscriptions is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of subscriptions, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptions` to list the next set of subscriptions.
    #
    # @option params [String] :owning_project_id
    #   The identifier of the owning project.
    #
    # @option params [String] :sort_by
    #   Specifies the way in which the results of this action are to be
    #   sorted.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order for the results of this action.
    #
    # @option params [String] :status
    #   The status of the subscriptions that you want to list.
    #
    # @option params [String] :subscribed_listing_id
    #   The identifier of the subscribed listing for the subscriptions that
    #   you want to list.
    #
    # @option params [String] :subscription_request_identifier
    #   The identifier of the subscription request for the subscriptions that
    #   you want to list.
    #
    # @return [Types::ListSubscriptionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionsOutput#items #items} => Array&lt;Types::SubscriptionSummary&gt;
    #   * {Types::ListSubscriptionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscriptions({
    #     approver_project_id: "ProjectId",
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     owning_project_id: "ProjectId",
    #     sort_by: "CREATED_AT", # accepts CREATED_AT, UPDATED_AT
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     status: "APPROVED", # accepts APPROVED, REVOKED, CANCELLED
    #     subscribed_listing_id: "ListingId",
    #     subscription_request_identifier: "SubscriptionRequestId",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].retain_permissions #=> Boolean
    #   resp.items[0].status #=> String, one of "APPROVED", "REVOKED", "CANCELLED"
    #   resp.items[0].subscribed_listing.description #=> String
    #   resp.items[0].subscribed_listing.id #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.entity_id #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.entity_revision #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.entity_type #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.forms #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.glossary_terms #=> Array
    #   resp.items[0].subscribed_listing.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.items[0].subscribed_listing.name #=> String
    #   resp.items[0].subscribed_listing.owner_project_id #=> String
    #   resp.items[0].subscribed_listing.owner_project_name #=> String
    #   resp.items[0].subscribed_listing.revision #=> String
    #   resp.items[0].subscribed_principal.project.id #=> String
    #   resp.items[0].subscribed_principal.project.name #=> String
    #   resp.items[0].subscription_request_id #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptions AWS API Documentation
    #
    # @overload list_subscriptions(params = {})
    # @param [Hash] params ({})
    def list_subscriptions(params = {}, options = {})
      req = build_request(:list_subscriptions, params)
      req.send_request(options)
    end

    # Lists tags for the specified resource in Amazon DataZone.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource whose tags you want to list.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Writes the configuration for the specified environment blueprint in
    # Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [required, Array<String>] :enabled_regions
    #   Specifies the enabled Amazon Web Services Regions.
    #
    # @option params [required, String] :environment_blueprint_identifier
    #   The identifier of the environment blueprint.
    #
    # @option params [String] :manage_access_role_arn
    #   The ARN of the manage access role.
    #
    # @option params [String] :provisioning_role_arn
    #   The ARN of the provisioning role.
    #
    # @option params [Hash<String,Hash>] :regional_parameters
    #   The regional parameters in the environment blueprint.
    #
    # @return [Types::PutEnvironmentBlueprintConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#created_at #created_at} => Time
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#domain_id #domain_id} => String
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#enabled_regions #enabled_regions} => Array&lt;String&gt;
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#manage_access_role_arn #manage_access_role_arn} => String
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#provisioning_role_arn #provisioning_role_arn} => String
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#regional_parameters #regional_parameters} => Hash&lt;String,Hash&lt;String,String&gt;&gt;
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_environment_blueprint_configuration({
    #     domain_identifier: "DomainId", # required
    #     enabled_regions: ["RegionName"], # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #     manage_access_role_arn: "RoleArn",
    #     provisioning_role_arn: "RoleArn",
    #     regional_parameters: {
    #       "RegionName" => {
    #         "String" => "String",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.domain_id #=> String
    #   resp.enabled_regions #=> Array
    #   resp.enabled_regions[0] #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.manage_access_role_arn #=> String
    #   resp.provisioning_role_arn #=> String
    #   resp.regional_parameters #=> Hash
    #   resp.regional_parameters["RegionName"] #=> Hash
    #   resp.regional_parameters["RegionName"]["String"] #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PutEnvironmentBlueprintConfiguration AWS API Documentation
    #
    # @overload put_environment_blueprint_configuration(params = {})
    # @param [Hash] params ({})
    def put_environment_blueprint_configuration(params = {}, options = {})
      req = build_request(:put_environment_blueprint_configuration, params)
      req.send_request(options)
    end

    # Rejects automatically generated business-friendly metadata for your
    # Amazon DataZone assets.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #   The identifier of the prediction.
    #
    # @option params [Array<Types::RejectChoice>] :reject_choices
    #
    # @option params [Types::RejectRule] :reject_rule
    #
    # @option params [String] :revision
    #
    # @return [Types::RejectPredictionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectPredictionsOutput#asset_id #asset_id} => String
    #   * {Types::RejectPredictionsOutput#asset_revision #asset_revision} => String
    #   * {Types::RejectPredictionsOutput#domain_id #domain_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_predictions({
    #     client_token: "ClientToken",
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     reject_choices: [
    #       {
    #         prediction_choices: [1],
    #         prediction_target: "String",
    #       },
    #     ],
    #     reject_rule: {
    #       rule: "ALL", # accepts ALL, NONE
    #       threshold: 1.0,
    #     },
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.asset_revision #=> String
    #   resp.domain_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectPredictions AWS API Documentation
    #
    # @overload reject_predictions(params = {})
    # @param [Hash] params ({})
    def reject_predictions(params = {}, options = {})
      req = build_request(:reject_predictions, params)
      req.send_request(options)
    end

    # Rejects the specified subscription request.
    #
    # @option params [String] :decision_comment
    #   The decision comment of the rejected subscription request.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the subscription
    #   request was rejected.
    #
    # @option params [required, String] :identifier
    #   The identifier of the subscription request that was rejected.
    #
    # @return [Types::RejectSubscriptionRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectSubscriptionRequestOutput#created_at #created_at} => Time
    #   * {Types::RejectSubscriptionRequestOutput#created_by #created_by} => String
    #   * {Types::RejectSubscriptionRequestOutput#decision_comment #decision_comment} => String
    #   * {Types::RejectSubscriptionRequestOutput#domain_id #domain_id} => String
    #   * {Types::RejectSubscriptionRequestOutput#id #id} => String
    #   * {Types::RejectSubscriptionRequestOutput#request_reason #request_reason} => String
    #   * {Types::RejectSubscriptionRequestOutput#reviewer_id #reviewer_id} => String
    #   * {Types::RejectSubscriptionRequestOutput#status #status} => String
    #   * {Types::RejectSubscriptionRequestOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::RejectSubscriptionRequestOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::RejectSubscriptionRequestOutput#updated_at #updated_at} => Time
    #   * {Types::RejectSubscriptionRequestOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_subscription_request({
    #     decision_comment: "DecisionComment",
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.decision_comment #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.request_reason #=> String
    #   resp.reviewer_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectSubscriptionRequest AWS API Documentation
    #
    # @overload reject_subscription_request(params = {})
    # @param [Hash] params ({})
    def reject_subscription_request(params = {}, options = {})
      req = build_request(:reject_subscription_request, params)
      req.send_request(options)
    end

    # Revokes a specified subscription in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain where you want to revoke
    #   a subscription.
    #
    # @option params [required, String] :identifier
    #   The identifier of the revoked subscription.
    #
    # @option params [Boolean] :retain_permissions
    #   Specifies whether permissions are retained when the subscription is
    #   revoked.
    #
    # @return [Types::RevokeSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeSubscriptionOutput#created_at #created_at} => Time
    #   * {Types::RevokeSubscriptionOutput#created_by #created_by} => String
    #   * {Types::RevokeSubscriptionOutput#domain_id #domain_id} => String
    #   * {Types::RevokeSubscriptionOutput#id #id} => String
    #   * {Types::RevokeSubscriptionOutput#retain_permissions #retain_permissions} => Boolean
    #   * {Types::RevokeSubscriptionOutput#status #status} => String
    #   * {Types::RevokeSubscriptionOutput#subscribed_listing #subscribed_listing} => Types::SubscribedListing
    #   * {Types::RevokeSubscriptionOutput#subscribed_principal #subscribed_principal} => Types::SubscribedPrincipal
    #   * {Types::RevokeSubscriptionOutput#subscription_request_id #subscription_request_id} => String
    #   * {Types::RevokeSubscriptionOutput#updated_at #updated_at} => Time
    #   * {Types::RevokeSubscriptionOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_subscription({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionId", # required
    #     retain_permissions: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.retain_permissions #=> Boolean
    #   resp.status #=> String, one of "APPROVED", "REVOKED", "CANCELLED"
    #   resp.subscribed_listing.description #=> String
    #   resp.subscribed_listing.id #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_id #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_type #=> String
    #   resp.subscribed_listing.item.asset_listing.forms #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listing.name #=> String
    #   resp.subscribed_listing.owner_project_id #=> String
    #   resp.subscribed_listing.owner_project_name #=> String
    #   resp.subscribed_listing.revision #=> String
    #   resp.subscribed_principal.project.id #=> String
    #   resp.subscribed_principal.project.name #=> String
    #   resp.subscription_request_id #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RevokeSubscription AWS API Documentation
    #
    # @overload revoke_subscription(params = {})
    # @param [Hash] params ({})
    def revoke_subscription(params = {}, options = {})
      req = build_request(:revoke_subscription, params)
      req.send_request(options)
    end

    # Searches for assets in Amazon DataZone.
    #
    # @option params [Array<String>] :additional_attributes
    #   Specifies additional attributes for the `Search` action.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [Types::FilterClause] :filters
    #   Specifies the search filters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to `Search`.
    #   When the number of results to be listed is greater than the value of
    #   `MaxResults`, the response contains a `NextToken` value that you can
    #   use in a subsequent call to `Search` to list the next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `Search` to list the next
    #   set of results.
    #
    # @option params [String] :owning_project_identifier
    #   The identifier of the owning project specified for the search.
    #
    # @option params [Array<Types::SearchInItem>] :search_in
    #
    # @option params [required, String] :search_scope
    #   The scope of the search.
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @option params [Types::SearchSort] :sort
    #   Specifies the way in which the search results are to be sorted.
    #
    # @return [Types::SearchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchOutput#items #items} => Array&lt;Types::SearchInventoryResultItem&gt;
    #   * {Types::SearchOutput#next_token #next_token} => String
    #   * {Types::SearchOutput#total_match_count #total_match_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search({
    #     additional_attributes: ["FORMS"], # accepts FORMS
    #     domain_identifier: "DomainId", # required
    #     filters: {
    #       and: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #       filter: {
    #         attribute: "Attribute", # required
    #         value: "FilterValueString", # required
    #       },
    #       or: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     owning_project_identifier: "ProjectId",
    #     search_in: [
    #       {
    #         attribute: "Attribute", # required
    #       },
    #     ],
    #     search_scope: "ASSET", # required, accepts ASSET, GLOSSARY, GLOSSARY_TERM
    #     search_text: "SearchText",
    #     sort: {
    #       attribute: "Attribute", # required
    #       order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].asset_item.additional_attributes.forms_output #=> Array
    #   resp.items[0].asset_item.additional_attributes.forms_output[0].content #=> String
    #   resp.items[0].asset_item.additional_attributes.forms_output[0].form_name #=> String
    #   resp.items[0].asset_item.additional_attributes.forms_output[0].type_name #=> String
    #   resp.items[0].asset_item.additional_attributes.forms_output[0].type_revision #=> String
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output #=> Array
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output[0].content #=> String
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output[0].form_name #=> String
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output[0].type_name #=> String
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output[0].type_revision #=> String
    #   resp.items[0].asset_item.created_at #=> Time
    #   resp.items[0].asset_item.created_by #=> String
    #   resp.items[0].asset_item.description #=> String
    #   resp.items[0].asset_item.domain_id #=> String
    #   resp.items[0].asset_item.external_identifier #=> String
    #   resp.items[0].asset_item.first_revision_created_at #=> Time
    #   resp.items[0].asset_item.first_revision_created_by #=> String
    #   resp.items[0].asset_item.glossary_terms #=> Array
    #   resp.items[0].asset_item.glossary_terms[0] #=> String
    #   resp.items[0].asset_item.identifier #=> String
    #   resp.items[0].asset_item.name #=> String
    #   resp.items[0].asset_item.owning_project_id #=> String
    #   resp.items[0].asset_item.type_identifier #=> String
    #   resp.items[0].asset_item.type_revision #=> String
    #   resp.items[0].data_product_item.created_at #=> Time
    #   resp.items[0].data_product_item.created_by #=> String
    #   resp.items[0].data_product_item.data_product_items #=> Array
    #   resp.items[0].data_product_item.data_product_items[0].domain_id #=> String
    #   resp.items[0].data_product_item.data_product_items[0].item_id #=> String
    #   resp.items[0].data_product_item.description #=> String
    #   resp.items[0].data_product_item.domain_id #=> String
    #   resp.items[0].data_product_item.glossary_terms #=> Array
    #   resp.items[0].data_product_item.glossary_terms[0] #=> String
    #   resp.items[0].data_product_item.id #=> String
    #   resp.items[0].data_product_item.name #=> String
    #   resp.items[0].data_product_item.owning_project_id #=> String
    #   resp.items[0].data_product_item.updated_at #=> Time
    #   resp.items[0].data_product_item.updated_by #=> String
    #   resp.items[0].glossary_item.created_at #=> Time
    #   resp.items[0].glossary_item.created_by #=> String
    #   resp.items[0].glossary_item.description #=> String
    #   resp.items[0].glossary_item.domain_id #=> String
    #   resp.items[0].glossary_item.id #=> String
    #   resp.items[0].glossary_item.name #=> String
    #   resp.items[0].glossary_item.owning_project_id #=> String
    #   resp.items[0].glossary_item.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.items[0].glossary_item.updated_at #=> Time
    #   resp.items[0].glossary_item.updated_by #=> String
    #   resp.items[0].glossary_term_item.created_at #=> Time
    #   resp.items[0].glossary_term_item.created_by #=> String
    #   resp.items[0].glossary_term_item.domain_id #=> String
    #   resp.items[0].glossary_term_item.glossary_id #=> String
    #   resp.items[0].glossary_term_item.id #=> String
    #   resp.items[0].glossary_term_item.long_description #=> String
    #   resp.items[0].glossary_term_item.name #=> String
    #   resp.items[0].glossary_term_item.short_description #=> String
    #   resp.items[0].glossary_term_item.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].glossary_term_item.term_relations.classifies #=> Array
    #   resp.items[0].glossary_term_item.term_relations.classifies[0] #=> String
    #   resp.items[0].glossary_term_item.term_relations.is_a #=> Array
    #   resp.items[0].glossary_term_item.term_relations.is_a[0] #=> String
    #   resp.items[0].glossary_term_item.updated_at #=> Time
    #   resp.items[0].glossary_term_item.updated_by #=> String
    #   resp.next_token #=> String
    #   resp.total_match_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Search AWS API Documentation
    #
    # @overload search(params = {})
    # @param [Hash] params ({})
    def search(params = {}, options = {})
      req = build_request(:search, params)
      req.send_request(options)
    end

    # Searches group profiles in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which you want to
    #   search group profiles.
    #
    # @option params [required, String] :group_type
    #   The group type for which to search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to
    #   `SearchGroupProfiles`. When the number of results to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `SearchGroupProfiles` to list the next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchGroupProfiles` to
    #   list the next set of results.
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @return [Types::SearchGroupProfilesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchGroupProfilesOutput#items #items} => Array&lt;Types::GroupProfileSummary&gt;
    #   * {Types::SearchGroupProfilesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_group_profiles({
    #     domain_identifier: "DomainId", # required
    #     group_type: "SSO_GROUP", # required, accepts SSO_GROUP, DATAZONE_SSO_GROUP
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     search_text: "GroupSearchText",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].group_name #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].status #=> String, one of "ASSIGNED", "NOT_ASSIGNED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchGroupProfiles AWS API Documentation
    #
    # @overload search_group_profiles(params = {})
    # @param [Hash] params ({})
    def search_group_profiles(params = {}, options = {})
      req = build_request(:search_group_profiles, params)
      req.send_request(options)
    end

    # Searches listings in Amazon DataZone.
    #
    # @option params [Array<String>] :additional_attributes
    #   Specifies additional attributes for the search.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain in which to search listings.
    #
    # @option params [Types::FilterClause] :filters
    #   Specifies the filters for the search of listings.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to
    #   `SearchListings`. When the number of results to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `SearchListings` to
    #   list the next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchListings` to list the
    #   next set of results.
    #
    # @option params [Array<Types::SearchInItem>] :search_in
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @option params [Types::SearchSort] :sort
    #   Specifies the way for sorting the search results.
    #
    # @return [Types::SearchListingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchListingsOutput#items #items} => Array&lt;Types::SearchResultItem&gt;
    #   * {Types::SearchListingsOutput#next_token #next_token} => String
    #   * {Types::SearchListingsOutput#total_match_count #total_match_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_listings({
    #     additional_attributes: ["FORMS"], # accepts FORMS
    #     domain_identifier: "DomainId", # required
    #     filters: {
    #       and: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #       filter: {
    #         attribute: "Attribute", # required
    #         value: "FilterValueString", # required
    #       },
    #       or: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     search_in: [
    #       {
    #         attribute: "Attribute", # required
    #       },
    #     ],
    #     search_text: "String",
    #     sort: {
    #       attribute: "Attribute", # required
    #       order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].asset_listing.additional_attributes.forms #=> String
    #   resp.items[0].asset_listing.created_at #=> Time
    #   resp.items[0].asset_listing.description #=> String
    #   resp.items[0].asset_listing.entity_id #=> String
    #   resp.items[0].asset_listing.entity_revision #=> String
    #   resp.items[0].asset_listing.entity_type #=> String
    #   resp.items[0].asset_listing.glossary_terms #=> Array
    #   resp.items[0].asset_listing.glossary_terms[0].name #=> String
    #   resp.items[0].asset_listing.glossary_terms[0].short_description #=> String
    #   resp.items[0].asset_listing.listing_created_by #=> String
    #   resp.items[0].asset_listing.listing_id #=> String
    #   resp.items[0].asset_listing.listing_revision #=> String
    #   resp.items[0].asset_listing.listing_updated_by #=> String
    #   resp.items[0].asset_listing.name #=> String
    #   resp.items[0].asset_listing.owning_project_id #=> String
    #   resp.next_token #=> String
    #   resp.total_match_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchListings AWS API Documentation
    #
    # @overload search_listings(params = {})
    # @param [Hash] params ({})
    def search_listings(params = {}, options = {})
      req = build_request(:search_listings, params)
      req.send_request(options)
    end

    # Searches for types in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to invoke the
    #   `SearchTypes` action.
    #
    # @option params [Types::FilterClause] :filters
    #   The filters for the `SearchTypes` action.
    #
    # @option params [required, Boolean] :managed
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to
    #   `SearchTypes`. When the number of results to be listed is greater than
    #   the value of `MaxResults`, the response contains a `NextToken` value
    #   that you can use in a subsequent call to `SearchTypes` to list the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchTypes` to list the
    #   next set of results.
    #
    # @option params [Array<Types::SearchInItem>] :search_in
    #
    # @option params [required, String] :search_scope
    #   Specifies the scope of the search for types.
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @option params [Types::SearchSort] :sort
    #   The specifies the way to sort the `SearchTypes` results.
    #
    # @return [Types::SearchTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchTypesOutput#items #items} => Array&lt;Types::SearchTypesResultItem&gt;
    #   * {Types::SearchTypesOutput#next_token #next_token} => String
    #   * {Types::SearchTypesOutput#total_match_count #total_match_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_types({
    #     domain_identifier: "DomainId", # required
    #     filters: {
    #       and: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #       filter: {
    #         attribute: "Attribute", # required
    #         value: "FilterValueString", # required
    #       },
    #       or: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #     },
    #     managed: false, # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     search_in: [
    #       {
    #         attribute: "Attribute", # required
    #       },
    #     ],
    #     search_scope: "ASSET_TYPE", # required, accepts ASSET_TYPE, FORM_TYPE
    #     search_text: "SearchText",
    #     sort: {
    #       attribute: "Attribute", # required
    #       order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].asset_type_item.created_at #=> Time
    #   resp.items[0].asset_type_item.created_by #=> String
    #   resp.items[0].asset_type_item.description #=> String
    #   resp.items[0].asset_type_item.domain_id #=> String
    #   resp.items[0].asset_type_item.forms_output #=> Hash
    #   resp.items[0].asset_type_item.forms_output["FormName"].required #=> Boolean
    #   resp.items[0].asset_type_item.forms_output["FormName"].type_name #=> String
    #   resp.items[0].asset_type_item.forms_output["FormName"].type_revision #=> String
    #   resp.items[0].asset_type_item.name #=> String
    #   resp.items[0].asset_type_item.origin_domain_id #=> String
    #   resp.items[0].asset_type_item.origin_project_id #=> String
    #   resp.items[0].asset_type_item.owning_project_id #=> String
    #   resp.items[0].asset_type_item.revision #=> String
    #   resp.items[0].asset_type_item.updated_at #=> Time
    #   resp.items[0].asset_type_item.updated_by #=> String
    #   resp.items[0].form_type_item.created_at #=> Time
    #   resp.items[0].form_type_item.created_by #=> String
    #   resp.items[0].form_type_item.description #=> String
    #   resp.items[0].form_type_item.domain_id #=> String
    #   resp.items[0].form_type_item.imports #=> Array
    #   resp.items[0].form_type_item.imports[0].name #=> String
    #   resp.items[0].form_type_item.imports[0].revision #=> String
    #   resp.items[0].form_type_item.model.smithy #=> String
    #   resp.items[0].form_type_item.name #=> String
    #   resp.items[0].form_type_item.origin_domain_id #=> String
    #   resp.items[0].form_type_item.origin_project_id #=> String
    #   resp.items[0].form_type_item.owning_project_id #=> String
    #   resp.items[0].form_type_item.revision #=> String
    #   resp.items[0].form_type_item.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.next_token #=> String
    #   resp.total_match_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchTypes AWS API Documentation
    #
    # @overload search_types(params = {})
    # @param [Hash] params ({})
    def search_types(params = {}, options = {})
      req = build_request(:search_types, params)
      req.send_request(options)
    end

    # Searches user profiles in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which you want to
    #   search user profiles.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to
    #   `SearchUserProfiles`. When the number of results to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `SearchUserProfiles` to list the next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchUserProfiles` to list
    #   the next set of results.
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @option params [required, String] :user_type
    #   Specifies the user type for the `SearchUserProfiles` action.
    #
    # @return [Types::SearchUserProfilesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchUserProfilesOutput#items #items} => Array&lt;Types::UserProfileSummary&gt;
    #   * {Types::SearchUserProfilesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_user_profiles({
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     search_text: "UserSearchText",
    #     user_type: "SSO_USER", # required, accepts SSO_USER, DATAZONE_USER, DATAZONE_SSO_USER, DATAZONE_IAM_USER
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].details.iam.arn #=> String
    #   resp.items[0].details.sso.first_name #=> String
    #   resp.items[0].details.sso.last_name #=> String
    #   resp.items[0].details.sso.username #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].status #=> String, one of "ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"
    #   resp.items[0].type #=> String, one of "IAM", "SSO"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchUserProfiles AWS API Documentation
    #
    # @overload search_user_profiles(params = {})
    # @param [Hash] params ({})
    def search_user_profiles(params = {}, options = {})
      req = build_request(:search_user_profiles, params)
      req.send_request(options)
    end

    # Start the run of the specified data source in Amazon DataZone.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :data_source_identifier
    #   The identifier of the data source.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to start a data
    #   source run.
    #
    # @return [Types::StartDataSourceRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataSourceRunOutput#created_at #created_at} => Time
    #   * {Types::StartDataSourceRunOutput#data_source_configuration_snapshot #data_source_configuration_snapshot} => String
    #   * {Types::StartDataSourceRunOutput#data_source_id #data_source_id} => String
    #   * {Types::StartDataSourceRunOutput#domain_id #domain_id} => String
    #   * {Types::StartDataSourceRunOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::StartDataSourceRunOutput#id #id} => String
    #   * {Types::StartDataSourceRunOutput#project_id #project_id} => String
    #   * {Types::StartDataSourceRunOutput#run_statistics_for_assets #run_statistics_for_assets} => Types::RunStatisticsForAssets
    #   * {Types::StartDataSourceRunOutput#started_at #started_at} => Time
    #   * {Types::StartDataSourceRunOutput#status #status} => String
    #   * {Types::StartDataSourceRunOutput#stopped_at #stopped_at} => Time
    #   * {Types::StartDataSourceRunOutput#type #type} => String
    #   * {Types::StartDataSourceRunOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_source_run({
    #     client_token: "String",
    #     data_source_identifier: "DataSourceId", # required
    #     domain_identifier: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.data_source_configuration_snapshot #=> String
    #   resp.data_source_id #=> String
    #   resp.domain_id #=> String
    #   resp.error_message.error_detail #=> String
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.id #=> String
    #   resp.project_id #=> String
    #   resp.run_statistics_for_assets.added #=> Integer
    #   resp.run_statistics_for_assets.failed #=> Integer
    #   resp.run_statistics_for_assets.skipped #=> Integer
    #   resp.run_statistics_for_assets.unchanged #=> Integer
    #   resp.run_statistics_for_assets.updated #=> Integer
    #   resp.started_at #=> Time
    #   resp.status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.stopped_at #=> Time
    #   resp.type #=> String, one of "PRIORITIZED", "SCHEDULED"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/StartDataSourceRun AWS API Documentation
    #
    # @overload start_data_source_run(params = {})
    # @param [Hash] params ({})
    def start_data_source_run(params = {}, options = {})
      req = build_request(:start_data_source_run, params)
      req.send_request(options)
    end

    # Tags a resource in Amazon DataZone.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be tagged in Amazon DataZone.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Specifies the tags for the `TagResource` action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags a resource in Amazon DataZone.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be untagged in Amazon DataZone.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specifies the tag keys for the `UntagResource` action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified data source in Amazon DataZone.
    #
    # @option params [Array<Types::FormInput>] :asset_forms_input
    #   The asset forms to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [Types::DataSourceConfigurationInput] :configuration
    #   The configuration to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain in which to update a data source.
    #
    # @option params [String] :enable_setting
    #   The enable setting to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [required, String] :identifier
    #   The identifier of the data source to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateDataSource` action.
    #
    # @option params [Boolean] :publish_on_import
    #   The publish on import setting to be updated as part of the
    #   `UpdateDataSource` action.
    #
    # @option params [Types::RecommendationConfiguration] :recommendation
    #   The recommendation to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [Types::ScheduleConfiguration] :schedule
    #   The schedule to be updated as part of the `UpdateDataSource` action.
    #
    # @return [Types::UpdateDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceOutput#asset_forms_output #asset_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::UpdateDataSourceOutput#configuration #configuration} => Types::DataSourceConfigurationOutput
    #   * {Types::UpdateDataSourceOutput#created_at #created_at} => Time
    #   * {Types::UpdateDataSourceOutput#description #description} => String
    #   * {Types::UpdateDataSourceOutput#domain_id #domain_id} => String
    #   * {Types::UpdateDataSourceOutput#enable_setting #enable_setting} => String
    #   * {Types::UpdateDataSourceOutput#environment_id #environment_id} => String
    #   * {Types::UpdateDataSourceOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::UpdateDataSourceOutput#id #id} => String
    #   * {Types::UpdateDataSourceOutput#last_run_at #last_run_at} => Time
    #   * {Types::UpdateDataSourceOutput#last_run_error_message #last_run_error_message} => Types::DataSourceErrorMessage
    #   * {Types::UpdateDataSourceOutput#last_run_status #last_run_status} => String
    #   * {Types::UpdateDataSourceOutput#name #name} => String
    #   * {Types::UpdateDataSourceOutput#project_id #project_id} => String
    #   * {Types::UpdateDataSourceOutput#publish_on_import #publish_on_import} => Boolean
    #   * {Types::UpdateDataSourceOutput#recommendation #recommendation} => Types::RecommendationConfiguration
    #   * {Types::UpdateDataSourceOutput#schedule #schedule} => Types::ScheduleConfiguration
    #   * {Types::UpdateDataSourceOutput#status #status} => String
    #   * {Types::UpdateDataSourceOutput#type #type} => String
    #   * {Types::UpdateDataSourceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     asset_forms_input: [
    #       {
    #         content: "FormInputContentString",
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "Revision",
    #       },
    #     ],
    #     configuration: {
    #       glue_run_configuration: {
    #         data_access_role: "GlueRunConfigurationInputDataAccessRoleString",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "RelationalFilterConfigurationDatabaseNameString", # required
    #             filter_expressions: [
    #               {
    #                 expression: "FilterExpressionExpressionString", # required
    #                 type: "INCLUDE", # required, accepts INCLUDE, EXCLUDE
    #               },
    #             ],
    #             schema_name: "RelationalFilterConfigurationSchemaNameString",
    #           },
    #         ],
    #       },
    #       redshift_run_configuration: {
    #         data_access_role: "RedshiftRunConfigurationInputDataAccessRoleString",
    #         redshift_credential_configuration: { # required
    #           secret_manager_arn: "RedshiftCredentialConfigurationSecretManagerArnString", # required
    #         },
    #         redshift_storage: { # required
    #           redshift_cluster_source: {
    #             cluster_name: "RedshiftClusterStorageClusterNameString", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "RedshiftServerlessStorageWorkgroupNameString", # required
    #           },
    #         },
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "RelationalFilterConfigurationDatabaseNameString", # required
    #             filter_expressions: [
    #               {
    #                 expression: "FilterExpressionExpressionString", # required
    #                 type: "INCLUDE", # required, accepts INCLUDE, EXCLUDE
    #               },
    #             ],
    #             schema_name: "RelationalFilterConfigurationSchemaNameString",
    #           },
    #         ],
    #       },
    #     },
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     enable_setting: "ENABLED", # accepts ENABLED, DISABLED
    #     identifier: "DataSourceId", # required
    #     name: "Name",
    #     publish_on_import: false,
    #     recommendation: {
    #       enable_business_name_generation: false,
    #     },
    #     schedule: {
    #       schedule: "CronString",
    #       timezone: "UTC", # accepts UTC, AFRICA_JOHANNESBURG, AMERICA_MONTREAL, AMERICA_SAO_PAULO, ASIA_BAHRAIN, ASIA_BANGKOK, ASIA_CALCUTTA, ASIA_DUBAI, ASIA_HONG_KONG, ASIA_JAKARTA, ASIA_KUALA_LUMPUR, ASIA_SEOUL, ASIA_SHANGHAI, ASIA_SINGAPORE, ASIA_TAIPEI, ASIA_TOKYO, AUSTRALIA_MELBOURNE, AUSTRALIA_SYDNEY, CANADA_CENTRAL, CET, CST6CDT, ETC_GMT, ETC_GMT0, ETC_GMT_ADD_0, ETC_GMT_ADD_1, ETC_GMT_ADD_10, ETC_GMT_ADD_11, ETC_GMT_ADD_12, ETC_GMT_ADD_2, ETC_GMT_ADD_3, ETC_GMT_ADD_4, ETC_GMT_ADD_5, ETC_GMT_ADD_6, ETC_GMT_ADD_7, ETC_GMT_ADD_8, ETC_GMT_ADD_9, ETC_GMT_NEG_0, ETC_GMT_NEG_1, ETC_GMT_NEG_10, ETC_GMT_NEG_11, ETC_GMT_NEG_12, ETC_GMT_NEG_13, ETC_GMT_NEG_14, ETC_GMT_NEG_2, ETC_GMT_NEG_3, ETC_GMT_NEG_4, ETC_GMT_NEG_5, ETC_GMT_NEG_6, ETC_GMT_NEG_7, ETC_GMT_NEG_8, ETC_GMT_NEG_9, EUROPE_DUBLIN, EUROPE_LONDON, EUROPE_PARIS, EUROPE_STOCKHOLM, EUROPE_ZURICH, ISRAEL, MEXICO_GENERAL, MST7MDT, PACIFIC_AUCKLAND, US_CENTRAL, US_EASTERN, US_MOUNTAIN, US_PACIFIC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_forms_output #=> Array
    #   resp.asset_forms_output[0].content #=> String
    #   resp.asset_forms_output[0].form_name #=> String
    #   resp.asset_forms_output[0].type_name #=> String
    #   resp.asset_forms_output[0].type_revision #=> String
    #   resp.configuration.glue_run_configuration.account_id #=> String
    #   resp.configuration.glue_run_configuration.data_access_role #=> String
    #   resp.configuration.glue_run_configuration.region #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.redshift_run_configuration.account_id #=> String
    #   resp.configuration.redshift_run_configuration.data_access_role #=> String
    #   resp.configuration.redshift_run_configuration.redshift_credential_configuration.secret_manager_arn #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_cluster_source.cluster_name #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_serverless_source.workgroup_name #=> String
    #   resp.configuration.redshift_run_configuration.region #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.environment_id #=> String
    #   resp.error_message.error_detail #=> String
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.id #=> String
    #   resp.last_run_at #=> Time
    #   resp.last_run_error_message.error_detail #=> String
    #   resp.last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.publish_on_import #=> Boolean
    #   resp.recommendation.enable_business_name_generation #=> Boolean
    #   resp.schedule.schedule #=> String
    #   resp.schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.type #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates a Amazon DataZone domain.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateDomain` action.
    #
    # @option params [String] :domain_execution_role
    #   The domain execution role to be updated as part of the `UpdateDomain`
    #   action.
    #
    # @option params [required, String] :identifier
    #   The ID of the Amazon Web Services domain that is to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateDomain` action.
    #
    # @option params [Types::SingleSignOn] :single_sign_on
    #   The single sign-on option to be updated as part of the `UpdateDomain`
    #   action.
    #
    # @return [Types::UpdateDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainOutput#description #description} => String
    #   * {Types::UpdateDomainOutput#domain_execution_role #domain_execution_role} => String
    #   * {Types::UpdateDomainOutput#id #id} => String
    #   * {Types::UpdateDomainOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateDomainOutput#name #name} => String
    #   * {Types::UpdateDomainOutput#single_sign_on #single_sign_on} => Types::SingleSignOn
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain({
    #     client_token: "String",
    #     description: "String",
    #     domain_execution_role: "RoleArn",
    #     identifier: "DomainId", # required
    #     name: "String",
    #     single_sign_on: {
    #       type: "IAM_IDC", # accepts IAM_IDC, DISABLED
    #       user_assignment: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.domain_execution_role #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #   resp.single_sign_on.type #=> String, one of "IAM_IDC", "DISABLED"
    #   resp.single_sign_on.user_assignment #=> String, one of "AUTOMATIC", "MANUAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDomain AWS API Documentation
    #
    # @overload update_domain(params = {})
    # @param [Hash] params ({})
    def update_domain(params = {}, options = {})
      req = build_request(:update_domain, params)
      req.send_request(options)
    end

    # Updates the specified environment in Amazon DataZone.
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateEnvironment`
    #   action.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain in which the environment is to be
    #   updated.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms to be updated as part of the `UpdateEnvironment`
    #   action.
    #
    # @option params [required, String] :identifier
    #   The identifier of the environment that is to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateEnvironment` action.
    #
    # @return [Types::UpdateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentOutput#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateEnvironmentOutput#aws_account_region #aws_account_region} => String
    #   * {Types::UpdateEnvironmentOutput#created_at #created_at} => Time
    #   * {Types::UpdateEnvironmentOutput#created_by #created_by} => String
    #   * {Types::UpdateEnvironmentOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::UpdateEnvironmentOutput#description #description} => String
    #   * {Types::UpdateEnvironmentOutput#domain_id #domain_id} => String
    #   * {Types::UpdateEnvironmentOutput#environment_actions #environment_actions} => Array&lt;Types::ConfigurableEnvironmentAction&gt;
    #   * {Types::UpdateEnvironmentOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::UpdateEnvironmentOutput#environment_profile_id #environment_profile_id} => String
    #   * {Types::UpdateEnvironmentOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::UpdateEnvironmentOutput#id #id} => String
    #   * {Types::UpdateEnvironmentOutput#last_deployment #last_deployment} => Types::Deployment
    #   * {Types::UpdateEnvironmentOutput#name #name} => String
    #   * {Types::UpdateEnvironmentOutput#project_id #project_id} => String
    #   * {Types::UpdateEnvironmentOutput#provider #provider} => String
    #   * {Types::UpdateEnvironmentOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::Resource&gt;
    #   * {Types::UpdateEnvironmentOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::UpdateEnvironmentOutput#status #status} => String
    #   * {Types::UpdateEnvironmentOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateEnvironmentOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     description: "String",
    #     domain_identifier: "DomainId", # required
    #     glossary_terms: ["GlossaryTermId"],
    #     identifier: "EnvironmentId", # required
    #     name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.environment_actions #=> Array
    #   resp.environment_actions[0].auth #=> String, one of "IAM", "HTTPS"
    #   resp.environment_actions[0].parameters #=> Array
    #   resp.environment_actions[0].parameters[0].key #=> String
    #   resp.environment_actions[0].parameters[0].value #=> String
    #   resp.environment_actions[0].type #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.environment_profile_id #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.last_deployment.deployment_id #=> String
    #   resp.last_deployment.deployment_status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "PENDING_DEPLOYMENT"
    #   resp.last_deployment.deployment_type #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.last_deployment.failure_reason.code #=> String
    #   resp.last_deployment.failure_reason.message #=> String
    #   resp.last_deployment.is_deployment_complete #=> Boolean
    #   resp.last_deployment.messages #=> Array
    #   resp.last_deployment.messages[0] #=> String
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.provider #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].provider #=> String
    #   resp.provisioned_resources[0].type #=> String
    #   resp.provisioned_resources[0].value #=> String
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"
    #   resp.updated_at #=> Time
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Updates the specified environment profile in Amazon DataZone.
    #
    # @option params [String] :aws_account_id
    #   The Amazon Web Services account in which a specified environment
    #   profile is to be udpated.
    #
    # @option params [String] :aws_account_region
    #   The Amazon Web Services Region in which a specified environment
    #   profile is to be updated.
    #
    # @option params [String] :description
    #   The description to be updated as part of the
    #   `UpdateEnvironmentProfile` action.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which an environment
    #   profile is to be updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the environment profile that is to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateEnvironmentProfile`
    #   action.
    #
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   The user parameters to be updated as part of the
    #   `UpdateEnvironmentProfile` action.
    #
    # @return [Types::UpdateEnvironmentProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentProfileOutput#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#aws_account_region #aws_account_region} => String
    #   * {Types::UpdateEnvironmentProfileOutput#created_at #created_at} => Time
    #   * {Types::UpdateEnvironmentProfileOutput#created_by #created_by} => String
    #   * {Types::UpdateEnvironmentProfileOutput#description #description} => String
    #   * {Types::UpdateEnvironmentProfileOutput#domain_id #domain_id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#id #id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#name #name} => String
    #   * {Types::UpdateEnvironmentProfileOutput#project_id #project_id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateEnvironmentProfileOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_profile({
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     description: "String",
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentProfileId", # required
    #     name: "EnvironmentProfileName",
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.updated_at #=> Time
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentProfile AWS API Documentation
    #
    # @overload update_environment_profile(params = {})
    # @param [Hash] params ({})
    def update_environment_profile(params = {}, options = {})
      req = build_request(:update_environment_profile, params)
      req.send_request(options)
    end

    # Updates the business glossary in Amazon DataZone.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateGlossary` action.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a business
    #   glossary is to be updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the business glossary to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateGlossary` action.
    #
    # @option params [String] :status
    #   The status to be updated as part of the `UpdateGlossary` action.
    #
    # @return [Types::UpdateGlossaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlossaryOutput#description #description} => String
    #   * {Types::UpdateGlossaryOutput#domain_id #domain_id} => String
    #   * {Types::UpdateGlossaryOutput#id #id} => String
    #   * {Types::UpdateGlossaryOutput#name #name} => String
    #   * {Types::UpdateGlossaryOutput#owning_project_id #owning_project_id} => String
    #   * {Types::UpdateGlossaryOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_glossary({
    #     client_token: "ClientToken",
    #     description: "GlossaryDescription",
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryId", # required
    #     name: "GlossaryName",
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.owning_project_id #=> String
    #   resp.status #=> String, one of "DISABLED", "ENABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGlossary AWS API Documentation
    #
    # @overload update_glossary(params = {})
    # @param [Hash] params ({})
    def update_glossary(params = {}, options = {})
      req = build_request(:update_glossary, params)
      req.send_request(options)
    end

    # Updates a business glossary term in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a business
    #   glossary term is to be updated.
    #
    # @option params [String] :glossary_identifier
    #   The identifier of the business glossary in which a term is to be
    #   updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the business glossary term that is to be updated.
    #
    # @option params [String] :long_description
    #   The long description to be updated as part of the `UpdateGlossaryTerm`
    #   action.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateGlossaryTerm` action.
    #
    # @option params [String] :short_description
    #   The short description to be updated as part of the
    #   `UpdateGlossaryTerm` action.
    #
    # @option params [String] :status
    #   The status to be updated as part of the `UpdateGlossaryTerm` action.
    #
    # @option params [Types::TermRelations] :term_relations
    #   The term relations to be updated as part of the `UpdateGlossaryTerm`
    #   action.
    #
    # @return [Types::UpdateGlossaryTermOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlossaryTermOutput#domain_id #domain_id} => String
    #   * {Types::UpdateGlossaryTermOutput#glossary_id #glossary_id} => String
    #   * {Types::UpdateGlossaryTermOutput#id #id} => String
    #   * {Types::UpdateGlossaryTermOutput#long_description #long_description} => String
    #   * {Types::UpdateGlossaryTermOutput#name #name} => String
    #   * {Types::UpdateGlossaryTermOutput#short_description #short_description} => String
    #   * {Types::UpdateGlossaryTermOutput#status #status} => String
    #   * {Types::UpdateGlossaryTermOutput#term_relations #term_relations} => Types::TermRelations
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_glossary_term({
    #     domain_identifier: "DomainId", # required
    #     glossary_identifier: "GlossaryTermId",
    #     identifier: "GlossaryTermId", # required
    #     long_description: "LongDescription",
    #     name: "GlossaryTermName",
    #     short_description: "ShortDescription",
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     term_relations: {
    #       classifies: ["GlossaryTermId"],
    #       is_a: ["GlossaryTermId"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.glossary_id #=> String
    #   resp.id #=> String
    #   resp.long_description #=> String
    #   resp.name #=> String
    #   resp.short_description #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.term_relations.classifies #=> Array
    #   resp.term_relations.classifies[0] #=> String
    #   resp.term_relations.is_a #=> Array
    #   resp.term_relations.is_a[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGlossaryTerm AWS API Documentation
    #
    # @overload update_glossary_term(params = {})
    # @param [Hash] params ({})
    def update_glossary_term(params = {}, options = {})
      req = build_request(:update_glossary_term, params)
      req.send_request(options)
    end

    # Updates the specified group profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a group profile
    #   is updated.
    #
    # @option params [required, String] :group_identifier
    #   The identifier of the group profile that is updated.
    #
    # @option params [required, String] :status
    #   The status of the group profile that is updated.
    #
    # @return [Types::UpdateGroupProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupProfileOutput#domain_id #domain_id} => String
    #   * {Types::UpdateGroupProfileOutput#group_name #group_name} => String
    #   * {Types::UpdateGroupProfileOutput#id #id} => String
    #   * {Types::UpdateGroupProfileOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group_profile({
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "GroupIdentifier", # required
    #     status: "ASSIGNED", # required, accepts ASSIGNED, NOT_ASSIGNED
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.group_name #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGroupProfile AWS API Documentation
    #
    # @overload update_group_profile(params = {})
    # @param [Hash] params ({})
    def update_group_profile(params = {}, options = {})
      req = build_request(:update_group_profile, params)
      req.send_request(options)
    end

    # Updates the specified project in Amazon DataZone.
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateProject` action.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a project is to
    #   be updated.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms to be updated as part of the `UpdateProject`
    #   action.
    #
    # @option params [required, String] :identifier
    #   The identifier of the project that is to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateProject` action.
    #
    # @return [Types::UpdateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectOutput#created_at #created_at} => Time
    #   * {Types::UpdateProjectOutput#created_by #created_by} => String
    #   * {Types::UpdateProjectOutput#description #description} => String
    #   * {Types::UpdateProjectOutput#domain_id #domain_id} => String
    #   * {Types::UpdateProjectOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::UpdateProjectOutput#id #id} => String
    #   * {Types::UpdateProjectOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateProjectOutput#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     glossary_terms: ["GlossaryTermId"],
    #     identifier: "ProjectId", # required
    #     name: "ProjectName",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Updates the status of the specified subscription grant status in
    # Amazon DataZone.
    #
    # @option params [required, String] :asset_identifier
    #   The identifier of the asset the subscription grant status of which is
    #   to be updated.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   grant status is to be updated.
    #
    # @option params [Types::FailureCause] :failure_cause
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #
    # @option params [required, String] :identifier
    #   The identifier of the subscription grant the status of which is to be
    #   updated.
    #
    # @option params [required, String] :status
    #   The status to be updated as part of the
    #   `UpdateSubscriptionGrantStatus` action.
    #
    # @option params [String] :target_name
    #   The target name to be updated as part of the
    #   `UpdateSubscriptionGrantStatus` action.
    #
    # @return [Types::UpdateSubscriptionGrantStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriptionGrantStatusOutput#assets #assets} => Array&lt;Types::SubscribedAsset&gt;
    #   * {Types::UpdateSubscriptionGrantStatusOutput#created_at #created_at} => Time
    #   * {Types::UpdateSubscriptionGrantStatusOutput#created_by #created_by} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#domain_id #domain_id} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#granted_entity #granted_entity} => Types::GrantedEntity
    #   * {Types::UpdateSubscriptionGrantStatusOutput#id #id} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#status #status} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#subscription_id #subscription_id} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#subscription_target_id #subscription_target_id} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateSubscriptionGrantStatusOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription_grant_status({
    #     asset_identifier: "AssetId", # required
    #     domain_identifier: "DomainId", # required
    #     failure_cause: {
    #       message: "String",
    #     },
    #     identifier: "SubscriptionGrantId", # required
    #     status: "GRANT_PENDING", # required, accepts GRANT_PENDING, REVOKE_PENDING, GRANT_IN_PROGRESS, REVOKE_IN_PROGRESS, GRANTED, REVOKED, GRANT_FAILED, REVOKE_FAILED
    #     target_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.assets #=> Array
    #   resp.assets[0].asset_id #=> String
    #   resp.assets[0].asset_revision #=> String
    #   resp.assets[0].failure_cause.message #=> String
    #   resp.assets[0].failure_timestamp #=> Time
    #   resp.assets[0].granted_timestamp #=> Time
    #   resp.assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.assets[0].target_name #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.granted_entity.listing.id #=> String
    #   resp.granted_entity.listing.revision #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.subscription_id #=> String
    #   resp.subscription_target_id #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionGrantStatus AWS API Documentation
    #
    # @overload update_subscription_grant_status(params = {})
    # @param [Hash] params ({})
    def update_subscription_grant_status(params = {}, options = {})
      req = build_request(:update_subscription_grant_status, params)
      req.send_request(options)
    end

    # Updates a specified subscription request in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   request is to be updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the subscription request that is to be updated.
    #
    # @option params [required, String] :request_reason
    #   The reason for the `UpdateSubscriptionRequest` action.
    #
    # @return [Types::UpdateSubscriptionRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriptionRequestOutput#created_at #created_at} => Time
    #   * {Types::UpdateSubscriptionRequestOutput#created_by #created_by} => String
    #   * {Types::UpdateSubscriptionRequestOutput#decision_comment #decision_comment} => String
    #   * {Types::UpdateSubscriptionRequestOutput#domain_id #domain_id} => String
    #   * {Types::UpdateSubscriptionRequestOutput#id #id} => String
    #   * {Types::UpdateSubscriptionRequestOutput#request_reason #request_reason} => String
    #   * {Types::UpdateSubscriptionRequestOutput#reviewer_id #reviewer_id} => String
    #   * {Types::UpdateSubscriptionRequestOutput#status #status} => String
    #   * {Types::UpdateSubscriptionRequestOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::UpdateSubscriptionRequestOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::UpdateSubscriptionRequestOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateSubscriptionRequestOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription_request({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #     request_reason: "RequestReason", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.decision_comment #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.request_reason #=> String
    #   resp.reviewer_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionRequest AWS API Documentation
    #
    # @overload update_subscription_request(params = {})
    # @param [Hash] params ({})
    def update_subscription_request(params = {}, options = {})
      req = build_request(:update_subscription_request, params)
      req.send_request(options)
    end

    # Updates the specified subscription target in Amazon DataZone.
    #
    # @option params [Array<String>] :applicable_asset_types
    #   The applicable asset types to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #
    # @option params [Array<String>] :authorized_principals
    #   The authorized principals to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   target is to be updated.
    #
    # @option params [required, String] :environment_identifier
    #   The identifier of the environment in which a subscription target is to
    #   be updated.
    #
    # @option params [required, String] :identifier
    #   Identifier of the subscription target that is to be updated.
    #
    # @option params [String] :manage_access_role
    #   The manage access role to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateSubscriptionTarget`
    #   action.
    #
    # @option params [String] :provider
    #   The provider to be updated as part of the `UpdateSubscriptionTarget`
    #   action.
    #
    # @option params [Array<Types::SubscriptionTargetForm>] :subscription_target_config
    #   The configuration to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #
    # @return [Types::UpdateSubscriptionTargetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriptionTargetOutput#applicable_asset_types #applicable_asset_types} => Array&lt;String&gt;
    #   * {Types::UpdateSubscriptionTargetOutput#authorized_principals #authorized_principals} => Array&lt;String&gt;
    #   * {Types::UpdateSubscriptionTargetOutput#created_at #created_at} => Time
    #   * {Types::UpdateSubscriptionTargetOutput#created_by #created_by} => String
    #   * {Types::UpdateSubscriptionTargetOutput#domain_id #domain_id} => String
    #   * {Types::UpdateSubscriptionTargetOutput#environment_id #environment_id} => String
    #   * {Types::UpdateSubscriptionTargetOutput#id #id} => String
    #   * {Types::UpdateSubscriptionTargetOutput#manage_access_role #manage_access_role} => String
    #   * {Types::UpdateSubscriptionTargetOutput#name #name} => String
    #   * {Types::UpdateSubscriptionTargetOutput#project_id #project_id} => String
    #   * {Types::UpdateSubscriptionTargetOutput#provider #provider} => String
    #   * {Types::UpdateSubscriptionTargetOutput#subscription_target_config #subscription_target_config} => Array&lt;Types::SubscriptionTargetForm&gt;
    #   * {Types::UpdateSubscriptionTargetOutput#type #type} => String
    #   * {Types::UpdateSubscriptionTargetOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateSubscriptionTargetOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription_target({
    #     applicable_asset_types: ["TypeName"],
    #     authorized_principals: ["AuthorizedPrincipalIdentifier"],
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "SubscriptionTargetId", # required
    #     manage_access_role: "String",
    #     name: "SubscriptionTargetName",
    #     provider: "String",
    #     subscription_target_config: [
    #       {
    #         content: "String", # required
    #         form_name: "FormName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.applicable_asset_types #=> Array
    #   resp.applicable_asset_types[0] #=> String
    #   resp.authorized_principals #=> Array
    #   resp.authorized_principals[0] #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.domain_id #=> String
    #   resp.environment_id #=> String
    #   resp.id #=> String
    #   resp.manage_access_role #=> String
    #   resp.name #=> String
    #   resp.project_id #=> String
    #   resp.provider #=> String
    #   resp.subscription_target_config #=> Array
    #   resp.subscription_target_config[0].content #=> String
    #   resp.subscription_target_config[0].form_name #=> String
    #   resp.type #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionTarget AWS API Documentation
    #
    # @overload update_subscription_target(params = {})
    # @param [Hash] params ({})
    def update_subscription_target(params = {}, options = {})
      req = build_request(:update_subscription_target, params)
      req.send_request(options)
    end

    # Updates the specified user profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a user profile
    #   is updated.
    #
    # @option params [required, String] :status
    #   The status of the user profile that are to be updated.
    #
    # @option params [String] :type
    #   The type of the user profile that are to be updated.
    #
    # @option params [required, String] :user_identifier
    #   The identifier of the user whose user profile is to be updated.
    #
    # @return [Types::UpdateUserProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserProfileOutput#details #details} => Types::UserProfileDetails
    #   * {Types::UpdateUserProfileOutput#domain_id #domain_id} => String
    #   * {Types::UpdateUserProfileOutput#id #id} => String
    #   * {Types::UpdateUserProfileOutput#status #status} => String
    #   * {Types::UpdateUserProfileOutput#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_profile({
    #     domain_identifier: "DomainId", # required
    #     status: "ASSIGNED", # required, accepts ASSIGNED, NOT_ASSIGNED, ACTIVATED, DEACTIVATED
    #     type: "IAM", # accepts IAM, SSO
    #     user_identifier: "UserIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.details.iam.arn #=> String
    #   resp.details.sso.first_name #=> String
    #   resp.details.sso.last_name #=> String
    #   resp.details.sso.username #=> String
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"
    #   resp.type #=> String, one of "IAM", "SSO"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateUserProfile AWS API Documentation
    #
    # @overload update_user_profile(params = {})
    # @param [Hash] params ({})
    def update_user_profile(params = {}, options = {})
      req = build_request(:update_user_profile, params)
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
      context[:gem_name] = 'aws-sdk-datazone'
      context[:gem_version] = '1.3.0'
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
