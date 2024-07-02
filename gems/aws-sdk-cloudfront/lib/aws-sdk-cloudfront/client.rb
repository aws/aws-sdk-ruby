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
require 'aws-sdk-core/plugins/invocation_id.rb'
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
require 'aws-sdk-core/plugins/protocols/rest_xml.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudfront)

module Aws::CloudFront
  # An API client for CloudFront.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudFront::Client.new(
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

    @identifier = :cloudfront

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
    add_plugin(Aws::Plugins::InvocationId)
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
    add_plugin(Aws::Plugins::Protocols::RestXml)
    add_plugin(Aws::CloudFront::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
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
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
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
    #   @option options [Aws::CloudFront::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CloudFront::EndpointParameters`
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates an alias (also known as a CNAME or an alternate domain
    # name) with a CloudFront distribution.
    #
    # With this operation you can move an alias that's already in use on a
    # CloudFront distribution to a different distribution in one step. This
    # prevents the downtime that could occur if you first remove the alias
    # from one distribution and then separately add the alias to another
    # distribution.
    #
    # To use this operation to associate an alias with a distribution, you
    # provide the alias and the ID of the target distribution for the alias.
    # For more information, including how to set up the target distribution,
    # prerequisites that you must complete, and other restrictions, see
    # [Moving an alternate domain name to a different distribution][1] in
    # the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move
    #
    # @option params [required, String] :target_distribution_id
    #   The ID of the distribution that you're associating the alias with.
    #
    # @option params [required, String] :alias
    #   The alias (also known as a CNAME) to add to the target distribution.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_alias({
    #     target_distribution_id: "string", # required
    #     alias: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/AssociateAlias AWS API Documentation
    #
    # @overload associate_alias(params = {})
    # @param [Hash] params ({})
    def associate_alias(params = {}, options = {})
      req = build_request(:associate_alias, params)
      req.send_request(options)
    end

    # Creates a staging distribution using the configuration of the provided
    # primary distribution. A staging distribution is a copy of an existing
    # distribution (called the primary distribution) that you can use in a
    # continuous deployment workflow.
    #
    # After you create a staging distribution, you can use
    # `UpdateDistribution` to modify the staging distribution's
    # configuration. Then you can use `CreateContinuousDeploymentPolicy` to
    # incrementally move traffic to the staging distribution.
    #
    # This API operation requires the following IAM permissions:
    #
    # * [GetDistribution][1]
    #
    # * [CreateDistribution][2]
    #
    # * [CopyDistribution][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html
    # [2]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html
    # [3]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CopyDistribution.html
    #
    # @option params [required, String] :primary_distribution_id
    #   The identifier of the primary distribution whose configuration you are
    #   copying. To get a distribution ID, use `ListDistributions`.
    #
    # @option params [Boolean] :staging
    #   The type of distribution that your primary distribution will be copied
    #   to. The only valid value is `True`, indicating that you are copying to
    #   a staging distribution.
    #
    # @option params [String] :if_match
    #   The version identifier of the primary distribution whose configuration
    #   you are copying. This is the `ETag` value returned in the response to
    #   `GetDistribution` and `GetDistributionConfig`.
    #
    # @option params [required, String] :caller_reference
    #   A value that uniquely identifies a request to create a resource. This
    #   helps to prevent CloudFront from creating a duplicate resource if you
    #   accidentally resubmit an identical request.
    #
    # @option params [Boolean] :enabled
    #   A Boolean flag to specify the state of the staging distribution when
    #   it's created. When you set this value to `True`, the staging
    #   distribution is enabled. When you set this value to `False`, the
    #   staging distribution is disabled.
    #
    #   If you omit this field, the default value is `True`.
    #
    # @return [Types::CopyDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDistributionResult#distribution #distribution} => Types::Distribution
    #   * {Types::CopyDistributionResult#location #location} => String
    #   * {Types::CopyDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_distribution({
    #     primary_distribution_id: "string", # required
    #     staging: false,
    #     if_match: "string",
    #     caller_reference: "string", # required
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_access_control_id #=> String
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.distribution_config.continuous_deployment_policy_id #=> String
    #   resp.distribution.distribution_config.staging #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of "APPROVED", "SUSPENDED", "PENDING"
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CopyDistribution AWS API Documentation
    #
    # @overload copy_distribution(params = {})
    # @param [Hash] params ({})
    def copy_distribution(params = {}, options = {})
      req = build_request(:copy_distribution, params)
      req.send_request(options)
    end

    # Creates a cache policy.
    #
    # After you create a cache policy, you can attach it to one or more
    # cache behaviors. When it's attached to a cache behavior, the cache
    # policy determines the following:
    #
    # * The values that CloudFront includes in the *cache key*. These values
    #   can include HTTP headers, cookies, and URL query strings. CloudFront
    #   uses the cache key to find an object in its cache that it can return
    #   to the viewer.
    #
    # * The default, minimum, and maximum time to live (TTL) values that you
    #   want objects to stay in the CloudFront cache.
    #
    # The headers, cookies, and query strings that are included in the cache
    # key are also included in requests that CloudFront sends to the origin.
    # CloudFront sends a request when it can't find an object in its cache
    # that matches the request's cache key. If you want to send values to
    # the origin but *not* include them in the cache key, use
    # `OriginRequestPolicy`.
    #
    # For more information about cache policies, see [Controlling the cache
    # key][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html
    #
    # @option params [required, Types::CachePolicyConfig] :cache_policy_config
    #   A cache policy configuration.
    #
    # @return [Types::CreateCachePolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCachePolicyResult#cache_policy #cache_policy} => Types::CachePolicy
    #   * {Types::CreateCachePolicyResult#location #location} => String
    #   * {Types::CreateCachePolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_policy({
    #     cache_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       default_ttl: 1,
    #       max_ttl: 1,
    #       min_ttl: 1, # required
    #       parameters_in_cache_key_and_forwarded_to_origin: {
    #         enable_accept_encoding_gzip: false, # required
    #         enable_accept_encoding_brotli: false,
    #         headers_config: { # required
    #           header_behavior: "none", # required, accepts none, whitelist
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         cookies_config: { # required
    #           cookie_behavior: "none", # required, accepts none, whitelist, allExcept, all
    #           cookies: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         query_strings_config: { # required
    #           query_string_behavior: "none", # required, accepts none, whitelist, allExcept, all
    #           query_strings: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_policy.id #=> String
    #   resp.cache_policy.last_modified_time #=> Time
    #   resp.cache_policy.cache_policy_config.comment #=> String
    #   resp.cache_policy.cache_policy_config.name #=> String
    #   resp.cache_policy.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of "none", "whitelist"
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateCachePolicy AWS API Documentation
    #
    # @overload create_cache_policy(params = {})
    # @param [Hash] params ({})
    def create_cache_policy(params = {}, options = {})
      req = build_request(:create_cache_policy, params)
      req.send_request(options)
    end

    # Creates a new origin access identity. If you're using Amazon S3 for
    # your origin, you can use an origin access identity to require users to
    # access your content using a CloudFront URL instead of the Amazon S3
    # URL. For more information about how to use origin access identities,
    # see [Serving Private Content through CloudFront][1] in the *Amazon
    # CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #
    # @option params [required, Types::CloudFrontOriginAccessIdentityConfig] :cloud_front_origin_access_identity_config
    #   The current configuration information for the identity.
    #
    # @return [Types::CreateCloudFrontOriginAccessIdentityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudFrontOriginAccessIdentityResult#cloud_front_origin_access_identity #cloud_front_origin_access_identity} => Types::CloudFrontOriginAccessIdentity
    #   * {Types::CreateCloudFrontOriginAccessIdentityResult#location #location} => String
    #   * {Types::CreateCloudFrontOriginAccessIdentityResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_front_origin_access_identity({
    #     cloud_front_origin_access_identity_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity.id #=> String
    #   resp.cloud_front_origin_access_identity.s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateCloudFrontOriginAccessIdentity AWS API Documentation
    #
    # @overload create_cloud_front_origin_access_identity(params = {})
    # @param [Hash] params ({})
    def create_cloud_front_origin_access_identity(params = {}, options = {})
      req = build_request(:create_cloud_front_origin_access_identity, params)
      req.send_request(options)
    end

    # Creates a continuous deployment policy that distributes traffic for a
    # custom domain name to two different CloudFront distributions.
    #
    # To use a continuous deployment policy, first use `CopyDistribution` to
    # create a staging distribution, then use `UpdateDistribution` to modify
    # the staging distribution's configuration.
    #
    # After you create and update a staging distribution, you can use a
    # continuous deployment policy to incrementally move traffic to the
    # staging distribution. This workflow enables you to test changes to a
    # distribution's configuration before moving all of your domain's
    # production traffic to the new configuration.
    #
    # @option params [required, Types::ContinuousDeploymentPolicyConfig] :continuous_deployment_policy_config
    #   Contains the configuration for a continuous deployment policy.
    #
    # @return [Types::CreateContinuousDeploymentPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContinuousDeploymentPolicyResult#continuous_deployment_policy #continuous_deployment_policy} => Types::ContinuousDeploymentPolicy
    #   * {Types::CreateContinuousDeploymentPolicyResult#location #location} => String
    #   * {Types::CreateContinuousDeploymentPolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_continuous_deployment_policy({
    #     continuous_deployment_policy_config: { # required
    #       staging_distribution_dns_names: { # required
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       enabled: false, # required
    #       traffic_config: {
    #         single_weight_config: {
    #           weight: 1.0, # required
    #           session_stickiness_config: {
    #             idle_ttl: 1, # required
    #             maximum_ttl: 1, # required
    #           },
    #         },
    #         single_header_config: {
    #           header: "string", # required
    #           value: "string", # required
    #         },
    #         type: "SingleWeight", # required, accepts SingleWeight, SingleHeader
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.continuous_deployment_policy.id #=> String
    #   resp.continuous_deployment_policy.last_modified_time #=> Time
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.quantity #=> Integer
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.items #=> Array
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.items[0] #=> String
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.enabled #=> Boolean
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.weight #=> Float
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.idle_ttl #=> Integer
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.maximum_ttl #=> Integer
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_header_config.header #=> String
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_header_config.value #=> String
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.type #=> String, one of "SingleWeight", "SingleHeader"
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateContinuousDeploymentPolicy AWS API Documentation
    #
    # @overload create_continuous_deployment_policy(params = {})
    # @param [Hash] params ({})
    def create_continuous_deployment_policy(params = {}, options = {})
      req = build_request(:create_continuous_deployment_policy, params)
      req.send_request(options)
    end

    # Creates a CloudFront distribution.
    #
    # @option params [required, Types::DistributionConfig] :distribution_config
    #   The distribution's configuration information.
    #
    # @return [Types::CreateDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDistributionResult#distribution #distribution} => Types::Distribution
    #   * {Types::CreateDistributionResult#location #location} => String
    #   * {Types::CreateDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_distribution({
    #     distribution_config: { # required
    #       caller_reference: "string", # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       default_root_object: "string",
    #       origins: { # required
    #         quantity: 1, # required
    #         items: [ # required
    #           {
    #             id: "string", # required
    #             domain_name: "string", # required
    #             origin_path: "string",
    #             custom_headers: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   header_name: "string", # required
    #                   header_value: "sensitiveStringType", # required
    #                 },
    #               ],
    #             },
    #             s3_origin_config: {
    #               origin_access_identity: "string", # required
    #             },
    #             custom_origin_config: {
    #               http_port: 1, # required
    #               https_port: 1, # required
    #               origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
    #               origin_ssl_protocols: {
    #                 quantity: 1, # required
    #                 items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #               },
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1,
    #             },
    #             connection_attempts: 1,
    #             connection_timeout: 1,
    #             origin_shield: {
    #               enabled: false, # required
    #               origin_shield_region: "OriginShieldRegion",
    #             },
    #             origin_access_control_id: "string",
    #           },
    #         ],
    #       },
    #       origin_groups: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: "string", # required
    #             failover_criteria: { # required
    #               status_codes: { # required
    #                 quantity: 1, # required
    #                 items: [1], # required
    #               },
    #             },
    #             members: { # required
    #               quantity: 1, # required
    #               items: [ # required
    #                 {
    #                   origin_id: "string", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       },
    #       default_cache_behavior: { # required
    #         target_origin_id: "string", # required
    #         trusted_signers: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         trusted_key_groups: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #         allowed_methods: {
    #           quantity: 1, # required
    #           items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           cached_methods: {
    #             quantity: 1, # required
    #             items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           },
    #         },
    #         smooth_streaming: false,
    #         compress: false,
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: "LambdaFunctionARN", # required
    #               event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #               include_body: false,
    #             },
    #           ],
    #         },
    #         function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               function_arn: "FunctionARN", # required
    #               event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #             },
    #           ],
    #         },
    #         field_level_encryption_id: "string",
    #         realtime_log_config_arn: "string",
    #         cache_policy_id: "string",
    #         origin_request_policy_id: "string",
    #         response_headers_policy_id: "string",
    #         forwarded_values: {
    #           query_string: false, # required
    #           cookies: { # required
    #             forward: "none", # required, accepts none, whitelist, all
    #             whitelisted_names: {
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #           query_string_cache_keys: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         min_ttl: 1,
    #         default_ttl: 1,
    #         max_ttl: 1,
    #       },
    #       cache_behaviors: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             path_pattern: "string", # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #             viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #               },
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                   include_body: false,
    #                 },
    #               ],
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                 },
    #               ],
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none", # required, accepts none, whitelist, all
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1,
    #           },
    #         ],
    #       },
    #       custom_error_responses: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             error_code: 1, # required
    #             response_page_path: "string",
    #             response_code: "string",
    #             error_caching_min_ttl: 1,
    #           },
    #         ],
    #       },
    #       comment: "CommentType", # required
    #       logging: {
    #         enabled: false, # required
    #         include_cookies: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #       viewer_certificate: {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: "string",
    #         acm_certificate_arn: "string",
    #         ssl_support_method: "sni-only", # accepts sni-only, vip, static-ip
    #         minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #         certificate: "string",
    #         certificate_source: "cloudfront", # accepts cloudfront, iam, acm
    #       },
    #       restrictions: {
    #         geo_restriction: { # required
    #           restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #       web_acl_id: "string",
    #       http_version: "http1.1", # accepts http1.1, http2, http3, http2and3
    #       is_ipv6_enabled: false,
    #       continuous_deployment_policy_id: "string",
    #       staging: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_access_control_id #=> String
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.distribution_config.continuous_deployment_policy_id #=> String
    #   resp.distribution.distribution_config.staging #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of "APPROVED", "SUSPENDED", "PENDING"
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateDistribution AWS API Documentation
    #
    # @overload create_distribution(params = {})
    # @param [Hash] params ({})
    def create_distribution(params = {}, options = {})
      req = build_request(:create_distribution, params)
      req.send_request(options)
    end

    # Create a new distribution with tags. This API operation requires the
    # following IAM permissions:
    #
    # * [CreateDistribution][1]
    #
    # * [TagResource][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html
    # [2]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_TagResource.html
    #
    # @option params [required, Types::DistributionConfigWithTags] :distribution_config_with_tags
    #   The distribution's configuration information.
    #
    # @return [Types::CreateDistributionWithTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDistributionWithTagsResult#distribution #distribution} => Types::Distribution
    #   * {Types::CreateDistributionWithTagsResult#location #location} => String
    #   * {Types::CreateDistributionWithTagsResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_distribution_with_tags({
    #     distribution_config_with_tags: { # required
    #       distribution_config: { # required
    #         caller_reference: "string", # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         default_root_object: "string",
    #         origins: { # required
    #           quantity: 1, # required
    #           items: [ # required
    #             {
    #               id: "string", # required
    #               domain_name: "string", # required
    #               origin_path: "string",
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: "string", # required
    #                     header_value: "sensitiveStringType", # required
    #                   },
    #                 ],
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: "string", # required
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
    #               },
    #               connection_attempts: 1,
    #               connection_timeout: 1,
    #               origin_shield: {
    #                 enabled: false, # required
    #                 origin_shield_region: "OriginShieldRegion",
    #               },
    #               origin_access_control_id: "string",
    #             },
    #           ],
    #         },
    #         origin_groups: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: "string", # required
    #               failover_criteria: { # required
    #                 status_codes: { # required
    #                   quantity: 1, # required
    #                   items: [1], # required
    #                 },
    #               },
    #               members: { # required
    #                 quantity: 1, # required
    #                 items: [ # required
    #                   {
    #                     origin_id: "string", # required
    #                   },
    #                 ],
    #               },
    #             },
    #           ],
    #         },
    #         default_cache_behavior: { # required
    #           target_origin_id: "string", # required
    #           trusted_signers: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #           trusted_key_groups: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #           viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #             cached_methods: {
    #               quantity: 1, # required
    #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #             },
    #           },
    #           smooth_streaming: false,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                 include_body: false,
    #               },
    #             ],
    #           },
    #           function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 function_arn: "FunctionARN", # required
    #                 event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #               },
    #             ],
    #           },
    #           field_level_encryption_id: "string",
    #           realtime_log_config_arn: "string",
    #           cache_policy_id: "string",
    #           origin_request_policy_id: "string",
    #           response_headers_policy_id: "string",
    #           forwarded_values: {
    #             query_string: false, # required
    #             cookies: { # required
    #               forward: "none", # required, accepts none, whitelist, all
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #             },
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #           min_ttl: 1,
    #           default_ttl: 1,
    #           max_ttl: 1,
    #         },
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: "string", # required
    #               target_origin_id: "string", # required
    #               trusted_signers: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #               trusted_key_groups: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #               viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #               allowed_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #                 cached_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #                 },
    #               },
    #               smooth_streaming: false,
    #               compress: false,
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                     include_body: false,
    #                   },
    #                 ],
    #               },
    #               function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     function_arn: "FunctionARN", # required
    #                     event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                   },
    #                 ],
    #               },
    #               field_level_encryption_id: "string",
    #               realtime_log_config_arn: "string",
    #               cache_policy_id: "string",
    #               origin_request_policy_id: "string",
    #               response_headers_policy_id: "string",
    #               forwarded_values: {
    #                 query_string: false, # required
    #                 cookies: { # required
    #                   forward: "none", # required, accepts none, whitelist, all
    #                   whitelisted_names: {
    #                     quantity: 1, # required
    #                     items: ["string"],
    #                   },
    #                 },
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #                 query_string_cache_keys: {
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #               },
    #               min_ttl: 1,
    #               default_ttl: 1,
    #               max_ttl: 1,
    #             },
    #           ],
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: "string",
    #               response_code: "string",
    #               error_caching_min_ttl: 1,
    #             },
    #           ],
    #         },
    #         comment: "CommentType", # required
    #         logging: {
    #           enabled: false, # required
    #           include_cookies: false, # required
    #           bucket: "string", # required
    #           prefix: "string", # required
    #         },
    #         price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: "string",
    #           acm_certificate_arn: "string",
    #           ssl_support_method: "sni-only", # accepts sni-only, vip, static-ip
    #           minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #           certificate: "string",
    #           certificate_source: "cloudfront", # accepts cloudfront, iam, acm
    #         },
    #         restrictions: {
    #           geo_restriction: { # required
    #             restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         web_acl_id: "string",
    #         http_version: "http1.1", # accepts http1.1, http2, http3, http2and3
    #         is_ipv6_enabled: false,
    #         continuous_deployment_policy_id: "string",
    #         staging: false,
    #       },
    #       tags: { # required
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_access_control_id #=> String
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.distribution_config.continuous_deployment_policy_id #=> String
    #   resp.distribution.distribution_config.staging #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of "APPROVED", "SUSPENDED", "PENDING"
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateDistributionWithTags AWS API Documentation
    #
    # @overload create_distribution_with_tags(params = {})
    # @param [Hash] params ({})
    def create_distribution_with_tags(params = {}, options = {})
      req = build_request(:create_distribution_with_tags, params)
      req.send_request(options)
    end

    # Create a new field-level encryption configuration.
    #
    # @option params [required, Types::FieldLevelEncryptionConfig] :field_level_encryption_config
    #   The request to create a new field-level encryption configuration.
    #
    # @return [Types::CreateFieldLevelEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFieldLevelEncryptionConfigResult#field_level_encryption #field_level_encryption} => Types::FieldLevelEncryption
    #   * {Types::CreateFieldLevelEncryptionConfigResult#location #location} => String
    #   * {Types::CreateFieldLevelEncryptionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_field_level_encryption_config({
    #     field_level_encryption_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       query_arg_profile_config: {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: "string", # required
    #               profile_id: "string", # required
    #             },
    #           ],
    #         },
    #       },
    #       content_type_profile_config: {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: "URLEncoded", # required, accepts URLEncoded
    #               profile_id: "string",
    #               content_type: "string", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption.id #=> String
    #   resp.field_level_encryption.last_modified_time #=> Time
    #   resp.field_level_encryption.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateFieldLevelEncryptionConfig AWS API Documentation
    #
    # @overload create_field_level_encryption_config(params = {})
    # @param [Hash] params ({})
    def create_field_level_encryption_config(params = {}, options = {})
      req = build_request(:create_field_level_encryption_config, params)
      req.send_request(options)
    end

    # Create a field-level encryption profile.
    #
    # @option params [required, Types::FieldLevelEncryptionProfileConfig] :field_level_encryption_profile_config
    #   The request to create a field-level encryption profile.
    #
    # @return [Types::CreateFieldLevelEncryptionProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFieldLevelEncryptionProfileResult#field_level_encryption_profile #field_level_encryption_profile} => Types::FieldLevelEncryptionProfile
    #   * {Types::CreateFieldLevelEncryptionProfileResult#location #location} => String
    #   * {Types::CreateFieldLevelEncryptionProfileResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_field_level_encryption_profile({
    #     field_level_encryption_profile_config: { # required
    #       name: "string", # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       encryption_entities: { # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: "string", # required
    #             provider_id: "string", # required
    #             field_patterns: { # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile.id #=> String
    #   resp.field_level_encryption_profile.last_modified_time #=> Time
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.name #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateFieldLevelEncryptionProfile AWS API Documentation
    #
    # @overload create_field_level_encryption_profile(params = {})
    # @param [Hash] params ({})
    def create_field_level_encryption_profile(params = {}, options = {})
      req = build_request(:create_field_level_encryption_profile, params)
      req.send_request(options)
    end

    # Creates a CloudFront function.
    #
    # To create a function, you provide the function code and some
    # configuration information about the function. The response contains an
    # Amazon Resource Name (ARN) that uniquely identifies the function.
    #
    # When you create a function, it's in the `DEVELOPMENT` stage. In this
    # stage, you can test the function with `TestFunction`, and update it
    # with `UpdateFunction`.
    #
    # When you're ready to use your function with a CloudFront
    # distribution, use `PublishFunction` to copy the function from the
    # `DEVELOPMENT` stage to `LIVE`. When it's live, you can attach the
    # function to a distribution's cache behavior, using the function's
    # ARN.
    #
    # @option params [required, String] :name
    #   A name to identify the function.
    #
    # @option params [required, Types::FunctionConfig] :function_config
    #   Configuration information about the function, including an optional
    #   comment and the function's runtime.
    #
    # @option params [required, String, StringIO, File] :function_code
    #   The function code. For more information about writing a CloudFront
    #   function, see [Writing function code for CloudFront Functions][1] in
    #   the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html
    #
    # @return [Types::CreateFunctionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFunctionResult#function_summary #function_summary} => Types::FunctionSummary
    #   * {Types::CreateFunctionResult#location #location} => String
    #   * {Types::CreateFunctionResult#etag #etag} => String
    #
    #
    # @example Example: To create a function
    #
    #   # Use the following command to create a function.
    #
    #   resp = client.create_function({
    #     function_code: "function-code.js", 
    #     function_config: {
    #       comment: "my-function-comment", 
    #       key_value_store_associations: {
    #         items: [
    #           {
    #             key_value_store_arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #           }, 
    #         ], 
    #         quantity: 1, 
    #       }, 
    #       runtime: "cloudfront-js-2.0", 
    #     }, 
    #     name: "my-function-name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     etag: "ETVPDKIKX0DER", 
    #     function_summary: {
    #       function_config: {
    #         comment: "my-function-comment", 
    #         key_value_store_associations: {
    #           items: [
    #             {
    #               key_value_store_arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #             }, 
    #           ], 
    #           quantity: 1, 
    #         }, 
    #         runtime: "cloudfront-js-2.0", 
    #       }, 
    #       function_metadata: {
    #         created_time: Time.parse("2023-11-07T19:53:50.334Z"), 
    #         function_arn: "arn:aws:cloudfront::123456789012:function/my-function-name", 
    #         last_modified_time: Time.parse("2023-11-07T19:53:50.334Z"), 
    #         stage: "DEVELOPMENT", 
    #       }, 
    #       name: "my-function-name", 
    #       status: "UNPUBLISHED", 
    #     }, 
    #     location: "https://cloudfront.amazonaws.com/2020-05-31/function/arn:aws:cloudfront::123456789012:function/my-function-name", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function({
    #     name: "FunctionName", # required
    #     function_config: { # required
    #       comment: "string", # required
    #       runtime: "cloudfront-js-1.0", # required, accepts cloudfront-js-1.0, cloudfront-js-2.0
    #       key_value_store_associations: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_value_store_arn: "KeyValueStoreARN", # required
    #           },
    #         ],
    #       },
    #     },
    #     function_code: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_summary.name #=> String
    #   resp.function_summary.status #=> String
    #   resp.function_summary.function_config.comment #=> String
    #   resp.function_summary.function_config.runtime #=> String, one of "cloudfront-js-1.0", "cloudfront-js-2.0"
    #   resp.function_summary.function_config.key_value_store_associations.quantity #=> Integer
    #   resp.function_summary.function_config.key_value_store_associations.items #=> Array
    #   resp.function_summary.function_config.key_value_store_associations.items[0].key_value_store_arn #=> String
    #   resp.function_summary.function_metadata.function_arn #=> String
    #   resp.function_summary.function_metadata.stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.function_summary.function_metadata.created_time #=> Time
    #   resp.function_summary.function_metadata.last_modified_time #=> Time
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateFunction AWS API Documentation
    #
    # @overload create_function(params = {})
    # @param [Hash] params ({})
    def create_function(params = {}, options = {})
      req = build_request(:create_function, params)
      req.send_request(options)
    end

    # Create a new invalidation. For more information, see [Invalidating
    # files][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html
    #
    # @option params [required, String] :distribution_id
    #   The distribution's id.
    #
    # @option params [required, Types::InvalidationBatch] :invalidation_batch
    #   The batch information for the invalidation.
    #
    # @return [Types::CreateInvalidationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInvalidationResult#location #location} => String
    #   * {Types::CreateInvalidationResult#invalidation #invalidation} => Types::Invalidation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_invalidation({
    #     distribution_id: "string", # required
    #     invalidation_batch: { # required
    #       paths: { # required
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       caller_reference: "string", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.location #=> String
    #   resp.invalidation.id #=> String
    #   resp.invalidation.status #=> String
    #   resp.invalidation.create_time #=> Time
    #   resp.invalidation.invalidation_batch.paths.quantity #=> Integer
    #   resp.invalidation.invalidation_batch.paths.items #=> Array
    #   resp.invalidation.invalidation_batch.paths.items[0] #=> String
    #   resp.invalidation.invalidation_batch.caller_reference #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateInvalidation AWS API Documentation
    #
    # @overload create_invalidation(params = {})
    # @param [Hash] params ({})
    def create_invalidation(params = {}, options = {})
      req = build_request(:create_invalidation, params)
      req.send_request(options)
    end

    # Creates a key group that you can use with [CloudFront signed URLs and
    # signed cookies][1].
    #
    # To create a key group, you must specify at least one public key for
    # the key group. After you create a key group, you can reference it from
    # one or more cache behaviors. When you reference a key group in a cache
    # behavior, CloudFront requires signed URLs or signed cookies for all
    # requests that match the cache behavior. The URLs or cookies must be
    # signed with a private key whose corresponding public key is in the key
    # group. The signed URL or cookie contains information about which
    # public key CloudFront should use to verify the signature. For more
    # information, see [Serving private content][1] in the *Amazon
    # CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #
    # @option params [required, Types::KeyGroupConfig] :key_group_config
    #   A key group configuration.
    #
    # @return [Types::CreateKeyGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyGroupResult#key_group #key_group} => Types::KeyGroup
    #   * {Types::CreateKeyGroupResult#location #location} => String
    #   * {Types::CreateKeyGroupResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key_group({
    #     key_group_config: { # required
    #       name: "string", # required
    #       items: ["string"], # required
    #       comment: "string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.key_group.id #=> String
    #   resp.key_group.last_modified_time #=> Time
    #   resp.key_group.key_group_config.name #=> String
    #   resp.key_group.key_group_config.items #=> Array
    #   resp.key_group.key_group_config.items[0] #=> String
    #   resp.key_group.key_group_config.comment #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateKeyGroup AWS API Documentation
    #
    # @overload create_key_group(params = {})
    # @param [Hash] params ({})
    def create_key_group(params = {}, options = {})
      req = build_request(:create_key_group, params)
      req.send_request(options)
    end

    # Specifies the key value store resource to add to your account. In your
    # account, the key value store names must be unique. You can also import
    # key value store data in JSON format from an S3 bucket by providing a
    # valid `ImportSource` that you own.
    #
    # @option params [required, String] :name
    #   The name of the key value store. The minimum length is 1 character and
    #   the maximum length is 64 characters.
    #
    # @option params [String] :comment
    #   The comment of the key value store.
    #
    # @option params [Types::ImportSource] :import_source
    #   The S3 bucket that provides the source for the import. The source must
    #   be in a valid JSON format.
    #
    # @return [Types::CreateKeyValueStoreResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyValueStoreResult#key_value_store #key_value_store} => Types::KeyValueStore
    #   * {Types::CreateKeyValueStoreResult#etag #etag} => String
    #   * {Types::CreateKeyValueStoreResult#location #location} => String
    #
    #
    # @example Example: To create a KeyValueStore
    #
    #   # Use the following command to create a KeyValueStore.
    #
    #   resp = client.create_key_value_store({
    #     comment: "my-key-valuestore-comment", 
    #     import_source: {
    #       source_arn: "arn:aws:s3:::my-bucket/validJSON.json", 
    #       source_type: "S3", 
    #     }, 
    #     name: "my-keyvaluestore-name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     etag: "ETVPDKIKX0DER", 
    #     key_value_store: {
    #       arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #       comment: "my-key-valuestore-comment", 
    #       id: "54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #       last_modified_time: Time.parse("2023-11-07T18:15:52.042Z"), 
    #       name: "my-keyvaluestore-name", 
    #       status: "PROVISIONING", 
    #     }, 
    #     location: "https://cloudfront.amazonaws.com/2020-05-31/key-value-store/arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key_value_store({
    #     name: "KeyValueStoreName", # required
    #     comment: "KeyValueStoreComment",
    #     import_source: {
    #       source_type: "S3", # required, accepts S3
    #       source_arn: "string", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.key_value_store.name #=> String
    #   resp.key_value_store.id #=> String
    #   resp.key_value_store.comment #=> String
    #   resp.key_value_store.arn #=> String
    #   resp.key_value_store.status #=> String
    #   resp.key_value_store.last_modified_time #=> Time
    #   resp.etag #=> String
    #   resp.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateKeyValueStore AWS API Documentation
    #
    # @overload create_key_value_store(params = {})
    # @param [Hash] params ({})
    def create_key_value_store(params = {}, options = {})
      req = build_request(:create_key_value_store, params)
      req.send_request(options)
    end

    # Enables additional CloudWatch metrics for the specified CloudFront
    # distribution. The additional metrics incur an additional cost.
    #
    # For more information, see [Viewing additional CloudFront distribution
    # metrics][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional
    #
    # @option params [required, String] :distribution_id
    #   The ID of the distribution that you are enabling metrics for.
    #
    # @option params [required, Types::MonitoringSubscription] :monitoring_subscription
    #   A monitoring subscription. This structure contains information about
    #   whether additional CloudWatch metrics are enabled for a given
    #   CloudFront distribution.
    #
    # @return [Types::CreateMonitoringSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMonitoringSubscriptionResult#monitoring_subscription #monitoring_subscription} => Types::MonitoringSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_monitoring_subscription({
    #     distribution_id: "string", # required
    #     monitoring_subscription: { # required
    #       realtime_metrics_subscription_config: {
    #         realtime_metrics_subscription_status: "Enabled", # required, accepts Enabled, Disabled
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.monitoring_subscription.realtime_metrics_subscription_config.realtime_metrics_subscription_status #=> String, one of "Enabled", "Disabled"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateMonitoringSubscription AWS API Documentation
    #
    # @overload create_monitoring_subscription(params = {})
    # @param [Hash] params ({})
    def create_monitoring_subscription(params = {}, options = {})
      req = build_request(:create_monitoring_subscription, params)
      req.send_request(options)
    end

    # Creates a new origin access control in CloudFront. After you create an
    # origin access control, you can add it to an origin in a CloudFront
    # distribution so that CloudFront sends authenticated (signed) requests
    # to the origin.
    #
    # This makes it possible to block public access to the origin, allowing
    # viewers (users) to access the origin's content only through
    # CloudFront.
    #
    # For more information about using a CloudFront origin access control,
    # see [Restricting access to an Amazon Web Services origin][1] in the
    # *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html
    #
    # @option params [required, Types::OriginAccessControlConfig] :origin_access_control_config
    #   Contains the origin access control.
    #
    # @return [Types::CreateOriginAccessControlResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOriginAccessControlResult#origin_access_control #origin_access_control} => Types::OriginAccessControl
    #   * {Types::CreateOriginAccessControlResult#location #location} => String
    #   * {Types::CreateOriginAccessControlResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_origin_access_control({
    #     origin_access_control_config: { # required
    #       name: "string", # required
    #       description: "string",
    #       signing_protocol: "sigv4", # required, accepts sigv4
    #       signing_behavior: "never", # required, accepts never, always, no-override
    #       origin_access_control_origin_type: "s3", # required, accepts s3, mediastore, mediapackagev2, lambda
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_access_control.id #=> String
    #   resp.origin_access_control.origin_access_control_config.name #=> String
    #   resp.origin_access_control.origin_access_control_config.description #=> String
    #   resp.origin_access_control.origin_access_control_config.signing_protocol #=> String, one of "sigv4"
    #   resp.origin_access_control.origin_access_control_config.signing_behavior #=> String, one of "never", "always", "no-override"
    #   resp.origin_access_control.origin_access_control_config.origin_access_control_origin_type #=> String, one of "s3", "mediastore", "mediapackagev2", "lambda"
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateOriginAccessControl AWS API Documentation
    #
    # @overload create_origin_access_control(params = {})
    # @param [Hash] params ({})
    def create_origin_access_control(params = {}, options = {})
      req = build_request(:create_origin_access_control, params)
      req.send_request(options)
    end

    # Creates an origin request policy.
    #
    # After you create an origin request policy, you can attach it to one or
    # more cache behaviors. When it's attached to a cache behavior, the
    # origin request policy determines the values that CloudFront includes
    # in requests that it sends to the origin. Each request that CloudFront
    # sends to the origin includes the following:
    #
    # * The request body and the URL path (without the domain name) from the
    #   viewer request.
    #
    # * The headers that CloudFront automatically includes in every origin
    #   request, including `Host`, `User-Agent`, and `X-Amz-Cf-Id`.
    #
    # * All HTTP headers, cookies, and URL query strings that are specified
    #   in the cache policy or the origin request policy. These can include
    #   items from the viewer request and, in the case of headers,
    #   additional ones that are added by CloudFront.
    #
    # CloudFront sends a request when it can't find a valid object in its
    # cache that matches the request. If you want to send values to the
    # origin and also include them in the cache key, use `CachePolicy`.
    #
    # For more information about origin request policies, see [Controlling
    # origin requests][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html
    #
    # @option params [required, Types::OriginRequestPolicyConfig] :origin_request_policy_config
    #   An origin request policy configuration.
    #
    # @return [Types::CreateOriginRequestPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOriginRequestPolicyResult#origin_request_policy #origin_request_policy} => Types::OriginRequestPolicy
    #   * {Types::CreateOriginRequestPolicyResult#location #location} => String
    #   * {Types::CreateOriginRequestPolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_origin_request_policy({
    #     origin_request_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       headers_config: { # required
    #         header_behavior: "none", # required, accepts none, whitelist, allViewer, allViewerAndWhitelistCloudFront, allExcept
    #         headers: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #       cookies_config: { # required
    #         cookie_behavior: "none", # required, accepts none, whitelist, all, allExcept
    #         cookies: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #       query_strings_config: { # required
    #         query_string_behavior: "none", # required, accepts none, whitelist, all, allExcept
    #         query_strings: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_request_policy.id #=> String
    #   resp.origin_request_policy.last_modified_time #=> Time
    #   resp.origin_request_policy.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy.origin_request_policy_config.name #=> String
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.header_behavior #=> String, one of "none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items #=> Array
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items #=> Array
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items #=> Array
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateOriginRequestPolicy AWS API Documentation
    #
    # @overload create_origin_request_policy(params = {})
    # @param [Hash] params ({})
    def create_origin_request_policy(params = {}, options = {})
      req = build_request(:create_origin_request_policy, params)
      req.send_request(options)
    end

    # Uploads a public key to CloudFront that you can use with [signed URLs
    # and signed cookies][1], or with [field-level encryption][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html
    #
    # @option params [required, Types::PublicKeyConfig] :public_key_config
    #   A CloudFront public key configuration.
    #
    # @return [Types::CreatePublicKeyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePublicKeyResult#public_key #public_key} => Types::PublicKey
    #   * {Types::CreatePublicKeyResult#location #location} => String
    #   * {Types::CreatePublicKeyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_public_key({
    #     public_key_config: { # required
    #       caller_reference: "string", # required
    #       name: "string", # required
    #       encoded_key: "string", # required
    #       comment: "string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key.id #=> String
    #   resp.public_key.created_time #=> Time
    #   resp.public_key.public_key_config.caller_reference #=> String
    #   resp.public_key.public_key_config.name #=> String
    #   resp.public_key.public_key_config.encoded_key #=> String
    #   resp.public_key.public_key_config.comment #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreatePublicKey AWS API Documentation
    #
    # @overload create_public_key(params = {})
    # @param [Hash] params ({})
    def create_public_key(params = {}, options = {})
      req = build_request(:create_public_key, params)
      req.send_request(options)
    end

    # Creates a real-time log configuration.
    #
    # After you create a real-time log configuration, you can attach it to
    # one or more cache behaviors to send real-time log data to the
    # specified Amazon Kinesis data stream.
    #
    # For more information about real-time log configurations, see
    # [Real-time logs][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html
    #
    # @option params [required, Array<Types::EndPoint>] :end_points
    #   Contains information about the Amazon Kinesis data stream where you
    #   are sending real-time log data.
    #
    # @option params [required, Array<String>] :fields
    #   A list of fields to include in each real-time log record.
    #
    #   For more information about fields, see [Real-time log configuration
    #   fields][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields
    #
    # @option params [required, String] :name
    #   A unique name to identify this real-time log configuration.
    #
    # @option params [required, Integer] :sampling_rate
    #   The sampling rate for this real-time log configuration. You can
    #   specify a whole number between 1 and 100 (inclusive) to determine the
    #   percentage of viewer requests that are represented in the real-time
    #   log data.
    #
    # @return [Types::CreateRealtimeLogConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRealtimeLogConfigResult#realtime_log_config #realtime_log_config} => Types::RealtimeLogConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_realtime_log_config({
    #     end_points: [ # required
    #       {
    #         stream_type: "string", # required
    #         kinesis_stream_config: {
    #           role_arn: "string", # required
    #           stream_arn: "string", # required
    #         },
    #       },
    #     ],
    #     fields: ["string"], # required
    #     name: "string", # required
    #     sampling_rate: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.realtime_log_config.arn #=> String
    #   resp.realtime_log_config.name #=> String
    #   resp.realtime_log_config.sampling_rate #=> Integer
    #   resp.realtime_log_config.end_points #=> Array
    #   resp.realtime_log_config.end_points[0].stream_type #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.role_arn #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.stream_arn #=> String
    #   resp.realtime_log_config.fields #=> Array
    #   resp.realtime_log_config.fields[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateRealtimeLogConfig AWS API Documentation
    #
    # @overload create_realtime_log_config(params = {})
    # @param [Hash] params ({})
    def create_realtime_log_config(params = {}, options = {})
      req = build_request(:create_realtime_log_config, params)
      req.send_request(options)
    end

    # Creates a response headers policy.
    #
    # A response headers policy contains information about a set of HTTP
    # headers. To create a response headers policy, you provide some
    # metadata about the policy and a set of configurations that specify the
    # headers.
    #
    # After you create a response headers policy, you can use its ID to
    # attach it to one or more cache behaviors in a CloudFront distribution.
    # When it's attached to a cache behavior, the response headers policy
    # affects the HTTP headers that CloudFront includes in HTTP responses to
    # requests that match the cache behavior. CloudFront adds or removes
    # response headers according to the configuration of the response
    # headers policy.
    #
    # For more information, see [Adding or removing HTTP headers in
    # CloudFront responses][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html
    #
    # @option params [required, Types::ResponseHeadersPolicyConfig] :response_headers_policy_config
    #   Contains metadata about the response headers policy, and a set of
    #   configurations that specify the HTTP headers.
    #
    # @return [Types::CreateResponseHeadersPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResponseHeadersPolicyResult#response_headers_policy #response_headers_policy} => Types::ResponseHeadersPolicy
    #   * {Types::CreateResponseHeadersPolicyResult#location #location} => String
    #   * {Types::CreateResponseHeadersPolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_response_headers_policy({
    #     response_headers_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       cors_config: {
    #         access_control_allow_origins: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_headers: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_methods: { # required
    #           quantity: 1, # required
    #           items: ["GET"], # required, accepts GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
    #         },
    #         access_control_allow_credentials: false, # required
    #         access_control_expose_headers: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         access_control_max_age_sec: 1,
    #         origin_override: false, # required
    #       },
    #       security_headers_config: {
    #         xss_protection: {
    #           override: false, # required
    #           protection: false, # required
    #           mode_block: false,
    #           report_uri: "string",
    #         },
    #         frame_options: {
    #           override: false, # required
    #           frame_option: "DENY", # required, accepts DENY, SAMEORIGIN
    #         },
    #         referrer_policy: {
    #           override: false, # required
    #           referrer_policy: "no-referrer", # required, accepts no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    #         },
    #         content_security_policy: {
    #           override: false, # required
    #           content_security_policy: "string", # required
    #         },
    #         content_type_options: {
    #           override: false, # required
    #         },
    #         strict_transport_security: {
    #           override: false, # required
    #           include_subdomains: false,
    #           preload: false,
    #           access_control_max_age_sec: 1, # required
    #         },
    #       },
    #       server_timing_headers_config: {
    #         enabled: false, # required
    #         sampling_rate: 1.0,
    #       },
    #       custom_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #             value: "string", # required
    #             override: false, # required
    #           },
    #         ],
    #       },
    #       remove_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.response_headers_policy.id #=> String
    #   resp.response_headers_policy.last_modified_time #=> Time
    #   resp.response_headers_policy.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy.response_headers_policy_config.name #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of "GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of "DENY", "SAMEORIGIN"
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of "no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.server_timing_headers_config.enabled #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.server_timing_headers_config.sampling_rate #=> Float
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.remove_headers_config.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.remove_headers_config.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.remove_headers_config.items[0].header #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateResponseHeadersPolicy AWS API Documentation
    #
    # @overload create_response_headers_policy(params = {})
    # @param [Hash] params ({})
    def create_response_headers_policy(params = {}, options = {})
      req = build_request(:create_response_headers_policy, params)
      req.send_request(options)
    end

    # This API is deprecated. Amazon CloudFront is deprecating real-time
    # messaging protocol (RTMP) distributions on December 31, 2020. For more
    # information, [read the announcement][1] on the Amazon CloudFront
    # discussion forum.
    #
    #
    #
    # [1]: http://forums.aws.amazon.com/ann.jspa?annID=7356
    #
    # @option params [required, Types::StreamingDistributionConfig] :streaming_distribution_config
    #   The streaming distribution's configuration information.
    #
    # @return [Types::CreateStreamingDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingDistributionResult#streaming_distribution #streaming_distribution} => Types::StreamingDistribution
    #   * {Types::CreateStreamingDistributionResult#location #location} => String
    #   * {Types::CreateStreamingDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_distribution({
    #     streaming_distribution_config: { # required
    #       caller_reference: "string", # required
    #       s3_origin: { # required
    #         domain_name: "string", # required
    #         origin_access_identity: "string", # required
    #       },
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       comment: "string", # required
    #       logging: {
    #         enabled: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateStreamingDistribution AWS API Documentation
    #
    # @overload create_streaming_distribution(params = {})
    # @param [Hash] params ({})
    def create_streaming_distribution(params = {}, options = {})
      req = build_request(:create_streaming_distribution, params)
      req.send_request(options)
    end

    # This API is deprecated. Amazon CloudFront is deprecating real-time
    # messaging protocol (RTMP) distributions on December 31, 2020. For more
    # information, [read the announcement][1] on the Amazon CloudFront
    # discussion forum.
    #
    #
    #
    # [1]: http://forums.aws.amazon.com/ann.jspa?annID=7356
    #
    # @option params [required, Types::StreamingDistributionConfigWithTags] :streaming_distribution_config_with_tags
    #   The streaming distribution's configuration information.
    #
    # @return [Types::CreateStreamingDistributionWithTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingDistributionWithTagsResult#streaming_distribution #streaming_distribution} => Types::StreamingDistribution
    #   * {Types::CreateStreamingDistributionWithTagsResult#location #location} => String
    #   * {Types::CreateStreamingDistributionWithTagsResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_distribution_with_tags({
    #     streaming_distribution_config_with_tags: { # required
    #       streaming_distribution_config: { # required
    #         caller_reference: "string", # required
    #         s3_origin: { # required
    #           domain_name: "string", # required
    #           origin_access_identity: "string", # required
    #         },
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         comment: "string", # required
    #         logging: {
    #           enabled: false, # required
    #           bucket: "string", # required
    #           prefix: "string", # required
    #         },
    #         trusted_signers: { # required
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #         enabled: false, # required
    #       },
    #       tags: { # required
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateStreamingDistributionWithTags AWS API Documentation
    #
    # @overload create_streaming_distribution_with_tags(params = {})
    # @param [Hash] params ({})
    def create_streaming_distribution_with_tags(params = {}, options = {})
      req = build_request(:create_streaming_distribution_with_tags, params)
      req.send_request(options)
    end

    # Deletes a cache policy.
    #
    # You cannot delete a cache policy if it's attached to a cache
    # behavior. First update your distributions to remove the cache policy
    # from all cache behaviors, then delete the cache policy.
    #
    # To delete a cache policy, you must provide the policy's identifier
    # and version. To get these values, you can use `ListCachePolicies` or
    # `GetCachePolicy`.
    #
    # @option params [required, String] :id
    #   The unique identifier for the cache policy that you are deleting. To
    #   get the identifier, you can use `ListCachePolicies`.
    #
    # @option params [String] :if_match
    #   The version of the cache policy that you are deleting. The version is
    #   the cache policy's `ETag` value, which you can get using
    #   `ListCachePolicies`, `GetCachePolicy`, or `GetCachePolicyConfig`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_policy({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteCachePolicy AWS API Documentation
    #
    # @overload delete_cache_policy(params = {})
    # @param [Hash] params ({})
    def delete_cache_policy(params = {}, options = {})
      req = build_request(:delete_cache_policy, params)
      req.send_request(options)
    end

    # Delete an origin access identity.
    #
    # @option params [required, String] :id
    #   The origin access identity's ID.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header you received from a previous `GET` or
    #   `PUT` request. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_front_origin_access_identity({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteCloudFrontOriginAccessIdentity AWS API Documentation
    #
    # @overload delete_cloud_front_origin_access_identity(params = {})
    # @param [Hash] params ({})
    def delete_cloud_front_origin_access_identity(params = {}, options = {})
      req = build_request(:delete_cloud_front_origin_access_identity, params)
      req.send_request(options)
    end

    # Deletes a continuous deployment policy.
    #
    # You cannot delete a continuous deployment policy that's attached to a
    # primary distribution. First update your distribution to remove the
    # continuous deployment policy, then you can delete the policy.
    #
    # @option params [required, String] :id
    #   The identifier of the continuous deployment policy that you are
    #   deleting.
    #
    # @option params [String] :if_match
    #   The current version (`ETag` value) of the continuous deployment policy
    #   that you are deleting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_continuous_deployment_policy({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteContinuousDeploymentPolicy AWS API Documentation
    #
    # @overload delete_continuous_deployment_policy(params = {})
    # @param [Hash] params ({})
    def delete_continuous_deployment_policy(params = {}, options = {})
      req = build_request(:delete_continuous_deployment_policy, params)
      req.send_request(options)
    end

    # Delete a distribution.
    #
    # @option params [required, String] :id
    #   The distribution ID.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when you disabled the
    #   distribution. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_distribution({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteDistribution AWS API Documentation
    #
    # @overload delete_distribution(params = {})
    # @param [Hash] params ({})
    def delete_distribution(params = {}, options = {})
      req = build_request(:delete_distribution, params)
      req.send_request(options)
    end

    # Remove a field-level encryption configuration.
    #
    # @option params [required, String] :id
    #   The ID of the configuration you want to delete from CloudFront.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   configuration identity to delete. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_field_level_encryption_config({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteFieldLevelEncryptionConfig AWS API Documentation
    #
    # @overload delete_field_level_encryption_config(params = {})
    # @param [Hash] params ({})
    def delete_field_level_encryption_config(params = {}, options = {})
      req = build_request(:delete_field_level_encryption_config, params)
      req.send_request(options)
    end

    # Remove a field-level encryption profile.
    #
    # @option params [required, String] :id
    #   Request the ID of the profile you want to delete from CloudFront.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   profile to delete. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_field_level_encryption_profile({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteFieldLevelEncryptionProfile AWS API Documentation
    #
    # @overload delete_field_level_encryption_profile(params = {})
    # @param [Hash] params ({})
    def delete_field_level_encryption_profile(params = {}, options = {})
      req = build_request(:delete_field_level_encryption_profile, params)
      req.send_request(options)
    end

    # Deletes a CloudFront function.
    #
    # You cannot delete a function if it's associated with a cache
    # behavior. First, update your distributions to remove the function
    # association from all cache behaviors, then delete the function.
    #
    # To delete a function, you must provide the function's name and
    # version (`ETag` value). To get these values, you can use
    # `ListFunctions` and `DescribeFunction`.
    #
    # @option params [required, String] :name
    #   The name of the function that you are deleting.
    #
    # @option params [required, String] :if_match
    #   The current version (`ETag` value) of the function that you are
    #   deleting, which you can get using `DescribeFunction`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function({
    #     name: "string", # required
    #     if_match: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteFunction AWS API Documentation
    #
    # @overload delete_function(params = {})
    # @param [Hash] params ({})
    def delete_function(params = {}, options = {})
      req = build_request(:delete_function, params)
      req.send_request(options)
    end

    # Deletes a key group.
    #
    # You cannot delete a key group that is referenced in a cache behavior.
    # First update your distributions to remove the key group from all cache
    # behaviors, then delete the key group.
    #
    # To delete a key group, you must provide the key group's identifier
    # and version. To get these values, use `ListKeyGroups` followed by
    # `GetKeyGroup` or `GetKeyGroupConfig`.
    #
    # @option params [required, String] :id
    #   The identifier of the key group that you are deleting. To get the
    #   identifier, use `ListKeyGroups`.
    #
    # @option params [String] :if_match
    #   The version of the key group that you are deleting. The version is the
    #   key group's `ETag` value. To get the `ETag`, use `GetKeyGroup` or
    #   `GetKeyGroupConfig`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key_group({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteKeyGroup AWS API Documentation
    #
    # @overload delete_key_group(params = {})
    # @param [Hash] params ({})
    def delete_key_group(params = {}, options = {})
      req = build_request(:delete_key_group, params)
      req.send_request(options)
    end

    # Specifies the key value store to delete.
    #
    # @option params [required, String] :name
    #   The name of the key value store.
    #
    # @option params [required, String] :if_match
    #   The key value store to delete, if a match occurs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a KeyValueStore
    #
    #   # Use the following command to delete a KeyValueStore.
    #
    #   resp = client.delete_key_value_store({
    #     if_match: "ETVPDKIKX0DER", 
    #     name: "my-keyvaluestore-name", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key_value_store({
    #     name: "KeyValueStoreName", # required
    #     if_match: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteKeyValueStore AWS API Documentation
    #
    # @overload delete_key_value_store(params = {})
    # @param [Hash] params ({})
    def delete_key_value_store(params = {}, options = {})
      req = build_request(:delete_key_value_store, params)
      req.send_request(options)
    end

    # Disables additional CloudWatch metrics for the specified CloudFront
    # distribution.
    #
    # @option params [required, String] :distribution_id
    #   The ID of the distribution that you are disabling metrics for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_monitoring_subscription({
    #     distribution_id: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteMonitoringSubscription AWS API Documentation
    #
    # @overload delete_monitoring_subscription(params = {})
    # @param [Hash] params ({})
    def delete_monitoring_subscription(params = {}, options = {})
      req = build_request(:delete_monitoring_subscription, params)
      req.send_request(options)
    end

    # Deletes a CloudFront origin access control.
    #
    # You cannot delete an origin access control if it's in use. First,
    # update all distributions to remove the origin access control from all
    # origins, then delete the origin access control.
    #
    # @option params [required, String] :id
    #   The unique identifier of the origin access control that you are
    #   deleting.
    #
    # @option params [String] :if_match
    #   The current version (`ETag` value) of the origin access control that
    #   you are deleting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_access_control({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteOriginAccessControl AWS API Documentation
    #
    # @overload delete_origin_access_control(params = {})
    # @param [Hash] params ({})
    def delete_origin_access_control(params = {}, options = {})
      req = build_request(:delete_origin_access_control, params)
      req.send_request(options)
    end

    # Deletes an origin request policy.
    #
    # You cannot delete an origin request policy if it's attached to any
    # cache behaviors. First update your distributions to remove the origin
    # request policy from all cache behaviors, then delete the origin
    # request policy.
    #
    # To delete an origin request policy, you must provide the policy's
    # identifier and version. To get the identifier, you can use
    # `ListOriginRequestPolicies` or `GetOriginRequestPolicy`.
    #
    # @option params [required, String] :id
    #   The unique identifier for the origin request policy that you are
    #   deleting. To get the identifier, you can use
    #   `ListOriginRequestPolicies`.
    #
    # @option params [String] :if_match
    #   The version of the origin request policy that you are deleting. The
    #   version is the origin request policy's `ETag` value, which you can
    #   get using `ListOriginRequestPolicies`, `GetOriginRequestPolicy`, or
    #   `GetOriginRequestPolicyConfig`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_request_policy({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteOriginRequestPolicy AWS API Documentation
    #
    # @overload delete_origin_request_policy(params = {})
    # @param [Hash] params ({})
    def delete_origin_request_policy(params = {}, options = {})
      req = build_request(:delete_origin_request_policy, params)
      req.send_request(options)
    end

    # Remove a public key you previously added to CloudFront.
    #
    # @option params [required, String] :id
    #   The ID of the public key you want to remove from CloudFront.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   public key identity to delete. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_public_key({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeletePublicKey AWS API Documentation
    #
    # @overload delete_public_key(params = {})
    # @param [Hash] params ({})
    def delete_public_key(params = {}, options = {})
      req = build_request(:delete_public_key, params)
      req.send_request(options)
    end

    # Deletes a real-time log configuration.
    #
    # You cannot delete a real-time log configuration if it's attached to a
    # cache behavior. First update your distributions to remove the
    # real-time log configuration from all cache behaviors, then delete the
    # real-time log configuration.
    #
    # To delete a real-time log configuration, you can provide the
    # configuration's name or its Amazon Resource Name (ARN). You must
    # provide at least one. If you provide both, CloudFront uses the name to
    # identify the real-time log configuration to delete.
    #
    # @option params [String] :name
    #   The name of the real-time log configuration to delete.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the real-time log configuration to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_realtime_log_config({
    #     name: "string",
    #     arn: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteRealtimeLogConfig AWS API Documentation
    #
    # @overload delete_realtime_log_config(params = {})
    # @param [Hash] params ({})
    def delete_realtime_log_config(params = {}, options = {})
      req = build_request(:delete_realtime_log_config, params)
      req.send_request(options)
    end

    # Deletes a response headers policy.
    #
    # You cannot delete a response headers policy if it's attached to a
    # cache behavior. First update your distributions to remove the response
    # headers policy from all cache behaviors, then delete the response
    # headers policy.
    #
    # To delete a response headers policy, you must provide the policy's
    # identifier and version. To get these values, you can use
    # `ListResponseHeadersPolicies` or `GetResponseHeadersPolicy`.
    #
    # @option params [required, String] :id
    #   The identifier for the response headers policy that you are deleting.
    #
    #   To get the identifier, you can use `ListResponseHeadersPolicies`.
    #
    # @option params [String] :if_match
    #   The version of the response headers policy that you are deleting.
    #
    #   The version is the response headers policy's `ETag` value, which you
    #   can get using `ListResponseHeadersPolicies`,
    #   `GetResponseHeadersPolicy`, or `GetResponseHeadersPolicyConfig`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_response_headers_policy({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteResponseHeadersPolicy AWS API Documentation
    #
    # @overload delete_response_headers_policy(params = {})
    # @param [Hash] params ({})
    def delete_response_headers_policy(params = {}, options = {})
      req = build_request(:delete_response_headers_policy, params)
      req.send_request(options)
    end

    # Delete a streaming distribution. To delete an RTMP distribution using
    # the CloudFront API, perform the following steps.
    #
    # **To delete an RTMP distribution using the CloudFront API**:
    #
    # 1.  Disable the RTMP distribution.
    #
    # 2.  Submit a `GET Streaming Distribution Config` request to get the
    #     current configuration and the `Etag` header for the distribution.
    #
    # 3.  Update the XML document that was returned in the response to your
    #     `GET Streaming Distribution Config` request to change the value of
    #     `Enabled` to `false`.
    #
    # 4.  Submit a `PUT Streaming Distribution Config` request to update the
    #     configuration for your distribution. In the request body, include
    #     the XML document that you updated in Step 3. Then set the value of
    #     the HTTP `If-Match` header to the value of the `ETag` header that
    #     CloudFront returned when you submitted the `GET Streaming
    #     Distribution Config` request in Step 2.
    #
    # 5.  Review the response to the `PUT Streaming Distribution Config`
    #     request to confirm that the distribution was successfully
    #     disabled.
    #
    # 6.  Submit a `GET Streaming Distribution Config` request to confirm
    #     that your changes have propagated. When propagation is complete,
    #     the value of `Status` is `Deployed`.
    #
    # 7.  Submit a `DELETE Streaming Distribution` request. Set the value of
    #     the HTTP `If-Match` header to the value of the `ETag` header that
    #     CloudFront returned when you submitted the `GET Streaming
    #     Distribution Config` request in Step 2.
    #
    # 8.  Review the response to your `DELETE Streaming Distribution`
    #     request to confirm that the distribution was successfully deleted.
    #
    # For information about deleting a distribution using the CloudFront
    # console, see [Deleting a Distribution][1] in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html
    #
    # @option params [required, String] :id
    #   The distribution ID.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when you disabled the
    #   streaming distribution. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_streaming_distribution({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteStreamingDistribution AWS API Documentation
    #
    # @overload delete_streaming_distribution(params = {})
    # @param [Hash] params ({})
    def delete_streaming_distribution(params = {}, options = {})
      req = build_request(:delete_streaming_distribution, params)
      req.send_request(options)
    end

    # Gets configuration information and metadata about a CloudFront
    # function, but not the function's code. To get a function's code, use
    # `GetFunction`.
    #
    # To get configuration information and metadata about a function, you
    # must provide the function's name and stage. To get these values, you
    # can use `ListFunctions`.
    #
    # @option params [required, String] :name
    #   The name of the function that you are getting information about.
    #
    # @option params [String] :stage
    #   The function's stage, either `DEVELOPMENT` or `LIVE`.
    #
    # @return [Types::DescribeFunctionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFunctionResult#function_summary #function_summary} => Types::FunctionSummary
    #   * {Types::DescribeFunctionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_function({
    #     name: "string", # required
    #     stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.function_summary.name #=> String
    #   resp.function_summary.status #=> String
    #   resp.function_summary.function_config.comment #=> String
    #   resp.function_summary.function_config.runtime #=> String, one of "cloudfront-js-1.0", "cloudfront-js-2.0"
    #   resp.function_summary.function_config.key_value_store_associations.quantity #=> Integer
    #   resp.function_summary.function_config.key_value_store_associations.items #=> Array
    #   resp.function_summary.function_config.key_value_store_associations.items[0].key_value_store_arn #=> String
    #   resp.function_summary.function_metadata.function_arn #=> String
    #   resp.function_summary.function_metadata.stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.function_summary.function_metadata.created_time #=> Time
    #   resp.function_summary.function_metadata.last_modified_time #=> Time
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DescribeFunction AWS API Documentation
    #
    # @overload describe_function(params = {})
    # @param [Hash] params ({})
    def describe_function(params = {}, options = {})
      req = build_request(:describe_function, params)
      req.send_request(options)
    end

    # Specifies the key value store and its configuration.
    #
    # @option params [required, String] :name
    #   The name of the key value store.
    #
    # @return [Types::DescribeKeyValueStoreResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeyValueStoreResult#key_value_store #key_value_store} => Types::KeyValueStore
    #   * {Types::DescribeKeyValueStoreResult#etag #etag} => String
    #
    #
    # @example Example: To describe a KeyValueStore
    #
    #   # Use the following command to describe a KeyValueStore.
    #
    #   resp = client.describe_key_value_store({
    #     name: "my-keyvaluestore-name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     etag: "ETVPDKIKX0DER", 
    #     key_value_store: {
    #       arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #       comment: "my-key-valuestore-comment", 
    #       id: "54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #       last_modified_time: Time.parse("2023-11-07T18:20:33.056Z"), 
    #       name: "my-keyvaluestore-name", 
    #       status: "READY", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_key_value_store({
    #     name: "KeyValueStoreName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_value_store.name #=> String
    #   resp.key_value_store.id #=> String
    #   resp.key_value_store.comment #=> String
    #   resp.key_value_store.arn #=> String
    #   resp.key_value_store.status #=> String
    #   resp.key_value_store.last_modified_time #=> Time
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DescribeKeyValueStore AWS API Documentation
    #
    # @overload describe_key_value_store(params = {})
    # @param [Hash] params ({})
    def describe_key_value_store(params = {}, options = {})
      req = build_request(:describe_key_value_store, params)
      req.send_request(options)
    end

    # Gets a cache policy, including the following metadata:
    #
    # * The policy's identifier.
    #
    # * The date and time when the policy was last modified.
    #
    # To get a cache policy, you must provide the policy's identifier. If
    # the cache policy is attached to a distribution's cache behavior, you
    # can get the policy's identifier using `ListDistributions` or
    # `GetDistribution`. If the cache policy is not attached to a cache
    # behavior, you can get the identifier using `ListCachePolicies`.
    #
    # @option params [required, String] :id
    #   The unique identifier for the cache policy. If the cache policy is
    #   attached to a distribution's cache behavior, you can get the
    #   policy's identifier using `ListDistributions` or `GetDistribution`.
    #   If the cache policy is not attached to a cache behavior, you can get
    #   the identifier using `ListCachePolicies`.
    #
    # @return [Types::GetCachePolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCachePolicyResult#cache_policy #cache_policy} => Types::CachePolicy
    #   * {Types::GetCachePolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cache_policy({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_policy.id #=> String
    #   resp.cache_policy.last_modified_time #=> Time
    #   resp.cache_policy.cache_policy_config.comment #=> String
    #   resp.cache_policy.cache_policy_config.name #=> String
    #   resp.cache_policy.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of "none", "whitelist"
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCachePolicy AWS API Documentation
    #
    # @overload get_cache_policy(params = {})
    # @param [Hash] params ({})
    def get_cache_policy(params = {}, options = {})
      req = build_request(:get_cache_policy, params)
      req.send_request(options)
    end

    # Gets a cache policy configuration.
    #
    # To get a cache policy configuration, you must provide the policy's
    # identifier. If the cache policy is attached to a distribution's cache
    # behavior, you can get the policy's identifier using
    # `ListDistributions` or `GetDistribution`. If the cache policy is not
    # attached to a cache behavior, you can get the identifier using
    # `ListCachePolicies`.
    #
    # @option params [required, String] :id
    #   The unique identifier for the cache policy. If the cache policy is
    #   attached to a distribution's cache behavior, you can get the
    #   policy's identifier using `ListDistributions` or `GetDistribution`.
    #   If the cache policy is not attached to a cache behavior, you can get
    #   the identifier using `ListCachePolicies`.
    #
    # @return [Types::GetCachePolicyConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCachePolicyConfigResult#cache_policy_config #cache_policy_config} => Types::CachePolicyConfig
    #   * {Types::GetCachePolicyConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cache_policy_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_policy_config.comment #=> String
    #   resp.cache_policy_config.name #=> String
    #   resp.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of "none", "whitelist"
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCachePolicyConfig AWS API Documentation
    #
    # @overload get_cache_policy_config(params = {})
    # @param [Hash] params ({})
    def get_cache_policy_config(params = {}, options = {})
      req = build_request(:get_cache_policy_config, params)
      req.send_request(options)
    end

    # Get the information about an origin access identity.
    #
    # @option params [required, String] :id
    #   The identity's ID.
    #
    # @return [Types::GetCloudFrontOriginAccessIdentityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudFrontOriginAccessIdentityResult#cloud_front_origin_access_identity #cloud_front_origin_access_identity} => Types::CloudFrontOriginAccessIdentity
    #   * {Types::GetCloudFrontOriginAccessIdentityResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_front_origin_access_identity({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity.id #=> String
    #   resp.cloud_front_origin_access_identity.s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCloudFrontOriginAccessIdentity AWS API Documentation
    #
    # @overload get_cloud_front_origin_access_identity(params = {})
    # @param [Hash] params ({})
    def get_cloud_front_origin_access_identity(params = {}, options = {})
      req = build_request(:get_cloud_front_origin_access_identity, params)
      req.send_request(options)
    end

    # Get the configuration information about an origin access identity.
    #
    # @option params [required, String] :id
    #   The identity's ID.
    #
    # @return [Types::GetCloudFrontOriginAccessIdentityConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudFrontOriginAccessIdentityConfigResult#cloud_front_origin_access_identity_config #cloud_front_origin_access_identity_config} => Types::CloudFrontOriginAccessIdentityConfig
    #   * {Types::GetCloudFrontOriginAccessIdentityConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_front_origin_access_identity_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCloudFrontOriginAccessIdentityConfig AWS API Documentation
    #
    # @overload get_cloud_front_origin_access_identity_config(params = {})
    # @param [Hash] params ({})
    def get_cloud_front_origin_access_identity_config(params = {}, options = {})
      req = build_request(:get_cloud_front_origin_access_identity_config, params)
      req.send_request(options)
    end

    # Gets a continuous deployment policy, including metadata (the policy's
    # identifier and the date and time when the policy was last modified).
    #
    # @option params [required, String] :id
    #   The identifier of the continuous deployment policy that you are
    #   getting.
    #
    # @return [Types::GetContinuousDeploymentPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContinuousDeploymentPolicyResult#continuous_deployment_policy #continuous_deployment_policy} => Types::ContinuousDeploymentPolicy
    #   * {Types::GetContinuousDeploymentPolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_continuous_deployment_policy({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.continuous_deployment_policy.id #=> String
    #   resp.continuous_deployment_policy.last_modified_time #=> Time
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.quantity #=> Integer
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.items #=> Array
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.items[0] #=> String
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.enabled #=> Boolean
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.weight #=> Float
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.idle_ttl #=> Integer
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.maximum_ttl #=> Integer
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_header_config.header #=> String
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_header_config.value #=> String
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.type #=> String, one of "SingleWeight", "SingleHeader"
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetContinuousDeploymentPolicy AWS API Documentation
    #
    # @overload get_continuous_deployment_policy(params = {})
    # @param [Hash] params ({})
    def get_continuous_deployment_policy(params = {}, options = {})
      req = build_request(:get_continuous_deployment_policy, params)
      req.send_request(options)
    end

    # Gets configuration information about a continuous deployment policy.
    #
    # @option params [required, String] :id
    #   The identifier of the continuous deployment policy whose configuration
    #   you are getting.
    #
    # @return [Types::GetContinuousDeploymentPolicyConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContinuousDeploymentPolicyConfigResult#continuous_deployment_policy_config #continuous_deployment_policy_config} => Types::ContinuousDeploymentPolicyConfig
    #   * {Types::GetContinuousDeploymentPolicyConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_continuous_deployment_policy_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.continuous_deployment_policy_config.staging_distribution_dns_names.quantity #=> Integer
    #   resp.continuous_deployment_policy_config.staging_distribution_dns_names.items #=> Array
    #   resp.continuous_deployment_policy_config.staging_distribution_dns_names.items[0] #=> String
    #   resp.continuous_deployment_policy_config.enabled #=> Boolean
    #   resp.continuous_deployment_policy_config.traffic_config.single_weight_config.weight #=> Float
    #   resp.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.idle_ttl #=> Integer
    #   resp.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.maximum_ttl #=> Integer
    #   resp.continuous_deployment_policy_config.traffic_config.single_header_config.header #=> String
    #   resp.continuous_deployment_policy_config.traffic_config.single_header_config.value #=> String
    #   resp.continuous_deployment_policy_config.traffic_config.type #=> String, one of "SingleWeight", "SingleHeader"
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetContinuousDeploymentPolicyConfig AWS API Documentation
    #
    # @overload get_continuous_deployment_policy_config(params = {})
    # @param [Hash] params ({})
    def get_continuous_deployment_policy_config(params = {}, options = {})
      req = build_request(:get_continuous_deployment_policy_config, params)
      req.send_request(options)
    end

    # Get the information about a distribution.
    #
    # @option params [required, String] :id
    #   The distribution's ID. If the ID is empty, an empty distribution
    #   configuration is returned.
    #
    # @return [Types::GetDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDistributionResult#distribution #distribution} => Types::Distribution
    #   * {Types::GetDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_distribution({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_access_control_id #=> String
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.distribution_config.continuous_deployment_policy_id #=> String
    #   resp.distribution.distribution_config.staging #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of "APPROVED", "SUSPENDED", "PENDING"
    #   resp.etag #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * distribution_deployed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetDistribution AWS API Documentation
    #
    # @overload get_distribution(params = {})
    # @param [Hash] params ({})
    def get_distribution(params = {}, options = {})
      req = build_request(:get_distribution, params)
      req.send_request(options)
    end

    # Get the configuration information about a distribution.
    #
    # @option params [required, String] :id
    #   The distribution's ID. If the ID is empty, an empty distribution
    #   configuration is returned.
    #
    # @return [Types::GetDistributionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDistributionConfigResult#distribution_config #distribution_config} => Types::DistributionConfig
    #   * {Types::GetDistributionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_distribution_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_config.caller_reference #=> String
    #   resp.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution_config.aliases.items #=> Array
    #   resp.distribution_config.aliases.items[0] #=> String
    #   resp.distribution_config.default_root_object #=> String
    #   resp.distribution_config.origins.quantity #=> Integer
    #   resp.distribution_config.origins.items #=> Array
    #   resp.distribution_config.origins.items[0].id #=> String
    #   resp.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution_config.origins.items[0].origin_access_control_id #=> String
    #   resp.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution_config.origin_groups.items #=> Array
    #   resp.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution_config.origin_groups.items[0].members.items #=> Array
    #   resp.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution_config.cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution_config.cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_config.comment #=> String
    #   resp.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution_config.logging.bucket #=> String
    #   resp.distribution_config.logging.prefix #=> String
    #   resp.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution_config.enabled #=> Boolean
    #   resp.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_config.web_acl_id #=> String
    #   resp.distribution_config.http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution_config.continuous_deployment_policy_id #=> String
    #   resp.distribution_config.staging #=> Boolean
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetDistributionConfig AWS API Documentation
    #
    # @overload get_distribution_config(params = {})
    # @param [Hash] params ({})
    def get_distribution_config(params = {}, options = {})
      req = build_request(:get_distribution_config, params)
      req.send_request(options)
    end

    # Get the field-level encryption configuration information.
    #
    # @option params [required, String] :id
    #   Request the ID for the field-level encryption configuration
    #   information.
    #
    # @return [Types::GetFieldLevelEncryptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFieldLevelEncryptionResult#field_level_encryption #field_level_encryption} => Types::FieldLevelEncryption
    #   * {Types::GetFieldLevelEncryptionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption.id #=> String
    #   resp.field_level_encryption.last_modified_time #=> Time
    #   resp.field_level_encryption.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryption AWS API Documentation
    #
    # @overload get_field_level_encryption(params = {})
    # @param [Hash] params ({})
    def get_field_level_encryption(params = {}, options = {})
      req = build_request(:get_field_level_encryption, params)
      req.send_request(options)
    end

    # Get the field-level encryption configuration information.
    #
    # @option params [required, String] :id
    #   Request the ID for the field-level encryption configuration
    #   information.
    #
    # @return [Types::GetFieldLevelEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFieldLevelEncryptionConfigResult#field_level_encryption_config #field_level_encryption_config} => Types::FieldLevelEncryptionConfig
    #   * {Types::GetFieldLevelEncryptionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionConfig AWS API Documentation
    #
    # @overload get_field_level_encryption_config(params = {})
    # @param [Hash] params ({})
    def get_field_level_encryption_config(params = {}, options = {})
      req = build_request(:get_field_level_encryption_config, params)
      req.send_request(options)
    end

    # Get the field-level encryption profile information.
    #
    # @option params [required, String] :id
    #   Get the ID for the field-level encryption profile information.
    #
    # @return [Types::GetFieldLevelEncryptionProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFieldLevelEncryptionProfileResult#field_level_encryption_profile #field_level_encryption_profile} => Types::FieldLevelEncryptionProfile
    #   * {Types::GetFieldLevelEncryptionProfileResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption_profile({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile.id #=> String
    #   resp.field_level_encryption_profile.last_modified_time #=> Time
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.name #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionProfile AWS API Documentation
    #
    # @overload get_field_level_encryption_profile(params = {})
    # @param [Hash] params ({})
    def get_field_level_encryption_profile(params = {}, options = {})
      req = build_request(:get_field_level_encryption_profile, params)
      req.send_request(options)
    end

    # Get the field-level encryption profile configuration information.
    #
    # @option params [required, String] :id
    #   Get the ID for the field-level encryption profile configuration
    #   information.
    #
    # @return [Types::GetFieldLevelEncryptionProfileConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFieldLevelEncryptionProfileConfigResult#field_level_encryption_profile_config #field_level_encryption_profile_config} => Types::FieldLevelEncryptionProfileConfig
    #   * {Types::GetFieldLevelEncryptionProfileConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption_profile_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile_config.name #=> String
    #   resp.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile_config.encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionProfileConfig AWS API Documentation
    #
    # @overload get_field_level_encryption_profile_config(params = {})
    # @param [Hash] params ({})
    def get_field_level_encryption_profile_config(params = {}, options = {})
      req = build_request(:get_field_level_encryption_profile_config, params)
      req.send_request(options)
    end

    # Gets the code of a CloudFront function. To get configuration
    # information and metadata about a function, use `DescribeFunction`.
    #
    # To get a function's code, you must provide the function's name and
    # stage. To get these values, you can use `ListFunctions`.
    #
    # @option params [required, String] :name
    #   The name of the function whose code you are getting.
    #
    # @option params [String] :stage
    #   The function's stage, either `DEVELOPMENT` or `LIVE`.
    #
    # @return [Types::GetFunctionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionResult#function_code #function_code} => String
    #   * {Types::GetFunctionResult#etag #etag} => String
    #   * {Types::GetFunctionResult#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function({
    #     name: "string", # required
    #     stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.function_code #=> String
    #   resp.etag #=> String
    #   resp.content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFunction AWS API Documentation
    #
    # @overload get_function(params = {})
    # @param [Hash] params ({})
    def get_function(params = {}, options = {})
      req = build_request(:get_function, params)
      req.send_request(options)
    end

    # Get the information about an invalidation.
    #
    # @option params [required, String] :distribution_id
    #   The distribution's ID.
    #
    # @option params [required, String] :id
    #   The identifier for the invalidation request, for example,
    #   `IDFDVBD632BHDS5`.
    #
    # @return [Types::GetInvalidationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvalidationResult#invalidation #invalidation} => Types::Invalidation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_invalidation({
    #     distribution_id: "string", # required
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.invalidation.id #=> String
    #   resp.invalidation.status #=> String
    #   resp.invalidation.create_time #=> Time
    #   resp.invalidation.invalidation_batch.paths.quantity #=> Integer
    #   resp.invalidation.invalidation_batch.paths.items #=> Array
    #   resp.invalidation.invalidation_batch.paths.items[0] #=> String
    #   resp.invalidation.invalidation_batch.caller_reference #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * invalidation_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetInvalidation AWS API Documentation
    #
    # @overload get_invalidation(params = {})
    # @param [Hash] params ({})
    def get_invalidation(params = {}, options = {})
      req = build_request(:get_invalidation, params)
      req.send_request(options)
    end

    # Gets a key group, including the date and time when the key group was
    # last modified.
    #
    # To get a key group, you must provide the key group's identifier. If
    # the key group is referenced in a distribution's cache behavior, you
    # can get the key group's identifier using `ListDistributions` or
    # `GetDistribution`. If the key group is not referenced in a cache
    # behavior, you can get the identifier using `ListKeyGroups`.
    #
    # @option params [required, String] :id
    #   The identifier of the key group that you are getting. To get the
    #   identifier, use `ListKeyGroups`.
    #
    # @return [Types::GetKeyGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyGroupResult#key_group #key_group} => Types::KeyGroup
    #   * {Types::GetKeyGroupResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_group({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_group.id #=> String
    #   resp.key_group.last_modified_time #=> Time
    #   resp.key_group.key_group_config.name #=> String
    #   resp.key_group.key_group_config.items #=> Array
    #   resp.key_group.key_group_config.items[0] #=> String
    #   resp.key_group.key_group_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetKeyGroup AWS API Documentation
    #
    # @overload get_key_group(params = {})
    # @param [Hash] params ({})
    def get_key_group(params = {}, options = {})
      req = build_request(:get_key_group, params)
      req.send_request(options)
    end

    # Gets a key group configuration.
    #
    # To get a key group configuration, you must provide the key group's
    # identifier. If the key group is referenced in a distribution's cache
    # behavior, you can get the key group's identifier using
    # `ListDistributions` or `GetDistribution`. If the key group is not
    # referenced in a cache behavior, you can get the identifier using
    # `ListKeyGroups`.
    #
    # @option params [required, String] :id
    #   The identifier of the key group whose configuration you are getting.
    #   To get the identifier, use `ListKeyGroups`.
    #
    # @return [Types::GetKeyGroupConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyGroupConfigResult#key_group_config #key_group_config} => Types::KeyGroupConfig
    #   * {Types::GetKeyGroupConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_group_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_group_config.name #=> String
    #   resp.key_group_config.items #=> Array
    #   resp.key_group_config.items[0] #=> String
    #   resp.key_group_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetKeyGroupConfig AWS API Documentation
    #
    # @overload get_key_group_config(params = {})
    # @param [Hash] params ({})
    def get_key_group_config(params = {}, options = {})
      req = build_request(:get_key_group_config, params)
      req.send_request(options)
    end

    # Gets information about whether additional CloudWatch metrics are
    # enabled for the specified CloudFront distribution.
    #
    # @option params [required, String] :distribution_id
    #   The ID of the distribution that you are getting metrics information
    #   for.
    #
    # @return [Types::GetMonitoringSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMonitoringSubscriptionResult#monitoring_subscription #monitoring_subscription} => Types::MonitoringSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_monitoring_subscription({
    #     distribution_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.monitoring_subscription.realtime_metrics_subscription_config.realtime_metrics_subscription_status #=> String, one of "Enabled", "Disabled"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetMonitoringSubscription AWS API Documentation
    #
    # @overload get_monitoring_subscription(params = {})
    # @param [Hash] params ({})
    def get_monitoring_subscription(params = {}, options = {})
      req = build_request(:get_monitoring_subscription, params)
      req.send_request(options)
    end

    # Gets a CloudFront origin access control, including its unique
    # identifier.
    #
    # @option params [required, String] :id
    #   The unique identifier of the origin access control.
    #
    # @return [Types::GetOriginAccessControlResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOriginAccessControlResult#origin_access_control #origin_access_control} => Types::OriginAccessControl
    #   * {Types::GetOriginAccessControlResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_access_control({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_access_control.id #=> String
    #   resp.origin_access_control.origin_access_control_config.name #=> String
    #   resp.origin_access_control.origin_access_control_config.description #=> String
    #   resp.origin_access_control.origin_access_control_config.signing_protocol #=> String, one of "sigv4"
    #   resp.origin_access_control.origin_access_control_config.signing_behavior #=> String, one of "never", "always", "no-override"
    #   resp.origin_access_control.origin_access_control_config.origin_access_control_origin_type #=> String, one of "s3", "mediastore", "mediapackagev2", "lambda"
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginAccessControl AWS API Documentation
    #
    # @overload get_origin_access_control(params = {})
    # @param [Hash] params ({})
    def get_origin_access_control(params = {}, options = {})
      req = build_request(:get_origin_access_control, params)
      req.send_request(options)
    end

    # Gets a CloudFront origin access control configuration.
    #
    # @option params [required, String] :id
    #   The unique identifier of the origin access control.
    #
    # @return [Types::GetOriginAccessControlConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOriginAccessControlConfigResult#origin_access_control_config #origin_access_control_config} => Types::OriginAccessControlConfig
    #   * {Types::GetOriginAccessControlConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_access_control_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_access_control_config.name #=> String
    #   resp.origin_access_control_config.description #=> String
    #   resp.origin_access_control_config.signing_protocol #=> String, one of "sigv4"
    #   resp.origin_access_control_config.signing_behavior #=> String, one of "never", "always", "no-override"
    #   resp.origin_access_control_config.origin_access_control_origin_type #=> String, one of "s3", "mediastore", "mediapackagev2", "lambda"
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginAccessControlConfig AWS API Documentation
    #
    # @overload get_origin_access_control_config(params = {})
    # @param [Hash] params ({})
    def get_origin_access_control_config(params = {}, options = {})
      req = build_request(:get_origin_access_control_config, params)
      req.send_request(options)
    end

    # Gets an origin request policy, including the following metadata:
    #
    # * The policy's identifier.
    #
    # * The date and time when the policy was last modified.
    #
    # To get an origin request policy, you must provide the policy's
    # identifier. If the origin request policy is attached to a
    # distribution's cache behavior, you can get the policy's identifier
    # using `ListDistributions` or `GetDistribution`. If the origin request
    # policy is not attached to a cache behavior, you can get the identifier
    # using `ListOriginRequestPolicies`.
    #
    # @option params [required, String] :id
    #   The unique identifier for the origin request policy. If the origin
    #   request policy is attached to a distribution's cache behavior, you
    #   can get the policy's identifier using `ListDistributions` or
    #   `GetDistribution`. If the origin request policy is not attached to a
    #   cache behavior, you can get the identifier using
    #   `ListOriginRequestPolicies`.
    #
    # @return [Types::GetOriginRequestPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOriginRequestPolicyResult#origin_request_policy #origin_request_policy} => Types::OriginRequestPolicy
    #   * {Types::GetOriginRequestPolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_request_policy({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_request_policy.id #=> String
    #   resp.origin_request_policy.last_modified_time #=> Time
    #   resp.origin_request_policy.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy.origin_request_policy_config.name #=> String
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.header_behavior #=> String, one of "none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items #=> Array
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items #=> Array
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items #=> Array
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginRequestPolicy AWS API Documentation
    #
    # @overload get_origin_request_policy(params = {})
    # @param [Hash] params ({})
    def get_origin_request_policy(params = {}, options = {})
      req = build_request(:get_origin_request_policy, params)
      req.send_request(options)
    end

    # Gets an origin request policy configuration.
    #
    # To get an origin request policy configuration, you must provide the
    # policy's identifier. If the origin request policy is attached to a
    # distribution's cache behavior, you can get the policy's identifier
    # using `ListDistributions` or `GetDistribution`. If the origin request
    # policy is not attached to a cache behavior, you can get the identifier
    # using `ListOriginRequestPolicies`.
    #
    # @option params [required, String] :id
    #   The unique identifier for the origin request policy. If the origin
    #   request policy is attached to a distribution's cache behavior, you
    #   can get the policy's identifier using `ListDistributions` or
    #   `GetDistribution`. If the origin request policy is not attached to a
    #   cache behavior, you can get the identifier using
    #   `ListOriginRequestPolicies`.
    #
    # @return [Types::GetOriginRequestPolicyConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOriginRequestPolicyConfigResult#origin_request_policy_config #origin_request_policy_config} => Types::OriginRequestPolicyConfig
    #   * {Types::GetOriginRequestPolicyConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_request_policy_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy_config.name #=> String
    #   resp.origin_request_policy_config.headers_config.header_behavior #=> String, one of "none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"
    #   resp.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy_config.headers_config.headers.items #=> Array
    #   resp.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy_config.cookies_config.cookies.items #=> Array
    #   resp.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy_config.query_strings_config.query_strings.items #=> Array
    #   resp.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginRequestPolicyConfig AWS API Documentation
    #
    # @overload get_origin_request_policy_config(params = {})
    # @param [Hash] params ({})
    def get_origin_request_policy_config(params = {}, options = {})
      req = build_request(:get_origin_request_policy_config, params)
      req.send_request(options)
    end

    # Gets a public key.
    #
    # @option params [required, String] :id
    #   The identifier of the public key you are getting.
    #
    # @return [Types::GetPublicKeyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicKeyResult#public_key #public_key} => Types::PublicKey
    #   * {Types::GetPublicKeyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key.id #=> String
    #   resp.public_key.created_time #=> Time
    #   resp.public_key.public_key_config.caller_reference #=> String
    #   resp.public_key.public_key_config.name #=> String
    #   resp.public_key.public_key_config.encoded_key #=> String
    #   resp.public_key.public_key_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetPublicKey AWS API Documentation
    #
    # @overload get_public_key(params = {})
    # @param [Hash] params ({})
    def get_public_key(params = {}, options = {})
      req = build_request(:get_public_key, params)
      req.send_request(options)
    end

    # Gets a public key configuration.
    #
    # @option params [required, String] :id
    #   The identifier of the public key whose configuration you are getting.
    #
    # @return [Types::GetPublicKeyConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicKeyConfigResult#public_key_config #public_key_config} => Types::PublicKeyConfig
    #   * {Types::GetPublicKeyConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key_config.caller_reference #=> String
    #   resp.public_key_config.name #=> String
    #   resp.public_key_config.encoded_key #=> String
    #   resp.public_key_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetPublicKeyConfig AWS API Documentation
    #
    # @overload get_public_key_config(params = {})
    # @param [Hash] params ({})
    def get_public_key_config(params = {}, options = {})
      req = build_request(:get_public_key_config, params)
      req.send_request(options)
    end

    # Gets a real-time log configuration.
    #
    # To get a real-time log configuration, you can provide the
    # configuration's name or its Amazon Resource Name (ARN). You must
    # provide at least one. If you provide both, CloudFront uses the name to
    # identify the real-time log configuration to get.
    #
    # @option params [String] :name
    #   The name of the real-time log configuration to get.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the real-time log configuration to
    #   get.
    #
    # @return [Types::GetRealtimeLogConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRealtimeLogConfigResult#realtime_log_config #realtime_log_config} => Types::RealtimeLogConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_realtime_log_config({
    #     name: "string",
    #     arn: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.realtime_log_config.arn #=> String
    #   resp.realtime_log_config.name #=> String
    #   resp.realtime_log_config.sampling_rate #=> Integer
    #   resp.realtime_log_config.end_points #=> Array
    #   resp.realtime_log_config.end_points[0].stream_type #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.role_arn #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.stream_arn #=> String
    #   resp.realtime_log_config.fields #=> Array
    #   resp.realtime_log_config.fields[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetRealtimeLogConfig AWS API Documentation
    #
    # @overload get_realtime_log_config(params = {})
    # @param [Hash] params ({})
    def get_realtime_log_config(params = {}, options = {})
      req = build_request(:get_realtime_log_config, params)
      req.send_request(options)
    end

    # Gets a response headers policy, including metadata (the policy's
    # identifier and the date and time when the policy was last modified).
    #
    # To get a response headers policy, you must provide the policy's
    # identifier. If the response headers policy is attached to a
    # distribution's cache behavior, you can get the policy's identifier
    # using `ListDistributions` or `GetDistribution`. If the response
    # headers policy is not attached to a cache behavior, you can get the
    # identifier using `ListResponseHeadersPolicies`.
    #
    # @option params [required, String] :id
    #   The identifier for the response headers policy.
    #
    #   If the response headers policy is attached to a distribution's cache
    #   behavior, you can get the policy's identifier using
    #   `ListDistributions` or `GetDistribution`. If the response headers
    #   policy is not attached to a cache behavior, you can get the identifier
    #   using `ListResponseHeadersPolicies`.
    #
    # @return [Types::GetResponseHeadersPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResponseHeadersPolicyResult#response_headers_policy #response_headers_policy} => Types::ResponseHeadersPolicy
    #   * {Types::GetResponseHeadersPolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_response_headers_policy({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.response_headers_policy.id #=> String
    #   resp.response_headers_policy.last_modified_time #=> Time
    #   resp.response_headers_policy.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy.response_headers_policy_config.name #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of "GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of "DENY", "SAMEORIGIN"
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of "no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.server_timing_headers_config.enabled #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.server_timing_headers_config.sampling_rate #=> Float
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.remove_headers_config.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.remove_headers_config.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.remove_headers_config.items[0].header #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetResponseHeadersPolicy AWS API Documentation
    #
    # @overload get_response_headers_policy(params = {})
    # @param [Hash] params ({})
    def get_response_headers_policy(params = {}, options = {})
      req = build_request(:get_response_headers_policy, params)
      req.send_request(options)
    end

    # Gets a response headers policy configuration.
    #
    # To get a response headers policy configuration, you must provide the
    # policy's identifier. If the response headers policy is attached to a
    # distribution's cache behavior, you can get the policy's identifier
    # using `ListDistributions` or `GetDistribution`. If the response
    # headers policy is not attached to a cache behavior, you can get the
    # identifier using `ListResponseHeadersPolicies`.
    #
    # @option params [required, String] :id
    #   The identifier for the response headers policy.
    #
    #   If the response headers policy is attached to a distribution's cache
    #   behavior, you can get the policy's identifier using
    #   `ListDistributions` or `GetDistribution`. If the response headers
    #   policy is not attached to a cache behavior, you can get the identifier
    #   using `ListResponseHeadersPolicies`.
    #
    # @return [Types::GetResponseHeadersPolicyConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResponseHeadersPolicyConfigResult#response_headers_policy_config #response_headers_policy_config} => Types::ResponseHeadersPolicyConfig
    #   * {Types::GetResponseHeadersPolicyConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_response_headers_policy_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy_config.name #=> String
    #   resp.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array
    #   resp.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array
    #   resp.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array
    #   resp.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of "GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"
    #   resp.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array
    #   resp.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of "DENY", "SAMEORIGIN"
    #   resp.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of "no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"
    #   resp.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy_config.server_timing_headers_config.enabled #=> Boolean
    #   resp.response_headers_policy_config.server_timing_headers_config.sampling_rate #=> Float
    #   resp.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy_config.custom_headers_config.items #=> Array
    #   resp.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #   resp.response_headers_policy_config.remove_headers_config.quantity #=> Integer
    #   resp.response_headers_policy_config.remove_headers_config.items #=> Array
    #   resp.response_headers_policy_config.remove_headers_config.items[0].header #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetResponseHeadersPolicyConfig AWS API Documentation
    #
    # @overload get_response_headers_policy_config(params = {})
    # @param [Hash] params ({})
    def get_response_headers_policy_config(params = {}, options = {})
      req = build_request(:get_response_headers_policy_config, params)
      req.send_request(options)
    end

    # Gets information about a specified RTMP distribution, including the
    # distribution configuration.
    #
    # @option params [required, String] :id
    #   The streaming distribution's ID.
    #
    # @return [Types::GetStreamingDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingDistributionResult#streaming_distribution #streaming_distribution} => Types::StreamingDistribution
    #   * {Types::GetStreamingDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_distribution({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.etag #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * streaming_distribution_deployed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetStreamingDistribution AWS API Documentation
    #
    # @overload get_streaming_distribution(params = {})
    # @param [Hash] params ({})
    def get_streaming_distribution(params = {}, options = {})
      req = build_request(:get_streaming_distribution, params)
      req.send_request(options)
    end

    # Get the configuration information about a streaming distribution.
    #
    # @option params [required, String] :id
    #   The streaming distribution's ID.
    #
    # @return [Types::GetStreamingDistributionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingDistributionConfigResult#streaming_distribution_config #streaming_distribution_config} => Types::StreamingDistributionConfig
    #   * {Types::GetStreamingDistributionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_distribution_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution_config.enabled #=> Boolean
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetStreamingDistributionConfig AWS API Documentation
    #
    # @overload get_streaming_distribution_config(params = {})
    # @param [Hash] params ({})
    def get_streaming_distribution_config(params = {}, options = {})
      req = build_request(:get_streaming_distribution_config, params)
      req.send_request(options)
    end

    # Gets a list of cache policies.
    #
    # You can optionally apply a filter to return only the managed policies
    # created by Amazon Web Services, or only the custom policies created in
    # your Amazon Web Services account.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :type
    #   A filter to return only the specified kinds of cache policies. Valid
    #   values are:
    #
    #   * `managed` – Returns only the managed policies created by Amazon Web
    #     Services.
    #
    #   * `custom` – Returns only the custom policies created in your Amazon
    #     Web Services account.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of cache policies. The response includes cache policies in
    #   the list that occur after the marker. To get the next page of the
    #   list, set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of cache policies that you want in the response.
    #
    # @return [Types::ListCachePoliciesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCachePoliciesResult#cache_policy_list #cache_policy_list} => Types::CachePolicyList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cache_policies({
    #     type: "managed", # accepts managed, custom
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_policy_list.next_marker #=> String
    #   resp.cache_policy_list.max_items #=> Integer
    #   resp.cache_policy_list.quantity #=> Integer
    #   resp.cache_policy_list.items #=> Array
    #   resp.cache_policy_list.items[0].type #=> String, one of "managed", "custom"
    #   resp.cache_policy_list.items[0].cache_policy.id #=> String
    #   resp.cache_policy_list.items[0].cache_policy.last_modified_time #=> Time
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.comment #=> String
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.name #=> String
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of "none", "whitelist"
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListCachePolicies AWS API Documentation
    #
    # @overload list_cache_policies(params = {})
    # @param [Hash] params ({})
    def list_cache_policies(params = {}, options = {})
      req = build_request(:list_cache_policies, params)
      req.send_request(options)
    end

    # Lists origin access identities.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of origin access identities. The results include identities in
    #   the list that occur after the marker. To get the next page of results,
    #   set the `Marker` to the value of the `NextMarker` from the current
    #   page's response (which is also the ID of the last identity on that
    #   page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of origin access identities you want in the
    #   response body.
    #
    # @return [Types::ListCloudFrontOriginAccessIdentitiesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCloudFrontOriginAccessIdentitiesResult#cloud_front_origin_access_identity_list #cloud_front_origin_access_identity_list} => Types::CloudFrontOriginAccessIdentityList
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_front_origin_access_identities({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity_list.marker #=> String
    #   resp.cloud_front_origin_access_identity_list.next_marker #=> String
    #   resp.cloud_front_origin_access_identity_list.max_items #=> Integer
    #   resp.cloud_front_origin_access_identity_list.is_truncated #=> Boolean
    #   resp.cloud_front_origin_access_identity_list.quantity #=> Integer
    #   resp.cloud_front_origin_access_identity_list.items #=> Array
    #   resp.cloud_front_origin_access_identity_list.items[0].id #=> String
    #   resp.cloud_front_origin_access_identity_list.items[0].s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity_list.items[0].comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListCloudFrontOriginAccessIdentities AWS API Documentation
    #
    # @overload list_cloud_front_origin_access_identities(params = {})
    # @param [Hash] params ({})
    def list_cloud_front_origin_access_identities(params = {}, options = {})
      req = build_request(:list_cloud_front_origin_access_identities, params)
      req.send_request(options)
    end

    # Gets a list of aliases (also called CNAMEs or alternate domain names)
    # that conflict or overlap with the provided alias, and the associated
    # CloudFront distributions and Amazon Web Services accounts for each
    # conflicting alias. In the returned list, the distribution and account
    # IDs are partially hidden, which allows you to identify the
    # distributions and accounts that you own, but helps to protect the
    # information of ones that you don't own.
    #
    # Use this operation to find aliases that are in use in CloudFront that
    # conflict or overlap with the provided alias. For example, if you
    # provide `www.example.com` as input, the returned list can include
    # `www.example.com` and the overlapping wildcard alternate domain name
    # (`*.example.com`), if they exist. If you provide `*.example.com` as
    # input, the returned list can include `*.example.com` and any alternate
    # domain names covered by that wildcard (for example, `www.example.com`,
    # `test.example.com`, `dev.example.com`, and so on), if they exist.
    #
    # To list conflicting aliases, you provide the alias to search and the
    # ID of a distribution in your account that has an attached SSL/TLS
    # certificate that includes the provided alias. For more information,
    # including how to set up the distribution and certificate, see [Moving
    # an alternate domain name to a different distribution][1] in the
    # *Amazon CloudFront Developer Guide*.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move
    #
    # @option params [required, String] :distribution_id
    #   The ID of a distribution in your account that has an attached SSL/TLS
    #   certificate that includes the provided alias.
    #
    # @option params [required, String] :alias
    #   The alias (also called a CNAME) to search for conflicting aliases.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   the list of conflicting aliases. The response includes conflicting
    #   aliases in the list that occur after the marker. To get the next page
    #   of the list, set this field's value to the value of `NextMarker` from
    #   the current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of conflicting aliases that you want in the
    #   response.
    #
    # @return [Types::ListConflictingAliasesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConflictingAliasesResult#conflicting_aliases_list #conflicting_aliases_list} => Types::ConflictingAliasesList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_conflicting_aliases({
    #     distribution_id: "distributionIdString", # required
    #     alias: "aliasString", # required
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.conflicting_aliases_list.next_marker #=> String
    #   resp.conflicting_aliases_list.max_items #=> Integer
    #   resp.conflicting_aliases_list.quantity #=> Integer
    #   resp.conflicting_aliases_list.items #=> Array
    #   resp.conflicting_aliases_list.items[0].alias #=> String
    #   resp.conflicting_aliases_list.items[0].distribution_id #=> String
    #   resp.conflicting_aliases_list.items[0].account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListConflictingAliases AWS API Documentation
    #
    # @overload list_conflicting_aliases(params = {})
    # @param [Hash] params ({})
    def list_conflicting_aliases(params = {}, options = {})
      req = build_request(:list_conflicting_aliases, params)
      req.send_request(options)
    end

    # Gets a list of the continuous deployment policies in your Amazon Web
    # Services account.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of continuous deployment policies. The response includes
    #   policies in the list that occur after the marker. To get the next page
    #   of the list, set this field's value to the value of `NextMarker` from
    #   the current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of continuous deployment policies that you want
    #   returned in the response.
    #
    # @return [Types::ListContinuousDeploymentPoliciesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContinuousDeploymentPoliciesResult#continuous_deployment_policy_list #continuous_deployment_policy_list} => Types::ContinuousDeploymentPolicyList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_continuous_deployment_policies({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.continuous_deployment_policy_list.next_marker #=> String
    #   resp.continuous_deployment_policy_list.max_items #=> Integer
    #   resp.continuous_deployment_policy_list.quantity #=> Integer
    #   resp.continuous_deployment_policy_list.items #=> Array
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.id #=> String
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.last_modified_time #=> Time
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.quantity #=> Integer
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.items #=> Array
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.items[0] #=> String
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.enabled #=> Boolean
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.weight #=> Float
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.idle_ttl #=> Integer
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.maximum_ttl #=> Integer
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_header_config.header #=> String
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_header_config.value #=> String
    #   resp.continuous_deployment_policy_list.items[0].continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.type #=> String, one of "SingleWeight", "SingleHeader"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListContinuousDeploymentPolicies AWS API Documentation
    #
    # @overload list_continuous_deployment_policies(params = {})
    # @param [Hash] params ({})
    def list_continuous_deployment_policies(params = {}, options = {})
      req = build_request(:list_continuous_deployment_policies, params)
      req.send_request(options)
    end

    # List CloudFront distributions.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of distributions. The results include distributions in the list
    #   that occur after the marker. To get the next page of results, set the
    #   `Marker` to the value of the `NextMarker` from the current page's
    #   response (which is also the ID of the last distribution on that page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of distributions you want in the response body.
    #
    # @return [Types::ListDistributionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionsResult#distribution_list #distribution_list} => Types::DistributionList
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_list.marker #=> String
    #   resp.distribution_list.next_marker #=> String
    #   resp.distribution_list.max_items #=> Integer
    #   resp.distribution_list.is_truncated #=> Boolean
    #   resp.distribution_list.quantity #=> Integer
    #   resp.distribution_list.items #=> Array
    #   resp.distribution_list.items[0].id #=> String
    #   resp.distribution_list.items[0].arn #=> String
    #   resp.distribution_list.items[0].status #=> String
    #   resp.distribution_list.items[0].last_modified_time #=> Time
    #   resp.distribution_list.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.distribution_list.items[0].aliases.items #=> Array
    #   resp.distribution_list.items[0].aliases.items[0] #=> String
    #   resp.distribution_list.items[0].origins.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].id #=> String
    #   resp.distribution_list.items[0].origins.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_path #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_attempts #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_access_control_id #=> String
    #   resp.distribution_list.items[0].origin_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items #=> Array
    #   resp.distribution_list.items[0].origin_groups.items[0].id #=> String
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items #=> Array
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.compress #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.quantity #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items #=> Array
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_list.items[0].comment #=> String
    #   resp.distribution_list.items[0].price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution_list.items[0].enabled #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_list.items[0].viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_list.items[0].viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution_list.items[0].viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution_list.items[0].viewer_certificate.certificate #=> String
    #   resp.distribution_list.items[0].viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items #=> Array
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_list.items[0].web_acl_id #=> String
    #   resp.distribution_list.items[0].http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution_list.items[0].is_ipv6_enabled #=> Boolean
    #   resp.distribution_list.items[0].alias_icp_recordals #=> Array
    #   resp.distribution_list.items[0].alias_icp_recordals[0].cname #=> String
    #   resp.distribution_list.items[0].alias_icp_recordals[0].icp_recordal_status #=> String, one of "APPROVED", "SUSPENDED", "PENDING"
    #   resp.distribution_list.items[0].staging #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributions AWS API Documentation
    #
    # @overload list_distributions(params = {})
    # @param [Hash] params ({})
    def list_distributions(params = {}, options = {})
      req = build_request(:list_distributions, params)
      req.send_request(options)
    end

    # Gets a list of distribution IDs for distributions that have a cache
    # behavior that's associated with the specified cache policy.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distribution IDs. The response includes distribution IDs
    #   in the list that occur after the marker. To get the next page of the
    #   list, set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of distribution IDs that you want in the response.
    #
    # @option params [required, String] :cache_policy_id
    #   The ID of the cache policy whose associated distribution IDs you want
    #   to list.
    #
    # @return [Types::ListDistributionsByCachePolicyIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionsByCachePolicyIdResult#distribution_id_list #distribution_id_list} => Types::DistributionIdList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_cache_policy_id({
    #     marker: "string",
    #     max_items: 1,
    #     cache_policy_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_id_list.marker #=> String
    #   resp.distribution_id_list.next_marker #=> String
    #   resp.distribution_id_list.max_items #=> Integer
    #   resp.distribution_id_list.is_truncated #=> Boolean
    #   resp.distribution_id_list.quantity #=> Integer
    #   resp.distribution_id_list.items #=> Array
    #   resp.distribution_id_list.items[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByCachePolicyId AWS API Documentation
    #
    # @overload list_distributions_by_cache_policy_id(params = {})
    # @param [Hash] params ({})
    def list_distributions_by_cache_policy_id(params = {}, options = {})
      req = build_request(:list_distributions_by_cache_policy_id, params)
      req.send_request(options)
    end

    # Gets a list of distribution IDs for distributions that have a cache
    # behavior that references the specified key group.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distribution IDs. The response includes distribution IDs
    #   in the list that occur after the marker. To get the next page of the
    #   list, set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of distribution IDs that you want in the response.
    #
    # @option params [required, String] :key_group_id
    #   The ID of the key group whose associated distribution IDs you are
    #   listing.
    #
    # @return [Types::ListDistributionsByKeyGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionsByKeyGroupResult#distribution_id_list #distribution_id_list} => Types::DistributionIdList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_key_group({
    #     marker: "string",
    #     max_items: 1,
    #     key_group_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_id_list.marker #=> String
    #   resp.distribution_id_list.next_marker #=> String
    #   resp.distribution_id_list.max_items #=> Integer
    #   resp.distribution_id_list.is_truncated #=> Boolean
    #   resp.distribution_id_list.quantity #=> Integer
    #   resp.distribution_id_list.items #=> Array
    #   resp.distribution_id_list.items[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByKeyGroup AWS API Documentation
    #
    # @overload list_distributions_by_key_group(params = {})
    # @param [Hash] params ({})
    def list_distributions_by_key_group(params = {}, options = {})
      req = build_request(:list_distributions_by_key_group, params)
      req.send_request(options)
    end

    # Gets a list of distribution IDs for distributions that have a cache
    # behavior that's associated with the specified origin request policy.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distribution IDs. The response includes distribution IDs
    #   in the list that occur after the marker. To get the next page of the
    #   list, set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of distribution IDs that you want in the response.
    #
    # @option params [required, String] :origin_request_policy_id
    #   The ID of the origin request policy whose associated distribution IDs
    #   you want to list.
    #
    # @return [Types::ListDistributionsByOriginRequestPolicyIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionsByOriginRequestPolicyIdResult#distribution_id_list #distribution_id_list} => Types::DistributionIdList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_origin_request_policy_id({
    #     marker: "string",
    #     max_items: 1,
    #     origin_request_policy_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_id_list.marker #=> String
    #   resp.distribution_id_list.next_marker #=> String
    #   resp.distribution_id_list.max_items #=> Integer
    #   resp.distribution_id_list.is_truncated #=> Boolean
    #   resp.distribution_id_list.quantity #=> Integer
    #   resp.distribution_id_list.items #=> Array
    #   resp.distribution_id_list.items[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByOriginRequestPolicyId AWS API Documentation
    #
    # @overload list_distributions_by_origin_request_policy_id(params = {})
    # @param [Hash] params ({})
    def list_distributions_by_origin_request_policy_id(params = {}, options = {})
      req = build_request(:list_distributions_by_origin_request_policy_id, params)
      req.send_request(options)
    end

    # Gets a list of distributions that have a cache behavior that's
    # associated with the specified real-time log configuration.
    #
    # You can specify the real-time log configuration by its name or its
    # Amazon Resource Name (ARN). You must provide at least one. If you
    # provide both, CloudFront uses the name to identify the real-time log
    # configuration to list distributions for.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distributions. The response includes distributions in the
    #   list that occur after the marker. To get the next page of the list,
    #   set this field's value to the value of `NextMarker` from the current
    #   page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of distributions that you want in the response.
    #
    # @option params [String] :realtime_log_config_name
    #   The name of the real-time log configuration whose associated
    #   distributions you want to list.
    #
    # @option params [String] :realtime_log_config_arn
    #   The Amazon Resource Name (ARN) of the real-time log configuration
    #   whose associated distributions you want to list.
    #
    # @return [Types::ListDistributionsByRealtimeLogConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionsByRealtimeLogConfigResult#distribution_list #distribution_list} => Types::DistributionList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_realtime_log_config({
    #     marker: "string",
    #     max_items: 1,
    #     realtime_log_config_name: "string",
    #     realtime_log_config_arn: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_list.marker #=> String
    #   resp.distribution_list.next_marker #=> String
    #   resp.distribution_list.max_items #=> Integer
    #   resp.distribution_list.is_truncated #=> Boolean
    #   resp.distribution_list.quantity #=> Integer
    #   resp.distribution_list.items #=> Array
    #   resp.distribution_list.items[0].id #=> String
    #   resp.distribution_list.items[0].arn #=> String
    #   resp.distribution_list.items[0].status #=> String
    #   resp.distribution_list.items[0].last_modified_time #=> Time
    #   resp.distribution_list.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.distribution_list.items[0].aliases.items #=> Array
    #   resp.distribution_list.items[0].aliases.items[0] #=> String
    #   resp.distribution_list.items[0].origins.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].id #=> String
    #   resp.distribution_list.items[0].origins.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_path #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_attempts #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_access_control_id #=> String
    #   resp.distribution_list.items[0].origin_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items #=> Array
    #   resp.distribution_list.items[0].origin_groups.items[0].id #=> String
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items #=> Array
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.compress #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.quantity #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items #=> Array
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_list.items[0].comment #=> String
    #   resp.distribution_list.items[0].price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution_list.items[0].enabled #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_list.items[0].viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_list.items[0].viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution_list.items[0].viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution_list.items[0].viewer_certificate.certificate #=> String
    #   resp.distribution_list.items[0].viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items #=> Array
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_list.items[0].web_acl_id #=> String
    #   resp.distribution_list.items[0].http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution_list.items[0].is_ipv6_enabled #=> Boolean
    #   resp.distribution_list.items[0].alias_icp_recordals #=> Array
    #   resp.distribution_list.items[0].alias_icp_recordals[0].cname #=> String
    #   resp.distribution_list.items[0].alias_icp_recordals[0].icp_recordal_status #=> String, one of "APPROVED", "SUSPENDED", "PENDING"
    #   resp.distribution_list.items[0].staging #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByRealtimeLogConfig AWS API Documentation
    #
    # @overload list_distributions_by_realtime_log_config(params = {})
    # @param [Hash] params ({})
    def list_distributions_by_realtime_log_config(params = {}, options = {})
      req = build_request(:list_distributions_by_realtime_log_config, params)
      req.send_request(options)
    end

    # Gets a list of distribution IDs for distributions that have a cache
    # behavior that's associated with the specified response headers
    # policy.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distribution IDs. The response includes distribution IDs
    #   in the list that occur after the marker. To get the next page of the
    #   list, set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of distribution IDs that you want to get in the
    #   response.
    #
    # @option params [required, String] :response_headers_policy_id
    #   The ID of the response headers policy whose associated distribution
    #   IDs you want to list.
    #
    # @return [Types::ListDistributionsByResponseHeadersPolicyIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionsByResponseHeadersPolicyIdResult#distribution_id_list #distribution_id_list} => Types::DistributionIdList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_response_headers_policy_id({
    #     marker: "string",
    #     max_items: 1,
    #     response_headers_policy_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_id_list.marker #=> String
    #   resp.distribution_id_list.next_marker #=> String
    #   resp.distribution_id_list.max_items #=> Integer
    #   resp.distribution_id_list.is_truncated #=> Boolean
    #   resp.distribution_id_list.quantity #=> Integer
    #   resp.distribution_id_list.items #=> Array
    #   resp.distribution_id_list.items[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByResponseHeadersPolicyId AWS API Documentation
    #
    # @overload list_distributions_by_response_headers_policy_id(params = {})
    # @param [Hash] params ({})
    def list_distributions_by_response_headers_policy_id(params = {}, options = {})
      req = build_request(:list_distributions_by_response_headers_policy_id, params)
      req.send_request(options)
    end

    # List the distributions that are associated with a specified WAF web
    # ACL.
    #
    # @option params [String] :marker
    #   Use `Marker` and `MaxItems` to control pagination of results. If you
    #   have more than `MaxItems` distributions that satisfy the request, the
    #   response includes a `NextMarker` element. To get the next page of
    #   results, submit another request. For the value of `Marker`, specify
    #   the value of `NextMarker` from the last response. (For the first
    #   request, omit `Marker`.)
    #
    # @option params [Integer] :max_items
    #   The maximum number of distributions that you want CloudFront to return
    #   in the response body. The maximum and default values are both 100.
    #
    # @option params [required, String] :web_acl_id
    #   The ID of the WAF web ACL that you want to list the associated
    #   distributions. If you specify "null" for the ID, the request returns
    #   a list of the distributions that aren't associated with a web ACL.
    #
    #   For WAFV2, this is the ARN of the web ACL, such as
    #   `arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111`.
    #
    #   For WAF Classic, this is the ID of the web ACL, such as
    #   `a1b2c3d4-5678-90ab-cdef-EXAMPLE11111`.
    #
    # @return [Types::ListDistributionsByWebACLIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionsByWebACLIdResult#distribution_list #distribution_list} => Types::DistributionList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_web_acl_id({
    #     marker: "string",
    #     max_items: 1,
    #     web_acl_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_list.marker #=> String
    #   resp.distribution_list.next_marker #=> String
    #   resp.distribution_list.max_items #=> Integer
    #   resp.distribution_list.is_truncated #=> Boolean
    #   resp.distribution_list.quantity #=> Integer
    #   resp.distribution_list.items #=> Array
    #   resp.distribution_list.items[0].id #=> String
    #   resp.distribution_list.items[0].arn #=> String
    #   resp.distribution_list.items[0].status #=> String
    #   resp.distribution_list.items[0].last_modified_time #=> Time
    #   resp.distribution_list.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.distribution_list.items[0].aliases.items #=> Array
    #   resp.distribution_list.items[0].aliases.items[0] #=> String
    #   resp.distribution_list.items[0].origins.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].id #=> String
    #   resp.distribution_list.items[0].origins.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_path #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_attempts #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_access_control_id #=> String
    #   resp.distribution_list.items[0].origin_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items #=> Array
    #   resp.distribution_list.items[0].origin_groups.items[0].id #=> String
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items #=> Array
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.compress #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.quantity #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items #=> Array
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_list.items[0].comment #=> String
    #   resp.distribution_list.items[0].price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution_list.items[0].enabled #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_list.items[0].viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_list.items[0].viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution_list.items[0].viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution_list.items[0].viewer_certificate.certificate #=> String
    #   resp.distribution_list.items[0].viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items #=> Array
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_list.items[0].web_acl_id #=> String
    #   resp.distribution_list.items[0].http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution_list.items[0].is_ipv6_enabled #=> Boolean
    #   resp.distribution_list.items[0].alias_icp_recordals #=> Array
    #   resp.distribution_list.items[0].alias_icp_recordals[0].cname #=> String
    #   resp.distribution_list.items[0].alias_icp_recordals[0].icp_recordal_status #=> String, one of "APPROVED", "SUSPENDED", "PENDING"
    #   resp.distribution_list.items[0].staging #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByWebACLId AWS API Documentation
    #
    # @overload list_distributions_by_web_acl_id(params = {})
    # @param [Hash] params ({})
    def list_distributions_by_web_acl_id(params = {}, options = {})
      req = build_request(:list_distributions_by_web_acl_id, params)
      req.send_request(options)
    end

    # List all field-level encryption configurations that have been created
    # in CloudFront for this account.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of configurations. The results include configurations in the list
    #   that occur after the marker. To get the next page of results, set the
    #   `Marker` to the value of the `NextMarker` from the current page's
    #   response (which is also the ID of the last configuration on that
    #   page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of field-level encryption configurations you want
    #   in the response body.
    #
    # @return [Types::ListFieldLevelEncryptionConfigsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFieldLevelEncryptionConfigsResult#field_level_encryption_list #field_level_encryption_list} => Types::FieldLevelEncryptionList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_field_level_encryption_configs({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_list.next_marker #=> String
    #   resp.field_level_encryption_list.max_items #=> Integer
    #   resp.field_level_encryption_list.quantity #=> Integer
    #   resp.field_level_encryption_list.items #=> Array
    #   resp.field_level_encryption_list.items[0].id #=> String
    #   resp.field_level_encryption_list.items[0].last_modified_time #=> Time
    #   resp.field_level_encryption_list.items[0].comment #=> String
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListFieldLevelEncryptionConfigs AWS API Documentation
    #
    # @overload list_field_level_encryption_configs(params = {})
    # @param [Hash] params ({})
    def list_field_level_encryption_configs(params = {}, options = {})
      req = build_request(:list_field_level_encryption_configs, params)
      req.send_request(options)
    end

    # Request a list of field-level encryption profiles that have been
    # created in CloudFront for this account.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of profiles. The results include profiles in the list that occur
    #   after the marker. To get the next page of results, set the `Marker` to
    #   the value of the `NextMarker` from the current page's response (which
    #   is also the ID of the last profile on that page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of field-level encryption profiles you want in the
    #   response body.
    #
    # @return [Types::ListFieldLevelEncryptionProfilesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFieldLevelEncryptionProfilesResult#field_level_encryption_profile_list #field_level_encryption_profile_list} => Types::FieldLevelEncryptionProfileList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_field_level_encryption_profiles({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile_list.next_marker #=> String
    #   resp.field_level_encryption_profile_list.max_items #=> Integer
    #   resp.field_level_encryption_profile_list.quantity #=> Integer
    #   resp.field_level_encryption_profile_list.items #=> Array
    #   resp.field_level_encryption_profile_list.items[0].id #=> String
    #   resp.field_level_encryption_profile_list.items[0].last_modified_time #=> Time
    #   resp.field_level_encryption_profile_list.items[0].name #=> String
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.field_level_encryption_profile_list.items[0].comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListFieldLevelEncryptionProfiles AWS API Documentation
    #
    # @overload list_field_level_encryption_profiles(params = {})
    # @param [Hash] params ({})
    def list_field_level_encryption_profiles(params = {}, options = {})
      req = build_request(:list_field_level_encryption_profiles, params)
      req.send_request(options)
    end

    # Gets a list of all CloudFront functions in your Amazon Web Services
    # account.
    #
    # You can optionally apply a filter to return only the functions that
    # are in the specified stage, either `DEVELOPMENT` or `LIVE`.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of functions. The response includes functions in the list
    #   that occur after the marker. To get the next page of the list, set
    #   this field's value to the value of `NextMarker` from the current
    #   page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of functions that you want in the response.
    #
    # @option params [String] :stage
    #   An optional filter to return only the functions that are in the
    #   specified stage, either `DEVELOPMENT` or `LIVE`.
    #
    # @return [Types::ListFunctionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionsResult#function_list #function_list} => Types::FunctionList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions({
    #     marker: "string",
    #     max_items: 1,
    #     stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.function_list.next_marker #=> String
    #   resp.function_list.max_items #=> Integer
    #   resp.function_list.quantity #=> Integer
    #   resp.function_list.items #=> Array
    #   resp.function_list.items[0].name #=> String
    #   resp.function_list.items[0].status #=> String
    #   resp.function_list.items[0].function_config.comment #=> String
    #   resp.function_list.items[0].function_config.runtime #=> String, one of "cloudfront-js-1.0", "cloudfront-js-2.0"
    #   resp.function_list.items[0].function_config.key_value_store_associations.quantity #=> Integer
    #   resp.function_list.items[0].function_config.key_value_store_associations.items #=> Array
    #   resp.function_list.items[0].function_config.key_value_store_associations.items[0].key_value_store_arn #=> String
    #   resp.function_list.items[0].function_metadata.function_arn #=> String
    #   resp.function_list.items[0].function_metadata.stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.function_list.items[0].function_metadata.created_time #=> Time
    #   resp.function_list.items[0].function_metadata.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListFunctions AWS API Documentation
    #
    # @overload list_functions(params = {})
    # @param [Hash] params ({})
    def list_functions(params = {}, options = {})
      req = build_request(:list_functions, params)
      req.send_request(options)
    end

    # Lists invalidation batches.
    #
    # @option params [required, String] :distribution_id
    #   The distribution's ID.
    #
    # @option params [String] :marker
    #   Use this parameter when paginating results to indicate where to begin
    #   in your list of invalidation batches. Because the results are returned
    #   in decreasing order from most recent to oldest, the most recent
    #   results are on the first page, the second page will contain earlier
    #   results, and so on. To get the next page of results, set `Marker` to
    #   the value of the `NextMarker` from the current page's response. This
    #   value is the same as the ID of the last invalidation batch on that
    #   page.
    #
    # @option params [Integer] :max_items
    #   The maximum number of invalidation batches that you want in the
    #   response body.
    #
    # @return [Types::ListInvalidationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvalidationsResult#invalidation_list #invalidation_list} => Types::InvalidationList
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invalidations({
    #     distribution_id: "string", # required
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.invalidation_list.marker #=> String
    #   resp.invalidation_list.next_marker #=> String
    #   resp.invalidation_list.max_items #=> Integer
    #   resp.invalidation_list.is_truncated #=> Boolean
    #   resp.invalidation_list.quantity #=> Integer
    #   resp.invalidation_list.items #=> Array
    #   resp.invalidation_list.items[0].id #=> String
    #   resp.invalidation_list.items[0].create_time #=> Time
    #   resp.invalidation_list.items[0].status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListInvalidations AWS API Documentation
    #
    # @overload list_invalidations(params = {})
    # @param [Hash] params ({})
    def list_invalidations(params = {}, options = {})
      req = build_request(:list_invalidations, params)
      req.send_request(options)
    end

    # Gets a list of key groups.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of key groups. The response includes key groups in the list
    #   that occur after the marker. To get the next page of the list, set
    #   this field's value to the value of `NextMarker` from the current
    #   page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of key groups that you want in the response.
    #
    # @return [Types::ListKeyGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeyGroupsResult#key_group_list #key_group_list} => Types::KeyGroupList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_key_groups({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.key_group_list.next_marker #=> String
    #   resp.key_group_list.max_items #=> Integer
    #   resp.key_group_list.quantity #=> Integer
    #   resp.key_group_list.items #=> Array
    #   resp.key_group_list.items[0].key_group.id #=> String
    #   resp.key_group_list.items[0].key_group.last_modified_time #=> Time
    #   resp.key_group_list.items[0].key_group.key_group_config.name #=> String
    #   resp.key_group_list.items[0].key_group.key_group_config.items #=> Array
    #   resp.key_group_list.items[0].key_group.key_group_config.items[0] #=> String
    #   resp.key_group_list.items[0].key_group.key_group_config.comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListKeyGroups AWS API Documentation
    #
    # @overload list_key_groups(params = {})
    # @param [Hash] params ({})
    def list_key_groups(params = {}, options = {})
      req = build_request(:list_key_groups, params)
      req.send_request(options)
    end

    # Specifies the key value stores to list.
    #
    # @option params [String] :marker
    #   The marker associated with the key value stores list.
    #
    # @option params [Integer] :max_items
    #   The maximum number of items in the key value stores list.
    #
    # @option params [String] :status
    #   The status of the request for the key value stores list.
    #
    # @return [Types::ListKeyValueStoresResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeyValueStoresResult#key_value_store_list #key_value_store_list} => Types::KeyValueStoreList
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get a list of KeyValueStores
    #
    #   # The following command retrieves a list of KeyValueStores with READY status.
    #
    #   resp = client.list_key_value_stores({
    #     marker: "", 
    #     max_items: 100, 
    #     status: "READY", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_value_store_list: {
    #       items: [
    #         {
    #           arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #           comment: "", 
    #           id: "54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #           last_modified_time: Time.parse("2023-11-07T18:45:21.069Z"), 
    #           name: "my-keyvaluestore-name", 
    #           status: "READY", 
    #         }, 
    #       ], 
    #       max_items: 100, 
    #       next_marker: "", 
    #       quantity: 1, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_key_value_stores({
    #     marker: "string",
    #     max_items: 1,
    #     status: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.key_value_store_list.next_marker #=> String
    #   resp.key_value_store_list.max_items #=> Integer
    #   resp.key_value_store_list.quantity #=> Integer
    #   resp.key_value_store_list.items #=> Array
    #   resp.key_value_store_list.items[0].name #=> String
    #   resp.key_value_store_list.items[0].id #=> String
    #   resp.key_value_store_list.items[0].comment #=> String
    #   resp.key_value_store_list.items[0].arn #=> String
    #   resp.key_value_store_list.items[0].status #=> String
    #   resp.key_value_store_list.items[0].last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListKeyValueStores AWS API Documentation
    #
    # @overload list_key_value_stores(params = {})
    # @param [Hash] params ({})
    def list_key_value_stores(params = {}, options = {})
      req = build_request(:list_key_value_stores, params)
      req.send_request(options)
    end

    # Gets the list of CloudFront origin access controls in this Amazon Web
    # Services account.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send another request that
    # specifies the `NextMarker` value from the current response as the
    # `Marker` value in the next request.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of origin access controls. The response includes the items
    #   in the list that occur after the marker. To get the next page of the
    #   list, set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of origin access controls that you want in the
    #   response.
    #
    # @return [Types::ListOriginAccessControlsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOriginAccessControlsResult#origin_access_control_list #origin_access_control_list} => Types::OriginAccessControlList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_origin_access_controls({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_access_control_list.marker #=> String
    #   resp.origin_access_control_list.next_marker #=> String
    #   resp.origin_access_control_list.max_items #=> Integer
    #   resp.origin_access_control_list.is_truncated #=> Boolean
    #   resp.origin_access_control_list.quantity #=> Integer
    #   resp.origin_access_control_list.items #=> Array
    #   resp.origin_access_control_list.items[0].id #=> String
    #   resp.origin_access_control_list.items[0].description #=> String
    #   resp.origin_access_control_list.items[0].name #=> String
    #   resp.origin_access_control_list.items[0].signing_protocol #=> String, one of "sigv4"
    #   resp.origin_access_control_list.items[0].signing_behavior #=> String, one of "never", "always", "no-override"
    #   resp.origin_access_control_list.items[0].origin_access_control_origin_type #=> String, one of "s3", "mediastore", "mediapackagev2", "lambda"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListOriginAccessControls AWS API Documentation
    #
    # @overload list_origin_access_controls(params = {})
    # @param [Hash] params ({})
    def list_origin_access_controls(params = {}, options = {})
      req = build_request(:list_origin_access_controls, params)
      req.send_request(options)
    end

    # Gets a list of origin request policies.
    #
    # You can optionally apply a filter to return only the managed policies
    # created by Amazon Web Services, or only the custom policies created in
    # your Amazon Web Services account.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :type
    #   A filter to return only the specified kinds of origin request
    #   policies. Valid values are:
    #
    #   * `managed` – Returns only the managed policies created by Amazon Web
    #     Services.
    #
    #   * `custom` – Returns only the custom policies created in your Amazon
    #     Web Services account.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of origin request policies. The response includes origin
    #   request policies in the list that occur after the marker. To get the
    #   next page of the list, set this field's value to the value of
    #   `NextMarker` from the current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of origin request policies that you want in the
    #   response.
    #
    # @return [Types::ListOriginRequestPoliciesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOriginRequestPoliciesResult#origin_request_policy_list #origin_request_policy_list} => Types::OriginRequestPolicyList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_origin_request_policies({
    #     type: "managed", # accepts managed, custom
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_request_policy_list.next_marker #=> String
    #   resp.origin_request_policy_list.max_items #=> Integer
    #   resp.origin_request_policy_list.quantity #=> Integer
    #   resp.origin_request_policy_list.items #=> Array
    #   resp.origin_request_policy_list.items[0].type #=> String, one of "managed", "custom"
    #   resp.origin_request_policy_list.items[0].origin_request_policy.id #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.last_modified_time #=> Time
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.name #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config.header_behavior #=> String, one of "none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config.headers.items #=> Array
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config.cookies.items #=> Array
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items #=> Array
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListOriginRequestPolicies AWS API Documentation
    #
    # @overload list_origin_request_policies(params = {})
    # @param [Hash] params ({})
    def list_origin_request_policies(params = {}, options = {})
      req = build_request(:list_origin_request_policies, params)
      req.send_request(options)
    end

    # List all public keys that have been added to CloudFront for this
    # account.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of public keys. The results include public keys in the list that
    #   occur after the marker. To get the next page of results, set the
    #   `Marker` to the value of the `NextMarker` from the current page's
    #   response (which is also the ID of the last public key on that page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of public keys you want in the response body.
    #
    # @return [Types::ListPublicKeysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPublicKeysResult#public_key_list #public_key_list} => Types::PublicKeyList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_public_keys({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key_list.next_marker #=> String
    #   resp.public_key_list.max_items #=> Integer
    #   resp.public_key_list.quantity #=> Integer
    #   resp.public_key_list.items #=> Array
    #   resp.public_key_list.items[0].id #=> String
    #   resp.public_key_list.items[0].name #=> String
    #   resp.public_key_list.items[0].created_time #=> Time
    #   resp.public_key_list.items[0].encoded_key #=> String
    #   resp.public_key_list.items[0].comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListPublicKeys AWS API Documentation
    #
    # @overload list_public_keys(params = {})
    # @param [Hash] params ({})
    def list_public_keys(params = {}, options = {})
      req = build_request(:list_public_keys, params)
      req.send_request(options)
    end

    # Gets a list of real-time log configurations.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [Integer] :max_items
    #   The maximum number of real-time log configurations that you want in
    #   the response.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of real-time log configurations. The response includes
    #   real-time log configurations in the list that occur after the marker.
    #   To get the next page of the list, set this field's value to the value
    #   of `NextMarker` from the current page's response.
    #
    # @return [Types::ListRealtimeLogConfigsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRealtimeLogConfigsResult#realtime_log_configs #realtime_log_configs} => Types::RealtimeLogConfigs
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_realtime_log_configs({
    #     max_items: 1,
    #     marker: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.realtime_log_configs.max_items #=> Integer
    #   resp.realtime_log_configs.items #=> Array
    #   resp.realtime_log_configs.items[0].arn #=> String
    #   resp.realtime_log_configs.items[0].name #=> String
    #   resp.realtime_log_configs.items[0].sampling_rate #=> Integer
    #   resp.realtime_log_configs.items[0].end_points #=> Array
    #   resp.realtime_log_configs.items[0].end_points[0].stream_type #=> String
    #   resp.realtime_log_configs.items[0].end_points[0].kinesis_stream_config.role_arn #=> String
    #   resp.realtime_log_configs.items[0].end_points[0].kinesis_stream_config.stream_arn #=> String
    #   resp.realtime_log_configs.items[0].fields #=> Array
    #   resp.realtime_log_configs.items[0].fields[0] #=> String
    #   resp.realtime_log_configs.is_truncated #=> Boolean
    #   resp.realtime_log_configs.marker #=> String
    #   resp.realtime_log_configs.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListRealtimeLogConfigs AWS API Documentation
    #
    # @overload list_realtime_log_configs(params = {})
    # @param [Hash] params ({})
    def list_realtime_log_configs(params = {}, options = {})
      req = build_request(:list_realtime_log_configs, params)
      req.send_request(options)
    end

    # Gets a list of response headers policies.
    #
    # You can optionally apply a filter to get only the managed policies
    # created by Amazon Web Services, or only the custom policies created in
    # your Amazon Web Services account.
    #
    # You can optionally specify the maximum number of items to receive in
    # the response. If the total number of items in the list exceeds the
    # maximum that you specify, or the default maximum, the response is
    # paginated. To get the next page of items, send a subsequent request
    # that specifies the `NextMarker` value from the current response as the
    # `Marker` value in the subsequent request.
    #
    # @option params [String] :type
    #   A filter to get only the specified kind of response headers policies.
    #   Valid values are:
    #
    #   * `managed` – Gets only the managed policies created by Amazon Web
    #     Services.
    #
    #   * `custom` – Gets only the custom policies created in your Amazon Web
    #     Services account.
    #
    # @option params [String] :marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of response headers policies. The response includes response
    #   headers policies in the list that occur after the marker. To get the
    #   next page of the list, set this field's value to the value of
    #   `NextMarker` from the current page's response.
    #
    # @option params [Integer] :max_items
    #   The maximum number of response headers policies that you want to get
    #   in the response.
    #
    # @return [Types::ListResponseHeadersPoliciesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResponseHeadersPoliciesResult#response_headers_policy_list #response_headers_policy_list} => Types::ResponseHeadersPolicyList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_response_headers_policies({
    #     type: "managed", # accepts managed, custom
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.response_headers_policy_list.next_marker #=> String
    #   resp.response_headers_policy_list.max_items #=> Integer
    #   resp.response_headers_policy_list.quantity #=> Integer
    #   resp.response_headers_policy_list.items #=> Array
    #   resp.response_headers_policy_list.items[0].type #=> String, one of "managed", "custom"
    #   resp.response_headers_policy_list.items[0].response_headers_policy.id #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.last_modified_time #=> Time
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.name #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of "GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of "DENY", "SAMEORIGIN"
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of "no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.server_timing_headers_config.enabled #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.server_timing_headers_config.sampling_rate #=> Float
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.items #=> Array
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.remove_headers_config.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.remove_headers_config.items #=> Array
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.remove_headers_config.items[0].header #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListResponseHeadersPolicies AWS API Documentation
    #
    # @overload list_response_headers_policies(params = {})
    # @param [Hash] params ({})
    def list_response_headers_policies(params = {}, options = {})
      req = build_request(:list_response_headers_policies, params)
      req.send_request(options)
    end

    # List streaming distributions.
    #
    # @option params [String] :marker
    #   The value that you provided for the `Marker` request parameter.
    #
    # @option params [Integer] :max_items
    #   The value that you provided for the `MaxItems` request parameter.
    #
    # @return [Types::ListStreamingDistributionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamingDistributionsResult#streaming_distribution_list #streaming_distribution_list} => Types::StreamingDistributionList
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streaming_distributions({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution_list.marker #=> String
    #   resp.streaming_distribution_list.next_marker #=> String
    #   resp.streaming_distribution_list.max_items #=> Integer
    #   resp.streaming_distribution_list.is_truncated #=> Boolean
    #   resp.streaming_distribution_list.quantity #=> Integer
    #   resp.streaming_distribution_list.items #=> Array
    #   resp.streaming_distribution_list.items[0].id #=> String
    #   resp.streaming_distribution_list.items[0].arn #=> String
    #   resp.streaming_distribution_list.items[0].status #=> String
    #   resp.streaming_distribution_list.items[0].last_modified_time #=> Time
    #   resp.streaming_distribution_list.items[0].domain_name #=> String
    #   resp.streaming_distribution_list.items[0].s3_origin.domain_name #=> String
    #   resp.streaming_distribution_list.items[0].s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.streaming_distribution_list.items[0].aliases.items #=> Array
    #   resp.streaming_distribution_list.items[0].aliases.items[0] #=> String
    #   resp.streaming_distribution_list.items[0].trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution_list.items[0].trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution_list.items[0].trusted_signers.items #=> Array
    #   resp.streaming_distribution_list.items[0].trusted_signers.items[0] #=> String
    #   resp.streaming_distribution_list.items[0].comment #=> String
    #   resp.streaming_distribution_list.items[0].price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution_list.items[0].enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListStreamingDistributions AWS API Documentation
    #
    # @overload list_streaming_distributions(params = {})
    # @param [Hash] params ({})
    def list_streaming_distributions(params = {}, options = {})
      req = build_request(:list_streaming_distributions, params)
      req.send_request(options)
    end

    # List tags for a CloudFront resource. For more information, see
    # [Tagging a distribution][1] in the *Amazon CloudFront Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html
    #
    # @option params [required, String] :resource
    #   An ARN of a CloudFront resource.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tags #tags} => Types::Tags
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource: "ResourceARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags.items #=> Array
    #   resp.tags.items[0].key #=> String
    #   resp.tags.items[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Publishes a CloudFront function by copying the function code from the
    # `DEVELOPMENT` stage to `LIVE`. This automatically updates all cache
    # behaviors that are using this function to use the newly published copy
    # in the `LIVE` stage.
    #
    # When a function is published to the `LIVE` stage, you can attach the
    # function to a distribution's cache behavior, using the function's
    # Amazon Resource Name (ARN).
    #
    # To publish a function, you must provide the function's name and
    # version (`ETag` value). To get these values, you can use
    # `ListFunctions` and `DescribeFunction`.
    #
    # @option params [required, String] :name
    #   The name of the function that you are publishing.
    #
    # @option params [required, String] :if_match
    #   The current version (`ETag` value) of the function that you are
    #   publishing, which you can get using `DescribeFunction`.
    #
    # @return [Types::PublishFunctionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishFunctionResult#function_summary #function_summary} => Types::FunctionSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_function({
    #     name: "string", # required
    #     if_match: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_summary.name #=> String
    #   resp.function_summary.status #=> String
    #   resp.function_summary.function_config.comment #=> String
    #   resp.function_summary.function_config.runtime #=> String, one of "cloudfront-js-1.0", "cloudfront-js-2.0"
    #   resp.function_summary.function_config.key_value_store_associations.quantity #=> Integer
    #   resp.function_summary.function_config.key_value_store_associations.items #=> Array
    #   resp.function_summary.function_config.key_value_store_associations.items[0].key_value_store_arn #=> String
    #   resp.function_summary.function_metadata.function_arn #=> String
    #   resp.function_summary.function_metadata.stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.function_summary.function_metadata.created_time #=> Time
    #   resp.function_summary.function_metadata.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PublishFunction AWS API Documentation
    #
    # @overload publish_function(params = {})
    # @param [Hash] params ({})
    def publish_function(params = {}, options = {})
      req = build_request(:publish_function, params)
      req.send_request(options)
    end

    # Add tags to a CloudFront resource. For more information, see [Tagging
    # a distribution][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html
    #
    # @option params [required, String] :resource
    #   An ARN of a CloudFront resource.
    #
    # @option params [required, Types::Tags] :tags
    #   A complex type that contains zero or more `Tag` elements.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource: "ResourceARN", # required
    #     tags: { # required
    #       items: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Tests a CloudFront function.
    #
    # To test a function, you provide an *event object* that represents an
    # HTTP request or response that your CloudFront distribution could
    # receive in production. CloudFront runs the function, passing it the
    # event object that you provided, and returns the function's result
    # (the modified event object) in the response. The response also
    # contains function logs and error messages, if any exist. For more
    # information about testing functions, see [Testing functions][1] in the
    # *Amazon CloudFront Developer Guide*.
    #
    # To test a function, you provide the function's name and version
    # (`ETag` value) along with the event object. To get the function's
    # name and version, you can use `ListFunctions` and `DescribeFunction`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function
    #
    # @option params [required, String] :name
    #   The name of the function that you are testing.
    #
    # @option params [required, String] :if_match
    #   The current version (`ETag` value) of the function that you are
    #   testing, which you can get using `DescribeFunction`.
    #
    # @option params [String] :stage
    #   The stage of the function that you are testing, either `DEVELOPMENT`
    #   or `LIVE`.
    #
    # @option params [required, String, StringIO, File] :event_object
    #   The event object to test the function with. For more information about
    #   the structure of the event object, see [Testing functions][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function
    #
    # @return [Types::TestFunctionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestFunctionResult#test_result #test_result} => Types::TestResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_function({
    #     name: "string", # required
    #     if_match: "string", # required
    #     stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #     event_object: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_result.function_summary.name #=> String
    #   resp.test_result.function_summary.status #=> String
    #   resp.test_result.function_summary.function_config.comment #=> String
    #   resp.test_result.function_summary.function_config.runtime #=> String, one of "cloudfront-js-1.0", "cloudfront-js-2.0"
    #   resp.test_result.function_summary.function_config.key_value_store_associations.quantity #=> Integer
    #   resp.test_result.function_summary.function_config.key_value_store_associations.items #=> Array
    #   resp.test_result.function_summary.function_config.key_value_store_associations.items[0].key_value_store_arn #=> String
    #   resp.test_result.function_summary.function_metadata.function_arn #=> String
    #   resp.test_result.function_summary.function_metadata.stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.test_result.function_summary.function_metadata.created_time #=> Time
    #   resp.test_result.function_summary.function_metadata.last_modified_time #=> Time
    #   resp.test_result.compute_utilization #=> String
    #   resp.test_result.function_execution_logs #=> Array
    #   resp.test_result.function_execution_logs[0] #=> String
    #   resp.test_result.function_error_message #=> String
    #   resp.test_result.function_output #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TestFunction AWS API Documentation
    #
    # @overload test_function(params = {})
    # @param [Hash] params ({})
    def test_function(params = {}, options = {})
      req = build_request(:test_function, params)
      req.send_request(options)
    end

    # Remove tags from a CloudFront resource. For more information, see
    # [Tagging a distribution][1] in the *Amazon CloudFront Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html
    #
    # @option params [required, String] :resource
    #   An ARN of a CloudFront resource.
    #
    # @option params [required, Types::TagKeys] :tag_keys
    #   A complex type that contains zero or more `Tag` key elements.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource: "ResourceARN", # required
    #     tag_keys: { # required
    #       items: ["TagKey"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a cache policy configuration.
    #
    # When you update a cache policy configuration, all the fields are
    # updated with the values provided in the request. You cannot update
    # some fields independent of others. To update a cache policy
    # configuration:
    #
    # 1.  Use `GetCachePolicyConfig` to get the current configuration.
    #
    # 2.  Locally modify the fields in the cache policy configuration that
    #     you want to update.
    #
    # 3.  Call `UpdateCachePolicy` by providing the entire cache policy
    #     configuration, including the fields that you modified and those
    #     that you didn't.
    #
    # @option params [required, Types::CachePolicyConfig] :cache_policy_config
    #   A cache policy configuration.
    #
    # @option params [required, String] :id
    #   The unique identifier for the cache policy that you are updating. The
    #   identifier is returned in a cache behavior's `CachePolicyId` field in
    #   the response to `GetDistributionConfig`.
    #
    # @option params [String] :if_match
    #   The version of the cache policy that you are updating. The version is
    #   returned in the cache policy's `ETag` field in the response to
    #   `GetCachePolicyConfig`.
    #
    # @return [Types::UpdateCachePolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCachePolicyResult#cache_policy #cache_policy} => Types::CachePolicy
    #   * {Types::UpdateCachePolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cache_policy({
    #     cache_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       default_ttl: 1,
    #       max_ttl: 1,
    #       min_ttl: 1, # required
    #       parameters_in_cache_key_and_forwarded_to_origin: {
    #         enable_accept_encoding_gzip: false, # required
    #         enable_accept_encoding_brotli: false,
    #         headers_config: { # required
    #           header_behavior: "none", # required, accepts none, whitelist
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         cookies_config: { # required
    #           cookie_behavior: "none", # required, accepts none, whitelist, allExcept, all
    #           cookies: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         query_strings_config: { # required
    #           query_string_behavior: "none", # required, accepts none, whitelist, allExcept, all
    #           query_strings: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #       },
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_policy.id #=> String
    #   resp.cache_policy.last_modified_time #=> Time
    #   resp.cache_policy.cache_policy_config.comment #=> String
    #   resp.cache_policy.cache_policy_config.name #=> String
    #   resp.cache_policy.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of "none", "whitelist"
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "allExcept", "all"
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateCachePolicy AWS API Documentation
    #
    # @overload update_cache_policy(params = {})
    # @param [Hash] params ({})
    def update_cache_policy(params = {}, options = {})
      req = build_request(:update_cache_policy, params)
      req.send_request(options)
    end

    # Update an origin access identity.
    #
    # @option params [required, Types::CloudFrontOriginAccessIdentityConfig] :cloud_front_origin_access_identity_config
    #   The identity's configuration information.
    #
    # @option params [required, String] :id
    #   The identity's id.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   identity's configuration. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateCloudFrontOriginAccessIdentityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCloudFrontOriginAccessIdentityResult#cloud_front_origin_access_identity #cloud_front_origin_access_identity} => Types::CloudFrontOriginAccessIdentity
    #   * {Types::UpdateCloudFrontOriginAccessIdentityResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cloud_front_origin_access_identity({
    #     cloud_front_origin_access_identity_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string", # required
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity.id #=> String
    #   resp.cloud_front_origin_access_identity.s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateCloudFrontOriginAccessIdentity AWS API Documentation
    #
    # @overload update_cloud_front_origin_access_identity(params = {})
    # @param [Hash] params ({})
    def update_cloud_front_origin_access_identity(params = {}, options = {})
      req = build_request(:update_cloud_front_origin_access_identity, params)
      req.send_request(options)
    end

    # Updates a continuous deployment policy. You can update a continuous
    # deployment policy to enable or disable it, to change the percentage of
    # traffic that it sends to the staging distribution, or to change the
    # staging distribution that it sends traffic to.
    #
    # When you update a continuous deployment policy configuration, all the
    # fields are updated with the values that are provided in the request.
    # You cannot update some fields independent of others. To update a
    # continuous deployment policy configuration:
    #
    # 1.  Use `GetContinuousDeploymentPolicyConfig` to get the current
    #     configuration.
    #
    # 2.  Locally modify the fields in the continuous deployment policy
    #     configuration that you want to update.
    #
    # 3.  Use `UpdateContinuousDeploymentPolicy`, providing the entire
    #     continuous deployment policy configuration, including the fields
    #     that you modified and those that you didn't.
    #
    # @option params [required, Types::ContinuousDeploymentPolicyConfig] :continuous_deployment_policy_config
    #   The continuous deployment policy configuration.
    #
    # @option params [required, String] :id
    #   The identifier of the continuous deployment policy that you are
    #   updating.
    #
    # @option params [String] :if_match
    #   The current version (`ETag` value) of the continuous deployment policy
    #   that you are updating.
    #
    # @return [Types::UpdateContinuousDeploymentPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContinuousDeploymentPolicyResult#continuous_deployment_policy #continuous_deployment_policy} => Types::ContinuousDeploymentPolicy
    #   * {Types::UpdateContinuousDeploymentPolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_continuous_deployment_policy({
    #     continuous_deployment_policy_config: { # required
    #       staging_distribution_dns_names: { # required
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       enabled: false, # required
    #       traffic_config: {
    #         single_weight_config: {
    #           weight: 1.0, # required
    #           session_stickiness_config: {
    #             idle_ttl: 1, # required
    #             maximum_ttl: 1, # required
    #           },
    #         },
    #         single_header_config: {
    #           header: "string", # required
    #           value: "string", # required
    #         },
    #         type: "SingleWeight", # required, accepts SingleWeight, SingleHeader
    #       },
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.continuous_deployment_policy.id #=> String
    #   resp.continuous_deployment_policy.last_modified_time #=> Time
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.quantity #=> Integer
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.items #=> Array
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.staging_distribution_dns_names.items[0] #=> String
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.enabled #=> Boolean
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.weight #=> Float
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.idle_ttl #=> Integer
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_weight_config.session_stickiness_config.maximum_ttl #=> Integer
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_header_config.header #=> String
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.single_header_config.value #=> String
    #   resp.continuous_deployment_policy.continuous_deployment_policy_config.traffic_config.type #=> String, one of "SingleWeight", "SingleHeader"
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateContinuousDeploymentPolicy AWS API Documentation
    #
    # @overload update_continuous_deployment_policy(params = {})
    # @param [Hash] params ({})
    def update_continuous_deployment_policy(params = {}, options = {})
      req = build_request(:update_continuous_deployment_policy, params)
      req.send_request(options)
    end

    # Updates the configuration for a CloudFront distribution.
    #
    # The update process includes getting the current distribution
    # configuration, updating it to make your changes, and then submitting
    # an `UpdateDistribution` request to make the updates.
    #
    # **To update a web distribution using the CloudFront API**
    #
    # 1.  Use `GetDistributionConfig` to get the current configuration,
    #     including the version identifier (`ETag`).
    #
    # 2.  Update the distribution configuration that was returned in the
    #     response. Note the following important requirements and
    #     restrictions:
    #
    #     * You must rename the `ETag` field to `IfMatch`, leaving the value
    #       unchanged. (Set the value of `IfMatch` to the value of `ETag`,
    #       then remove the `ETag` field.)
    #
    #     * You can't change the value of `CallerReference`.
    #
    # 3.  Submit an `UpdateDistribution` request, providing the distribution
    #     configuration. The new configuration replaces the existing
    #     configuration. The values that you specify in an
    #     `UpdateDistribution` request are not merged into your existing
    #     configuration. Make sure to include all fields: the ones that you
    #     modified and also the ones that you didn't.
    #
    # @option params [required, Types::DistributionConfig] :distribution_config
    #   The distribution's configuration information.
    #
    # @option params [required, String] :id
    #   The distribution's id.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   distribution's configuration. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDistributionResult#distribution #distribution} => Types::Distribution
    #   * {Types::UpdateDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_distribution({
    #     distribution_config: { # required
    #       caller_reference: "string", # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       default_root_object: "string",
    #       origins: { # required
    #         quantity: 1, # required
    #         items: [ # required
    #           {
    #             id: "string", # required
    #             domain_name: "string", # required
    #             origin_path: "string",
    #             custom_headers: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   header_name: "string", # required
    #                   header_value: "sensitiveStringType", # required
    #                 },
    #               ],
    #             },
    #             s3_origin_config: {
    #               origin_access_identity: "string", # required
    #             },
    #             custom_origin_config: {
    #               http_port: 1, # required
    #               https_port: 1, # required
    #               origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
    #               origin_ssl_protocols: {
    #                 quantity: 1, # required
    #                 items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #               },
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1,
    #             },
    #             connection_attempts: 1,
    #             connection_timeout: 1,
    #             origin_shield: {
    #               enabled: false, # required
    #               origin_shield_region: "OriginShieldRegion",
    #             },
    #             origin_access_control_id: "string",
    #           },
    #         ],
    #       },
    #       origin_groups: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: "string", # required
    #             failover_criteria: { # required
    #               status_codes: { # required
    #                 quantity: 1, # required
    #                 items: [1], # required
    #               },
    #             },
    #             members: { # required
    #               quantity: 1, # required
    #               items: [ # required
    #                 {
    #                   origin_id: "string", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       },
    #       default_cache_behavior: { # required
    #         target_origin_id: "string", # required
    #         trusted_signers: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         trusted_key_groups: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #         allowed_methods: {
    #           quantity: 1, # required
    #           items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           cached_methods: {
    #             quantity: 1, # required
    #             items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           },
    #         },
    #         smooth_streaming: false,
    #         compress: false,
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: "LambdaFunctionARN", # required
    #               event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #               include_body: false,
    #             },
    #           ],
    #         },
    #         function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               function_arn: "FunctionARN", # required
    #               event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #             },
    #           ],
    #         },
    #         field_level_encryption_id: "string",
    #         realtime_log_config_arn: "string",
    #         cache_policy_id: "string",
    #         origin_request_policy_id: "string",
    #         response_headers_policy_id: "string",
    #         forwarded_values: {
    #           query_string: false, # required
    #           cookies: { # required
    #             forward: "none", # required, accepts none, whitelist, all
    #             whitelisted_names: {
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #           query_string_cache_keys: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         min_ttl: 1,
    #         default_ttl: 1,
    #         max_ttl: 1,
    #       },
    #       cache_behaviors: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             path_pattern: "string", # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #             viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #               },
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                   include_body: false,
    #                 },
    #               ],
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                 },
    #               ],
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none", # required, accepts none, whitelist, all
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1,
    #           },
    #         ],
    #       },
    #       custom_error_responses: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             error_code: 1, # required
    #             response_page_path: "string",
    #             response_code: "string",
    #             error_caching_min_ttl: 1,
    #           },
    #         ],
    #       },
    #       comment: "CommentType", # required
    #       logging: {
    #         enabled: false, # required
    #         include_cookies: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #       viewer_certificate: {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: "string",
    #         acm_certificate_arn: "string",
    #         ssl_support_method: "sni-only", # accepts sni-only, vip, static-ip
    #         minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #         certificate: "string",
    #         certificate_source: "cloudfront", # accepts cloudfront, iam, acm
    #       },
    #       restrictions: {
    #         geo_restriction: { # required
    #           restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #       web_acl_id: "string",
    #       http_version: "http1.1", # accepts http1.1, http2, http3, http2and3
    #       is_ipv6_enabled: false,
    #       continuous_deployment_policy_id: "string",
    #       staging: false,
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_access_control_id #=> String
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.distribution_config.continuous_deployment_policy_id #=> String
    #   resp.distribution.distribution_config.staging #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of "APPROVED", "SUSPENDED", "PENDING"
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateDistribution AWS API Documentation
    #
    # @overload update_distribution(params = {})
    # @param [Hash] params ({})
    def update_distribution(params = {}, options = {})
      req = build_request(:update_distribution, params)
      req.send_request(options)
    end

    # Copies the staging distribution's configuration to its corresponding
    # primary distribution. The primary distribution retains its `Aliases`
    # (also known as alternate domain names or CNAMEs) and
    # `ContinuousDeploymentPolicyId` value, but otherwise its configuration
    # is overwritten to match the staging distribution.
    #
    # You can use this operation in a continuous deployment workflow after
    # you have tested configuration changes on the staging distribution.
    # After using a continuous deployment policy to move a portion of your
    # domain name's traffic to the staging distribution and verifying that
    # it works as intended, you can use this operation to copy the staging
    # distribution's configuration to the primary distribution. This action
    # will disable the continuous deployment policy and move your domain's
    # traffic back to the primary distribution.
    #
    # This API operation requires the following IAM permissions:
    #
    # * [GetDistribution][1]
    #
    # * [UpdateDistribution][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html
    # [2]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
    #
    # @option params [required, String] :id
    #   The identifier of the primary distribution to which you are copying a
    #   staging distribution's configuration.
    #
    # @option params [String] :staging_distribution_id
    #   The identifier of the staging distribution whose configuration you are
    #   copying to the primary distribution.
    #
    # @option params [String] :if_match
    #   The current versions (`ETag` values) of both primary and staging
    #   distributions. Provide these in the following format:
    #
    #   `<primary ETag>, <staging ETag>`
    #
    # @return [Types::UpdateDistributionWithStagingConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDistributionWithStagingConfigResult#distribution #distribution} => Types::Distribution
    #   * {Types::UpdateDistributionWithStagingConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_distribution_with_staging_config({
    #     id: "string", # required
    #     staging_distribution_id: "string",
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_access_control_id #=> String
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip", "static-ip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2", "http3", "http2and3"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.distribution_config.continuous_deployment_policy_id #=> String
    #   resp.distribution.distribution_config.staging #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of "APPROVED", "SUSPENDED", "PENDING"
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateDistributionWithStagingConfig AWS API Documentation
    #
    # @overload update_distribution_with_staging_config(params = {})
    # @param [Hash] params ({})
    def update_distribution_with_staging_config(params = {}, options = {})
      req = build_request(:update_distribution_with_staging_config, params)
      req.send_request(options)
    end

    # Update a field-level encryption configuration.
    #
    # @option params [required, Types::FieldLevelEncryptionConfig] :field_level_encryption_config
    #   Request to update a field-level encryption configuration.
    #
    # @option params [required, String] :id
    #   The ID of the configuration you want to update.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   configuration identity to update. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateFieldLevelEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFieldLevelEncryptionConfigResult#field_level_encryption #field_level_encryption} => Types::FieldLevelEncryption
    #   * {Types::UpdateFieldLevelEncryptionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_field_level_encryption_config({
    #     field_level_encryption_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       query_arg_profile_config: {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: "string", # required
    #               profile_id: "string", # required
    #             },
    #           ],
    #         },
    #       },
    #       content_type_profile_config: {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: "URLEncoded", # required, accepts URLEncoded
    #               profile_id: "string",
    #               content_type: "string", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption.id #=> String
    #   resp.field_level_encryption.last_modified_time #=> Time
    #   resp.field_level_encryption.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateFieldLevelEncryptionConfig AWS API Documentation
    #
    # @overload update_field_level_encryption_config(params = {})
    # @param [Hash] params ({})
    def update_field_level_encryption_config(params = {}, options = {})
      req = build_request(:update_field_level_encryption_config, params)
      req.send_request(options)
    end

    # Update a field-level encryption profile.
    #
    # @option params [required, Types::FieldLevelEncryptionProfileConfig] :field_level_encryption_profile_config
    #   Request to update a field-level encryption profile.
    #
    # @option params [required, String] :id
    #   The ID of the field-level encryption profile request.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   profile identity to update. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateFieldLevelEncryptionProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFieldLevelEncryptionProfileResult#field_level_encryption_profile #field_level_encryption_profile} => Types::FieldLevelEncryptionProfile
    #   * {Types::UpdateFieldLevelEncryptionProfileResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_field_level_encryption_profile({
    #     field_level_encryption_profile_config: { # required
    #       name: "string", # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       encryption_entities: { # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: "string", # required
    #             provider_id: "string", # required
    #             field_patterns: { # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #         ],
    #       },
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile.id #=> String
    #   resp.field_level_encryption_profile.last_modified_time #=> Time
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.name #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateFieldLevelEncryptionProfile AWS API Documentation
    #
    # @overload update_field_level_encryption_profile(params = {})
    # @param [Hash] params ({})
    def update_field_level_encryption_profile(params = {}, options = {})
      req = build_request(:update_field_level_encryption_profile, params)
      req.send_request(options)
    end

    # Updates a CloudFront function.
    #
    # You can update a function's code or the comment that describes the
    # function. You cannot update a function's name.
    #
    # To update a function, you provide the function's name and version
    # (`ETag` value) along with the updated function code. To get the name
    # and version, you can use `ListFunctions` and `DescribeFunction`.
    #
    # @option params [required, String] :name
    #   The name of the function that you are updating.
    #
    # @option params [required, String] :if_match
    #   The current version (`ETag` value) of the function that you are
    #   updating, which you can get using `DescribeFunction`.
    #
    # @option params [required, Types::FunctionConfig] :function_config
    #   Configuration information about the function.
    #
    # @option params [required, String, StringIO, File] :function_code
    #   The function code. For more information about writing a CloudFront
    #   function, see [Writing function code for CloudFront Functions][1] in
    #   the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html
    #
    # @return [Types::UpdateFunctionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFunctionResult#function_summary #function_summary} => Types::FunctionSummary
    #   * {Types::UpdateFunctionResult#etag #etag} => String
    #
    #
    # @example Example: To update a function
    #
    #   # Use the following command to update a function.
    #
    #   resp = client.update_function({
    #     function_code: "function-code-changed.js", 
    #     function_config: {
    #       comment: "my-changed-comment", 
    #       key_value_store_associations: {
    #         items: [
    #           {
    #             key_value_store_arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #           }, 
    #         ], 
    #         quantity: 1, 
    #       }, 
    #       runtime: "cloudfront-js-2.0", 
    #     }, 
    #     if_match: "ETVPDKIKX0DER", 
    #     name: "my-function-name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     etag: "E3UN6WX5RRO2AG", 
    #     function_summary: {
    #       function_config: {
    #         comment: "my-changed-comment", 
    #         key_value_store_associations: {
    #           items: [
    #             {
    #               key_value_store_arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #             }, 
    #           ], 
    #           quantity: 1, 
    #         }, 
    #         runtime: "cloudfront-js-2.0", 
    #       }, 
    #       function_metadata: {
    #         created_time: Time.parse("2023-11-07T19:53:50.334Z"), 
    #         function_arn: "arn:aws:cloudfront::123456789012:function/my-function-name", 
    #         last_modified_time: Time.parse("2023-11-07T20:01:37.174Z"), 
    #         stage: "DEVELOPMENT", 
    #       }, 
    #       name: "my-function-name", 
    #       status: "UNPUBLISHED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function({
    #     name: "string", # required
    #     if_match: "string", # required
    #     function_config: { # required
    #       comment: "string", # required
    #       runtime: "cloudfront-js-1.0", # required, accepts cloudfront-js-1.0, cloudfront-js-2.0
    #       key_value_store_associations: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_value_store_arn: "KeyValueStoreARN", # required
    #           },
    #         ],
    #       },
    #     },
    #     function_code: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_summary.name #=> String
    #   resp.function_summary.status #=> String
    #   resp.function_summary.function_config.comment #=> String
    #   resp.function_summary.function_config.runtime #=> String, one of "cloudfront-js-1.0", "cloudfront-js-2.0"
    #   resp.function_summary.function_config.key_value_store_associations.quantity #=> Integer
    #   resp.function_summary.function_config.key_value_store_associations.items #=> Array
    #   resp.function_summary.function_config.key_value_store_associations.items[0].key_value_store_arn #=> String
    #   resp.function_summary.function_metadata.function_arn #=> String
    #   resp.function_summary.function_metadata.stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.function_summary.function_metadata.created_time #=> Time
    #   resp.function_summary.function_metadata.last_modified_time #=> Time
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateFunction AWS API Documentation
    #
    # @overload update_function(params = {})
    # @param [Hash] params ({})
    def update_function(params = {}, options = {})
      req = build_request(:update_function, params)
      req.send_request(options)
    end

    # Updates a key group.
    #
    # When you update a key group, all the fields are updated with the
    # values provided in the request. You cannot update some fields
    # independent of others. To update a key group:
    #
    # 1.  Get the current key group with `GetKeyGroup` or
    #     `GetKeyGroupConfig`.
    #
    # 2.  Locally modify the fields in the key group that you want to
    #     update. For example, add or remove public key IDs.
    #
    # 3.  Call `UpdateKeyGroup` with the entire key group object, including
    #     the fields that you modified and those that you didn't.
    #
    # @option params [required, Types::KeyGroupConfig] :key_group_config
    #   The key group configuration.
    #
    # @option params [required, String] :id
    #   The identifier of the key group that you are updating.
    #
    # @option params [String] :if_match
    #   The version of the key group that you are updating. The version is the
    #   key group's `ETag` value.
    #
    # @return [Types::UpdateKeyGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKeyGroupResult#key_group #key_group} => Types::KeyGroup
    #   * {Types::UpdateKeyGroupResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_key_group({
    #     key_group_config: { # required
    #       name: "string", # required
    #       items: ["string"], # required
    #       comment: "string",
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.key_group.id #=> String
    #   resp.key_group.last_modified_time #=> Time
    #   resp.key_group.key_group_config.name #=> String
    #   resp.key_group.key_group_config.items #=> Array
    #   resp.key_group.key_group_config.items[0] #=> String
    #   resp.key_group.key_group_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateKeyGroup AWS API Documentation
    #
    # @overload update_key_group(params = {})
    # @param [Hash] params ({})
    def update_key_group(params = {}, options = {})
      req = build_request(:update_key_group, params)
      req.send_request(options)
    end

    # Specifies the key value store to update.
    #
    # @option params [required, String] :name
    #   The name of the key value store to update.
    #
    # @option params [required, String] :comment
    #   The comment of the key value store to update.
    #
    # @option params [required, String] :if_match
    #   The key value store to update, if a match occurs.
    #
    # @return [Types::UpdateKeyValueStoreResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKeyValueStoreResult#key_value_store #key_value_store} => Types::KeyValueStore
    #   * {Types::UpdateKeyValueStoreResult#etag #etag} => String
    #
    #
    # @example Example: To update a KeyValueStore
    #
    #   # Use the following command to update a KeyValueStore.
    #
    #   resp = client.update_key_value_store({
    #     comment: "my-changed-comment", 
    #     if_match: "ETVPDKIKX0DER", 
    #     name: "my-keyvaluestore-name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     etag: "E3UN6WX5RRO2AG", 
    #     key_value_store: {
    #       arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #       comment: "my-changed-comment", 
    #       id: "54947df8-0e9e-4471-a2f9-9af509fb5889", 
    #       last_modified_time: Time.parse("2023-11-07T18:45:21.069Z"), 
    #       name: "my-keyvaluestore-name", 
    #       status: "READY", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_key_value_store({
    #     name: "KeyValueStoreName", # required
    #     comment: "KeyValueStoreComment", # required
    #     if_match: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_value_store.name #=> String
    #   resp.key_value_store.id #=> String
    #   resp.key_value_store.comment #=> String
    #   resp.key_value_store.arn #=> String
    #   resp.key_value_store.status #=> String
    #   resp.key_value_store.last_modified_time #=> Time
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateKeyValueStore AWS API Documentation
    #
    # @overload update_key_value_store(params = {})
    # @param [Hash] params ({})
    def update_key_value_store(params = {}, options = {})
      req = build_request(:update_key_value_store, params)
      req.send_request(options)
    end

    # Updates a CloudFront origin access control.
    #
    # @option params [required, Types::OriginAccessControlConfig] :origin_access_control_config
    #   An origin access control.
    #
    # @option params [required, String] :id
    #   The unique identifier of the origin access control that you are
    #   updating.
    #
    # @option params [String] :if_match
    #   The current version (`ETag` value) of the origin access control that
    #   you are updating.
    #
    # @return [Types::UpdateOriginAccessControlResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOriginAccessControlResult#origin_access_control #origin_access_control} => Types::OriginAccessControl
    #   * {Types::UpdateOriginAccessControlResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_origin_access_control({
    #     origin_access_control_config: { # required
    #       name: "string", # required
    #       description: "string",
    #       signing_protocol: "sigv4", # required, accepts sigv4
    #       signing_behavior: "never", # required, accepts never, always, no-override
    #       origin_access_control_origin_type: "s3", # required, accepts s3, mediastore, mediapackagev2, lambda
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_access_control.id #=> String
    #   resp.origin_access_control.origin_access_control_config.name #=> String
    #   resp.origin_access_control.origin_access_control_config.description #=> String
    #   resp.origin_access_control.origin_access_control_config.signing_protocol #=> String, one of "sigv4"
    #   resp.origin_access_control.origin_access_control_config.signing_behavior #=> String, one of "never", "always", "no-override"
    #   resp.origin_access_control.origin_access_control_config.origin_access_control_origin_type #=> String, one of "s3", "mediastore", "mediapackagev2", "lambda"
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateOriginAccessControl AWS API Documentation
    #
    # @overload update_origin_access_control(params = {})
    # @param [Hash] params ({})
    def update_origin_access_control(params = {}, options = {})
      req = build_request(:update_origin_access_control, params)
      req.send_request(options)
    end

    # Updates an origin request policy configuration.
    #
    # When you update an origin request policy configuration, all the fields
    # are updated with the values provided in the request. You cannot update
    # some fields independent of others. To update an origin request policy
    # configuration:
    #
    # 1.  Use `GetOriginRequestPolicyConfig` to get the current
    #     configuration.
    #
    # 2.  Locally modify the fields in the origin request policy
    #     configuration that you want to update.
    #
    # 3.  Call `UpdateOriginRequestPolicy` by providing the entire origin
    #     request policy configuration, including the fields that you
    #     modified and those that you didn't.
    #
    # @option params [required, Types::OriginRequestPolicyConfig] :origin_request_policy_config
    #   An origin request policy configuration.
    #
    # @option params [required, String] :id
    #   The unique identifier for the origin request policy that you are
    #   updating. The identifier is returned in a cache behavior's
    #   `OriginRequestPolicyId` field in the response to
    #   `GetDistributionConfig`.
    #
    # @option params [String] :if_match
    #   The version of the origin request policy that you are updating. The
    #   version is returned in the origin request policy's `ETag` field in
    #   the response to `GetOriginRequestPolicyConfig`.
    #
    # @return [Types::UpdateOriginRequestPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOriginRequestPolicyResult#origin_request_policy #origin_request_policy} => Types::OriginRequestPolicy
    #   * {Types::UpdateOriginRequestPolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_origin_request_policy({
    #     origin_request_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       headers_config: { # required
    #         header_behavior: "none", # required, accepts none, whitelist, allViewer, allViewerAndWhitelistCloudFront, allExcept
    #         headers: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #       cookies_config: { # required
    #         cookie_behavior: "none", # required, accepts none, whitelist, all, allExcept
    #         cookies: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #       query_strings_config: { # required
    #         query_string_behavior: "none", # required, accepts none, whitelist, all, allExcept
    #         query_strings: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_request_policy.id #=> String
    #   resp.origin_request_policy.last_modified_time #=> Time
    #   resp.origin_request_policy.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy.origin_request_policy_config.name #=> String
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.header_behavior #=> String, one of "none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items #=> Array
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items #=> Array
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of "none", "whitelist", "all", "allExcept"
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items #=> Array
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateOriginRequestPolicy AWS API Documentation
    #
    # @overload update_origin_request_policy(params = {})
    # @param [Hash] params ({})
    def update_origin_request_policy(params = {}, options = {})
      req = build_request(:update_origin_request_policy, params)
      req.send_request(options)
    end

    # Update public key information. Note that the only value you can change
    # is the comment.
    #
    # @option params [required, Types::PublicKeyConfig] :public_key_config
    #   A public key configuration.
    #
    # @option params [required, String] :id
    #   The identifier of the public key that you are updating.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   public key to update. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdatePublicKeyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePublicKeyResult#public_key #public_key} => Types::PublicKey
    #   * {Types::UpdatePublicKeyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_public_key({
    #     public_key_config: { # required
    #       caller_reference: "string", # required
    #       name: "string", # required
    #       encoded_key: "string", # required
    #       comment: "string",
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key.id #=> String
    #   resp.public_key.created_time #=> Time
    #   resp.public_key.public_key_config.caller_reference #=> String
    #   resp.public_key.public_key_config.name #=> String
    #   resp.public_key.public_key_config.encoded_key #=> String
    #   resp.public_key.public_key_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdatePublicKey AWS API Documentation
    #
    # @overload update_public_key(params = {})
    # @param [Hash] params ({})
    def update_public_key(params = {}, options = {})
      req = build_request(:update_public_key, params)
      req.send_request(options)
    end

    # Updates a real-time log configuration.
    #
    # When you update a real-time log configuration, all the parameters are
    # updated with the values provided in the request. You cannot update
    # some parameters independent of others. To update a real-time log
    # configuration:
    #
    # 1.  Call `GetRealtimeLogConfig` to get the current real-time log
    #     configuration.
    #
    # 2.  Locally modify the parameters in the real-time log configuration
    #     that you want to update.
    #
    # 3.  Call this API (`UpdateRealtimeLogConfig`) by providing the entire
    #     real-time log configuration, including the parameters that you
    #     modified and those that you didn't.
    #
    # You cannot update a real-time log configuration's `Name` or `ARN`.
    #
    # @option params [Array<Types::EndPoint>] :end_points
    #   Contains information about the Amazon Kinesis data stream where you
    #   are sending real-time log data.
    #
    # @option params [Array<String>] :fields
    #   A list of fields to include in each real-time log record.
    #
    #   For more information about fields, see [Real-time log configuration
    #   fields][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields
    #
    # @option params [String] :name
    #   The name for this real-time log configuration.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) for this real-time log configuration.
    #
    # @option params [Integer] :sampling_rate
    #   The sampling rate for this real-time log configuration. The sampling
    #   rate determines the percentage of viewer requests that are represented
    #   in the real-time log data. You must provide an integer between 1 and
    #   100, inclusive.
    #
    # @return [Types::UpdateRealtimeLogConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRealtimeLogConfigResult#realtime_log_config #realtime_log_config} => Types::RealtimeLogConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_realtime_log_config({
    #     end_points: [
    #       {
    #         stream_type: "string", # required
    #         kinesis_stream_config: {
    #           role_arn: "string", # required
    #           stream_arn: "string", # required
    #         },
    #       },
    #     ],
    #     fields: ["string"],
    #     name: "string",
    #     arn: "string",
    #     sampling_rate: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.realtime_log_config.arn #=> String
    #   resp.realtime_log_config.name #=> String
    #   resp.realtime_log_config.sampling_rate #=> Integer
    #   resp.realtime_log_config.end_points #=> Array
    #   resp.realtime_log_config.end_points[0].stream_type #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.role_arn #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.stream_arn #=> String
    #   resp.realtime_log_config.fields #=> Array
    #   resp.realtime_log_config.fields[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateRealtimeLogConfig AWS API Documentation
    #
    # @overload update_realtime_log_config(params = {})
    # @param [Hash] params ({})
    def update_realtime_log_config(params = {}, options = {})
      req = build_request(:update_realtime_log_config, params)
      req.send_request(options)
    end

    # Updates a response headers policy.
    #
    # When you update a response headers policy, the entire policy is
    # replaced. You cannot update some policy fields independent of others.
    # To update a response headers policy configuration:
    #
    # 1.  Use `GetResponseHeadersPolicyConfig` to get the current policy's
    #     configuration.
    #
    # 2.  Modify the fields in the response headers policy configuration
    #     that you want to update.
    #
    # 3.  Call `UpdateResponseHeadersPolicy`, providing the entire response
    #     headers policy configuration, including the fields that you
    #     modified and those that you didn't.
    #
    # @option params [required, Types::ResponseHeadersPolicyConfig] :response_headers_policy_config
    #   A response headers policy configuration.
    #
    # @option params [required, String] :id
    #   The identifier for the response headers policy that you are updating.
    #
    # @option params [String] :if_match
    #   The version of the response headers policy that you are updating.
    #
    #   The version is returned in the cache policy's `ETag` field in the
    #   response to `GetResponseHeadersPolicyConfig`.
    #
    # @return [Types::UpdateResponseHeadersPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResponseHeadersPolicyResult#response_headers_policy #response_headers_policy} => Types::ResponseHeadersPolicy
    #   * {Types::UpdateResponseHeadersPolicyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_response_headers_policy({
    #     response_headers_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       cors_config: {
    #         access_control_allow_origins: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_headers: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_methods: { # required
    #           quantity: 1, # required
    #           items: ["GET"], # required, accepts GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
    #         },
    #         access_control_allow_credentials: false, # required
    #         access_control_expose_headers: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         access_control_max_age_sec: 1,
    #         origin_override: false, # required
    #       },
    #       security_headers_config: {
    #         xss_protection: {
    #           override: false, # required
    #           protection: false, # required
    #           mode_block: false,
    #           report_uri: "string",
    #         },
    #         frame_options: {
    #           override: false, # required
    #           frame_option: "DENY", # required, accepts DENY, SAMEORIGIN
    #         },
    #         referrer_policy: {
    #           override: false, # required
    #           referrer_policy: "no-referrer", # required, accepts no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    #         },
    #         content_security_policy: {
    #           override: false, # required
    #           content_security_policy: "string", # required
    #         },
    #         content_type_options: {
    #           override: false, # required
    #         },
    #         strict_transport_security: {
    #           override: false, # required
    #           include_subdomains: false,
    #           preload: false,
    #           access_control_max_age_sec: 1, # required
    #         },
    #       },
    #       server_timing_headers_config: {
    #         enabled: false, # required
    #         sampling_rate: 1.0,
    #       },
    #       custom_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #             value: "string", # required
    #             override: false, # required
    #           },
    #         ],
    #       },
    #       remove_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #           },
    #         ],
    #       },
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.response_headers_policy.id #=> String
    #   resp.response_headers_policy.last_modified_time #=> Time
    #   resp.response_headers_policy.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy.response_headers_policy_config.name #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of "GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of "DENY", "SAMEORIGIN"
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of "no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.server_timing_headers_config.enabled #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.server_timing_headers_config.sampling_rate #=> Float
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.remove_headers_config.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.remove_headers_config.items #=> Array
    #   resp.response_headers_policy.response_headers_policy_config.remove_headers_config.items[0].header #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateResponseHeadersPolicy AWS API Documentation
    #
    # @overload update_response_headers_policy(params = {})
    # @param [Hash] params ({})
    def update_response_headers_policy(params = {}, options = {})
      req = build_request(:update_response_headers_policy, params)
      req.send_request(options)
    end

    # Update a streaming distribution.
    #
    # @option params [required, Types::StreamingDistributionConfig] :streaming_distribution_config
    #   The streaming distribution's configuration information.
    #
    # @option params [required, String] :id
    #   The streaming distribution's id.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   streaming distribution's configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateStreamingDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStreamingDistributionResult#streaming_distribution #streaming_distribution} => Types::StreamingDistribution
    #   * {Types::UpdateStreamingDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_streaming_distribution({
    #     streaming_distribution_config: { # required
    #       caller_reference: "string", # required
    #       s3_origin: { # required
    #         domain_name: "string", # required
    #         origin_access_identity: "string", # required
    #       },
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       comment: "string", # required
    #       logging: {
    #         enabled: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateStreamingDistribution AWS API Documentation
    #
    # @overload update_streaming_distribution(params = {})
    # @param [Hash] params ({})
    def update_streaming_distribution(params = {}, options = {})
      req = build_request(:update_streaming_distribution, params)
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
      context[:gem_name] = 'aws-sdk-cloudfront'
      context[:gem_version] = '1.96.0'
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
    # | waiter_name                     | params                              | :delay   | :max_attempts |
    # | ------------------------------- | ----------------------------------- | -------- | ------------- |
    # | distribution_deployed           | {Client#get_distribution}           | 60       | 35            |
    # | invalidation_completed          | {Client#get_invalidation}           | 20       | 30            |
    # | streaming_distribution_deployed | {Client#get_streaming_distribution} | 60       | 25            |
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
        distribution_deployed: Waiters::DistributionDeployed,
        invalidation_completed: Waiters::InvalidationCompleted,
        streaming_distribution_deployed: Waiters::StreamingDistributionDeployed
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
