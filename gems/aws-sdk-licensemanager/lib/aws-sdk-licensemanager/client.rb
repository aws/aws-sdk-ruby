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

Aws::Plugins::GlobalConfiguration.add_identifier(:licensemanager)

module Aws::LicenseManager
  # An API client for LicenseManager.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LicenseManager::Client.new(
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

    @identifier = :licensemanager

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
    add_plugin(Aws::LicenseManager::Plugins::Endpoints)

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
    #   @option options [Aws::LicenseManager::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::LicenseManager::EndpointParameters`
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

    # Accepts the specified grant.
    #
    # @option params [required, String] :grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #
    # @return [Types::AcceptGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptGrantResponse#grant_arn #grant_arn} => String
    #   * {Types::AcceptGrantResponse#status #status} => String
    #   * {Types::AcceptGrantResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_grant({
    #     grant_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.grant_arn #=> String
    #   resp.status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/AcceptGrant AWS API Documentation
    #
    # @overload accept_grant(params = {})
    # @param [Hash] params ({})
    def accept_grant(params = {}, options = {})
      req = build_request(:accept_grant, params)
      req.send_request(options)
    end

    # Checks in the specified license. Check in a license when it is no
    # longer in use.
    #
    # @option params [required, String] :license_consumption_token
    #   License consumption token.
    #
    # @option params [String] :beneficiary
    #   License beneficiary.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_in_license({
    #     license_consumption_token: "String", # required
    #     beneficiary: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CheckInLicense AWS API Documentation
    #
    # @overload check_in_license(params = {})
    # @param [Hash] params ({})
    def check_in_license(params = {}, options = {})
      req = build_request(:check_in_license, params)
      req.send_request(options)
    end

    # Checks out the specified license for offline use.
    #
    # @option params [required, String] :license_arn
    #   Amazon Resource Name (ARN) of the license. The license must use the
    #   borrow consumption configuration.
    #
    # @option params [required, Array<Types::EntitlementData>] :entitlements
    #   License entitlements. Partial checkouts are not supported.
    #
    # @option params [required, String] :digital_signature_method
    #   Digital signature method. The possible value is JSON Web Signature
    #   (JWS) algorithm PS384. For more information, see [RFC 7518 Digital
    #   Signature with RSASSA-PSS][1].
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc7518#section-3.5
    #
    # @option params [String] :node_id
    #   Node ID.
    #
    # @option params [Array<Types::Metadata>] :checkout_metadata
    #   Information about constraints.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::CheckoutBorrowLicenseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CheckoutBorrowLicenseResponse#license_arn #license_arn} => String
    #   * {Types::CheckoutBorrowLicenseResponse#license_consumption_token #license_consumption_token} => String
    #   * {Types::CheckoutBorrowLicenseResponse#entitlements_allowed #entitlements_allowed} => Array&lt;Types::EntitlementData&gt;
    #   * {Types::CheckoutBorrowLicenseResponse#node_id #node_id} => String
    #   * {Types::CheckoutBorrowLicenseResponse#signed_token #signed_token} => String
    #   * {Types::CheckoutBorrowLicenseResponse#issued_at #issued_at} => String
    #   * {Types::CheckoutBorrowLicenseResponse#expiration #expiration} => String
    #   * {Types::CheckoutBorrowLicenseResponse#checkout_metadata #checkout_metadata} => Array&lt;Types::Metadata&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.checkout_borrow_license({
    #     license_arn: "Arn", # required
    #     entitlements: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         unit: "Count", # required, accepts Count, None, Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second
    #       },
    #     ],
    #     digital_signature_method: "JWT_PS384", # required, accepts JWT_PS384
    #     node_id: "String",
    #     checkout_metadata: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.license_arn #=> String
    #   resp.license_consumption_token #=> String
    #   resp.entitlements_allowed #=> Array
    #   resp.entitlements_allowed[0].name #=> String
    #   resp.entitlements_allowed[0].value #=> String
    #   resp.entitlements_allowed[0].unit #=> String, one of "Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"
    #   resp.node_id #=> String
    #   resp.signed_token #=> String
    #   resp.issued_at #=> String
    #   resp.expiration #=> String
    #   resp.checkout_metadata #=> Array
    #   resp.checkout_metadata[0].name #=> String
    #   resp.checkout_metadata[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CheckoutBorrowLicense AWS API Documentation
    #
    # @overload checkout_borrow_license(params = {})
    # @param [Hash] params ({})
    def checkout_borrow_license(params = {}, options = {})
      req = build_request(:checkout_borrow_license, params)
      req.send_request(options)
    end

    # Checks out the specified license.
    #
    # <note markdown="1"> If the account that created the license is the same that is performing
    # the check out, you must specify the account as the beneficiary.
    #
    #  </note>
    #
    # @option params [required, String] :product_sku
    #   Product SKU.
    #
    # @option params [required, String] :checkout_type
    #   Checkout type.
    #
    # @option params [required, String] :key_fingerprint
    #   Key fingerprint identifying the license.
    #
    # @option params [required, Array<Types::EntitlementData>] :entitlements
    #   License entitlements.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @option params [String] :beneficiary
    #   License beneficiary.
    #
    # @option params [String] :node_id
    #   Node ID.
    #
    # @return [Types::CheckoutLicenseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CheckoutLicenseResponse#checkout_type #checkout_type} => String
    #   * {Types::CheckoutLicenseResponse#license_consumption_token #license_consumption_token} => String
    #   * {Types::CheckoutLicenseResponse#entitlements_allowed #entitlements_allowed} => Array&lt;Types::EntitlementData&gt;
    #   * {Types::CheckoutLicenseResponse#signed_token #signed_token} => String
    #   * {Types::CheckoutLicenseResponse#node_id #node_id} => String
    #   * {Types::CheckoutLicenseResponse#issued_at #issued_at} => String
    #   * {Types::CheckoutLicenseResponse#expiration #expiration} => String
    #   * {Types::CheckoutLicenseResponse#license_arn #license_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.checkout_license({
    #     product_sku: "String", # required
    #     checkout_type: "PROVISIONAL", # required, accepts PROVISIONAL, PERPETUAL
    #     key_fingerprint: "String", # required
    #     entitlements: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         unit: "Count", # required, accepts Count, None, Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second
    #       },
    #     ],
    #     client_token: "ClientToken", # required
    #     beneficiary: "String",
    #     node_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.checkout_type #=> String, one of "PROVISIONAL", "PERPETUAL"
    #   resp.license_consumption_token #=> String
    #   resp.entitlements_allowed #=> Array
    #   resp.entitlements_allowed[0].name #=> String
    #   resp.entitlements_allowed[0].value #=> String
    #   resp.entitlements_allowed[0].unit #=> String, one of "Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"
    #   resp.signed_token #=> String
    #   resp.node_id #=> String
    #   resp.issued_at #=> String
    #   resp.expiration #=> String
    #   resp.license_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CheckoutLicense AWS API Documentation
    #
    # @overload checkout_license(params = {})
    # @param [Hash] params ({})
    def checkout_license(params = {}, options = {})
      req = build_request(:checkout_license, params)
      req.send_request(options)
    end

    # Creates a grant for the specified license. A grant shares the use of
    # license entitlements with a specific Amazon Web Services account, an
    # organization, or an organizational unit (OU). For more information,
    # see [Granted licenses in License Manager][1] in the *License Manager
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @option params [required, String] :grant_name
    #   Grant name.
    #
    # @option params [required, String] :license_arn
    #   Amazon Resource Name (ARN) of the license.
    #
    # @option params [required, Array<String>] :principals
    #   The grant principals. You can specify one of the following as an
    #   Amazon Resource Name (ARN):
    #
    #   * An Amazon Web Services account, which includes only the account
    #     specified.
    #
    #   ^
    #   ^
    #
    #   * An organizational unit (OU), which includes all accounts in the OU.
    #
    #   ^
    #   ^
    #
    #   * An organization, which will include all accounts across your
    #     organization.
    #
    #   ^
    #
    # @option params [required, String] :home_region
    #   Home Region of the grant.
    #
    # @option params [required, Array<String>] :allowed_operations
    #   Allowed operations for the grant.
    #
    # @return [Types::CreateGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGrantResponse#grant_arn #grant_arn} => String
    #   * {Types::CreateGrantResponse#status #status} => String
    #   * {Types::CreateGrantResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_grant({
    #     client_token: "ClientToken", # required
    #     grant_name: "String", # required
    #     license_arn: "Arn", # required
    #     principals: ["Arn"], # required
    #     home_region: "String", # required
    #     allowed_operations: ["CreateGrant"], # required, accepts CreateGrant, CheckoutLicense, CheckoutBorrowLicense, CheckInLicense, ExtendConsumptionLicense, ListPurchasedLicenses, CreateToken
    #   })
    #
    # @example Response structure
    #
    #   resp.grant_arn #=> String
    #   resp.status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateGrant AWS API Documentation
    #
    # @overload create_grant(params = {})
    # @param [Hash] params ({})
    def create_grant(params = {}, options = {})
      req = build_request(:create_grant, params)
      req.send_request(options)
    end

    # Creates a new version of the specified grant. For more information,
    # see [Granted licenses in License Manager][1] in the *License Manager
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @option params [required, String] :grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #
    # @option params [String] :grant_name
    #   Grant name.
    #
    # @option params [Array<String>] :allowed_operations
    #   Allowed operations for the grant.
    #
    # @option params [String] :status
    #   Grant status.
    #
    # @option params [String] :status_reason
    #   Grant status reason.
    #
    # @option params [String] :source_version
    #   Current version of the grant.
    #
    # @option params [Types::Options] :options
    #   The options specified for the grant.
    #
    # @return [Types::CreateGrantVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGrantVersionResponse#grant_arn #grant_arn} => String
    #   * {Types::CreateGrantVersionResponse#status #status} => String
    #   * {Types::CreateGrantVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_grant_version({
    #     client_token: "ClientToken", # required
    #     grant_arn: "Arn", # required
    #     grant_name: "String",
    #     allowed_operations: ["CreateGrant"], # accepts CreateGrant, CheckoutLicense, CheckoutBorrowLicense, CheckInLicense, ExtendConsumptionLicense, ListPurchasedLicenses, CreateToken
    #     status: "PENDING_WORKFLOW", # accepts PENDING_WORKFLOW, PENDING_ACCEPT, REJECTED, ACTIVE, FAILED_WORKFLOW, DELETED, PENDING_DELETE, DISABLED, WORKFLOW_COMPLETED
    #     status_reason: "StatusReasonMessage",
    #     source_version: "String",
    #     options: {
    #       activation_override_behavior: "DISTRIBUTED_GRANTS_ONLY", # accepts DISTRIBUTED_GRANTS_ONLY, ALL_GRANTS_PERMITTED_BY_ISSUER
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.grant_arn #=> String
    #   resp.status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateGrantVersion AWS API Documentation
    #
    # @overload create_grant_version(params = {})
    # @param [Hash] params ({})
    def create_grant_version(params = {}, options = {})
      req = build_request(:create_grant_version, params)
      req.send_request(options)
    end

    # Creates a license.
    #
    # @option params [required, String] :license_name
    #   License name.
    #
    # @option params [required, String] :product_name
    #   Product name.
    #
    # @option params [required, String] :product_sku
    #   Product SKU.
    #
    # @option params [required, Types::Issuer] :issuer
    #   License issuer.
    #
    # @option params [required, String] :home_region
    #   Home Region for the license.
    #
    # @option params [required, Types::DatetimeRange] :validity
    #   Date and time range during which the license is valid, in ISO8601-UTC
    #   format.
    #
    # @option params [required, Array<Types::Entitlement>] :entitlements
    #   License entitlements.
    #
    # @option params [required, String] :beneficiary
    #   License beneficiary.
    #
    # @option params [required, Types::ConsumptionConfiguration] :consumption_configuration
    #   Configuration for consumption of the license. Choose a provisional
    #   configuration for workloads running with continuous connectivity.
    #   Choose a borrow configuration for workloads with offline usage.
    #
    # @option params [Array<Types::Metadata>] :license_metadata
    #   Information about the license.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::CreateLicenseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLicenseResponse#license_arn #license_arn} => String
    #   * {Types::CreateLicenseResponse#status #status} => String
    #   * {Types::CreateLicenseResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license({
    #     license_name: "String", # required
    #     product_name: "String", # required
    #     product_sku: "String", # required
    #     issuer: { # required
    #       name: "String", # required
    #       sign_key: "String",
    #     },
    #     home_region: "String", # required
    #     validity: { # required
    #       begin: "ISO8601DateTime", # required
    #       end: "ISO8601DateTime",
    #     },
    #     entitlements: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         max_count: 1,
    #         overage: false,
    #         unit: "Count", # required, accepts Count, None, Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second
    #         allow_check_in: false,
    #       },
    #     ],
    #     beneficiary: "String", # required
    #     consumption_configuration: { # required
    #       renew_type: "None", # accepts None, Weekly, Monthly
    #       provisional_configuration: {
    #         max_time_to_live_in_minutes: 1, # required
    #       },
    #       borrow_configuration: {
    #         allow_early_check_in: false, # required
    #         max_time_to_live_in_minutes: 1, # required
    #       },
    #     },
    #     license_metadata: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.license_arn #=> String
    #   resp.status #=> String, one of "AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicense AWS API Documentation
    #
    # @overload create_license(params = {})
    # @param [Hash] params ({})
    def create_license(params = {}, options = {})
      req = build_request(:create_license, params)
      req.send_request(options)
    end

    # Creates a license configuration.
    #
    # A license configuration is an abstraction of a customer license
    # agreement that can be consumed and enforced by License Manager.
    # Components include specifications for the license type (licensing by
    # instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,
    # Dedicated Instance, Dedicated Host, or all of these), license affinity
    # to host (how long a license must be associated with a host), and the
    # number of licenses purchased and used.
    #
    # @option params [required, String] :name
    #   Name of the license configuration.
    #
    # @option params [String] :description
    #   Description of the license configuration.
    #
    # @option params [required, String] :license_counting_type
    #   Dimension used to track the license inventory.
    #
    # @option params [Integer] :license_count
    #   Number of licenses managed by the license configuration.
    #
    # @option params [Boolean] :license_count_hard_limit
    #   Indicates whether hard or soft license enforcement is used. Exceeding
    #   a hard limit blocks the launch of new instances.
    #
    # @option params [Array<String>] :license_rules
    #   License rules. The syntax is #name=value (for example,
    #   #allowedTenancy=EC2-DedicatedHost). The available rules vary by
    #   dimension, as follows.
    #
    #   * `Cores` dimension: `allowedTenancy` \| `licenseAffinityToHost` \|
    #     `maximumCores` \| `minimumCores`
    #
    #   * `Instances` dimension: `allowedTenancy` \| `maximumCores` \|
    #     `minimumCores` \| `maximumSockets` \| `minimumSockets` \|
    #     `maximumVcpus` \| `minimumVcpus`
    #
    #   * `Sockets` dimension: `allowedTenancy` \| `licenseAffinityToHost` \|
    #     `maximumSockets` \| `minimumSockets`
    #
    #   * `vCPUs` dimension: `allowedTenancy` \| `honorVcpuOptimization` \|
    #     `maximumVcpus` \| `minimumVcpus`
    #
    #   The unit for `licenseAffinityToHost` is days and the range is 1 to
    #   180. The possible values for `allowedTenancy` are `EC2-Default`,
    #   `EC2-DedicatedHost`, and `EC2-DedicatedInstance`. The possible values
    #   for `honorVcpuOptimization` are `True` and `False`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to add to the license configuration.
    #
    # @option params [Boolean] :disassociate_when_not_found
    #   When true, disassociates a resource when software is uninstalled.
    #
    # @option params [Array<Types::ProductInformation>] :product_information_list
    #   Product information.
    #
    # @return [Types::CreateLicenseConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLicenseConfigurationResponse#license_configuration_arn #license_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_configuration({
    #     name: "String", # required
    #     description: "String",
    #     license_counting_type: "vCPU", # required, accepts vCPU, Instance, Core, Socket
    #     license_count: 1,
    #     license_count_hard_limit: false,
    #     license_rules: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     disassociate_when_not_found: false,
    #     product_information_list: [
    #       {
    #         resource_type: "String", # required
    #         product_information_filter_list: [ # required
    #           {
    #             product_information_filter_name: "String", # required
    #             product_information_filter_value: ["String"],
    #             product_information_filter_comparator: "String", # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseConfiguration AWS API Documentation
    #
    # @overload create_license_configuration(params = {})
    # @param [Hash] params ({})
    def create_license_configuration(params = {}, options = {})
      req = build_request(:create_license_configuration, params)
      req.send_request(options)
    end

    # Creates a new license conversion task.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource you are converting the
    #   license type for.
    #
    # @option params [required, Types::LicenseConversionContext] :source_license_context
    #   Information that identifies the license type you are converting from.
    #   For the structure of the source license, see [Convert a license type
    #   using the CLI ][1] in the *License Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli
    #
    # @option params [required, Types::LicenseConversionContext] :destination_license_context
    #   Information that identifies the license type you are converting to.
    #   For the structure of the destination license, see [Convert a license
    #   type using the CLI ][1] in the *License Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli
    #
    # @return [Types::CreateLicenseConversionTaskForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLicenseConversionTaskForResourceResponse#license_conversion_task_id #license_conversion_task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_conversion_task_for_resource({
    #     resource_arn: "Arn", # required
    #     source_license_context: { # required
    #       usage_operation: "UsageOperation",
    #     },
    #     destination_license_context: { # required
    #       usage_operation: "UsageOperation",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.license_conversion_task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseConversionTaskForResource AWS API Documentation
    #
    # @overload create_license_conversion_task_for_resource(params = {})
    # @param [Hash] params ({})
    def create_license_conversion_task_for_resource(params = {}, options = {})
      req = build_request(:create_license_conversion_task_for_resource, params)
      req.send_request(options)
    end

    # Creates a report generator.
    #
    # @option params [required, String] :report_generator_name
    #   Name of the report generator.
    #
    # @option params [required, Array<String>] :type
    #   Type of reports to generate. The following report types an be
    #   generated:
    #
    #   * License configuration report - Reports the number and details of
    #     consumed licenses for a license configuration.
    #
    #   * Resource report - Reports the tracked licenses and resource
    #     consumption for a license configuration.
    #
    # @option params [required, Types::ReportContext] :report_context
    #   Defines the type of license configuration the report generator tracks.
    #
    # @option params [required, Types::ReportFrequency] :report_frequency
    #   Frequency by which reports are generated. Reports can be generated
    #   daily, monthly, or weekly.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @option params [String] :description
    #   Description of the report generator.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to add to the report generator.
    #
    # @return [Types::CreateLicenseManagerReportGeneratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLicenseManagerReportGeneratorResponse#license_manager_report_generator_arn #license_manager_report_generator_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_manager_report_generator({
    #     report_generator_name: "ReportGeneratorName", # required
    #     type: ["LicenseConfigurationSummaryReport"], # required, accepts LicenseConfigurationSummaryReport, LicenseConfigurationUsageReport
    #     report_context: { # required
    #       license_configuration_arns: ["Arn"], # required
    #     },
    #     report_frequency: { # required
    #       value: 1,
    #       period: "DAY", # accepts DAY, WEEK, MONTH
    #     },
    #     client_token: "ClientRequestToken", # required
    #     description: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.license_manager_report_generator_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseManagerReportGenerator AWS API Documentation
    #
    # @overload create_license_manager_report_generator(params = {})
    # @param [Hash] params ({})
    def create_license_manager_report_generator(params = {}, options = {})
      req = build_request(:create_license_manager_report_generator, params)
      req.send_request(options)
    end

    # Creates a new version of the specified license.
    #
    # @option params [required, String] :license_arn
    #   Amazon Resource Name (ARN) of the license.
    #
    # @option params [required, String] :license_name
    #   License name.
    #
    # @option params [required, String] :product_name
    #   Product name.
    #
    # @option params [required, Types::Issuer] :issuer
    #   License issuer.
    #
    # @option params [required, String] :home_region
    #   Home Region of the license.
    #
    # @option params [required, Types::DatetimeRange] :validity
    #   Date and time range during which the license is valid, in ISO8601-UTC
    #   format.
    #
    # @option params [Array<Types::Metadata>] :license_metadata
    #   Information about the license.
    #
    # @option params [required, Array<Types::Entitlement>] :entitlements
    #   License entitlements.
    #
    # @option params [required, Types::ConsumptionConfiguration] :consumption_configuration
    #   Configuration for consumption of the license. Choose a provisional
    #   configuration for workloads running with continuous connectivity.
    #   Choose a borrow configuration for workloads with offline usage.
    #
    # @option params [required, String] :status
    #   License status.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @option params [String] :source_version
    #   Current version of the license.
    #
    # @return [Types::CreateLicenseVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLicenseVersionResponse#license_arn #license_arn} => String
    #   * {Types::CreateLicenseVersionResponse#version #version} => String
    #   * {Types::CreateLicenseVersionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_version({
    #     license_arn: "Arn", # required
    #     license_name: "String", # required
    #     product_name: "String", # required
    #     issuer: { # required
    #       name: "String", # required
    #       sign_key: "String",
    #     },
    #     home_region: "String", # required
    #     validity: { # required
    #       begin: "ISO8601DateTime", # required
    #       end: "ISO8601DateTime",
    #     },
    #     license_metadata: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     entitlements: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         max_count: 1,
    #         overage: false,
    #         unit: "Count", # required, accepts Count, None, Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second
    #         allow_check_in: false,
    #       },
    #     ],
    #     consumption_configuration: { # required
    #       renew_type: "None", # accepts None, Weekly, Monthly
    #       provisional_configuration: {
    #         max_time_to_live_in_minutes: 1, # required
    #       },
    #       borrow_configuration: {
    #         allow_early_check_in: false, # required
    #         max_time_to_live_in_minutes: 1, # required
    #       },
    #     },
    #     status: "AVAILABLE", # required, accepts AVAILABLE, PENDING_AVAILABLE, DEACTIVATED, SUSPENDED, EXPIRED, PENDING_DELETE, DELETED
    #     client_token: "ClientToken", # required
    #     source_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.license_arn #=> String
    #   resp.version #=> String
    #   resp.status #=> String, one of "AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseVersion AWS API Documentation
    #
    # @overload create_license_version(params = {})
    # @param [Hash] params ({})
    def create_license_version(params = {}, options = {})
      req = build_request(:create_license_version, params)
      req.send_request(options)
    end

    # Creates a long-lived token.
    #
    # A refresh token is a JWT token used to get an access token. With an
    # access token, you can call AssumeRoleWithWebIdentity to get role
    # credentials that you can use to call License Manager to manage the
    # specified license.
    #
    # @option params [required, String] :license_arn
    #   Amazon Resource Name (ARN) of the license. The ARN is mapped to the
    #   aud claim of the JWT token.
    #
    # @option params [Array<String>] :role_arns
    #   Amazon Resource Name (ARN) of the IAM roles to embed in the token.
    #   License Manager does not check whether the roles are in use.
    #
    # @option params [Integer] :expiration_in_days
    #   Token expiration, in days, counted from token creation. The default is
    #   365 days.
    #
    # @option params [Array<String>] :token_properties
    #   Data specified by the caller to be included in the JWT token. The data
    #   is mapped to the amr claim of the JWT token.
    #
    # @option params [required, String] :client_token
    #   Idempotency token, valid for 10 minutes.
    #
    # @return [Types::CreateTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTokenResponse#token_id #token_id} => String
    #   * {Types::CreateTokenResponse#token_type #token_type} => String
    #   * {Types::CreateTokenResponse#token #token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_token({
    #     license_arn: "Arn", # required
    #     role_arns: ["Arn"],
    #     expiration_in_days: 1,
    #     token_properties: ["String"],
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.token_id #=> String
    #   resp.token_type #=> String, one of "REFRESH_TOKEN"
    #   resp.token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateToken AWS API Documentation
    #
    # @overload create_token(params = {})
    # @param [Hash] params ({})
    def create_token(params = {}, options = {})
      req = build_request(:create_token, params)
      req.send_request(options)
    end

    # Deletes the specified grant.
    #
    # @option params [required, String] :grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #
    # @option params [String] :status_reason
    #   The Status reason for the delete request.
    #
    # @option params [required, String] :version
    #   Current version of the grant.
    #
    # @return [Types::DeleteGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGrantResponse#grant_arn #grant_arn} => String
    #   * {Types::DeleteGrantResponse#status #status} => String
    #   * {Types::DeleteGrantResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_grant({
    #     grant_arn: "Arn", # required
    #     status_reason: "StatusReasonMessage",
    #     version: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.grant_arn #=> String
    #   resp.status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteGrant AWS API Documentation
    #
    # @overload delete_grant(params = {})
    # @param [Hash] params ({})
    def delete_grant(params = {}, options = {})
      req = build_request(:delete_grant, params)
      req.send_request(options)
    end

    # Deletes the specified license.
    #
    # @option params [required, String] :license_arn
    #   Amazon Resource Name (ARN) of the license.
    #
    # @option params [required, String] :source_version
    #   Current version of the license.
    #
    # @return [Types::DeleteLicenseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLicenseResponse#status #status} => String
    #   * {Types::DeleteLicenseResponse#deletion_date #deletion_date} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_license({
    #     license_arn: "Arn", # required
    #     source_version: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PENDING_DELETE", "DELETED"
    #   resp.deletion_date #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicense AWS API Documentation
    #
    # @overload delete_license(params = {})
    # @param [Hash] params ({})
    def delete_license(params = {}, options = {})
      req = build_request(:delete_license, params)
      req.send_request(options)
    end

    # Deletes the specified license configuration.
    #
    # You cannot delete a license configuration that is in use.
    #
    # @option params [required, String] :license_configuration_arn
    #   ID of the license configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_license_configuration({
    #     license_configuration_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseConfiguration AWS API Documentation
    #
    # @overload delete_license_configuration(params = {})
    # @param [Hash] params ({})
    def delete_license_configuration(params = {}, options = {})
      req = build_request(:delete_license_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified report generator.
    #
    # This action deletes the report generator, which stops it from
    # generating future reports. The action cannot be reversed. It has no
    # effect on the previous reports from this generator.
    #
    # @option params [required, String] :license_manager_report_generator_arn
    #   Amazon Resource Name (ARN) of the report generator to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_license_manager_report_generator({
    #     license_manager_report_generator_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseManagerReportGenerator AWS API Documentation
    #
    # @overload delete_license_manager_report_generator(params = {})
    # @param [Hash] params ({})
    def delete_license_manager_report_generator(params = {}, options = {})
      req = build_request(:delete_license_manager_report_generator, params)
      req.send_request(options)
    end

    # Deletes the specified token. Must be called in the license home
    # Region.
    #
    # @option params [required, String] :token_id
    #   Token ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_token({
    #     token_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteToken AWS API Documentation
    #
    # @overload delete_token(params = {})
    # @param [Hash] params ({})
    def delete_token(params = {}, options = {})
      req = build_request(:delete_token, params)
      req.send_request(options)
    end

    # Extends the expiration date for license consumption.
    #
    # @option params [required, String] :license_consumption_token
    #   License consumption token.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request. Provides an error response if you
    #   do not have the required permissions.
    #
    # @return [Types::ExtendLicenseConsumptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExtendLicenseConsumptionResponse#license_consumption_token #license_consumption_token} => String
    #   * {Types::ExtendLicenseConsumptionResponse#expiration #expiration} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.extend_license_consumption({
    #     license_consumption_token: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.license_consumption_token #=> String
    #   resp.expiration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ExtendLicenseConsumption AWS API Documentation
    #
    # @overload extend_license_consumption(params = {})
    # @param [Hash] params ({})
    def extend_license_consumption(params = {}, options = {})
      req = build_request(:extend_license_consumption, params)
      req.send_request(options)
    end

    # Gets a temporary access token to use with AssumeRoleWithWebIdentity.
    # Access tokens are valid for one hour.
    #
    # @option params [required, String] :token
    #   Refresh token, encoded as a JWT token.
    #
    # @option params [Array<String>] :token_properties
    #   Token properties to validate against those present in the JWT token.
    #
    # @return [Types::GetAccessTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessTokenResponse#access_token #access_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_token({
    #     token: "TokenString", # required
    #     token_properties: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.access_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetAccessToken AWS API Documentation
    #
    # @overload get_access_token(params = {})
    # @param [Hash] params ({})
    def get_access_token(params = {}, options = {})
      req = build_request(:get_access_token, params)
      req.send_request(options)
    end

    # Gets detailed information about the specified grant.
    #
    # @option params [required, String] :grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #
    # @option params [String] :version
    #   Grant version.
    #
    # @return [Types::GetGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGrantResponse#grant #grant} => Types::Grant
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_grant({
    #     grant_arn: "Arn", # required
    #     version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.grant.grant_arn #=> String
    #   resp.grant.grant_name #=> String
    #   resp.grant.parent_arn #=> String
    #   resp.grant.license_arn #=> String
    #   resp.grant.grantee_principal_arn #=> String
    #   resp.grant.home_region #=> String
    #   resp.grant.grant_status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.grant.status_reason #=> String
    #   resp.grant.version #=> String
    #   resp.grant.granted_operations #=> Array
    #   resp.grant.granted_operations[0] #=> String, one of "CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"
    #   resp.grant.options.activation_override_behavior #=> String, one of "DISTRIBUTED_GRANTS_ONLY", "ALL_GRANTS_PERMITTED_BY_ISSUER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetGrant AWS API Documentation
    #
    # @overload get_grant(params = {})
    # @param [Hash] params ({})
    def get_grant(params = {}, options = {})
      req = build_request(:get_grant, params)
      req.send_request(options)
    end

    # Gets detailed information about the specified license.
    #
    # @option params [required, String] :license_arn
    #   Amazon Resource Name (ARN) of the license.
    #
    # @option params [String] :version
    #   License version.
    #
    # @return [Types::GetLicenseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLicenseResponse#license #license} => Types::License
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license({
    #     license_arn: "Arn", # required
    #     version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.license.license_arn #=> String
    #   resp.license.license_name #=> String
    #   resp.license.product_name #=> String
    #   resp.license.product_sku #=> String
    #   resp.license.issuer.name #=> String
    #   resp.license.issuer.sign_key #=> String
    #   resp.license.issuer.key_fingerprint #=> String
    #   resp.license.home_region #=> String
    #   resp.license.status #=> String, one of "AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"
    #   resp.license.validity.begin #=> String
    #   resp.license.validity.end #=> String
    #   resp.license.beneficiary #=> String
    #   resp.license.entitlements #=> Array
    #   resp.license.entitlements[0].name #=> String
    #   resp.license.entitlements[0].value #=> String
    #   resp.license.entitlements[0].max_count #=> Integer
    #   resp.license.entitlements[0].overage #=> Boolean
    #   resp.license.entitlements[0].unit #=> String, one of "Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"
    #   resp.license.entitlements[0].allow_check_in #=> Boolean
    #   resp.license.consumption_configuration.renew_type #=> String, one of "None", "Weekly", "Monthly"
    #   resp.license.consumption_configuration.provisional_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.license.consumption_configuration.borrow_configuration.allow_early_check_in #=> Boolean
    #   resp.license.consumption_configuration.borrow_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.license.license_metadata #=> Array
    #   resp.license.license_metadata[0].name #=> String
    #   resp.license.license_metadata[0].value #=> String
    #   resp.license.create_time #=> String
    #   resp.license.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicense AWS API Documentation
    #
    # @overload get_license(params = {})
    # @param [Hash] params ({})
    def get_license(params = {}, options = {})
      req = build_request(:get_license, params)
      req.send_request(options)
    end

    # Gets detailed information about the specified license configuration.
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @return [Types::GetLicenseConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLicenseConfigurationResponse#license_configuration_id #license_configuration_id} => String
    #   * {Types::GetLicenseConfigurationResponse#license_configuration_arn #license_configuration_arn} => String
    #   * {Types::GetLicenseConfigurationResponse#name #name} => String
    #   * {Types::GetLicenseConfigurationResponse#description #description} => String
    #   * {Types::GetLicenseConfigurationResponse#license_counting_type #license_counting_type} => String
    #   * {Types::GetLicenseConfigurationResponse#license_rules #license_rules} => Array&lt;String&gt;
    #   * {Types::GetLicenseConfigurationResponse#license_count #license_count} => Integer
    #   * {Types::GetLicenseConfigurationResponse#license_count_hard_limit #license_count_hard_limit} => Boolean
    #   * {Types::GetLicenseConfigurationResponse#consumed_licenses #consumed_licenses} => Integer
    #   * {Types::GetLicenseConfigurationResponse#status #status} => String
    #   * {Types::GetLicenseConfigurationResponse#owner_account_id #owner_account_id} => String
    #   * {Types::GetLicenseConfigurationResponse#consumed_license_summary_list #consumed_license_summary_list} => Array&lt;Types::ConsumedLicenseSummary&gt;
    #   * {Types::GetLicenseConfigurationResponse#managed_resource_summary_list #managed_resource_summary_list} => Array&lt;Types::ManagedResourceSummary&gt;
    #   * {Types::GetLicenseConfigurationResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::GetLicenseConfigurationResponse#product_information_list #product_information_list} => Array&lt;Types::ProductInformation&gt;
    #   * {Types::GetLicenseConfigurationResponse#automated_discovery_information #automated_discovery_information} => Types::AutomatedDiscoveryInformation
    #   * {Types::GetLicenseConfigurationResponse#disassociate_when_not_found #disassociate_when_not_found} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_configuration({
    #     license_configuration_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configuration_id #=> String
    #   resp.license_configuration_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.license_counting_type #=> String, one of "vCPU", "Instance", "Core", "Socket"
    #   resp.license_rules #=> Array
    #   resp.license_rules[0] #=> String
    #   resp.license_count #=> Integer
    #   resp.license_count_hard_limit #=> Boolean
    #   resp.consumed_licenses #=> Integer
    #   resp.status #=> String
    #   resp.owner_account_id #=> String
    #   resp.consumed_license_summary_list #=> Array
    #   resp.consumed_license_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.consumed_license_summary_list[0].consumed_licenses #=> Integer
    #   resp.managed_resource_summary_list #=> Array
    #   resp.managed_resource_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.managed_resource_summary_list[0].association_count #=> Integer
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.product_information_list #=> Array
    #   resp.product_information_list[0].resource_type #=> String
    #   resp.product_information_list[0].product_information_filter_list #=> Array
    #   resp.product_information_list[0].product_information_filter_list[0].product_information_filter_name #=> String
    #   resp.product_information_list[0].product_information_filter_list[0].product_information_filter_value #=> Array
    #   resp.product_information_list[0].product_information_filter_list[0].product_information_filter_value[0] #=> String
    #   resp.product_information_list[0].product_information_filter_list[0].product_information_filter_comparator #=> String
    #   resp.automated_discovery_information.last_run_time #=> Time
    #   resp.disassociate_when_not_found #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseConfiguration AWS API Documentation
    #
    # @overload get_license_configuration(params = {})
    # @param [Hash] params ({})
    def get_license_configuration(params = {}, options = {})
      req = build_request(:get_license_configuration, params)
      req.send_request(options)
    end

    # Gets information about the specified license type conversion task.
    #
    # @option params [required, String] :license_conversion_task_id
    #   ID of the license type conversion task to retrieve information on.
    #
    # @return [Types::GetLicenseConversionTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLicenseConversionTaskResponse#license_conversion_task_id #license_conversion_task_id} => String
    #   * {Types::GetLicenseConversionTaskResponse#resource_arn #resource_arn} => String
    #   * {Types::GetLicenseConversionTaskResponse#source_license_context #source_license_context} => Types::LicenseConversionContext
    #   * {Types::GetLicenseConversionTaskResponse#destination_license_context #destination_license_context} => Types::LicenseConversionContext
    #   * {Types::GetLicenseConversionTaskResponse#status_message #status_message} => String
    #   * {Types::GetLicenseConversionTaskResponse#status #status} => String
    #   * {Types::GetLicenseConversionTaskResponse#start_time #start_time} => Time
    #   * {Types::GetLicenseConversionTaskResponse#license_conversion_time #license_conversion_time} => Time
    #   * {Types::GetLicenseConversionTaskResponse#end_time #end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_conversion_task({
    #     license_conversion_task_id: "LicenseConversionTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.license_conversion_task_id #=> String
    #   resp.resource_arn #=> String
    #   resp.source_license_context.usage_operation #=> String
    #   resp.destination_license_context.usage_operation #=> String
    #   resp.status_message #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.start_time #=> Time
    #   resp.license_conversion_time #=> Time
    #   resp.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseConversionTask AWS API Documentation
    #
    # @overload get_license_conversion_task(params = {})
    # @param [Hash] params ({})
    def get_license_conversion_task(params = {}, options = {})
      req = build_request(:get_license_conversion_task, params)
      req.send_request(options)
    end

    # Gets information about the specified report generator.
    #
    # @option params [required, String] :license_manager_report_generator_arn
    #   Amazon Resource Name (ARN) of the report generator.
    #
    # @return [Types::GetLicenseManagerReportGeneratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLicenseManagerReportGeneratorResponse#report_generator #report_generator} => Types::ReportGenerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_manager_report_generator({
    #     license_manager_report_generator_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_generator.report_generator_name #=> String
    #   resp.report_generator.report_type #=> Array
    #   resp.report_generator.report_type[0] #=> String, one of "LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"
    #   resp.report_generator.report_context.license_configuration_arns #=> Array
    #   resp.report_generator.report_context.license_configuration_arns[0] #=> String
    #   resp.report_generator.report_frequency.value #=> Integer
    #   resp.report_generator.report_frequency.period #=> String, one of "DAY", "WEEK", "MONTH"
    #   resp.report_generator.license_manager_report_generator_arn #=> String
    #   resp.report_generator.last_run_status #=> String
    #   resp.report_generator.last_run_failure_reason #=> String
    #   resp.report_generator.last_report_generation_time #=> String
    #   resp.report_generator.report_creator_account #=> String
    #   resp.report_generator.description #=> String
    #   resp.report_generator.s3_location.bucket #=> String
    #   resp.report_generator.s3_location.key_prefix #=> String
    #   resp.report_generator.create_time #=> String
    #   resp.report_generator.tags #=> Array
    #   resp.report_generator.tags[0].key #=> String
    #   resp.report_generator.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseManagerReportGenerator AWS API Documentation
    #
    # @overload get_license_manager_report_generator(params = {})
    # @param [Hash] params ({})
    def get_license_manager_report_generator(params = {}, options = {})
      req = build_request(:get_license_manager_report_generator, params)
      req.send_request(options)
    end

    # Gets detailed information about the usage of the specified license.
    #
    # @option params [required, String] :license_arn
    #   Amazon Resource Name (ARN) of the license.
    #
    # @return [Types::GetLicenseUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLicenseUsageResponse#license_usage #license_usage} => Types::LicenseUsage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_usage({
    #     license_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.license_usage.entitlement_usages #=> Array
    #   resp.license_usage.entitlement_usages[0].name #=> String
    #   resp.license_usage.entitlement_usages[0].consumed_value #=> String
    #   resp.license_usage.entitlement_usages[0].max_count #=> String
    #   resp.license_usage.entitlement_usages[0].unit #=> String, one of "Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseUsage AWS API Documentation
    #
    # @overload get_license_usage(params = {})
    # @param [Hash] params ({})
    def get_license_usage(params = {}, options = {})
      req = build_request(:get_license_usage, params)
      req.send_request(options)
    end

    # Gets the License Manager settings for the current Region.
    #
    # @return [Types::GetServiceSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceSettingsResponse#s3_bucket_arn #s3_bucket_arn} => String
    #   * {Types::GetServiceSettingsResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::GetServiceSettingsResponse#organization_configuration #organization_configuration} => Types::OrganizationConfiguration
    #   * {Types::GetServiceSettingsResponse#enable_cross_accounts_discovery #enable_cross_accounts_discovery} => Boolean
    #   * {Types::GetServiceSettingsResponse#license_manager_resource_share_arn #license_manager_resource_share_arn} => String
    #
    # @example Response structure
    #
    #   resp.s3_bucket_arn #=> String
    #   resp.sns_topic_arn #=> String
    #   resp.organization_configuration.enable_integration #=> Boolean
    #   resp.enable_cross_accounts_discovery #=> Boolean
    #   resp.license_manager_resource_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetServiceSettings AWS API Documentation
    #
    # @overload get_service_settings(params = {})
    # @param [Hash] params ({})
    def get_service_settings(params = {}, options = {})
      req = build_request(:get_service_settings, params)
      req.send_request(options)
    end

    # Lists the resource associations for the specified license
    # configuration.
    #
    # Resource associations need not consume licenses from a license
    # configuration. For example, an AMI or a stopped instance might not
    # consume a license (depending on the license rules).
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name (ARN) of a license configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @return [Types::ListAssociationsForLicenseConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociationsForLicenseConfigurationResponse#license_configuration_associations #license_configuration_associations} => Array&lt;Types::LicenseConfigurationAssociation&gt;
    #   * {Types::ListAssociationsForLicenseConfigurationResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associations_for_license_configuration({
    #     license_configuration_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configuration_associations #=> Array
    #   resp.license_configuration_associations[0].resource_arn #=> String
    #   resp.license_configuration_associations[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_configuration_associations[0].resource_owner_id #=> String
    #   resp.license_configuration_associations[0].association_time #=> Time
    #   resp.license_configuration_associations[0].ami_association_scope #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListAssociationsForLicenseConfiguration AWS API Documentation
    #
    # @overload list_associations_for_license_configuration(params = {})
    # @param [Hash] params ({})
    def list_associations_for_license_configuration(params = {}, options = {})
      req = build_request(:list_associations_for_license_configuration, params)
      req.send_request(options)
    end

    # Lists the grants distributed for the specified license.
    #
    # @option params [Array<String>] :grant_arns
    #   Amazon Resource Names (ARNs) of the grants.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `LicenseArn`
    #
    #   * `GrantStatus`
    #
    #   * `GranteePrincipalARN`
    #
    #   * `ProductSKU`
    #
    #   * `LicenseIssuerName`
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @return [Types::ListDistributedGrantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributedGrantsResponse#grants #grants} => Array&lt;Types::Grant&gt;
    #   * {Types::ListDistributedGrantsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributed_grants({
    #     grant_arns: ["Arn"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.grants #=> Array
    #   resp.grants[0].grant_arn #=> String
    #   resp.grants[0].grant_name #=> String
    #   resp.grants[0].parent_arn #=> String
    #   resp.grants[0].license_arn #=> String
    #   resp.grants[0].grantee_principal_arn #=> String
    #   resp.grants[0].home_region #=> String
    #   resp.grants[0].grant_status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.grants[0].status_reason #=> String
    #   resp.grants[0].version #=> String
    #   resp.grants[0].granted_operations #=> Array
    #   resp.grants[0].granted_operations[0] #=> String, one of "CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"
    #   resp.grants[0].options.activation_override_behavior #=> String, one of "DISTRIBUTED_GRANTS_ONLY", "ALL_GRANTS_PERMITTED_BY_ISSUER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListDistributedGrants AWS API Documentation
    #
    # @overload list_distributed_grants(params = {})
    # @param [Hash] params ({})
    def list_distributed_grants(params = {}, options = {})
      req = build_request(:list_distributed_grants, params)
      req.send_request(options)
    end

    # Lists the license configuration operations that failed.
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name of the license configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @return [Types::ListFailuresForLicenseConfigurationOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFailuresForLicenseConfigurationOperationsResponse#license_operation_failure_list #license_operation_failure_list} => Array&lt;Types::LicenseOperationFailure&gt;
    #   * {Types::ListFailuresForLicenseConfigurationOperationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_failures_for_license_configuration_operations({
    #     license_configuration_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.license_operation_failure_list #=> Array
    #   resp.license_operation_failure_list[0].resource_arn #=> String
    #   resp.license_operation_failure_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_operation_failure_list[0].error_message #=> String
    #   resp.license_operation_failure_list[0].failure_time #=> Time
    #   resp.license_operation_failure_list[0].operation_name #=> String
    #   resp.license_operation_failure_list[0].resource_owner_id #=> String
    #   resp.license_operation_failure_list[0].operation_requested_by #=> String
    #   resp.license_operation_failure_list[0].metadata_list #=> Array
    #   resp.license_operation_failure_list[0].metadata_list[0].name #=> String
    #   resp.license_operation_failure_list[0].metadata_list[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListFailuresForLicenseConfigurationOperations AWS API Documentation
    #
    # @overload list_failures_for_license_configuration_operations(params = {})
    # @param [Hash] params ({})
    def list_failures_for_license_configuration_operations(params = {}, options = {})
      req = build_request(:list_failures_for_license_configuration_operations, params)
      req.send_request(options)
    end

    # Lists the license configurations for your account.
    #
    # @option params [Array<String>] :license_configuration_arns
    #   Amazon Resource Names (ARN) of the license configurations.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters and logical
    #   operators are supported:
    #
    #   * `licenseCountingType` - The dimension for which licenses are
    #     counted. Possible values are `vCPU` \| `Instance` \| `Core` \|
    #     `Socket`. Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `enforceLicenseCount` - A Boolean value that indicates whether hard
    #     license enforcement is used. Logical operators are `EQUALS` \|
    #     `NOT_EQUALS`.
    #
    #   * `usagelimitExceeded` - A Boolean value that indicates whether the
    #     available licenses have been exceeded. Logical operators are
    #     `EQUALS` \| `NOT_EQUALS`.
    #
    # @return [Types::ListLicenseConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicenseConfigurationsResponse#license_configurations #license_configurations} => Array&lt;Types::LicenseConfiguration&gt;
    #   * {Types::ListLicenseConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_configurations({
    #     license_configuration_arns: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configurations #=> Array
    #   resp.license_configurations[0].license_configuration_id #=> String
    #   resp.license_configurations[0].license_configuration_arn #=> String
    #   resp.license_configurations[0].name #=> String
    #   resp.license_configurations[0].description #=> String
    #   resp.license_configurations[0].license_counting_type #=> String, one of "vCPU", "Instance", "Core", "Socket"
    #   resp.license_configurations[0].license_rules #=> Array
    #   resp.license_configurations[0].license_rules[0] #=> String
    #   resp.license_configurations[0].license_count #=> Integer
    #   resp.license_configurations[0].license_count_hard_limit #=> Boolean
    #   resp.license_configurations[0].disassociate_when_not_found #=> Boolean
    #   resp.license_configurations[0].consumed_licenses #=> Integer
    #   resp.license_configurations[0].status #=> String
    #   resp.license_configurations[0].owner_account_id #=> String
    #   resp.license_configurations[0].consumed_license_summary_list #=> Array
    #   resp.license_configurations[0].consumed_license_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_configurations[0].consumed_license_summary_list[0].consumed_licenses #=> Integer
    #   resp.license_configurations[0].managed_resource_summary_list #=> Array
    #   resp.license_configurations[0].managed_resource_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_configurations[0].managed_resource_summary_list[0].association_count #=> Integer
    #   resp.license_configurations[0].product_information_list #=> Array
    #   resp.license_configurations[0].product_information_list[0].resource_type #=> String
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list #=> Array
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_name #=> String
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_value #=> Array
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_value[0] #=> String
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_comparator #=> String
    #   resp.license_configurations[0].automated_discovery_information.last_run_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseConfigurations AWS API Documentation
    #
    # @overload list_license_configurations(params = {})
    # @param [Hash] params ({})
    def list_license_configurations(params = {}, options = {})
      req = build_request(:list_license_configurations, params)
      req.send_request(options)
    end

    # Lists the license type conversion tasks for your account.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. Valid filters are `ResourceArns` and
    #   `Status`.
    #
    # @return [Types::ListLicenseConversionTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicenseConversionTasksResponse#license_conversion_tasks #license_conversion_tasks} => Array&lt;Types::LicenseConversionTask&gt;
    #   * {Types::ListLicenseConversionTasksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_conversion_tasks({
    #     next_token: "String",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.license_conversion_tasks #=> Array
    #   resp.license_conversion_tasks[0].license_conversion_task_id #=> String
    #   resp.license_conversion_tasks[0].resource_arn #=> String
    #   resp.license_conversion_tasks[0].source_license_context.usage_operation #=> String
    #   resp.license_conversion_tasks[0].destination_license_context.usage_operation #=> String
    #   resp.license_conversion_tasks[0].status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.license_conversion_tasks[0].status_message #=> String
    #   resp.license_conversion_tasks[0].start_time #=> Time
    #   resp.license_conversion_tasks[0].license_conversion_time #=> Time
    #   resp.license_conversion_tasks[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseConversionTasks AWS API Documentation
    #
    # @overload list_license_conversion_tasks(params = {})
    # @param [Hash] params ({})
    def list_license_conversion_tasks(params = {}, options = {})
      req = build_request(:list_license_conversion_tasks, params)
      req.send_request(options)
    end

    # Lists the report generators for your account.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `LicenseConfigurationArn`
    #
    #   ^
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @return [Types::ListLicenseManagerReportGeneratorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicenseManagerReportGeneratorsResponse#report_generators #report_generators} => Array&lt;Types::ReportGenerator&gt;
    #   * {Types::ListLicenseManagerReportGeneratorsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_manager_report_generators({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.report_generators #=> Array
    #   resp.report_generators[0].report_generator_name #=> String
    #   resp.report_generators[0].report_type #=> Array
    #   resp.report_generators[0].report_type[0] #=> String, one of "LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"
    #   resp.report_generators[0].report_context.license_configuration_arns #=> Array
    #   resp.report_generators[0].report_context.license_configuration_arns[0] #=> String
    #   resp.report_generators[0].report_frequency.value #=> Integer
    #   resp.report_generators[0].report_frequency.period #=> String, one of "DAY", "WEEK", "MONTH"
    #   resp.report_generators[0].license_manager_report_generator_arn #=> String
    #   resp.report_generators[0].last_run_status #=> String
    #   resp.report_generators[0].last_run_failure_reason #=> String
    #   resp.report_generators[0].last_report_generation_time #=> String
    #   resp.report_generators[0].report_creator_account #=> String
    #   resp.report_generators[0].description #=> String
    #   resp.report_generators[0].s3_location.bucket #=> String
    #   resp.report_generators[0].s3_location.key_prefix #=> String
    #   resp.report_generators[0].create_time #=> String
    #   resp.report_generators[0].tags #=> Array
    #   resp.report_generators[0].tags[0].key #=> String
    #   resp.report_generators[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseManagerReportGenerators AWS API Documentation
    #
    # @overload list_license_manager_report_generators(params = {})
    # @param [Hash] params ({})
    def list_license_manager_report_generators(params = {}, options = {})
      req = build_request(:list_license_manager_report_generators, params)
      req.send_request(options)
    end

    # Describes the license configurations for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of a resource that has an associated
    #   license configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @return [Types::ListLicenseSpecificationsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicenseSpecificationsForResourceResponse#license_specifications #license_specifications} => Array&lt;Types::LicenseSpecification&gt;
    #   * {Types::ListLicenseSpecificationsForResourceResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_specifications_for_resource({
    #     resource_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.license_specifications #=> Array
    #   resp.license_specifications[0].license_configuration_arn #=> String
    #   resp.license_specifications[0].ami_association_scope #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseSpecificationsForResource AWS API Documentation
    #
    # @overload list_license_specifications_for_resource(params = {})
    # @param [Hash] params ({})
    def list_license_specifications_for_resource(params = {}, options = {})
      req = build_request(:list_license_specifications_for_resource, params)
      req.send_request(options)
    end

    # Lists all versions of the specified license.
    #
    # @option params [required, String] :license_arn
    #   Amazon Resource Name (ARN) of the license.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @return [Types::ListLicenseVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicenseVersionsResponse#licenses #licenses} => Array&lt;Types::License&gt;
    #   * {Types::ListLicenseVersionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_versions({
    #     license_arn: "Arn", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.licenses #=> Array
    #   resp.licenses[0].license_arn #=> String
    #   resp.licenses[0].license_name #=> String
    #   resp.licenses[0].product_name #=> String
    #   resp.licenses[0].product_sku #=> String
    #   resp.licenses[0].issuer.name #=> String
    #   resp.licenses[0].issuer.sign_key #=> String
    #   resp.licenses[0].issuer.key_fingerprint #=> String
    #   resp.licenses[0].home_region #=> String
    #   resp.licenses[0].status #=> String, one of "AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"
    #   resp.licenses[0].validity.begin #=> String
    #   resp.licenses[0].validity.end #=> String
    #   resp.licenses[0].beneficiary #=> String
    #   resp.licenses[0].entitlements #=> Array
    #   resp.licenses[0].entitlements[0].name #=> String
    #   resp.licenses[0].entitlements[0].value #=> String
    #   resp.licenses[0].entitlements[0].max_count #=> Integer
    #   resp.licenses[0].entitlements[0].overage #=> Boolean
    #   resp.licenses[0].entitlements[0].unit #=> String, one of "Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"
    #   resp.licenses[0].entitlements[0].allow_check_in #=> Boolean
    #   resp.licenses[0].consumption_configuration.renew_type #=> String, one of "None", "Weekly", "Monthly"
    #   resp.licenses[0].consumption_configuration.provisional_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.licenses[0].consumption_configuration.borrow_configuration.allow_early_check_in #=> Boolean
    #   resp.licenses[0].consumption_configuration.borrow_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.licenses[0].license_metadata #=> Array
    #   resp.licenses[0].license_metadata[0].name #=> String
    #   resp.licenses[0].license_metadata[0].value #=> String
    #   resp.licenses[0].create_time #=> String
    #   resp.licenses[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseVersions AWS API Documentation
    #
    # @overload list_license_versions(params = {})
    # @param [Hash] params ({})
    def list_license_versions(params = {}, options = {})
      req = build_request(:list_license_versions, params)
      req.send_request(options)
    end

    # Lists the licenses for your account.
    #
    # @option params [Array<String>] :license_arns
    #   Amazon Resource Names (ARNs) of the licenses.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `Beneficiary`
    #
    #   * `ProductSKU`
    #
    #   * `Fingerprint`
    #
    #   * `Status`
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @return [Types::ListLicensesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicensesResponse#licenses #licenses} => Array&lt;Types::License&gt;
    #   * {Types::ListLicensesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_licenses({
    #     license_arns: ["Arn"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.licenses #=> Array
    #   resp.licenses[0].license_arn #=> String
    #   resp.licenses[0].license_name #=> String
    #   resp.licenses[0].product_name #=> String
    #   resp.licenses[0].product_sku #=> String
    #   resp.licenses[0].issuer.name #=> String
    #   resp.licenses[0].issuer.sign_key #=> String
    #   resp.licenses[0].issuer.key_fingerprint #=> String
    #   resp.licenses[0].home_region #=> String
    #   resp.licenses[0].status #=> String, one of "AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"
    #   resp.licenses[0].validity.begin #=> String
    #   resp.licenses[0].validity.end #=> String
    #   resp.licenses[0].beneficiary #=> String
    #   resp.licenses[0].entitlements #=> Array
    #   resp.licenses[0].entitlements[0].name #=> String
    #   resp.licenses[0].entitlements[0].value #=> String
    #   resp.licenses[0].entitlements[0].max_count #=> Integer
    #   resp.licenses[0].entitlements[0].overage #=> Boolean
    #   resp.licenses[0].entitlements[0].unit #=> String, one of "Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"
    #   resp.licenses[0].entitlements[0].allow_check_in #=> Boolean
    #   resp.licenses[0].consumption_configuration.renew_type #=> String, one of "None", "Weekly", "Monthly"
    #   resp.licenses[0].consumption_configuration.provisional_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.licenses[0].consumption_configuration.borrow_configuration.allow_early_check_in #=> Boolean
    #   resp.licenses[0].consumption_configuration.borrow_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.licenses[0].license_metadata #=> Array
    #   resp.licenses[0].license_metadata[0].name #=> String
    #   resp.licenses[0].license_metadata[0].value #=> String
    #   resp.licenses[0].create_time #=> String
    #   resp.licenses[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenses AWS API Documentation
    #
    # @overload list_licenses(params = {})
    # @param [Hash] params ({})
    def list_licenses(params = {}, options = {})
      req = build_request(:list_licenses, params)
      req.send_request(options)
    end

    # Lists grants that are received. Received grants are grants created
    # while specifying the recipient as this Amazon Web Services account,
    # your organization, or an organizational unit (OU) to which this member
    # account belongs.
    #
    # @option params [Array<String>] :grant_arns
    #   Amazon Resource Names (ARNs) of the grants.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `ProductSKU`
    #
    #   * `LicenseIssuerName`
    #
    #   * `LicenseArn`
    #
    #   * `GrantStatus`
    #
    #   * `GranterAccountId`
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @return [Types::ListReceivedGrantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReceivedGrantsResponse#grants #grants} => Array&lt;Types::Grant&gt;
    #   * {Types::ListReceivedGrantsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_received_grants({
    #     grant_arns: ["Arn"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.grants #=> Array
    #   resp.grants[0].grant_arn #=> String
    #   resp.grants[0].grant_name #=> String
    #   resp.grants[0].parent_arn #=> String
    #   resp.grants[0].license_arn #=> String
    #   resp.grants[0].grantee_principal_arn #=> String
    #   resp.grants[0].home_region #=> String
    #   resp.grants[0].grant_status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.grants[0].status_reason #=> String
    #   resp.grants[0].version #=> String
    #   resp.grants[0].granted_operations #=> Array
    #   resp.grants[0].granted_operations[0] #=> String, one of "CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"
    #   resp.grants[0].options.activation_override_behavior #=> String, one of "DISTRIBUTED_GRANTS_ONLY", "ALL_GRANTS_PERMITTED_BY_ISSUER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedGrants AWS API Documentation
    #
    # @overload list_received_grants(params = {})
    # @param [Hash] params ({})
    def list_received_grants(params = {}, options = {})
      req = build_request(:list_received_grants, params)
      req.send_request(options)
    end

    # Lists the grants received for all accounts in the organization.
    #
    # @option params [required, String] :license_arn
    #   The Amazon Resource Name (ARN) of the received license.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `ParentArn`
    #
    #   * `GranteePrincipalArn`
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @return [Types::ListReceivedGrantsForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReceivedGrantsForOrganizationResponse#grants #grants} => Array&lt;Types::Grant&gt;
    #   * {Types::ListReceivedGrantsForOrganizationResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_received_grants_for_organization({
    #     license_arn: "Arn", # required
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.grants #=> Array
    #   resp.grants[0].grant_arn #=> String
    #   resp.grants[0].grant_name #=> String
    #   resp.grants[0].parent_arn #=> String
    #   resp.grants[0].license_arn #=> String
    #   resp.grants[0].grantee_principal_arn #=> String
    #   resp.grants[0].home_region #=> String
    #   resp.grants[0].grant_status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.grants[0].status_reason #=> String
    #   resp.grants[0].version #=> String
    #   resp.grants[0].granted_operations #=> Array
    #   resp.grants[0].granted_operations[0] #=> String, one of "CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"
    #   resp.grants[0].options.activation_override_behavior #=> String, one of "DISTRIBUTED_GRANTS_ONLY", "ALL_GRANTS_PERMITTED_BY_ISSUER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedGrantsForOrganization AWS API Documentation
    #
    # @overload list_received_grants_for_organization(params = {})
    # @param [Hash] params ({})
    def list_received_grants_for_organization(params = {}, options = {})
      req = build_request(:list_received_grants_for_organization, params)
      req.send_request(options)
    end

    # Lists received licenses.
    #
    # @option params [Array<String>] :license_arns
    #   Amazon Resource Names (ARNs) of the licenses.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `ProductSKU`
    #
    #   * `Status`
    #
    #   * `Fingerprint`
    #
    #   * `IssuerName`
    #
    #   * `Beneficiary`
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @return [Types::ListReceivedLicensesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReceivedLicensesResponse#licenses #licenses} => Array&lt;Types::GrantedLicense&gt;
    #   * {Types::ListReceivedLicensesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_received_licenses({
    #     license_arns: ["Arn"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.licenses #=> Array
    #   resp.licenses[0].license_arn #=> String
    #   resp.licenses[0].license_name #=> String
    #   resp.licenses[0].product_name #=> String
    #   resp.licenses[0].product_sku #=> String
    #   resp.licenses[0].issuer.name #=> String
    #   resp.licenses[0].issuer.sign_key #=> String
    #   resp.licenses[0].issuer.key_fingerprint #=> String
    #   resp.licenses[0].home_region #=> String
    #   resp.licenses[0].status #=> String, one of "AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"
    #   resp.licenses[0].validity.begin #=> String
    #   resp.licenses[0].validity.end #=> String
    #   resp.licenses[0].beneficiary #=> String
    #   resp.licenses[0].entitlements #=> Array
    #   resp.licenses[0].entitlements[0].name #=> String
    #   resp.licenses[0].entitlements[0].value #=> String
    #   resp.licenses[0].entitlements[0].max_count #=> Integer
    #   resp.licenses[0].entitlements[0].overage #=> Boolean
    #   resp.licenses[0].entitlements[0].unit #=> String, one of "Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"
    #   resp.licenses[0].entitlements[0].allow_check_in #=> Boolean
    #   resp.licenses[0].consumption_configuration.renew_type #=> String, one of "None", "Weekly", "Monthly"
    #   resp.licenses[0].consumption_configuration.provisional_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.licenses[0].consumption_configuration.borrow_configuration.allow_early_check_in #=> Boolean
    #   resp.licenses[0].consumption_configuration.borrow_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.licenses[0].license_metadata #=> Array
    #   resp.licenses[0].license_metadata[0].name #=> String
    #   resp.licenses[0].license_metadata[0].value #=> String
    #   resp.licenses[0].create_time #=> String
    #   resp.licenses[0].version #=> String
    #   resp.licenses[0].received_metadata.received_status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.licenses[0].received_metadata.received_status_reason #=> String
    #   resp.licenses[0].received_metadata.allowed_operations #=> Array
    #   resp.licenses[0].received_metadata.allowed_operations[0] #=> String, one of "CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedLicenses AWS API Documentation
    #
    # @overload list_received_licenses(params = {})
    # @param [Hash] params ({})
    def list_received_licenses(params = {}, options = {})
      req = build_request(:list_received_licenses, params)
      req.send_request(options)
    end

    # Lists the licenses received for all accounts in the organization.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `Beneficiary`
    #
    #   * `ProductSKU`
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @return [Types::ListReceivedLicensesForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReceivedLicensesForOrganizationResponse#licenses #licenses} => Array&lt;Types::GrantedLicense&gt;
    #   * {Types::ListReceivedLicensesForOrganizationResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_received_licenses_for_organization({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.licenses #=> Array
    #   resp.licenses[0].license_arn #=> String
    #   resp.licenses[0].license_name #=> String
    #   resp.licenses[0].product_name #=> String
    #   resp.licenses[0].product_sku #=> String
    #   resp.licenses[0].issuer.name #=> String
    #   resp.licenses[0].issuer.sign_key #=> String
    #   resp.licenses[0].issuer.key_fingerprint #=> String
    #   resp.licenses[0].home_region #=> String
    #   resp.licenses[0].status #=> String, one of "AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"
    #   resp.licenses[0].validity.begin #=> String
    #   resp.licenses[0].validity.end #=> String
    #   resp.licenses[0].beneficiary #=> String
    #   resp.licenses[0].entitlements #=> Array
    #   resp.licenses[0].entitlements[0].name #=> String
    #   resp.licenses[0].entitlements[0].value #=> String
    #   resp.licenses[0].entitlements[0].max_count #=> Integer
    #   resp.licenses[0].entitlements[0].overage #=> Boolean
    #   resp.licenses[0].entitlements[0].unit #=> String, one of "Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"
    #   resp.licenses[0].entitlements[0].allow_check_in #=> Boolean
    #   resp.licenses[0].consumption_configuration.renew_type #=> String, one of "None", "Weekly", "Monthly"
    #   resp.licenses[0].consumption_configuration.provisional_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.licenses[0].consumption_configuration.borrow_configuration.allow_early_check_in #=> Boolean
    #   resp.licenses[0].consumption_configuration.borrow_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.licenses[0].license_metadata #=> Array
    #   resp.licenses[0].license_metadata[0].name #=> String
    #   resp.licenses[0].license_metadata[0].value #=> String
    #   resp.licenses[0].create_time #=> String
    #   resp.licenses[0].version #=> String
    #   resp.licenses[0].received_metadata.received_status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.licenses[0].received_metadata.received_status_reason #=> String
    #   resp.licenses[0].received_metadata.allowed_operations #=> Array
    #   resp.licenses[0].received_metadata.allowed_operations[0] #=> String, one of "CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedLicensesForOrganization AWS API Documentation
    #
    # @overload list_received_licenses_for_organization(params = {})
    # @param [Hash] params ({})
    def list_received_licenses_for_organization(params = {}, options = {})
      req = build_request(:list_received_licenses_for_organization, params)
      req.send_request(options)
    end

    # Lists resources managed using Systems Manager inventory.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Array<Types::InventoryFilter>] :filters
    #   Filters to scope the results. The following filters and logical
    #   operators are supported:
    #
    #   * `account_id` - The ID of the Amazon Web Services account that owns
    #     the resource. Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `application_name` - The name of the application. Logical operators
    #     are `EQUALS` \| `BEGINS_WITH`.
    #
    #   * `license_included` - The type of license included. Logical operators
    #     are `EQUALS` \| `NOT_EQUALS`. Possible values are
    #     `sql-server-enterprise` \| `sql-server-standard` \| `sql-server-web`
    #     \| `windows-server-datacenter`.
    #
    #   * `platform` - The platform of the resource. Logical operators are
    #     `EQUALS` \| `BEGINS_WITH`.
    #
    #   * `resource_id` - The ID of the resource. Logical operators are
    #     `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `tag:<key>` - The key/value combination of a tag assigned to the
    #     resource. Logical operators are `EQUALS` (single account) or
    #     `EQUALS` \| `NOT_EQUALS` (cross account).
    #
    # @return [Types::ListResourceInventoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceInventoryResponse#resource_inventory_list #resource_inventory_list} => Array&lt;Types::ResourceInventory&gt;
    #   * {Types::ListResourceInventoryResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_inventory({
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         condition: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, BEGINS_WITH, CONTAINS
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_inventory_list #=> Array
    #   resp.resource_inventory_list[0].resource_id #=> String
    #   resp.resource_inventory_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.resource_inventory_list[0].resource_arn #=> String
    #   resp.resource_inventory_list[0].platform #=> String
    #   resp.resource_inventory_list[0].platform_version #=> String
    #   resp.resource_inventory_list[0].resource_owning_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListResourceInventory AWS API Documentation
    #
    # @overload list_resource_inventory(params = {})
    # @param [Hash] params ({})
    def list_resource_inventory(params = {}, options = {})
      req = build_request(:list_resource_inventory, params)
      req.send_request(options)
    end

    # Lists the tags for the specified license configuration.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists your tokens.
    #
    # @option params [Array<String>] :token_ids
    #   Token IDs.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filter is supported:
    #
    #   * `LicenseArns`
    #
    #   ^
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @return [Types::ListTokensResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTokensResponse#tokens #tokens} => Array&lt;Types::TokenData&gt;
    #   * {Types::ListTokensResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tokens({
    #     token_ids: ["String"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tokens #=> Array
    #   resp.tokens[0].token_id #=> String
    #   resp.tokens[0].token_type #=> String
    #   resp.tokens[0].license_arn #=> String
    #   resp.tokens[0].expiration_time #=> String
    #   resp.tokens[0].token_properties #=> Array
    #   resp.tokens[0].token_properties[0] #=> String
    #   resp.tokens[0].role_arns #=> Array
    #   resp.tokens[0].role_arns[0] #=> String
    #   resp.tokens[0].status #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListTokens AWS API Documentation
    #
    # @overload list_tokens(params = {})
    # @param [Hash] params ({})
    def list_tokens(params = {}, options = {})
      req = build_request(:list_tokens, params)
      req.send_request(options)
    end

    # Lists all license usage records for a license configuration,
    # displaying license consumption details by resource at a selected point
    # in time. Use this action to audit the current license consumption for
    # any license inventory and configuration.
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters and logical
    #   operators are supported:
    #
    #   * `resourceArn` - The ARN of the license configuration resource.
    #     Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `resourceType` - The resource type (`EC2_INSTANCE` \| `EC2_HOST` \|
    #     `EC2_AMI` \| `SYSTEMS_MANAGER_MANAGED_INSTANCE`). Logical operators
    #     are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `resourceAccount` - The ID of the account that owns the resource.
    #     Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    # @return [Types::ListUsageForLicenseConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsageForLicenseConfigurationResponse#license_configuration_usage_list #license_configuration_usage_list} => Array&lt;Types::LicenseConfigurationUsage&gt;
    #   * {Types::ListUsageForLicenseConfigurationResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_usage_for_license_configuration({
    #     license_configuration_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configuration_usage_list #=> Array
    #   resp.license_configuration_usage_list[0].resource_arn #=> String
    #   resp.license_configuration_usage_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_configuration_usage_list[0].resource_status #=> String
    #   resp.license_configuration_usage_list[0].resource_owner_id #=> String
    #   resp.license_configuration_usage_list[0].association_time #=> Time
    #   resp.license_configuration_usage_list[0].consumed_licenses #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListUsageForLicenseConfiguration AWS API Documentation
    #
    # @overload list_usage_for_license_configuration(params = {})
    # @param [Hash] params ({})
    def list_usage_for_license_configuration(params = {}, options = {})
      req = build_request(:list_usage_for_license_configuration, params)
      req.send_request(options)
    end

    # Rejects the specified grant.
    #
    # @option params [required, String] :grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #
    # @return [Types::RejectGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectGrantResponse#grant_arn #grant_arn} => String
    #   * {Types::RejectGrantResponse#status #status} => String
    #   * {Types::RejectGrantResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_grant({
    #     grant_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.grant_arn #=> String
    #   resp.status #=> String, one of "PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/RejectGrant AWS API Documentation
    #
    # @overload reject_grant(params = {})
    # @param [Hash] params ({})
    def reject_grant(params = {}, options = {})
      req = build_request(:reject_grant, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified license configuration.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified license configuration.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys identifying the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies the attributes of an existing license configuration.
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @option params [String] :license_configuration_status
    #   New status of the license configuration.
    #
    # @option params [Array<String>] :license_rules
    #   New license rule. The only rule that you can add after you create a
    #   license configuration is licenseAffinityToHost.
    #
    # @option params [Integer] :license_count
    #   New number of licenses managed by the license configuration.
    #
    # @option params [Boolean] :license_count_hard_limit
    #   New hard limit of the number of available licenses.
    #
    # @option params [String] :name
    #   New name of the license configuration.
    #
    # @option params [String] :description
    #   New description of the license configuration.
    #
    # @option params [Array<Types::ProductInformation>] :product_information_list
    #   New product information.
    #
    # @option params [Boolean] :disassociate_when_not_found
    #   When true, disassociates a resource when software is uninstalled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_license_configuration({
    #     license_configuration_arn: "String", # required
    #     license_configuration_status: "AVAILABLE", # accepts AVAILABLE, DISABLED
    #     license_rules: ["String"],
    #     license_count: 1,
    #     license_count_hard_limit: false,
    #     name: "String",
    #     description: "String",
    #     product_information_list: [
    #       {
    #         resource_type: "String", # required
    #         product_information_filter_list: [ # required
    #           {
    #             product_information_filter_name: "String", # required
    #             product_information_filter_value: ["String"],
    #             product_information_filter_comparator: "String", # required
    #           },
    #         ],
    #       },
    #     ],
    #     disassociate_when_not_found: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseConfiguration AWS API Documentation
    #
    # @overload update_license_configuration(params = {})
    # @param [Hash] params ({})
    def update_license_configuration(params = {}, options = {})
      req = build_request(:update_license_configuration, params)
      req.send_request(options)
    end

    # Updates a report generator.
    #
    # After you make changes to a report generator, it starts generating new
    # reports within 60 minutes of being updated.
    #
    # @option params [required, String] :license_manager_report_generator_arn
    #   Amazon Resource Name (ARN) of the report generator to update.
    #
    # @option params [required, String] :report_generator_name
    #   Name of the report generator.
    #
    # @option params [required, Array<String>] :type
    #   Type of reports to generate. The following report types are supported:
    #
    #   * License configuration report - Reports the number and details of
    #     consumed licenses for a license configuration.
    #
    #   * Resource report - Reports the tracked licenses and resource
    #     consumption for a license configuration.
    #
    # @option params [required, Types::ReportContext] :report_context
    #   The report context.
    #
    # @option params [required, Types::ReportFrequency] :report_frequency
    #   Frequency by which reports are generated.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @option params [String] :description
    #   Description of the report generator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_license_manager_report_generator({
    #     license_manager_report_generator_arn: "String", # required
    #     report_generator_name: "ReportGeneratorName", # required
    #     type: ["LicenseConfigurationSummaryReport"], # required, accepts LicenseConfigurationSummaryReport, LicenseConfigurationUsageReport
    #     report_context: { # required
    #       license_configuration_arns: ["Arn"], # required
    #     },
    #     report_frequency: { # required
    #       value: 1,
    #       period: "DAY", # accepts DAY, WEEK, MONTH
    #     },
    #     client_token: "ClientRequestToken", # required
    #     description: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseManagerReportGenerator AWS API Documentation
    #
    # @overload update_license_manager_report_generator(params = {})
    # @param [Hash] params ({})
    def update_license_manager_report_generator(params = {}, options = {})
      req = build_request(:update_license_manager_report_generator, params)
      req.send_request(options)
    end

    # Adds or removes the specified license configurations for the specified
    # Amazon Web Services resource.
    #
    # You can update the license specifications of AMIs, instances, and
    # hosts. You cannot update the license specifications for launch
    # templates and CloudFormation templates, as they send license
    # configurations to the operation that creates the resource.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the Amazon Web Services resource.
    #
    # @option params [Array<Types::LicenseSpecification>] :add_license_specifications
    #   ARNs of the license configurations to add.
    #
    # @option params [Array<Types::LicenseSpecification>] :remove_license_specifications
    #   ARNs of the license configurations to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_license_specifications_for_resource({
    #     resource_arn: "String", # required
    #     add_license_specifications: [
    #       {
    #         license_configuration_arn: "String", # required
    #         ami_association_scope: "String",
    #       },
    #     ],
    #     remove_license_specifications: [
    #       {
    #         license_configuration_arn: "String", # required
    #         ami_association_scope: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseSpecificationsForResource AWS API Documentation
    #
    # @overload update_license_specifications_for_resource(params = {})
    # @param [Hash] params ({})
    def update_license_specifications_for_resource(params = {}, options = {})
      req = build_request(:update_license_specifications_for_resource, params)
      req.send_request(options)
    end

    # Updates License Manager settings for the current Region.
    #
    # @option params [String] :s3_bucket_arn
    #   Amazon Resource Name (ARN) of the Amazon S3 bucket where the License
    #   Manager information is stored.
    #
    # @option params [String] :sns_topic_arn
    #   Amazon Resource Name (ARN) of the Amazon SNS topic used for License
    #   Manager alerts.
    #
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   Enables integration with Organizations for cross-account discovery.
    #
    # @option params [Boolean] :enable_cross_accounts_discovery
    #   Activates cross-account discovery.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_settings({
    #     s3_bucket_arn: "String",
    #     sns_topic_arn: "String",
    #     organization_configuration: {
    #       enable_integration: false, # required
    #     },
    #     enable_cross_accounts_discovery: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateServiceSettings AWS API Documentation
    #
    # @overload update_service_settings(params = {})
    # @param [Hash] params ({})
    def update_service_settings(params = {}, options = {})
      req = build_request(:update_service_settings, params)
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
      context[:gem_name] = 'aws-sdk-licensemanager'
      context[:gem_version] = '1.49.0'
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
