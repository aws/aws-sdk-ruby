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

Aws::Plugins::GlobalConfiguration.add_identifier(:lakeformation)

module Aws::LakeFormation
  # An API client for LakeFormation.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LakeFormation::Client.new(
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

    @identifier = :lakeformation

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
    add_plugin(Aws::LakeFormation::Plugins::Endpoints)

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
    #   @option options [Aws::LakeFormation::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::LakeFormation::EndpointParameters`
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

    # Attaches one or more LF-tags to an existing resource.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Types::Resource] :resource
    #   The database, table, or column resource to which to attach an LF-tag.
    #
    # @option params [required, Array<Types::LFTagPair>] :lf_tags
    #   The LF-tags to attach to the resource.
    #
    # @return [Types::AddLFTagsToResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddLFTagsToResourceResponse#failures #failures} => Array&lt;Types::LFTagError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_lf_tags_to_resource({
    #     catalog_id: "CatalogIdString",
    #     resource: { # required
    #       catalog: {
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString",
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE", # required, accepts DATABASE, TABLE
    #         expression: [ # required
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #         ],
    #       },
    #     },
    #     lf_tags: [ # required
    #       {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].lf_tag.catalog_id #=> String
    #   resp.failures[0].lf_tag.tag_key #=> String
    #   resp.failures[0].lf_tag.tag_values #=> Array
    #   resp.failures[0].lf_tag.tag_values[0] #=> String
    #   resp.failures[0].error.error_code #=> String
    #   resp.failures[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AddLFTagsToResource AWS API Documentation
    #
    # @overload add_lf_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_lf_tags_to_resource(params = {}, options = {})
      req = build_request(:add_lf_tags_to_resource, params)
      req.send_request(options)
    end

    # Allows a caller to assume an IAM role decorated as the SAML user
    # specified in the SAML assertion included in the request. This
    # decoration allows Lake Formation to enforce access policies against
    # the SAML users and groups. This API operation requires SAML federation
    # setup in the caller’s account as it can only be called with valid SAML
    # assertions. Lake Formation does not scope down the permission of the
    # assumed role. All permissions attached to the role via the SAML
    # federation setup will be included in the role session.
    #
    # This decorated role is expected to access data in Amazon S3 by getting
    # temporary access from Lake Formation which is authorized via the
    # virtual API `GetDataAccess`. Therefore, all SAML roles that can be
    # assumed via `AssumeDecoratedRoleWithSAML` must at a minimum include
    # `lakeformation:GetDataAccess` in their role policies. A typical IAM
    # policy attached to such a role would look as follows:
    #
    # @option params [required, String] :saml_assertion
    #   A SAML assertion consisting of an assertion statement for the user who
    #   needs temporary credentials. This must match the SAML assertion that
    #   was issued to IAM. This must be Base64 encoded.
    #
    # @option params [required, String] :role_arn
    #   The role that represents an IAM principal whose scope down policy
    #   allows it to call credential vending APIs such as
    #   `GetTemporaryTableCredentials`. The caller must also have iam:PassRole
    #   permission on this role.
    #
    # @option params [required, String] :principal_arn
    #   The Amazon Resource Name (ARN) of the SAML provider in IAM that
    #   describes the IdP.
    #
    # @option params [Integer] :duration_seconds
    #   The time period, between 900 and 43,200 seconds, for the timeout of
    #   the temporary credentials.
    #
    # @return [Types::AssumeDecoratedRoleWithSAMLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssumeDecoratedRoleWithSAMLResponse#access_key_id #access_key_id} => String
    #   * {Types::AssumeDecoratedRoleWithSAMLResponse#secret_access_key #secret_access_key} => String
    #   * {Types::AssumeDecoratedRoleWithSAMLResponse#session_token #session_token} => String
    #   * {Types::AssumeDecoratedRoleWithSAMLResponse#expiration #expiration} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assume_decorated_role_with_saml({
    #     saml_assertion: "SAMLAssertionString", # required
    #     role_arn: "IAMRoleArn", # required
    #     principal_arn: "IAMSAMLProviderArn", # required
    #     duration_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.access_key_id #=> String
    #   resp.secret_access_key #=> String
    #   resp.session_token #=> String
    #   resp.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AssumeDecoratedRoleWithSAML AWS API Documentation
    #
    # @overload assume_decorated_role_with_saml(params = {})
    # @param [Hash] params ({})
    def assume_decorated_role_with_saml(params = {}, options = {})
      req = build_request(:assume_decorated_role_with_saml, params)
      req.send_request(options)
    end

    # Batch operation to grant permissions to the principal.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Array<Types::BatchPermissionsRequestEntry>] :entries
    #   A list of up to 20 entries for resource permissions to be granted by
    #   batch operation to the principal.
    #
    # @return [Types::BatchGrantPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGrantPermissionsResponse#failures #failures} => Array&lt;Types::BatchPermissionsFailureEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_grant_permissions({
    #     catalog_id: "CatalogIdString",
    #     entries: [ # required
    #       {
    #         id: "Identifier", # required
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         resource: {
    #           catalog: {
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             },
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"],
    #             },
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #           data_cells_filter: {
    #             table_catalog_id: "CatalogIdString",
    #             database_name: "NameString",
    #             table_name: "NameString",
    #             name: "NameString",
    #           },
    #           lf_tag: {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "NameString", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #           lf_tag_policy: {
    #             catalog_id: "CatalogIdString",
    #             resource_type: "DATABASE", # required, accepts DATABASE, TABLE
    #             expression: [ # required
    #               {
    #                 tag_key: "LFTagKey", # required
    #                 tag_values: ["LFTagValue"], # required
    #               },
    #             ],
    #           },
    #         },
    #         permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #         permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].request_entry.id #=> String
    #   resp.failures[0].request_entry.principal.data_lake_principal_identifier #=> String
    #   resp.failures[0].request_entry.resource.database.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.database.name #=> String
    #   resp.failures[0].request_entry.resource.table.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.table.database_name #=> String
    #   resp.failures[0].request_entry.resource.table.name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.database_name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.column_names #=> Array
    #   resp.failures[0].request_entry.resource.table_with_columns.column_names[0] #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names #=> Array
    #   resp.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names[0] #=> String
    #   resp.failures[0].request_entry.resource.data_location.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.data_location.resource_arn #=> String
    #   resp.failures[0].request_entry.resource.data_cells_filter.table_catalog_id #=> String
    #   resp.failures[0].request_entry.resource.data_cells_filter.database_name #=> String
    #   resp.failures[0].request_entry.resource.data_cells_filter.table_name #=> String
    #   resp.failures[0].request_entry.resource.data_cells_filter.name #=> String
    #   resp.failures[0].request_entry.resource.lf_tag.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.lf_tag.tag_key #=> String
    #   resp.failures[0].request_entry.resource.lf_tag.tag_values #=> Array
    #   resp.failures[0].request_entry.resource.lf_tag.tag_values[0] #=> String
    #   resp.failures[0].request_entry.resource.lf_tag_policy.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.lf_tag_policy.resource_type #=> String, one of "DATABASE", "TABLE"
    #   resp.failures[0].request_entry.resource.lf_tag_policy.expression #=> Array
    #   resp.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_key #=> String
    #   resp.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_values #=> Array
    #   resp.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_values[0] #=> String
    #   resp.failures[0].request_entry.permissions #=> Array
    #   resp.failures[0].request_entry.permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.failures[0].request_entry.permissions_with_grant_option #=> Array
    #   resp.failures[0].request_entry.permissions_with_grant_option[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.failures[0].error.error_code #=> String
    #   resp.failures[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchGrantPermissions AWS API Documentation
    #
    # @overload batch_grant_permissions(params = {})
    # @param [Hash] params ({})
    def batch_grant_permissions(params = {}, options = {})
      req = build_request(:batch_grant_permissions, params)
      req.send_request(options)
    end

    # Batch operation to revoke permissions from the principal.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Array<Types::BatchPermissionsRequestEntry>] :entries
    #   A list of up to 20 entries for resource permissions to be revoked by
    #   batch operation to the principal.
    #
    # @return [Types::BatchRevokePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchRevokePermissionsResponse#failures #failures} => Array&lt;Types::BatchPermissionsFailureEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_revoke_permissions({
    #     catalog_id: "CatalogIdString",
    #     entries: [ # required
    #       {
    #         id: "Identifier", # required
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         resource: {
    #           catalog: {
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             },
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"],
    #             },
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #           data_cells_filter: {
    #             table_catalog_id: "CatalogIdString",
    #             database_name: "NameString",
    #             table_name: "NameString",
    #             name: "NameString",
    #           },
    #           lf_tag: {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "NameString", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #           lf_tag_policy: {
    #             catalog_id: "CatalogIdString",
    #             resource_type: "DATABASE", # required, accepts DATABASE, TABLE
    #             expression: [ # required
    #               {
    #                 tag_key: "LFTagKey", # required
    #                 tag_values: ["LFTagValue"], # required
    #               },
    #             ],
    #           },
    #         },
    #         permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #         permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].request_entry.id #=> String
    #   resp.failures[0].request_entry.principal.data_lake_principal_identifier #=> String
    #   resp.failures[0].request_entry.resource.database.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.database.name #=> String
    #   resp.failures[0].request_entry.resource.table.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.table.database_name #=> String
    #   resp.failures[0].request_entry.resource.table.name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.database_name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.column_names #=> Array
    #   resp.failures[0].request_entry.resource.table_with_columns.column_names[0] #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names #=> Array
    #   resp.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names[0] #=> String
    #   resp.failures[0].request_entry.resource.data_location.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.data_location.resource_arn #=> String
    #   resp.failures[0].request_entry.resource.data_cells_filter.table_catalog_id #=> String
    #   resp.failures[0].request_entry.resource.data_cells_filter.database_name #=> String
    #   resp.failures[0].request_entry.resource.data_cells_filter.table_name #=> String
    #   resp.failures[0].request_entry.resource.data_cells_filter.name #=> String
    #   resp.failures[0].request_entry.resource.lf_tag.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.lf_tag.tag_key #=> String
    #   resp.failures[0].request_entry.resource.lf_tag.tag_values #=> Array
    #   resp.failures[0].request_entry.resource.lf_tag.tag_values[0] #=> String
    #   resp.failures[0].request_entry.resource.lf_tag_policy.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.lf_tag_policy.resource_type #=> String, one of "DATABASE", "TABLE"
    #   resp.failures[0].request_entry.resource.lf_tag_policy.expression #=> Array
    #   resp.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_key #=> String
    #   resp.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_values #=> Array
    #   resp.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_values[0] #=> String
    #   resp.failures[0].request_entry.permissions #=> Array
    #   resp.failures[0].request_entry.permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.failures[0].request_entry.permissions_with_grant_option #=> Array
    #   resp.failures[0].request_entry.permissions_with_grant_option[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.failures[0].error.error_code #=> String
    #   resp.failures[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchRevokePermissions AWS API Documentation
    #
    # @overload batch_revoke_permissions(params = {})
    # @param [Hash] params ({})
    def batch_revoke_permissions(params = {}, options = {})
      req = build_request(:batch_revoke_permissions, params)
      req.send_request(options)
    end

    # Attempts to cancel the specified transaction. Returns an exception if
    # the transaction was previously committed.
    #
    # @option params [required, String] :transaction_id
    #   The transaction to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_transaction({
    #     transaction_id: "TransactionIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CancelTransaction AWS API Documentation
    #
    # @overload cancel_transaction(params = {})
    # @param [Hash] params ({})
    def cancel_transaction(params = {}, options = {})
      req = build_request(:cancel_transaction, params)
      req.send_request(options)
    end

    # Attempts to commit the specified transaction. Returns an exception if
    # the transaction was previously aborted. This API action is idempotent
    # if called multiple times for the same transaction.
    #
    # @option params [required, String] :transaction_id
    #   The transaction to commit.
    #
    # @return [Types::CommitTransactionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CommitTransactionResponse#transaction_status #transaction_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.commit_transaction({
    #     transaction_id: "TransactionIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transaction_status #=> String, one of "ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CommitTransaction AWS API Documentation
    #
    # @overload commit_transaction(params = {})
    # @param [Hash] params ({})
    def commit_transaction(params = {}, options = {})
      req = build_request(:commit_transaction, params)
      req.send_request(options)
    end

    # Creates a data cell filter to allow one to grant access to certain
    # columns on certain rows.
    #
    # @option params [required, Types::DataCellsFilter] :table_data
    #   A `DataCellsFilter` structure containing information about the data
    #   cells filter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_cells_filter({
    #     table_data: { # required
    #       table_catalog_id: "CatalogIdString", # required
    #       database_name: "NameString", # required
    #       table_name: "NameString", # required
    #       name: "NameString", # required
    #       row_filter: {
    #         filter_expression: "PredicateString",
    #         all_rows_wildcard: {
    #         },
    #       },
    #       column_names: ["NameString"],
    #       column_wildcard: {
    #         excluded_column_names: ["NameString"],
    #       },
    #       version_id: "VersionString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CreateDataCellsFilter AWS API Documentation
    #
    # @overload create_data_cells_filter(params = {})
    # @param [Hash] params ({})
    def create_data_cells_filter(params = {}, options = {})
      req = build_request(:create_data_cells_filter, params)
      req.send_request(options)
    end

    # Creates an LF-tag with the specified name and values.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, String] :tag_key
    #   The key-name for the LF-tag.
    #
    # @option params [required, Array<String>] :tag_values
    #   A list of possible values an attribute can take.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lf_tag({
    #     catalog_id: "CatalogIdString",
    #     tag_key: "LFTagKey", # required
    #     tag_values: ["LFTagValue"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CreateLFTag AWS API Documentation
    #
    # @overload create_lf_tag(params = {})
    # @param [Hash] params ({})
    def create_lf_tag(params = {}, options = {})
      req = build_request(:create_lf_tag, params)
      req.send_request(options)
    end

    # Deletes a data cell filter.
    #
    # @option params [String] :table_catalog_id
    #   The ID of the catalog to which the table belongs.
    #
    # @option params [String] :database_name
    #   A database in the Glue Data Catalog.
    #
    # @option params [String] :table_name
    #   A table in the database.
    #
    # @option params [String] :name
    #   The name given by the user to the data filter cell.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_cells_filter({
    #     table_catalog_id: "CatalogIdString",
    #     database_name: "NameString",
    #     table_name: "NameString",
    #     name: "NameString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteDataCellsFilter AWS API Documentation
    #
    # @overload delete_data_cells_filter(params = {})
    # @param [Hash] params ({})
    def delete_data_cells_filter(params = {}, options = {})
      req = build_request(:delete_data_cells_filter, params)
      req.send_request(options)
    end

    # Deletes the specified LF-tag given a key name. If the input parameter
    # tag key was not found, then the operation will throw an exception.
    # When you delete an LF-tag, the `LFTagPolicy` attached to the LF-tag
    # becomes invalid. If the deleted LF-tag was still assigned to any
    # resource, the tag policy attach to the deleted LF-tag will no longer
    # be applied to the resource.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, String] :tag_key
    #   The key-name for the LF-tag to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lf_tag({
    #     catalog_id: "CatalogIdString",
    #     tag_key: "LFTagKey", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteLFTag AWS API Documentation
    #
    # @overload delete_lf_tag(params = {})
    # @param [Hash] params ({})
    def delete_lf_tag(params = {}, options = {})
      req = build_request(:delete_lf_tag, params)
      req.send_request(options)
    end

    # For a specific governed table, provides a list of Amazon S3 objects
    # that will be written during the current transaction and that can be
    # automatically deleted if the transaction is canceled. Without this
    # call, no Amazon S3 objects are automatically deleted when a
    # transaction cancels.
    #
    # The Glue ETL library function `write_dynamic_frame.from_catalog()`
    # includes an option to automatically call `DeleteObjectsOnCancel`
    # before writes. For more information, see [Rolling Back Amazon S3
    # Writes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/transactions-data-operations.html#rolling-back-writes
    #
    # @option params [String] :catalog_id
    #   The Glue data catalog that contains the governed table. Defaults to
    #   the current account ID.
    #
    # @option params [required, String] :database_name
    #   The database that contains the governed table.
    #
    # @option params [required, String] :table_name
    #   The name of the governed table.
    #
    # @option params [required, String] :transaction_id
    #   ID of the transaction that the writes occur in.
    #
    # @option params [required, Array<Types::VirtualObject>] :objects
    #   A list of VirtualObject structures, which indicates the Amazon S3
    #   objects to be deleted if the transaction cancels.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_objects_on_cancel({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     transaction_id: "TransactionIdString", # required
    #     objects: [ # required
    #       {
    #         uri: "URI", # required
    #         etag: "ETagString",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteObjectsOnCancel AWS API Documentation
    #
    # @overload delete_objects_on_cancel(params = {})
    # @param [Hash] params ({})
    def delete_objects_on_cancel(params = {}, options = {})
      req = build_request(:delete_objects_on_cancel, params)
      req.send_request(options)
    end

    # Deregisters the resource as managed by the Data Catalog.
    #
    # When you deregister a path, Lake Formation removes the path from the
    # inline policy attached to your service-linked role.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   deregister.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_resource({
    #     resource_arn: "ResourceArnString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeregisterResource AWS API Documentation
    #
    # @overload deregister_resource(params = {})
    # @param [Hash] params ({})
    def deregister_resource(params = {}, options = {})
      req = build_request(:deregister_resource, params)
      req.send_request(options)
    end

    # Retrieves the current data access role for the given resource
    # registered in Lake Formation.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @return [Types::DescribeResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourceResponse#resource_info #resource_info} => Types::ResourceInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource({
    #     resource_arn: "ResourceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_info.resource_arn #=> String
    #   resp.resource_info.role_arn #=> String
    #   resp.resource_info.last_modified #=> Time
    #   resp.resource_info.with_federation #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DescribeResource AWS API Documentation
    #
    # @overload describe_resource(params = {})
    # @param [Hash] params ({})
    def describe_resource(params = {}, options = {})
      req = build_request(:describe_resource, params)
      req.send_request(options)
    end

    # Returns the details of a single transaction.
    #
    # @option params [required, String] :transaction_id
    #   The transaction for which to return status.
    #
    # @return [Types::DescribeTransactionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTransactionResponse#transaction_description #transaction_description} => Types::TransactionDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_transaction({
    #     transaction_id: "TransactionIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transaction_description.transaction_id #=> String
    #   resp.transaction_description.transaction_status #=> String, one of "ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"
    #   resp.transaction_description.transaction_start_time #=> Time
    #   resp.transaction_description.transaction_end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DescribeTransaction AWS API Documentation
    #
    # @overload describe_transaction(params = {})
    # @param [Hash] params ({})
    def describe_transaction(params = {}, options = {})
      req = build_request(:describe_transaction, params)
      req.send_request(options)
    end

    # Indicates to the service that the specified transaction is still
    # active and should not be treated as idle and aborted.
    #
    # Write transactions that remain idle for a long period are
    # automatically aborted unless explicitly extended.
    #
    # @option params [String] :transaction_id
    #   The transaction to extend.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.extend_transaction({
    #     transaction_id: "TransactionIdString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ExtendTransaction AWS API Documentation
    #
    # @overload extend_transaction(params = {})
    # @param [Hash] params ({})
    def extend_transaction(params = {}, options = {})
      req = build_request(:extend_transaction, params)
      req.send_request(options)
    end

    # Returns a data cells filter.
    #
    # @option params [required, String] :table_catalog_id
    #   The ID of the catalog to which the table belongs.
    #
    # @option params [required, String] :database_name
    #   A database in the Glue Data Catalog.
    #
    # @option params [required, String] :table_name
    #   A table in the database.
    #
    # @option params [required, String] :name
    #   The name given by the user to the data filter cell.
    #
    # @return [Types::GetDataCellsFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataCellsFilterResponse#data_cells_filter #data_cells_filter} => Types::DataCellsFilter
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_cells_filter({
    #     table_catalog_id: "CatalogIdString", # required
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_cells_filter.table_catalog_id #=> String
    #   resp.data_cells_filter.database_name #=> String
    #   resp.data_cells_filter.table_name #=> String
    #   resp.data_cells_filter.name #=> String
    #   resp.data_cells_filter.row_filter.filter_expression #=> String
    #   resp.data_cells_filter.column_names #=> Array
    #   resp.data_cells_filter.column_names[0] #=> String
    #   resp.data_cells_filter.column_wildcard.excluded_column_names #=> Array
    #   resp.data_cells_filter.column_wildcard.excluded_column_names[0] #=> String
    #   resp.data_cells_filter.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetDataCellsFilter AWS API Documentation
    #
    # @overload get_data_cells_filter(params = {})
    # @param [Hash] params ({})
    def get_data_cells_filter(params = {}, options = {})
      req = build_request(:get_data_cells_filter, params)
      req.send_request(options)
    end

    # Retrieves the list of the data lake administrators of a Lake
    # Formation-managed data lake.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @return [Types::GetDataLakeSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataLakeSettingsResponse#data_lake_settings #data_lake_settings} => Types::DataLakeSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_lake_settings({
    #     catalog_id: "CatalogIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_lake_settings.data_lake_admins #=> Array
    #   resp.data_lake_settings.data_lake_admins[0].data_lake_principal_identifier #=> String
    #   resp.data_lake_settings.read_only_admins #=> Array
    #   resp.data_lake_settings.read_only_admins[0].data_lake_principal_identifier #=> String
    #   resp.data_lake_settings.create_database_default_permissions #=> Array
    #   resp.data_lake_settings.create_database_default_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.data_lake_settings.create_database_default_permissions[0].permissions #=> Array
    #   resp.data_lake_settings.create_database_default_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.data_lake_settings.create_table_default_permissions #=> Array
    #   resp.data_lake_settings.create_table_default_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.data_lake_settings.create_table_default_permissions[0].permissions #=> Array
    #   resp.data_lake_settings.create_table_default_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.data_lake_settings.parameters #=> Hash
    #   resp.data_lake_settings.parameters["KeyString"] #=> String
    #   resp.data_lake_settings.trusted_resource_owners #=> Array
    #   resp.data_lake_settings.trusted_resource_owners[0] #=> String
    #   resp.data_lake_settings.allow_external_data_filtering #=> Boolean
    #   resp.data_lake_settings.allow_full_table_external_data_access #=> Boolean
    #   resp.data_lake_settings.external_data_filtering_allow_list #=> Array
    #   resp.data_lake_settings.external_data_filtering_allow_list[0].data_lake_principal_identifier #=> String
    #   resp.data_lake_settings.authorized_session_tag_value_list #=> Array
    #   resp.data_lake_settings.authorized_session_tag_value_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetDataLakeSettings AWS API Documentation
    #
    # @overload get_data_lake_settings(params = {})
    # @param [Hash] params ({})
    def get_data_lake_settings(params = {}, options = {})
      req = build_request(:get_data_lake_settings, params)
      req.send_request(options)
    end

    # Returns the Lake Formation permissions for a specified table or
    # database resource located at a path in Amazon S3.
    # `GetEffectivePermissionsForPath` will not return databases and tables
    # if the catalog is encrypted.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   get permissions.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::GetEffectivePermissionsForPathResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEffectivePermissionsForPathResponse#permissions #permissions} => Array&lt;Types::PrincipalResourcePermissions&gt;
    #   * {Types::GetEffectivePermissionsForPathResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_permissions_for_path({
    #     catalog_id: "CatalogIdString",
    #     resource_arn: "ResourceArnString", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.permissions[0].resource.database.catalog_id #=> String
    #   resp.permissions[0].resource.database.name #=> String
    #   resp.permissions[0].resource.table.catalog_id #=> String
    #   resp.permissions[0].resource.table.database_name #=> String
    #   resp.permissions[0].resource.table.name #=> String
    #   resp.permissions[0].resource.table_with_columns.catalog_id #=> String
    #   resp.permissions[0].resource.table_with_columns.database_name #=> String
    #   resp.permissions[0].resource.table_with_columns.name #=> String
    #   resp.permissions[0].resource.table_with_columns.column_names #=> Array
    #   resp.permissions[0].resource.table_with_columns.column_names[0] #=> String
    #   resp.permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names #=> Array
    #   resp.permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names[0] #=> String
    #   resp.permissions[0].resource.data_location.catalog_id #=> String
    #   resp.permissions[0].resource.data_location.resource_arn #=> String
    #   resp.permissions[0].resource.data_cells_filter.table_catalog_id #=> String
    #   resp.permissions[0].resource.data_cells_filter.database_name #=> String
    #   resp.permissions[0].resource.data_cells_filter.table_name #=> String
    #   resp.permissions[0].resource.data_cells_filter.name #=> String
    #   resp.permissions[0].resource.lf_tag.catalog_id #=> String
    #   resp.permissions[0].resource.lf_tag.tag_key #=> String
    #   resp.permissions[0].resource.lf_tag.tag_values #=> Array
    #   resp.permissions[0].resource.lf_tag.tag_values[0] #=> String
    #   resp.permissions[0].resource.lf_tag_policy.catalog_id #=> String
    #   resp.permissions[0].resource.lf_tag_policy.resource_type #=> String, one of "DATABASE", "TABLE"
    #   resp.permissions[0].resource.lf_tag_policy.expression #=> Array
    #   resp.permissions[0].resource.lf_tag_policy.expression[0].tag_key #=> String
    #   resp.permissions[0].resource.lf_tag_policy.expression[0].tag_values #=> Array
    #   resp.permissions[0].resource.lf_tag_policy.expression[0].tag_values[0] #=> String
    #   resp.permissions[0].permissions #=> Array
    #   resp.permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.permissions[0].permissions_with_grant_option #=> Array
    #   resp.permissions[0].permissions_with_grant_option[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.permissions[0].additional_details.resource_share #=> Array
    #   resp.permissions[0].additional_details.resource_share[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetEffectivePermissionsForPath AWS API Documentation
    #
    # @overload get_effective_permissions_for_path(params = {})
    # @param [Hash] params ({})
    def get_effective_permissions_for_path(params = {}, options = {})
      req = build_request(:get_effective_permissions_for_path, params)
      req.send_request(options)
    end

    # Returns an LF-tag definition.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, String] :tag_key
    #   The key-name for the LF-tag.
    #
    # @return [Types::GetLFTagResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLFTagResponse#catalog_id #catalog_id} => String
    #   * {Types::GetLFTagResponse#tag_key #tag_key} => String
    #   * {Types::GetLFTagResponse#tag_values #tag_values} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lf_tag({
    #     catalog_id: "CatalogIdString",
    #     tag_key: "LFTagKey", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog_id #=> String
    #   resp.tag_key #=> String
    #   resp.tag_values #=> Array
    #   resp.tag_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetLFTag AWS API Documentation
    #
    # @overload get_lf_tag(params = {})
    # @param [Hash] params ({})
    def get_lf_tag(params = {}, options = {})
      req = build_request(:get_lf_tag, params)
      req.send_request(options)
    end

    # Returns the state of a query previously submitted. Clients are
    # expected to poll `GetQueryState` to monitor the current state of the
    # planning before retrieving the work units. A query state is only
    # visible to the principal that made the initial call to
    # `StartQueryPlanning`.
    #
    # @option params [required, String] :query_id
    #   The ID of the plan query operation.
    #
    # @return [Types::GetQueryStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryStateResponse#error #error} => String
    #   * {Types::GetQueryStateResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_state({
    #     query_id: "GetQueryStateRequestQueryIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.error #=> String
    #   resp.state #=> String, one of "PENDING", "WORKUNITS_AVAILABLE", "ERROR", "FINISHED", "EXPIRED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetQueryState AWS API Documentation
    #
    # @overload get_query_state(params = {})
    # @param [Hash] params ({})
    def get_query_state(params = {}, options = {})
      req = build_request(:get_query_state, params)
      req.send_request(options)
    end

    # Retrieves statistics on the planning and execution of a query.
    #
    # @option params [required, String] :query_id
    #   The ID of the plan query operation.
    #
    # @return [Types::GetQueryStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryStatisticsResponse#execution_statistics #execution_statistics} => Types::ExecutionStatistics
    #   * {Types::GetQueryStatisticsResponse#planning_statistics #planning_statistics} => Types::PlanningStatistics
    #   * {Types::GetQueryStatisticsResponse#query_submission_time #query_submission_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_statistics({
    #     query_id: "GetQueryStatisticsRequestQueryIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_statistics.average_execution_time_millis #=> Integer
    #   resp.execution_statistics.data_scanned_bytes #=> Integer
    #   resp.execution_statistics.work_units_executed_count #=> Integer
    #   resp.planning_statistics.estimated_data_to_scan_bytes #=> Integer
    #   resp.planning_statistics.planning_time_millis #=> Integer
    #   resp.planning_statistics.queue_time_millis #=> Integer
    #   resp.planning_statistics.work_units_generated_count #=> Integer
    #   resp.query_submission_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetQueryStatistics AWS API Documentation
    #
    # @overload get_query_statistics(params = {})
    # @param [Hash] params ({})
    def get_query_statistics(params = {}, options = {})
      req = build_request(:get_query_statistics, params)
      req.send_request(options)
    end

    # Returns the LF-tags applied to a resource.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Types::Resource] :resource
    #   The database, table, or column resource for which you want to return
    #   LF-tags.
    #
    # @option params [Boolean] :show_assigned_lf_tags
    #   Indicates whether to show the assigned LF-tags.
    #
    # @return [Types::GetResourceLFTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceLFTagsResponse#lf_tag_on_database #lf_tag_on_database} => Array&lt;Types::LFTagPair&gt;
    #   * {Types::GetResourceLFTagsResponse#lf_tags_on_table #lf_tags_on_table} => Array&lt;Types::LFTagPair&gt;
    #   * {Types::GetResourceLFTagsResponse#lf_tags_on_columns #lf_tags_on_columns} => Array&lt;Types::ColumnLFTag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_lf_tags({
    #     catalog_id: "CatalogIdString",
    #     resource: { # required
    #       catalog: {
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString",
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE", # required, accepts DATABASE, TABLE
    #         expression: [ # required
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #         ],
    #       },
    #     },
    #     show_assigned_lf_tags: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.lf_tag_on_database #=> Array
    #   resp.lf_tag_on_database[0].catalog_id #=> String
    #   resp.lf_tag_on_database[0].tag_key #=> String
    #   resp.lf_tag_on_database[0].tag_values #=> Array
    #   resp.lf_tag_on_database[0].tag_values[0] #=> String
    #   resp.lf_tags_on_table #=> Array
    #   resp.lf_tags_on_table[0].catalog_id #=> String
    #   resp.lf_tags_on_table[0].tag_key #=> String
    #   resp.lf_tags_on_table[0].tag_values #=> Array
    #   resp.lf_tags_on_table[0].tag_values[0] #=> String
    #   resp.lf_tags_on_columns #=> Array
    #   resp.lf_tags_on_columns[0].name #=> String
    #   resp.lf_tags_on_columns[0].lf_tags #=> Array
    #   resp.lf_tags_on_columns[0].lf_tags[0].catalog_id #=> String
    #   resp.lf_tags_on_columns[0].lf_tags[0].tag_key #=> String
    #   resp.lf_tags_on_columns[0].lf_tags[0].tag_values #=> Array
    #   resp.lf_tags_on_columns[0].lf_tags[0].tag_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetResourceLFTags AWS API Documentation
    #
    # @overload get_resource_lf_tags(params = {})
    # @param [Hash] params ({})
    def get_resource_lf_tags(params = {}, options = {})
      req = build_request(:get_resource_lf_tags, params)
      req.send_request(options)
    end

    # Returns the set of Amazon S3 objects that make up the specified
    # governed table. A transaction ID or timestamp can be specified for
    # time-travel queries.
    #
    # @option params [String] :catalog_id
    #   The catalog containing the governed table. Defaults to the caller’s
    #   account.
    #
    # @option params [required, String] :database_name
    #   The database containing the governed table.
    #
    # @option params [required, String] :table_name
    #   The governed table for which to retrieve objects.
    #
    # @option params [String] :transaction_id
    #   The transaction ID at which to read the governed table contents. If
    #   this transaction has aborted, an error is returned. If not set,
    #   defaults to the most recent committed transaction. Cannot be specified
    #   along with `QueryAsOfTime`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_as_of_time
    #   The time as of when to read the governed table contents. If not set,
    #   the most recent transaction commit time is used. Cannot be specified
    #   along with `TransactionId`.
    #
    # @option params [String] :partition_predicate
    #   A predicate to filter the objects returned based on the partition keys
    #   defined in the governed table.
    #
    #   * The comparison operators supported are: =, &gt;, &lt;, &gt;=, &lt;=
    #
    #   * The logical operators supported are: AND
    #
    #   * The data types supported are integer, long, date(yyyy-MM-dd),
    #     timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string
    #     and decimal.
    #
    # @option params [Integer] :max_results
    #   Specifies how many values to return in a page.
    #
    # @option params [String] :next_token
    #   A continuation token if this is not the first call to retrieve these
    #   objects.
    #
    # @return [Types::GetTableObjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableObjectsResponse#objects #objects} => Array&lt;Types::PartitionObjects&gt;
    #   * {Types::GetTableObjectsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_objects({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     transaction_id: "TransactionIdString",
    #     query_as_of_time: Time.now,
    #     partition_predicate: "PredicateString",
    #     max_results: 1,
    #     next_token: "TokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.objects #=> Array
    #   resp.objects[0].partition_values #=> Array
    #   resp.objects[0].partition_values[0] #=> String
    #   resp.objects[0].objects #=> Array
    #   resp.objects[0].objects[0].uri #=> String
    #   resp.objects[0].objects[0].etag #=> String
    #   resp.objects[0].objects[0].size #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetTableObjects AWS API Documentation
    #
    # @overload get_table_objects(params = {})
    # @param [Hash] params ({})
    def get_table_objects(params = {}, options = {})
      req = build_request(:get_table_objects, params)
      req.send_request(options)
    end

    # This API is identical to `GetTemporaryTableCredentials` except that
    # this is used when the target Data Catalog resource is of type
    # Partition. Lake Formation restricts the permission of the vended
    # credentials with the same scope down policy which restricts access to
    # a single Amazon S3 prefix.
    #
    # @option params [required, String] :table_arn
    #   The ARN of the partitions' table.
    #
    # @option params [required, Types::PartitionValueList] :partition
    #   A list of partition values identifying a single partition.
    #
    # @option params [Array<String>] :permissions
    #   Filters the request based on the user having been granted a list of
    #   specified permissions on the requested resource(s).
    #
    # @option params [Integer] :duration_seconds
    #   The time period, between 900 and 21,600 seconds, for the timeout of
    #   the temporary credentials.
    #
    # @option params [Types::AuditContext] :audit_context
    #   A structure representing context to access a resource (column names,
    #   query ID, etc).
    #
    # @option params [Array<String>] :supported_permission_types
    #   A list of supported permission types for the partition. Valid values
    #   are `COLUMN_PERMISSION` and `CELL_FILTER_PERMISSION`.
    #
    # @return [Types::GetTemporaryGluePartitionCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemporaryGluePartitionCredentialsResponse#access_key_id #access_key_id} => String
    #   * {Types::GetTemporaryGluePartitionCredentialsResponse#secret_access_key #secret_access_key} => String
    #   * {Types::GetTemporaryGluePartitionCredentialsResponse#session_token #session_token} => String
    #   * {Types::GetTemporaryGluePartitionCredentialsResponse#expiration #expiration} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_temporary_glue_partition_credentials({
    #     table_arn: "ResourceArnString", # required
    #     partition: { # required
    #       values: ["ValueString"], # required
    #     },
    #     permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #     duration_seconds: 1,
    #     audit_context: {
    #       additional_audit_context: "AuditContextString",
    #     },
    #     supported_permission_types: ["COLUMN_PERMISSION"], # accepts COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
    #   })
    #
    # @example Response structure
    #
    #   resp.access_key_id #=> String
    #   resp.secret_access_key #=> String
    #   resp.session_token #=> String
    #   resp.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetTemporaryGluePartitionCredentials AWS API Documentation
    #
    # @overload get_temporary_glue_partition_credentials(params = {})
    # @param [Hash] params ({})
    def get_temporary_glue_partition_credentials(params = {}, options = {})
      req = build_request(:get_temporary_glue_partition_credentials, params)
      req.send_request(options)
    end

    # Allows a caller in a secure environment to assume a role with
    # permission to access Amazon S3. In order to vend such credentials,
    # Lake Formation assumes the role associated with a registered location,
    # for example an Amazon S3 bucket, with a scope down policy which
    # restricts the access to a single prefix.
    #
    # @option params [required, String] :table_arn
    #   The ARN identifying a table in the Data Catalog for the temporary
    #   credentials request.
    #
    # @option params [Array<String>] :permissions
    #   Filters the request based on the user having been granted a list of
    #   specified permissions on the requested resource(s).
    #
    # @option params [Integer] :duration_seconds
    #   The time period, between 900 and 21,600 seconds, for the timeout of
    #   the temporary credentials.
    #
    # @option params [Types::AuditContext] :audit_context
    #   A structure representing context to access a resource (column names,
    #   query ID, etc).
    #
    # @option params [Array<String>] :supported_permission_types
    #   A list of supported permission types for the table. Valid values are
    #   `COLUMN_PERMISSION` and `CELL_FILTER_PERMISSION`.
    #
    # @return [Types::GetTemporaryGlueTableCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemporaryGlueTableCredentialsResponse#access_key_id #access_key_id} => String
    #   * {Types::GetTemporaryGlueTableCredentialsResponse#secret_access_key #secret_access_key} => String
    #   * {Types::GetTemporaryGlueTableCredentialsResponse#session_token #session_token} => String
    #   * {Types::GetTemporaryGlueTableCredentialsResponse#expiration #expiration} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_temporary_glue_table_credentials({
    #     table_arn: "ResourceArnString", # required
    #     permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #     duration_seconds: 1,
    #     audit_context: {
    #       additional_audit_context: "AuditContextString",
    #     },
    #     supported_permission_types: ["COLUMN_PERMISSION"], # accepts COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
    #   })
    #
    # @example Response structure
    #
    #   resp.access_key_id #=> String
    #   resp.secret_access_key #=> String
    #   resp.session_token #=> String
    #   resp.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetTemporaryGlueTableCredentials AWS API Documentation
    #
    # @overload get_temporary_glue_table_credentials(params = {})
    # @param [Hash] params ({})
    def get_temporary_glue_table_credentials(params = {}, options = {})
      req = build_request(:get_temporary_glue_table_credentials, params)
      req.send_request(options)
    end

    # Returns the work units resulting from the query. Work units can be
    # executed in any order and in parallel.
    #
    # @option params [required, String] :query_id
    #   The ID of the plan query operation for which to get results.
    #
    # @option params [required, Integer] :work_unit_id
    #   The work unit ID for which to get results. Value generated by
    #   enumerating `WorkUnitIdMin` to `WorkUnitIdMax` (inclusive) from the
    #   `WorkUnitRange` in the output of `GetWorkUnits`.
    #
    # @option params [required, String] :work_unit_token
    #   A work token used to query the execution service. Token output from
    #   `GetWorkUnits`.
    #
    # @return [Types::GetWorkUnitResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkUnitResultsResponse#result_stream #result_stream} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_work_unit_results({
    #     query_id: "GetWorkUnitResultsRequestQueryIdString", # required
    #     work_unit_id: 1, # required
    #     work_unit_token: "SyntheticGetWorkUnitResultsRequestWorkUnitTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result_stream #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetWorkUnitResults AWS API Documentation
    #
    # @overload get_work_unit_results(params = {})
    # @param [Hash] params ({})
    def get_work_unit_results(params = {}, options = {}, &block)
      req = build_request(:get_work_unit_results, params)
      req.send_request(options, &block)
    end

    # Retrieves the work units generated by the `StartQueryPlanning`
    # operation.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :page_size
    #   The size of each page to get in the Amazon Web Services service call.
    #   This does not affect the number of items returned in the command's
    #   output. Setting a smaller page size results in more calls to the
    #   Amazon Web Services service, retrieving fewer items in each call. This
    #   can help prevent the Amazon Web Services service calls from timing
    #   out.
    #
    # @option params [required, String] :query_id
    #   The ID of the plan query operation.
    #
    # @return [Types::GetWorkUnitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkUnitsResponse#next_token #next_token} => String
    #   * {Types::GetWorkUnitsResponse#query_id #query_id} => String
    #   * {Types::GetWorkUnitsResponse#work_unit_ranges #work_unit_ranges} => Array&lt;Types::WorkUnitRange&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_work_units({
    #     next_token: "Token",
    #     page_size: 1,
    #     query_id: "GetWorkUnitsRequestQueryIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.query_id #=> String
    #   resp.work_unit_ranges #=> Array
    #   resp.work_unit_ranges[0].work_unit_id_max #=> Integer
    #   resp.work_unit_ranges[0].work_unit_id_min #=> Integer
    #   resp.work_unit_ranges[0].work_unit_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetWorkUnits AWS API Documentation
    #
    # @overload get_work_units(params = {})
    # @param [Hash] params ({})
    def get_work_units(params = {}, options = {})
      req = build_request(:get_work_units, params)
      req.send_request(options)
    end

    # Grants permissions to the principal to access metadata in the Data
    # Catalog and data organized in underlying data storage such as Amazon
    # S3.
    #
    # For information about permissions, see [Security and Access Control to
    # Metadata and Data][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Types::DataLakePrincipal] :principal
    #   The principal to be granted the permissions on the resource. Supported
    #   principals are IAM users or IAM roles, and they are defined by their
    #   principal type and their ARN.
    #
    #   Note that if you define a resource with a particular ARN, then later
    #   delete, and recreate a resource with that same ARN, the resource
    #   maintains the permissions already granted.
    #
    # @option params [required, Types::Resource] :resource
    #   The resource to which permissions are to be granted. Resources in Lake
    #   Formation are the Data Catalog, databases, and tables.
    #
    # @option params [required, Array<String>] :permissions
    #   The permissions granted to the principal on the resource. Lake
    #   Formation defines privileges to grant and revoke access to metadata in
    #   the Data Catalog and data organized in underlying data storage such as
    #   Amazon S3. Lake Formation requires that each principal be authorized
    #   to perform a specific task on Lake Formation resources.
    #
    # @option params [Array<String>] :permissions_with_grant_option
    #   Indicates a list of the granted permissions that the principal may
    #   pass to other users. These permissions may only be a subset of the
    #   permissions granted in the `Privileges`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.grant_permissions({
    #     catalog_id: "CatalogIdString",
    #     principal: { # required
    #       data_lake_principal_identifier: "DataLakePrincipalString",
    #     },
    #     resource: { # required
    #       catalog: {
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString",
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE", # required, accepts DATABASE, TABLE
    #         expression: [ # required
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #         ],
    #       },
    #     },
    #     permissions: ["ALL"], # required, accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #     permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GrantPermissions AWS API Documentation
    #
    # @overload grant_permissions(params = {})
    # @param [Hash] params ({})
    def grant_permissions(params = {}, options = {})
      req = build_request(:grant_permissions, params)
      req.send_request(options)
    end

    # Lists all the data cell filters on a table.
    #
    # @option params [Types::TableResource] :table
    #   A table in the Glue Data Catalog.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the response.
    #
    # @return [Types::ListDataCellsFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataCellsFilterResponse#data_cells_filters #data_cells_filters} => Array&lt;Types::DataCellsFilter&gt;
    #   * {Types::ListDataCellsFilterResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_cells_filter({
    #     table: {
    #       catalog_id: "CatalogIdString",
    #       database_name: "NameString", # required
    #       name: "NameString",
    #       table_wildcard: {
    #       },
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_cells_filters #=> Array
    #   resp.data_cells_filters[0].table_catalog_id #=> String
    #   resp.data_cells_filters[0].database_name #=> String
    #   resp.data_cells_filters[0].table_name #=> String
    #   resp.data_cells_filters[0].name #=> String
    #   resp.data_cells_filters[0].row_filter.filter_expression #=> String
    #   resp.data_cells_filters[0].column_names #=> Array
    #   resp.data_cells_filters[0].column_names[0] #=> String
    #   resp.data_cells_filters[0].column_wildcard.excluded_column_names #=> Array
    #   resp.data_cells_filters[0].column_wildcard.excluded_column_names[0] #=> String
    #   resp.data_cells_filters[0].version_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListDataCellsFilter AWS API Documentation
    #
    # @overload list_data_cells_filter(params = {})
    # @param [Hash] params ({})
    def list_data_cells_filter(params = {}, options = {})
      req = build_request(:list_data_cells_filter, params)
      req.send_request(options)
    end

    # Lists LF-tags that the requester has permission to view.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [String] :resource_share_type
    #   If resource share type is `ALL`, returns both in-account LF-tags and
    #   shared LF-tags that the requester has permission to view. If resource
    #   share type is `FOREIGN`, returns all share LF-tags that the requester
    #   can view. If no resource share type is passed, lists LF-tags in the
    #   given catalog ID that the requester has permission to view.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #
    # @return [Types::ListLFTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLFTagsResponse#lf_tags #lf_tags} => Array&lt;Types::LFTagPair&gt;
    #   * {Types::ListLFTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lf_tags({
    #     catalog_id: "CatalogIdString",
    #     resource_share_type: "FOREIGN", # accepts FOREIGN, ALL
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.lf_tags #=> Array
    #   resp.lf_tags[0].catalog_id #=> String
    #   resp.lf_tags[0].tag_key #=> String
    #   resp.lf_tags[0].tag_values #=> Array
    #   resp.lf_tags[0].tag_values[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListLFTags AWS API Documentation
    #
    # @overload list_lf_tags(params = {})
    # @param [Hash] params ({})
    def list_lf_tags(params = {}, options = {})
      req = build_request(:list_lf_tags, params)
      req.send_request(options)
    end

    # Returns a list of the principal permissions on the resource, filtered
    # by the permissions of the caller. For example, if you are granted an
    # ALTER permission, you are able to see only the principal permissions
    # for ALTER.
    #
    # This operation returns only those permissions that have been
    # explicitly granted.
    #
    # For information about permissions, see [Security and Access Control to
    # Metadata and Data][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [Types::DataLakePrincipal] :principal
    #   Specifies a principal to filter the permissions returned.
    #
    # @option params [String] :resource_type
    #   Specifies a resource type to filter the permissions returned.
    #
    # @option params [Types::Resource] :resource
    #   A resource where you will get a list of the principal permissions.
    #
    #   This operation does not support getting privileges on a table with
    #   columns. Instead, call this operation on the table, and the operation
    #   returns the table and the table w columns.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :include_related
    #   Indicates that related permissions should be included in the results.
    #
    # @return [Types::ListPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionsResponse#principal_resource_permissions #principal_resource_permissions} => Array&lt;Types::PrincipalResourcePermissions&gt;
    #   * {Types::ListPermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions({
    #     catalog_id: "CatalogIdString",
    #     principal: {
    #       data_lake_principal_identifier: "DataLakePrincipalString",
    #     },
    #     resource_type: "CATALOG", # accepts CATALOG, DATABASE, TABLE, DATA_LOCATION, LF_TAG, LF_TAG_POLICY, LF_TAG_POLICY_DATABASE, LF_TAG_POLICY_TABLE
    #     resource: {
    #       catalog: {
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString",
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE", # required, accepts DATABASE, TABLE
    #         expression: [ # required
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #         ],
    #       },
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #     include_related: "TrueFalseString",
    #   })
    #
    # @example Response structure
    #
    #   resp.principal_resource_permissions #=> Array
    #   resp.principal_resource_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.principal_resource_permissions[0].resource.database.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.database.name #=> String
    #   resp.principal_resource_permissions[0].resource.table.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.table.database_name #=> String
    #   resp.principal_resource_permissions[0].resource.table.name #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.database_name #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.name #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.column_names #=> Array
    #   resp.principal_resource_permissions[0].resource.table_with_columns.column_names[0] #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names #=> Array
    #   resp.principal_resource_permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names[0] #=> String
    #   resp.principal_resource_permissions[0].resource.data_location.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.data_location.resource_arn #=> String
    #   resp.principal_resource_permissions[0].resource.data_cells_filter.table_catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.data_cells_filter.database_name #=> String
    #   resp.principal_resource_permissions[0].resource.data_cells_filter.table_name #=> String
    #   resp.principal_resource_permissions[0].resource.data_cells_filter.name #=> String
    #   resp.principal_resource_permissions[0].resource.lf_tag.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.lf_tag.tag_key #=> String
    #   resp.principal_resource_permissions[0].resource.lf_tag.tag_values #=> Array
    #   resp.principal_resource_permissions[0].resource.lf_tag.tag_values[0] #=> String
    #   resp.principal_resource_permissions[0].resource.lf_tag_policy.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.lf_tag_policy.resource_type #=> String, one of "DATABASE", "TABLE"
    #   resp.principal_resource_permissions[0].resource.lf_tag_policy.expression #=> Array
    #   resp.principal_resource_permissions[0].resource.lf_tag_policy.expression[0].tag_key #=> String
    #   resp.principal_resource_permissions[0].resource.lf_tag_policy.expression[0].tag_values #=> Array
    #   resp.principal_resource_permissions[0].resource.lf_tag_policy.expression[0].tag_values[0] #=> String
    #   resp.principal_resource_permissions[0].permissions #=> Array
    #   resp.principal_resource_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.principal_resource_permissions[0].permissions_with_grant_option #=> Array
    #   resp.principal_resource_permissions[0].permissions_with_grant_option[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION"
    #   resp.principal_resource_permissions[0].additional_details.resource_share #=> Array
    #   resp.principal_resource_permissions[0].additional_details.resource_share[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListPermissions AWS API Documentation
    #
    # @overload list_permissions(params = {})
    # @param [Hash] params ({})
    def list_permissions(params = {}, options = {})
      req = build_request(:list_permissions, params)
      req.send_request(options)
    end

    # Lists the resources registered to be managed by the Data Catalog.
    #
    # @option params [Array<Types::FilterCondition>] :filter_condition_list
    #   Any applicable row-level and/or column-level filtering conditions for
    #   the resources.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource results.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve these
    #   resources.
    #
    # @return [Types::ListResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesResponse#resource_info_list #resource_info_list} => Array&lt;Types::ResourceInfo&gt;
    #   * {Types::ListResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources({
    #     filter_condition_list: [
    #       {
    #         field: "RESOURCE_ARN", # accepts RESOURCE_ARN, ROLE_ARN, LAST_MODIFIED
    #         comparison_operator: "EQ", # accepts EQ, NE, LE, LT, GE, GT, CONTAINS, NOT_CONTAINS, BEGINS_WITH, IN, BETWEEN
    #         string_value_list: ["StringValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_info_list #=> Array
    #   resp.resource_info_list[0].resource_arn #=> String
    #   resp.resource_info_list[0].role_arn #=> String
    #   resp.resource_info_list[0].last_modified #=> Time
    #   resp.resource_info_list[0].with_federation #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListResources AWS API Documentation
    #
    # @overload list_resources(params = {})
    # @param [Hash] params ({})
    def list_resources(params = {}, options = {})
      req = build_request(:list_resources, params)
      req.send_request(options)
    end

    # Returns the configuration of all storage optimizers associated with a
    # specified table.
    #
    # @option params [String] :catalog_id
    #   The Catalog ID of the table.
    #
    # @option params [required, String] :database_name
    #   Name of the database where the table is present.
    #
    # @option params [required, String] :table_name
    #   Name of the table.
    #
    # @option params [String] :storage_optimizer_type
    #   The specific type of storage optimizers to list. The supported value
    #   is `compaction`.
    #
    # @option params [Integer] :max_results
    #   The number of storage optimizers to return on each call.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::ListTableStorageOptimizersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTableStorageOptimizersResponse#storage_optimizer_list #storage_optimizer_list} => Array&lt;Types::StorageOptimizer&gt;
    #   * {Types::ListTableStorageOptimizersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_storage_optimizers({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     storage_optimizer_type: "COMPACTION", # accepts COMPACTION, GARBAGE_COLLECTION, ALL
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_optimizer_list #=> Array
    #   resp.storage_optimizer_list[0].storage_optimizer_type #=> String, one of "COMPACTION", "GARBAGE_COLLECTION", "ALL"
    #   resp.storage_optimizer_list[0].config #=> Hash
    #   resp.storage_optimizer_list[0].config["StorageOptimizerConfigKey"] #=> String
    #   resp.storage_optimizer_list[0].error_message #=> String
    #   resp.storage_optimizer_list[0].warnings #=> String
    #   resp.storage_optimizer_list[0].last_run_details #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListTableStorageOptimizers AWS API Documentation
    #
    # @overload list_table_storage_optimizers(params = {})
    # @param [Hash] params ({})
    def list_table_storage_optimizers(params = {}, options = {})
      req = build_request(:list_table_storage_optimizers, params)
      req.send_request(options)
    end

    # Returns metadata about transactions and their status. To prevent the
    # response from growing indefinitely, only uncommitted transactions and
    # those available for time-travel queries are returned.
    #
    # This operation can help you identify uncommitted transactions or to
    # get information about transactions.
    #
    # @option params [String] :catalog_id
    #   The catalog for which to list transactions. Defaults to the account ID
    #   of the caller.
    #
    # @option params [String] :status_filter
    #   A filter indicating the status of transactions to return. Options are
    #   ALL \| COMPLETED \| COMMITTED \| ABORTED \| ACTIVE. The default is
    #   `ALL`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of transactions to return in a single call.
    #
    # @option params [String] :next_token
    #   A continuation token if this is not the first call to retrieve
    #   transactions.
    #
    # @return [Types::ListTransactionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTransactionsResponse#transactions #transactions} => Array&lt;Types::TransactionDescription&gt;
    #   * {Types::ListTransactionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transactions({
    #     catalog_id: "CatalogIdString",
    #     status_filter: "ALL", # accepts ALL, COMPLETED, ACTIVE, COMMITTED, ABORTED
    #     max_results: 1,
    #     next_token: "TokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.transactions #=> Array
    #   resp.transactions[0].transaction_id #=> String
    #   resp.transactions[0].transaction_status #=> String, one of "ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"
    #   resp.transactions[0].transaction_start_time #=> Time
    #   resp.transactions[0].transaction_end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListTransactions AWS API Documentation
    #
    # @overload list_transactions(params = {})
    # @param [Hash] params ({})
    def list_transactions(params = {}, options = {})
      req = build_request(:list_transactions, params)
      req.send_request(options)
    end

    # Sets the list of data lake administrators who have admin privileges on
    # all resources managed by Lake Formation. For more information on admin
    # privileges, see [Granting Lake Formation Permissions][1].
    #
    # This API replaces the current list of data lake admins with the new
    # list being passed. To add an admin, fetch the current list and add the
    # new admin to that list and pass that list in this API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Types::DataLakeSettings] :data_lake_settings
    #   A structure representing a list of Lake Formation principals
    #   designated as data lake administrators.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_lake_settings({
    #     catalog_id: "CatalogIdString",
    #     data_lake_settings: { # required
    #       data_lake_admins: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #       ],
    #       read_only_admins: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #       ],
    #       create_database_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString",
    #           },
    #           permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #         },
    #       ],
    #       create_table_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString",
    #           },
    #           permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #         },
    #       ],
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       trusted_resource_owners: ["CatalogIdString"],
    #       allow_external_data_filtering: false,
    #       allow_full_table_external_data_access: false,
    #       external_data_filtering_allow_list: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #       ],
    #       authorized_session_tag_value_list: ["NameString"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PutDataLakeSettings AWS API Documentation
    #
    # @overload put_data_lake_settings(params = {})
    # @param [Hash] params ({})
    def put_data_lake_settings(params = {}, options = {})
      req = build_request(:put_data_lake_settings, params)
      req.send_request(options)
    end

    # Registers the resource as managed by the Data Catalog.
    #
    # To add or update data, Lake Formation needs read/write access to the
    # chosen Amazon S3 path. Choose a role that you know has permission to
    # do this, or choose the AWSServiceRoleForLakeFormationDataAccess
    # service-linked role. When you register the first Amazon S3 path, the
    # service-linked role and a new inline policy are created on your
    # behalf. Lake Formation adds the first path to the inline policy and
    # attaches it to the service-linked role. When you register subsequent
    # paths, Lake Formation adds the path to the existing policy.
    #
    # The following request registers a new location and gives Lake
    # Formation permission to use the service-linked role to access that
    # location.
    #
    # `ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true`
    #
    # If `UseServiceLinkedRole` is not set to true, you must provide or set
    # the `RoleArn`:
    #
    # `arn:aws:iam::12345:role/my-data-access-role`
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   register.
    #
    # @option params [Boolean] :use_service_linked_role
    #   Designates an Identity and Access Management (IAM) service-linked role
    #   by registering this role with the Data Catalog. A service-linked role
    #   is a unique type of IAM role that is linked directly to Lake
    #   Formation.
    #
    #   For more information, see [Using Service-Linked Roles for Lake
    #   Formation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html
    #
    # @option params [String] :role_arn
    #   The identifier for the role that registers the resource.
    #
    # @option params [Boolean] :with_federation
    #   Whether or not the resource is a federated resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_resource({
    #     resource_arn: "ResourceArnString", # required
    #     use_service_linked_role: false,
    #     role_arn: "IAMRoleArn",
    #     with_federation: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RegisterResource AWS API Documentation
    #
    # @overload register_resource(params = {})
    # @param [Hash] params ({})
    def register_resource(params = {}, options = {})
      req = build_request(:register_resource, params)
      req.send_request(options)
    end

    # Removes an LF-tag from the resource. Only database, table, or
    # tableWithColumns resource are allowed. To tag columns, use the column
    # inclusion list in `tableWithColumns` to specify column input.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Types::Resource] :resource
    #   The database, table, or column resource where you want to remove an
    #   LF-tag.
    #
    # @option params [required, Array<Types::LFTagPair>] :lf_tags
    #   The LF-tags to be removed from the resource.
    #
    # @return [Types::RemoveLFTagsFromResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveLFTagsFromResourceResponse#failures #failures} => Array&lt;Types::LFTagError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_lf_tags_from_resource({
    #     catalog_id: "CatalogIdString",
    #     resource: { # required
    #       catalog: {
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString",
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE", # required, accepts DATABASE, TABLE
    #         expression: [ # required
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #         ],
    #       },
    #     },
    #     lf_tags: [ # required
    #       {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].lf_tag.catalog_id #=> String
    #   resp.failures[0].lf_tag.tag_key #=> String
    #   resp.failures[0].lf_tag.tag_values #=> Array
    #   resp.failures[0].lf_tag.tag_values[0] #=> String
    #   resp.failures[0].error.error_code #=> String
    #   resp.failures[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RemoveLFTagsFromResource AWS API Documentation
    #
    # @overload remove_lf_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_lf_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_lf_tags_from_resource, params)
      req.send_request(options)
    end

    # Revokes permissions to the principal to access metadata in the Data
    # Catalog and data organized in underlying data storage such as Amazon
    # S3.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Types::DataLakePrincipal] :principal
    #   The principal to be revoked permissions on the resource.
    #
    # @option params [required, Types::Resource] :resource
    #   The resource to which permissions are to be revoked.
    #
    # @option params [required, Array<String>] :permissions
    #   The permissions revoked to the principal on the resource. For
    #   information about permissions, see [Security and Access Control to
    #   Metadata and Data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html
    #
    # @option params [Array<String>] :permissions_with_grant_option
    #   Indicates a list of permissions for which to revoke the grant option
    #   allowing the principal to pass permissions to other principals.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_permissions({
    #     catalog_id: "CatalogIdString",
    #     principal: { # required
    #       data_lake_principal_identifier: "DataLakePrincipalString",
    #     },
    #     resource: { # required
    #       catalog: {
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString",
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE", # required, accepts DATABASE, TABLE
    #         expression: [ # required
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #         ],
    #       },
    #     },
    #     permissions: ["ALL"], # required, accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #     permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RevokePermissions AWS API Documentation
    #
    # @overload revoke_permissions(params = {})
    # @param [Hash] params ({})
    def revoke_permissions(params = {}, options = {})
      req = build_request(:revoke_permissions, params)
      req.send_request(options)
    end

    # This operation allows a search on `DATABASE` resources by
    # `TagCondition`. This operation is used by admins who want to grant
    # user permissions on certain `TagConditions`. Before making a grant,
    # the admin can use `SearchDatabasesByTags` to find all resources where
    # the given `TagConditions` are valid to verify whether the returned
    # resources can be shared.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Array<Types::LFTag>] :expression
    #   A list of conditions (`LFTag` structures) to search for in database
    #   resources.
    #
    # @return [Types::SearchDatabasesByLFTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDatabasesByLFTagsResponse#next_token #next_token} => String
    #   * {Types::SearchDatabasesByLFTagsResponse#database_list #database_list} => Array&lt;Types::TaggedDatabase&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_databases_by_lf_tags({
    #     next_token: "Token",
    #     max_results: 1,
    #     catalog_id: "CatalogIdString",
    #     expression: [ # required
    #       {
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.database_list #=> Array
    #   resp.database_list[0].database.catalog_id #=> String
    #   resp.database_list[0].database.name #=> String
    #   resp.database_list[0].lf_tags #=> Array
    #   resp.database_list[0].lf_tags[0].catalog_id #=> String
    #   resp.database_list[0].lf_tags[0].tag_key #=> String
    #   resp.database_list[0].lf_tags[0].tag_values #=> Array
    #   resp.database_list[0].lf_tags[0].tag_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/SearchDatabasesByLFTags AWS API Documentation
    #
    # @overload search_databases_by_lf_tags(params = {})
    # @param [Hash] params ({})
    def search_databases_by_lf_tags(params = {}, options = {})
      req = build_request(:search_databases_by_lf_tags, params)
      req.send_request(options)
    end

    # This operation allows a search on `TABLE` resources by `LFTag`s. This
    # will be used by admins who want to grant user permissions on certain
    # LF-tags. Before making a grant, the admin can use
    # `SearchTablesByLFTags` to find all resources where the given `LFTag`s
    # are valid to verify whether the returned resources can be shared.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, Array<Types::LFTag>] :expression
    #   A list of conditions (`LFTag` structures) to search for in table
    #   resources.
    #
    # @return [Types::SearchTablesByLFTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchTablesByLFTagsResponse#next_token #next_token} => String
    #   * {Types::SearchTablesByLFTagsResponse#table_list #table_list} => Array&lt;Types::TaggedTable&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_tables_by_lf_tags({
    #     next_token: "Token",
    #     max_results: 1,
    #     catalog_id: "CatalogIdString",
    #     expression: [ # required
    #       {
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.table_list #=> Array
    #   resp.table_list[0].table.catalog_id #=> String
    #   resp.table_list[0].table.database_name #=> String
    #   resp.table_list[0].table.name #=> String
    #   resp.table_list[0].lf_tag_on_database #=> Array
    #   resp.table_list[0].lf_tag_on_database[0].catalog_id #=> String
    #   resp.table_list[0].lf_tag_on_database[0].tag_key #=> String
    #   resp.table_list[0].lf_tag_on_database[0].tag_values #=> Array
    #   resp.table_list[0].lf_tag_on_database[0].tag_values[0] #=> String
    #   resp.table_list[0].lf_tags_on_table #=> Array
    #   resp.table_list[0].lf_tags_on_table[0].catalog_id #=> String
    #   resp.table_list[0].lf_tags_on_table[0].tag_key #=> String
    #   resp.table_list[0].lf_tags_on_table[0].tag_values #=> Array
    #   resp.table_list[0].lf_tags_on_table[0].tag_values[0] #=> String
    #   resp.table_list[0].lf_tags_on_columns #=> Array
    #   resp.table_list[0].lf_tags_on_columns[0].name #=> String
    #   resp.table_list[0].lf_tags_on_columns[0].lf_tags #=> Array
    #   resp.table_list[0].lf_tags_on_columns[0].lf_tags[0].catalog_id #=> String
    #   resp.table_list[0].lf_tags_on_columns[0].lf_tags[0].tag_key #=> String
    #   resp.table_list[0].lf_tags_on_columns[0].lf_tags[0].tag_values #=> Array
    #   resp.table_list[0].lf_tags_on_columns[0].lf_tags[0].tag_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/SearchTablesByLFTags AWS API Documentation
    #
    # @overload search_tables_by_lf_tags(params = {})
    # @param [Hash] params ({})
    def search_tables_by_lf_tags(params = {}, options = {})
      req = build_request(:search_tables_by_lf_tags, params)
      req.send_request(options)
    end

    # Submits a request to process a query statement.
    #
    # This operation generates work units that can be retrieved with the
    # `GetWorkUnits` operation as soon as the query state is
    # WORKUNITS\_AVAILABLE or FINISHED.
    #
    # @option params [required, Types::QueryPlanningContext] :query_planning_context
    #   A structure containing information about the query plan.
    #
    # @option params [required, String] :query_string
    #   A PartiQL query statement used as an input to the planner service.
    #
    # @return [Types::StartQueryPlanningResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryPlanningResponse#query_id #query_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query_planning({
    #     query_planning_context: { # required
    #       catalog_id: "CatalogIdString",
    #       database_name: "QueryPlanningContextDatabaseNameString", # required
    #       query_as_of_time: Time.now,
    #       query_parameters: {
    #         "String" => "String",
    #       },
    #       transaction_id: "TransactionIdString",
    #     },
    #     query_string: "SyntheticStartQueryPlanningRequestQueryString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/StartQueryPlanning AWS API Documentation
    #
    # @overload start_query_planning(params = {})
    # @param [Hash] params ({})
    def start_query_planning(params = {}, options = {})
      req = build_request(:start_query_planning, params)
      req.send_request(options)
    end

    # Starts a new transaction and returns its transaction ID. Transaction
    # IDs are opaque objects that you can use to identify a transaction.
    #
    # @option params [String] :transaction_type
    #   Indicates whether this transaction should be read only or read and
    #   write. Writes made using a read-only transaction ID will be rejected.
    #   Read-only transactions do not need to be committed.
    #
    # @return [Types::StartTransactionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTransactionResponse#transaction_id #transaction_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_transaction({
    #     transaction_type: "READ_AND_WRITE", # accepts READ_AND_WRITE, READ_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.transaction_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/StartTransaction AWS API Documentation
    #
    # @overload start_transaction(params = {})
    # @param [Hash] params ({})
    def start_transaction(params = {}, options = {})
      req = build_request(:start_transaction, params)
      req.send_request(options)
    end

    # Updates a data cell filter.
    #
    # @option params [required, Types::DataCellsFilter] :table_data
    #   A `DataCellsFilter` structure containing information about the data
    #   cells filter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_cells_filter({
    #     table_data: { # required
    #       table_catalog_id: "CatalogIdString", # required
    #       database_name: "NameString", # required
    #       table_name: "NameString", # required
    #       name: "NameString", # required
    #       row_filter: {
    #         filter_expression: "PredicateString",
    #         all_rows_wildcard: {
    #         },
    #       },
    #       column_names: ["NameString"],
    #       column_wildcard: {
    #         excluded_column_names: ["NameString"],
    #       },
    #       version_id: "VersionString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateDataCellsFilter AWS API Documentation
    #
    # @overload update_data_cells_filter(params = {})
    # @param [Hash] params ({})
    def update_data_cells_filter(params = {}, options = {})
      req = build_request(:update_data_cells_filter, params)
      req.send_request(options)
    end

    # Updates the list of possible values for the specified LF-tag key. If
    # the LF-tag does not exist, the operation throws an
    # EntityNotFoundException. The values in the delete key values will be
    # deleted from list of possible values. If any value in the delete key
    # values is attached to a resource, then API errors out with a 400
    # Exception - "Update not allowed". Untag the attribute before
    # deleting the LF-tag key's value.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #
    # @option params [required, String] :tag_key
    #   The key-name for the LF-tag for which to add or delete values.
    #
    # @option params [Array<String>] :tag_values_to_delete
    #   A list of LF-tag values to delete from the LF-tag.
    #
    # @option params [Array<String>] :tag_values_to_add
    #   A list of LF-tag values to add from the LF-tag.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lf_tag({
    #     catalog_id: "CatalogIdString",
    #     tag_key: "LFTagKey", # required
    #     tag_values_to_delete: ["LFTagValue"],
    #     tag_values_to_add: ["LFTagValue"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateLFTag AWS API Documentation
    #
    # @overload update_lf_tag(params = {})
    # @param [Hash] params ({})
    def update_lf_tag(params = {}, options = {})
      req = build_request(:update_lf_tag, params)
      req.send_request(options)
    end

    # Updates the data access role used for vending access to the given
    # (registered) resource in Lake Formation.
    #
    # @option params [required, String] :role_arn
    #   The new role to use for the given resource registered in Lake
    #   Formation.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [Boolean] :with_federation
    #   Whether or not the resource is a federated resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource({
    #     role_arn: "IAMRoleArn", # required
    #     resource_arn: "ResourceArnString", # required
    #     with_federation: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateResource AWS API Documentation
    #
    # @overload update_resource(params = {})
    # @param [Hash] params ({})
    def update_resource(params = {}, options = {})
      req = build_request(:update_resource, params)
      req.send_request(options)
    end

    # Updates the manifest of Amazon S3 objects that make up the specified
    # governed table.
    #
    # @option params [String] :catalog_id
    #   The catalog containing the governed table to update. Defaults to the
    #   caller’s account ID.
    #
    # @option params [required, String] :database_name
    #   The database containing the governed table to update.
    #
    # @option params [required, String] :table_name
    #   The governed table to update.
    #
    # @option params [String] :transaction_id
    #   The transaction at which to do the write.
    #
    # @option params [required, Array<Types::WriteOperation>] :write_operations
    #   A list of `WriteOperation` objects that define an object to add to or
    #   delete from the manifest for a governed table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table_objects({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     transaction_id: "TransactionIdString",
    #     write_operations: [ # required
    #       {
    #         add_object: {
    #           uri: "URI", # required
    #           etag: "ETagString", # required
    #           size: 1, # required
    #           partition_values: ["PartitionValueString"],
    #         },
    #         delete_object: {
    #           uri: "URI", # required
    #           etag: "ETagString",
    #           partition_values: ["PartitionValueString"],
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateTableObjects AWS API Documentation
    #
    # @overload update_table_objects(params = {})
    # @param [Hash] params ({})
    def update_table_objects(params = {}, options = {})
      req = build_request(:update_table_objects, params)
      req.send_request(options)
    end

    # Updates the configuration of the storage optimizers for a table.
    #
    # @option params [String] :catalog_id
    #   The Catalog ID of the table.
    #
    # @option params [required, String] :database_name
    #   Name of the database where the table is present.
    #
    # @option params [required, String] :table_name
    #   Name of the table for which to enable the storage optimizer.
    #
    # @option params [required, Hash<String,Hash>] :storage_optimizer_config
    #   Name of the table for which to enable the storage optimizer.
    #
    # @return [Types::UpdateTableStorageOptimizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTableStorageOptimizerResponse#result #result} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table_storage_optimizer({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     storage_optimizer_config: { # required
    #       "COMPACTION" => {
    #         "StorageOptimizerConfigKey" => "StorageOptimizerConfigValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateTableStorageOptimizer AWS API Documentation
    #
    # @overload update_table_storage_optimizer(params = {})
    # @param [Hash] params ({})
    def update_table_storage_optimizer(params = {}, options = {})
      req = build_request(:update_table_storage_optimizer, params)
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
      context[:gem_name] = 'aws-sdk-lakeformation'
      context[:gem_version] = '1.40.0'
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
