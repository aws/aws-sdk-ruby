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

Aws::Plugins::GlobalConfiguration.add_identifier(:appflow)

module Aws::Appflow
  # An API client for Appflow.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Appflow::Client.new(
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

    @identifier = :appflow

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
    add_plugin(Aws::Appflow::Plugins::Endpoints)

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
    #   @option options [Aws::Appflow::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Appflow::EndpointParameters`
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

    # Cancels active runs for a flow.
    #
    # You can cancel all of the active runs for a flow, or you can cancel
    # specific runs by providing their IDs.
    #
    # You can cancel a flow run only when the run is in progress. You can't
    # cancel a run that has already completed or failed. You also can't
    # cancel a run that's scheduled to occur but hasn't started yet. To
    # prevent a scheduled run, you can deactivate the flow with the
    # `StopFlow` action.
    #
    # You cannot resume a run after you cancel it.
    #
    # When you send your request, the status for each run becomes
    # `CancelStarted`. When the cancellation completes, the status becomes
    # `Canceled`.
    #
    # <note markdown="1"> When you cancel a run, you still incur charges for any data that the
    # run already processed before the cancellation. If the run had already
    # written some data to the flow destination, then that data remains in
    # the destination. If you configured the flow to use a batch API (such
    # as the Salesforce Bulk API 2.0), then the run will finish reading or
    # writing its entire batch of data after the cancellation. For these
    # operations, the data processing charges for Amazon AppFlow apply. For
    # the pricing information, see [Amazon AppFlow pricing][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/appflow/pricing/
    #
    # @option params [required, String] :flow_name
    #   The name of a flow with active runs that you want to cancel.
    #
    # @option params [Array<String>] :execution_ids
    #   The ID of each active run to cancel. These runs must belong to the
    #   flow you specify in your request.
    #
    #   If you omit this parameter, your request ends all active runs that
    #   belong to the flow.
    #
    # @return [Types::CancelFlowExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelFlowExecutionsResponse#invalid_executions #invalid_executions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_flow_executions({
    #     flow_name: "FlowName", # required
    #     execution_ids: ["ExecutionId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.invalid_executions #=> Array
    #   resp.invalid_executions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CancelFlowExecutions AWS API Documentation
    #
    # @overload cancel_flow_executions(params = {})
    # @param [Hash] params ({})
    def cancel_flow_executions(params = {}, options = {})
      req = build_request(:cancel_flow_executions, params)
      req.send_request(options)
    end

    # Creates a new connector profile associated with your Amazon Web
    # Services account. There is a soft quota of 100 connector profiles per
    # Amazon Web Services account. If you need more connector profiles than
    # this quota allows, you can submit a request to the Amazon AppFlow team
    # through the Amazon AppFlow support channel. In each connector profile
    # that you create, you can provide the credentials and properties for
    # only one connector.
    #
    # @option params [required, String] :connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in your Amazon Web Services account.
    #
    # @option params [String] :kms_arn
    #   The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
    #   you provide for encryption. This is required if you do not want to use
    #   the Amazon AppFlow-managed KMS key. If you don't provide anything
    #   here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
    #
    # @option params [required, String] :connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #
    # @option params [String] :connector_label
    #   The label of the connector. The label is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account. Only
    #   needed if calling for CUSTOMCONNECTOR connector type/.
    #
    # @option params [required, String] :connection_mode
    #   Indicates the connection mode and specifies whether it is public or
    #   private. Private flows use Amazon Web Services PrivateLink to route
    #   data over Amazon Web Services infrastructure without exposing it to
    #   the public internet.
    #
    # @option params [required, Types::ConnectorProfileConfig] :connector_profile_config
    #   Defines the connector-specific configuration and credentials.
    #
    # @option params [String] :client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `CreateConnectorProfile` request completes only once. You choose
    #   the value to pass. For example, if you don't receive a response from
    #   your request, you can safely retry the request with the same
    #   `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must provide
    #   your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `CreateConnectorProfile`.
    #   The token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConnectorProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectorProfileResponse#connector_profile_arn #connector_profile_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector_profile({
    #     connector_profile_name: "ConnectorProfileName", # required
    #     kms_arn: "KMSArn",
    #     connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #     connector_label: "ConnectorLabel",
    #     connection_mode: "Public", # required, accepts Public, Private
    #     connector_profile_config: { # required
    #       connector_profile_properties: { # required
    #         amplitude: {
    #         },
    #         datadog: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         dynatrace: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         google_analytics: {
    #         },
    #         honeycode: {
    #         },
    #         infor_nexus: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         marketo: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         redshift: {
    #           database_url: "DatabaseUrl",
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           role_arn: "RoleArn", # required
    #           data_api_role_arn: "DataApiRoleArn",
    #           is_redshift_serverless: false,
    #           cluster_identifier: "ClusterIdentifier",
    #           workgroup_name: "WorkgroupName",
    #           database_name: "DatabaseName",
    #         },
    #         salesforce: {
    #           instance_url: "InstanceUrl",
    #           is_sandbox_environment: false,
    #           use_private_link_for_metadata_and_authorization: false,
    #         },
    #         service_now: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         singular: {
    #         },
    #         slack: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         snowflake: {
    #           warehouse: "Warehouse", # required
    #           stage: "Stage", # required
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           private_link_service_name: "PrivateLinkServiceName",
    #           account_name: "AccountName",
    #           region: "Region",
    #         },
    #         trendmicro: {
    #         },
    #         veeva: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         zendesk: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         sapo_data: {
    #           application_host_url: "ApplicationHostUrl", # required
    #           application_service_path: "ApplicationServicePath", # required
    #           port_number: 1, # required
    #           client_number: "ClientNumber", # required
    #           logon_language: "LogonLanguage",
    #           private_link_service_name: "PrivateLinkServiceName",
    #           o_auth_properties: {
    #             token_url: "TokenUrl", # required
    #             auth_code_url: "AuthCodeUrl", # required
    #             o_auth_scopes: ["OAuthScope"], # required
    #           },
    #           disable_sso: false,
    #         },
    #         custom_connector: {
    #           profile_properties: {
    #             "ProfilePropertyKey" => "ProfilePropertyValue",
    #           },
    #           o_auth_2_properties: {
    #             token_url: "TokenUrl", # required
    #             o_auth_2_grant_type: "CLIENT_CREDENTIALS", # required, accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE, JWT_BEARER
    #             token_url_custom_properties: {
    #               "CustomPropertyKey" => "CustomPropertyValue",
    #             },
    #           },
    #         },
    #         pardot: {
    #           instance_url: "InstanceUrl",
    #           is_sandbox_environment: false,
    #           business_unit_id: "BusinessUnitId",
    #         },
    #       },
    #       connector_profile_credentials: {
    #         amplitude: {
    #           api_key: "ApiKey", # required
    #           secret_key: "SecretKey", # required
    #         },
    #         datadog: {
    #           api_key: "ApiKey", # required
    #           application_key: "ApplicationKey", # required
    #         },
    #         dynatrace: {
    #           api_token: "ApiToken", # required
    #         },
    #         google_analytics: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         honeycode: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         infor_nexus: {
    #           access_key_id: "AccessKeyId", # required
    #           user_id: "Username", # required
    #           secret_access_key: "Key", # required
    #           datakey: "Key", # required
    #         },
    #         marketo: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         redshift: {
    #           username: "String",
    #           password: "Password",
    #         },
    #         salesforce: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #           client_credentials_arn: "ClientCredentialsArn",
    #           o_auth_2_grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE, JWT_BEARER
    #           jwt_token: "JwtToken",
    #         },
    #         service_now: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         singular: {
    #           api_key: "ApiKey", # required
    #         },
    #         slack: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         snowflake: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         trendmicro: {
    #           api_secret_key: "ApiSecretKey", # required
    #         },
    #         veeva: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         zendesk: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         sapo_data: {
    #           basic_auth_credentials: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           o_auth_credentials: {
    #             client_id: "ClientId", # required
    #             client_secret: "ClientSecret", # required
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri",
    #             },
    #           },
    #         },
    #         custom_connector: {
    #           authentication_type: "OAUTH2", # required, accepts OAUTH2, APIKEY, BASIC, CUSTOM
    #           basic: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           oauth2: {
    #             client_id: "ClientId",
    #             client_secret: "ClientSecret",
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri",
    #             },
    #           },
    #           api_key: {
    #             api_key: "ApiKey", # required
    #             api_secret_key: "ApiSecretKey",
    #           },
    #           custom: {
    #             custom_authentication_type: "CustomAuthenticationType", # required
    #             credentials_map: {
    #               "CredentialsMapKey" => "CredentialsMapValue",
    #             },
    #           },
    #         },
    #         pardot: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #           client_credentials_arn: "ClientCredentialsArn",
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CreateConnectorProfile AWS API Documentation
    #
    # @overload create_connector_profile(params = {})
    # @param [Hash] params ({})
    def create_connector_profile(params = {}, options = {})
      req = build_request(:create_connector_profile, params)
      req.send_request(options)
    end

    # Enables your application to create a new flow using Amazon AppFlow.
    # You must create a connector profile before calling this API. Please
    # note that the Request Syntax below shows syntax for multiple
    # destinations, however, you can only transfer data to one item in this
    # list at a time. Amazon AppFlow does not currently support flows to
    # multiple destinations at once.
    #
    # @option params [required, String] :flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #
    # @option params [String] :description
    #   A description of the flow you want to create.
    #
    # @option params [String] :kms_arn
    #   The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
    #   you provide for encryption. This is required if you do not want to use
    #   the Amazon AppFlow-managed KMS key. If you don't provide anything
    #   here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
    #
    # @option params [required, Types::TriggerConfig] :trigger_config
    #   The trigger settings that determine how and when the flow runs.
    #
    # @option params [required, Types::SourceFlowConfig] :source_flow_config
    #   The configuration that controls how Amazon AppFlow retrieves data from
    #   the source connector.
    #
    # @option params [required, Array<Types::DestinationFlowConfig>] :destination_flow_config_list
    #   The configuration that controls how Amazon AppFlow places data in the
    #   destination connector.
    #
    # @option params [required, Array<Types::Task>] :tasks
    #   A list of tasks that Amazon AppFlow performs while transferring the
    #   data in the flow run.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for your flow.
    #
    # @option params [Types::MetadataCatalogConfig] :metadata_catalog_config
    #   Specifies the configuration that Amazon AppFlow uses when it catalogs
    #   the data that's transferred by the associated flow. When Amazon
    #   AppFlow catalogs the data from a flow, it stores metadata in a data
    #   catalog.
    #
    # @option params [String] :client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `CreateFlow` request completes only once. You choose the value to
    #   pass. For example, if you don't receive a response from your request,
    #   you can safely retry the request with the same `clientToken` parameter
    #   value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must provide
    #   your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `CreateFlow`. The token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::CreateFlowResponse#flow_status #flow_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow({
    #     flow_name: "FlowName", # required
    #     description: "FlowDescription",
    #     kms_arn: "KMSArn",
    #     trigger_config: { # required
    #       trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #       trigger_properties: {
    #         scheduled: {
    #           schedule_expression: "ScheduleExpression", # required
    #           data_pull_mode: "Incremental", # accepts Incremental, Complete
    #           schedule_start_time: Time.now,
    #           schedule_end_time: Time.now,
    #           timezone: "Timezone",
    #           schedule_offset: 1,
    #           first_execution_from: Time.now,
    #           flow_error_deactivation_threshold: 1,
    #         },
    #       },
    #     },
    #     source_flow_config: { # required
    #       connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #       api_version: "ApiVersion",
    #       connector_profile_name: "ConnectorProfileName",
    #       source_connector_properties: { # required
    #         amplitude: {
    #           object: "Object", # required
    #         },
    #         datadog: {
    #           object: "Object", # required
    #         },
    #         dynatrace: {
    #           object: "Object", # required
    #         },
    #         google_analytics: {
    #           object: "Object", # required
    #         },
    #         infor_nexus: {
    #           object: "Object", # required
    #         },
    #         marketo: {
    #           object: "Object", # required
    #         },
    #         s3: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           s3_input_format_config: {
    #             s3_input_file_type: "CSV", # accepts CSV, JSON
    #           },
    #         },
    #         salesforce: {
    #           object: "Object", # required
    #           enable_dynamic_field_update: false,
    #           include_deleted_records: false,
    #           data_transfer_api: "AUTOMATIC", # accepts AUTOMATIC, BULKV2, REST_SYNC
    #         },
    #         service_now: {
    #           object: "Object", # required
    #         },
    #         singular: {
    #           object: "Object", # required
    #         },
    #         slack: {
    #           object: "Object", # required
    #         },
    #         trendmicro: {
    #           object: "Object", # required
    #         },
    #         veeva: {
    #           object: "Object", # required
    #           document_type: "DocumentType",
    #           include_source_files: false,
    #           include_renditions: false,
    #           include_all_versions: false,
    #         },
    #         zendesk: {
    #           object: "Object", # required
    #         },
    #         sapo_data: {
    #           object_path: "Object",
    #         },
    #         custom_connector: {
    #           entity_name: "EntityName", # required
    #           custom_properties: {
    #             "CustomPropertyKey" => "CustomPropertyValue",
    #           },
    #           data_transfer_api: {
    #             name: "DataTransferApiTypeName",
    #             type: "SYNC", # accepts SYNC, ASYNC, AUTOMATIC
    #           },
    #         },
    #         pardot: {
    #           object: "Object", # required
    #         },
    #       },
    #       incremental_pull_config: {
    #         datetime_type_field_name: "DatetimeTypeFieldName",
    #       },
    #     },
    #     destination_flow_config_list: [ # required
    #       {
    #         connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #         api_version: "ApiVersion",
    #         connector_profile_name: "ConnectorProfileName",
    #         destination_connector_properties: { # required
    #           redshift: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: {
    #               file_type: "CSV", # accepts CSV, JSON, PARQUET
    #               prefix_config: {
    #                 prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #                 prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #                 path_prefix_hierarchy: ["EXECUTION_ID"], # accepts EXECUTION_ID, SCHEMA_VERSION
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None", # accepts None, SingleFile
    #                 target_file_size: 1,
    #               },
    #               preserve_source_data_typing: false,
    #             },
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             write_operation_type: "INSERT", # accepts INSERT, UPSERT, UPDATE, DELETE
    #             data_transfer_api: "AUTOMATIC", # accepts AUTOMATIC, BULKV2, REST_SYNC
    #           },
    #           snowflake: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           event_bridge: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           lookout_metrics: {
    #           },
    #           upsolver: {
    #             bucket_name: "UpsolverBucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: { # required
    #               file_type: "CSV", # accepts CSV, JSON, PARQUET
    #               prefix_config: { # required
    #                 prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #                 prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #                 path_prefix_hierarchy: ["EXECUTION_ID"], # accepts EXECUTION_ID, SCHEMA_VERSION
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None", # accepts None, SingleFile
    #                 target_file_size: 1,
    #               },
    #             },
    #           },
    #           honeycode: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           customer_profiles: {
    #             domain_name: "DomainName", # required
    #             object_type_name: "ObjectTypeName",
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             write_operation_type: "INSERT", # accepts INSERT, UPSERT, UPDATE, DELETE
    #           },
    #           marketo: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           custom_connector: {
    #             entity_name: "EntityName", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             write_operation_type: "INSERT", # accepts INSERT, UPSERT, UPDATE, DELETE
    #             id_field_names: ["Name"],
    #             custom_properties: {
    #               "CustomPropertyKey" => "CustomPropertyValue",
    #             },
    #           },
    #           sapo_data: {
    #             object_path: "Object", # required
    #             success_response_handling_config: {
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             write_operation_type: "INSERT", # accepts INSERT, UPSERT, UPDATE, DELETE
    #           },
    #         },
    #       },
    #     ],
    #     tasks: [ # required
    #       {
    #         source_fields: ["String"], # required
    #         connector_operator: {
    #           amplitude: "BETWEEN", # accepts BETWEEN
    #           datadog: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           dynatrace: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           google_analytics: "PROJECTION", # accepts PROJECTION, BETWEEN
    #           infor_nexus: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           singular: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           slack: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           trendmicro: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           veeva: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           sapo_data: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           custom_connector: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           pardot: "PROJECTION", # accepts PROJECTION, EQUAL_TO, NO_OP, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC
    #         },
    #         destination_field: "DestinationField",
    #         task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Map_all, Mask, Merge, Passthrough, Truncate, Validate, Partition
    #         task_properties: {
    #           "VALUE" => "Property",
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     metadata_catalog_config: {
    #       glue_data_catalog: {
    #         role_arn: "GlueDataCatalogIAMRole", # required
    #         database_name: "GlueDataCatalogDatabaseName", # required
    #         table_prefix: "GlueDataCatalogTablePrefix", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.flow_status #=> String, one of "Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CreateFlow AWS API Documentation
    #
    # @overload create_flow(params = {})
    # @param [Hash] params ({})
    def create_flow(params = {}, options = {})
      req = build_request(:create_flow, params)
      req.send_request(options)
    end

    # Enables you to delete an existing connector profile.
    #
    # @option params [required, String] :connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in your account.
    #
    # @option params [Boolean] :force_delete
    #   Indicates whether Amazon AppFlow should delete the profile, even if it
    #   is currently in use in one or more flows.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector_profile({
    #     connector_profile_name: "ConnectorProfileName", # required
    #     force_delete: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DeleteConnectorProfile AWS API Documentation
    #
    # @overload delete_connector_profile(params = {})
    # @param [Hash] params ({})
    def delete_connector_profile(params = {}, options = {})
      req = build_request(:delete_connector_profile, params)
      req.send_request(options)
    end

    # Enables your application to delete an existing flow. Before deleting
    # the flow, Amazon AppFlow validates the request by checking the flow
    # configuration and status. You can delete flows one at a time.
    #
    # @option params [required, String] :flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #
    # @option params [Boolean] :force_delete
    #   Indicates whether Amazon AppFlow should delete the flow, even if it is
    #   currently in use.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow({
    #     flow_name: "FlowName", # required
    #     force_delete: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DeleteFlow AWS API Documentation
    #
    # @overload delete_flow(params = {})
    # @param [Hash] params ({})
    def delete_flow(params = {}, options = {})
      req = build_request(:delete_flow, params)
      req.send_request(options)
    end

    # Describes the given custom connector registered in your Amazon Web
    # Services account. This API can be used for custom connectors that are
    # registered in your account and also for Amazon authored connectors.
    #
    # @option params [required, String] :connector_type
    #   The connector type, such as CUSTOMCONNECTOR, Saleforce, Marketo.
    #   Please choose CUSTOMCONNECTOR for Lambda based custom connectors.
    #
    # @option params [String] :connector_label
    #   The label of the connector. The label is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account. Only
    #   needed if calling for CUSTOMCONNECTOR connector type/.
    #
    # @return [Types::DescribeConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectorResponse#connector_configuration #connector_configuration} => Types::ConnectorConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector({
    #     connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #     connector_label: "ConnectorLabel",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_configuration.can_use_as_source #=> Boolean
    #   resp.connector_configuration.can_use_as_destination #=> Boolean
    #   resp.connector_configuration.supported_destination_connectors #=> Array
    #   resp.connector_configuration.supported_destination_connectors[0] #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.connector_configuration.supported_scheduling_frequencies #=> Array
    #   resp.connector_configuration.supported_scheduling_frequencies[0] #=> String, one of "BYMINUTE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "ONCE"
    #   resp.connector_configuration.is_private_link_enabled #=> Boolean
    #   resp.connector_configuration.is_private_link_endpoint_url_required #=> Boolean
    #   resp.connector_configuration.supported_trigger_types #=> Array
    #   resp.connector_configuration.supported_trigger_types[0] #=> String, one of "Scheduled", "Event", "OnDemand"
    #   resp.connector_configuration.connector_metadata.google_analytics.o_auth_scopes #=> Array
    #   resp.connector_configuration.connector_metadata.google_analytics.o_auth_scopes[0] #=> String
    #   resp.connector_configuration.connector_metadata.salesforce.o_auth_scopes #=> Array
    #   resp.connector_configuration.connector_metadata.salesforce.o_auth_scopes[0] #=> String
    #   resp.connector_configuration.connector_metadata.salesforce.data_transfer_apis #=> Array
    #   resp.connector_configuration.connector_metadata.salesforce.data_transfer_apis[0] #=> String, one of "AUTOMATIC", "BULKV2", "REST_SYNC"
    #   resp.connector_configuration.connector_metadata.salesforce.oauth2_grant_types_supported #=> Array
    #   resp.connector_configuration.connector_metadata.salesforce.oauth2_grant_types_supported[0] #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"
    #   resp.connector_configuration.connector_metadata.slack.o_auth_scopes #=> Array
    #   resp.connector_configuration.connector_metadata.slack.o_auth_scopes[0] #=> String
    #   resp.connector_configuration.connector_metadata.snowflake.supported_regions #=> Array
    #   resp.connector_configuration.connector_metadata.snowflake.supported_regions[0] #=> String
    #   resp.connector_configuration.connector_metadata.zendesk.o_auth_scopes #=> Array
    #   resp.connector_configuration.connector_metadata.zendesk.o_auth_scopes[0] #=> String
    #   resp.connector_configuration.connector_metadata.honeycode.o_auth_scopes #=> Array
    #   resp.connector_configuration.connector_metadata.honeycode.o_auth_scopes[0] #=> String
    #   resp.connector_configuration.connector_type #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.connector_configuration.connector_label #=> String
    #   resp.connector_configuration.connector_description #=> String
    #   resp.connector_configuration.connector_owner #=> String
    #   resp.connector_configuration.connector_name #=> String
    #   resp.connector_configuration.connector_version #=> String
    #   resp.connector_configuration.connector_arn #=> String
    #   resp.connector_configuration.connector_modes #=> Array
    #   resp.connector_configuration.connector_modes[0] #=> String
    #   resp.connector_configuration.authentication_config.is_basic_auth_supported #=> Boolean
    #   resp.connector_configuration.authentication_config.is_api_key_auth_supported #=> Boolean
    #   resp.connector_configuration.authentication_config.is_o_auth_2_supported #=> Boolean
    #   resp.connector_configuration.authentication_config.is_custom_auth_supported #=> Boolean
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth_scopes #=> Array
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth_scopes[0] #=> String
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.token_urls #=> Array
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.token_urls[0] #=> String
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.auth_code_urls #=> Array
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.auth_code_urls[0] #=> String
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_grant_types_supported #=> Array
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_grant_types_supported[0] #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_custom_properties #=> Array
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].key #=> String
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].is_required #=> Boolean
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].label #=> String
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].description #=> String
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].is_sensitive_field #=> Boolean
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].connector_supplied_values #=> Array
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].connector_supplied_values[0] #=> String
    #   resp.connector_configuration.authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].type #=> String, one of "TOKEN_URL", "AUTH_URL"
    #   resp.connector_configuration.authentication_config.custom_auth_configs #=> Array
    #   resp.connector_configuration.authentication_config.custom_auth_configs[0].custom_authentication_type #=> String
    #   resp.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters #=> Array
    #   resp.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].key #=> String
    #   resp.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].is_required #=> Boolean
    #   resp.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].label #=> String
    #   resp.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].description #=> String
    #   resp.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].is_sensitive_field #=> Boolean
    #   resp.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].connector_supplied_values #=> Array
    #   resp.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].connector_supplied_values[0] #=> String
    #   resp.connector_configuration.connector_runtime_settings #=> Array
    #   resp.connector_configuration.connector_runtime_settings[0].key #=> String
    #   resp.connector_configuration.connector_runtime_settings[0].data_type #=> String
    #   resp.connector_configuration.connector_runtime_settings[0].is_required #=> Boolean
    #   resp.connector_configuration.connector_runtime_settings[0].label #=> String
    #   resp.connector_configuration.connector_runtime_settings[0].description #=> String
    #   resp.connector_configuration.connector_runtime_settings[0].scope #=> String
    #   resp.connector_configuration.connector_runtime_settings[0].connector_supplied_value_options #=> Array
    #   resp.connector_configuration.connector_runtime_settings[0].connector_supplied_value_options[0] #=> String
    #   resp.connector_configuration.supported_api_versions #=> Array
    #   resp.connector_configuration.supported_api_versions[0] #=> String
    #   resp.connector_configuration.supported_operators #=> Array
    #   resp.connector_configuration.supported_operators[0] #=> String, one of "PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.connector_configuration.supported_write_operations #=> Array
    #   resp.connector_configuration.supported_write_operations[0] #=> String, one of "INSERT", "UPSERT", "UPDATE", "DELETE"
    #   resp.connector_configuration.connector_provisioning_type #=> String, one of "LAMBDA"
    #   resp.connector_configuration.connector_provisioning_config.lambda.lambda_arn #=> String
    #   resp.connector_configuration.logo_url #=> String
    #   resp.connector_configuration.registered_at #=> Time
    #   resp.connector_configuration.registered_by #=> String
    #   resp.connector_configuration.supported_data_transfer_types #=> Array
    #   resp.connector_configuration.supported_data_transfer_types[0] #=> String, one of "RECORD", "FILE"
    #   resp.connector_configuration.supported_data_transfer_apis #=> Array
    #   resp.connector_configuration.supported_data_transfer_apis[0].name #=> String
    #   resp.connector_configuration.supported_data_transfer_apis[0].type #=> String, one of "SYNC", "ASYNC", "AUTOMATIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnector AWS API Documentation
    #
    # @overload describe_connector(params = {})
    # @param [Hash] params ({})
    def describe_connector(params = {}, options = {})
      req = build_request(:describe_connector, params)
      req.send_request(options)
    end

    # Provides details regarding the entity used with the connector, with a
    # description of the data model for each field in that entity.
    #
    # @option params [required, String] :connector_entity_name
    #   The entity name for that connector.
    #
    # @option params [String] :connector_type
    #   The type of connector application, such as Salesforce, Amplitude, and
    #   so on.
    #
    # @option params [String] :connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in the Amazon Web Services account.
    #
    # @option params [String] :api_version
    #   The version of the API that's used by the connector.
    #
    # @return [Types::DescribeConnectorEntityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectorEntityResponse#connector_entity_fields #connector_entity_fields} => Array&lt;Types::ConnectorEntityField&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector_entity({
    #     connector_entity_name: "EntityName", # required
    #     connector_type: "Salesforce", # accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #     connector_profile_name: "ConnectorProfileName",
    #     api_version: "ApiVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_entity_fields #=> Array
    #   resp.connector_entity_fields[0].identifier #=> String
    #   resp.connector_entity_fields[0].parent_identifier #=> String
    #   resp.connector_entity_fields[0].label #=> String
    #   resp.connector_entity_fields[0].is_primary_key #=> Boolean
    #   resp.connector_entity_fields[0].default_value #=> String
    #   resp.connector_entity_fields[0].is_deprecated #=> Boolean
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.field_type #=> String
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.filter_operators #=> Array
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.filter_operators[0] #=> String, one of "PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.supported_values #=> Array
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.supported_values[0] #=> String
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.value_regex_pattern #=> String
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.supported_date_format #=> String
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.field_value_range.maximum #=> Float
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.field_value_range.minimum #=> Float
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.field_length_range.maximum #=> Float
    #   resp.connector_entity_fields[0].supported_field_type_details.v1.field_length_range.minimum #=> Float
    #   resp.connector_entity_fields[0].description #=> String
    #   resp.connector_entity_fields[0].source_properties.is_retrievable #=> Boolean
    #   resp.connector_entity_fields[0].source_properties.is_queryable #=> Boolean
    #   resp.connector_entity_fields[0].source_properties.is_timestamp_field_for_incremental_queries #=> Boolean
    #   resp.connector_entity_fields[0].destination_properties.is_creatable #=> Boolean
    #   resp.connector_entity_fields[0].destination_properties.is_nullable #=> Boolean
    #   resp.connector_entity_fields[0].destination_properties.is_upsertable #=> Boolean
    #   resp.connector_entity_fields[0].destination_properties.is_updatable #=> Boolean
    #   resp.connector_entity_fields[0].destination_properties.is_defaulted_on_create #=> Boolean
    #   resp.connector_entity_fields[0].destination_properties.supported_write_operations #=> Array
    #   resp.connector_entity_fields[0].destination_properties.supported_write_operations[0] #=> String, one of "INSERT", "UPSERT", "UPDATE", "DELETE"
    #   resp.connector_entity_fields[0].custom_properties #=> Hash
    #   resp.connector_entity_fields[0].custom_properties["CustomPropertyKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorEntity AWS API Documentation
    #
    # @overload describe_connector_entity(params = {})
    # @param [Hash] params ({})
    def describe_connector_entity(params = {}, options = {})
      req = build_request(:describe_connector_entity, params)
      req.send_request(options)
    end

    # Returns a list of `connector-profile` details matching the provided
    # `connector-profile` names and `connector-types`. Both input lists are
    # optional, and you can use them to filter the result.
    #
    # If no names or `connector-types` are provided, returns all connector
    # profiles in a paginated form. If there is no match, this operation
    # returns an empty list.
    #
    # @option params [Array<String>] :connector_profile_names
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in the Amazon Web Services account.
    #
    # @option params [String] :connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #
    # @option params [String] :connector_label
    #   The name of the connector. The name is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account. Only
    #   needed if calling for CUSTOMCONNECTOR connector type/.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of items that should be returned in the
    #   result set. The default for `maxResults` is 20 (for all paginated API
    #   operations).
    #
    # @option params [String] :next_token
    #   The pagination token for the next page of data.
    #
    # @return [Types::DescribeConnectorProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectorProfilesResponse#connector_profile_details #connector_profile_details} => Array&lt;Types::ConnectorProfile&gt;
    #   * {Types::DescribeConnectorProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector_profiles({
    #     connector_profile_names: ["ConnectorProfileName"],
    #     connector_type: "Salesforce", # accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #     connector_label: "ConnectorLabel",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_profile_details #=> Array
    #   resp.connector_profile_details[0].connector_profile_arn #=> String
    #   resp.connector_profile_details[0].connector_profile_name #=> String
    #   resp.connector_profile_details[0].connector_type #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.connector_profile_details[0].connector_label #=> String
    #   resp.connector_profile_details[0].connection_mode #=> String, one of "Public", "Private"
    #   resp.connector_profile_details[0].credentials_arn #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.datadog.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.dynatrace.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.infor_nexus.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.marketo.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.redshift.database_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.redshift.bucket_name #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.redshift.bucket_prefix #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.redshift.role_arn #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.redshift.data_api_role_arn #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.redshift.is_redshift_serverless #=> Boolean
    #   resp.connector_profile_details[0].connector_profile_properties.redshift.cluster_identifier #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.redshift.workgroup_name #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.redshift.database_name #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.salesforce.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.salesforce.is_sandbox_environment #=> Boolean
    #   resp.connector_profile_details[0].connector_profile_properties.salesforce.use_private_link_for_metadata_and_authorization #=> Boolean
    #   resp.connector_profile_details[0].connector_profile_properties.service_now.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.slack.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.snowflake.warehouse #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.snowflake.stage #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.snowflake.bucket_name #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.snowflake.bucket_prefix #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.snowflake.private_link_service_name #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.snowflake.account_name #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.snowflake.region #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.veeva.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.zendesk.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.application_host_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.application_service_path #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.port_number #=> Integer
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.client_number #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.logon_language #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.private_link_service_name #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.o_auth_properties.token_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.o_auth_properties.auth_code_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.o_auth_properties.o_auth_scopes #=> Array
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.o_auth_properties.o_auth_scopes[0] #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.sapo_data.disable_sso #=> Boolean
    #   resp.connector_profile_details[0].connector_profile_properties.custom_connector.profile_properties #=> Hash
    #   resp.connector_profile_details[0].connector_profile_properties.custom_connector.profile_properties["ProfilePropertyKey"] #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.custom_connector.o_auth_2_properties.token_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.custom_connector.o_auth_2_properties.o_auth_2_grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"
    #   resp.connector_profile_details[0].connector_profile_properties.custom_connector.o_auth_2_properties.token_url_custom_properties #=> Hash
    #   resp.connector_profile_details[0].connector_profile_properties.custom_connector.o_auth_2_properties.token_url_custom_properties["CustomPropertyKey"] #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.pardot.instance_url #=> String
    #   resp.connector_profile_details[0].connector_profile_properties.pardot.is_sandbox_environment #=> Boolean
    #   resp.connector_profile_details[0].connector_profile_properties.pardot.business_unit_id #=> String
    #   resp.connector_profile_details[0].created_at #=> Time
    #   resp.connector_profile_details[0].last_updated_at #=> Time
    #   resp.connector_profile_details[0].private_connection_provisioning_state.status #=> String, one of "FAILED", "PENDING", "CREATED"
    #   resp.connector_profile_details[0].private_connection_provisioning_state.failure_message #=> String
    #   resp.connector_profile_details[0].private_connection_provisioning_state.failure_cause #=> String, one of "CONNECTOR_AUTHENTICATION", "CONNECTOR_SERVER", "INTERNAL_SERVER", "ACCESS_DENIED", "VALIDATION"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorProfiles AWS API Documentation
    #
    # @overload describe_connector_profiles(params = {})
    # @param [Hash] params ({})
    def describe_connector_profiles(params = {}, options = {})
      req = build_request(:describe_connector_profiles, params)
      req.send_request(options)
    end

    # Describes the connectors vended by Amazon AppFlow for specified
    # connector types. If you don't specify a connector type, this
    # operation describes all connectors vended by Amazon AppFlow. If there
    # are more connectors than can be returned in one page, the response
    # contains a `nextToken` object, which can be be passed in to the next
    # call to the `DescribeConnectors` API operation to retrieve the next
    # page.
    #
    # @option params [Array<String>] :connector_types
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items that should be returned in the result set.
    #   The default is 20.
    #
    # @option params [String] :next_token
    #   The pagination token for the next page of data.
    #
    # @return [Types::DescribeConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectorsResponse#connector_configurations #connector_configurations} => Hash&lt;String,Types::ConnectorConfiguration&gt;
    #   * {Types::DescribeConnectorsResponse#connectors #connectors} => Array&lt;Types::ConnectorDetail&gt;
    #   * {Types::DescribeConnectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connectors({
    #     connector_types: ["Salesforce"], # accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_configurations #=> Hash
    #   resp.connector_configurations["ConnectorType"].can_use_as_source #=> Boolean
    #   resp.connector_configurations["ConnectorType"].can_use_as_destination #=> Boolean
    #   resp.connector_configurations["ConnectorType"].supported_destination_connectors #=> Array
    #   resp.connector_configurations["ConnectorType"].supported_destination_connectors[0] #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.connector_configurations["ConnectorType"].supported_scheduling_frequencies #=> Array
    #   resp.connector_configurations["ConnectorType"].supported_scheduling_frequencies[0] #=> String, one of "BYMINUTE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "ONCE"
    #   resp.connector_configurations["ConnectorType"].is_private_link_enabled #=> Boolean
    #   resp.connector_configurations["ConnectorType"].is_private_link_endpoint_url_required #=> Boolean
    #   resp.connector_configurations["ConnectorType"].supported_trigger_types #=> Array
    #   resp.connector_configurations["ConnectorType"].supported_trigger_types[0] #=> String, one of "Scheduled", "Event", "OnDemand"
    #   resp.connector_configurations["ConnectorType"].connector_metadata.google_analytics.o_auth_scopes #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_metadata.google_analytics.o_auth_scopes[0] #=> String
    #   resp.connector_configurations["ConnectorType"].connector_metadata.salesforce.o_auth_scopes #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_metadata.salesforce.o_auth_scopes[0] #=> String
    #   resp.connector_configurations["ConnectorType"].connector_metadata.salesforce.data_transfer_apis #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_metadata.salesforce.data_transfer_apis[0] #=> String, one of "AUTOMATIC", "BULKV2", "REST_SYNC"
    #   resp.connector_configurations["ConnectorType"].connector_metadata.salesforce.oauth2_grant_types_supported #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_metadata.salesforce.oauth2_grant_types_supported[0] #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"
    #   resp.connector_configurations["ConnectorType"].connector_metadata.slack.o_auth_scopes #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_metadata.slack.o_auth_scopes[0] #=> String
    #   resp.connector_configurations["ConnectorType"].connector_metadata.snowflake.supported_regions #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_metadata.snowflake.supported_regions[0] #=> String
    #   resp.connector_configurations["ConnectorType"].connector_metadata.zendesk.o_auth_scopes #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_metadata.zendesk.o_auth_scopes[0] #=> String
    #   resp.connector_configurations["ConnectorType"].connector_metadata.honeycode.o_auth_scopes #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_metadata.honeycode.o_auth_scopes[0] #=> String
    #   resp.connector_configurations["ConnectorType"].connector_type #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.connector_configurations["ConnectorType"].connector_label #=> String
    #   resp.connector_configurations["ConnectorType"].connector_description #=> String
    #   resp.connector_configurations["ConnectorType"].connector_owner #=> String
    #   resp.connector_configurations["ConnectorType"].connector_name #=> String
    #   resp.connector_configurations["ConnectorType"].connector_version #=> String
    #   resp.connector_configurations["ConnectorType"].connector_arn #=> String
    #   resp.connector_configurations["ConnectorType"].connector_modes #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_modes[0] #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.is_basic_auth_supported #=> Boolean
    #   resp.connector_configurations["ConnectorType"].authentication_config.is_api_key_auth_supported #=> Boolean
    #   resp.connector_configurations["ConnectorType"].authentication_config.is_o_auth_2_supported #=> Boolean
    #   resp.connector_configurations["ConnectorType"].authentication_config.is_custom_auth_supported #=> Boolean
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth_scopes #=> Array
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth_scopes[0] #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.token_urls #=> Array
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.token_urls[0] #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.auth_code_urls #=> Array
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.auth_code_urls[0] #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_grant_types_supported #=> Array
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_grant_types_supported[0] #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_custom_properties #=> Array
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].key #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].is_required #=> Boolean
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].label #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].description #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].is_sensitive_field #=> Boolean
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].connector_supplied_values #=> Array
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].connector_supplied_values[0] #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.o_auth_2_defaults.oauth2_custom_properties[0].type #=> String, one of "TOKEN_URL", "AUTH_URL"
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs #=> Array
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs[0].custom_authentication_type #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs[0].auth_parameters #=> Array
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs[0].auth_parameters[0].key #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs[0].auth_parameters[0].is_required #=> Boolean
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs[0].auth_parameters[0].label #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs[0].auth_parameters[0].description #=> String
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs[0].auth_parameters[0].is_sensitive_field #=> Boolean
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs[0].auth_parameters[0].connector_supplied_values #=> Array
    #   resp.connector_configurations["ConnectorType"].authentication_config.custom_auth_configs[0].auth_parameters[0].connector_supplied_values[0] #=> String
    #   resp.connector_configurations["ConnectorType"].connector_runtime_settings #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_runtime_settings[0].key #=> String
    #   resp.connector_configurations["ConnectorType"].connector_runtime_settings[0].data_type #=> String
    #   resp.connector_configurations["ConnectorType"].connector_runtime_settings[0].is_required #=> Boolean
    #   resp.connector_configurations["ConnectorType"].connector_runtime_settings[0].label #=> String
    #   resp.connector_configurations["ConnectorType"].connector_runtime_settings[0].description #=> String
    #   resp.connector_configurations["ConnectorType"].connector_runtime_settings[0].scope #=> String
    #   resp.connector_configurations["ConnectorType"].connector_runtime_settings[0].connector_supplied_value_options #=> Array
    #   resp.connector_configurations["ConnectorType"].connector_runtime_settings[0].connector_supplied_value_options[0] #=> String
    #   resp.connector_configurations["ConnectorType"].supported_api_versions #=> Array
    #   resp.connector_configurations["ConnectorType"].supported_api_versions[0] #=> String
    #   resp.connector_configurations["ConnectorType"].supported_operators #=> Array
    #   resp.connector_configurations["ConnectorType"].supported_operators[0] #=> String, one of "PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.connector_configurations["ConnectorType"].supported_write_operations #=> Array
    #   resp.connector_configurations["ConnectorType"].supported_write_operations[0] #=> String, one of "INSERT", "UPSERT", "UPDATE", "DELETE"
    #   resp.connector_configurations["ConnectorType"].connector_provisioning_type #=> String, one of "LAMBDA"
    #   resp.connector_configurations["ConnectorType"].connector_provisioning_config.lambda.lambda_arn #=> String
    #   resp.connector_configurations["ConnectorType"].logo_url #=> String
    #   resp.connector_configurations["ConnectorType"].registered_at #=> Time
    #   resp.connector_configurations["ConnectorType"].registered_by #=> String
    #   resp.connector_configurations["ConnectorType"].supported_data_transfer_types #=> Array
    #   resp.connector_configurations["ConnectorType"].supported_data_transfer_types[0] #=> String, one of "RECORD", "FILE"
    #   resp.connector_configurations["ConnectorType"].supported_data_transfer_apis #=> Array
    #   resp.connector_configurations["ConnectorType"].supported_data_transfer_apis[0].name #=> String
    #   resp.connector_configurations["ConnectorType"].supported_data_transfer_apis[0].type #=> String, one of "SYNC", "ASYNC", "AUTOMATIC"
    #   resp.connectors #=> Array
    #   resp.connectors[0].connector_description #=> String
    #   resp.connectors[0].connector_name #=> String
    #   resp.connectors[0].connector_owner #=> String
    #   resp.connectors[0].connector_version #=> String
    #   resp.connectors[0].application_type #=> String
    #   resp.connectors[0].connector_type #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.connectors[0].connector_label #=> String
    #   resp.connectors[0].registered_at #=> Time
    #   resp.connectors[0].registered_by #=> String
    #   resp.connectors[0].connector_provisioning_type #=> String, one of "LAMBDA"
    #   resp.connectors[0].connector_modes #=> Array
    #   resp.connectors[0].connector_modes[0] #=> String
    #   resp.connectors[0].supported_data_transfer_types #=> Array
    #   resp.connectors[0].supported_data_transfer_types[0] #=> String, one of "RECORD", "FILE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectors AWS API Documentation
    #
    # @overload describe_connectors(params = {})
    # @param [Hash] params ({})
    def describe_connectors(params = {}, options = {})
      req = build_request(:describe_connectors, params)
      req.send_request(options)
    end

    # Provides a description of the specified flow.
    #
    # @option params [required, String] :flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #
    # @return [Types::DescribeFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::DescribeFlowResponse#description #description} => String
    #   * {Types::DescribeFlowResponse#flow_name #flow_name} => String
    #   * {Types::DescribeFlowResponse#kms_arn #kms_arn} => String
    #   * {Types::DescribeFlowResponse#flow_status #flow_status} => String
    #   * {Types::DescribeFlowResponse#flow_status_message #flow_status_message} => String
    #   * {Types::DescribeFlowResponse#source_flow_config #source_flow_config} => Types::SourceFlowConfig
    #   * {Types::DescribeFlowResponse#destination_flow_config_list #destination_flow_config_list} => Array&lt;Types::DestinationFlowConfig&gt;
    #   * {Types::DescribeFlowResponse#last_run_execution_details #last_run_execution_details} => Types::ExecutionDetails
    #   * {Types::DescribeFlowResponse#trigger_config #trigger_config} => Types::TriggerConfig
    #   * {Types::DescribeFlowResponse#tasks #tasks} => Array&lt;Types::Task&gt;
    #   * {Types::DescribeFlowResponse#created_at #created_at} => Time
    #   * {Types::DescribeFlowResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeFlowResponse#created_by #created_by} => String
    #   * {Types::DescribeFlowResponse#last_updated_by #last_updated_by} => String
    #   * {Types::DescribeFlowResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeFlowResponse#metadata_catalog_config #metadata_catalog_config} => Types::MetadataCatalogConfig
    #   * {Types::DescribeFlowResponse#last_run_metadata_catalog_details #last_run_metadata_catalog_details} => Array&lt;Types::MetadataCatalogDetail&gt;
    #   * {Types::DescribeFlowResponse#schema_version #schema_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow({
    #     flow_name: "FlowName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.description #=> String
    #   resp.flow_name #=> String
    #   resp.kms_arn #=> String
    #   resp.flow_status #=> String, one of "Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"
    #   resp.flow_status_message #=> String
    #   resp.source_flow_config.connector_type #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.source_flow_config.api_version #=> String
    #   resp.source_flow_config.connector_profile_name #=> String
    #   resp.source_flow_config.source_connector_properties.amplitude.object #=> String
    #   resp.source_flow_config.source_connector_properties.datadog.object #=> String
    #   resp.source_flow_config.source_connector_properties.dynatrace.object #=> String
    #   resp.source_flow_config.source_connector_properties.google_analytics.object #=> String
    #   resp.source_flow_config.source_connector_properties.infor_nexus.object #=> String
    #   resp.source_flow_config.source_connector_properties.marketo.object #=> String
    #   resp.source_flow_config.source_connector_properties.s3.bucket_name #=> String
    #   resp.source_flow_config.source_connector_properties.s3.bucket_prefix #=> String
    #   resp.source_flow_config.source_connector_properties.s3.s3_input_format_config.s3_input_file_type #=> String, one of "CSV", "JSON"
    #   resp.source_flow_config.source_connector_properties.salesforce.object #=> String
    #   resp.source_flow_config.source_connector_properties.salesforce.enable_dynamic_field_update #=> Boolean
    #   resp.source_flow_config.source_connector_properties.salesforce.include_deleted_records #=> Boolean
    #   resp.source_flow_config.source_connector_properties.salesforce.data_transfer_api #=> String, one of "AUTOMATIC", "BULKV2", "REST_SYNC"
    #   resp.source_flow_config.source_connector_properties.service_now.object #=> String
    #   resp.source_flow_config.source_connector_properties.singular.object #=> String
    #   resp.source_flow_config.source_connector_properties.slack.object #=> String
    #   resp.source_flow_config.source_connector_properties.trendmicro.object #=> String
    #   resp.source_flow_config.source_connector_properties.veeva.object #=> String
    #   resp.source_flow_config.source_connector_properties.veeva.document_type #=> String
    #   resp.source_flow_config.source_connector_properties.veeva.include_source_files #=> Boolean
    #   resp.source_flow_config.source_connector_properties.veeva.include_renditions #=> Boolean
    #   resp.source_flow_config.source_connector_properties.veeva.include_all_versions #=> Boolean
    #   resp.source_flow_config.source_connector_properties.zendesk.object #=> String
    #   resp.source_flow_config.source_connector_properties.sapo_data.object_path #=> String
    #   resp.source_flow_config.source_connector_properties.custom_connector.entity_name #=> String
    #   resp.source_flow_config.source_connector_properties.custom_connector.custom_properties #=> Hash
    #   resp.source_flow_config.source_connector_properties.custom_connector.custom_properties["CustomPropertyKey"] #=> String
    #   resp.source_flow_config.source_connector_properties.custom_connector.data_transfer_api.name #=> String
    #   resp.source_flow_config.source_connector_properties.custom_connector.data_transfer_api.type #=> String, one of "SYNC", "ASYNC", "AUTOMATIC"
    #   resp.source_flow_config.source_connector_properties.pardot.object #=> String
    #   resp.source_flow_config.incremental_pull_config.datetime_type_field_name #=> String
    #   resp.destination_flow_config_list #=> Array
    #   resp.destination_flow_config_list[0].connector_type #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.destination_flow_config_list[0].api_version #=> String
    #   resp.destination_flow_config_list[0].connector_profile_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.redshift.object #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.redshift.intermediate_bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.redshift.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.redshift.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.redshift.error_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.redshift.error_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.file_type #=> String, one of "CSV", "JSON", "PARQUET"
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.prefix_config.prefix_type #=> String, one of "FILENAME", "PATH", "PATH_AND_FILENAME"
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.prefix_config.prefix_format #=> String, one of "YEAR", "MONTH", "DAY", "HOUR", "MINUTE"
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.prefix_config.path_prefix_hierarchy #=> Array
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.prefix_config.path_prefix_hierarchy[0] #=> String, one of "EXECUTION_ID", "SCHEMA_VERSION"
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.aggregation_config.aggregation_type #=> String, one of "None", "SingleFile"
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.aggregation_config.target_file_size #=> Integer
    #   resp.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.preserve_source_data_typing #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.salesforce.object #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.salesforce.id_field_names #=> Array
    #   resp.destination_flow_config_list[0].destination_connector_properties.salesforce.id_field_names[0] #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.salesforce.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.salesforce.error_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.salesforce.error_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.salesforce.write_operation_type #=> String, one of "INSERT", "UPSERT", "UPDATE", "DELETE"
    #   resp.destination_flow_config_list[0].destination_connector_properties.salesforce.data_transfer_api #=> String, one of "AUTOMATIC", "BULKV2", "REST_SYNC"
    #   resp.destination_flow_config_list[0].destination_connector_properties.snowflake.object #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.snowflake.intermediate_bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.snowflake.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.snowflake.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.snowflake.error_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.snowflake.error_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.event_bridge.object #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.event_bridge.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.event_bridge.error_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.event_bridge.error_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.upsolver.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.upsolver.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.file_type #=> String, one of "CSV", "JSON", "PARQUET"
    #   resp.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.prefix_config.prefix_type #=> String, one of "FILENAME", "PATH", "PATH_AND_FILENAME"
    #   resp.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.prefix_config.prefix_format #=> String, one of "YEAR", "MONTH", "DAY", "HOUR", "MINUTE"
    #   resp.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.prefix_config.path_prefix_hierarchy #=> Array
    #   resp.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.prefix_config.path_prefix_hierarchy[0] #=> String, one of "EXECUTION_ID", "SCHEMA_VERSION"
    #   resp.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.aggregation_config.aggregation_type #=> String, one of "None", "SingleFile"
    #   resp.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.aggregation_config.target_file_size #=> Integer
    #   resp.destination_flow_config_list[0].destination_connector_properties.honeycode.object #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.honeycode.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.honeycode.error_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.honeycode.error_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.customer_profiles.domain_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.customer_profiles.object_type_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.zendesk.object #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.zendesk.id_field_names #=> Array
    #   resp.destination_flow_config_list[0].destination_connector_properties.zendesk.id_field_names[0] #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.zendesk.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.zendesk.error_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.zendesk.error_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.zendesk.write_operation_type #=> String, one of "INSERT", "UPSERT", "UPDATE", "DELETE"
    #   resp.destination_flow_config_list[0].destination_connector_properties.marketo.object #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.marketo.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.marketo.error_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.marketo.error_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.custom_connector.entity_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.custom_connector.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.custom_connector.error_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.custom_connector.error_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.custom_connector.write_operation_type #=> String, one of "INSERT", "UPSERT", "UPDATE", "DELETE"
    #   resp.destination_flow_config_list[0].destination_connector_properties.custom_connector.id_field_names #=> Array
    #   resp.destination_flow_config_list[0].destination_connector_properties.custom_connector.id_field_names[0] #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.custom_connector.custom_properties #=> Hash
    #   resp.destination_flow_config_list[0].destination_connector_properties.custom_connector.custom_properties["CustomPropertyKey"] #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.sapo_data.object_path #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.sapo_data.success_response_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.sapo_data.success_response_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.sapo_data.id_field_names #=> Array
    #   resp.destination_flow_config_list[0].destination_connector_properties.sapo_data.id_field_names[0] #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.sapo_data.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.destination_flow_config_list[0].destination_connector_properties.sapo_data.error_handling_config.bucket_prefix #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.sapo_data.error_handling_config.bucket_name #=> String
    #   resp.destination_flow_config_list[0].destination_connector_properties.sapo_data.write_operation_type #=> String, one of "INSERT", "UPSERT", "UPDATE", "DELETE"
    #   resp.last_run_execution_details.most_recent_execution_message #=> String
    #   resp.last_run_execution_details.most_recent_execution_time #=> Time
    #   resp.last_run_execution_details.most_recent_execution_status #=> String, one of "InProgress", "Successful", "Error", "CancelStarted", "Canceled"
    #   resp.trigger_config.trigger_type #=> String, one of "Scheduled", "Event", "OnDemand"
    #   resp.trigger_config.trigger_properties.scheduled.schedule_expression #=> String
    #   resp.trigger_config.trigger_properties.scheduled.data_pull_mode #=> String, one of "Incremental", "Complete"
    #   resp.trigger_config.trigger_properties.scheduled.schedule_start_time #=> Time
    #   resp.trigger_config.trigger_properties.scheduled.schedule_end_time #=> Time
    #   resp.trigger_config.trigger_properties.scheduled.timezone #=> String
    #   resp.trigger_config.trigger_properties.scheduled.schedule_offset #=> Integer
    #   resp.trigger_config.trigger_properties.scheduled.first_execution_from #=> Time
    #   resp.trigger_config.trigger_properties.scheduled.flow_error_deactivation_threshold #=> Integer
    #   resp.tasks #=> Array
    #   resp.tasks[0].source_fields #=> Array
    #   resp.tasks[0].source_fields[0] #=> String
    #   resp.tasks[0].connector_operator.amplitude #=> String, one of "BETWEEN"
    #   resp.tasks[0].connector_operator.datadog #=> String, one of "PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.dynatrace #=> String, one of "PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.google_analytics #=> String, one of "PROJECTION", "BETWEEN"
    #   resp.tasks[0].connector_operator.infor_nexus #=> String, one of "PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.marketo #=> String, one of "PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.s3 #=> String, one of "PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.salesforce #=> String, one of "PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.service_now #=> String, one of "PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.singular #=> String, one of "PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.slack #=> String, one of "PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.trendmicro #=> String, one of "PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.veeva #=> String, one of "PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.zendesk #=> String, one of "PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.sapo_data #=> String, one of "PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.custom_connector #=> String, one of "PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"
    #   resp.tasks[0].connector_operator.pardot #=> String, one of "PROJECTION", "EQUAL_TO", "NO_OP", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC"
    #   resp.tasks[0].destination_field #=> String
    #   resp.tasks[0].task_type #=> String, one of "Arithmetic", "Filter", "Map", "Map_all", "Mask", "Merge", "Passthrough", "Truncate", "Validate", "Partition"
    #   resp.tasks[0].task_properties #=> Hash
    #   resp.tasks[0].task_properties["OperatorPropertiesKeys"] #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.created_by #=> String
    #   resp.last_updated_by #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.metadata_catalog_config.glue_data_catalog.role_arn #=> String
    #   resp.metadata_catalog_config.glue_data_catalog.database_name #=> String
    #   resp.metadata_catalog_config.glue_data_catalog.table_prefix #=> String
    #   resp.last_run_metadata_catalog_details #=> Array
    #   resp.last_run_metadata_catalog_details[0].catalog_type #=> String, one of "GLUE"
    #   resp.last_run_metadata_catalog_details[0].table_name #=> String
    #   resp.last_run_metadata_catalog_details[0].table_registration_output.message #=> String
    #   resp.last_run_metadata_catalog_details[0].table_registration_output.result #=> String
    #   resp.last_run_metadata_catalog_details[0].table_registration_output.status #=> String, one of "InProgress", "Successful", "Error", "CancelStarted", "Canceled"
    #   resp.last_run_metadata_catalog_details[0].partition_registration_output.message #=> String
    #   resp.last_run_metadata_catalog_details[0].partition_registration_output.result #=> String
    #   resp.last_run_metadata_catalog_details[0].partition_registration_output.status #=> String, one of "InProgress", "Successful", "Error", "CancelStarted", "Canceled"
    #   resp.schema_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeFlow AWS API Documentation
    #
    # @overload describe_flow(params = {})
    # @param [Hash] params ({})
    def describe_flow(params = {}, options = {})
      req = build_request(:describe_flow, params)
      req.send_request(options)
    end

    # Fetches the execution history of the flow.
    #
    # @option params [required, String] :flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of items that should be returned in the
    #   result set. The default for `maxResults` is 20 (for all paginated API
    #   operations).
    #
    # @option params [String] :next_token
    #   The pagination token for the next page of data.
    #
    # @return [Types::DescribeFlowExecutionRecordsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFlowExecutionRecordsResponse#flow_executions #flow_executions} => Array&lt;Types::ExecutionRecord&gt;
    #   * {Types::DescribeFlowExecutionRecordsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow_execution_records({
    #     flow_name: "FlowName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_executions #=> Array
    #   resp.flow_executions[0].execution_id #=> String
    #   resp.flow_executions[0].execution_status #=> String, one of "InProgress", "Successful", "Error", "CancelStarted", "Canceled"
    #   resp.flow_executions[0].execution_result.error_info.put_failures_count #=> Integer
    #   resp.flow_executions[0].execution_result.error_info.execution_message #=> String
    #   resp.flow_executions[0].execution_result.bytes_processed #=> Integer
    #   resp.flow_executions[0].execution_result.bytes_written #=> Integer
    #   resp.flow_executions[0].execution_result.records_processed #=> Integer
    #   resp.flow_executions[0].started_at #=> Time
    #   resp.flow_executions[0].last_updated_at #=> Time
    #   resp.flow_executions[0].data_pull_start_time #=> Time
    #   resp.flow_executions[0].data_pull_end_time #=> Time
    #   resp.flow_executions[0].metadata_catalog_details #=> Array
    #   resp.flow_executions[0].metadata_catalog_details[0].catalog_type #=> String, one of "GLUE"
    #   resp.flow_executions[0].metadata_catalog_details[0].table_name #=> String
    #   resp.flow_executions[0].metadata_catalog_details[0].table_registration_output.message #=> String
    #   resp.flow_executions[0].metadata_catalog_details[0].table_registration_output.result #=> String
    #   resp.flow_executions[0].metadata_catalog_details[0].table_registration_output.status #=> String, one of "InProgress", "Successful", "Error", "CancelStarted", "Canceled"
    #   resp.flow_executions[0].metadata_catalog_details[0].partition_registration_output.message #=> String
    #   resp.flow_executions[0].metadata_catalog_details[0].partition_registration_output.result #=> String
    #   resp.flow_executions[0].metadata_catalog_details[0].partition_registration_output.status #=> String, one of "InProgress", "Successful", "Error", "CancelStarted", "Canceled"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeFlowExecutionRecords AWS API Documentation
    #
    # @overload describe_flow_execution_records(params = {})
    # @param [Hash] params ({})
    def describe_flow_execution_records(params = {}, options = {})
      req = build_request(:describe_flow_execution_records, params)
      req.send_request(options)
    end

    # Returns the list of available connector entities supported by Amazon
    # AppFlow. For example, you can query Salesforce for *Account* and
    # *Opportunity* entities, or query ServiceNow for the *Incident* entity.
    #
    # @option params [String] :connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in the Amazon Web Services account, and is used to
    #   query the downstream connector.
    #
    # @option params [String] :connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #
    # @option params [String] :entities_path
    #   This optional parameter is specific to connector implementation. Some
    #   connectors support multiple levels or categories of entities. You can
    #   find out the list of roots for such providers by sending a request
    #   without the `entitiesPath` parameter. If the connector supports
    #   entities at different roots, this initial request returns the list of
    #   roots. Otherwise, this request returns all entities supported by the
    #   provider.
    #
    # @option params [String] :api_version
    #   The version of the API that's used by the connector.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items that the operation returns in the
    #   response.
    #
    # @option params [String] :next_token
    #   A token that was provided by your prior `ListConnectorEntities`
    #   operation if the response was too big for the page size. You specify
    #   this token to get the next page of results in paginated response.
    #
    # @return [Types::ListConnectorEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectorEntitiesResponse#connector_entity_map #connector_entity_map} => Hash&lt;String,Array&lt;Types::ConnectorEntity&gt;&gt;
    #   * {Types::ListConnectorEntitiesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connector_entities({
    #     connector_profile_name: "ConnectorProfileName",
    #     connector_type: "Salesforce", # accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #     entities_path: "EntitiesPath",
    #     api_version: "ApiVersion",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_entity_map #=> Hash
    #   resp.connector_entity_map["Group"] #=> Array
    #   resp.connector_entity_map["Group"][0].name #=> String
    #   resp.connector_entity_map["Group"][0].label #=> String
    #   resp.connector_entity_map["Group"][0].has_nested_entities #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListConnectorEntities AWS API Documentation
    #
    # @overload list_connector_entities(params = {})
    # @param [Hash] params ({})
    def list_connector_entities(params = {}, options = {})
      req = build_request(:list_connector_entities, params)
      req.send_request(options)
    end

    # Returns the list of all registered custom connectors in your Amazon
    # Web Services account. This API lists only custom connectors registered
    # in this account, not the Amazon Web Services authored connectors.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of items that should be returned in the
    #   result set. The default for `maxResults` is 20 (for all paginated API
    #   operations).
    #
    # @option params [String] :next_token
    #   The pagination token for the next page of data.
    #
    # @return [Types::ListConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectorsResponse#connectors #connectors} => Array&lt;Types::ConnectorDetail&gt;
    #   * {Types::ListConnectorsResponse#next_token #next_token} => String
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
    #   resp.connectors #=> Array
    #   resp.connectors[0].connector_description #=> String
    #   resp.connectors[0].connector_name #=> String
    #   resp.connectors[0].connector_owner #=> String
    #   resp.connectors[0].connector_version #=> String
    #   resp.connectors[0].application_type #=> String
    #   resp.connectors[0].connector_type #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.connectors[0].connector_label #=> String
    #   resp.connectors[0].registered_at #=> Time
    #   resp.connectors[0].registered_by #=> String
    #   resp.connectors[0].connector_provisioning_type #=> String, one of "LAMBDA"
    #   resp.connectors[0].connector_modes #=> Array
    #   resp.connectors[0].connector_modes[0] #=> String
    #   resp.connectors[0].supported_data_transfer_types #=> Array
    #   resp.connectors[0].supported_data_transfer_types[0] #=> String, one of "RECORD", "FILE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListConnectors AWS API Documentation
    #
    # @overload list_connectors(params = {})
    # @param [Hash] params ({})
    def list_connectors(params = {}, options = {})
      req = build_request(:list_connectors, params)
      req.send_request(options)
    end

    # Lists all of the flows associated with your account.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of items that should be returned in the
    #   result set.
    #
    # @option params [String] :next_token
    #   The pagination token for next page of data.
    #
    # @return [Types::ListFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowsResponse#flows #flows} => Array&lt;Types::FlowDefinition&gt;
    #   * {Types::ListFlowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flows({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.flows #=> Array
    #   resp.flows[0].flow_arn #=> String
    #   resp.flows[0].description #=> String
    #   resp.flows[0].flow_name #=> String
    #   resp.flows[0].flow_status #=> String, one of "Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"
    #   resp.flows[0].source_connector_type #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.flows[0].source_connector_label #=> String
    #   resp.flows[0].destination_connector_type #=> String, one of "Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"
    #   resp.flows[0].destination_connector_label #=> String
    #   resp.flows[0].trigger_type #=> String, one of "Scheduled", "Event", "OnDemand"
    #   resp.flows[0].created_at #=> Time
    #   resp.flows[0].last_updated_at #=> Time
    #   resp.flows[0].created_by #=> String
    #   resp.flows[0].last_updated_by #=> String
    #   resp.flows[0].tags #=> Hash
    #   resp.flows[0].tags["TagKey"] #=> String
    #   resp.flows[0].last_run_execution_details.most_recent_execution_message #=> String
    #   resp.flows[0].last_run_execution_details.most_recent_execution_time #=> Time
    #   resp.flows[0].last_run_execution_details.most_recent_execution_status #=> String, one of "InProgress", "Successful", "Error", "CancelStarted", "Canceled"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListFlows AWS API Documentation
    #
    # @overload list_flows(params = {})
    # @param [Hash] params ({})
    def list_flows(params = {}, options = {})
      req = build_request(:list_flows, params)
      req.send_request(options)
    end

    # Retrieves the tags that are associated with a specified flow.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the specified flow.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Registers a new custom connector with your Amazon Web Services
    # account. Before you can register the connector, you must deploy the
    # associated AWS lambda function in your account.
    #
    # @option params [String] :connector_label
    #   The name of the connector. The name is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account.
    #
    # @option params [String] :description
    #   A description about the connector that's being registered.
    #
    # @option params [String] :connector_provisioning_type
    #   The provisioning type of the connector. Currently the only supported
    #   value is LAMBDA.
    #
    # @option params [Types::ConnectorProvisioningConfig] :connector_provisioning_config
    #   The provisioning type of the connector. Currently the only supported
    #   value is LAMBDA.
    #
    # @option params [String] :client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `RegisterConnector` request completes only once. You choose the
    #   value to pass. For example, if you don't receive a response from your
    #   request, you can safely retry the request with the same `clientToken`
    #   parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must provide
    #   your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `RegisterConnector`. The
    #   token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::RegisterConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterConnectorResponse#connector_arn #connector_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_connector({
    #     connector_label: "ConnectorLabel",
    #     description: "Description",
    #     connector_provisioning_type: "LAMBDA", # accepts LAMBDA
    #     connector_provisioning_config: {
    #       lambda: {
    #         lambda_arn: "ARN", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/RegisterConnector AWS API Documentation
    #
    # @overload register_connector(params = {})
    # @param [Hash] params ({})
    def register_connector(params = {}, options = {})
      req = build_request(:register_connector, params)
      req.send_request(options)
    end

    # Resets metadata about your connector entities that Amazon AppFlow
    # stored in its cache. Use this action when you want Amazon AppFlow to
    # return the latest information about the data that you have in a source
    # application.
    #
    # Amazon AppFlow returns metadata about your entities when you use the
    # ListConnectorEntities or DescribeConnectorEntities actions. Following
    # these actions, Amazon AppFlow caches the metadata to reduce the number
    # of API requests that it must send to the source application. Amazon
    # AppFlow automatically resets the cache once every hour, but you can
    # use this action when you want to get the latest metadata right away.
    #
    # @option params [String] :connector_profile_name
    #   The name of the connector profile that you want to reset cached
    #   metadata for.
    #
    #   You can omit this parameter if you're resetting the cache for any of
    #   the following connectors: Amazon Connect, Amazon EventBridge, Amazon
    #   Lookout for Metrics, Amazon S3, or Upsolver. If you're resetting the
    #   cache for any other connector, you must include this parameter in your
    #   request.
    #
    # @option params [String] :connector_type
    #   The type of connector to reset cached metadata for.
    #
    #   You must include this parameter in your request if you're resetting
    #   the cache for any of the following connectors: Amazon Connect, Amazon
    #   EventBridge, Amazon Lookout for Metrics, Amazon S3, or Upsolver. If
    #   you're resetting the cache for any other connector, you can omit this
    #   parameter from your request.
    #
    # @option params [String] :connector_entity_name
    #   Use this parameter if you want to reset cached metadata about the
    #   details for an individual entity.
    #
    #   If you don't include this parameter in your request, Amazon AppFlow
    #   only resets cached metadata about entity names, not entity details.
    #
    # @option params [String] :entities_path
    #   Use this parameter only if you’re resetting the cached metadata about
    #   a nested entity. Only some connectors support nested entities. A
    #   nested entity is one that has another entity as a parent. To use this
    #   parameter, specify the name of the parent entity.
    #
    #   To look up the parent-child relationship of entities, you can send a
    #   ListConnectorEntities request that omits the entitiesPath parameter.
    #   Amazon AppFlow will return a list of top-level entities. For each one,
    #   it indicates whether the entity has nested entities. Then, in a
    #   subsequent ListConnectorEntities request, you can specify a parent
    #   entity name for the entitiesPath parameter. Amazon AppFlow will return
    #   a list of the child entities for that parent.
    #
    # @option params [String] :api_version
    #   The API version that you specified in the connector profile that
    #   you’re resetting cached metadata for. You must use this parameter only
    #   if the connector supports multiple API versions or if the connector
    #   type is CustomConnector.
    #
    #   To look up how many versions a connector supports, use the
    #   DescribeConnectors action. In the response, find the value that Amazon
    #   AppFlow returns for the connectorVersion parameter.
    #
    #   To look up the connector type, use the DescribeConnectorProfiles
    #   action. In the response, find the value that Amazon AppFlow returns
    #   for the connectorType parameter.
    #
    #   To look up the API version that you specified in a connector profile,
    #   use the DescribeConnectorProfiles action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_connector_metadata_cache({
    #     connector_profile_name: "ConnectorProfileName",
    #     connector_type: "Salesforce", # accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #     connector_entity_name: "EntityName",
    #     entities_path: "EntitiesPath",
    #     api_version: "ApiVersion",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ResetConnectorMetadataCache AWS API Documentation
    #
    # @overload reset_connector_metadata_cache(params = {})
    # @param [Hash] params ({})
    def reset_connector_metadata_cache(params = {}, options = {})
      req = build_request(:reset_connector_metadata_cache, params)
      req.send_request(options)
    end

    # Activates an existing flow. For on-demand flows, this operation runs
    # the flow immediately. For schedule and event-triggered flows, this
    # operation activates the flow.
    #
    # @option params [required, String] :flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #
    # @option params [String] :client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `StartFlow` request completes only once. You choose the value to
    #   pass. For example, if you don't receive a response from your request,
    #   you can safely retry the request with the same `clientToken` parameter
    #   value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must provide
    #   your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs for flows that run on a schedule or based on an event.
    #   However, the error doesn't occur for flows that run on demand. You
    #   set the conditions that initiate your flow for the `triggerConfig`
    #   parameter.
    #
    #   If you use a different value for `clientToken`, Amazon AppFlow
    #   considers it a new call to `StartFlow`. The token is active for 8
    #   hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::StartFlowResponse#flow_status #flow_status} => String
    #   * {Types::StartFlowResponse#execution_id #execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_flow({
    #     flow_name: "FlowName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.flow_status #=> String, one of "Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"
    #   resp.execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/StartFlow AWS API Documentation
    #
    # @overload start_flow(params = {})
    # @param [Hash] params ({})
    def start_flow(params = {}, options = {})
      req = build_request(:start_flow, params)
      req.send_request(options)
    end

    # Deactivates the existing flow. For on-demand flows, this operation
    # returns an `unsupportedOperationException` error message. For schedule
    # and event-triggered flows, this operation deactivates the flow.
    #
    # @option params [required, String] :flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #
    # @return [Types::StopFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::StopFlowResponse#flow_status #flow_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_flow({
    #     flow_name: "FlowName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.flow_status #=> String, one of "Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/StopFlow AWS API Documentation
    #
    # @overload stop_flow(params = {})
    # @param [Hash] params ({})
    def stop_flow(params = {}, options = {})
      req = build_request(:stop_flow, params)
      req.send_request(options)
    end

    # Applies a tag to the specified flow.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for your flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Unregisters the custom connector registered in your account that
    # matches the connector label provided in the request.
    #
    # @option params [required, String] :connector_label
    #   The label of the connector. The label is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account.
    #
    # @option params [Boolean] :force_delete
    #   Indicates whether Amazon AppFlow should unregister the connector, even
    #   if it is currently in use in one or more connector profiles. The
    #   default value is false.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unregister_connector({
    #     connector_label: "ConnectorLabel", # required
    #     force_delete: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UnregisterConnector AWS API Documentation
    #
    # @overload unregister_connector(params = {})
    # @param [Hash] params ({})
    def unregister_connector(params = {}, options = {})
      req = build_request(:unregister_connector, params)
      req.send_request(options)
    end

    # Removes a tag from the specified flow.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys associated with the tag that you want to remove from your
    #   flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a given connector profile associated with your account.
    #
    # @option params [required, String] :connector_profile_name
    #   The name of the connector profile and is unique for each
    #   `ConnectorProfile` in the Amazon Web Services account.
    #
    # @option params [required, String] :connection_mode
    #   Indicates the connection mode and if it is public or private.
    #
    # @option params [required, Types::ConnectorProfileConfig] :connector_profile_config
    #   Defines the connector-specific profile configuration and credentials.
    #
    # @option params [String] :client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `UpdateConnectorProfile` request completes only once. You choose
    #   the value to pass. For example, if you don't receive a response from
    #   your request, you can safely retry the request with the same
    #   `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must provide
    #   your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `UpdateConnectorProfile`.
    #   The token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateConnectorProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConnectorProfileResponse#connector_profile_arn #connector_profile_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connector_profile({
    #     connector_profile_name: "ConnectorProfileName", # required
    #     connection_mode: "Public", # required, accepts Public, Private
    #     connector_profile_config: { # required
    #       connector_profile_properties: { # required
    #         amplitude: {
    #         },
    #         datadog: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         dynatrace: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         google_analytics: {
    #         },
    #         honeycode: {
    #         },
    #         infor_nexus: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         marketo: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         redshift: {
    #           database_url: "DatabaseUrl",
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           role_arn: "RoleArn", # required
    #           data_api_role_arn: "DataApiRoleArn",
    #           is_redshift_serverless: false,
    #           cluster_identifier: "ClusterIdentifier",
    #           workgroup_name: "WorkgroupName",
    #           database_name: "DatabaseName",
    #         },
    #         salesforce: {
    #           instance_url: "InstanceUrl",
    #           is_sandbox_environment: false,
    #           use_private_link_for_metadata_and_authorization: false,
    #         },
    #         service_now: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         singular: {
    #         },
    #         slack: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         snowflake: {
    #           warehouse: "Warehouse", # required
    #           stage: "Stage", # required
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           private_link_service_name: "PrivateLinkServiceName",
    #           account_name: "AccountName",
    #           region: "Region",
    #         },
    #         trendmicro: {
    #         },
    #         veeva: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         zendesk: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         sapo_data: {
    #           application_host_url: "ApplicationHostUrl", # required
    #           application_service_path: "ApplicationServicePath", # required
    #           port_number: 1, # required
    #           client_number: "ClientNumber", # required
    #           logon_language: "LogonLanguage",
    #           private_link_service_name: "PrivateLinkServiceName",
    #           o_auth_properties: {
    #             token_url: "TokenUrl", # required
    #             auth_code_url: "AuthCodeUrl", # required
    #             o_auth_scopes: ["OAuthScope"], # required
    #           },
    #           disable_sso: false,
    #         },
    #         custom_connector: {
    #           profile_properties: {
    #             "ProfilePropertyKey" => "ProfilePropertyValue",
    #           },
    #           o_auth_2_properties: {
    #             token_url: "TokenUrl", # required
    #             o_auth_2_grant_type: "CLIENT_CREDENTIALS", # required, accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE, JWT_BEARER
    #             token_url_custom_properties: {
    #               "CustomPropertyKey" => "CustomPropertyValue",
    #             },
    #           },
    #         },
    #         pardot: {
    #           instance_url: "InstanceUrl",
    #           is_sandbox_environment: false,
    #           business_unit_id: "BusinessUnitId",
    #         },
    #       },
    #       connector_profile_credentials: {
    #         amplitude: {
    #           api_key: "ApiKey", # required
    #           secret_key: "SecretKey", # required
    #         },
    #         datadog: {
    #           api_key: "ApiKey", # required
    #           application_key: "ApplicationKey", # required
    #         },
    #         dynatrace: {
    #           api_token: "ApiToken", # required
    #         },
    #         google_analytics: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         honeycode: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         infor_nexus: {
    #           access_key_id: "AccessKeyId", # required
    #           user_id: "Username", # required
    #           secret_access_key: "Key", # required
    #           datakey: "Key", # required
    #         },
    #         marketo: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         redshift: {
    #           username: "String",
    #           password: "Password",
    #         },
    #         salesforce: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #           client_credentials_arn: "ClientCredentialsArn",
    #           o_auth_2_grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE, JWT_BEARER
    #           jwt_token: "JwtToken",
    #         },
    #         service_now: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         singular: {
    #           api_key: "ApiKey", # required
    #         },
    #         slack: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         snowflake: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         trendmicro: {
    #           api_secret_key: "ApiSecretKey", # required
    #         },
    #         veeva: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         zendesk: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         sapo_data: {
    #           basic_auth_credentials: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           o_auth_credentials: {
    #             client_id: "ClientId", # required
    #             client_secret: "ClientSecret", # required
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri",
    #             },
    #           },
    #         },
    #         custom_connector: {
    #           authentication_type: "OAUTH2", # required, accepts OAUTH2, APIKEY, BASIC, CUSTOM
    #           basic: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           oauth2: {
    #             client_id: "ClientId",
    #             client_secret: "ClientSecret",
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri",
    #             },
    #           },
    #           api_key: {
    #             api_key: "ApiKey", # required
    #             api_secret_key: "ApiSecretKey",
    #           },
    #           custom: {
    #             custom_authentication_type: "CustomAuthenticationType", # required
    #             credentials_map: {
    #               "CredentialsMapKey" => "CredentialsMapValue",
    #             },
    #           },
    #         },
    #         pardot: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #           client_credentials_arn: "ClientCredentialsArn",
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateConnectorProfile AWS API Documentation
    #
    # @overload update_connector_profile(params = {})
    # @param [Hash] params ({})
    def update_connector_profile(params = {}, options = {})
      req = build_request(:update_connector_profile, params)
      req.send_request(options)
    end

    # Updates a custom connector that you've previously registered. This
    # operation updates the connector with one of the following:
    #
    # * The latest version of the AWS Lambda function that's assigned to
    #   the connector
    #
    # * A new AWS Lambda function that you specify
    #
    # @option params [required, String] :connector_label
    #   The name of the connector. The name is unique for each connector
    #   registration in your AWS account.
    #
    # @option params [String] :description
    #   A description about the update that you're applying to the connector.
    #
    # @option params [Types::ConnectorProvisioningConfig] :connector_provisioning_config
    #   Contains information about the configuration of the connector being
    #   registered.
    #
    # @option params [String] :client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `UpdateConnectorRegistration` request completes only once. You
    #   choose the value to pass. For example, if you don't receive a
    #   response from your request, you can safely retry the request with the
    #   same `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must provide
    #   your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to
    #   `UpdateConnectorRegistration`. The token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateConnectorRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConnectorRegistrationResponse#connector_arn #connector_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connector_registration({
    #     connector_label: "ConnectorLabel", # required
    #     description: "Description",
    #     connector_provisioning_config: {
    #       lambda: {
    #         lambda_arn: "ARN", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateConnectorRegistration AWS API Documentation
    #
    # @overload update_connector_registration(params = {})
    # @param [Hash] params ({})
    def update_connector_registration(params = {}, options = {})
      req = build_request(:update_connector_registration, params)
      req.send_request(options)
    end

    # Updates an existing flow.
    #
    # @option params [required, String] :flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #
    # @option params [String] :description
    #   A description of the flow.
    #
    # @option params [required, Types::TriggerConfig] :trigger_config
    #   The trigger settings that determine how and when the flow runs.
    #
    # @option params [required, Types::SourceFlowConfig] :source_flow_config
    #   Contains information about the configuration of the source connector
    #   used in the flow.
    #
    # @option params [required, Array<Types::DestinationFlowConfig>] :destination_flow_config_list
    #   The configuration that controls how Amazon AppFlow transfers data to
    #   the destination connector.
    #
    # @option params [required, Array<Types::Task>] :tasks
    #   A list of tasks that Amazon AppFlow performs while transferring the
    #   data in the flow run.
    #
    # @option params [Types::MetadataCatalogConfig] :metadata_catalog_config
    #   Specifies the configuration that Amazon AppFlow uses when it catalogs
    #   the data that's transferred by the associated flow. When Amazon
    #   AppFlow catalogs the data from a flow, it stores metadata in a data
    #   catalog.
    #
    # @option params [String] :client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `UpdateFlow` request completes only once. You choose the value to
    #   pass. For example, if you don't receive a response from your request,
    #   you can safely retry the request with the same `clientToken` parameter
    #   value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must provide
    #   your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `UpdateFlow`. The token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowResponse#flow_status #flow_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow({
    #     flow_name: "FlowName", # required
    #     description: "FlowDescription",
    #     trigger_config: { # required
    #       trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #       trigger_properties: {
    #         scheduled: {
    #           schedule_expression: "ScheduleExpression", # required
    #           data_pull_mode: "Incremental", # accepts Incremental, Complete
    #           schedule_start_time: Time.now,
    #           schedule_end_time: Time.now,
    #           timezone: "Timezone",
    #           schedule_offset: 1,
    #           first_execution_from: Time.now,
    #           flow_error_deactivation_threshold: 1,
    #         },
    #       },
    #     },
    #     source_flow_config: { # required
    #       connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #       api_version: "ApiVersion",
    #       connector_profile_name: "ConnectorProfileName",
    #       source_connector_properties: { # required
    #         amplitude: {
    #           object: "Object", # required
    #         },
    #         datadog: {
    #           object: "Object", # required
    #         },
    #         dynatrace: {
    #           object: "Object", # required
    #         },
    #         google_analytics: {
    #           object: "Object", # required
    #         },
    #         infor_nexus: {
    #           object: "Object", # required
    #         },
    #         marketo: {
    #           object: "Object", # required
    #         },
    #         s3: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           s3_input_format_config: {
    #             s3_input_file_type: "CSV", # accepts CSV, JSON
    #           },
    #         },
    #         salesforce: {
    #           object: "Object", # required
    #           enable_dynamic_field_update: false,
    #           include_deleted_records: false,
    #           data_transfer_api: "AUTOMATIC", # accepts AUTOMATIC, BULKV2, REST_SYNC
    #         },
    #         service_now: {
    #           object: "Object", # required
    #         },
    #         singular: {
    #           object: "Object", # required
    #         },
    #         slack: {
    #           object: "Object", # required
    #         },
    #         trendmicro: {
    #           object: "Object", # required
    #         },
    #         veeva: {
    #           object: "Object", # required
    #           document_type: "DocumentType",
    #           include_source_files: false,
    #           include_renditions: false,
    #           include_all_versions: false,
    #         },
    #         zendesk: {
    #           object: "Object", # required
    #         },
    #         sapo_data: {
    #           object_path: "Object",
    #         },
    #         custom_connector: {
    #           entity_name: "EntityName", # required
    #           custom_properties: {
    #             "CustomPropertyKey" => "CustomPropertyValue",
    #           },
    #           data_transfer_api: {
    #             name: "DataTransferApiTypeName",
    #             type: "SYNC", # accepts SYNC, ASYNC, AUTOMATIC
    #           },
    #         },
    #         pardot: {
    #           object: "Object", # required
    #         },
    #       },
    #       incremental_pull_config: {
    #         datetime_type_field_name: "DatetimeTypeFieldName",
    #       },
    #     },
    #     destination_flow_config_list: [ # required
    #       {
    #         connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
    #         api_version: "ApiVersion",
    #         connector_profile_name: "ConnectorProfileName",
    #         destination_connector_properties: { # required
    #           redshift: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: {
    #               file_type: "CSV", # accepts CSV, JSON, PARQUET
    #               prefix_config: {
    #                 prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #                 prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #                 path_prefix_hierarchy: ["EXECUTION_ID"], # accepts EXECUTION_ID, SCHEMA_VERSION
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None", # accepts None, SingleFile
    #                 target_file_size: 1,
    #               },
    #               preserve_source_data_typing: false,
    #             },
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             write_operation_type: "INSERT", # accepts INSERT, UPSERT, UPDATE, DELETE
    #             data_transfer_api: "AUTOMATIC", # accepts AUTOMATIC, BULKV2, REST_SYNC
    #           },
    #           snowflake: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           event_bridge: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           lookout_metrics: {
    #           },
    #           upsolver: {
    #             bucket_name: "UpsolverBucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: { # required
    #               file_type: "CSV", # accepts CSV, JSON, PARQUET
    #               prefix_config: { # required
    #                 prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #                 prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #                 path_prefix_hierarchy: ["EXECUTION_ID"], # accepts EXECUTION_ID, SCHEMA_VERSION
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None", # accepts None, SingleFile
    #                 target_file_size: 1,
    #               },
    #             },
    #           },
    #           honeycode: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           customer_profiles: {
    #             domain_name: "DomainName", # required
    #             object_type_name: "ObjectTypeName",
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             write_operation_type: "INSERT", # accepts INSERT, UPSERT, UPDATE, DELETE
    #           },
    #           marketo: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           custom_connector: {
    #             entity_name: "EntityName", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             write_operation_type: "INSERT", # accepts INSERT, UPSERT, UPDATE, DELETE
    #             id_field_names: ["Name"],
    #             custom_properties: {
    #               "CustomPropertyKey" => "CustomPropertyValue",
    #             },
    #           },
    #           sapo_data: {
    #             object_path: "Object", # required
    #             success_response_handling_config: {
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #             write_operation_type: "INSERT", # accepts INSERT, UPSERT, UPDATE, DELETE
    #           },
    #         },
    #       },
    #     ],
    #     tasks: [ # required
    #       {
    #         source_fields: ["String"], # required
    #         connector_operator: {
    #           amplitude: "BETWEEN", # accepts BETWEEN
    #           datadog: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           dynatrace: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           google_analytics: "PROJECTION", # accepts PROJECTION, BETWEEN
    #           infor_nexus: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           singular: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           slack: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           trendmicro: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           veeva: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           sapo_data: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           custom_connector: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           pardot: "PROJECTION", # accepts PROJECTION, EQUAL_TO, NO_OP, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC
    #         },
    #         destination_field: "DestinationField",
    #         task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Map_all, Mask, Merge, Passthrough, Truncate, Validate, Partition
    #         task_properties: {
    #           "VALUE" => "Property",
    #         },
    #       },
    #     ],
    #     metadata_catalog_config: {
    #       glue_data_catalog: {
    #         role_arn: "GlueDataCatalogIAMRole", # required
    #         database_name: "GlueDataCatalogDatabaseName", # required
    #         table_prefix: "GlueDataCatalogTablePrefix", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_status #=> String, one of "Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateFlow AWS API Documentation
    #
    # @overload update_flow(params = {})
    # @param [Hash] params ({})
    def update_flow(params = {}, options = {})
      req = build_request(:update_flow, params)
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
      context[:gem_name] = 'aws-sdk-appflow'
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
