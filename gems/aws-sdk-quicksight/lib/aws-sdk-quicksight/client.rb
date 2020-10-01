# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:quicksight)

module Aws::QuickSight
  # An API client for QuickSight.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::QuickSight::Client.new(
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

    @identifier = :quicksight

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
    #       enable retries and extended timeouts.
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
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Cancels an ongoing ingestion of data into SPICE.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @return [Types::CancelIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelIngestionResponse#arn #arn} => String
    #   * {Types::CancelIngestionResponse#ingestion_id #ingestion_id} => String
    #   * {Types::CancelIngestionResponse#request_id #request_id} => String
    #   * {Types::CancelIngestionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_ingestion({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "string", # required
    #     ingestion_id: "IngestionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CancelIngestion AWS API Documentation
    #
    # @overload cancel_ingestion(params = {})
    # @param [Hash] params ({})
    def cancel_ingestion(params = {}, options = {})
      req = build_request(:cancel_ingestion, params)
      req.send_request(options)
    end

    # Creates Amazon QuickSight customizations the current AWS Region.
    # Currently, you can add a custom default theme by using the
    # `CreateAccountCustomization` or `UpdateAccountCustomization` API
    # operation. To further customize QuickSight by removing QuickSight
    # sample assets and videos for all new users, see [Customizing
    # QuickSight][1] in the *Amazon QuickSight User Guide.*
    #
    # You can create customizations for your AWS account or, if you specify
    # a namespace, for a QuickSight namespace instead. Customizations that
    # apply to a namespace always override customizations that apply to an
    # AWS account. To find out which customizations apply, use the
    # `DescribeAccountCustomization` API operation.
    #
    # Before you use the `CreateAccountCustomization` API operation to add a
    # theme as the namespace default, make sure that you first share the
    # theme with the namespace. If you don't share it with the namespace,
    # the theme isn't visible to your users even if you make it the default
    # theme. To check if the theme is shared, view the current permissions
    # by using the ` DescribeThemePermissions ` API operation. To share the
    # theme, grant permissions by using the ` UpdateThemePermissions ` API
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/customizing-quicksight.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that you want to customize QuickSight for.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that you want to add customizations to.
    #
    # @option params [required, Types::AccountCustomization] :account_customization
    #   The QuickSight customizations you're adding in the current AWS
    #   Region. You can add these to an AWS account and a QuickSight
    #   namespace.
    #
    #   For example, you can add a default theme by setting
    #   `AccountCustomization` to the midnight theme: `"AccountCustomization":
    #   \{ "DefaultTheme": "arn:aws:quicksight::aws:theme/MIDNIGHT" \}`. Or,
    #   you can add a custom theme by specifying `"AccountCustomization": \{
    #   "DefaultTheme":
    #   "arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639"
    #   \}`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tags that you want to attach to this resource.
    #
    # @return [Types::CreateAccountCustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountCustomizationResponse#arn #arn} => String
    #   * {Types::CreateAccountCustomizationResponse#aws_account_id #aws_account_id} => String
    #   * {Types::CreateAccountCustomizationResponse#namespace #namespace} => String
    #   * {Types::CreateAccountCustomizationResponse#account_customization #account_customization} => Types::AccountCustomization
    #   * {Types::CreateAccountCustomizationResponse#request_id #request_id} => String
    #   * {Types::CreateAccountCustomizationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_customization({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #     account_customization: { # required
    #       default_theme: "Arn",
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
    #   resp.arn #=> String
    #   resp.aws_account_id #=> String
    #   resp.namespace #=> String
    #   resp.account_customization.default_theme #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountCustomization AWS API Documentation
    #
    # @overload create_account_customization(params = {})
    # @param [Hash] params ({})
    def create_account_customization(params = {}, options = {})
      req = build_request(:create_account_customization, params)
      req.send_request(options)
    end

    # Creates an analysis in Amazon QuickSight.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account where you are creating an analysis.
    #
    # @option params [required, String] :analysis_id
    #   The ID for the analysis that you're creating. This ID displays in the
    #   URL of the analysis.
    #
    # @option params [required, String] :name
    #   A descriptive name for the analysis that you're creating. This name
    #   displays for the analysis in the QuickSight console.
    #
    # @option params [Types::Parameters] :parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might accept
    #   multiple values.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A structure that describes the principals and the resource-level
    #   permissions on an analysis. You can use the `Permissions` structure to
    #   grant permissions by providing a list of AWS Identity and Access
    #   Management (IAM) action information for each principal listed by
    #   Amazon Resource Name (ARN).
    #
    #   To specify no permissions, omit `Permissions`.
    #
    # @option params [required, Types::AnalysisSourceEntity] :source_entity
    #   A source entity to use for the analysis that you're creating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #
    # @option params [String] :theme_arn
    #   The ARN for the theme to apply to the analysis that you're creating.
    #   To see the theme in the QuickSight console, make sure that you have
    #   access to it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the analysis.
    #
    # @return [Types::CreateAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnalysisResponse#arn #arn} => String
    #   * {Types::CreateAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::CreateAnalysisResponse#creation_status #creation_status} => String
    #   * {Types::CreateAnalysisResponse#status #status} => Integer
    #   * {Types::CreateAnalysisResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_analysis({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "RestrictiveResourceId", # required
    #     name: "AnalysisName", # required
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["String"], # required
    #         },
    #       ],
    #       integer_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1], # required
    #         },
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1.0], # required
    #         },
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [Time.now], # required
    #         },
    #       ],
    #     },
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     source_entity: { # required
    #       source_template: {
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #         arn: "Arn", # required
    #       },
    #     },
    #     theme_arn: "Arn",
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
    #   resp.arn #=> String
    #   resp.analysis_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAnalysis AWS API Documentation
    #
    # @overload create_analysis(params = {})
    # @param [Hash] params ({})
    def create_analysis(params = {}, options = {})
      req = build_request(:create_analysis, params)
      req.send_request(options)
    end

    # Creates a dashboard from a template. To first create a template, see
    # the ` CreateTemplate ` API operation.
    #
    # A dashboard is an entity in QuickSight that identifies QuickSight
    # reports, created from analyses. You can share QuickSight dashboards.
    # With the right permissions, you can create scheduled email reports
    # from them. If you have the correct permissions, you can create a
    # dashboard from a template that exists in a different AWS account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account where you want to create the dashboard.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #
    # @option params [required, String] :name
    #   The display name of the dashboard.
    #
    # @option params [Types::Parameters] :parameters
    #   The parameters for the creation of the dashboard, which you want to
    #   use to override the default settings. A dashboard can have any type of
    #   parameters, and some parameters might accept multiple values.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A structure that contains the permissions of the dashboard. You can
    #   use this structure for granting permissions by providing a list of IAM
    #   action information for each principal ARN.
    #
    #   To specify no permissions, omit the permissions list.
    #
    # @option params [required, Types::DashboardSourceEntity] :source_entity
    #   The entity that you are using as a source when you create the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only create a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to create a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the CreateTemplate API operation. For `SourceTemplate`, specify the
    #   Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate`ARN can contain any AWS Account and any
    #   QuickSight-supported AWS Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` to list the
    #   replacement datasets for the placeholders listed in the original. The
    #   schema in each dataset must match its placeholder.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dashboard.
    #
    # @option params [String] :version_description
    #   A description for the first version of the dashboard being created.
    #
    # @option params [Types::DashboardPublishOptions] :dashboard_publish_options
    #   Options for publishing the dashboard when you create it:
    #
    #   * `AvailabilityStatus` for `AdHocFilteringOption` - This status can be
    #     either `ENABLED` or `DISABLED`. When this is set to `DISABLED`,
    #     QuickSight disables the left filter pane on the published dashboard,
    #     which can be used for ad hoc (one-time) filtering. This option is
    #     `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `ExportToCSVOption` - This status can be
    #     either `ENABLED` or `DISABLED`. The visual option to export data to
    #     .CSV format isn't enabled when this is set to `DISABLED`. This
    #     option is `ENABLED` by default.
    #
    #   * `VisibilityState` for `SheetControlsOption` - This visibility state
    #     can be either `COLLAPSED` or `EXPANDED`. This option is `COLLAPSED`
    #     by default.
    #
    # @option params [String] :theme_arn
    #   The Amazon Resource Name (ARN) of the theme that is being used for
    #   this dashboard. If you add a value for this field, it overrides the
    #   value that is used in the source entity. The theme ARN must exist in
    #   the same AWS account where you create the dashboard.
    #
    # @return [Types::CreateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDashboardResponse#arn #arn} => String
    #   * {Types::CreateDashboardResponse#version_arn #version_arn} => String
    #   * {Types::CreateDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::CreateDashboardResponse#creation_status #creation_status} => String
    #   * {Types::CreateDashboardResponse#status #status} => Integer
    #   * {Types::CreateDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     name: "DashboardName", # required
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["String"], # required
    #         },
    #       ],
    #       integer_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1], # required
    #         },
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1.0], # required
    #         },
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [Time.now], # required
    #         },
    #       ],
    #     },
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     source_entity: { # required
    #       source_template: {
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #         arn: "Arn", # required
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     version_description: "VersionDescription",
    #     dashboard_publish_options: {
    #       ad_hoc_filtering_option: {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       export_to_csv_option: {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       sheet_controls_option: {
    #         visibility_state: "EXPANDED", # accepts EXPANDED, COLLAPSED
    #       },
    #     },
    #     theme_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDashboard AWS API Documentation
    #
    # @overload create_dashboard(params = {})
    # @param [Hash] params ({})
    def create_dashboard(params = {}, options = {})
      req = build_request(:create_dashboard, params)
      req.send_request(options)
    end

    # Creates a dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   An ID for the dataset that you want to create. This ID is unique per
    #   AWS Region for each AWS account.
    #
    # @option params [required, String] :name
    #   The display name for the dataset.
    #
    # @option params [required, Hash<String,Types::PhysicalTable>] :physical_table_map
    #   Declares the physical tables that are available in the underlying data
    #   sources.
    #
    # @option params [Hash<String,Types::LogicalTable>] :logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #
    # @option params [required, String] :import_mode
    #   Indicates whether you want to import the data into SPICE.
    #
    # @option params [Array<Types::ColumnGroup>] :column_groups
    #   Groupings of columns that work together in certain QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions on the dataset.
    #
    # @option params [Types::RowLevelPermissionDataSet] :row_level_permission_data_set
    #   The row-level security configuration for the data that you want to
    #   create.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dataset.
    #
    # @return [Types::CreateDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSetResponse#arn #arn} => String
    #   * {Types::CreateDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::CreateDataSetResponse#ingestion_arn #ingestion_arn} => String
    #   * {Types::CreateDataSetResponse#ingestion_id #ingestion_id} => String
    #   * {Types::CreateDataSetResponse#request_id #request_id} => String
    #   * {Types::CreateDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     physical_table_map: { # required
    #       "PhysicalTableId" => {
    #         relational_table: {
    #           data_source_arn: "Arn", # required
    #           schema: "RelationalTableSchema",
    #           name: "RelationalTableName", # required
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         custom_sql: {
    #           data_source_arn: "Arn", # required
    #           name: "CustomSqlName", # required
    #           sql_query: "SqlQuery", # required
    #           columns: [
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         s3_source: {
    #           data_source_arn: "Arn", # required
    #           upload_settings: {
    #             format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #             start_from_row: 1,
    #             contains_header: false,
    #             text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #             delimiter: "Delimiter",
    #           },
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     logical_table_map: {
    #       "LogicalTableId" => {
    #         alias: "LogicalTableAlias", # required
    #         data_transforms: [
    #           {
    #             project_operation: {
    #               projected_columns: ["String"], # required
    #             },
    #             filter_operation: {
    #               condition_expression: "Expression", # required
    #             },
    #             create_columns_operation: {
    #               columns: [ # required
    #                 {
    #                   column_name: "ColumnName", # required
    #                   column_id: "ColumnId", # required
    #                   expression: "Expression", # required
    #                 },
    #               ],
    #             },
    #             rename_column_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_name: "ColumnName", # required
    #             },
    #             cast_column_type_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #               format: "TypeCastFormat",
    #             },
    #             tag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tags: [ # required
    #                 {
    #                   column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         source: { # required
    #           join_instruction: {
    #             left_operand: "LogicalTableId", # required
    #             right_operand: "LogicalTableId", # required
    #             type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #             on_clause: "OnClause", # required
    #           },
    #           physical_table_id: "PhysicalTableId",
    #         },
    #       },
    #     },
    #     import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: "ColumnGroupName", # required
    #           country_code: "US", # required, accepts US
    #           columns: ["ColumnName"], # required
    #         },
    #       },
    #     ],
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     row_level_permission_data_set: {
    #       namespace: "Namespace",
    #       arn: "Arn", # required
    #       permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
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
    #   resp.arn #=> String
    #   resp.data_set_id #=> String
    #   resp.ingestion_arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSet AWS API Documentation
    #
    # @overload create_data_set(params = {})
    # @param [Hash] params ({})
    def create_data_set(params = {}, options = {})
      req = build_request(:create_data_set, params)
      req.send_request(options)
    end

    # Creates a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   An ID for the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #
    # @option params [required, String] :name
    #   A display name for the data source.
    #
    # @option params [required, String] :type
    #   The type of the data source. Currently, the supported types for this
    #   operation are: `ATHENA, AURORA, AURORA_POSTGRESQL, MARIADB, MYSQL,
    #   POSTGRESQL, PRESTO, REDSHIFT, S3, SNOWFLAKE, SPARK, SQLSERVER,
    #   TERADATA`. Use `ListDataSources` to return a list of all data sources.
    #
    # @option params [Types::DataSourceParameters] :data_source_parameters
    #   The parameters that QuickSight uses to connect to your underlying
    #   source.
    #
    # @option params [Types::DataSourceCredentials] :credentials
    #   The credentials QuickSight that uses to connect to your underlying
    #   source. Currently, only credentials based on user name and password
    #   are supported.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions on the data source.
    #
    # @option params [Types::VpcConnectionProperties] :vpc_connection_properties
    #   Use this parameter only when you want QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #
    # @option params [Types::SslProperties] :ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when QuickSight
    #   connects to your underlying source.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the data source.
    #
    # @return [Types::CreateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceResponse#arn #arn} => String
    #   * {Types::CreateDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::CreateDataSourceResponse#creation_status #creation_status} => String
    #   * {Types::CreateDataSourceResponse#request_id #request_id} => String
    #   * {Types::CreateDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     type: "ADOBE_ANALYTICS", # required, accepts ADOBE_ANALYTICS, AMAZON_ELASTICSEARCH, ATHENA, AURORA, AURORA_POSTGRESQL, AWS_IOT_ANALYTICS, GITHUB, JIRA, MARIADB, MYSQL, POSTGRESQL, PRESTO, REDSHIFT, S3, SALESFORCE, SERVICENOW, SNOWFLAKE, SPARK, SQLSERVER, TERADATA, TWITTER, TIMESTREAM
    #     data_source_parameters: {
    #       amazon_elasticsearch_parameters: {
    #         domain: "Domain", # required
    #       },
    #       athena_parameters: {
    #         work_group: "WorkGroup",
    #       },
    #       aurora_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aurora_postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aws_iot_analytics_parameters: {
    #         data_set_name: "DataSetName", # required
    #       },
    #       jira_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       maria_db_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       my_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       presto_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #       },
    #       rds_parameters: {
    #         instance_id: "InstanceId", # required
    #         database: "Database", # required
    #       },
    #       redshift_parameters: {
    #         host: "Host",
    #         port: 1,
    #         database: "Database", # required
    #         cluster_id: "ClusterId",
    #       },
    #       s3_parameters: {
    #         manifest_file_location: { # required
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         },
    #       },
    #       service_now_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       snowflake_parameters: {
    #         host: "Host", # required
    #         database: "Database", # required
    #         warehouse: "Warehouse", # required
    #       },
    #       spark_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       sql_server_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       teradata_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       twitter_parameters: {
    #         query: "Query", # required
    #         max_rows: 1, # required
    #       },
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: "Username", # required
    #         password: "Password", # required
    #         alternate_data_source_parameters: [
    #           {
    #             amazon_elasticsearch_parameters: {
    #               domain: "Domain", # required
    #             },
    #             athena_parameters: {
    #               work_group: "WorkGroup",
    #             },
    #             aurora_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aurora_postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aws_iot_analytics_parameters: {
    #               data_set_name: "DataSetName", # required
    #             },
    #             jira_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             maria_db_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             my_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             presto_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #             },
    #             rds_parameters: {
    #               instance_id: "InstanceId", # required
    #               database: "Database", # required
    #             },
    #             redshift_parameters: {
    #               host: "Host",
    #               port: 1,
    #               database: "Database", # required
    #               cluster_id: "ClusterId",
    #             },
    #             s3_parameters: {
    #               manifest_file_location: { # required
    #                 bucket: "S3Bucket", # required
    #                 key: "S3Key", # required
    #               },
    #             },
    #             service_now_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             snowflake_parameters: {
    #               host: "Host", # required
    #               database: "Database", # required
    #               warehouse: "Warehouse", # required
    #             },
    #             spark_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             sql_server_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             teradata_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             twitter_parameters: {
    #               query: "Query", # required
    #               max_rows: 1, # required
    #             },
    #           },
    #         ],
    #       },
    #       copy_source_arn: "CopySourceArn",
    #     },
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     vpc_connection_properties: {
    #       vpc_connection_arn: "Arn", # required
    #     },
    #     ssl_properties: {
    #       disable_ssl: false,
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
    #   resp.arn #=> String
    #   resp.data_source_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates an Amazon QuickSight group.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<relevant-aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is a group object.
    #
    # @option params [required, String] :group_name
    #   A name for the group that you want to create.
    #
    # @option params [String] :description
    #   A description for the group that you want to create.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group #group} => Types::Group
    #   * {Types::CreateGroupResponse#request_id #request_id} => String
    #   * {Types::CreateGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     group_name: "GroupName", # required
    #     description: "GroupDescription",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Adds an Amazon QuickSight user to an Amazon QuickSight group.
    #
    # @option params [required, String] :member_name
    #   The name of the user that you want to add to the group membership.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to add the user to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::CreateGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupMembershipResponse#group_member #group_member} => Types::GroupMember
    #   * {Types::CreateGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::CreateGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_membership({
    #     member_name: "GroupMemberName", # required
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_member.arn #=> String
    #   resp.group_member.member_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembership AWS API Documentation
    #
    # @overload create_group_membership(params = {})
    # @param [Hash] params ({})
    def create_group_membership(params = {}, options = {})
      req = build_request(:create_group_membership, params)
      req.send_request(options)
    end

    # Creates an assignment with one specified IAM policy, identified by its
    # Amazon Resource Name (ARN). This policy will be assigned to specified
    # groups or users of Amazon QuickSight. The users and groups need to be
    # in the same namespace.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account where you want to assign an IAM policy to
    #   QuickSight users or groups.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment. It must be unique within an AWS account.
    #
    # @option params [required, String] :assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #
    # @option params [String] :policy_arn
    #   The ARN for the IAM policy to apply to the QuickSight users and groups
    #   specified in this assignment.
    #
    # @option params [Hash<String,Array>] :identities
    #   The QuickSight users, groups, or both that you want to assign the
    #   policy to.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the assignment.
    #
    # @return [Types::CreateIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIAMPolicyAssignmentResponse#assignment_name #assignment_name} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#assignment_id #assignment_id} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#assignment_status #assignment_status} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#policy_arn #policy_arn} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#identities #identities} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::CreateIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     assignment_status: "ENABLED", # required, accepts ENABLED, DRAFT, DISABLED
    #     policy_arn: "Arn",
    #     identities: {
    #       "String" => ["IdentityName"],
    #     },
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_name #=> String
    #   resp.assignment_id #=> String
    #   resp.assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.policy_arn #=> String
    #   resp.identities #=> Hash
    #   resp.identities["String"] #=> Array
    #   resp.identities["String"][0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIAMPolicyAssignment AWS API Documentation
    #
    # @overload create_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def create_iam_policy_assignment(params = {}, options = {})
      req = build_request(:create_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Creates and starts a new SPICE ingestion on a dataset
    #
    # Any ingestions operating on tagged datasets inherit the same tags
    # automatically for use in access control. For an example, see [How do I
    # create an IAM policy to control access to Amazon EC2 resources using
    # tags?][1] in the AWS Knowledge Center. Tags are visible on the tagged
    # dataset, but not on the ingestion resource.
    #
    #
    #
    # [1]: https://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @return [Types::CreateIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIngestionResponse#arn #arn} => String
    #   * {Types::CreateIngestionResponse#ingestion_id #ingestion_id} => String
    #   * {Types::CreateIngestionResponse#ingestion_status #ingestion_status} => String
    #   * {Types::CreateIngestionResponse#request_id #request_id} => String
    #   * {Types::CreateIngestionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ingestion({
    #     data_set_id: "string", # required
    #     ingestion_id: "IngestionId", # required
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIngestion AWS API Documentation
    #
    # @overload create_ingestion(params = {})
    # @param [Hash] params ({})
    def create_ingestion(params = {}, options = {})
      req = build_request(:create_ingestion, params)
      req.send_request(options)
    end

    # (Enterprise edition only) Creates a new namespace for you to use with
    # Amazon QuickSight.
    #
    # A namespace allows you to isolate the QuickSight users and groups that
    # are registered for that namespace. Users that access the namespace can
    # share assets only with other users or groups in the same namespace.
    # They can't see users and groups in other namespaces. You can create a
    # namespace after your AWS account is subscribed to QuickSight. The
    # namespace must be unique within the AWS account. By default, there is
    # a limit of 100 namespaces per AWS account. To increase your limit,
    # create a ticket with AWS Support.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that you want to create the QuickSight
    #   namespace in.
    #
    # @option params [required, String] :namespace
    #   The name that you want to use to describe the new namespace.
    #
    # @option params [required, String] :identity_store
    #   Specifies the type of your user identity directory. Currently, this
    #   supports users with an identity type of `QUICKSIGHT`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags that you want to associate with the namespace that you're
    #   creating.
    #
    # @return [Types::CreateNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNamespaceResponse#arn #arn} => String
    #   * {Types::CreateNamespaceResponse#name #name} => String
    #   * {Types::CreateNamespaceResponse#capacity_region #capacity_region} => String
    #   * {Types::CreateNamespaceResponse#creation_status #creation_status} => String
    #   * {Types::CreateNamespaceResponse#identity_store #identity_store} => String
    #   * {Types::CreateNamespaceResponse#request_id #request_id} => String
    #   * {Types::CreateNamespaceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_namespace({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     identity_store: "QUICKSIGHT", # required, accepts QUICKSIGHT
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
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.capacity_region #=> String
    #   resp.creation_status #=> String, one of "CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"
    #   resp.identity_store #=> String, one of "QUICKSIGHT"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateNamespace AWS API Documentation
    #
    # @overload create_namespace(params = {})
    # @param [Hash] params ({})
    def create_namespace(params = {}, options = {})
      req = build_request(:create_namespace, params)
      req.send_request(options)
    end

    # Creates a template from an existing QuickSight analysis or template.
    # You can use the resulting template to create a dashboard.
    #
    # A *template* is an entity in QuickSight that encapsulates the metadata
    # required to create an analysis and that you can use to create s
    # dashboard. A template adds a layer of abstraction by using
    # placeholders to replace the dataset associated with the analysis. You
    # can use templates to create dashboards by replacing dataset
    # placeholders with datasets that follow the same schema that was used
    # to create the source analysis and template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :template_id
    #   An ID for the template that you want to create. This template is
    #   unique per AWS Region in each AWS account.
    #
    # @option params [String] :name
    #   A display name for the template.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions to be set on the template.
    #
    # @option params [required, Types::TemplateSourceEntity] :source_entity
    #   The entity that you are using as a source when you create the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name (ARN).
    #   For `SourceTemplate`, specify the ARN of the source template. For
    #   `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any AWS Account and any
    #   QuickSight-supported AWS Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` or
    #   `SourceAnalysis` to list the replacement datasets for the placeholders
    #   listed in the original. The schema in each dataset must match its
    #   placeholder.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #
    # @option params [String] :version_description
    #   A description of the current template version being created. This API
    #   operation creates the first version of the template. Every time
    #   `UpdateTemplate` is called, a new version is created. Each version of
    #   the template maintains a description of the version in the
    #   `VersionDescription` field.
    #
    # @return [Types::CreateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateResponse#arn #arn} => String
    #   * {Types::CreateTemplateResponse#version_arn #version_arn} => String
    #   * {Types::CreateTemplateResponse#template_id #template_id} => String
    #   * {Types::CreateTemplateResponse#creation_status #creation_status} => String
    #   * {Types::CreateTemplateResponse#status #status} => Integer
    #   * {Types::CreateTemplateResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     name: "TemplateName",
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     source_entity: { # required
    #       source_analysis: {
    #         arn: "Arn", # required
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #       },
    #       source_template: {
    #         arn: "Arn", # required
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     version_description: "VersionDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.template_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplate AWS API Documentation
    #
    # @overload create_template(params = {})
    # @param [Hash] params ({})
    def create_template(params = {}, options = {})
      req = build_request(:create_template, params)
      req.send_request(options)
    end

    # Creates a template alias for a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the template that you creating
    #   an alias for.
    #
    # @option params [required, String] :template_id
    #   An ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The name that you want to give to the template alias that you're
    #   creating. Don't start the alias name with the `$` character. Alias
    #   names that start with `$` are reserved by QuickSight.
    #
    # @option params [required, Integer] :template_version_number
    #   The version number of the template.
    #
    # @return [Types::CreateTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateAliasResponse#template_alias #template_alias} => Types::TemplateAlias
    #   * {Types::CreateTemplateAliasResponse#status #status} => Integer
    #   * {Types::CreateTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     template_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias.alias_name #=> String
    #   resp.template_alias.arn #=> String
    #   resp.template_alias.template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateAlias AWS API Documentation
    #
    # @overload create_template_alias(params = {})
    # @param [Hash] params ({})
    def create_template_alias(params = {}, options = {})
      req = build_request(:create_template_alias, params)
      req.send_request(options)
    end

    # Creates a theme.
    #
    # A *theme* is set of configuration options for color and layout. Themes
    # apply to analyses and dashboards. For more information, see [Using
    # Themes in Amazon QuickSight][1] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account where you want to store the new theme.
    #
    # @option params [required, String] :theme_id
    #   An ID for the theme that you want to create. The theme ID is unique
    #   per AWS Region in each AWS account.
    #
    # @option params [required, String] :name
    #   A display name for the theme.
    #
    # @option params [required, String] :base_theme_id
    #   The ID of the theme that a custom theme will inherit from. All themes
    #   inherit from one of the starting themes defined by Amazon QuickSight.
    #   For a list of the starting themes, use `ListThemes` or choose
    #   **Themes** from within a QuickSight analysis.
    #
    # @option params [String] :version_description
    #   A description of the first version of the theme that you're creating.
    #   Every time `UpdateTheme` is called, a new version is created. Each
    #   version of the theme has a description of the version in the
    #   `VersionDescription` field.
    #
    # @option params [required, Types::ThemeConfiguration] :configuration
    #   The theme configuration, which contains the theme display properties.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A valid grouping of resource permissions to apply to the new theme.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs for the resource tag or tags that you
    #   want to add to the resource.
    #
    # @return [Types::CreateThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThemeResponse#arn #arn} => String
    #   * {Types::CreateThemeResponse#version_arn #version_arn} => String
    #   * {Types::CreateThemeResponse#theme_id #theme_id} => String
    #   * {Types::CreateThemeResponse#creation_status #creation_status} => String
    #   * {Types::CreateThemeResponse#status #status} => Integer
    #   * {Types::CreateThemeResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_theme({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     name: "ThemeName", # required
    #     base_theme_id: "RestrictiveResourceId", # required
    #     version_description: "VersionDescription",
    #     configuration: { # required
    #       data_color_palette: {
    #         colors: ["HexColor"],
    #         min_max_gradient: ["HexColor"],
    #         empty_fill_color: "HexColor",
    #       },
    #       ui_color_palette: {
    #         primary_foreground: "HexColor",
    #         primary_background: "HexColor",
    #         secondary_foreground: "HexColor",
    #         secondary_background: "HexColor",
    #         accent: "HexColor",
    #         accent_foreground: "HexColor",
    #         danger: "HexColor",
    #         danger_foreground: "HexColor",
    #         warning: "HexColor",
    #         warning_foreground: "HexColor",
    #         success: "HexColor",
    #         success_foreground: "HexColor",
    #         dimension: "HexColor",
    #         dimension_foreground: "HexColor",
    #         measure: "HexColor",
    #         measure_foreground: "HexColor",
    #       },
    #       sheet: {
    #         tile: {
    #           border: {
    #             show: false,
    #           },
    #         },
    #         tile_layout: {
    #           gutter: {
    #             show: false,
    #           },
    #           margin: {
    #             show: false,
    #           },
    #         },
    #       },
    #     },
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
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
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.theme_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTheme AWS API Documentation
    #
    # @overload create_theme(params = {})
    # @param [Hash] params ({})
    def create_theme(params = {}, options = {})
      req = build_request(:create_theme, params)
      req.send_request(options)
    end

    # Creates a theme alias for a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme for the new theme
    #   alias.
    #
    # @option params [required, String] :theme_id
    #   An ID for the theme alias.
    #
    # @option params [required, String] :alias_name
    #   The name that you want to give to the theme alias that you are
    #   creating. The alias name can't begin with a `$`. Alias names that
    #   start with `$` are reserved by Amazon QuickSight.
    #
    # @option params [required, Integer] :theme_version_number
    #   The version number of the theme.
    #
    # @return [Types::CreateThemeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThemeAliasResponse#theme_alias #theme_alias} => Types::ThemeAlias
    #   * {Types::CreateThemeAliasResponse#status #status} => Integer
    #   * {Types::CreateThemeAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_theme_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     theme_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_alias.arn #=> String
    #   resp.theme_alias.alias_name #=> String
    #   resp.theme_alias.theme_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeAlias AWS API Documentation
    #
    # @overload create_theme_alias(params = {})
    # @param [Hash] params ({})
    def create_theme_alias(params = {}, options = {})
      req = build_request(:create_theme_alias, params)
      req.send_request(options)
    end

    # Deletes all Amazon QuickSight customizations in this AWS Region for
    # the specified AWS account and QuickSight namespace.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that you want to delete QuickSight
    #   customizations from in this AWS Region.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that you're deleting the customizations
    #   from.
    #
    # @return [Types::DeleteAccountCustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountCustomizationResponse#request_id #request_id} => String
    #   * {Types::DeleteAccountCustomizationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_customization({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountCustomization AWS API Documentation
    #
    # @overload delete_account_customization(params = {})
    # @param [Hash] params ({})
    def delete_account_customization(params = {}, options = {})
      req = build_request(:delete_account_customization, params)
      req.send_request(options)
    end

    # Deletes an analysis from Amazon QuickSight. You can optionally include
    # a recovery window during which you can restore the analysis. If you
    # don't specify a recovery window value, the operation defaults to 30
    # days. QuickSight attaches a `DeletionTime` stamp to the response that
    # specifies the end of the recovery window. At the end of the recovery
    # window, QuickSight deletes the analysis permanently.
    #
    # At any time before recovery window ends, you can use the
    # `RestoreAnalysis` API operation to remove the `DeletionTime` stamp and
    # cancel the deletion of the analysis. The analysis remains visible in
    # the API until it's deleted, so you can describe it but you can't
    # make a template from it.
    #
    # An analysis that's scheduled for deletion isn't accessible in the
    # QuickSight console. To access it in the console, restore it. Deleting
    # an analysis doesn't delete the dashboards that you publish from it.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account where you want to delete an analysis.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis that you're deleting.
    #
    # @option params [Integer] :recovery_window_in_days
    #   A value that specifies the number of days that QuickSight waits before
    #   it deletes the analysis. You can't use this parameter with the
    #   `ForceDeleteWithoutRecovery` option in the same API call. The default
    #   value is 30.
    #
    # @option params [Boolean] :force_delete_without_recovery
    #   This option defaults to the value `NoForceDeleteWithoutRecovery`. To
    #   immediately delete the analysis, add the `ForceDeleteWithoutRecovery`
    #   option. You can't restore an analysis after it's deleted.
    #
    # @return [Types::DeleteAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAnalysisResponse#status #status} => Integer
    #   * {Types::DeleteAnalysisResponse#arn #arn} => String
    #   * {Types::DeleteAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::DeleteAnalysisResponse#deletion_time #deletion_time} => Time
    #   * {Types::DeleteAnalysisResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_analysis({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "RestrictiveResourceId", # required
    #     recovery_window_in_days: 1,
    #     force_delete_without_recovery: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.analysis_id #=> String
    #   resp.deletion_time #=> Time
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAnalysis AWS API Documentation
    #
    # @overload delete_analysis(params = {})
    # @param [Hash] params ({})
    def delete_analysis(params = {}, options = {})
      req = build_request(:delete_analysis, params)
      req.send_request(options)
    end

    # Deletes a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   deleting.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Integer] :version_number
    #   The version number of the dashboard. If the version number property is
    #   provided, only the specified version of the dashboard is deleted.
    #
    # @return [Types::DeleteDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDashboardResponse#status #status} => Integer
    #   * {Types::DeleteDashboardResponse#arn #arn} => String
    #   * {Types::DeleteDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DeleteDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDashboard AWS API Documentation
    #
    # @overload delete_dashboard(params = {})
    # @param [Hash] params ({})
    def delete_dashboard(params = {}, options = {})
      req = build_request(:delete_dashboard, params)
      req.send_request(options)
    end

    # Deletes a dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to create. This ID is unique per
    #   AWS Region for each AWS account.
    #
    # @return [Types::DeleteDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSetResponse#arn #arn} => String
    #   * {Types::DeleteDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::DeleteDataSetResponse#request_id #request_id} => String
    #   * {Types::DeleteDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_set_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSet AWS API Documentation
    #
    # @overload delete_data_set(params = {})
    # @param [Hash] params ({})
    def delete_data_set(params = {}, options = {})
      req = build_request(:delete_data_set, params)
      req.send_request(options)
    end

    # Deletes the data source permanently. This operation breaks all the
    # datasets that reference the deleted data source.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #
    # @return [Types::DeleteDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSourceResponse#arn #arn} => String
    #   * {Types::DeleteDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::DeleteDataSourceResponse#request_id #request_id} => String
    #   * {Types::DeleteDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_source_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Removes a user group from Amazon QuickSight.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupResponse#request_id #request_id} => String
    #   * {Types::DeleteGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Removes a user from a group so that the user is no longer a member of
    # the group.
    #
    # @option params [required, String] :member_name
    #   The name of the user that you want to delete from the group
    #   membership.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete the user from.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::DeleteGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group_membership({
    #     member_name: "GroupMemberName", # required
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembership AWS API Documentation
    #
    # @overload delete_group_membership(params = {})
    # @param [Hash] params ({})
    def delete_group_membership(params = {}, options = {})
      req = build_request(:delete_group_membership, params)
      req.send_request(options)
    end

    # Deletes an existing IAM policy assignment.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID where you want to delete the IAM policy assignment.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the assignment.
    #
    # @return [Types::DeleteIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIAMPolicyAssignmentResponse#assignment_name #assignment_name} => String
    #   * {Types::DeleteIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::DeleteIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteIAMPolicyAssignment AWS API Documentation
    #
    # @overload delete_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def delete_iam_policy_assignment(params = {}, options = {})
      req = build_request(:delete_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Deletes a namespace and the users and groups that are associated with
    # the namespace. This is an asynchronous process. Assets including
    # dashboards, analyses, datasets and data sources are not deleted. To
    # delete these assets, you use the API operations for the relevant
    # asset.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that you want to delete the QuickSight
    #   namespace from.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want to delete.
    #
    # @return [Types::DeleteNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNamespaceResponse#request_id #request_id} => String
    #   * {Types::DeleteNamespaceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_namespace({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteNamespace AWS API Documentation
    #
    # @overload delete_namespace(params = {})
    # @param [Hash] params ({})
    def delete_namespace(params = {}, options = {})
      req = build_request(:delete_namespace, params)
      req.send_request(options)
    end

    # Deletes a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the template that you're
    #   deleting.
    #
    # @option params [required, String] :template_id
    #   An ID for the template you want to delete.
    #
    # @option params [Integer] :version_number
    #   Specifies the version of the template that you want to delete. If you
    #   don't provide a version number, `DeleteTemplate` deletes all versions
    #   of the template.
    #
    # @return [Types::DeleteTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTemplateResponse#request_id #request_id} => String
    #   * {Types::DeleteTemplateResponse#arn #arn} => String
    #   * {Types::DeleteTemplateResponse#template_id #template_id} => String
    #   * {Types::DeleteTemplateResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.arn #=> String
    #   resp.template_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplate AWS API Documentation
    #
    # @overload delete_template(params = {})
    # @param [Hash] params ({})
    def delete_template(params = {}, options = {})
      req = build_request(:delete_template, params)
      req.send_request(options)
    end

    # Deletes the item that the specified template alias points to. If you
    # provide a specific alias, you delete the version of the template that
    # the alias points to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the item to delete.
    #
    # @option params [required, String] :template_id
    #   The ID for the template that the specified alias is for.
    #
    # @option params [required, String] :alias_name
    #   The name for the template alias. To delete a specific alias, you
    #   delete the version that the alias points to. You can specify the alias
    #   name, or specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter.
    #
    # @return [Types::DeleteTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTemplateAliasResponse#status #status} => Integer
    #   * {Types::DeleteTemplateAliasResponse#template_id #template_id} => String
    #   * {Types::DeleteTemplateAliasResponse#alias_name #alias_name} => String
    #   * {Types::DeleteTemplateAliasResponse#arn #arn} => String
    #   * {Types::DeleteTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.template_id #=> String
    #   resp.alias_name #=> String
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateAlias AWS API Documentation
    #
    # @overload delete_template_alias(params = {})
    # @param [Hash] params ({})
    def delete_template_alias(params = {}, options = {})
      req = build_request(:delete_template_alias, params)
      req.send_request(options)
    end

    # Deletes a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme that you're
    #   deleting.
    #
    # @option params [required, String] :theme_id
    #   An ID for the theme that you want to delete.
    #
    # @option params [Integer] :version_number
    #   The version of the theme that you want to delete.
    #
    #   **Note:** If you don't provide a version number, you're using this
    #   call to `DeleteTheme` to delete all versions of the theme.
    #
    # @return [Types::DeleteThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteThemeResponse#arn #arn} => String
    #   * {Types::DeleteThemeResponse#request_id #request_id} => String
    #   * {Types::DeleteThemeResponse#status #status} => Integer
    #   * {Types::DeleteThemeResponse#theme_id #theme_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_theme({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.theme_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTheme AWS API Documentation
    #
    # @overload delete_theme(params = {})
    # @param [Hash] params ({})
    def delete_theme(params = {}, options = {})
      req = build_request(:delete_theme, params)
      req.send_request(options)
    end

    # Deletes the version of the theme that the specified theme alias points
    # to. If you provide a specific alias, you delete the version of the
    # theme that the alias points to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme alias to delete.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme that the specified alias is for.
    #
    # @option params [required, String] :alias_name
    #   The unique name for the theme alias to delete.
    #
    # @return [Types::DeleteThemeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteThemeAliasResponse#alias_name #alias_name} => String
    #   * {Types::DeleteThemeAliasResponse#arn #arn} => String
    #   * {Types::DeleteThemeAliasResponse#request_id #request_id} => String
    #   * {Types::DeleteThemeAliasResponse#status #status} => Integer
    #   * {Types::DeleteThemeAliasResponse#theme_id #theme_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_theme_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_name #=> String
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.theme_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeAlias AWS API Documentation
    #
    # @overload delete_theme_alias(params = {})
    # @param [Hash] params ({})
    def delete_theme_alias(params = {}, options = {})
      req = build_request(:delete_theme_alias, params)
      req.send_request(options)
    end

    # Deletes the Amazon QuickSight user that is associated with the
    # identity of the AWS Identity and Access Management (IAM) user or role
    # that's making the call. The IAM user isn't deleted as a result of
    # this call.
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserResponse#request_id #request_id} => String
    #   * {Types::DeleteUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes a user identified by its principal ID.
    #
    # @option params [required, String] :principal_id
    #   The principal ID of the user.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteUserByPrincipalIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserByPrincipalIdResponse#request_id #request_id} => String
    #   * {Types::DeleteUserByPrincipalIdResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_by_principal_id({
    #     principal_id: "String", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalId AWS API Documentation
    #
    # @overload delete_user_by_principal_id(params = {})
    # @param [Hash] params ({})
    def delete_user_by_principal_id(params = {}, options = {})
      req = build_request(:delete_user_by_principal_id, params)
      req.send_request(options)
    end

    # Describes the customizations associated with the provided AWS account
    # and Amazon QuickSight namespace in an AWS Region. The QuickSight
    # console evaluates which customizations to apply by running this API
    # operation with the `Resolved` flag included.
    #
    # To determine what customizations display when you run this command, it
    # can help to visualize the relationship of the entities involved.
    #
    # * `AWS Account` - The AWS account exists at the top of the hierarchy.
    #   It has the potential to use all of the AWS Regions and AWS Services.
    #   When you subscribe to QuickSight, you choose one AWS Region to use
    #   as your home Region. That's where your free SPICE capacity is
    #   located. You can use QuickSight in any supported AWS Region.
    #
    # * `AWS Region` - In each AWS Region where you sign in to QuickSight at
    #   least once, QuickSight acts as a separate instance of the same
    #   service. If you have a user directory, it resides in us-east-1,
    #   which is the US East (N. Virginia). Generally speaking, these users
    #   have access to QuickSight in any AWS Region, unless they are
    #   constrained to a namespace.
    #
    #   To run the command in a different AWS Region, you change your Region
    #   settings. If you're using the AWS CLI, you can use one of the
    #   following options:
    #
    #   * Use [command line options][1].
    #
    #   * Use [named profiles][2].
    #
    #   * Run `aws configure` to change your default AWS Region. Use Enter
    #     to key the same settings for your keys. For more information, see
    #     [Configuring the AWS CLI][3].
    #
    # * `Namespace` - A QuickSight namespace is a partition that contains
    #   users and assets (data sources, datasets, dashboards, and so on). To
    #   access assets that are in a specific namespace, users and groups
    #   must also be part of the same namespace. People who share a
    #   namespace are completely isolated from users and assets in other
    #   namespaces, even if they are in the same AWS account and AWS Region.
    #
    # * `Applied customizations` - Within an AWS Region, a set of QuickSight
    #   customizations can apply to an AWS account or to a namespace.
    #   Settings that you apply to a namespace override settings that you
    #   apply to an AWS account. All settings are isolated to a single AWS
    #   Region. To apply them in other AWS Regions, run the
    #   `CreateAccountCustomization` command in each AWS Region where you
    #   want to apply the same customizations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html
    # [2]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
    # [3]: https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that you want to describe QuickSight
    #   customizations for.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that you want to describe QuickSight
    #   customizations for.
    #
    # @option params [Boolean] :resolved
    #   The `Resolved` flag works with the other parameters to determine which
    #   view of QuickSight customizations is returned. You can add this flag
    #   to your command to use the same view that QuickSight uses to identify
    #   which customizations to apply to the console. Omit this flag, or set
    #   it to `no-resolved`, to reveal customizations that are configured at
    #   different levels.
    #
    # @return [Types::DescribeAccountCustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountCustomizationResponse#arn #arn} => String
    #   * {Types::DescribeAccountCustomizationResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeAccountCustomizationResponse#namespace #namespace} => String
    #   * {Types::DescribeAccountCustomizationResponse#account_customization #account_customization} => Types::AccountCustomization
    #   * {Types::DescribeAccountCustomizationResponse#request_id #request_id} => String
    #   * {Types::DescribeAccountCustomizationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_customization({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #     resolved: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.aws_account_id #=> String
    #   resp.namespace #=> String
    #   resp.account_customization.default_theme #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountCustomization AWS API Documentation
    #
    # @overload describe_account_customization(params = {})
    # @param [Hash] params ({})
    def describe_account_customization(params = {}, options = {})
      req = build_request(:describe_account_customization, params)
      req.send_request(options)
    end

    # Describes the settings that were used when your QuickSight
    # subscription was first created in this AWS account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that contains the settings that you want to
    #   list.
    #
    # @return [Types::DescribeAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountSettingsResponse#account_settings #account_settings} => Types::AccountSettings
    #   * {Types::DescribeAccountSettingsResponse#request_id #request_id} => String
    #   * {Types::DescribeAccountSettingsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_settings({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings.account_name #=> String
    #   resp.account_settings.edition #=> String, one of "STANDARD", "ENTERPRISE"
    #   resp.account_settings.default_namespace #=> String
    #   resp.account_settings.notification_email #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSettings AWS API Documentation
    #
    # @overload describe_account_settings(params = {})
    # @param [Hash] params ({})
    def describe_account_settings(params = {}, options = {})
      req = build_request(:describe_account_settings, params)
      req.send_request(options)
    end

    # Provides a summary of the metadata for an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the analysis. You must be
    #   using the AWS account that the analysis is in.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis that you're describing. The ID is part of the
    #   URL of the analysis.
    #
    # @return [Types::DescribeAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnalysisResponse#analysis #analysis} => Types::Analysis
    #   * {Types::DescribeAnalysisResponse#status #status} => Integer
    #   * {Types::DescribeAnalysisResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis.analysis_id #=> String
    #   resp.analysis.arn #=> String
    #   resp.analysis.name #=> String
    #   resp.analysis.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.analysis.errors #=> Array
    #   resp.analysis.errors[0].type #=> String, one of "ACCESS_DENIED", "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "PARAMETER_VALUE_INCOMPATIBLE", "PARAMETER_TYPE_INVALID", "PARAMETER_NOT_FOUND", "COLUMN_TYPE_MISMATCH", "COLUMN_GEOGRAPHIC_ROLE_MISMATCH", "COLUMN_REPLACEMENT_MISSING"
    #   resp.analysis.errors[0].message #=> String
    #   resp.analysis.data_set_arns #=> Array
    #   resp.analysis.data_set_arns[0] #=> String
    #   resp.analysis.theme_arn #=> String
    #   resp.analysis.created_time #=> Time
    #   resp.analysis.last_updated_time #=> Time
    #   resp.analysis.sheets #=> Array
    #   resp.analysis.sheets[0].sheet_id #=> String
    #   resp.analysis.sheets[0].name #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysis AWS API Documentation
    #
    # @overload describe_analysis(params = {})
    # @param [Hash] params ({})
    def describe_analysis(params = {}, options = {})
      req = build_request(:describe_analysis, params)
      req.send_request(options)
    end

    # Provides the read and write permissions for an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the analysis whose permissions
    #   you're describing. You must be using the AWS account that the
    #   analysis is in.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis whose permissions you're describing. The ID is
    #   part of the analysis URL.
    #
    # @return [Types::DescribeAnalysisPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnalysisPermissionsResponse#analysis_id #analysis_id} => String
    #   * {Types::DescribeAnalysisPermissionsResponse#analysis_arn #analysis_arn} => String
    #   * {Types::DescribeAnalysisPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeAnalysisPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeAnalysisPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_id #=> String
    #   resp.analysis_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisPermissions AWS API Documentation
    #
    # @overload describe_analysis_permissions(params = {})
    # @param [Hash] params ({})
    def describe_analysis_permissions(params = {}, options = {})
      req = build_request(:describe_analysis_permissions, params)
      req.send_request(options)
    end

    # Provides a summary for a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   describing.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Integer] :version_number
    #   The version number for the dashboard. If a version number isn't
    #   passed, the latest published dashboard version is described.
    #
    # @option params [String] :alias_name
    #   The alias name.
    #
    # @return [Types::DescribeDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardResponse#dashboard #dashboard} => Types::Dashboard
    #   * {Types::DescribeDashboardResponse#status #status} => Integer
    #   * {Types::DescribeDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard.dashboard_id #=> String
    #   resp.dashboard.arn #=> String
    #   resp.dashboard.name #=> String
    #   resp.dashboard.version.created_time #=> Time
    #   resp.dashboard.version.errors #=> Array
    #   resp.dashboard.version.errors[0].type #=> String, one of "ACCESS_DENIED", "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "PARAMETER_VALUE_INCOMPATIBLE", "PARAMETER_TYPE_INVALID", "PARAMETER_NOT_FOUND", "COLUMN_TYPE_MISMATCH", "COLUMN_GEOGRAPHIC_ROLE_MISMATCH", "COLUMN_REPLACEMENT_MISSING"
    #   resp.dashboard.version.errors[0].message #=> String
    #   resp.dashboard.version.version_number #=> Integer
    #   resp.dashboard.version.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.dashboard.version.arn #=> String
    #   resp.dashboard.version.source_entity_arn #=> String
    #   resp.dashboard.version.data_set_arns #=> Array
    #   resp.dashboard.version.data_set_arns[0] #=> String
    #   resp.dashboard.version.description #=> String
    #   resp.dashboard.version.theme_arn #=> String
    #   resp.dashboard.version.sheets #=> Array
    #   resp.dashboard.version.sheets[0].sheet_id #=> String
    #   resp.dashboard.version.sheets[0].name #=> String
    #   resp.dashboard.created_time #=> Time
    #   resp.dashboard.last_published_time #=> Time
    #   resp.dashboard.last_updated_time #=> Time
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboard AWS API Documentation
    #
    # @overload describe_dashboard(params = {})
    # @param [Hash] params ({})
    def describe_dashboard(params = {}, options = {})
      req = build_request(:describe_dashboard, params)
      req.send_request(options)
    end

    # Describes read and write permissions for a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   describing permissions for.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #
    # @return [Types::DescribeDashboardPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardPermissionsResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DescribeDashboardPermissionsResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::DescribeDashboardPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeDashboardPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeDashboardPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardPermissions AWS API Documentation
    #
    # @overload describe_dashboard_permissions(params = {})
    # @param [Hash] params ({})
    def describe_dashboard_permissions(params = {}, options = {})
      req = build_request(:describe_dashboard_permissions, params)
      req.send_request(options)
    end

    # Describes a dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to create. This ID is unique per
    #   AWS Region for each AWS account.
    #
    # @return [Types::DescribeDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSetResponse#data_set #data_set} => Types::DataSet
    #   * {Types::DescribeDataSetResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set.arn #=> String
    #   resp.data_set.data_set_id #=> String
    #   resp.data_set.name #=> String
    #   resp.data_set.created_time #=> Time
    #   resp.data_set.last_updated_time #=> Time
    #   resp.data_set.physical_table_map #=> Hash
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.data_source_arn #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.schema #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns #=> Array
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns[0].name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.data_source_arn #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.sql_query #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns #=> Array
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns[0].name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.data_source_arn #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.format #=> String, one of "CSV", "TSV", "CLF", "ELF", "XLSX", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.start_from_row #=> Integer
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.contains_header #=> Boolean
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.text_qualifier #=> String, one of "DOUBLE_QUOTE", "SINGLE_QUOTE"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.delimiter #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns #=> Array
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns[0].name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"
    #   resp.data_set.logical_table_map #=> Hash
    #   resp.data_set.logical_table_map["LogicalTableId"].alias #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].project_operation.projected_columns #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].project_operation.projected_columns[0] #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].filter_operation.condition_expression #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns[0].column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns[0].column_id #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns[0].expression #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].rename_column_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].rename_column_operation.new_column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.new_column_type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME"
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.format #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.tags #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.tags[0].column_geographic_role #=> String, one of "COUNTRY", "STATE", "COUNTY", "CITY", "POSTCODE", "LONGITUDE", "LATITUDE"
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.left_operand #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.right_operand #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.type #=> String, one of "INNER", "OUTER", "LEFT", "RIGHT"
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.on_clause #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.physical_table_id #=> String
    #   resp.data_set.output_columns #=> Array
    #   resp.data_set.output_columns[0].name #=> String
    #   resp.data_set.output_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME"
    #   resp.data_set.import_mode #=> String, one of "SPICE", "DIRECT_QUERY"
    #   resp.data_set.consumed_spice_capacity_in_bytes #=> Integer
    #   resp.data_set.column_groups #=> Array
    #   resp.data_set.column_groups[0].geo_spatial_column_group.name #=> String
    #   resp.data_set.column_groups[0].geo_spatial_column_group.country_code #=> String, one of "US"
    #   resp.data_set.column_groups[0].geo_spatial_column_group.columns #=> Array
    #   resp.data_set.column_groups[0].geo_spatial_column_group.columns[0] #=> String
    #   resp.data_set.row_level_permission_data_set.namespace #=> String
    #   resp.data_set.row_level_permission_data_set.arn #=> String
    #   resp.data_set.row_level_permission_data_set.permission_policy #=> String, one of "GRANT_ACCESS", "DENY_ACCESS"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSet AWS API Documentation
    #
    # @overload describe_data_set(params = {})
    # @param [Hash] params ({})
    def describe_data_set(params = {}, options = {})
      req = build_request(:describe_data_set, params)
      req.send_request(options)
    end

    # Describes the permissions on a dataset.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to create. This ID is unique per
    #   AWS Region for each AWS account.
    #
    # @return [Types::DescribeDataSetPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSetPermissionsResponse#data_set_arn #data_set_arn} => String
    #   * {Types::DescribeDataSetPermissionsResponse#data_set_id #data_set_id} => String
    #   * {Types::DescribeDataSetPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeDataSetPermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSetPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_arn #=> String
    #   resp.data_set_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetPermissions AWS API Documentation
    #
    # @overload describe_data_set_permissions(params = {})
    # @param [Hash] params ({})
    def describe_data_set_permissions(params = {}, options = {})
      req = build_request(:describe_data_set_permissions, params)
      req.send_request(options)
    end

    # Describes a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #
    # @return [Types::DescribeDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSourceResponse#data_source #data_source} => Types::DataSource
    #   * {Types::DescribeDataSourceResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.arn #=> String
    #   resp.data_source.data_source_id #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM"
    #   resp.data_source.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.data_source.created_time #=> Time
    #   resp.data_source.last_updated_time #=> Time
    #   resp.data_source.data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_source.data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data_source.data_source_parameters.aurora_parameters.host #=> String
    #   resp.data_source.data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.aurora_parameters.database #=> String
    #   resp.data_source.data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.data_source.data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.data_source.data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_source.data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.data_source.data_source_parameters.maria_db_parameters.host #=> String
    #   resp.data_source.data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.maria_db_parameters.database #=> String
    #   resp.data_source.data_source_parameters.my_sql_parameters.host #=> String
    #   resp.data_source.data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.my_sql_parameters.database #=> String
    #   resp.data_source.data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.data_source.data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.data_source.data_source_parameters.presto_parameters.host #=> String
    #   resp.data_source.data_source_parameters.presto_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.presto_parameters.catalog #=> String
    #   resp.data_source.data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.data_source.data_source_parameters.rds_parameters.database #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.host #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.redshift_parameters.database #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.data_source.data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_source.data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.data_source.data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.host #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.database #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.data_source.data_source_parameters.spark_parameters.host #=> String
    #   resp.data_source.data_source_parameters.spark_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.sql_server_parameters.host #=> String
    #   resp.data_source.data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.sql_server_parameters.database #=> String
    #   resp.data_source.data_source_parameters.teradata_parameters.host #=> String
    #   resp.data_source.data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.teradata_parameters.database #=> String
    #   resp.data_source.data_source_parameters.twitter_parameters.query #=> String
    #   resp.data_source.data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.data_source.alternate_data_source_parameters #=> Array
    #   resp.data_source.alternate_data_source_parameters[0].amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_source.alternate_data_source_parameters[0].athena_parameters.work_group #=> String
    #   resp.data_source.alternate_data_source_parameters[0].aurora_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].aurora_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].aurora_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].aurora_postgre_sql_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].aurora_postgre_sql_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_source.alternate_data_source_parameters[0].jira_parameters.site_base_url #=> String
    #   resp.data_source.alternate_data_source_parameters[0].maria_db_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].maria_db_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].maria_db_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].my_sql_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].my_sql_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].my_sql_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].postgre_sql_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].postgre_sql_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].postgre_sql_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].presto_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].presto_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].presto_parameters.catalog #=> String
    #   resp.data_source.alternate_data_source_parameters[0].rds_parameters.instance_id #=> String
    #   resp.data_source.alternate_data_source_parameters[0].rds_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.cluster_id #=> String
    #   resp.data_source.alternate_data_source_parameters[0].s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_source.alternate_data_source_parameters[0].s3_parameters.manifest_file_location.key #=> String
    #   resp.data_source.alternate_data_source_parameters[0].service_now_parameters.site_base_url #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.warehouse #=> String
    #   resp.data_source.alternate_data_source_parameters[0].spark_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].spark_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].sql_server_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].sql_server_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].sql_server_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].teradata_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].teradata_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].teradata_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].twitter_parameters.query #=> String
    #   resp.data_source.alternate_data_source_parameters[0].twitter_parameters.max_rows #=> Integer
    #   resp.data_source.vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_source.ssl_properties.disable_ssl #=> Boolean
    #   resp.data_source.error_info.type #=> String, one of "ACCESS_DENIED", "COPY_SOURCE_NOT_FOUND", "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"
    #   resp.data_source.error_info.message #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSource AWS API Documentation
    #
    # @overload describe_data_source(params = {})
    # @param [Hash] params ({})
    def describe_data_source(params = {}, options = {})
      req = build_request(:describe_data_source, params)
      req.send_request(options)
    end

    # Describes the resource permissions for a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #
    # @return [Types::DescribeDataSourcePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSourcePermissionsResponse#data_source_arn #data_source_arn} => String
    #   * {Types::DescribeDataSourcePermissionsResponse#data_source_id #data_source_id} => String
    #   * {Types::DescribeDataSourcePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeDataSourcePermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSourcePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_arn #=> String
    #   resp.data_source_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourcePermissions AWS API Documentation
    #
    # @overload describe_data_source_permissions(params = {})
    # @param [Hash] params ({})
    def describe_data_source_permissions(params = {}, options = {})
      req = build_request(:describe_data_source_permissions, params)
      req.send_request(options)
    end

    # Returns an Amazon QuickSight group's description and Amazon Resource
    # Name (ARN).
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DescribeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupResponse#group #group} => Types::Group
    #   * {Types::DescribeGroupResponse#request_id #request_id} => String
    #   * {Types::DescribeGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group({
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroup AWS API Documentation
    #
    # @overload describe_group(params = {})
    # @param [Hash] params ({})
    def describe_group(params = {}, options = {})
      req = build_request(:describe_group, params)
      req.send_request(options)
    end

    # Describes an existing IAM policy assignment, as specified by the
    # assignment name.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the assignment that you want
    #   to describe.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the assignment.
    #
    # @return [Types::DescribeIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIAMPolicyAssignmentResponse#iam_policy_assignment #iam_policy_assignment} => Types::IAMPolicyAssignment
    #   * {Types::DescribeIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::DescribeIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_policy_assignment.aws_account_id #=> String
    #   resp.iam_policy_assignment.assignment_id #=> String
    #   resp.iam_policy_assignment.assignment_name #=> String
    #   resp.iam_policy_assignment.policy_arn #=> String
    #   resp.iam_policy_assignment.identities #=> Hash
    #   resp.iam_policy_assignment.identities["String"] #=> Array
    #   resp.iam_policy_assignment.identities["String"][0] #=> String
    #   resp.iam_policy_assignment.assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIAMPolicyAssignment AWS API Documentation
    #
    # @overload describe_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def describe_iam_policy_assignment(params = {}, options = {})
      req = build_request(:describe_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Describes a SPICE ingestion.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @return [Types::DescribeIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIngestionResponse#ingestion #ingestion} => Types::Ingestion
    #   * {Types::DescribeIngestionResponse#request_id #request_id} => String
    #   * {Types::DescribeIngestionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ingestion({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "string", # required
    #     ingestion_id: "IngestionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion.arn #=> String
    #   resp.ingestion.ingestion_id #=> String
    #   resp.ingestion.ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.ingestion.error_info.type #=> String, one of "FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR"
    #   resp.ingestion.error_info.message #=> String
    #   resp.ingestion.row_info.rows_ingested #=> Integer
    #   resp.ingestion.row_info.rows_dropped #=> Integer
    #   resp.ingestion.queue_info.waiting_on_ingestion #=> String
    #   resp.ingestion.queue_info.queued_ingestion #=> String
    #   resp.ingestion.created_time #=> Time
    #   resp.ingestion.ingestion_time_in_seconds #=> Integer
    #   resp.ingestion.ingestion_size_in_bytes #=> Integer
    #   resp.ingestion.request_source #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.ingestion.request_type #=> String, one of "INITIAL_INGESTION", "EDIT", "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIngestion AWS API Documentation
    #
    # @overload describe_ingestion(params = {})
    # @param [Hash] params ({})
    def describe_ingestion(params = {}, options = {})
      req = build_request(:describe_ingestion, params)
      req.send_request(options)
    end

    # Describes the current namespace.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that contains the QuickSight namespace that
    #   you want to describe.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want to describe.
    #
    # @return [Types::DescribeNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNamespaceResponse#namespace #namespace} => Types::NamespaceInfoV2
    #   * {Types::DescribeNamespaceResponse#request_id #request_id} => String
    #   * {Types::DescribeNamespaceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_namespace({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace.name #=> String
    #   resp.namespace.arn #=> String
    #   resp.namespace.capacity_region #=> String
    #   resp.namespace.creation_status #=> String, one of "CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"
    #   resp.namespace.identity_store #=> String, one of "QUICKSIGHT"
    #   resp.namespace.namespace_error.type #=> String, one of "PERMISSION_DENIED", "INTERNAL_SERVICE_ERROR"
    #   resp.namespace.namespace_error.message #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeNamespace AWS API Documentation
    #
    # @overload describe_namespace(params = {})
    # @param [Hash] params ({})
    def describe_namespace(params = {}, options = {})
      req = build_request(:describe_namespace, params)
      req.send_request(options)
    end

    # Describes a template's metadata.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the template that you're
    #   describing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [Integer] :version_number
    #   (Optional) The number for the version to describe. If a
    #   `VersionNumber` parameter value isn't provided, the latest version of
    #   the template is described.
    #
    # @option params [String] :alias_name
    #   The alias of the template that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to. You
    #   can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #
    # @return [Types::DescribeTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplateResponse#template #template} => Types::Template
    #   * {Types::DescribeTemplateResponse#status #status} => Integer
    #   * {Types::DescribeTemplateResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.template.arn #=> String
    #   resp.template.name #=> String
    #   resp.template.version.created_time #=> Time
    #   resp.template.version.errors #=> Array
    #   resp.template.version.errors[0].type #=> String, one of "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "ACCESS_DENIED"
    #   resp.template.version.errors[0].message #=> String
    #   resp.template.version.version_number #=> Integer
    #   resp.template.version.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.template.version.data_set_configurations #=> Array
    #   resp.template.version.data_set_configurations[0].placeholder #=> String
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list #=> Array
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].name #=> String
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].data_type #=> String
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].geographic_role #=> String
    #   resp.template.version.data_set_configurations[0].column_group_schema_list #=> Array
    #   resp.template.version.data_set_configurations[0].column_group_schema_list[0].name #=> String
    #   resp.template.version.data_set_configurations[0].column_group_schema_list[0].column_group_column_schema_list #=> Array
    #   resp.template.version.data_set_configurations[0].column_group_schema_list[0].column_group_column_schema_list[0].name #=> String
    #   resp.template.version.description #=> String
    #   resp.template.version.source_entity_arn #=> String
    #   resp.template.version.theme_arn #=> String
    #   resp.template.version.sheets #=> Array
    #   resp.template.version.sheets[0].sheet_id #=> String
    #   resp.template.version.sheets[0].name #=> String
    #   resp.template.template_id #=> String
    #   resp.template.last_updated_time #=> Time
    #   resp.template.created_time #=> Time
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplate AWS API Documentation
    #
    # @overload describe_template(params = {})
    # @param [Hash] params ({})
    def describe_template(params = {}, options = {})
      req = build_request(:describe_template, params)
      req.send_request(options)
    end

    # Describes the template alias for a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the template alias that
    #   you're describing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The name of the template alias that you want to describe. If you name
    #   a specific alias, you describe the version that the alias points to.
    #   You can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #
    # @return [Types::DescribeTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplateAliasResponse#template_alias #template_alias} => Types::TemplateAlias
    #   * {Types::DescribeTemplateAliasResponse#status #status} => Integer
    #   * {Types::DescribeTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias.alias_name #=> String
    #   resp.template_alias.arn #=> String
    #   resp.template_alias.template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateAlias AWS API Documentation
    #
    # @overload describe_template_alias(params = {})
    # @param [Hash] params ({})
    def describe_template_alias(params = {}, options = {})
      req = build_request(:describe_template_alias, params)
      req.send_request(options)
    end

    # Describes read and write permissions on a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the template that you're
    #   describing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @return [Types::DescribeTemplatePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplatePermissionsResponse#template_id #template_id} => String
    #   * {Types::DescribeTemplatePermissionsResponse#template_arn #template_arn} => String
    #   * {Types::DescribeTemplatePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeTemplatePermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeTemplatePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplatePermissions AWS API Documentation
    #
    # @overload describe_template_permissions(params = {})
    # @param [Hash] params ({})
    def describe_template_permissions(params = {}, options = {})
      req = build_request(:describe_template_permissions, params)
      req.send_request(options)
    end

    # Describes a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme that you're
    #   describing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [Integer] :version_number
    #   The version number for the version to describe. If a `VersionNumber`
    #   parameter value isn't provided, the latest version of the theme is
    #   described.
    #
    # @option params [String] :alias_name
    #   The alias of the theme that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to. You
    #   can specify the latest version of the theme by providing the keyword
    #   `$LATEST` in the `AliasName` parameter. The keyword `$PUBLISHED`
    #   doesn't apply to themes.
    #
    # @return [Types::DescribeThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThemeResponse#theme #theme} => Types::Theme
    #   * {Types::DescribeThemeResponse#status #status} => Integer
    #   * {Types::DescribeThemeResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_theme({
    #     aws_account_id: "AwsAndAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.theme.arn #=> String
    #   resp.theme.name #=> String
    #   resp.theme.theme_id #=> String
    #   resp.theme.version.version_number #=> Integer
    #   resp.theme.version.arn #=> String
    #   resp.theme.version.description #=> String
    #   resp.theme.version.base_theme_id #=> String
    #   resp.theme.version.created_time #=> Time
    #   resp.theme.version.configuration.data_color_palette.colors #=> Array
    #   resp.theme.version.configuration.data_color_palette.colors[0] #=> String
    #   resp.theme.version.configuration.data_color_palette.min_max_gradient #=> Array
    #   resp.theme.version.configuration.data_color_palette.min_max_gradient[0] #=> String
    #   resp.theme.version.configuration.data_color_palette.empty_fill_color #=> String
    #   resp.theme.version.configuration.ui_color_palette.primary_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.primary_background #=> String
    #   resp.theme.version.configuration.ui_color_palette.secondary_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.secondary_background #=> String
    #   resp.theme.version.configuration.ui_color_palette.accent #=> String
    #   resp.theme.version.configuration.ui_color_palette.accent_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.danger #=> String
    #   resp.theme.version.configuration.ui_color_palette.danger_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.warning #=> String
    #   resp.theme.version.configuration.ui_color_palette.warning_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.success #=> String
    #   resp.theme.version.configuration.ui_color_palette.success_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.dimension #=> String
    #   resp.theme.version.configuration.ui_color_palette.dimension_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.measure #=> String
    #   resp.theme.version.configuration.ui_color_palette.measure_foreground #=> String
    #   resp.theme.version.configuration.sheet.tile.border.show #=> Boolean
    #   resp.theme.version.configuration.sheet.tile_layout.gutter.show #=> Boolean
    #   resp.theme.version.configuration.sheet.tile_layout.margin.show #=> Boolean
    #   resp.theme.version.errors #=> Array
    #   resp.theme.version.errors[0].type #=> String, one of "INTERNAL_FAILURE"
    #   resp.theme.version.errors[0].message #=> String
    #   resp.theme.version.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.theme.created_time #=> Time
    #   resp.theme.last_updated_time #=> Time
    #   resp.theme.type #=> String, one of "QUICKSIGHT", "CUSTOM", "ALL"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTheme AWS API Documentation
    #
    # @overload describe_theme(params = {})
    # @param [Hash] params ({})
    def describe_theme(params = {}, options = {})
      req = build_request(:describe_theme, params)
      req.send_request(options)
    end

    # Describes the alias for a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme alias that you're
    #   describing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [required, String] :alias_name
    #   The name of the theme alias that you want to describe.
    #
    # @return [Types::DescribeThemeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThemeAliasResponse#theme_alias #theme_alias} => Types::ThemeAlias
    #   * {Types::DescribeThemeAliasResponse#status #status} => Integer
    #   * {Types::DescribeThemeAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_theme_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_alias.arn #=> String
    #   resp.theme_alias.alias_name #=> String
    #   resp.theme_alias.theme_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeAlias AWS API Documentation
    #
    # @overload describe_theme_alias(params = {})
    # @param [Hash] params ({})
    def describe_theme_alias(params = {}, options = {})
      req = build_request(:describe_theme_alias, params)
      req.send_request(options)
    end

    # Describes the read and write permissions for a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme that you're
    #   describing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme that you want to describe permissions for.
    #
    # @return [Types::DescribeThemePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThemePermissionsResponse#theme_id #theme_id} => String
    #   * {Types::DescribeThemePermissionsResponse#theme_arn #theme_arn} => String
    #   * {Types::DescribeThemePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeThemePermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeThemePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_theme_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_id #=> String
    #   resp.theme_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemePermissions AWS API Documentation
    #
    # @overload describe_theme_permissions(params = {})
    # @param [Hash] params ({})
    def describe_theme_permissions(params = {}, options = {})
      req = build_request(:describe_theme_permissions, params)
      req.send_request(options)
    end

    # Returns information about a user, given the user name.
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user #user} => Types::User
    #   * {Types::DescribeUserResponse#request_id #request_id} => String
    #   * {Types::DescribeUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.user.custom_permissions_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Generates a session URL and authorization code that you can use to
    # embed an Amazon QuickSight read-only dashboard in your web server
    # code. Before you use this command, make sure that you have configured
    # the dashboards and permissions.
    #
    # Currently, you can use `GetDashboardEmbedURL` only from the server,
    # not from the user's browser. The following rules apply to the
    # combination of URL and authorization code:
    #
    # * They must be used together.
    #
    # * They can be used one time only.
    #
    # * They are valid for 5 minutes after you run this command.
    #
    # * The resulting user session is valid for 10 hours.
    #
    # For more information, see [Embedding Amazon QuickSight][1] in the
    # *Amazon QuickSight User Guide* .
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedding-dashboards.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that contains the dashboard that you're
    #   embedding.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #
    # @option params [required, String] :identity_type
    #   The authentication method that the user uses to sign in.
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   15-600 minutes.
    #
    # @option params [Boolean] :undo_redo_disabled
    #   Remove the undo/redo button on the embedded dashboard. The default is
    #   FALSE, which enables the undo/redo button.
    #
    # @option params [Boolean] :reset_disabled
    #   Remove the reset button on the embedded dashboard. The default is
    #   FALSE, which enables the reset button.
    #
    # @option params [String] :user_arn
    #   The Amazon QuickSight user's Amazon Resource Name (ARN), for use with
    #   `QUICKSIGHT` identity type. You can use this for any Amazon QuickSight
    #   users in your account (readers, authors, or admins) authenticated as
    #   one of the following:
    #
    #   * Active Directory (AD) users or group members
    #
    #   * Invited nonfederated users
    #
    #   * IAM users and IAM role-based sessions authenticated through
    #     Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #     federation.
    #
    #   Omit this parameter for users in the third group – IAM users and IAM
    #   role-based sessions.
    #
    # @return [Types::GetDashboardEmbedUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDashboardEmbedUrlResponse#embed_url #embed_url} => String
    #   * {Types::GetDashboardEmbedUrlResponse#status #status} => Integer
    #   * {Types::GetDashboardEmbedUrlResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dashboard_embed_url({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #     session_lifetime_in_minutes: 1,
    #     undo_redo_disabled: false,
    #     reset_disabled: false,
    #     user_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrl AWS API Documentation
    #
    # @overload get_dashboard_embed_url(params = {})
    # @param [Hash] params ({})
    def get_dashboard_embed_url(params = {}, options = {})
      req = build_request(:get_dashboard_embed_url, params)
      req.send_request(options)
    end

    # Generates a session URL and authorization code that you can use to
    # embed the Amazon QuickSight console in your web server code. Use
    # `GetSessionEmbedUrl` where you want to provide an authoring portal
    # that allows users to create data sources, datasets, analyses, and
    # dashboards. The users who access an embedded QuickSight console need
    # belong to the author or admin security cohort. If you want to restrict
    # permissions to some of these features, add a custom permissions
    # profile to the user with the ` UpdateUser ` API operation. Use `
    # RegisterUser ` API operation to add a new user with a custom
    # permission profile attached. For more information, see the following
    # sections in the *Amazon QuickSight User Guide*\:
    #
    # * [Embedding the Amazon QuickSight Console][1]
    #
    # * [Customizing Access to the Amazon QuickSight Console][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedding-the-quicksight-console.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account associated with your QuickSight
    #   subscription.
    #
    # @option params [String] :entry_point
    #   The URL you use to access the embedded session. The entry point URL is
    #   constrained to the following paths:
    #
    #   * `/start`
    #
    #   * `/start/analyses`
    #
    #   * `/start/dashboards`
    #
    #   * `/start/favorites`
    #
    #   * `/dashboards/DashboardId ` - where `DashboardId` is the actual ID
    #     key from the QuickSight console URL of the dashboard
    #
    #   * `/analyses/AnalysisId ` - where `AnalysisId` is the actual ID key
    #     from the QuickSight console URL of the analysis
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   15-600 minutes.
    #
    # @option params [String] :user_arn
    #   The Amazon QuickSight user's Amazon Resource Name (ARN), for use with
    #   `QUICKSIGHT` identity type. You can use this for any type of Amazon
    #   QuickSight users in your account (readers, authors, or admins). They
    #   need to be authenticated as one of the following:
    #
    #   1.  Active Directory (AD) users or group members
    #
    #   2.  Invited nonfederated users
    #
    #   3.  IAM users and IAM role-based sessions authenticated through
    #       Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #       federation
    #
    #   Omit this parameter for users in the third group – IAM users and IAM
    #   role-based sessions.
    #
    # @return [Types::GetSessionEmbedUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionEmbedUrlResponse#embed_url #embed_url} => String
    #   * {Types::GetSessionEmbedUrlResponse#status #status} => Integer
    #   * {Types::GetSessionEmbedUrlResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session_embed_url({
    #     aws_account_id: "AwsAccountId", # required
    #     entry_point: "EntryPoint",
    #     session_lifetime_in_minutes: 1,
    #     user_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetSessionEmbedUrl AWS API Documentation
    #
    # @overload get_session_embed_url(params = {})
    # @param [Hash] params ({})
    def get_session_embed_url(params = {}, options = {})
      req = build_request(:get_session_embed_url, params)
      req.send_request(options)
    end

    # Lists Amazon QuickSight analyses that exist in the specified AWS
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the analyses.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListAnalysesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnalysesResponse#analysis_summary_list #analysis_summary_list} => Array&lt;Types::AnalysisSummary&gt;
    #   * {Types::ListAnalysesResponse#next_token #next_token} => String
    #   * {Types::ListAnalysesResponse#status #status} => Integer
    #   * {Types::ListAnalysesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analyses({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_summary_list #=> Array
    #   resp.analysis_summary_list[0].arn #=> String
    #   resp.analysis_summary_list[0].analysis_id #=> String
    #   resp.analysis_summary_list[0].name #=> String
    #   resp.analysis_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.analysis_summary_list[0].created_time #=> Time
    #   resp.analysis_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAnalyses AWS API Documentation
    #
    # @overload list_analyses(params = {})
    # @param [Hash] params ({})
    def list_analyses(params = {}, options = {})
      req = build_request(:list_analyses, params)
      req.send_request(options)
    end

    # Lists all the versions of the dashboards in the QuickSight
    # subscription.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   listing versions for.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDashboardVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardVersionsResponse#dashboard_version_summary_list #dashboard_version_summary_list} => Array&lt;Types::DashboardVersionSummary&gt;
    #   * {Types::ListDashboardVersionsResponse#next_token #next_token} => String
    #   * {Types::ListDashboardVersionsResponse#status #status} => Integer
    #   * {Types::ListDashboardVersionsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboard_versions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_version_summary_list #=> Array
    #   resp.dashboard_version_summary_list[0].arn #=> String
    #   resp.dashboard_version_summary_list[0].created_time #=> Time
    #   resp.dashboard_version_summary_list[0].version_number #=> Integer
    #   resp.dashboard_version_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.dashboard_version_summary_list[0].source_entity_arn #=> String
    #   resp.dashboard_version_summary_list[0].description #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardVersions AWS API Documentation
    #
    # @overload list_dashboard_versions(params = {})
    # @param [Hash] params ({})
    def list_dashboard_versions(params = {}, options = {})
      req = build_request(:list_dashboard_versions, params)
      req.send_request(options)
    end

    # Lists dashboards in an AWS account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the dashboards that you're
    #   listing.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDashboardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardsResponse#dashboard_summary_list #dashboard_summary_list} => Array&lt;Types::DashboardSummary&gt;
    #   * {Types::ListDashboardsResponse#next_token #next_token} => String
    #   * {Types::ListDashboardsResponse#status #status} => Integer
    #   * {Types::ListDashboardsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboards({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_summary_list #=> Array
    #   resp.dashboard_summary_list[0].arn #=> String
    #   resp.dashboard_summary_list[0].dashboard_id #=> String
    #   resp.dashboard_summary_list[0].name #=> String
    #   resp.dashboard_summary_list[0].created_time #=> Time
    #   resp.dashboard_summary_list[0].last_updated_time #=> Time
    #   resp.dashboard_summary_list[0].published_version_number #=> Integer
    #   resp.dashboard_summary_list[0].last_published_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboards AWS API Documentation
    #
    # @overload list_dashboards(params = {})
    # @param [Hash] params ({})
    def list_dashboards(params = {}, options = {})
      req = build_request(:list_dashboards, params)
      req.send_request(options)
    end

    # Lists all of the datasets belonging to the current AWS account in an
    # AWS Region.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/*`.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDataSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSetsResponse#data_set_summaries #data_set_summaries} => Array&lt;Types::DataSetSummary&gt;
    #   * {Types::ListDataSetsResponse#next_token #next_token} => String
    #   * {Types::ListDataSetsResponse#request_id #request_id} => String
    #   * {Types::ListDataSetsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sets({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_summaries #=> Array
    #   resp.data_set_summaries[0].arn #=> String
    #   resp.data_set_summaries[0].data_set_id #=> String
    #   resp.data_set_summaries[0].name #=> String
    #   resp.data_set_summaries[0].created_time #=> Time
    #   resp.data_set_summaries[0].last_updated_time #=> Time
    #   resp.data_set_summaries[0].import_mode #=> String, one of "SPICE", "DIRECT_QUERY"
    #   resp.data_set_summaries[0].row_level_permission_data_set.namespace #=> String
    #   resp.data_set_summaries[0].row_level_permission_data_set.arn #=> String
    #   resp.data_set_summaries[0].row_level_permission_data_set.permission_policy #=> String, one of "GRANT_ACCESS", "DENY_ACCESS"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSets AWS API Documentation
    #
    # @overload list_data_sets(params = {})
    # @param [Hash] params ({})
    def list_data_sets(params = {}, options = {})
      req = build_request(:list_data_sets, params)
      req.send_request(options)
    end

    # Lists data sources in current AWS Region that belong to this AWS
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::ListDataSourcesResponse#next_token #next_token} => String
    #   * {Types::ListDataSourcesResponse#request_id #request_id} => String
    #   * {Types::ListDataSourcesResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].arn #=> String
    #   resp.data_sources[0].data_source_id #=> String
    #   resp.data_sources[0].name #=> String
    #   resp.data_sources[0].type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM"
    #   resp.data_sources[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.data_sources[0].created_time #=> Time
    #   resp.data_sources[0].last_updated_time #=> Time
    #   resp.data_sources[0].data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_sources[0].data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.aurora_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_sources[0].data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.data_sources[0].data_source_parameters.maria_db_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.maria_db_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.my_sql_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.my_sql_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.presto_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.presto_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.presto_parameters.catalog #=> String
    #   resp.data_sources[0].data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.data_sources[0].data_source_parameters.rds_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.data_sources[0].data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.data_sources[0].data_source_parameters.spark_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.spark_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.sql_server_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.sql_server_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.teradata_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.teradata_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.twitter_parameters.query #=> String
    #   resp.data_sources[0].data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters #=> Array
    #   resp.data_sources[0].alternate_data_source_parameters[0].amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].athena_parameters.work_group #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].jira_parameters.site_base_url #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].maria_db_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].maria_db_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].maria_db_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].my_sql_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].my_sql_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].my_sql_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].presto_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].presto_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].presto_parameters.catalog #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].rds_parameters.instance_id #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].rds_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.cluster_id #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].s3_parameters.manifest_file_location.key #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].service_now_parameters.site_base_url #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.warehouse #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].spark_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].spark_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].sql_server_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].sql_server_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].sql_server_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].teradata_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].teradata_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].teradata_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].twitter_parameters.query #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].twitter_parameters.max_rows #=> Integer
    #   resp.data_sources[0].vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_sources[0].ssl_properties.disable_ssl #=> Boolean
    #   resp.data_sources[0].error_info.type #=> String, one of "ACCESS_DENIED", "COPY_SOURCE_NOT_FOUND", "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"
    #   resp.data_sources[0].error_info.message #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Lists member users in a group.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to see a membership list of.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListGroupMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupMembershipsResponse#group_member_list #group_member_list} => Array&lt;Types::GroupMember&gt;
    #   * {Types::ListGroupMembershipsResponse#next_token #next_token} => String
    #   * {Types::ListGroupMembershipsResponse#request_id #request_id} => String
    #   * {Types::ListGroupMembershipsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_memberships({
    #     group_name: "GroupName", # required
    #     next_token: "String",
    #     max_results: 1,
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_member_list #=> Array
    #   resp.group_member_list[0].arn #=> String
    #   resp.group_member_list[0].member_name #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMemberships AWS API Documentation
    #
    # @overload list_group_memberships(params = {})
    # @param [Hash] params ({})
    def list_group_memberships(params = {}, options = {})
      req = build_request(:list_group_memberships, params)
      req.send_request(options)
    end

    # Lists all user groups in Amazon QuickSight.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #   * {Types::ListGroupsResponse#request_id #request_id} => String
    #   * {Types::ListGroupsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_list #=> Array
    #   resp.group_list[0].arn #=> String
    #   resp.group_list[0].group_name #=> String
    #   resp.group_list[0].description #=> String
    #   resp.group_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists IAM policy assignments in the current Amazon QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains these IAM policy assignments.
    #
    # @option params [String] :assignment_status
    #   The status of the assignments.
    #
    # @option params [required, String] :namespace
    #   The namespace for the assignments.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListIAMPolicyAssignmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIAMPolicyAssignmentsResponse#iam_policy_assignments #iam_policy_assignments} => Array&lt;Types::IAMPolicyAssignmentSummary&gt;
    #   * {Types::ListIAMPolicyAssignmentsResponse#next_token #next_token} => String
    #   * {Types::ListIAMPolicyAssignmentsResponse#request_id #request_id} => String
    #   * {Types::ListIAMPolicyAssignmentsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_iam_policy_assignments({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_status: "ENABLED", # accepts ENABLED, DRAFT, DISABLED
    #     namespace: "Namespace", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_policy_assignments #=> Array
    #   resp.iam_policy_assignments[0].assignment_name #=> String
    #   resp.iam_policy_assignments[0].assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignments AWS API Documentation
    #
    # @overload list_iam_policy_assignments(params = {})
    # @param [Hash] params ({})
    def list_iam_policy_assignments(params = {}, options = {})
      req = build_request(:list_iam_policy_assignments, params)
      req.send_request(options)
    end

    # Lists all the IAM policy assignments, including the Amazon Resource
    # Names (ARNs) for the IAM policies assigned to the specified user and
    # group or groups that the user belongs to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the assignments.
    #
    # @option params [required, String] :user_name
    #   The name of the user.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [required, String] :namespace
    #   The namespace of the assignment.
    #
    # @return [Types::ListIAMPolicyAssignmentsForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#active_assignments #active_assignments} => Array&lt;Types::ActiveIAMPolicyAssignment&gt;
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#request_id #request_id} => String
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#next_token #next_token} => String
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_iam_policy_assignments_for_user({
    #     aws_account_id: "AwsAccountId", # required
    #     user_name: "UserName", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.active_assignments #=> Array
    #   resp.active_assignments[0].assignment_name #=> String
    #   resp.active_assignments[0].policy_arn #=> String
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsForUser AWS API Documentation
    #
    # @overload list_iam_policy_assignments_for_user(params = {})
    # @param [Hash] params ({})
    def list_iam_policy_assignments_for_user(params = {}, options = {})
      req = build_request(:list_iam_policy_assignments_for_user, params)
      req.send_request(options)
    end

    # Lists the history of SPICE ingestions for a dataset.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListIngestionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIngestionsResponse#ingestions #ingestions} => Array&lt;Types::Ingestion&gt;
    #   * {Types::ListIngestionsResponse#next_token #next_token} => String
    #   * {Types::ListIngestionsResponse#request_id #request_id} => String
    #   * {Types::ListIngestionsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingestions({
    #     data_set_id: "string", # required
    #     next_token: "string",
    #     aws_account_id: "AwsAccountId", # required
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestions #=> Array
    #   resp.ingestions[0].arn #=> String
    #   resp.ingestions[0].ingestion_id #=> String
    #   resp.ingestions[0].ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.ingestions[0].error_info.type #=> String, one of "FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR"
    #   resp.ingestions[0].error_info.message #=> String
    #   resp.ingestions[0].row_info.rows_ingested #=> Integer
    #   resp.ingestions[0].row_info.rows_dropped #=> Integer
    #   resp.ingestions[0].queue_info.waiting_on_ingestion #=> String
    #   resp.ingestions[0].queue_info.queued_ingestion #=> String
    #   resp.ingestions[0].created_time #=> Time
    #   resp.ingestions[0].ingestion_time_in_seconds #=> Integer
    #   resp.ingestions[0].ingestion_size_in_bytes #=> Integer
    #   resp.ingestions[0].request_source #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.ingestions[0].request_type #=> String, one of "INITIAL_INGESTION", "EDIT", "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIngestions AWS API Documentation
    #
    # @overload list_ingestions(params = {})
    # @param [Hash] params ({})
    def list_ingestions(params = {}, options = {})
      req = build_request(:list_ingestions, params)
      req.send_request(options)
    end

    # Lists the namespaces for the specified AWS account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that contains the QuickSight namespaces
    #   that you want to list.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListNamespacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNamespacesResponse#namespaces #namespaces} => Array&lt;Types::NamespaceInfoV2&gt;
    #   * {Types::ListNamespacesResponse#next_token #next_token} => String
    #   * {Types::ListNamespacesResponse#request_id #request_id} => String
    #   * {Types::ListNamespacesResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_namespaces({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.namespaces #=> Array
    #   resp.namespaces[0].name #=> String
    #   resp.namespaces[0].arn #=> String
    #   resp.namespaces[0].capacity_region #=> String
    #   resp.namespaces[0].creation_status #=> String, one of "CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"
    #   resp.namespaces[0].identity_store #=> String, one of "QUICKSIGHT"
    #   resp.namespaces[0].namespace_error.type #=> String, one of "PERMISSION_DENIED", "INTERNAL_SERVICE_ERROR"
    #   resp.namespaces[0].namespace_error.message #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListNamespaces AWS API Documentation
    #
    # @overload list_namespaces(params = {})
    # @param [Hash] params ({})
    def list_namespaces(params = {}, options = {})
      req = build_request(:list_namespaces, params)
      req.send_request(options)
    end

    # Lists the tags assigned to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want a list of
    #   tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#request_id #request_id} => String
    #   * {Types::ListTagsForResourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all the aliases of a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the template aliases that
    #   you're listing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTemplateAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateAliasesResponse#template_alias_list #template_alias_list} => Array&lt;Types::TemplateAlias&gt;
    #   * {Types::ListTemplateAliasesResponse#status #status} => Integer
    #   * {Types::ListTemplateAliasesResponse#request_id #request_id} => String
    #   * {Types::ListTemplateAliasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_aliases({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias_list #=> Array
    #   resp.template_alias_list[0].alias_name #=> String
    #   resp.template_alias_list[0].arn #=> String
    #   resp.template_alias_list[0].template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateAliases AWS API Documentation
    #
    # @overload list_template_aliases(params = {})
    # @param [Hash] params ({})
    def list_template_aliases(params = {}, options = {})
      req = build_request(:list_template_aliases, params)
      req.send_request(options)
    end

    # Lists all the versions of the templates in the current Amazon
    # QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the templates that you're
    #   listing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTemplateVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateVersionsResponse#template_version_summary_list #template_version_summary_list} => Array&lt;Types::TemplateVersionSummary&gt;
    #   * {Types::ListTemplateVersionsResponse#next_token #next_token} => String
    #   * {Types::ListTemplateVersionsResponse#status #status} => Integer
    #   * {Types::ListTemplateVersionsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_versions({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_version_summary_list #=> Array
    #   resp.template_version_summary_list[0].arn #=> String
    #   resp.template_version_summary_list[0].version_number #=> Integer
    #   resp.template_version_summary_list[0].created_time #=> Time
    #   resp.template_version_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.template_version_summary_list[0].description #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateVersions AWS API Documentation
    #
    # @overload list_template_versions(params = {})
    # @param [Hash] params ({})
    def list_template_versions(params = {}, options = {})
      req = build_request(:list_template_versions, params)
      req.send_request(options)
    end

    # Lists all the templates in the current Amazon QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the templates that you're
    #   listing.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplatesResponse#template_summary_list #template_summary_list} => Array&lt;Types::TemplateSummary&gt;
    #   * {Types::ListTemplatesResponse#next_token #next_token} => String
    #   * {Types::ListTemplatesResponse#status #status} => Integer
    #   * {Types::ListTemplatesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_summary_list #=> Array
    #   resp.template_summary_list[0].arn #=> String
    #   resp.template_summary_list[0].template_id #=> String
    #   resp.template_summary_list[0].name #=> String
    #   resp.template_summary_list[0].latest_version_number #=> Integer
    #   resp.template_summary_list[0].created_time #=> Time
    #   resp.template_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # Lists all the aliases of a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme aliases that you're
    #   listing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListThemeAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThemeAliasesResponse#theme_alias_list #theme_alias_list} => Array&lt;Types::ThemeAlias&gt;
    #   * {Types::ListThemeAliasesResponse#status #status} => Integer
    #   * {Types::ListThemeAliasesResponse#request_id #request_id} => String
    #   * {Types::ListThemeAliasesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_theme_aliases({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_alias_list #=> Array
    #   resp.theme_alias_list[0].arn #=> String
    #   resp.theme_alias_list[0].alias_name #=> String
    #   resp.theme_alias_list[0].theme_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeAliases AWS API Documentation
    #
    # @overload list_theme_aliases(params = {})
    # @param [Hash] params ({})
    def list_theme_aliases(params = {}, options = {})
      req = build_request(:list_theme_aliases, params)
      req.send_request(options)
    end

    # Lists all the versions of the themes in the current AWS account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the themes that you're
    #   listing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListThemeVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThemeVersionsResponse#theme_version_summary_list #theme_version_summary_list} => Array&lt;Types::ThemeVersionSummary&gt;
    #   * {Types::ListThemeVersionsResponse#next_token #next_token} => String
    #   * {Types::ListThemeVersionsResponse#status #status} => Integer
    #   * {Types::ListThemeVersionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_theme_versions({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_version_summary_list #=> Array
    #   resp.theme_version_summary_list[0].version_number #=> Integer
    #   resp.theme_version_summary_list[0].arn #=> String
    #   resp.theme_version_summary_list[0].description #=> String
    #   resp.theme_version_summary_list[0].created_time #=> Time
    #   resp.theme_version_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeVersions AWS API Documentation
    #
    # @overload list_theme_versions(params = {})
    # @param [Hash] params ({})
    def list_theme_versions(params = {}, options = {})
      req = build_request(:list_theme_versions, params)
      req.send_request(options)
    end

    # Lists all the themes in the current AWS account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the themes that you're
    #   listing.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :type
    #   The type of themes that you want to list. Valid options include the
    #   following:
    #
    #   * `ALL (default)`- Display all existing themes.
    #
    #   * `CUSTOM` - Display only the themes created by people using Amazon
    #     QuickSight.
    #
    #   * `QUICKSIGHT` - Display only the starting themes defined by
    #     QuickSight.
    #
    # @return [Types::ListThemesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThemesResponse#theme_summary_list #theme_summary_list} => Array&lt;Types::ThemeSummary&gt;
    #   * {Types::ListThemesResponse#next_token #next_token} => String
    #   * {Types::ListThemesResponse#status #status} => Integer
    #   * {Types::ListThemesResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_themes({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     type: "QUICKSIGHT", # accepts QUICKSIGHT, CUSTOM, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_summary_list #=> Array
    #   resp.theme_summary_list[0].arn #=> String
    #   resp.theme_summary_list[0].name #=> String
    #   resp.theme_summary_list[0].theme_id #=> String
    #   resp.theme_summary_list[0].latest_version_number #=> Integer
    #   resp.theme_summary_list[0].created_time #=> Time
    #   resp.theme_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemes AWS API Documentation
    #
    # @overload list_themes(params = {})
    # @param [Hash] params ({})
    def list_themes(params = {}, options = {})
      req = build_request(:list_themes, params)
      req.send_request(options)
    end

    # Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
    # member of.
    #
    # @option params [required, String] :user_name
    #   The Amazon QuickSight user name that you want to list group
    #   memberships for.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID that the user is in. Currently, you use the ID for
    #   the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @return [Types::ListUserGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::ListUserGroupsResponse#next_token #next_token} => String
    #   * {Types::ListUserGroupsResponse#request_id #request_id} => String
    #   * {Types::ListUserGroupsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_groups({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group_list #=> Array
    #   resp.group_list[0].arn #=> String
    #   resp.group_list[0].group_name #=> String
    #   resp.group_list[0].description #=> String
    #   resp.group_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroups AWS API Documentation
    #
    # @overload list_user_groups(params = {})
    # @param [Hash] params ({})
    def list_user_groups(params = {}, options = {})
      req = build_request(:list_user_groups, params)
      req.send_request(options)
    end

    # Returns a list of all of the Amazon QuickSight users belonging to this
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#user_list #user_list} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#request_id #request_id} => String
    #   * {Types::ListUsersResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_list #=> Array
    #   resp.user_list[0].arn #=> String
    #   resp.user_list[0].user_name #=> String
    #   resp.user_list[0].email #=> String
    #   resp.user_list[0].role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user_list[0].identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user_list[0].active #=> Boolean
    #   resp.user_list[0].principal_id #=> String
    #   resp.user_list[0].custom_permissions_name #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Creates an Amazon QuickSight user, whose identity is associated with
    # the AWS Identity and Access Management (IAM) identity or role
    # specified in the request.
    #
    # @option params [required, String] :identity_type
    #   Amazon QuickSight supports several ways of managing the identity of
    #   users. This parameter accepts two values:
    #
    #   * `IAM`\: A user whose identity maps to an existing IAM user or role.
    #
    #   * `QUICKSIGHT`\: A user whose identity is owned and managed internally
    #     by Amazon QuickSight.
    #
    # @option params [required, String] :email
    #   The email address of the user that you want to register.
    #
    # @option params [required, String] :user_role
    #   The Amazon QuickSight role for the user. The user role can be one of
    #   the following:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   * `RESTRICTED_READER`\: This role isn't currently available for use.
    #
    #   * `RESTRICTED_AUTHOR`\: This role isn't currently available for use.
    #
    # @option params [String] :iam_arn
    #   The ARN of the IAM user or role that you are registering with Amazon
    #   QuickSight.
    #
    # @option params [String] :session_name
    #   You need to use this parameter only when you register one or more
    #   users using an assumed IAM role. You don't need to provide the
    #   session name for other scenarios, for example when you are registering
    #   an IAM user or an Amazon QuickSight user. You can register multiple
    #   users using the same IAM role if each user has a different session
    #   name. For more information on assuming IAM roles, see [ `assume-role`
    #   ][1] in the *AWS CLI Reference.*
    #
    #
    #
    #   [1]: https://awscli.amazonaws.com/v2/documentation/api/latest/reference/sts/assume-role.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [String] :user_name
    #   The Amazon QuickSight user name that you want to create for the user
    #   you are registering.
    #
    # @option params [String] :custom_permissions_name
    #   (Enterprise edition only) The name of the custom permissions profile
    #   that you want to assign to this user. Customized permissions allows
    #   you to control a user's access by restricting access the following
    #   operations:
    #
    #   * Create and update data sources
    #
    #   * Create and update datasets
    #
    #   * Create and update email reports
    #
    #   * Subscribe to email reports
    #
    #   To add custom permissions to an existing user, use ` UpdateUser `
    #   instead.
    #
    #   A set of custom permissions includes any combination of these
    #   restrictions. Currently, you need to create the profile names for
    #   custom permission sets by using the QuickSight console. Then, you use
    #   the `RegisterUser` API operation to assign the named set of
    #   permissions to a QuickSight user.
    #
    #   QuickSight custom permissions are applied through IAM policies.
    #   Therefore, they override the permissions typically granted by
    #   assigning QuickSight users to one of the default security cohorts in
    #   QuickSight (admin, author, reader).
    #
    #   This feature is available only to QuickSight Enterprise edition
    #   subscriptions that use SAML 2.0-Based Federation for Single Sign-On
    #   (SSO).
    #
    # @return [Types::RegisterUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterUserResponse#user #user} => Types::User
    #   * {Types::RegisterUserResponse#user_invitation_url #user_invitation_url} => String
    #   * {Types::RegisterUserResponse#request_id #request_id} => String
    #   * {Types::RegisterUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_user({
    #     identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #     email: "String", # required
    #     user_role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #     iam_arn: "String",
    #     session_name: "RoleSessionName",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     user_name: "UserName",
    #     custom_permissions_name: "RoleName",
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.user.custom_permissions_name #=> String
    #   resp.user_invitation_url #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUser AWS API Documentation
    #
    # @overload register_user(params = {})
    # @param [Hash] params ({})
    def register_user(params = {}, options = {})
      req = build_request(:register_user, params)
      req.send_request(options)
    end

    # Restores an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the analysis.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis that you're restoring.
    #
    # @return [Types::RestoreAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreAnalysisResponse#status #status} => Integer
    #   * {Types::RestoreAnalysisResponse#arn #arn} => String
    #   * {Types::RestoreAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::RestoreAnalysisResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_analysis({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.analysis_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RestoreAnalysis AWS API Documentation
    #
    # @overload restore_analysis(params = {})
    # @param [Hash] params ({})
    def restore_analysis(params = {}, options = {})
      req = build_request(:restore_analysis, params)
      req.send_request(options)
    end

    # Searches for analyses that belong to the user specified in the filter.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the analyses that you're
    #   searching for.
    #
    # @option params [required, Array<Types::AnalysisSearchFilter>] :filters
    #   The structure for the search filters that you want to apply to your
    #   search.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::SearchAnalysesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAnalysesResponse#analysis_summary_list #analysis_summary_list} => Array&lt;Types::AnalysisSummary&gt;
    #   * {Types::SearchAnalysesResponse#next_token #next_token} => String
    #   * {Types::SearchAnalysesResponse#status #status} => Integer
    #   * {Types::SearchAnalysesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_analyses({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # accepts StringEquals
    #         name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER
    #         value: "String",
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_summary_list #=> Array
    #   resp.analysis_summary_list[0].arn #=> String
    #   resp.analysis_summary_list[0].analysis_id #=> String
    #   resp.analysis_summary_list[0].name #=> String
    #   resp.analysis_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.analysis_summary_list[0].created_time #=> Time
    #   resp.analysis_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchAnalyses AWS API Documentation
    #
    # @overload search_analyses(params = {})
    # @param [Hash] params ({})
    def search_analyses(params = {}, options = {})
      req = build_request(:search_analyses, params)
      req.send_request(options)
    end

    # Searches for dashboards that belong to a user.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the user whose dashboards
    #   you're searching for.
    #
    # @option params [required, Array<Types::DashboardSearchFilter>] :filters
    #   The filters to apply to the search. Currently, you can search only by
    #   user name, for example, `"Filters": [ \{ "Name": "QUICKSIGHT_USER",
    #   "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1" \} ]`
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::SearchDashboardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDashboardsResponse#dashboard_summary_list #dashboard_summary_list} => Array&lt;Types::DashboardSummary&gt;
    #   * {Types::SearchDashboardsResponse#next_token #next_token} => String
    #   * {Types::SearchDashboardsResponse#status #status} => Integer
    #   * {Types::SearchDashboardsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_dashboards({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # required, accepts StringEquals
    #         name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER
    #         value: "String",
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_summary_list #=> Array
    #   resp.dashboard_summary_list[0].arn #=> String
    #   resp.dashboard_summary_list[0].dashboard_id #=> String
    #   resp.dashboard_summary_list[0].name #=> String
    #   resp.dashboard_summary_list[0].created_time #=> Time
    #   resp.dashboard_summary_list[0].last_updated_time #=> Time
    #   resp.dashboard_summary_list[0].published_version_number #=> Integer
    #   resp.dashboard_summary_list[0].last_published_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDashboards AWS API Documentation
    #
    # @overload search_dashboards(params = {})
    # @param [Hash] params ({})
    def search_dashboards(params = {}, options = {})
      req = build_request(:search_dashboards, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified QuickSight
    # resource.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions, by granting a user permission to
    # access or change only resources with certain tag values. You can use
    # the `TagResource` operation with a resource that already has tags. If
    # you specify a new tag key for the resource, this tag is appended to
    # the list of tags associated with the resource. If you specify a tag
    # key that is already associated with the resource, the new tag value
    # that you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource. QuickSight
    # supports tagging on data set, data source, dashboard, and template.
    #
    # Tagging for QuickSight works in a similar way to tagging for other AWS
    # services, except for the following:
    #
    # * You can't use tags to track AWS costs for QuickSight. This
    #   restriction is because QuickSight costs are based on users and SPICE
    #   capacity, which aren't taggable resources.
    #
    # * QuickSight doesn't currently support the Tag Editor for AWS
    #   Resource Groups.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #
    # @return [Types::TagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourceResponse#request_id #request_id} => String
    #   * {Types::TagResourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the key-value pairs for the resource tag or tags assigned
    #   to the resource.
    #
    # @return [Types::UntagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagResourceResponse#request_id #request_id} => String
    #   * {Types::UntagResourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates Amazon QuickSight customizations the current AWS Region.
    # Currently, the only customization you can use is a theme.
    #
    # You can use customizations for your AWS account or, if you specify a
    # namespace, for a QuickSight namespace instead. Customizations that
    # apply to a namespace override customizations that apply to an AWS
    # account. To find out which customizations apply, use the
    # `DescribeAccountCustomization` API operation.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that you want to update QuickSight
    #   customizations for.
    #
    # @option params [String] :namespace
    #   The namespace that you want to update QuickSight customizations for.
    #
    # @option params [required, Types::AccountCustomization] :account_customization
    #   The QuickSight customizations you're updating in the current AWS
    #   Region.
    #
    # @return [Types::UpdateAccountCustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountCustomizationResponse#arn #arn} => String
    #   * {Types::UpdateAccountCustomizationResponse#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateAccountCustomizationResponse#namespace #namespace} => String
    #   * {Types::UpdateAccountCustomizationResponse#account_customization #account_customization} => Types::AccountCustomization
    #   * {Types::UpdateAccountCustomizationResponse#request_id #request_id} => String
    #   * {Types::UpdateAccountCustomizationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_customization({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #     account_customization: { # required
    #       default_theme: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.aws_account_id #=> String
    #   resp.namespace #=> String
    #   resp.account_customization.default_theme #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountCustomization AWS API Documentation
    #
    # @overload update_account_customization(params = {})
    # @param [Hash] params ({})
    def update_account_customization(params = {}, options = {})
      req = build_request(:update_account_customization, params)
      req.send_request(options)
    end

    # Updates the Amazon QuickSight settings in your AWS account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that contains the QuickSight settings that
    #   you want to list.
    #
    # @option params [required, String] :default_namespace
    #   The default namespace for this AWS account. Currently, the default is
    #   `default`. AWS Identity and Access Management (IAM) users that
    #   register for the first time with QuickSight provide an email that
    #   becomes associated with the default namespace.
    #
    # @option params [String] :notification_email
    #   The email address that you want QuickSight to send notifications to
    #   regarding your AWS account or QuickSight subscription.
    #
    # @return [Types::UpdateAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountSettingsResponse#request_id #request_id} => String
    #   * {Types::UpdateAccountSettingsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     aws_account_id: "AwsAccountId", # required
    #     default_namespace: "Namespace", # required
    #     notification_email: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountSettings AWS API Documentation
    #
    # @overload update_account_settings(params = {})
    # @param [Hash] params ({})
    def update_account_settings(params = {}, options = {})
      req = build_request(:update_account_settings, params)
      req.send_request(options)
    end

    # Updates an analysis in Amazon QuickSight
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the analysis that you're
    #   updating.
    #
    # @option params [required, String] :analysis_id
    #   The ID for the analysis that you're updating. This ID displays in the
    #   URL of the analysis.
    #
    # @option params [required, String] :name
    #   A descriptive name for the analysis that you're updating. This name
    #   displays for the analysis in the QuickSight console.
    #
    # @option params [Types::Parameters] :parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might accept
    #   multiple values.
    #
    # @option params [required, Types::AnalysisSourceEntity] :source_entity
    #   A source entity to use for the analysis that you're updating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #
    # @option params [String] :theme_arn
    #   The Amazon Resource Name (ARN) for the theme to apply to the analysis
    #   that you're creating. To see the theme in the QuickSight console,
    #   make sure that you have access to it.
    #
    # @return [Types::UpdateAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnalysisResponse#arn #arn} => String
    #   * {Types::UpdateAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::UpdateAnalysisResponse#update_status #update_status} => String
    #   * {Types::UpdateAnalysisResponse#status #status} => Integer
    #   * {Types::UpdateAnalysisResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_analysis({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "RestrictiveResourceId", # required
    #     name: "AnalysisName", # required
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["String"], # required
    #         },
    #       ],
    #       integer_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1], # required
    #         },
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1.0], # required
    #         },
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [Time.now], # required
    #         },
    #       ],
    #     },
    #     source_entity: { # required
    #       source_template: {
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #         arn: "Arn", # required
    #       },
    #     },
    #     theme_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.analysis_id #=> String
    #   resp.update_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysis AWS API Documentation
    #
    # @overload update_analysis(params = {})
    # @param [Hash] params ({})
    def update_analysis(params = {}, options = {})
      req = build_request(:update_analysis, params)
      req.send_request(options)
    end

    # Updates the read and write permissions for an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the analysis whose permissions
    #   you're updating. You must be using the AWS account that the analysis
    #   is in.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis whose permissions you're updating. The ID is
    #   part of the analysis URL.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A structure that describes the permissions to add and the principal to
    #   add them to.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A structure that describes the permissions to remove and the principal
    #   to remove them from.
    #
    # @return [Types::UpdateAnalysisPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnalysisPermissionsResponse#analysis_arn #analysis_arn} => String
    #   * {Types::UpdateAnalysisPermissionsResponse#analysis_id #analysis_id} => String
    #   * {Types::UpdateAnalysisPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateAnalysisPermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateAnalysisPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_analysis_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "RestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_arn #=> String
    #   resp.analysis_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisPermissions AWS API Documentation
    #
    # @overload update_analysis_permissions(params = {})
    # @param [Hash] params ({})
    def update_analysis_permissions(params = {}, options = {})
      req = build_request(:update_analysis_permissions, params)
      req.send_request(options)
    end

    # Updates a dashboard in an AWS account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [required, String] :name
    #   The display name of the dashboard.
    #
    # @option params [required, Types::DashboardSourceEntity] :source_entity
    #   The entity that you are using as a source when you update the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only update a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to update a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the CreateTemplate API operation. For `SourceTemplate`, specify the
    #   Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate` ARN can contain any AWS Account and any
    #   QuickSight-supported AWS Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` to list the
    #   replacement datasets for the placeholders listed in the original. The
    #   schema in each dataset must match its placeholder.
    #
    # @option params [Types::Parameters] :parameters
    #   A structure that contains the parameters of the dashboard. These are
    #   parameter overrides for a dashboard. A dashboard can have any type of
    #   parameters, and some parameters might accept multiple values.
    #
    # @option params [String] :version_description
    #   A description for the first version of the dashboard being created.
    #
    # @option params [Types::DashboardPublishOptions] :dashboard_publish_options
    #   Options for publishing the dashboard when you create it:
    #
    #   * `AvailabilityStatus` for `AdHocFilteringOption` - This status can be
    #     either `ENABLED` or `DISABLED`. When this is set to `DISABLED`,
    #     QuickSight disables the left filter pane on the published dashboard,
    #     which can be used for ad hoc (one-time) filtering. This option is
    #     `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `ExportToCSVOption` - This status can be
    #     either `ENABLED` or `DISABLED`. The visual option to export data to
    #     .CSV format isn't enabled when this is set to `DISABLED`. This
    #     option is `ENABLED` by default.
    #
    #   * `VisibilityState` for `SheetControlsOption` - This visibility state
    #     can be either `COLLAPSED` or `EXPANDED`. This option is `COLLAPSED`
    #     by default.
    #
    # @option params [String] :theme_arn
    #   The Amazon Resource Name (ARN) of the theme that is being used for
    #   this dashboard. If you add a value for this field, it overrides the
    #   value that was originally associated with the entity. The theme ARN
    #   must exist in the same AWS account where you create the dashboard.
    #
    # @return [Types::UpdateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardResponse#arn #arn} => String
    #   * {Types::UpdateDashboardResponse#version_arn #version_arn} => String
    #   * {Types::UpdateDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardResponse#creation_status #creation_status} => String
    #   * {Types::UpdateDashboardResponse#status #status} => Integer
    #   * {Types::UpdateDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     name: "DashboardName", # required
    #     source_entity: { # required
    #       source_template: {
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #         arn: "Arn", # required
    #       },
    #     },
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["String"], # required
    #         },
    #       ],
    #       integer_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1], # required
    #         },
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1.0], # required
    #         },
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [Time.now], # required
    #         },
    #       ],
    #     },
    #     version_description: "VersionDescription",
    #     dashboard_publish_options: {
    #       ad_hoc_filtering_option: {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       export_to_csv_option: {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       sheet_controls_option: {
    #         visibility_state: "EXPANDED", # accepts EXPANDED, COLLAPSED
    #       },
    #     },
    #     theme_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboard AWS API Documentation
    #
    # @overload update_dashboard(params = {})
    # @param [Hash] params ({})
    def update_dashboard(params = {}, options = {})
      req = build_request(:update_dashboard, params)
      req.send_request(options)
    end

    # Updates read and write permissions on a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the dashboard whose
    #   permissions you're updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The permissions that you want to grant on this resource.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The permissions that you want to revoke from this resource.
    #
    # @return [Types::UpdateDashboardPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardPermissionsResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::UpdateDashboardPermissionsResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateDashboardPermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDashboardPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPermissions AWS API Documentation
    #
    # @overload update_dashboard_permissions(params = {})
    # @param [Hash] params ({})
    def update_dashboard_permissions(params = {}, options = {})
      req = build_request(:update_dashboard_permissions, params)
      req.send_request(options)
    end

    # Updates the published version of a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [required, Integer] :version_number
    #   The version number of the dashboard.
    #
    # @return [Types::UpdateDashboardPublishedVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardPublishedVersionResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardPublishedVersionResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::UpdateDashboardPublishedVersionResponse#status #status} => Integer
    #   * {Types::UpdateDashboardPublishedVersionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_published_version({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPublishedVersion AWS API Documentation
    #
    # @overload update_dashboard_published_version(params = {})
    # @param [Hash] params ({})
    def update_dashboard_published_version(params = {}, options = {})
      req = build_request(:update_dashboard_published_version, params)
      req.send_request(options)
    end

    # Updates a dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to update. This ID is unique per
    #   AWS Region for each AWS account.
    #
    # @option params [required, String] :name
    #   The display name for the dataset.
    #
    # @option params [required, Hash<String,Types::PhysicalTable>] :physical_table_map
    #   Declares the physical tables that are available in the underlying data
    #   sources.
    #
    # @option params [Hash<String,Types::LogicalTable>] :logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #
    # @option params [required, String] :import_mode
    #   Indicates whether you want to import the data into SPICE.
    #
    # @option params [Array<Types::ColumnGroup>] :column_groups
    #   Groupings of columns that work together in certain QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #
    # @option params [Types::RowLevelPermissionDataSet] :row_level_permission_data_set
    #   The row-level security configuration for the data you want to create.
    #
    # @return [Types::UpdateDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSetResponse#arn #arn} => String
    #   * {Types::UpdateDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::UpdateDataSetResponse#ingestion_arn #ingestion_arn} => String
    #   * {Types::UpdateDataSetResponse#ingestion_id #ingestion_id} => String
    #   * {Types::UpdateDataSetResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     physical_table_map: { # required
    #       "PhysicalTableId" => {
    #         relational_table: {
    #           data_source_arn: "Arn", # required
    #           schema: "RelationalTableSchema",
    #           name: "RelationalTableName", # required
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         custom_sql: {
    #           data_source_arn: "Arn", # required
    #           name: "CustomSqlName", # required
    #           sql_query: "SqlQuery", # required
    #           columns: [
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         s3_source: {
    #           data_source_arn: "Arn", # required
    #           upload_settings: {
    #             format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #             start_from_row: 1,
    #             contains_header: false,
    #             text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #             delimiter: "Delimiter",
    #           },
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     logical_table_map: {
    #       "LogicalTableId" => {
    #         alias: "LogicalTableAlias", # required
    #         data_transforms: [
    #           {
    #             project_operation: {
    #               projected_columns: ["String"], # required
    #             },
    #             filter_operation: {
    #               condition_expression: "Expression", # required
    #             },
    #             create_columns_operation: {
    #               columns: [ # required
    #                 {
    #                   column_name: "ColumnName", # required
    #                   column_id: "ColumnId", # required
    #                   expression: "Expression", # required
    #                 },
    #               ],
    #             },
    #             rename_column_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_name: "ColumnName", # required
    #             },
    #             cast_column_type_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #               format: "TypeCastFormat",
    #             },
    #             tag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tags: [ # required
    #                 {
    #                   column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         source: { # required
    #           join_instruction: {
    #             left_operand: "LogicalTableId", # required
    #             right_operand: "LogicalTableId", # required
    #             type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #             on_clause: "OnClause", # required
    #           },
    #           physical_table_id: "PhysicalTableId",
    #         },
    #       },
    #     },
    #     import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: "ColumnGroupName", # required
    #           country_code: "US", # required, accepts US
    #           columns: ["ColumnName"], # required
    #         },
    #       },
    #     ],
    #     row_level_permission_data_set: {
    #       namespace: "Namespace",
    #       arn: "Arn", # required
    #       permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_set_id #=> String
    #   resp.ingestion_arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSet AWS API Documentation
    #
    # @overload update_data_set(params = {})
    # @param [Hash] params ({})
    def update_data_set(params = {}, options = {})
      req = build_request(:update_data_set, params)
      req.send_request(options)
    end

    # Updates the permissions on a dataset.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset whose permissions you want to update. This ID
    #   is unique per AWS Region for each AWS account.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The resource permissions that you want to grant to the dataset.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The resource permissions that you want to revoke from the dataset.
    #
    # @return [Types::UpdateDataSetPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSetPermissionsResponse#data_set_arn #data_set_arn} => String
    #   * {Types::UpdateDataSetPermissionsResponse#data_set_id #data_set_id} => String
    #   * {Types::UpdateDataSetPermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSetPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_arn #=> String
    #   resp.data_set_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetPermissions AWS API Documentation
    #
    # @overload update_data_set_permissions(params = {})
    # @param [Hash] params ({})
    def update_data_set_permissions(params = {}, options = {})
      req = build_request(:update_data_set_permissions, params)
      req.send_request(options)
    end

    # Updates a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #
    # @option params [required, String] :name
    #   A display name for the data source.
    #
    # @option params [Types::DataSourceParameters] :data_source_parameters
    #   The parameters that QuickSight uses to connect to your underlying
    #   source.
    #
    # @option params [Types::DataSourceCredentials] :credentials
    #   The credentials that QuickSight that uses to connect to your
    #   underlying source. Currently, only credentials based on user name and
    #   password are supported.
    #
    # @option params [Types::VpcConnectionProperties] :vpc_connection_properties
    #   Use this parameter only when you want QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #
    # @option params [Types::SslProperties] :ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when QuickSight
    #   connects to your underlying source.
    #
    # @return [Types::UpdateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceResponse#arn #arn} => String
    #   * {Types::UpdateDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::UpdateDataSourceResponse#update_status #update_status} => String
    #   * {Types::UpdateDataSourceResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     data_source_parameters: {
    #       amazon_elasticsearch_parameters: {
    #         domain: "Domain", # required
    #       },
    #       athena_parameters: {
    #         work_group: "WorkGroup",
    #       },
    #       aurora_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aurora_postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aws_iot_analytics_parameters: {
    #         data_set_name: "DataSetName", # required
    #       },
    #       jira_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       maria_db_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       my_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       presto_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #       },
    #       rds_parameters: {
    #         instance_id: "InstanceId", # required
    #         database: "Database", # required
    #       },
    #       redshift_parameters: {
    #         host: "Host",
    #         port: 1,
    #         database: "Database", # required
    #         cluster_id: "ClusterId",
    #       },
    #       s3_parameters: {
    #         manifest_file_location: { # required
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         },
    #       },
    #       service_now_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       snowflake_parameters: {
    #         host: "Host", # required
    #         database: "Database", # required
    #         warehouse: "Warehouse", # required
    #       },
    #       spark_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       sql_server_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       teradata_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       twitter_parameters: {
    #         query: "Query", # required
    #         max_rows: 1, # required
    #       },
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: "Username", # required
    #         password: "Password", # required
    #         alternate_data_source_parameters: [
    #           {
    #             amazon_elasticsearch_parameters: {
    #               domain: "Domain", # required
    #             },
    #             athena_parameters: {
    #               work_group: "WorkGroup",
    #             },
    #             aurora_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aurora_postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aws_iot_analytics_parameters: {
    #               data_set_name: "DataSetName", # required
    #             },
    #             jira_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             maria_db_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             my_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             presto_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #             },
    #             rds_parameters: {
    #               instance_id: "InstanceId", # required
    #               database: "Database", # required
    #             },
    #             redshift_parameters: {
    #               host: "Host",
    #               port: 1,
    #               database: "Database", # required
    #               cluster_id: "ClusterId",
    #             },
    #             s3_parameters: {
    #               manifest_file_location: { # required
    #                 bucket: "S3Bucket", # required
    #                 key: "S3Key", # required
    #               },
    #             },
    #             service_now_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             snowflake_parameters: {
    #               host: "Host", # required
    #               database: "Database", # required
    #               warehouse: "Warehouse", # required
    #             },
    #             spark_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             sql_server_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             teradata_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             twitter_parameters: {
    #               query: "Query", # required
    #               max_rows: 1, # required
    #             },
    #           },
    #         ],
    #       },
    #       copy_source_arn: "CopySourceArn",
    #     },
    #     vpc_connection_properties: {
    #       vpc_connection_arn: "Arn", # required
    #     },
    #     ssl_properties: {
    #       disable_ssl: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_source_id #=> String
    #   resp.update_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates the permissions to a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A list of resource permissions that you want to grant on the data
    #   source.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A list of resource permissions that you want to revoke on the data
    #   source.
    #
    # @return [Types::UpdateDataSourcePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourcePermissionsResponse#data_source_arn #data_source_arn} => String
    #   * {Types::UpdateDataSourcePermissionsResponse#data_source_id #data_source_id} => String
    #   * {Types::UpdateDataSourcePermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSourcePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_arn #=> String
    #   resp.data_source_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourcePermissions AWS API Documentation
    #
    # @overload update_data_source_permissions(params = {})
    # @param [Hash] params ({})
    def update_data_source_permissions(params = {}, options = {})
      req = build_request(:update_data_source_permissions, params)
      req.send_request(options)
    end

    # Changes a group description.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to update.
    #
    # @option params [String] :description
    #   The description for the group that you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::UpdateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupResponse#group #group} => Types::Group
    #   * {Types::UpdateGroupResponse#request_id #request_id} => String
    #   * {Types::UpdateGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupName", # required
    #     description: "GroupDescription",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates an existing IAM policy assignment. This operation updates only
    # the optional parameter or parameters that are specified in the
    # request.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the IAM policy assignment.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment. This name must be unique within an AWS
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the assignment.
    #
    # @option params [String] :assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #
    # @option params [String] :policy_arn
    #   The ARN for the IAM policy to apply to the QuickSight users and groups
    #   specified in this assignment.
    #
    # @option params [Hash<String,Array>] :identities
    #   The QuickSight users, groups, or both that you want to assign the
    #   policy to.
    #
    # @return [Types::UpdateIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIAMPolicyAssignmentResponse#assignment_name #assignment_name} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#assignment_id #assignment_id} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#policy_arn #policy_arn} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#identities #identities} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::UpdateIAMPolicyAssignmentResponse#assignment_status #assignment_status} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     namespace: "Namespace", # required
    #     assignment_status: "ENABLED", # accepts ENABLED, DRAFT, DISABLED
    #     policy_arn: "Arn",
    #     identities: {
    #       "String" => ["IdentityName"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_name #=> String
    #   resp.assignment_id #=> String
    #   resp.policy_arn #=> String
    #   resp.identities #=> Hash
    #   resp.identities["String"] #=> Array
    #   resp.identities["String"][0] #=> String
    #   resp.assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIAMPolicyAssignment AWS API Documentation
    #
    # @overload update_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def update_iam_policy_assignment(params = {}, options = {})
      req = build_request(:update_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Updates a template from an existing Amazon QuickSight analysis or
    # another template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the template that you're
    #   updating.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [required, Types::TemplateSourceEntity] :source_entity
    #   The entity that you are using as a source when you update the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name (ARN).
    #   For `SourceTemplate`, specify the ARN of the source template. For
    #   `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any AWS Account and any
    #   QuickSight-supported AWS Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` or
    #   `SourceAnalysis` to list the replacement datasets for the placeholders
    #   listed in the original. The schema in each dataset must match its
    #   placeholder.
    #
    # @option params [String] :version_description
    #   A description of the current template version that is being updated.
    #   Every time you call `UpdateTemplate`, you create a new version of the
    #   template. Each version of the template maintains a description of the
    #   version in the `VersionDescription` field.
    #
    # @option params [String] :name
    #   The name for the template.
    #
    # @return [Types::UpdateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplateResponse#template_id #template_id} => String
    #   * {Types::UpdateTemplateResponse#arn #arn} => String
    #   * {Types::UpdateTemplateResponse#version_arn #version_arn} => String
    #   * {Types::UpdateTemplateResponse#creation_status #creation_status} => String
    #   * {Types::UpdateTemplateResponse#status #status} => Integer
    #   * {Types::UpdateTemplateResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     source_entity: { # required
    #       source_analysis: {
    #         arn: "Arn", # required
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #       },
    #       source_template: {
    #         arn: "Arn", # required
    #       },
    #     },
    #     version_description: "VersionDescription",
    #     name: "TemplateName",
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplate AWS API Documentation
    #
    # @overload update_template(params = {})
    # @param [Hash] params ({})
    def update_template(params = {}, options = {})
      req = build_request(:update_template, params)
      req.send_request(options)
    end

    # Updates the template alias of a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the template alias that
    #   you're updating.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The alias of the template that you want to update. If you name a
    #   specific alias, you update the version that the alias points to. You
    #   can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #
    # @option params [required, Integer] :template_version_number
    #   The version number of the template.
    #
    # @return [Types::UpdateTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplateAliasResponse#template_alias #template_alias} => Types::TemplateAlias
    #   * {Types::UpdateTemplateAliasResponse#status #status} => Integer
    #   * {Types::UpdateTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     template_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias.alias_name #=> String
    #   resp.template_alias.arn #=> String
    #   resp.template_alias.template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateAlias AWS API Documentation
    #
    # @overload update_template_alias(params = {})
    # @param [Hash] params ({})
    def update_template_alias(params = {}, options = {})
      req = build_request(:update_template_alias, params)
      req.send_request(options)
    end

    # Updates the resource permissions for a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the template.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A list of resource permissions to be granted on the template.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A list of resource permissions to be revoked from the template.
    #
    # @return [Types::UpdateTemplatePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplatePermissionsResponse#template_id #template_id} => String
    #   * {Types::UpdateTemplatePermissionsResponse#template_arn #template_arn} => String
    #   * {Types::UpdateTemplatePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateTemplatePermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateTemplatePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplatePermissions AWS API Documentation
    #
    # @overload update_template_permissions(params = {})
    # @param [Hash] params ({})
    def update_template_permissions(params = {}, options = {})
      req = build_request(:update_template_permissions, params)
      req.send_request(options)
    end

    # Updates a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme that you're
    #   updating.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [String] :name
    #   The name for the theme.
    #
    # @option params [required, String] :base_theme_id
    #   The theme ID, defined by Amazon QuickSight, that a custom theme
    #   inherits from. All themes initially inherit from a default QuickSight
    #   theme.
    #
    # @option params [String] :version_description
    #   A description of the theme version that you're updating Every time
    #   that you call `UpdateTheme`, you create a new version of the theme.
    #   Each version of the theme maintains a description of the version in
    #   `VersionDescription`.
    #
    # @option params [Types::ThemeConfiguration] :configuration
    #   The theme configuration, which contains the theme display properties.
    #
    # @return [Types::UpdateThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThemeResponse#theme_id #theme_id} => String
    #   * {Types::UpdateThemeResponse#arn #arn} => String
    #   * {Types::UpdateThemeResponse#version_arn #version_arn} => String
    #   * {Types::UpdateThemeResponse#creation_status #creation_status} => String
    #   * {Types::UpdateThemeResponse#status #status} => Integer
    #   * {Types::UpdateThemeResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     name: "ThemeName",
    #     base_theme_id: "RestrictiveResourceId", # required
    #     version_description: "VersionDescription",
    #     configuration: {
    #       data_color_palette: {
    #         colors: ["HexColor"],
    #         min_max_gradient: ["HexColor"],
    #         empty_fill_color: "HexColor",
    #       },
    #       ui_color_palette: {
    #         primary_foreground: "HexColor",
    #         primary_background: "HexColor",
    #         secondary_foreground: "HexColor",
    #         secondary_background: "HexColor",
    #         accent: "HexColor",
    #         accent_foreground: "HexColor",
    #         danger: "HexColor",
    #         danger_foreground: "HexColor",
    #         warning: "HexColor",
    #         warning_foreground: "HexColor",
    #         success: "HexColor",
    #         success_foreground: "HexColor",
    #         dimension: "HexColor",
    #         dimension_foreground: "HexColor",
    #         measure: "HexColor",
    #         measure_foreground: "HexColor",
    #       },
    #       sheet: {
    #         tile: {
    #           border: {
    #             show: false,
    #           },
    #         },
    #         tile_layout: {
    #           gutter: {
    #             show: false,
    #           },
    #           margin: {
    #             show: false,
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_id #=> String
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTheme AWS API Documentation
    #
    # @overload update_theme(params = {})
    # @param [Hash] params ({})
    def update_theme(params = {}, options = {})
      req = build_request(:update_theme, params)
      req.send_request(options)
    end

    # Updates an alias of a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme alias that you're
    #   updating.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [required, String] :alias_name
    #   The name of the theme alias that you want to update.
    #
    # @option params [required, Integer] :theme_version_number
    #   The version number of the theme that the alias should reference.
    #
    # @return [Types::UpdateThemeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThemeAliasResponse#theme_alias #theme_alias} => Types::ThemeAlias
    #   * {Types::UpdateThemeAliasResponse#status #status} => Integer
    #   * {Types::UpdateThemeAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     theme_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_alias.arn #=> String
    #   resp.theme_alias.alias_name #=> String
    #   resp.theme_alias.theme_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeAlias AWS API Documentation
    #
    # @overload update_theme_alias(params = {})
    # @param [Hash] params ({})
    def update_theme_alias(params = {}, options = {})
      req = build_request(:update_theme_alias, params)
      req.send_request(options)
    end

    # Updates the resource permissions for a theme. Permissions apply to the
    # action to grant or revoke permissions on, for example
    # `"quicksight:DescribeTheme"`.
    #
    # Theme permissions apply in groupings. Valid groupings include the
    # following for the three levels of permissions, which are user, owner,
    # or no permissions:
    #
    # * User
    #
    #   * `"quicksight:DescribeTheme"`
    #
    #   * `"quicksight:DescribeThemeAlias"`
    #
    #   * `"quicksight:ListThemeAliases"`
    #
    #   * `"quicksight:ListThemeVersions"`
    #
    # * Owner
    #
    #   * `"quicksight:DescribeTheme"`
    #
    #   * `"quicksight:DescribeThemeAlias"`
    #
    #   * `"quicksight:ListThemeAliases"`
    #
    #   * `"quicksight:ListThemeVersions"`
    #
    #   * `"quicksight:DeleteTheme"`
    #
    #   * `"quicksight:UpdateTheme"`
    #
    #   * `"quicksight:CreateThemeAlias"`
    #
    #   * `"quicksight:DeleteThemeAlias"`
    #
    #   * `"quicksight:UpdateThemeAlias"`
    #
    #   * `"quicksight:UpdateThemePermissions"`
    #
    #   * `"quicksight:DescribeThemePermissions"`
    #
    # * To specify no permissions, omit the permissions list.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the AWS account that contains the theme.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A list of resource permissions to be granted for the theme.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A list of resource permissions to be revoked from the theme.
    #
    # @return [Types::UpdateThemePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThemePermissionsResponse#theme_id #theme_id} => String
    #   * {Types::UpdateThemePermissionsResponse#theme_arn #theme_arn} => String
    #   * {Types::UpdateThemePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateThemePermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateThemePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "RestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_id #=> String
    #   resp.theme_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemePermissions AWS API Documentation
    #
    # @overload update_theme_permissions(params = {})
    # @param [Hash] params ({})
    def update_theme_permissions(params = {}, options = {})
      req = build_request(:update_theme_permissions, params)
      req.send_request(options)
    end

    # Updates an Amazon QuickSight user.
    #
    # @option params [required, String] :user_name
    #   The Amazon QuickSight user name that you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [required, String] :email
    #   The email address of the user that you want to update.
    #
    # @option params [required, String] :role
    #   The Amazon QuickSight role of the user. The role can be one of the
    #   following default security cohorts:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   The name of the QuickSight role is invisible to the user except for
    #   the console screens dealing with permissions.
    #
    # @option params [String] :custom_permissions_name
    #   (Enterprise edition only) The name of the custom permissions profile
    #   that you want to assign to this user. Customized permissions allows
    #   you to control a user's access by restricting access the following
    #   operations:
    #
    #   * Create and update data sources
    #
    #   * Create and update datasets
    #
    #   * Create and update email reports
    #
    #   * Subscribe to email reports
    #
    #   A set of custom permissions includes any combination of these
    #   restrictions. Currently, you need to create the profile names for
    #   custom permission sets by using the QuickSight console. Then, you use
    #   the `RegisterUser` API operation to assign the named set of
    #   permissions to a QuickSight user.
    #
    #   QuickSight custom permissions are applied through IAM policies.
    #   Therefore, they override the permissions typically granted by
    #   assigning QuickSight users to one of the default security cohorts in
    #   QuickSight (admin, author, reader).
    #
    #   This feature is available only to QuickSight Enterprise edition
    #   subscriptions that use SAML 2.0-Based Federation for Single Sign-On
    #   (SSO).
    #
    # @option params [Boolean] :unapply_custom_permissions
    #   A flag that you use to indicate that you want to remove all custom
    #   permissions from this user. Using this parameter resets the user to
    #   the state it was in before a custom permissions profile was applied.
    #   This parameter defaults to NULL and it doesn't accept any other
    #   value.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user #user} => Types::User
    #   * {Types::UpdateUserResponse#request_id #request_id} => String
    #   * {Types::UpdateUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     email: "String", # required
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #     custom_permissions_name: "RoleName",
    #     unapply_custom_permissions: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.user.custom_permissions_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-quicksight'
      context[:gem_version] = '1.33.0'
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
