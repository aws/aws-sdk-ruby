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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE"
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
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
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
    #   Specifies whether this workspace uses SAML 2.0, Amazon Web Services
    #   Single Sign On, or both to authenticate users for using the Grafana
    #   console within a workspace. For more information, see [User
    #   authentication in Amazon Managed Grafana][1].
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
    # @option params [String] :organization_role_name
    #   The name of an IAM role that already exists to use with Organizations
    #   to access Amazon Web Services data sources and notification channels
    #   in other accounts in an organization.
    #
    # @option params [required, String] :permission_type
    #   If you specify `Service Managed`, Amazon Managed Grafana automatically
    #   creates the IAM roles and provisions the permissions that the
    #   workspace needs to use Amazon Web Services data sources and
    #   notification channels.
    #
    #   If you specify `CUSTOMER_MANAGED`, you will manage those roles and
    #   permissions yourself. If you are creating this workspace in a member
    #   account of an organization that is not a delegated administrator
    #   account, and you want the workspace to access data sources in other
    #   Amazon Web Services accounts in the organization, you must choose
    #   `CUSTOMER_MANAGED`.
    #
    #   For more information, see [Amazon Managed Grafana permissions and
    #   policies for Amazon Web Services data sources and notification
    #   channels][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html
    #
    # @option params [String] :stack_set_name
    #   The name of the CloudFormation stack set to use to generate IAM roles
    #   to be used for this workspace.
    #
    # @option params [Array<String>] :workspace_data_sources
    #   Specify the Amazon Web Services data sources that you want to be
    #   queried in this workspace. Specifying these data sources here enables
    #   Amazon Managed Grafana to create IAM roles and permissions that allow
    #   Amazon Managed Grafana to read data from these sources. You must still
    #   add them as data sources in the Grafana console in the workspace.
    #
    #   If you don't specify a data source here, you can still add it as a
    #   data source in the workspace console later. However, you will then
    #   have to manually configure permissions for it.
    #
    # @option params [String] :workspace_description
    #   A description for the workspace. This is used only to help you
    #   identify this workspace.
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
    #   The workspace needs an IAM role that grants permissions to the Amazon
    #   Web Services resources that the workspace will view data from. If you
    #   already have a role that you want to use, specify it here. If you omit
    #   this field and you specify some Amazon Web Services resources in
    #   `workspaceDataSources` or `workspaceNotificationDestinations`, a new
    #   IAM role with the necessary permissions is automatically created.
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
    #     organization_role_name: "OrganizationRoleName",
    #     permission_type: "CUSTOMER_MANAGED", # required, accepts CUSTOMER_MANAGED, SERVICE_MANAGED
    #     stack_set_name: "StackSetName",
    #     workspace_data_sources: ["AMAZON_OPENSEARCH_SERVICE"], # accepts AMAZON_OPENSEARCH_SERVICE, CLOUDWATCH, PROMETHEUS, XRAY, TIMESTREAM, SITEWISE
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
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE"
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
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
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
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE"
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
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
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
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE"
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
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
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
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE"
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
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
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
    #   (Optional) If you specify `SSO_USER`, then only the permissions of
    #   Amazon Web Services SSO users are returned. If you specify
    #   `SSO_GROUP`, only the permissions of Amazon Web Services SSO groups
    #   are returned.
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
    #   resp.permissions[0].role #=> String, one of "ADMIN", "EDITOR"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListWorkspaces AWS API Documentation
    #
    # @overload list_workspaces(params = {})
    # @param [Hash] params ({})
    def list_workspaces(params = {}, options = {})
      req = build_request(:list_workspaces, params)
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
    #         role: "ADMIN", # required, accepts ADMIN, EDITOR
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
    #   resp.errors[0].caused_by.role #=> String, one of "ADMIN", "EDITOR"
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
    # such as SAML or Amazon Web Services SSO, use
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
    # @option params [String] :organization_role_name
    #   The name of an IAM role that already exists to use to access resources
    #   through Organizations.
    #
    # @option params [String] :permission_type
    #   If you specify `Service Managed`, Amazon Managed Grafana automatically
    #   creates the IAM roles and provisions the permissions that the
    #   workspace needs to use Amazon Web Services data sources and
    #   notification channels.
    #
    #   If you specify `CUSTOMER_MANAGED`, you will manage those roles and
    #   permissions yourself. If you are creating this workspace in a member
    #   account of an organization and that account is not a delegated
    #   administrator account, and you want the workspace to access data
    #   sources in other Amazon Web Services accounts in the organization, you
    #   must choose `CUSTOMER_MANAGED`.
    #
    #   For more information, see [Amazon Managed Grafana permissions and
    #   policies for Amazon Web Services data sources and notification
    #   channels][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html
    #
    # @option params [String] :stack_set_name
    #   The name of the CloudFormation stack set to use to generate IAM roles
    #   to be used for this workspace.
    #
    # @option params [Array<String>] :workspace_data_sources
    #   Specify the Amazon Web Services data sources that you want to be
    #   queried in this workspace. Specifying these data sources here enables
    #   Amazon Managed Grafana to create IAM roles and permissions that allow
    #   Amazon Managed Grafana to read data from these sources. You must still
    #   add them as data sources in the Grafana console in the workspace.
    #
    #   If you don't specify a data source here, you can still add it as a
    #   data source later in the workspace console. However, you will then
    #   have to manually configure permissions for it.
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
    #   The workspace needs an IAM role that grants permissions to the Amazon
    #   Web Services resources that the workspace will view data from. If you
    #   already have a role that you want to use, specify it here. If you omit
    #   this field and you specify some Amazon Web Services resources in
    #   `workspaceDataSources` or `workspaceNotificationDestinations`, a new
    #   IAM role with the necessary permissions is automatically created.
    #
    # @return [Types::UpdateWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkspaceResponse#workspace #workspace} => Types::WorkspaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace({
    #     account_access_type: "CURRENT_ACCOUNT", # accepts CURRENT_ACCOUNT, ORGANIZATION
    #     organization_role_name: "OrganizationRoleName",
    #     permission_type: "CUSTOMER_MANAGED", # accepts CUSTOMER_MANAGED, SERVICE_MANAGED
    #     stack_set_name: "StackSetName",
    #     workspace_data_sources: ["AMAZON_OPENSEARCH_SERVICE"], # accepts AMAZON_OPENSEARCH_SERVICE, CLOUDWATCH, PROMETHEUS, XRAY, TIMESTREAM, SITEWISE
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
    #   resp.workspace.data_sources[0] #=> String, one of "AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE"
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
    #   resp.workspace.notification_destinations #=> Array
    #   resp.workspace.notification_destinations[0] #=> String, one of "SNS"
    #   resp.workspace.organization_role_name #=> String
    #   resp.workspace.organizational_units #=> Array
    #   resp.workspace.organizational_units[0] #=> String
    #   resp.workspace.permission_type #=> String, one of "CUSTOMER_MANAGED", "SERVICE_MANAGED"
    #   resp.workspace.stack_set_name #=> String
    #   resp.workspace.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"
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
    # @option params [required, Array<String>] :authentication_providers
    #   Specifies whether this workspace uses SAML 2.0, Amazon Web Services
    #   Single Sign On, or both to authenticate users for using the Grafana
    #   console within a workspace. For more information, see [User
    #   authentication in Amazon Managed Grafana][1].
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
      context[:gem_version] = '1.5.0'
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
