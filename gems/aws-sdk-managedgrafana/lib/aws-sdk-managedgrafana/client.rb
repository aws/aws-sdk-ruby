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

Aws::Plugins::GlobalConfiguration.add_identifier(:managedgrafana)

module Aws::ManagedGrafana
  # An API client for ManagedGrafana.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ManagedGrafana::Client.new(
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

    @identifier = :managedgrafana

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
    add_plugin(Aws::ManagedGrafana::Plugins::Endpoints)

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
    #   @option options [Aws::ManagedGrafana::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ManagedGrafana::EndpointParameters`
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

    # Assigns a Grafana Enterprise license to a workspace. Upgrading to
    # Grafana Enterprise incurs additional fees. For more information, see
    # [Upgrade a workspace to Grafana Enterprise][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html
    #
    # @option params [required, String] :license_type
    #   The type of license to associate with the workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to associate the license with.
    #
    # @return [Types::AssociateLicenseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateLicenseResponse#workspace #workspace} => Types::WorkspaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_license({
    #     license_type: "ENTERPRISE", # required, accepts ENTERPRISE, ENTERPRISE_FREE_TRIAL
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace.account_access_type #=> String, one of "CURRENT_ACCOUNT", "ORGANIZATION"
    #   resp.workspace.authentication.providers #=> Array
    #   resp.workspace.authentication.providers[0] #=> String, one of "AWS_SSO", "SAML"
    #   resp.workspace.authentication.saml_configuration_status #=> String, one of "CONFIGURED", "NOT_CONFIGURED"
    #   resp.workspace.created #=> Time
    #   resp.workspace.data_sources #=> Array
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT", "TWINMAKER"
    #   resp.workspace.description #=> String
    #   resp.workspace.endpoint #=> String
    #   resp.workspace.free_trial_consumed #=> Boolean
    #   resp.workspace.free_trial_expiration #=> Time
    #   resp.workspace.grafana_version #=> String
    #   resp.workspace.id #=> String
    #   resp.workspace.license_expiration #=> Time
    #   resp.workspace.license_type #=> String, one of "ENTERPRISE", "ENTERPRISE_FREE_TRIAL"
    #   resp.workspace.modified #=> Time
    #   resp.workspace.name #=> String
    #   resp.workspace.network_access_control.prefix_list_ids #=> Array
    #   resp.workspace.network_access_control.prefix_list_ids[0] #=> String
    #   resp.workspace.network_access_control.vpce_ids #=> Array
    #   resp.workspace.network_access_control.vpce_ids[0] #=> String
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
    #   resp.workspace.tags #=> Hash
    #   resp.workspace.tags["TagKey"] #=> String
    #   resp.workspace.vpc_configuration.security_group_ids #=> Array
    #   resp.workspace.vpc_configuration.security_group_ids[0] #=> String
    #   resp.workspace.vpc_configuration.subnet_ids #=> Array
    #   resp.workspace.vpc_configuration.subnet_ids[0] #=> String
    #   resp.workspace.workspace_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/AssociateLicense AWS API Documentation
    #
    # @overload associate_license(params = {})
    # @param [Hash] params ({})
    def associate_license(params = {}, options = {})
      req = build_request(:associate_license, params)
      req.send_request(options)
    end

    # Creates a *workspace*. In a workspace, you can create Grafana
    # dashboards and visualizations to analyze your metrics, logs, and
    # traces. You don't have to build, package, or deploy any hardware to
    # run the Grafana server.
    #
    # Don't use `CreateWorkspace` to modify an existing workspace. Instead,
    # use [UpdateWorkspace][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html
    #
    # @option params [required, String] :account_access_type
    #   Specifies whether the workspace can access Amazon Web Services
    #   resources in this Amazon Web Services account only, or whether it can
    #   also access Amazon Web Services resources in other accounts in the
    #   same organization. If you specify `ORGANIZATION`, you must specify
    #   which organizational units the workspace can access in the
    #   `workspaceOrganizationalUnits` parameter.
    #
    # @option params [required, Array<String>] :authentication_providers
    #   Specifies whether this workspace uses SAML 2.0, IAM Identity Center
    #   (successor to Single Sign-On), or both to authenticate users for using
    #   the Grafana console within a workspace. For more information, see
    #   [User authentication in Amazon Managed Grafana][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive, user-provided identifier to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :configuration
    #   The configuration string for the workspace that you create. For more
    #   information about the format and configuration options available, see
    #   [Working in your Grafana workspace][1].
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html
    #
    # @option params [String] :grafana_version
    #   Specifies the version of Grafana to support in the new workspace.
    #
    #   Supported values are `8.4` and `9.4`.
    #
    # @option params [Types::NetworkAccessConfiguration] :network_access_control
    #   Configuration for network access to your workspace.
    #
    #   When this is configured, only listed IP addresses and VPC endpoints
    #   will be able to access your workspace. Standard Grafana authentication
    #   and authorization will still be required.
    #
    #   If this is not configured, or is removed, then all IP addresses and
    #   VPC endpoints will be allowed. Standard Grafana authentication and
    #   authorization will still be required.
    #
    # @option params [String] :organization_role_name
    #   The name of an IAM role that already exists to use with Organizations
    #   to access Amazon Web Services data sources and notification channels
    #   in other accounts in an organization.
    #
    # @option params [required, String] :permission_type
    #   When creating a workspace through the Amazon Web Services API, CLI or
    #   Amazon Web Services CloudFormation, you must manage IAM roles and
    #   provision the permissions that the workspace needs to use Amazon Web
    #   Services data sources and notification channels.
    #
    #   You must also specify a `workspaceRoleArn` for a role that you will
    #   manage for the workspace to use when accessing those datasources and
    #   notification channels.
    #
    #   The ability for Amazon Managed Grafana to create and update IAM roles
    #   on behalf of the user is supported only in the Amazon Managed Grafana
    #   console, where this value may be set to `SERVICE_MANAGED`.
    #
    #   <note markdown="1"> Use only the `CUSTOMER_MANAGED` permission type when creating a
    #   workspace with the API, CLI or Amazon Web Services CloudFormation.
    #
    #    </note>
    #
    #   For more information, see [Amazon Managed Grafana permissions and
    #   policies for Amazon Web Services data sources and notification
    #   channels][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html
    #
    # @option params [String] :stack_set_name
    #   The name of the CloudFormation stack set to use to generate IAM roles
    #   to be used for this workspace.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of tags associated with the workspace.
    #
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   The configuration settings for an Amazon VPC that contains data
    #   sources for your Grafana workspace to connect to.
    #
    # @option params [Array<String>] :workspace_data_sources
    #   This parameter is for internal use only, and should not be used.
    #
    # @option params [String] :workspace_description
    #   A description for the workspace. This is used only to help you
    #   identify this workspace.
    #
    #   Pattern: `^[\\p\{L\}\\p\{Z\}\\p\{N\}\\p\{P\}]\{0,2048\}$`
    #
    # @option params [String] :workspace_name
    #   The name for the workspace. It does not have to be unique.
    #
    # @option params [Array<String>] :workspace_notification_destinations
    #   Specify the Amazon Web Services notification channels that you plan to
    #   use in this workspace. Specifying these data sources here enables
    #   Amazon Managed Grafana to create IAM roles and permissions that allow
    #   Amazon Managed Grafana to use these channels.
    #
    # @option params [Array<String>] :workspace_organizational_units
    #   Specifies the organizational units that this workspace is allowed to
    #   use data sources from, if this workspace is in an account that is part
    #   of an organization.
    #
    # @option params [String] :workspace_role_arn
    #   Specified the IAM role that grants permissions to the Amazon Web
    #   Services resources that the workspace will view data from, including
    #   both data sources and notification channels. You are responsible for
    #   managing the permissions for this role as new data sources or
    #   notification channels are added.
    #
    # @return [Types::CreateWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspaceResponse#workspace #workspace} => Types::WorkspaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace({
    #     account_access_type: "CURRENT_ACCOUNT", # required, accepts CURRENT_ACCOUNT, ORGANIZATION
    #     authentication_providers: ["AWS_SSO"], # required, accepts AWS_SSO, SAML
    #     client_token: "ClientToken",
    #     configuration: "OverridableConfigurationJson",
    #     grafana_version: "GrafanaVersion",
    #     network_access_control: {
    #       prefix_list_ids: ["PrefixListId"], # required
    #       vpce_ids: ["VpceId"], # required
    #     },
    #     organization_role_name: "OrganizationRoleName",
    #     permission_type: "CUSTOMER_MANAGED", # required, accepts CUSTOMER_MANAGED, SERVICE_MANAGED
    #     stack_set_name: "StackSetName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     vpc_configuration: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnet_ids: ["SubnetId"], # required
    #     },
    #     workspace_data_sources: ["AMAZON_OPENSEARCH_SERVICE"], # accepts AMAZON_OPENSEARCH_SERVICE, CLOUDWATCH, PROMETHEUS, XRAY, TIMESTREAM, SITEWISE, ATHENA, REDSHIFT, TWINMAKER
    #     workspace_description: "Description",
    #     workspace_name: "WorkspaceName",
    #     workspace_notification_destinations: ["SNS"], # accepts SNS
    #     workspace_organizational_units: ["OrganizationalUnit"],
    #     workspace_role_arn: "IamRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace.account_access_type #=> String, one of "CURRENT_ACCOUNT", "ORGANIZATION"
    #   resp.workspace.authentication.providers #=> Array
    #   resp.workspace.authentication.providers[0] #=> String, one of "AWS_SSO", "SAML"
    #   resp.workspace.authentication.saml_configuration_status #=> String, one of "CONFIGURED", "NOT_CONFIGURED"
    #   resp.workspace.created #=> Time
    #   resp.workspace.data_sources #=> Array
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT", "TWINMAKER"
    #   resp.workspace.description #=> String
    #   resp.workspace.endpoint #=> String
    #   resp.workspace.free_trial_consumed #=> Boolean
    #   resp.workspace.free_trial_expiration #=> Time
    #   resp.workspace.grafana_version #=> String
    #   resp.workspace.id #=> String
    #   resp.workspace.license_expiration #=> Time
    #   resp.workspace.license_type #=> String, one of "ENTERPRISE", "ENTERPRISE_FREE_TRIAL"
    #   resp.workspace.modified #=> Time
    #   resp.workspace.name #=> String
    #   resp.workspace.network_access_control.prefix_list_ids #=> Array
    #   resp.workspace.network_access_control.prefix_list_ids[0] #=> String
    #   resp.workspace.network_access_control.vpce_ids #=> Array
    #   resp.workspace.network_access_control.vpce_ids[0] #=> String
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
    #   resp.workspace.tags #=> Hash
    #   resp.workspace.tags["TagKey"] #=> String
    #   resp.workspace.vpc_configuration.security_group_ids #=> Array
    #   resp.workspace.vpc_configuration.security_group_ids[0] #=> String
    #   resp.workspace.vpc_configuration.subnet_ids #=> Array
    #   resp.workspace.vpc_configuration.subnet_ids[0] #=> String
    #   resp.workspace.workspace_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/CreateWorkspace AWS API Documentation
    #
    # @overload create_workspace(params = {})
    # @param [Hash] params ({})
    def create_workspace(params = {}, options = {})
      req = build_request(:create_workspace, params)
      req.send_request(options)
    end

    # Creates a Grafana API key for the workspace. This key can be used to
    # authenticate requests sent to the workspace's HTTP API. See
    # [https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html][1]
    # for available APIs and example requests.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html
    #
    # @option params [required, String] :key_name
    #   Specifies the name of the key. Keynames must be unique to the
    #   workspace.
    #
    # @option params [required, String] :key_role
    #   Specifies the permission level of the key.
    #
    #   Valid values: `VIEWER`\|`EDITOR`\|`ADMIN`
    #
    # @option params [required, Integer] :seconds_to_live
    #   Specifies the time in seconds until the key expires. Keys can be valid
    #   for up to 30 days.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to create an API key.
    #
    # @return [Types::CreateWorkspaceApiKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspaceApiKeyResponse#key #key} => String
    #   * {Types::CreateWorkspaceApiKeyResponse#key_name #key_name} => String
    #   * {Types::CreateWorkspaceApiKeyResponse#workspace_id #workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace_api_key({
    #     key_name: "ApiKeyName", # required
    #     key_role: "String", # required
    #     seconds_to_live: 1, # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key #=> String
    #   resp.key_name #=> String
    #   resp.workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/CreateWorkspaceApiKey AWS API Documentation
    #
    # @overload create_workspace_api_key(params = {})
    # @param [Hash] params ({})
    def create_workspace_api_key(params = {}, options = {})
      req = build_request(:create_workspace_api_key, params)
      req.send_request(options)
    end

    # Deletes an Amazon Managed Grafana workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to delete.
    #
    # @return [Types::DeleteWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkspaceResponse#workspace #workspace} => Types::WorkspaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace.account_access_type #=> String, one of "CURRENT_ACCOUNT", "ORGANIZATION"
    #   resp.workspace.authentication.providers #=> Array
    #   resp.workspace.authentication.providers[0] #=> String, one of "AWS_SSO", "SAML"
    #   resp.workspace.authentication.saml_configuration_status #=> String, one of "CONFIGURED", "NOT_CONFIGURED"
    #   resp.workspace.created #=> Time
    #   resp.workspace.data_sources #=> Array
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT", "TWINMAKER"
    #   resp.workspace.description #=> String
    #   resp.workspace.endpoint #=> String
    #   resp.workspace.free_trial_consumed #=> Boolean
    #   resp.workspace.free_trial_expiration #=> Time
    #   resp.workspace.grafana_version #=> String
    #   resp.workspace.id #=> String
    #   resp.workspace.license_expiration #=> Time
    #   resp.workspace.license_type #=> String, one of "ENTERPRISE", "ENTERPRISE_FREE_TRIAL"
    #   resp.workspace.modified #=> Time
    #   resp.workspace.name #=> String
    #   resp.workspace.network_access_control.prefix_list_ids #=> Array
    #   resp.workspace.network_access_control.prefix_list_ids[0] #=> String
    #   resp.workspace.network_access_control.vpce_ids #=> Array
    #   resp.workspace.network_access_control.vpce_ids[0] #=> String
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
    #   resp.workspace.tags #=> Hash
    #   resp.workspace.tags["TagKey"] #=> String
    #   resp.workspace.vpc_configuration.security_group_ids #=> Array
    #   resp.workspace.vpc_configuration.security_group_ids[0] #=> String
    #   resp.workspace.vpc_configuration.subnet_ids #=> Array
    #   resp.workspace.vpc_configuration.subnet_ids[0] #=> String
    #   resp.workspace.workspace_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DeleteWorkspace AWS API Documentation
    #
    # @overload delete_workspace(params = {})
    # @param [Hash] params ({})
    def delete_workspace(params = {}, options = {})
      req = build_request(:delete_workspace, params)
      req.send_request(options)
    end

    # Deletes a Grafana API key for the workspace.
    #
    # @option params [required, String] :key_name
    #   The name of the API key to delete.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to delete.
    #
    # @return [Types::DeleteWorkspaceApiKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkspaceApiKeyResponse#key_name #key_name} => String
    #   * {Types::DeleteWorkspaceApiKeyResponse#workspace_id #workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace_api_key({
    #     key_name: "ApiKeyName", # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_name #=> String
    #   resp.workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DeleteWorkspaceApiKey AWS API Documentation
    #
    # @overload delete_workspace_api_key(params = {})
    # @param [Hash] params ({})
    def delete_workspace_api_key(params = {}, options = {})
      req = build_request(:delete_workspace_api_key, params)
      req.send_request(options)
    end

    # Displays information about one Amazon Managed Grafana workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to display information about.
    #
    # @return [Types::DescribeWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceResponse#workspace #workspace} => Types::WorkspaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace.account_access_type #=> String, one of "CURRENT_ACCOUNT", "ORGANIZATION"
    #   resp.workspace.authentication.providers #=> Array
    #   resp.workspace.authentication.providers[0] #=> String, one of "AWS_SSO", "SAML"
    #   resp.workspace.authentication.saml_configuration_status #=> String, one of "CONFIGURED", "NOT_CONFIGURED"
    #   resp.workspace.created #=> Time
    #   resp.workspace.data_sources #=> Array
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT", "TWINMAKER"
    #   resp.workspace.description #=> String
    #   resp.workspace.endpoint #=> String
    #   resp.workspace.free_trial_consumed #=> Boolean
    #   resp.workspace.free_trial_expiration #=> Time
    #   resp.workspace.grafana_version #=> String
    #   resp.workspace.id #=> String
    #   resp.workspace.license_expiration #=> Time
    #   resp.workspace.license_type #=> String, one of "ENTERPRISE", "ENTERPRISE_FREE_TRIAL"
    #   resp.workspace.modified #=> Time
    #   resp.workspace.name #=> String
    #   resp.workspace.network_access_control.prefix_list_ids #=> Array
    #   resp.workspace.network_access_control.prefix_list_ids[0] #=> String
    #   resp.workspace.network_access_control.vpce_ids #=> Array
    #   resp.workspace.network_access_control.vpce_ids[0] #=> String
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
    #   resp.workspace.tags #=> Hash
    #   resp.workspace.tags["TagKey"] #=> String
    #   resp.workspace.vpc_configuration.security_group_ids #=> Array
    #   resp.workspace.vpc_configuration.security_group_ids[0] #=> String
    #   resp.workspace.vpc_configuration.subnet_ids #=> Array
    #   resp.workspace.vpc_configuration.subnet_ids[0] #=> String
    #   resp.workspace.workspace_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DescribeWorkspace AWS API Documentation
    #
    # @overload describe_workspace(params = {})
    # @param [Hash] params ({})
    def describe_workspace(params = {}, options = {})
      req = build_request(:describe_workspace, params)
      req.send_request(options)
    end

    # Displays information about the authentication methods used in one
    # Amazon Managed Grafana workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to return authentication information about.
    #
    # @return [Types::DescribeWorkspaceAuthenticationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceAuthenticationResponse#authentication #authentication} => Types::AuthenticationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_authentication({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authentication.aws_sso.sso_client_id #=> String
    #   resp.authentication.providers #=> Array
    #   resp.authentication.providers[0] #=> String, one of "AWS_SSO", "SAML"
    #   resp.authentication.saml.configuration.allowed_organizations #=> Array
    #   resp.authentication.saml.configuration.allowed_organizations[0] #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.email #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.groups #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.login #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.name #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.org #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.role #=> String
    #   resp.authentication.saml.configuration.idp_metadata.url #=> String
    #   resp.authentication.saml.configuration.idp_metadata.xml #=> String
    #   resp.authentication.saml.configuration.login_validity_duration #=> Integer
    #   resp.authentication.saml.configuration.role_values.admin #=> Array
    #   resp.authentication.saml.configuration.role_values.admin[0] #=> String
    #   resp.authentication.saml.configuration.role_values.editor #=> Array
    #   resp.authentication.saml.configuration.role_values.editor[0] #=> String
    #   resp.authentication.saml.status #=> String, one of "CONFIGURED", "NOT_CONFIGURED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DescribeWorkspaceAuthentication AWS API Documentation
    #
    # @overload describe_workspace_authentication(params = {})
    # @param [Hash] params ({})
    def describe_workspace_authentication(params = {}, options = {})
      req = build_request(:describe_workspace_authentication, params)
      req.send_request(options)
    end

    # Gets the current configuration string for the given workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to get configuration information for.
    #
    # @return [Types::DescribeWorkspaceConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceConfigurationResponse#configuration #configuration} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_configuration({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DescribeWorkspaceConfiguration AWS API Documentation
    #
    # @overload describe_workspace_configuration(params = {})
    # @param [Hash] params ({})
    def describe_workspace_configuration(params = {}, options = {})
      req = build_request(:describe_workspace_configuration, params)
      req.send_request(options)
    end

    # Removes the Grafana Enterprise license from a workspace.
    #
    # @option params [required, String] :license_type
    #   The type of license to remove from the workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to remove the Grafana Enterprise license from.
    #
    # @return [Types::DisassociateLicenseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateLicenseResponse#workspace #workspace} => Types::WorkspaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_license({
    #     license_type: "ENTERPRISE", # required, accepts ENTERPRISE, ENTERPRISE_FREE_TRIAL
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace.account_access_type #=> String, one of "CURRENT_ACCOUNT", "ORGANIZATION"
    #   resp.workspace.authentication.providers #=> Array
    #   resp.workspace.authentication.providers[0] #=> String, one of "AWS_SSO", "SAML"
    #   resp.workspace.authentication.saml_configuration_status #=> String, one of "CONFIGURED", "NOT_CONFIGURED"
    #   resp.workspace.created #=> Time
    #   resp.workspace.data_sources #=> Array
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT", "TWINMAKER"
    #   resp.workspace.description #=> String
    #   resp.workspace.endpoint #=> String
    #   resp.workspace.free_trial_consumed #=> Boolean
    #   resp.workspace.free_trial_expiration #=> Time
    #   resp.workspace.grafana_version #=> String
    #   resp.workspace.id #=> String
    #   resp.workspace.license_expiration #=> Time
    #   resp.workspace.license_type #=> String, one of "ENTERPRISE", "ENTERPRISE_FREE_TRIAL"
    #   resp.workspace.modified #=> Time
    #   resp.workspace.name #=> String
    #   resp.workspace.network_access_control.prefix_list_ids #=> Array
    #   resp.workspace.network_access_control.prefix_list_ids[0] #=> String
    #   resp.workspace.network_access_control.vpce_ids #=> Array
    #   resp.workspace.network_access_control.vpce_ids[0] #=> String
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
    #   resp.workspace.tags #=> Hash
    #   resp.workspace.tags["TagKey"] #=> String
    #   resp.workspace.vpc_configuration.security_group_ids #=> Array
    #   resp.workspace.vpc_configuration.security_group_ids[0] #=> String
    #   resp.workspace.vpc_configuration.subnet_ids #=> Array
    #   resp.workspace.vpc_configuration.subnet_ids[0] #=> String
    #   resp.workspace.workspace_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DisassociateLicense AWS API Documentation
    #
    # @overload disassociate_license(params = {})
    # @param [Hash] params ({})
    def disassociate_license(params = {}, options = {})
      req = build_request(:disassociate_license, params)
      req.send_request(options)
    end

    # Lists the users and groups who have the Grafana `Admin` and `Editor`
    # roles in this workspace. If you use this operation without specifying
    # `userId` or `groupId`, the operation returns the roles of all users
    # and groups. If you specify a `userId` or a `groupId`, only the roles
    # for that user or group are returned. If you do this, you can specify
    # only one `userId` or one `groupId`.
    #
    # @option params [String] :group_id
    #   (Optional) Limits the results to only the group that matches this ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token to use when requesting the next set of results. You received
    #   this token from a previous `ListPermissions` operation.
    #
    # @option params [String] :user_id
    #   (Optional) Limits the results to only the user that matches this ID.
    #
    # @option params [String] :user_type
    #   (Optional) If you specify `SSO_USER`, then only the permissions of IAM
    #   Identity Center users are returned. If you specify `SSO_GROUP`, only
    #   the permissions of IAM Identity Center groups are returned.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to list permissions for. This parameter is
    #   required.
    #
    # @return [Types::ListPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionsResponse#next_token #next_token} => String
    #   * {Types::ListPermissionsResponse#permissions #permissions} => Array&lt;Types::PermissionEntry&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions({
    #     group_id: "SsoId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     user_id: "SsoId",
    #     user_type: "SSO_USER", # accepts SSO_USER, SSO_GROUP
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].role #=> String, one of "ADMIN", "EDITOR", "VIEWER"
    #   resp.permissions[0].user.id #=> String
    #   resp.permissions[0].user.type #=> String, one of "SSO_USER", "SSO_GROUP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListPermissions AWS API Documentation
    #
    # @overload list_permissions(params = {})
    # @param [Hash] params ({})
    def list_permissions(params = {}, options = {})
      req = build_request(:list_permissions, params)
      req.send_request(options)
    end

    # The `ListTagsForResource` operation returns the tags that are
    # associated with the Amazon Managed Service for Grafana resource
    # specified by the `resourceArn`. Currently, the only resource that can
    # be tagged is a workspace.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource the list of tags are associated with.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of Amazon Managed Grafana workspaces in the account,
    # with some information about each workspace. For more complete
    # information about one workspace, use [DescribeWorkspace][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of workspaces to include in the results.
    #
    # @option params [String] :next_token
    #   The token for the next set of workspaces to return. (You receive this
    #   token from a previous `ListWorkspaces` operation.)
    #
    # @return [Types::ListWorkspacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkspacesResponse#next_token #next_token} => String
    #   * {Types::ListWorkspacesResponse#workspaces #workspaces} => Array&lt;Types::WorkspaceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workspaces({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workspaces #=> Array
    #   resp.workspaces[0].authentication.providers #=> Array
    #   resp.workspaces[0].authentication.providers[0] #=> String, one of "AWS_SSO", "SAML"
    #   resp.workspaces[0].authentication.saml_configuration_status #=> String, one of "CONFIGURED", "NOT_CONFIGURED"
    #   resp.workspaces[0].created #=> Time
    #   resp.workspaces[0].description #=> String
    #   resp.workspaces[0].endpoint #=> String
    #   resp.workspaces[0].grafana_version #=> String
    #   resp.workspaces[0].id #=> String
    #   resp.workspaces[0].modified #=> Time
    #   resp.workspaces[0].name #=> String
    #   resp.workspaces[0].notification_destinations #=> Array
    #   resp.workspaces[0].notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspaces[0].status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
    #   resp.workspaces[0].tags #=> Hash
    #   resp.workspaces[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListWorkspaces AWS API Documentation
    #
    # @overload list_workspaces(params = {})
    # @param [Hash] params ({})
    def list_workspaces(params = {}, options = {})
      req = build_request(:list_workspaces, params)
      req.send_request(options)
    end

    # The `TagResource` operation associates tags with an Amazon Managed
    # Grafana resource. Currently, the only resource that can be tagged is
    # workspaces.
    #
    # If you specify a new tag key for the resource, this tag is appended to
    # the list of tags associated with the resource. If you specify a tag
    # key that is already associated with the resource, the new tag value
    # that you specify replaces the previous value for that tag.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource the tag is associated with.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tag keys and values to associate with the resource. You
    #   can associate tag keys only, tags (key and values) only or a
    #   combination of tag keys and tags.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # The `UntagResource` operation removes the association of the tag with
    # the Amazon Managed Grafana resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource the tag association is removed from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key values of the tag to be removed from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates which users in a workspace have the Grafana `Admin` or
    # `Editor` roles.
    #
    # @option params [required, Array<Types::UpdateInstruction>] :update_instruction_batch
    #   An array of structures that contain the permission updates to make.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to update.
    #
    # @return [Types::UpdatePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePermissionsResponse#errors #errors} => Array&lt;Types::UpdateError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_permissions({
    #     update_instruction_batch: [ # required
    #       {
    #         action: "ADD", # required, accepts ADD, REVOKE
    #         role: "ADMIN", # required, accepts ADMIN, EDITOR, VIEWER
    #         users: [ # required
    #           {
    #             id: "SsoId", # required
    #             type: "SSO_USER", # required, accepts SSO_USER, SSO_GROUP
    #           },
    #         ],
    #       },
    #     ],
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].caused_by.action #=> String, one of "ADD", "REVOKE"
    #   resp.errors[0].caused_by.role #=> String, one of "ADMIN", "EDITOR", "VIEWER"
    #   resp.errors[0].caused_by.users #=> Array
    #   resp.errors[0].caused_by.users[0].id #=> String
    #   resp.errors[0].caused_by.users[0].type #=> String, one of "SSO_USER", "SSO_GROUP"
    #   resp.errors[0].code #=> Integer
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdatePermissions AWS API Documentation
    #
    # @overload update_permissions(params = {})
    # @param [Hash] params ({})
    def update_permissions(params = {}, options = {})
      req = build_request(:update_permissions, params)
      req.send_request(options)
    end

    # Modifies an existing Amazon Managed Grafana workspace. If you use this
    # operation and omit any optional parameters, the existing values of
    # those parameters are not changed.
    #
    # To modify the user authentication methods that the workspace uses,
    # such as SAML or IAM Identity Center, use
    # [UpdateWorkspaceAuthentication][1].
    #
    # To modify which users in the workspace have the `Admin` and `Editor`
    # Grafana roles, use [UpdatePermissions][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html
    # [2]: https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html
    #
    # @option params [String] :account_access_type
    #   Specifies whether the workspace can access Amazon Web Services
    #   resources in this Amazon Web Services account only, or whether it can
    #   also access Amazon Web Services resources in other accounts in the
    #   same organization. If you specify `ORGANIZATION`, you must specify
    #   which organizational units the workspace can access in the
    #   `workspaceOrganizationalUnits` parameter.
    #
    # @option params [Types::NetworkAccessConfiguration] :network_access_control
    #   The configuration settings for network access to your workspace.
    #
    #   When this is configured, only listed IP addresses and VPC endpoints
    #   will be able to access your workspace. Standard Grafana authentication
    #   and authorization will still be required.
    #
    #   If this is not configured, or is removed, then all IP addresses and
    #   VPC endpoints will be allowed. Standard Grafana authentication and
    #   authorization will still be required.
    #
    # @option params [String] :organization_role_name
    #   The name of an IAM role that already exists to use to access resources
    #   through Organizations. This can only be used with a workspace that has
    #   the `permissionType` set to `CUSTOMER_MANAGED`.
    #
    # @option params [String] :permission_type
    #   Use this parameter if you want to change a workspace from
    #   `SERVICE_MANAGED` to `CUSTOMER_MANAGED`. This allows you to manage the
    #   permissions that the workspace uses to access datasources and
    #   notification channels. If the workspace is in a member Amazon Web
    #   Services account of an organization, and that account is not a
    #   delegated administrator account, and you want the workspace to access
    #   data sources in other Amazon Web Services accounts in the
    #   organization, you must choose `CUSTOMER_MANAGED`.
    #
    #   If you specify this as `CUSTOMER_MANAGED`, you must also specify a
    #   `workspaceRoleArn` that the workspace will use for accessing Amazon
    #   Web Services resources.
    #
    #   For more information on the role and permissions needed, see [Amazon
    #   Managed Grafana permissions and policies for Amazon Web Services data
    #   sources and notification channels][1]
    #
    #   <note markdown="1"> Do not use this to convert a `CUSTOMER_MANAGED` workspace to
    #   `SERVICE_MANAGED`. Do not include this parameter if you want to leave
    #   the workspace as `SERVICE_MANAGED`.
    #
    #    You can convert a `CUSTOMER_MANAGED` workspace to `SERVICE_MANAGED`
    #   using the Amazon Managed Grafana console. For more information, see
    #   [Managing permissions for data sources and notification channels][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html
    #   [2]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html
    #
    # @option params [Boolean] :remove_network_access_configuration
    #   Whether to remove the network access configuration from the workspace.
    #
    #   Setting this to `true` and providing a `networkAccessControl` to set
    #   will return an error.
    #
    #   If you remove this configuration by setting this to `true`, then all
    #   IP addresses and VPC endpoints will be allowed. Standard Grafana
    #   authentication and authorization will still be required.
    #
    # @option params [Boolean] :remove_vpc_configuration
    #   Whether to remove the VPC configuration from the workspace.
    #
    #   Setting this to `true` and providing a `vpcConfiguration` to set will
    #   return an error.
    #
    # @option params [String] :stack_set_name
    #   The name of the CloudFormation stack set to use to generate IAM roles
    #   to be used for this workspace.
    #
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   The configuration settings for an Amazon VPC that contains data
    #   sources for your Grafana workspace to connect to.
    #
    # @option params [Array<String>] :workspace_data_sources
    #   This parameter is for internal use only, and should not be used.
    #
    # @option params [String] :workspace_description
    #   A description for the workspace. This is used only to help you
    #   identify this workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to update.
    #
    # @option params [String] :workspace_name
    #   A new name for the workspace to update.
    #
    # @option params [Array<String>] :workspace_notification_destinations
    #   Specify the Amazon Web Services notification channels that you plan to
    #   use in this workspace. Specifying these data sources here enables
    #   Amazon Managed Grafana to create IAM roles and permissions that allow
    #   Amazon Managed Grafana to use these channels.
    #
    # @option params [Array<String>] :workspace_organizational_units
    #   Specifies the organizational units that this workspace is allowed to
    #   use data sources from, if this workspace is in an account that is part
    #   of an organization.
    #
    # @option params [String] :workspace_role_arn
    #   Specifies an IAM role that grants permissions to Amazon Web Services
    #   resources that the workspace accesses, such as data sources and
    #   notification channels. If this workspace has `permissionType`
    #   `CUSTOMER_MANAGED`, then this role is required.
    #
    # @return [Types::UpdateWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkspaceResponse#workspace #workspace} => Types::WorkspaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace({
    #     account_access_type: "CURRENT_ACCOUNT", # accepts CURRENT_ACCOUNT, ORGANIZATION
    #     network_access_control: {
    #       prefix_list_ids: ["PrefixListId"], # required
    #       vpce_ids: ["VpceId"], # required
    #     },
    #     organization_role_name: "OrganizationRoleName",
    #     permission_type: "CUSTOMER_MANAGED", # accepts CUSTOMER_MANAGED, SERVICE_MANAGED
    #     remove_network_access_configuration: false,
    #     remove_vpc_configuration: false,
    #     stack_set_name: "StackSetName",
    #     vpc_configuration: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnet_ids: ["SubnetId"], # required
    #     },
    #     workspace_data_sources: ["AMAZON_OPENSEARCH_SERVICE"], # accepts AMAZON_OPENSEARCH_SERVICE, CLOUDWATCH, PROMETHEUS, XRAY, TIMESTREAM, SITEWISE, ATHENA, REDSHIFT, TWINMAKER
    #     workspace_description: "Description",
    #     workspace_id: "WorkspaceId", # required
    #     workspace_name: "WorkspaceName",
    #     workspace_notification_destinations: ["SNS"], # accepts SNS
    #     workspace_organizational_units: ["OrganizationalUnit"],
    #     workspace_role_arn: "IamRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace.account_access_type #=> String, one of "CURRENT_ACCOUNT", "ORGANIZATION"
    #   resp.workspace.authentication.providers #=> Array
    #   resp.workspace.authentication.providers[0] #=> String, one of "AWS_SSO", "SAML"
    #   resp.workspace.authentication.saml_configuration_status #=> String, one of "CONFIGURED", "NOT_CONFIGURED"
    #   resp.workspace.created #=> Time
    #   resp.workspace.data_sources #=> Array
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT", "TWINMAKER"
    #   resp.workspace.description #=> String
    #   resp.workspace.endpoint #=> String
    #   resp.workspace.free_trial_consumed #=> Boolean
    #   resp.workspace.free_trial_expiration #=> Time
    #   resp.workspace.grafana_version #=> String
    #   resp.workspace.id #=> String
    #   resp.workspace.license_expiration #=> Time
    #   resp.workspace.license_type #=> String, one of "ENTERPRISE", "ENTERPRISE_FREE_TRIAL"
    #   resp.workspace.modified #=> Time
    #   resp.workspace.name #=> String
    #   resp.workspace.network_access_control.prefix_list_ids #=> Array
    #   resp.workspace.network_access_control.prefix_list_ids[0] #=> String
    #   resp.workspace.network_access_control.vpce_ids #=> Array
    #   resp.workspace.network_access_control.vpce_ids[0] #=> String
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
    #   resp.workspace.tags #=> Hash
    #   resp.workspace.tags["TagKey"] #=> String
    #   resp.workspace.vpc_configuration.security_group_ids #=> Array
    #   resp.workspace.vpc_configuration.security_group_ids[0] #=> String
    #   resp.workspace.vpc_configuration.subnet_ids #=> Array
    #   resp.workspace.vpc_configuration.subnet_ids[0] #=> String
    #   resp.workspace.workspace_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspace AWS API Documentation
    #
    # @overload update_workspace(params = {})
    # @param [Hash] params ({})
    def update_workspace(params = {}, options = {})
      req = build_request(:update_workspace, params)
      req.send_request(options)
    end

    # Use this operation to define the identity provider (IdP) that this
    # workspace authenticates users from, using SAML. You can also map SAML
    # assertion attributes to workspace user information and define which
    # groups in the assertion attribute are to have the `Admin` and `Editor`
    # roles in the workspace.
    #
    # <note markdown="1"> Changes to the authentication method for a workspace may take a few
    # minutes to take effect.
    #
    #  </note>
    #
    # @option params [required, Array<String>] :authentication_providers
    #   Specifies whether this workspace uses SAML 2.0, IAM Identity Center
    #   (successor to Single Sign-On), or both to authenticate users for using
    #   the Grafana console within a workspace. For more information, see
    #   [User authentication in Amazon Managed Grafana][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html
    #
    # @option params [Types::SamlConfiguration] :saml_configuration
    #   If the workspace uses SAML, use this structure to map SAML assertion
    #   attributes to workspace user information and define which groups in
    #   the assertion attribute are to have the `Admin` and `Editor` roles in
    #   the workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to update the authentication for.
    #
    # @return [Types::UpdateWorkspaceAuthenticationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkspaceAuthenticationResponse#authentication #authentication} => Types::AuthenticationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_authentication({
    #     authentication_providers: ["AWS_SSO"], # required, accepts AWS_SSO, SAML
    #     saml_configuration: {
    #       allowed_organizations: ["AllowedOrganization"],
    #       assertion_attributes: {
    #         email: "AssertionAttribute",
    #         groups: "AssertionAttribute",
    #         login: "AssertionAttribute",
    #         name: "AssertionAttribute",
    #         org: "AssertionAttribute",
    #         role: "AssertionAttribute",
    #       },
    #       idp_metadata: { # required
    #         url: "IdpMetadataUrl",
    #         xml: "String",
    #       },
    #       login_validity_duration: 1,
    #       role_values: {
    #         admin: ["RoleValue"],
    #         editor: ["RoleValue"],
    #       },
    #     },
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authentication.aws_sso.sso_client_id #=> String
    #   resp.authentication.providers #=> Array
    #   resp.authentication.providers[0] #=> String, one of "AWS_SSO", "SAML"
    #   resp.authentication.saml.configuration.allowed_organizations #=> Array
    #   resp.authentication.saml.configuration.allowed_organizations[0] #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.email #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.groups #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.login #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.name #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.org #=> String
    #   resp.authentication.saml.configuration.assertion_attributes.role #=> String
    #   resp.authentication.saml.configuration.idp_metadata.url #=> String
    #   resp.authentication.saml.configuration.idp_metadata.xml #=> String
    #   resp.authentication.saml.configuration.login_validity_duration #=> Integer
    #   resp.authentication.saml.configuration.role_values.admin #=> Array
    #   resp.authentication.saml.configuration.role_values.admin[0] #=> String
    #   resp.authentication.saml.configuration.role_values.editor #=> Array
    #   resp.authentication.saml.configuration.role_values.editor[0] #=> String
    #   resp.authentication.saml.status #=> String, one of "CONFIGURED", "NOT_CONFIGURED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspaceAuthentication AWS API Documentation
    #
    # @overload update_workspace_authentication(params = {})
    # @param [Hash] params ({})
    def update_workspace_authentication(params = {}, options = {})
      req = build_request(:update_workspace_authentication, params)
      req.send_request(options)
    end

    # Updates the configuration string for the given workspace
    #
    # @option params [required, String] :configuration
    #   The new configuration string for the workspace. For more information
    #   about the format and configuration options available, see [Working in
    #   your Grafana workspace][1].
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_configuration({
    #     configuration: "OverridableConfigurationJson", # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspaceConfiguration AWS API Documentation
    #
    # @overload update_workspace_configuration(params = {})
    # @param [Hash] params ({})
    def update_workspace_configuration(params = {}, options = {})
      req = build_request(:update_workspace_configuration, params)
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
      context[:gem_name] = 'aws-sdk-managedgrafana'
      context[:gem_version] = '1.19.0'
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
