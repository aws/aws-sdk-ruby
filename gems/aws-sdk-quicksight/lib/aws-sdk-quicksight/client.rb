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
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::QuickSight::Plugins::Endpoints)

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
    #   @option options [Aws::QuickSight::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::QuickSight::EndpointParameters`
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

    # Cancels an ongoing ingestion of data into SPICE.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
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
    #     data_set_id: "String", # required
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

    # Creates Amazon QuickSight customizations for the current Amazon Web
    # Services Region. Currently, you can add a custom default theme by
    # using the `CreateAccountCustomization` or `UpdateAccountCustomization`
    # API operation. To further customize Amazon QuickSight by removing
    # Amazon QuickSight sample assets and videos for all new users, see
    # [Customizing Amazon QuickSight][1] in the *Amazon QuickSight User
    # Guide.*
    #
    # You can create customizations for your Amazon Web Services account or,
    # if you specify a namespace, for a QuickSight namespace instead.
    # Customizations that apply to a namespace always override
    # customizations that apply to an Amazon Web Services account. To find
    # out which customizations apply, use the `DescribeAccountCustomization`
    # API operation.
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
    #   The ID for the Amazon Web Services account that you want to customize
    #   Amazon QuickSight for.
    #
    # @option params [String] :namespace
    #   The Amazon QuickSight namespace that you want to add customizations
    #   to.
    #
    # @option params [required, Types::AccountCustomization] :account_customization
    #   The Amazon QuickSight customizations you're adding in the current
    #   Amazon Web Services Region. You can add these to an Amazon Web
    #   Services account and a QuickSight namespace.
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
    #       default_email_customization_template: "Arn",
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
    #   resp.account_customization.default_email_customization_template #=> String
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

    # Creates an Amazon QuickSight account, or subscribes to Amazon
    # QuickSight Q.
    #
    # The Amazon Web Services Region for the account is derived from what is
    # configured in the CLI or SDK. This operation isn't supported in the
    # US East (Ohio) Region, South America (Sao Paulo) Region, or Asia
    # Pacific (Singapore) Region.
    #
    # Before you use this operation, make sure that you can connect to an
    # existing Amazon Web Services account. If you don't have an Amazon Web
    # Services account, see [Sign up for Amazon Web Services][1] in the
    # *Amazon QuickSight User Guide*. The person who signs up for Amazon
    # QuickSight needs to have the correct Identity and Access Management
    # (IAM) permissions. For more information, see [IAM Policy Examples for
    # Amazon QuickSight][2] in the *Amazon QuickSight User Guide*.
    #
    # If your IAM policy includes both the `Subscribe` and
    # `CreateAccountSubscription` actions, make sure that both actions are
    # set to `Allow`. If either action is set to `Deny`, the `Deny` action
    # prevails and your API call fails.
    #
    # You can't pass an existing IAM role to access other Amazon Web
    # Services services using this API operation. To pass your existing IAM
    # role to Amazon QuickSight, see [Passing IAM roles to Amazon
    # QuickSight][3] in the *Amazon QuickSight User Guide*.
    #
    # You can't set default resource access on the new account from the
    # Amazon QuickSight API. Instead, add default resource access from the
    # Amazon QuickSight console. For more information about setting default
    # resource access to Amazon Web Services services, see [Setting default
    # resource access to Amazon Web Services services][4] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/setting-up-aws-sign-up.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/iam-policy-examples.html
    # [3]: https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html#security-create-iam-role
    # [4]: https://docs.aws.amazon.com/quicksight/latest/user/scoping-policies-defaults.html
    #
    # @option params [required, String] :edition
    #   The edition of Amazon QuickSight that you want your account to have.
    #   Currently, you can choose from `ENTERPRISE` or `ENTERPRISE_AND_Q`.
    #
    #   If you choose `ENTERPRISE_AND_Q`, the following parameters are
    #   required:
    #
    #   * `FirstName`
    #
    #   * `LastName`
    #
    #   * `EmailAddress`
    #
    #   * `ContactNumber`
    #
    # @option params [required, String] :authentication_method
    #   The method that you want to use to authenticate your Amazon QuickSight
    #   account. Currently, the valid values for this parameter are
    #   `IAM_AND_QUICKSIGHT`, `IAM_ONLY`, and `ACTIVE_DIRECTORY`.
    #
    #   If you choose `ACTIVE_DIRECTORY`, provide an `ActiveDirectoryName` and
    #   an `AdminGroup` associated with your Active Directory.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that you're using
    #   to create your Amazon QuickSight account.
    #
    # @option params [required, String] :account_name
    #   The name of your Amazon QuickSight account. This name is unique over
    #   all of Amazon Web Services, and it appears only when users sign in.
    #   You can't change `AccountName` value after the Amazon QuickSight
    #   account is created.
    #
    # @option params [required, String] :notification_email
    #   The email address that you want Amazon QuickSight to send
    #   notifications to regarding your Amazon QuickSight account or Amazon
    #   QuickSight subscription.
    #
    # @option params [String] :active_directory_name
    #   The name of your Active Directory. This field is required if
    #   `ACTIVE_DIRECTORY` is the selected authentication method of the new
    #   Amazon QuickSight account.
    #
    # @option params [String] :realm
    #   The realm of the Active Directory that is associated with your Amazon
    #   QuickSight account. This field is required if `ACTIVE_DIRECTORY` is
    #   the selected authentication method of the new Amazon QuickSight
    #   account.
    #
    # @option params [String] :directory_id
    #   The ID of the Active Directory that is associated with your Amazon
    #   QuickSight account.
    #
    # @option params [Array<String>] :admin_group
    #   The admin group associated with your Active Directory. This field is
    #   required if `ACTIVE_DIRECTORY` is the selected authentication method
    #   of the new Amazon QuickSight account. For more information about using
    #   Active Directory in Amazon QuickSight, see [Using Active Directory
    #   with Amazon QuickSight Enterprise Edition][1] in the Amazon QuickSight
    #   User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #
    # @option params [Array<String>] :author_group
    #   The author group associated with your Active Directory. For more
    #   information about using Active Directory in Amazon QuickSight, see
    #   [Using Active Directory with Amazon QuickSight Enterprise Edition][1]
    #   in the Amazon QuickSight User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #
    # @option params [Array<String>] :reader_group
    #   The reader group associated with your Active Direcrtory. For more
    #   information about using Active Directory in Amazon QuickSight, see
    #   [Using Active Directory with Amazon QuickSight Enterprise Edition][1]
    #   in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #
    # @option params [String] :first_name
    #   The first name of the author of the Amazon QuickSight account to use
    #   for future communications. This field is required if
    #   `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon
    #   QuickSight account.
    #
    # @option params [String] :last_name
    #   The last name of the author of the Amazon QuickSight account to use
    #   for future communications. This field is required if
    #   `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon
    #   QuickSight account.
    #
    # @option params [String] :email_address
    #   The email address of the author of the Amazon QuickSight account to
    #   use for future communications. This field is required if
    #   `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon
    #   QuickSight account.
    #
    # @option params [String] :contact_number
    #   A 10-digit phone number for the author of the Amazon QuickSight
    #   account to use for future communications. This field is required if
    #   `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon
    #   QuickSight account.
    #
    # @return [Types::CreateAccountSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountSubscriptionResponse#signup_response #signup_response} => Types::SignupResponse
    #   * {Types::CreateAccountSubscriptionResponse#status #status} => Integer
    #   * {Types::CreateAccountSubscriptionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_subscription({
    #     edition: "STANDARD", # required, accepts STANDARD, ENTERPRISE, ENTERPRISE_AND_Q
    #     authentication_method: "IAM_AND_QUICKSIGHT", # required, accepts IAM_AND_QUICKSIGHT, IAM_ONLY, ACTIVE_DIRECTORY
    #     aws_account_id: "AwsAccountId", # required
    #     account_name: "String", # required
    #     notification_email: "String", # required
    #     active_directory_name: "String",
    #     realm: "String",
    #     directory_id: "String",
    #     admin_group: ["String"],
    #     author_group: ["String"],
    #     reader_group: ["String"],
    #     first_name: "String",
    #     last_name: "String",
    #     email_address: "String",
    #     contact_number: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.signup_response.iam_user #=> Boolean
    #   resp.signup_response.user_login_name #=> String
    #   resp.signup_response.account_name #=> String
    #   resp.signup_response.directory_type #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountSubscription AWS API Documentation
    #
    # @overload create_account_subscription(params = {})
    # @param [Hash] params ({})
    def create_account_subscription(params = {}, options = {})
      req = build_request(:create_account_subscription, params)
      req.send_request(options)
    end

    # Creates an analysis in Amazon QuickSight. Analyses can be created
    # either from a template or from an `AnalysisDefinition`.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account where you are creating an
    #   analysis.
    #
    # @option params [required, String] :analysis_id
    #   The ID for the analysis that you're creating. This ID displays in the
    #   URL of the analysis.
    #
    # @option params [required, String] :name
    #   A descriptive name for the analysis that you're creating. This name
    #   displays for the analysis in the Amazon QuickSight console.
    #
    # @option params [Types::Parameters] :parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might accept
    #   multiple values.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A structure that describes the principals and the resource-level
    #   permissions on an analysis. You can use the `Permissions` structure to
    #   grant permissions by providing a list of Identity and Access
    #   Management (IAM) action information for each principal listed by
    #   Amazon Resource Name (ARN).
    #
    #   To specify no permissions, omit `Permissions`.
    #
    # @option params [Types::AnalysisSourceEntity] :source_entity
    #   A source entity to use for the analysis that you're creating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #
    # @option params [String] :theme_arn
    #   The ARN for the theme to apply to the analysis that you're creating.
    #   To see the theme in the Amazon QuickSight console, make sure that you
    #   have access to it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the analysis.
    #
    # @option params [Types::AnalysisDefinition] :definition
    #   The definition of an analysis.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #
    # @return [Types::CreateAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnalysisResponse#arn #arn} => String
    #   * {Types::CreateAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::CreateAnalysisResponse#creation_status #creation_status} => String
    #   * {Types::CreateAnalysisResponse#status #status} => Integer
    #   * {Types::CreateAnalysisResponse#request_id #request_id} => String
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

    # Creates a dashboard from either a template or directly with a
    # `DashboardDefinition`. To first create a template, see the `
    # CreateTemplate ` API operation.
    #
    # A dashboard is an entity in Amazon QuickSight that identifies Amazon
    # QuickSight reports, created from analyses. You can share Amazon
    # QuickSight dashboards. With the right permissions, you can create
    # scheduled email reports from them. If you have the correct
    # permissions, you can create a dashboard from a template that exists in
    # a different Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account where you want to create the
    #   dashboard.
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
    # @option params [Types::DashboardSourceEntity] :source_entity
    #   The entity that you are using as a source when you create the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only create a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to create a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the ` CreateTemplate ` API operation. For `SourceTemplate`, specify
    #   the Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate`ARN can contain any Amazon Web Services account and
    #   any Amazon QuickSight-supported Amazon Web Services Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` to list the
    #   replacement datasets for the placeholders listed in the original. The
    #   schema in each dataset must match its placeholder.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
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
    #     Amazon QuickSight disables the left filter pane on the published
    #     dashboard, which can be used for ad hoc (one-time) filtering. This
    #     option is `ENABLED` by default.
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
    #   the same Amazon Web Services account where you create the dashboard.
    #
    # @option params [Types::DashboardVersionDefinition] :definition
    #   The definition of a dashboard.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
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

    # Creates a dataset. This operation doesn't support datasets that
    # include uploaded files as a source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   An ID for the dataset that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
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
    #   Groupings of columns that work together in certain Amazon QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #
    # @option params [Hash<String,Types::FieldFolder>] :field_folders
    #   The folder that contains fields and nested subfolders for your
    #   dataset.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions on the dataset.
    #
    # @option params [Types::RowLevelPermissionDataSet] :row_level_permission_data_set
    #   The row-level security configuration for the data that you want to
    #   create.
    #
    # @option params [Types::RowLevelPermissionTagConfiguration] :row_level_permission_tag_configuration
    #   The configuration of tags on a dataset to set row-level security.
    #   Row-level security tags are currently supported for anonymous
    #   embedding only.
    #
    # @option params [Array<Types::ColumnLevelPermissionRule>] :column_level_permission_rules
    #   A set of one or more definitions of a ` ColumnLevelPermissionRule `.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dataset.
    #
    # @option params [Types::DataSetUsageConfiguration] :data_set_usage_configuration
    #   The usage configuration to apply to child datasets that reference this
    #   dataset as a source.
    #
    # @option params [Array<Types::DatasetParameter>] :dataset_parameters
    #   The parameter declarations of the dataset.
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
    #           catalog: "RelationalTableCatalog",
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
    #                   column_description: {
    #                     text: "ColumnDescriptiveText",
    #                   },
    #                 },
    #               ],
    #             },
    #             untag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tag_names: ["COLUMN_GEOGRAPHIC_ROLE"], # required, accepts COLUMN_GEOGRAPHIC_ROLE, COLUMN_DESCRIPTION
    #             },
    #             override_dataset_parameter_operation: {
    #               parameter_name: "DatasetParameterName", # required
    #               new_parameter_name: "DatasetParameterName",
    #               new_default_values: {
    #                 string_static_values: ["StringDatasetParameterDefaultValue"],
    #                 decimal_static_values: [1.0],
    #                 date_time_static_values: [Time.now],
    #                 integer_static_values: [1],
    #               },
    #             },
    #           },
    #         ],
    #         source: { # required
    #           join_instruction: {
    #             left_operand: "LogicalTableId", # required
    #             right_operand: "LogicalTableId", # required
    #             left_join_key_properties: {
    #               unique_key: false,
    #             },
    #             right_join_key_properties: {
    #               unique_key: false,
    #             },
    #             type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #             on_clause: "OnClause", # required
    #           },
    #           physical_table_id: "PhysicalTableId",
    #           data_set_arn: "Arn",
    #         },
    #       },
    #     },
    #     import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: "ColumnGroupName", # required
    #           country_code: "US", # accepts US
    #           columns: ["ColumnName"], # required
    #         },
    #       },
    #     ],
    #     field_folders: {
    #       "FieldFolderPath" => {
    #         description: "FieldFolderDescription",
    #         columns: ["String"],
    #       },
    #     },
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
    #       format_version: "VERSION_1", # accepts VERSION_1, VERSION_2
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     row_level_permission_tag_configuration: {
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #       tag_rules: [ # required
    #         {
    #           tag_key: "SessionTagKey", # required
    #           column_name: "String", # required
    #           tag_multi_value_delimiter: "RowLevelPermissionTagDelimiter",
    #           match_all_value: "SessionTagValue",
    #         },
    #       ],
    #       tag_rule_configurations: [
    #         ["SessionTagKey"],
    #       ],
    #     },
    #     column_level_permission_rules: [
    #       {
    #         principals: ["String"],
    #         column_names: ["String"],
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     data_set_usage_configuration: {
    #       disable_use_as_direct_query_source: false,
    #       disable_use_as_imported_source: false,
    #     },
    #     dataset_parameters: [
    #       {
    #         string_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: ["StringDatasetParameterDefaultValue"],
    #           },
    #         },
    #         decimal_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: [1.0],
    #           },
    #         },
    #         integer_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: [1],
    #           },
    #         },
    #         date_time_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #           default_values: {
    #             static_values: [Time.now],
    #           },
    #         },
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
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   An ID for the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #
    # @option params [required, String] :name
    #   A display name for the data source.
    #
    # @option params [required, String] :type
    #   The type of the data source. To return a list of all data sources, use
    #   `ListDataSources`.
    #
    #   Use `AMAZON_ELASTICSEARCH` for Amazon OpenSearch Service.
    #
    # @option params [Types::DataSourceParameters] :data_source_parameters
    #   The parameters that Amazon QuickSight uses to connect to your
    #   underlying source.
    #
    # @option params [Types::DataSourceCredentials] :credentials
    #   The credentials Amazon QuickSight that uses to connect to your
    #   underlying source. Currently, only credentials based on user name and
    #   password are supported.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions on the data source.
    #
    # @option params [Types::VpcConnectionProperties] :vpc_connection_properties
    #   Use this parameter only when you want Amazon QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #
    # @option params [Types::SslProperties] :ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when Amazon QuickSight
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
    #     type: "ADOBE_ANALYTICS", # required, accepts ADOBE_ANALYTICS, AMAZON_ELASTICSEARCH, ATHENA, AURORA, AURORA_POSTGRESQL, AWS_IOT_ANALYTICS, GITHUB, JIRA, MARIADB, MYSQL, ORACLE, POSTGRESQL, PRESTO, REDSHIFT, S3, SALESFORCE, SERVICENOW, SNOWFLAKE, SPARK, SQLSERVER, TERADATA, TWITTER, TIMESTREAM, AMAZON_OPENSEARCH, EXASOL, DATABRICKS
    #     data_source_parameters: {
    #       amazon_elasticsearch_parameters: {
    #         domain: "Domain", # required
    #       },
    #       athena_parameters: {
    #         work_group: "WorkGroup",
    #         role_arn: "RoleArn",
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
    #       oracle_parameters: {
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
    #         role_arn: "RoleArn",
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
    #       amazon_open_search_parameters: {
    #         domain: "Domain", # required
    #       },
    #       exasol_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       databricks_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         sql_endpoint_path: "SqlEndpointPath", # required
    #       },
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: "DbUsername", # required
    #         password: "Password", # required
    #         alternate_data_source_parameters: [
    #           {
    #             amazon_elasticsearch_parameters: {
    #               domain: "Domain", # required
    #             },
    #             athena_parameters: {
    #               work_group: "WorkGroup",
    #               role_arn: "RoleArn",
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
    #             oracle_parameters: {
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
    #               role_arn: "RoleArn",
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
    #             amazon_open_search_parameters: {
    #               domain: "Domain", # required
    #             },
    #             exasol_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             databricks_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               sql_endpoint_path: "SqlEndpointPath", # required
    #             },
    #           },
    #         ],
    #       },
    #       copy_source_arn: "CopySourceArn",
    #       secret_arn: "SecretArn",
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

    # Creates an empty shared folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account where you want to create
    #   the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [String] :name
    #   The name of the folder.
    #
    # @option params [String] :folder_type
    #   The type of folder. By default, `folderType` is `SHARED`.
    #
    # @option params [String] :parent_folder_arn
    #   The Amazon Resource Name (ARN) for the parent folder.
    #
    #   `ParentFolderArn` can be null. An empty `parentFolderArn` creates a
    #   root-level folder.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A structure that describes the principals and the resource-level
    #   permissions of a folder.
    #
    #   To specify no permissions, omit `Permissions`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags for the folder.
    #
    # @return [Types::CreateFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFolderResponse#status #status} => Integer
    #   * {Types::CreateFolderResponse#arn #arn} => String
    #   * {Types::CreateFolderResponse#folder_id #folder_id} => String
    #   * {Types::CreateFolderResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_folder({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     name: "FolderName",
    #     folder_type: "SHARED", # accepts SHARED
    #     parent_folder_arn: "Arn",
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
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.folder_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateFolder AWS API Documentation
    #
    # @overload create_folder(params = {})
    # @param [Hash] params ({})
    def create_folder(params = {}, options = {})
      req = build_request(:create_folder, params)
      req.send_request(options)
    end

    # Adds an asset, such as a dashboard, analysis, or dataset into a
    # folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [required, String] :member_id
    #   The ID of the asset (the dashboard, analysis, or dataset).
    #
    # @option params [required, String] :member_type
    #   The type of the member, including `DASHBOARD`, `ANALYSIS`, and
    #   `DATASET`.
    #
    # @return [Types::CreateFolderMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFolderMembershipResponse#status #status} => Integer
    #   * {Types::CreateFolderMembershipResponse#folder_member #folder_member} => Types::FolderMember
    #   * {Types::CreateFolderMembershipResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_folder_membership({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     member_id: "RestrictiveResourceId", # required
    #     member_type: "DASHBOARD", # required, accepts DASHBOARD, ANALYSIS, DATASET
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_member.member_id #=> String
    #   resp.folder_member.member_type #=> String, one of "DASHBOARD", "ANALYSIS", "DATASET"
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateFolderMembership AWS API Documentation
    #
    # @overload create_folder_membership(params = {})
    # @param [Hash] params ({})
    def create_folder_membership(params = {}, options = {})
      req = build_request(:create_folder_membership, params)
      req.send_request(options)
    end

    # Use the `CreateGroup` operation to create a group in Amazon
    # QuickSight. You can create up to 10,000 groups in a namespace. If you
    # want to create more than 10,000 groups in a namespace, contact AWS
    # Support.
    #
    # The permissions resource is
    # `arn:aws:quicksight:<your-region>:<relevant-aws-account-id>:group/default/<group-name>
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
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want the group to be a part of.
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
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want the user to be a part of.
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
    # Amazon Resource Name (ARN). This policy assignment is attached to the
    # specified groups or users of Amazon QuickSight. Assignment names are
    # unique per Amazon Web Services account. To avoid overwriting rules in
    # other namespaces, use assignment names that are unique.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account where you want to assign an
    #   IAM policy to Amazon QuickSight users or groups.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment, also called a rule. The name must be
    #   unique within the Amazon Web Services account.
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
    #   The ARN for the IAM policy to apply to the Amazon QuickSight users and
    #   groups specified in this assignment.
    #
    # @option params [Hash<String,Array>] :identities
    #   The Amazon QuickSight users, groups, or both that you want to assign
    #   the policy to.
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

    # Creates and starts a new SPICE ingestion for a dataset. You can
    # manually refresh datasets in an Enterprise edition account 32 times in
    # a 24-hour period. You can manually refresh datasets in a Standard
    # edition account 8 times in a 24-hour period. Each 24-hour period is
    # measured starting 24 hours before the current date and time.
    #
    # Any ingestions operating on tagged datasets inherit the same tags
    # automatically for use in access control. For an example, see [How do I
    # create an IAM policy to control access to Amazon EC2 resources using
    # tags?][1] in the Amazon Web Services Knowledge Center. Tags are
    # visible on the tagged dataset, but not on the ingestion resource.
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [String] :ingestion_type
    #   The type of ingestion that you want to create.
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
    #     data_set_id: "String", # required
    #     ingestion_id: "IngestionId", # required
    #     aws_account_id: "AwsAccountId", # required
    #     ingestion_type: "INCREMENTAL_REFRESH", # accepts INCREMENTAL_REFRESH, FULL_REFRESH
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
    # A namespace allows you to isolate the Amazon QuickSight users and
    # groups that are registered for that namespace. Users that access the
    # namespace can share assets only with other users or groups in the same
    # namespace. They can't see users and groups in other namespaces. You
    # can create a namespace after your Amazon Web Services account is
    # subscribed to Amazon QuickSight. The namespace must be unique within
    # the Amazon Web Services account. By default, there is a limit of 100
    # namespaces per Amazon Web Services account. To increase your limit,
    # create a ticket with Amazon Web Services Support.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to create the
    #   Amazon QuickSight namespace in.
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

    # Creates a refresh schedule for a dataset. You can create up to 5
    # different schedules for a single dataset.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, Types::RefreshSchedule] :schedule
    #   The refresh schedule.
    #
    # @return [Types::CreateRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRefreshScheduleResponse#status #status} => Integer
    #   * {Types::CreateRefreshScheduleResponse#request_id #request_id} => String
    #   * {Types::CreateRefreshScheduleResponse#schedule_id #schedule_id} => String
    #   * {Types::CreateRefreshScheduleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_refresh_schedule({
    #     data_set_id: "ResourceId", # required
    #     aws_account_id: "AwsAccountId", # required
    #     schedule: { # required
    #       schedule_id: "String", # required
    #       schedule_frequency: { # required
    #         interval: "MINUTE15", # required, accepts MINUTE15, MINUTE30, HOURLY, DAILY, WEEKLY, MONTHLY
    #         refresh_on_day: {
    #           day_of_week: "SUNDAY", # accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #           day_of_month: "DayOfMonth",
    #         },
    #         timezone: "String",
    #         time_of_the_day: "String",
    #       },
    #       start_after_date_time: Time.now,
    #       refresh_type: "INCREMENTAL_REFRESH", # required, accepts INCREMENTAL_REFRESH, FULL_REFRESH
    #       arn: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.schedule_id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateRefreshSchedule AWS API Documentation
    #
    # @overload create_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def create_refresh_schedule(params = {}, options = {})
      req = build_request(:create_refresh_schedule, params)
      req.send_request(options)
    end

    # Creates a template either from a `TemplateDefinition` or from an
    # existing Amazon QuickSight analysis or template. You can use the
    # resulting template to create additional dashboards, templates, or
    # analyses.
    #
    # A *template* is an entity in Amazon QuickSight that encapsulates the
    # metadata required to create an analysis and that you can use to create
    # s dashboard. A template adds a layer of abstraction by using
    # placeholders to replace the dataset associated with the analysis. You
    # can use templates to create dashboards by replacing dataset
    # placeholders with datasets that follow the same schema that was used
    # to create the source analysis and template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in. You
    #   use the ID for the Amazon Web Services account that contains your
    #   Amazon QuickSight account.
    #
    # @option params [required, String] :template_id
    #   An ID for the template that you want to create. This template is
    #   unique per Amazon Web Services Region; in each Amazon Web Services
    #   account.
    #
    # @option params [String] :name
    #   A display name for the template.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions to be set on the template.
    #
    # @option params [Types::TemplateSourceEntity] :source_entity
    #   The entity that you are using as a source when you create the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name (ARN).
    #   For `SourceTemplate`, specify the ARN of the source template. For
    #   `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any Amazon Web Services account and
    #   any Amazon QuickSight-supported Amazon Web Services Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` or
    #   `SourceAnalysis` to list the replacement datasets for the placeholders
    #   listed in the original. The schema in each dataset must match its
    #   placeholder.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
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
    # @option params [Types::TemplateVersionDefinition] :definition
    #   The definition of a template.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
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
    #   The ID of the Amazon Web Services account that contains the template
    #   that you creating an alias for.
    #
    # @option params [required, String] :template_id
    #   An ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The name that you want to give to the template alias that you're
    #   creating. Don't start the alias name with the `$` character. Alias
    #   names that start with `$` are reserved by Amazon QuickSight.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account where you want to store the
    #   new theme.
    #
    # @option params [required, String] :theme_id
    #   An ID for the theme that you want to create. The theme ID is unique
    #   per Amazon Web Services Region in each Amazon Web Services account.
    #
    # @option params [required, String] :name
    #   A display name for the theme.
    #
    # @option params [required, String] :base_theme_id
    #   The ID of the theme that a custom theme will inherit from. All themes
    #   inherit from one of the starting themes defined by Amazon QuickSight.
    #   For a list of the starting themes, use `ListThemes` or choose
    #   **Themes** from within an analysis.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     name: "ThemeName", # required
    #     base_theme_id: "ShortRestrictiveResourceId", # required
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
    #       typography: {
    #         font_families: [
    #           {
    #             font_family: "String",
    #           },
    #         ],
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
    #   The ID of the Amazon Web Services account that contains the theme for
    #   the new theme alias.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
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

    # Creates a new Q topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that you want to create a
    #   topic in.
    #
    # @option params [required, String] :topic_id
    #   The ID for the topic that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, Types::TopicDetails] :topic
    #   The definition of a topic to create.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   that are assigned to the dataset.
    #
    # @return [Types::CreateTopicResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTopicResponse#arn #arn} => String
    #   * {Types::CreateTopicResponse#topic_id #topic_id} => String
    #   * {Types::CreateTopicResponse#refresh_arn #refresh_arn} => String
    #   * {Types::CreateTopicResponse#request_id #request_id} => String
    #   * {Types::CreateTopicResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     topic: { # required
    #       name: "ResourceName",
    #       description: "LimitedString",
    #       data_sets: [
    #         {
    #           dataset_arn: "Arn", # required
    #           dataset_name: "LimitedString",
    #           dataset_description: "LimitedString",
    #           data_aggregation: {
    #             dataset_row_date_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #             default_date_column_name: "LimitedString",
    #           },
    #           filters: [
    #             {
    #               filter_description: "LimitedString",
    #               filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #               filter_name: "LimitedString", # required
    #               filter_synonyms: ["LimitedString"],
    #               operand_field_name: "LimitedString", # required
    #               filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER
    #               category_filter: {
    #                 category_filter_function: "EXACT", # accepts EXACT, CONTAINS
    #                 category_filter_type: "CUSTOM_FILTER", # accepts CUSTOM_FILTER, CUSTOM_FILTER_LIST, FILTER_LIST
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                   collective_constant: {
    #                     value_list: ["String"],
    #                   },
    #                 },
    #                 inverse: false,
    #               },
    #               numeric_equality_filter: {
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #                 aggregation: "NO_AGGREGATION", # accepts NO_AGGREGATION, SUM, AVERAGE, COUNT, DISTINCT_COUNT, MAX, MEDIAN, MIN, STDEV, STDEVP, VAR, VARP
    #               },
    #               numeric_range_filter: {
    #                 inclusive: false,
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   range_constant: {
    #                     minimum: "LimitedString",
    #                     maximum: "LimitedString",
    #                   },
    #                 },
    #                 aggregation: "NO_AGGREGATION", # accepts NO_AGGREGATION, SUM, AVERAGE, COUNT, DISTINCT_COUNT, MAX, MEDIAN, MIN, STDEV, STDEVP, VAR, VARP
    #               },
    #               date_range_filter: {
    #                 inclusive: false,
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   range_constant: {
    #                     minimum: "LimitedString",
    #                     maximum: "LimitedString",
    #                   },
    #                 },
    #               },
    #               relative_date_filter: {
    #                 time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #                 relative_date_filter_function: "PREVIOUS", # accepts PREVIOUS, THIS, LAST, NEXT, NOW
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #               },
    #             },
    #           ],
    #           columns: [
    #             {
    #               column_name: "LimitedString", # required
    #               column_friendly_name: "LimitedString",
    #               column_description: "LimitedString",
    #               column_synonyms: ["LimitedString"],
    #               column_data_role: "DIMENSION", # accepts DIMENSION, MEASURE
    #               aggregation: "SUM", # accepts SUM, MAX, MIN, COUNT, DISTINCT_COUNT, AVERAGE
    #               is_included_in_topic: false,
    #               disable_indexing: false,
    #               comparative_order: {
    #                 use_ordering: "GREATER_IS_BETTER", # accepts GREATER_IS_BETTER, LESSER_IS_BETTER, SPECIFIED
    #                 specifed_order: ["String"],
    #                 treat_undefined_specified_values: "LEAST", # accepts LEAST, MOST
    #               },
    #               semantic_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #                 truthy_cell_value: "SensitiveString",
    #                 truthy_cell_value_synonyms: ["SensitiveString"],
    #                 falsey_cell_value: "SensitiveString",
    #                 falsey_cell_value_synonyms: ["SensitiveString"],
    #               },
    #               time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #               allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               not_allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               default_formatting: {
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #               },
    #               never_aggregate_in_filter: false,
    #               cell_value_synonyms: [
    #                 {
    #                   cell_value: "LimitedString",
    #                   synonyms: ["String"],
    #                 },
    #               ],
    #             },
    #           ],
    #           calculated_fields: [
    #             {
    #               calculated_field_name: "LimitedString", # required
    #               calculated_field_description: "LimitedString",
    #               expression: "Expression", # required
    #               calculated_field_synonyms: ["LimitedString"],
    #               is_included_in_topic: false,
    #               disable_indexing: false,
    #               column_data_role: "DIMENSION", # accepts DIMENSION, MEASURE
    #               time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #               default_formatting: {
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #               },
    #               aggregation: "SUM", # accepts SUM, MAX, MIN, COUNT, DISTINCT_COUNT, AVERAGE
    #               comparative_order: {
    #                 use_ordering: "GREATER_IS_BETTER", # accepts GREATER_IS_BETTER, LESSER_IS_BETTER, SPECIFIED
    #                 specifed_order: ["String"],
    #                 treat_undefined_specified_values: "LEAST", # accepts LEAST, MOST
    #               },
    #               semantic_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #                 truthy_cell_value: "SensitiveString",
    #                 truthy_cell_value_synonyms: ["SensitiveString"],
    #                 falsey_cell_value: "SensitiveString",
    #                 falsey_cell_value_synonyms: ["SensitiveString"],
    #               },
    #               allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               not_allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               never_aggregate_in_filter: false,
    #               cell_value_synonyms: [
    #                 {
    #                   cell_value: "LimitedString",
    #                   synonyms: ["String"],
    #                 },
    #               ],
    #             },
    #           ],
    #           named_entities: [
    #             {
    #               entity_name: "LimitedString", # required
    #               entity_description: "LimitedString",
    #               entity_synonyms: ["LimitedString"],
    #               semantic_entity_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #               },
    #               definition: [
    #                 {
    #                   field_name: "LimitedString",
    #                   property_name: "LimitedString",
    #                   property_role: "PRIMARY", # accepts PRIMARY, ID
    #                   property_usage: "INHERIT", # accepts INHERIT, DIMENSION, MEASURE
    #                   metric: {
    #                     aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, CUSTOM
    #                     aggregation_function_parameters: {
    #                       "LimitedString" => "LimitedString",
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       ],
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
    #   resp.topic_id #=> String
    #   resp.refresh_arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTopic AWS API Documentation
    #
    # @overload create_topic(params = {})
    # @param [Hash] params ({})
    def create_topic(params = {}, options = {})
      req = build_request(:create_topic, params)
      req.send_request(options)
    end

    # Creates a topic refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   you're creating a refresh schedule for.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #
    # @option params [String] :dataset_name
    #   The name of the dataset.
    #
    # @option params [required, Types::TopicRefreshSchedule] :refresh_schedule
    #   The definition of a refresh schedule.
    #
    # @return [Types::CreateTopicRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTopicRefreshScheduleResponse#topic_id #topic_id} => String
    #   * {Types::CreateTopicRefreshScheduleResponse#topic_arn #topic_arn} => String
    #   * {Types::CreateTopicRefreshScheduleResponse#dataset_arn #dataset_arn} => String
    #   * {Types::CreateTopicRefreshScheduleResponse#status #status} => Integer
    #   * {Types::CreateTopicRefreshScheduleResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     dataset_arn: "Arn", # required
    #     dataset_name: "String",
    #     refresh_schedule: { # required
    #       is_enabled: false, # required
    #       based_on_spice_schedule: false, # required
    #       starting_at: Time.now,
    #       timezone: "LimitedString",
    #       repeat_at: "LimitedString",
    #       topic_schedule_type: "HOURLY", # accepts HOURLY, DAILY, WEEKLY, MONTHLY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.dataset_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTopicRefreshSchedule AWS API Documentation
    #
    # @overload create_topic_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def create_topic_refresh_schedule(params = {}, options = {})
      req = build_request(:create_topic_refresh_schedule, params)
      req.send_request(options)
    end

    # Creates a new VPC connection.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account where you want to
    #   create a new VPC connection.
    #
    # @option params [required, String] :vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon Web
    #   Services account.
    #
    # @option params [required, String] :name
    #   The display name for the VPC connection.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of subnet IDs for the VPC connection.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   A list of security group IDs for the VPC connection.
    #
    # @option params [Array<String>] :dns_resolvers
    #   A list of IP addresses of DNS resolver endpoints for the VPC
    #   connection.
    #
    # @option params [required, String] :role_arn
    #   The IAM role to associate with the VPC connection.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs for the resource tag or tags assigned to
    #   the VPC connection.
    #
    # @return [Types::CreateVPCConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVPCConnectionResponse#arn #arn} => String
    #   * {Types::CreateVPCConnectionResponse#vpc_connection_id #vpc_connection_id} => String
    #   * {Types::CreateVPCConnectionResponse#creation_status #creation_status} => String
    #   * {Types::CreateVPCConnectionResponse#availability_status #availability_status} => String
    #   * {Types::CreateVPCConnectionResponse#request_id #request_id} => String
    #   * {Types::CreateVPCConnectionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_connection({
    #     aws_account_id: "AwsAccountId", # required
    #     vpc_connection_id: "VPCConnectionResourceIdRestricted", # required
    #     name: "ResourceName", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     dns_resolvers: ["IPv4Address"],
    #     role_arn: "RoleArn", # required
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
    #   resp.vpc_connection_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateVPCConnection AWS API Documentation
    #
    # @overload create_vpc_connection(params = {})
    # @param [Hash] params ({})
    def create_vpc_connection(params = {}, options = {})
      req = build_request(:create_vpc_connection, params)
      req.send_request(options)
    end

    # Deletes all Amazon QuickSight customizations in this Amazon Web
    # Services Region for the specified Amazon Web Services account and
    # Amazon QuickSight namespace.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to delete
    #   Amazon QuickSight customizations from in this Amazon Web Services
    #   Region.
    #
    # @option params [String] :namespace
    #   The Amazon QuickSight namespace that you're deleting the
    #   customizations from.
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

    # Use the `DeleteAccountSubscription` operation to delete an Amazon
    # QuickSight account. This operation will result in an error message if
    # you have configured your account termination protection settings to
    # `True`. To change this setting and delete your account, call the
    # `UpdateAccountSettings` API and set the value of the
    # `TerminationProtectionEnabled` parameter to `False`, then make another
    # call to the `DeleteAccountSubscription` API.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that you want to
    #   delete.
    #
    # @return [Types::DeleteAccountSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountSubscriptionResponse#request_id #request_id} => String
    #   * {Types::DeleteAccountSubscriptionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_subscription({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountSubscription AWS API Documentation
    #
    # @overload delete_account_subscription(params = {})
    # @param [Hash] params ({})
    def delete_account_subscription(params = {}, options = {})
      req = build_request(:delete_account_subscription, params)
      req.send_request(options)
    end

    # Deletes an analysis from Amazon QuickSight. You can optionally include
    # a recovery window during which you can restore the analysis. If you
    # don't specify a recovery window value, the operation defaults to 30
    # days. Amazon QuickSight attaches a `DeletionTime` stamp to the
    # response that specifies the end of the recovery window. At the end of
    # the recovery window, Amazon QuickSight deletes the analysis
    # permanently.
    #
    # At any time before recovery window ends, you can use the
    # `RestoreAnalysis` API operation to remove the `DeletionTime` stamp and
    # cancel the deletion of the analysis. The analysis remains visible in
    # the API until it's deleted, so you can describe it but you can't
    # make a template from it.
    #
    # An analysis that's scheduled for deletion isn't accessible in the
    # Amazon QuickSight console. To access it in the console, restore it.
    # Deleting an analysis doesn't delete the dashboards that you publish
    # from it.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account where you want to delete an
    #   analysis.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis that you're deleting.
    #
    # @option params [Integer] :recovery_window_in_days
    #   A value that specifies the number of days that Amazon QuickSight waits
    #   before it deletes the analysis. You can't use this parameter with the
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
    #     analysis_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're deleting.
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
    #     dashboard_id: "ShortRestrictiveResourceId", # required
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
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
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

    # Deletes the dataset refresh properties of the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @return [Types::DeleteDataSetRefreshPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSetRefreshPropertiesResponse#request_id #request_id} => String
    #   * {Types::DeleteDataSetRefreshPropertiesResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_set_refresh_properties({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSetRefreshProperties AWS API Documentation
    #
    # @overload delete_data_set_refresh_properties(params = {})
    # @param [Hash] params ({})
    def delete_data_set_refresh_properties(params = {}, options = {})
      req = build_request(:delete_data_set_refresh_properties, params)
      req.send_request(options)
    end

    # Deletes the data source permanently. This operation breaks all the
    # datasets that reference the deleted data source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
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

    # Deletes an empty folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @return [Types::DeleteFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFolderResponse#status #status} => Integer
    #   * {Types::DeleteFolderResponse#arn #arn} => String
    #   * {Types::DeleteFolderResponse#folder_id #folder_id} => String
    #   * {Types::DeleteFolderResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.folder_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteFolder AWS API Documentation
    #
    # @overload delete_folder(params = {})
    # @param [Hash] params ({})
    def delete_folder(params = {}, options = {})
      req = build_request(:delete_folder, params)
      req.send_request(options)
    end

    # Removes an asset, such as a dashboard, analysis, or dataset, from a
    # folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The Folder ID.
    #
    # @option params [required, String] :member_id
    #   The ID of the asset (the dashboard, analysis, or dataset) that you
    #   want to delete.
    #
    # @option params [required, String] :member_type
    #   The type of the member, including `DASHBOARD`, `ANALYSIS`, and
    #   `DATASET`
    #
    # @return [Types::DeleteFolderMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFolderMembershipResponse#status #status} => Integer
    #   * {Types::DeleteFolderMembershipResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder_membership({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     member_id: "RestrictiveResourceId", # required
    #     member_type: "DASHBOARD", # required, accepts DASHBOARD, ANALYSIS, DATASET
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteFolderMembership AWS API Documentation
    #
    # @overload delete_folder_membership(params = {})
    # @param [Hash] params ({})
    def delete_folder_membership(params = {}, options = {})
      req = build_request(:delete_folder_membership, params)
      req.send_request(options)
    end

    # Removes a user group from Amazon QuickSight.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want to delete.
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
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want to remove a user from.
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
    #   The Amazon Web Services account ID where you want to delete the IAM
    #   policy assignment.
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
    #   The ID for the Amazon Web Services account that you want to delete the
    #   Amazon QuickSight namespace from.
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

    # Deletes a refresh schedule from a dataset.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :schedule_id
    #   The ID of the refresh schedule.
    #
    # @return [Types::DeleteRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRefreshScheduleResponse#status #status} => Integer
    #   * {Types::DeleteRefreshScheduleResponse#request_id #request_id} => String
    #   * {Types::DeleteRefreshScheduleResponse#schedule_id #schedule_id} => String
    #   * {Types::DeleteRefreshScheduleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_refresh_schedule({
    #     data_set_id: "ResourceId", # required
    #     aws_account_id: "AwsAccountId", # required
    #     schedule_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.schedule_id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteRefreshSchedule AWS API Documentation
    #
    # @overload delete_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def delete_refresh_schedule(params = {}, options = {})
      req = build_request(:delete_refresh_schedule, params)
      req.send_request(options)
    end

    # Deletes a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're deleting.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the item to
    #   delete.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the theme that
    #   you're deleting.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the theme
    #   alias to delete.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
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

    # Deletes a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic that
    #   you want to delete.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to delete. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::DeleteTopicResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTopicResponse#arn #arn} => String
    #   * {Types::DeleteTopicResponse#topic_id #topic_id} => String
    #   * {Types::DeleteTopicResponse#request_id #request_id} => String
    #   * {Types::DeleteTopicResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.topic_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTopic AWS API Documentation
    #
    # @overload delete_topic(params = {})
    # @param [Hash] params ({})
    def delete_topic(params = {}, options = {})
      req = build_request(:delete_topic, params)
      req.send_request(options)
    end

    # Deletes a topic refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :dataset_id
    #   The ID of the dataset.
    #
    # @return [Types::DeleteTopicRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTopicRefreshScheduleResponse#topic_id #topic_id} => String
    #   * {Types::DeleteTopicRefreshScheduleResponse#topic_arn #topic_arn} => String
    #   * {Types::DeleteTopicRefreshScheduleResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DeleteTopicRefreshScheduleResponse#status #status} => Integer
    #   * {Types::DeleteTopicRefreshScheduleResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     dataset_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.dataset_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTopicRefreshSchedule AWS API Documentation
    #
    # @overload delete_topic_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def delete_topic_refresh_schedule(params = {}, options = {})
      req = build_request(:delete_topic_refresh_schedule, params)
      req.send_request(options)
    end

    # Deletes the Amazon QuickSight user that is associated with the
    # identity of the IAM user or role that's making the call. The IAM user
    # isn't deleted as a result of this call.
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
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
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
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

    # Deletes a VPC connection.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account where you want to
    #   delete a VPC connection.
    #
    # @option params [required, String] :vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon Web
    #   Services account.
    #
    # @return [Types::DeleteVPCConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVPCConnectionResponse#arn #arn} => String
    #   * {Types::DeleteVPCConnectionResponse#vpc_connection_id #vpc_connection_id} => String
    #   * {Types::DeleteVPCConnectionResponse#deletion_status #deletion_status} => String
    #   * {Types::DeleteVPCConnectionResponse#availability_status #availability_status} => String
    #   * {Types::DeleteVPCConnectionResponse#request_id #request_id} => String
    #   * {Types::DeleteVPCConnectionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_connection({
    #     aws_account_id: "AwsAccountId", # required
    #     vpc_connection_id: "VPCConnectionResourceIdUnrestricted", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.vpc_connection_id #=> String
    #   resp.deletion_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteVPCConnection AWS API Documentation
    #
    # @overload delete_vpc_connection(params = {})
    # @param [Hash] params ({})
    def delete_vpc_connection(params = {}, options = {})
      req = build_request(:delete_vpc_connection, params)
      req.send_request(options)
    end

    # Describes the customizations associated with the provided Amazon Web
    # Services account and Amazon Amazon QuickSight namespace in an Amazon
    # Web Services Region. The Amazon QuickSight console evaluates which
    # customizations to apply by running this API operation with the
    # `Resolved` flag included.
    #
    # To determine what customizations display when you run this command, it
    # can help to visualize the relationship of the entities involved.
    #
    # * `Amazon Web Services account` - The Amazon Web Services account
    #   exists at the top of the hierarchy. It has the potential to use all
    #   of the Amazon Web Services Regions and Amazon Web Services Services.
    #   When you subscribe to Amazon QuickSight, you choose one Amazon Web
    #   Services Region to use as your home Region. That's where your free
    #   SPICE capacity is located. You can use Amazon QuickSight in any
    #   supported Amazon Web Services Region.
    #
    # * `Amazon Web Services Region` - In each Amazon Web Services Region
    #   where you sign in to Amazon QuickSight at least once, Amazon
    #   QuickSight acts as a separate instance of the same service. If you
    #   have a user directory, it resides in us-east-1, which is the US East
    #   (N. Virginia). Generally speaking, these users have access to Amazon
    #   QuickSight in any Amazon Web Services Region, unless they are
    #   constrained to a namespace.
    #
    #   To run the command in a different Amazon Web Services Region, you
    #   change your Region settings. If you're using the CLI, you can use
    #   one of the following options:
    #
    #   * Use [command line options][1].
    #
    #   * Use [named profiles][2].
    #
    #   * Run `aws configure` to change your default Amazon Web Services
    #     Region. Use Enter to key the same settings for your keys. For more
    #     information, see [Configuring the CLI][3].
    #
    # * `Namespace` - A QuickSight namespace is a partition that contains
    #   users and assets (data sources, datasets, dashboards, and so on). To
    #   access assets that are in a specific namespace, users and groups
    #   must also be part of the same namespace. People who share a
    #   namespace are completely isolated from users and assets in other
    #   namespaces, even if they are in the same Amazon Web Services account
    #   and Amazon Web Services Region.
    #
    # * `Applied customizations` - Within an Amazon Web Services Region, a
    #   set of Amazon QuickSight customizations can apply to an Amazon Web
    #   Services account or to a namespace. Settings that you apply to a
    #   namespace override settings that you apply to an Amazon Web Services
    #   account. All settings are isolated to a single Amazon Web Services
    #   Region. To apply them in other Amazon Web Services Regions, run the
    #   `CreateAccountCustomization` command in each Amazon Web Services
    #   Region where you want to apply the same customizations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html
    # [2]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
    # [3]: https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to describe
    #   Amazon QuickSight customizations for.
    #
    # @option params [String] :namespace
    #   The Amazon QuickSight namespace that you want to describe Amazon
    #   QuickSight customizations for.
    #
    # @option params [Boolean] :resolved
    #   The `Resolved` flag works with the other parameters to determine which
    #   view of Amazon QuickSight customizations is returned. You can add this
    #   flag to your command to use the same view that Amazon QuickSight uses
    #   to identify which customizations to apply to the console. Omit this
    #   flag, or set it to `no-resolved`, to reveal customizations that are
    #   configured at different levels.
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
    #   resp.account_customization.default_email_customization_template #=> String
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

    # Describes the settings that were used when your Amazon QuickSight
    # subscription was first created in this Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the settings
    #   that you want to list.
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
    #   resp.account_settings.edition #=> String, one of "STANDARD", "ENTERPRISE", "ENTERPRISE_AND_Q"
    #   resp.account_settings.default_namespace #=> String
    #   resp.account_settings.notification_email #=> String
    #   resp.account_settings.public_sharing_enabled #=> Boolean
    #   resp.account_settings.termination_protection_enabled #=> Boolean
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

    # Use the DescribeAccountSubscription operation to receive a description
    # of an Amazon QuickSight account's subscription. A successful API call
    # returns an `AccountInfo` object that includes an account's name,
    # subscription status, authentication type, edition, and notification
    # email address.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID associated with your Amazon
    #   QuickSight account.
    #
    # @return [Types::DescribeAccountSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountSubscriptionResponse#account_info #account_info} => Types::AccountInfo
    #   * {Types::DescribeAccountSubscriptionResponse#status #status} => Integer
    #   * {Types::DescribeAccountSubscriptionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_subscription({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_info.account_name #=> String
    #   resp.account_info.edition #=> String, one of "STANDARD", "ENTERPRISE", "ENTERPRISE_AND_Q"
    #   resp.account_info.notification_email #=> String
    #   resp.account_info.authentication_type #=> String
    #   resp.account_info.account_subscription_status #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSubscription AWS API Documentation
    #
    # @overload describe_account_subscription(params = {})
    # @param [Hash] params ({})
    def describe_account_subscription(params = {}, options = {})
      req = build_request(:describe_account_subscription, params)
      req.send_request(options)
    end

    # Provides a summary of the metadata for an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis.
    #   You must be using the Amazon Web Services account that the analysis is
    #   in.
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
    #     analysis_id: "ShortRestrictiveResourceId", # required
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
    #   resp.analysis.errors[0].violated_entities #=> Array
    #   resp.analysis.errors[0].violated_entities[0].path #=> String
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

    # Provides a detailed description of the definition of an analysis.
    #
    # <note markdown="1"> If you do not need to know details about the content of an Analysis,
    # for instance if you are trying to check the status of a recently
    # created or updated Analysis, use the [ `DescribeAnalysis` ][1]
    # instead.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeAnalysis.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis.
    #   You must be using the Amazon Web Services account that the analysis is
    #   in.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis that you're describing. The ID is part of the
    #   URL of the analysis.
    #
    # @return [Types::DescribeAnalysisDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnalysisDefinitionResponse#analysis_id #analysis_id} => String
    #   * {Types::DescribeAnalysisDefinitionResponse#name #name} => String
    #   * {Types::DescribeAnalysisDefinitionResponse#errors #errors} => Array&lt;Types::AnalysisError&gt;
    #   * {Types::DescribeAnalysisDefinitionResponse#resource_status #resource_status} => String
    #   * {Types::DescribeAnalysisDefinitionResponse#theme_arn #theme_arn} => String
    #   * {Types::DescribeAnalysisDefinitionResponse#definition #definition} => Types::AnalysisDefinition
    #   * {Types::DescribeAnalysisDefinitionResponse#status #status} => Integer
    #   * {Types::DescribeAnalysisDefinitionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis_definition({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisDefinition AWS API Documentation
    #
    # @overload describe_analysis_definition(params = {})
    # @param [Hash] params ({})
    def describe_analysis_definition(params = {}, options = {})
      req = build_request(:describe_analysis_definition, params)
      req.send_request(options)
    end

    # Provides the read and write permissions for an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis
    #   whose permissions you're describing. You must be using the Amazon Web
    #   Services account that the analysis is in.
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
    #     analysis_id: "ShortRestrictiveResourceId", # required
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

    # Describes an existing export job.
    #
    # Poll job descriptions after a job starts to know the status of the
    # job. When a job succeeds, a URL is provided to download the exported
    # assets' data from. Download URLs are valid for five minutes after
    # they are generated. You can call the `DescribeAssetBundleExportJob`
    # API for a new download URL as needed.
    #
    # Job descriptions are available for 14 days after the job starts.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account the export job is executed
    #   in.
    #
    # @option params [required, String] :asset_bundle_export_job_id
    #   The ID of the job that you want described. The job ID is set when you
    #   start a new job with a `StartAssetBundleExportJob` API call.
    #
    # @return [Types::DescribeAssetBundleExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetBundleExportJobResponse#job_status #job_status} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#download_url #download_url} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#errors #errors} => Array&lt;Types::AssetBundleExportJobError&gt;
    #   * {Types::DescribeAssetBundleExportJobResponse#arn #arn} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#created_time #created_time} => Time
    #   * {Types::DescribeAssetBundleExportJobResponse#asset_bundle_export_job_id #asset_bundle_export_job_id} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#resource_arns #resource_arns} => Array&lt;String&gt;
    #   * {Types::DescribeAssetBundleExportJobResponse#include_all_dependencies #include_all_dependencies} => Boolean
    #   * {Types::DescribeAssetBundleExportJobResponse#export_format #export_format} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#cloud_formation_override_property_configuration #cloud_formation_override_property_configuration} => Types::AssetBundleCloudFormationOverridePropertyConfiguration
    #   * {Types::DescribeAssetBundleExportJobResponse#request_id #request_id} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_bundle_export_job({
    #     aws_account_id: "AwsAccountId", # required
    #     asset_bundle_export_job_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "QUEUED_FOR_IMMEDIATE_EXECUTION", "IN_PROGRESS", "SUCCESSFUL", "FAILED"
    #   resp.download_url #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].arn #=> String
    #   resp.errors[0].type #=> String
    #   resp.errors[0].message #=> String
    #   resp.arn #=> String
    #   resp.created_time #=> Time
    #   resp.asset_bundle_export_job_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.resource_arns #=> Array
    #   resp.resource_arns[0] #=> String
    #   resp.include_all_dependencies #=> Boolean
    #   resp.export_format #=> String, one of "CLOUDFORMATION_JSON", "QUICKSIGHT_JSON"
    #   resp.cloud_formation_override_property_configuration.resource_id_override_configuration.prefix_for_all_resources #=> Boolean
    #   resp.cloud_formation_override_property_configuration.vpc_connections #=> Array
    #   resp.cloud_formation_override_property_configuration.vpc_connections[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.vpc_connections[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.vpc_connections[0].properties[0] #=> String, one of "Name", "DnsResolvers", "RoleArn"
    #   resp.cloud_formation_override_property_configuration.refresh_schedules #=> Array
    #   resp.cloud_formation_override_property_configuration.refresh_schedules[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.refresh_schedules[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.refresh_schedules[0].properties[0] #=> String, one of "StartAfterDateTime"
    #   resp.cloud_formation_override_property_configuration.data_sources #=> Array
    #   resp.cloud_formation_override_property_configuration.data_sources[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.data_sources[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.data_sources[0].properties[0] #=> String, one of "Name", "DisableSsl", "SecretArn", "Username", "Password", "Domain", "WorkGroup", "Host", "Port", "Database", "DataSetName", "Catalog", "InstanceId", "ClusterId", "ManifestFileLocation", "Warehouse", "RoleArn"
    #   resp.cloud_formation_override_property_configuration.data_sets #=> Array
    #   resp.cloud_formation_override_property_configuration.data_sets[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.data_sets[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.data_sets[0].properties[0] #=> String, one of "Name"
    #   resp.cloud_formation_override_property_configuration.themes #=> Array
    #   resp.cloud_formation_override_property_configuration.themes[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.themes[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.themes[0].properties[0] #=> String, one of "Name"
    #   resp.cloud_formation_override_property_configuration.analyses #=> Array
    #   resp.cloud_formation_override_property_configuration.analyses[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.analyses[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.analyses[0].properties[0] #=> String, one of "Name"
    #   resp.cloud_formation_override_property_configuration.dashboards #=> Array
    #   resp.cloud_formation_override_property_configuration.dashboards[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.dashboards[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.dashboards[0].properties[0] #=> String, one of "Name"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAssetBundleExportJob AWS API Documentation
    #
    # @overload describe_asset_bundle_export_job(params = {})
    # @param [Hash] params ({})
    def describe_asset_bundle_export_job(params = {}, options = {})
      req = build_request(:describe_asset_bundle_export_job, params)
      req.send_request(options)
    end

    # Describes an existing import job.
    #
    # Poll job descriptions after starting a job to know when it has
    # succeeded or failed. Job descriptions are available for 14 days after
    # job starts.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account the import job was executed
    #   in.
    #
    # @option params [required, String] :asset_bundle_import_job_id
    #   The ID of the job. The job ID is set when you start a new job with a
    #   `StartAssetBundleImportJob` API call.
    #
    # @return [Types::DescribeAssetBundleImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetBundleImportJobResponse#job_status #job_status} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#errors #errors} => Array&lt;Types::AssetBundleImportJobError&gt;
    #   * {Types::DescribeAssetBundleImportJobResponse#rollback_errors #rollback_errors} => Array&lt;Types::AssetBundleImportJobError&gt;
    #   * {Types::DescribeAssetBundleImportJobResponse#arn #arn} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#created_time #created_time} => Time
    #   * {Types::DescribeAssetBundleImportJobResponse#asset_bundle_import_job_id #asset_bundle_import_job_id} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#asset_bundle_import_source #asset_bundle_import_source} => Types::AssetBundleImportSourceDescription
    #   * {Types::DescribeAssetBundleImportJobResponse#override_parameters #override_parameters} => Types::AssetBundleImportJobOverrideParameters
    #   * {Types::DescribeAssetBundleImportJobResponse#failure_action #failure_action} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#request_id #request_id} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_bundle_import_job({
    #     aws_account_id: "AwsAccountId", # required
    #     asset_bundle_import_job_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "QUEUED_FOR_IMMEDIATE_EXECUTION", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "FAILED_ROLLBACK_IN_PROGRESS", "FAILED_ROLLBACK_COMPLETED", "FAILED_ROLLBACK_ERROR"
    #   resp.errors #=> Array
    #   resp.errors[0].arn #=> String
    #   resp.errors[0].type #=> String
    #   resp.errors[0].message #=> String
    #   resp.rollback_errors #=> Array
    #   resp.rollback_errors[0].arn #=> String
    #   resp.rollback_errors[0].type #=> String
    #   resp.rollback_errors[0].message #=> String
    #   resp.arn #=> String
    #   resp.created_time #=> Time
    #   resp.asset_bundle_import_job_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.asset_bundle_import_source.body #=> String
    #   resp.asset_bundle_import_source.s3_uri #=> String
    #   resp.override_parameters.resource_id_override_configuration.prefix_for_all_resources #=> String
    #   resp.override_parameters.vpc_connections #=> Array
    #   resp.override_parameters.vpc_connections[0].vpc_connection_id #=> String
    #   resp.override_parameters.vpc_connections[0].name #=> String
    #   resp.override_parameters.vpc_connections[0].subnet_ids #=> Array
    #   resp.override_parameters.vpc_connections[0].subnet_ids[0] #=> String
    #   resp.override_parameters.vpc_connections[0].security_group_ids #=> Array
    #   resp.override_parameters.vpc_connections[0].security_group_ids[0] #=> String
    #   resp.override_parameters.vpc_connections[0].dns_resolvers #=> Array
    #   resp.override_parameters.vpc_connections[0].dns_resolvers[0] #=> String
    #   resp.override_parameters.vpc_connections[0].role_arn #=> String
    #   resp.override_parameters.refresh_schedules #=> Array
    #   resp.override_parameters.refresh_schedules[0].data_set_id #=> String
    #   resp.override_parameters.refresh_schedules[0].schedule_id #=> String
    #   resp.override_parameters.refresh_schedules[0].start_after_date_time #=> Time
    #   resp.override_parameters.data_sources #=> Array
    #   resp.override_parameters.data_sources[0].data_source_id #=> String
    #   resp.override_parameters.data_sources[0].name #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.athena_parameters.work_group #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.athena_parameters.role_arn #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.maria_db_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.maria_db_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.my_sql_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.my_sql_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.oracle_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.oracle_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.oracle_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.presto_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.presto_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.presto_parameters.catalog #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.rds_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.s3_parameters.role_arn #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.spark_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.spark_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.sql_server_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.sql_server_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.teradata_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.teradata_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.twitter_parameters.query #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.amazon_open_search_parameters.domain #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.exasol_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.exasol_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.databricks_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.databricks_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.databricks_parameters.sql_endpoint_path #=> String
    #   resp.override_parameters.data_sources[0].vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.override_parameters.data_sources[0].ssl_properties.disable_ssl #=> Boolean
    #   resp.override_parameters.data_sources[0].credentials.credential_pair.username #=> String
    #   resp.override_parameters.data_sources[0].credentials.credential_pair.password #=> String
    #   resp.override_parameters.data_sources[0].credentials.secret_arn #=> String
    #   resp.override_parameters.data_sets #=> Array
    #   resp.override_parameters.data_sets[0].data_set_id #=> String
    #   resp.override_parameters.data_sets[0].name #=> String
    #   resp.override_parameters.themes #=> Array
    #   resp.override_parameters.themes[0].theme_id #=> String
    #   resp.override_parameters.themes[0].name #=> String
    #   resp.override_parameters.analyses #=> Array
    #   resp.override_parameters.analyses[0].analysis_id #=> String
    #   resp.override_parameters.analyses[0].name #=> String
    #   resp.override_parameters.dashboards #=> Array
    #   resp.override_parameters.dashboards[0].dashboard_id #=> String
    #   resp.override_parameters.dashboards[0].name #=> String
    #   resp.failure_action #=> String, one of "DO_NOTHING", "ROLLBACK"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAssetBundleImportJob AWS API Documentation
    #
    # @overload describe_asset_bundle_import_job(params = {})
    # @param [Hash] params ({})
    def describe_asset_bundle_import_job(params = {}, options = {})
      req = build_request(:describe_asset_bundle_import_job, params)
      req.send_request(options)
    end

    # Provides a summary for a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're describing.
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
    #     dashboard_id: "ShortRestrictiveResourceId", # required
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
    #   resp.dashboard.version.errors[0].violated_entities #=> Array
    #   resp.dashboard.version.errors[0].violated_entities[0].path #=> String
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

    # Provides a detailed description of the definition of a dashboard.
    #
    # <note markdown="1"> If you do not need to know details about the content of a dashboard,
    # for instance if you are trying to check the status of a recently
    # created or updated dashboard, use the [ `DescribeDashboard` ][1]
    # instead.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeDashboard.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're describing.
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
    # @return [Types::DescribeDashboardDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardDefinitionResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DescribeDashboardDefinitionResponse#errors #errors} => Array&lt;Types::DashboardError&gt;
    #   * {Types::DescribeDashboardDefinitionResponse#name #name} => String
    #   * {Types::DescribeDashboardDefinitionResponse#resource_status #resource_status} => String
    #   * {Types::DescribeDashboardDefinitionResponse#theme_arn #theme_arn} => String
    #   * {Types::DescribeDashboardDefinitionResponse#definition #definition} => Types::DashboardVersionDefinition
    #   * {Types::DescribeDashboardDefinitionResponse#status #status} => Integer
    #   * {Types::DescribeDashboardDefinitionResponse#request_id #request_id} => String
    #   * {Types::DescribeDashboardDefinitionResponse#dashboard_publish_options #dashboard_publish_options} => Types::DashboardPublishOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard_definition({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardDefinition AWS API Documentation
    #
    # @overload describe_dashboard_definition(params = {})
    # @param [Hash] params ({})
    def describe_dashboard_definition(params = {}, options = {})
      req = build_request(:describe_dashboard_definition, params)
      req.send_request(options)
    end

    # Describes read and write permissions for a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're describing permissions for.
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
    #   * {Types::DescribeDashboardPermissionsResponse#link_sharing_configuration #link_sharing_configuration} => Types::LinkSharingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
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
    #   resp.link_sharing_configuration.permissions #=> Array
    #   resp.link_sharing_configuration.permissions[0].principal #=> String
    #   resp.link_sharing_configuration.permissions[0].actions #=> Array
    #   resp.link_sharing_configuration.permissions[0].actions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardPermissions AWS API Documentation
    #
    # @overload describe_dashboard_permissions(params = {})
    # @param [Hash] params ({})
    def describe_dashboard_permissions(params = {}, options = {})
      req = build_request(:describe_dashboard_permissions, params)
      req.send_request(options)
    end

    # Describes a dataset. This operation doesn't support datasets that
    # include uploaded files as a source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
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
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.catalog #=> String
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
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.tags[0].column_description.text #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].untag_column_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].untag_column_operation.tag_names #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].untag_column_operation.tag_names[0] #=> String, one of "COLUMN_GEOGRAPHIC_ROLE", "COLUMN_DESCRIPTION"
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.parameter_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_parameter_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.string_static_values #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.string_static_values[0] #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.decimal_static_values #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.decimal_static_values[0] #=> Float
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.date_time_static_values #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.date_time_static_values[0] #=> Time
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.integer_static_values #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.integer_static_values[0] #=> Integer
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.left_operand #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.right_operand #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.left_join_key_properties.unique_key #=> Boolean
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.right_join_key_properties.unique_key #=> Boolean
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.type #=> String, one of "INNER", "OUTER", "LEFT", "RIGHT"
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.on_clause #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.physical_table_id #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.data_set_arn #=> String
    #   resp.data_set.output_columns #=> Array
    #   resp.data_set.output_columns[0].name #=> String
    #   resp.data_set.output_columns[0].description #=> String
    #   resp.data_set.output_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME"
    #   resp.data_set.import_mode #=> String, one of "SPICE", "DIRECT_QUERY"
    #   resp.data_set.consumed_spice_capacity_in_bytes #=> Integer
    #   resp.data_set.column_groups #=> Array
    #   resp.data_set.column_groups[0].geo_spatial_column_group.name #=> String
    #   resp.data_set.column_groups[0].geo_spatial_column_group.country_code #=> String, one of "US"
    #   resp.data_set.column_groups[0].geo_spatial_column_group.columns #=> Array
    #   resp.data_set.column_groups[0].geo_spatial_column_group.columns[0] #=> String
    #   resp.data_set.field_folders #=> Hash
    #   resp.data_set.field_folders["FieldFolderPath"].description #=> String
    #   resp.data_set.field_folders["FieldFolderPath"].columns #=> Array
    #   resp.data_set.field_folders["FieldFolderPath"].columns[0] #=> String
    #   resp.data_set.row_level_permission_data_set.namespace #=> String
    #   resp.data_set.row_level_permission_data_set.arn #=> String
    #   resp.data_set.row_level_permission_data_set.permission_policy #=> String, one of "GRANT_ACCESS", "DENY_ACCESS"
    #   resp.data_set.row_level_permission_data_set.format_version #=> String, one of "VERSION_1", "VERSION_2"
    #   resp.data_set.row_level_permission_data_set.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_set.row_level_permission_tag_configuration.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules #=> Array
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules[0].tag_key #=> String
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules[0].column_name #=> String
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules[0].tag_multi_value_delimiter #=> String
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules[0].match_all_value #=> String
    #   resp.data_set.row_level_permission_tag_configuration.tag_rule_configurations #=> Array
    #   resp.data_set.row_level_permission_tag_configuration.tag_rule_configurations[0] #=> Array
    #   resp.data_set.row_level_permission_tag_configuration.tag_rule_configurations[0][0] #=> String
    #   resp.data_set.column_level_permission_rules #=> Array
    #   resp.data_set.column_level_permission_rules[0].principals #=> Array
    #   resp.data_set.column_level_permission_rules[0].principals[0] #=> String
    #   resp.data_set.column_level_permission_rules[0].column_names #=> Array
    #   resp.data_set.column_level_permission_rules[0].column_names[0] #=> String
    #   resp.data_set.data_set_usage_configuration.disable_use_as_direct_query_source #=> Boolean
    #   resp.data_set.data_set_usage_configuration.disable_use_as_imported_source #=> Boolean
    #   resp.data_set.dataset_parameters #=> Array
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.id #=> String
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.name #=> String
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.value_type #=> String, one of "MULTI_VALUED", "SINGLE_VALUED"
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.default_values.static_values #=> Array
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.default_values.static_values[0] #=> String
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.id #=> String
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.name #=> String
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.value_type #=> String, one of "MULTI_VALUED", "SINGLE_VALUED"
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.default_values.static_values #=> Array
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.default_values.static_values[0] #=> Float
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.id #=> String
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.name #=> String
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.value_type #=> String, one of "MULTI_VALUED", "SINGLE_VALUED"
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.default_values.static_values #=> Array
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.default_values.static_values[0] #=> Integer
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.id #=> String
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.name #=> String
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.value_type #=> String, one of "MULTI_VALUED", "SINGLE_VALUED"
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.default_values.static_values #=> Array
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.default_values.static_values[0] #=> Time
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
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
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

    # Describes the refresh properties of a dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @return [Types::DescribeDataSetRefreshPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSetRefreshPropertiesResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSetRefreshPropertiesResponse#status #status} => Integer
    #   * {Types::DescribeDataSetRefreshPropertiesResponse#data_set_refresh_properties #data_set_refresh_properties} => Types::DataSetRefreshProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set_refresh_properties({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.data_set_refresh_properties.refresh_configuration.incremental_refresh.lookback_window.column_name #=> String
    #   resp.data_set_refresh_properties.refresh_configuration.incremental_refresh.lookback_window.size #=> Integer
    #   resp.data_set_refresh_properties.refresh_configuration.incremental_refresh.lookback_window.size_unit #=> String, one of "HOUR", "DAY", "WEEK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetRefreshProperties AWS API Documentation
    #
    # @overload describe_data_set_refresh_properties(params = {})
    # @param [Hash] params ({})
    def describe_data_set_refresh_properties(params = {}, options = {})
      req = build_request(:describe_data_set_refresh_properties, params)
      req.send_request(options)
    end

    # Describes a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
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
    #   resp.data_source.type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL", "DATABRICKS"
    #   resp.data_source.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.data_source.created_time #=> Time
    #   resp.data_source.last_updated_time #=> Time
    #   resp.data_source.data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_source.data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data_source.data_source_parameters.athena_parameters.role_arn #=> String
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
    #   resp.data_source.data_source_parameters.oracle_parameters.host #=> String
    #   resp.data_source.data_source_parameters.oracle_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.oracle_parameters.database #=> String
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
    #   resp.data_source.data_source_parameters.s3_parameters.role_arn #=> String
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
    #   resp.data_source.data_source_parameters.amazon_open_search_parameters.domain #=> String
    #   resp.data_source.data_source_parameters.exasol_parameters.host #=> String
    #   resp.data_source.data_source_parameters.exasol_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.databricks_parameters.host #=> String
    #   resp.data_source.data_source_parameters.databricks_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.databricks_parameters.sql_endpoint_path #=> String
    #   resp.data_source.alternate_data_source_parameters #=> Array
    #   resp.data_source.alternate_data_source_parameters[0].amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_source.alternate_data_source_parameters[0].athena_parameters.work_group #=> String
    #   resp.data_source.alternate_data_source_parameters[0].athena_parameters.role_arn #=> String
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
    #   resp.data_source.alternate_data_source_parameters[0].oracle_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].oracle_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].oracle_parameters.database #=> String
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
    #   resp.data_source.alternate_data_source_parameters[0].s3_parameters.role_arn #=> String
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
    #   resp.data_source.alternate_data_source_parameters[0].amazon_open_search_parameters.domain #=> String
    #   resp.data_source.alternate_data_source_parameters[0].exasol_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].exasol_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].databricks_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].databricks_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].databricks_parameters.sql_endpoint_path #=> String
    #   resp.data_source.vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_source.ssl_properties.disable_ssl #=> Boolean
    #   resp.data_source.error_info.type #=> String, one of "ACCESS_DENIED", "COPY_SOURCE_NOT_FOUND", "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"
    #   resp.data_source.error_info.message #=> String
    #   resp.data_source.secret_arn #=> String
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
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
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

    # Describes a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @return [Types::DescribeFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFolderResponse#status #status} => Integer
    #   * {Types::DescribeFolderResponse#folder #folder} => Types::Folder
    #   * {Types::DescribeFolderResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder.folder_id #=> String
    #   resp.folder.arn #=> String
    #   resp.folder.name #=> String
    #   resp.folder.folder_type #=> String, one of "SHARED"
    #   resp.folder.folder_path #=> Array
    #   resp.folder.folder_path[0] #=> String
    #   resp.folder.created_time #=> Time
    #   resp.folder.last_updated_time #=> Time
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolder AWS API Documentation
    #
    # @overload describe_folder(params = {})
    # @param [Hash] params ({})
    def describe_folder(params = {}, options = {})
      req = build_request(:describe_folder, params)
      req.send_request(options)
    end

    # Describes permissions for a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @return [Types::DescribeFolderPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFolderPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeFolderPermissionsResponse#folder_id #folder_id} => String
    #   * {Types::DescribeFolderPermissionsResponse#arn #arn} => String
    #   * {Types::DescribeFolderPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeFolderPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_id #=> String
    #   resp.arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderPermissions AWS API Documentation
    #
    # @overload describe_folder_permissions(params = {})
    # @param [Hash] params ({})
    def describe_folder_permissions(params = {}, options = {})
      req = build_request(:describe_folder_permissions, params)
      req.send_request(options)
    end

    # Describes the folder resolved permissions. Permissions consists of
    # both folder direct permissions and the inherited permissions from the
    # ancestor folders.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @return [Types::DescribeFolderResolvedPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFolderResolvedPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeFolderResolvedPermissionsResponse#folder_id #folder_id} => String
    #   * {Types::DescribeFolderResolvedPermissionsResponse#arn #arn} => String
    #   * {Types::DescribeFolderResolvedPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeFolderResolvedPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder_resolved_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_id #=> String
    #   resp.arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderResolvedPermissions AWS API Documentation
    #
    # @overload describe_folder_resolved_permissions(params = {})
    # @param [Hash] params ({})
    def describe_folder_resolved_permissions(params = {}, options = {})
      req = build_request(:describe_folder_resolved_permissions, params)
      req.send_request(options)
    end

    # Returns an Amazon QuickSight group's description and Amazon Resource
    # Name (ARN).
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want described.
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

    # Use the `DescribeGroupMembership` operation to determine if a user is
    # a member of the specified group. If the user exists and is a member of
    # the specified group, an associated `GroupMember` object is returned.
    #
    # @option params [required, String] :member_name
    #   The user name of the user that you want to search for.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to search.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that includes the group you are searching within.
    #
    # @return [Types::DescribeGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupMembershipResponse#group_member #group_member} => Types::GroupMember
    #   * {Types::DescribeGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::DescribeGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group_membership({
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupMembership AWS API Documentation
    #
    # @overload describe_group_membership(params = {})
    # @param [Hash] params ({})
    def describe_group_membership(params = {}, options = {})
      req = build_request(:describe_group_membership, params)
      req.send_request(options)
    end

    # Describes an existing IAM policy assignment, as specified by the
    # assignment name.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the assignment
    #   that you want to describe.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment, also called a rule.
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
    #   The Amazon Web Services account ID.
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
    #     data_set_id: "String", # required
    #     ingestion_id: "IngestionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion.arn #=> String
    #   resp.ingestion.ingestion_id #=> String
    #   resp.ingestion.ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.ingestion.error_info.type #=> String, one of "FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR", "REFRESH_SUPPRESSED_BY_EDIT", "PERMISSION_NOT_FOUND", "ELASTICSEARCH_CURSOR_NOT_ENABLED", "CURSOR_NOT_ENABLED", "DUPLICATE_COLUMN_NAMES_FOUND"
    #   resp.ingestion.error_info.message #=> String
    #   resp.ingestion.row_info.rows_ingested #=> Integer
    #   resp.ingestion.row_info.rows_dropped #=> Integer
    #   resp.ingestion.row_info.total_rows_in_dataset #=> Integer
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

    # Provides a summary and status of IP rules.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the IP rules.
    #
    # @return [Types::DescribeIpRestrictionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIpRestrictionResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeIpRestrictionResponse#ip_restriction_rule_map #ip_restriction_rule_map} => Hash&lt;String,String&gt;
    #   * {Types::DescribeIpRestrictionResponse#enabled #enabled} => Boolean
    #   * {Types::DescribeIpRestrictionResponse#request_id #request_id} => String
    #   * {Types::DescribeIpRestrictionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ip_restriction({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.ip_restriction_rule_map #=> Hash
    #   resp.ip_restriction_rule_map["CIDR"] #=> String
    #   resp.enabled #=> Boolean
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIpRestriction AWS API Documentation
    #
    # @overload describe_ip_restriction(params = {})
    # @param [Hash] params ({})
    def describe_ip_restriction(params = {}, options = {})
      req = build_request(:describe_ip_restriction, params)
      req.send_request(options)
    end

    # Describes the current namespace.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the Amazon
    #   QuickSight namespace that you want to describe.
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

    # Provides a summary of a refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :schedule_id
    #   The ID of the refresh schedule.
    #
    # @return [Types::DescribeRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRefreshScheduleResponse#refresh_schedule #refresh_schedule} => Types::RefreshSchedule
    #   * {Types::DescribeRefreshScheduleResponse#status #status} => Integer
    #   * {Types::DescribeRefreshScheduleResponse#request_id #request_id} => String
    #   * {Types::DescribeRefreshScheduleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     schedule_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_schedule.schedule_id #=> String
    #   resp.refresh_schedule.schedule_frequency.interval #=> String, one of "MINUTE15", "MINUTE30", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.refresh_schedule.schedule_frequency.refresh_on_day.day_of_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.refresh_schedule.schedule_frequency.refresh_on_day.day_of_month #=> String
    #   resp.refresh_schedule.schedule_frequency.timezone #=> String
    #   resp.refresh_schedule.schedule_frequency.time_of_the_day #=> String
    #   resp.refresh_schedule.start_after_date_time #=> Time
    #   resp.refresh_schedule.refresh_type #=> String, one of "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.refresh_schedule.arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeRefreshSchedule AWS API Documentation
    #
    # @overload describe_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def describe_refresh_schedule(params = {}, options = {})
      req = build_request(:describe_refresh_schedule, params)
      req.send_request(options)
    end

    # Describes a template's metadata.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're describing.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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
    #   resp.template.version.errors[0].violated_entities #=> Array
    #   resp.template.version.errors[0].violated_entities[0].path #=> String
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
    #   The ID of the Amazon Web Services account that contains the template
    #   alias that you're describing.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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

    # Provides a detailed description of the definition of a template.
    #
    # <note markdown="1"> If you do not need to know details about the content of a template,
    # for instance if you are trying to check the status of a recently
    # created or updated template, use the [ `DescribeTemplate` ][1]
    # instead.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeTemplate.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template.
    #   You must be using the Amazon Web Services account that the template is
    #   in.
    #
    # @option params [required, String] :template_id
    #   The ID of the template that you're describing.
    #
    # @option params [Integer] :version_number
    #   The version number of the template.
    #
    # @option params [String] :alias_name
    #   The alias of the template that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to. You
    #   can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #
    # @return [Types::DescribeTemplateDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplateDefinitionResponse#name #name} => String
    #   * {Types::DescribeTemplateDefinitionResponse#template_id #template_id} => String
    #   * {Types::DescribeTemplateDefinitionResponse#errors #errors} => Array&lt;Types::TemplateError&gt;
    #   * {Types::DescribeTemplateDefinitionResponse#resource_status #resource_status} => String
    #   * {Types::DescribeTemplateDefinitionResponse#theme_arn #theme_arn} => String
    #   * {Types::DescribeTemplateDefinitionResponse#definition #definition} => Types::TemplateVersionDefinition
    #   * {Types::DescribeTemplateDefinitionResponse#status #status} => Integer
    #   * {Types::DescribeTemplateDefinitionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_definition({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateDefinition AWS API Documentation
    #
    # @overload describe_template_definition(params = {})
    # @param [Hash] params ({})
    def describe_template_definition(params = {}, options = {})
      req = build_request(:describe_template_definition, params)
      req.send_request(options)
    end

    # Describes read and write permissions on a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're describing.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the theme that
    #   you're describing.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
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
    #   resp.theme.version.configuration.typography.font_families #=> Array
    #   resp.theme.version.configuration.typography.font_families[0].font_family #=> String
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
    #   The ID of the Amazon Web Services account that contains the theme
    #   alias that you're describing.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the theme that
    #   you're describing.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
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

    # Describes a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::DescribeTopicResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicResponse#arn #arn} => String
    #   * {Types::DescribeTopicResponse#topic_id #topic_id} => String
    #   * {Types::DescribeTopicResponse#topic #topic} => Types::TopicDetails
    #   * {Types::DescribeTopicResponse#request_id #request_id} => String
    #   * {Types::DescribeTopicResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topic({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.topic_id #=> String
    #   resp.topic.name #=> String
    #   resp.topic.description #=> String
    #   resp.topic.data_sets #=> Array
    #   resp.topic.data_sets[0].dataset_arn #=> String
    #   resp.topic.data_sets[0].dataset_name #=> String
    #   resp.topic.data_sets[0].dataset_description #=> String
    #   resp.topic.data_sets[0].data_aggregation.dataset_row_date_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.topic.data_sets[0].data_aggregation.default_date_column_name #=> String
    #   resp.topic.data_sets[0].filters #=> Array
    #   resp.topic.data_sets[0].filters[0].filter_description #=> String
    #   resp.topic.data_sets[0].filters[0].filter_class #=> String, one of "ENFORCED_VALUE_FILTER", "CONDITIONAL_VALUE_FILTER", "NAMED_VALUE_FILTER"
    #   resp.topic.data_sets[0].filters[0].filter_name #=> String
    #   resp.topic.data_sets[0].filters[0].filter_synonyms #=> Array
    #   resp.topic.data_sets[0].filters[0].filter_synonyms[0] #=> String
    #   resp.topic.data_sets[0].filters[0].operand_field_name #=> String
    #   resp.topic.data_sets[0].filters[0].filter_type #=> String, one of "CATEGORY_FILTER", "NUMERIC_EQUALITY_FILTER", "NUMERIC_RANGE_FILTER", "DATE_RANGE_FILTER", "RELATIVE_DATE_FILTER"
    #   resp.topic.data_sets[0].filters[0].category_filter.category_filter_function #=> String, one of "EXACT", "CONTAINS"
    #   resp.topic.data_sets[0].filters[0].category_filter.category_filter_type #=> String, one of "CUSTOM_FILTER", "CUSTOM_FILTER_LIST", "FILTER_LIST"
    #   resp.topic.data_sets[0].filters[0].category_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].category_filter.constant.singular_constant #=> String
    #   resp.topic.data_sets[0].filters[0].category_filter.constant.collective_constant.value_list #=> Array
    #   resp.topic.data_sets[0].filters[0].category_filter.constant.collective_constant.value_list[0] #=> String
    #   resp.topic.data_sets[0].filters[0].category_filter.inverse #=> Boolean
    #   resp.topic.data_sets[0].filters[0].numeric_equality_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].numeric_equality_filter.constant.singular_constant #=> String
    #   resp.topic.data_sets[0].filters[0].numeric_equality_filter.aggregation #=> String, one of "NO_AGGREGATION", "SUM", "AVERAGE", "COUNT", "DISTINCT_COUNT", "MAX", "MEDIAN", "MIN", "STDEV", "STDEVP", "VAR", "VARP"
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.inclusive #=> Boolean
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.constant.range_constant.minimum #=> String
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.constant.range_constant.maximum #=> String
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.aggregation #=> String, one of "NO_AGGREGATION", "SUM", "AVERAGE", "COUNT", "DISTINCT_COUNT", "MAX", "MEDIAN", "MIN", "STDEV", "STDEVP", "VAR", "VARP"
    #   resp.topic.data_sets[0].filters[0].date_range_filter.inclusive #=> Boolean
    #   resp.topic.data_sets[0].filters[0].date_range_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].date_range_filter.constant.range_constant.minimum #=> String
    #   resp.topic.data_sets[0].filters[0].date_range_filter.constant.range_constant.maximum #=> String
    #   resp.topic.data_sets[0].filters[0].relative_date_filter.time_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.topic.data_sets[0].filters[0].relative_date_filter.relative_date_filter_function #=> String, one of "PREVIOUS", "THIS", "LAST", "NEXT", "NOW"
    #   resp.topic.data_sets[0].filters[0].relative_date_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].relative_date_filter.constant.singular_constant #=> String
    #   resp.topic.data_sets[0].columns #=> Array
    #   resp.topic.data_sets[0].columns[0].column_name #=> String
    #   resp.topic.data_sets[0].columns[0].column_friendly_name #=> String
    #   resp.topic.data_sets[0].columns[0].column_description #=> String
    #   resp.topic.data_sets[0].columns[0].column_synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].column_synonyms[0] #=> String
    #   resp.topic.data_sets[0].columns[0].column_data_role #=> String, one of "DIMENSION", "MEASURE"
    #   resp.topic.data_sets[0].columns[0].aggregation #=> String, one of "SUM", "MAX", "MIN", "COUNT", "DISTINCT_COUNT", "AVERAGE"
    #   resp.topic.data_sets[0].columns[0].is_included_in_topic #=> Boolean
    #   resp.topic.data_sets[0].columns[0].disable_indexing #=> Boolean
    #   resp.topic.data_sets[0].columns[0].comparative_order.use_ordering #=> String, one of "GREATER_IS_BETTER", "LESSER_IS_BETTER", "SPECIFIED"
    #   resp.topic.data_sets[0].columns[0].comparative_order.specifed_order #=> Array
    #   resp.topic.data_sets[0].columns[0].comparative_order.specifed_order[0] #=> String
    #   resp.topic.data_sets[0].columns[0].comparative_order.treat_undefined_specified_values #=> String, one of "LEAST", "MOST"
    #   resp.topic.data_sets[0].columns[0].semantic_type.type_name #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.sub_type_name #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.type_parameters #=> Hash
    #   resp.topic.data_sets[0].columns[0].semantic_type.type_parameters["LimitedString"] #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.truthy_cell_value #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.truthy_cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].semantic_type.truthy_cell_value_synonyms[0] #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.falsey_cell_value #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.falsey_cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].semantic_type.falsey_cell_value_synonyms[0] #=> String
    #   resp.topic.data_sets[0].columns[0].time_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.topic.data_sets[0].columns[0].allowed_aggregations #=> Array
    #   resp.topic.data_sets[0].columns[0].allowed_aggregations[0] #=> String, one of "COUNT", "DISTINCT_COUNT", "MIN", "MAX", "MEDIAN", "SUM", "AVERAGE", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE"
    #   resp.topic.data_sets[0].columns[0].not_allowed_aggregations #=> Array
    #   resp.topic.data_sets[0].columns[0].not_allowed_aggregations[0] #=> String, one of "COUNT", "DISTINCT_COUNT", "MIN", "MAX", "MEDIAN", "SUM", "AVERAGE", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE"
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format #=> String, one of "AUTO", "PERCENT", "CURRENCY", "NUMBER", "DATE", "STRING"
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.use_blank_cell_format #=> Boolean
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.blank_cell_format #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.date_format #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.decimal_separator #=> String, one of "COMMA", "DOT"
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.grouping_separator #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.use_grouping #=> Boolean
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.fraction_digits #=> Integer
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.prefix #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.suffix #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.unit_scaler #=> String, one of "NONE", "AUTO", "THOUSANDS", "MILLIONS", "BILLIONS", "TRILLIONS"
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.negative_format.prefix #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.negative_format.suffix #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.currency_symbol #=> String
    #   resp.topic.data_sets[0].columns[0].never_aggregate_in_filter #=> Boolean
    #   resp.topic.data_sets[0].columns[0].cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].cell_value_synonyms[0].cell_value #=> String
    #   resp.topic.data_sets[0].columns[0].cell_value_synonyms[0].synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].cell_value_synonyms[0].synonyms[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].calculated_field_name #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].calculated_field_description #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].expression #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].calculated_field_synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].calculated_field_synonyms[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].is_included_in_topic #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].disable_indexing #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].column_data_role #=> String, one of "DIMENSION", "MEASURE"
    #   resp.topic.data_sets[0].calculated_fields[0].time_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format #=> String, one of "AUTO", "PERCENT", "CURRENCY", "NUMBER", "DATE", "STRING"
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.use_blank_cell_format #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.blank_cell_format #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.date_format #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.decimal_separator #=> String, one of "COMMA", "DOT"
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.grouping_separator #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.use_grouping #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.fraction_digits #=> Integer
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.prefix #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.suffix #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.unit_scaler #=> String, one of "NONE", "AUTO", "THOUSANDS", "MILLIONS", "BILLIONS", "TRILLIONS"
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.negative_format.prefix #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.negative_format.suffix #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.currency_symbol #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].aggregation #=> String, one of "SUM", "MAX", "MIN", "COUNT", "DISTINCT_COUNT", "AVERAGE"
    #   resp.topic.data_sets[0].calculated_fields[0].comparative_order.use_ordering #=> String, one of "GREATER_IS_BETTER", "LESSER_IS_BETTER", "SPECIFIED"
    #   resp.topic.data_sets[0].calculated_fields[0].comparative_order.specifed_order #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].comparative_order.specifed_order[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].comparative_order.treat_undefined_specified_values #=> String, one of "LEAST", "MOST"
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.type_name #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.sub_type_name #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.type_parameters #=> Hash
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.type_parameters["LimitedString"] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.truthy_cell_value #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.truthy_cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.truthy_cell_value_synonyms[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.falsey_cell_value #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.falsey_cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.falsey_cell_value_synonyms[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].allowed_aggregations #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].allowed_aggregations[0] #=> String, one of "COUNT", "DISTINCT_COUNT", "MIN", "MAX", "MEDIAN", "SUM", "AVERAGE", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE"
    #   resp.topic.data_sets[0].calculated_fields[0].not_allowed_aggregations #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].not_allowed_aggregations[0] #=> String, one of "COUNT", "DISTINCT_COUNT", "MIN", "MAX", "MEDIAN", "SUM", "AVERAGE", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE"
    #   resp.topic.data_sets[0].calculated_fields[0].never_aggregate_in_filter #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].cell_value_synonyms[0].cell_value #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].cell_value_synonyms[0].synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].cell_value_synonyms[0].synonyms[0] #=> String
    #   resp.topic.data_sets[0].named_entities #=> Array
    #   resp.topic.data_sets[0].named_entities[0].entity_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].entity_description #=> String
    #   resp.topic.data_sets[0].named_entities[0].entity_synonyms #=> Array
    #   resp.topic.data_sets[0].named_entities[0].entity_synonyms[0] #=> String
    #   resp.topic.data_sets[0].named_entities[0].semantic_entity_type.type_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].semantic_entity_type.sub_type_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].semantic_entity_type.type_parameters #=> Hash
    #   resp.topic.data_sets[0].named_entities[0].semantic_entity_type.type_parameters["LimitedString"] #=> String
    #   resp.topic.data_sets[0].named_entities[0].definition #=> Array
    #   resp.topic.data_sets[0].named_entities[0].definition[0].field_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].definition[0].property_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].definition[0].property_role #=> String, one of "PRIMARY", "ID"
    #   resp.topic.data_sets[0].named_entities[0].definition[0].property_usage #=> String, one of "INHERIT", "DIMENSION", "MEASURE"
    #   resp.topic.data_sets[0].named_entities[0].definition[0].metric.aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "CUSTOM"
    #   resp.topic.data_sets[0].named_entities[0].definition[0].metric.aggregation_function_parameters #=> Hash
    #   resp.topic.data_sets[0].named_entities[0].definition[0].metric.aggregation_function_parameters["LimitedString"] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopic AWS API Documentation
    #
    # @overload describe_topic(params = {})
    # @param [Hash] params ({})
    def describe_topic(params = {}, options = {})
      req = build_request(:describe_topic, params)
      req.send_request(options)
    end

    # Describes the permissions of a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic that
    #   you want described.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::DescribeTopicPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicPermissionsResponse#topic_id #topic_id} => String
    #   * {Types::DescribeTopicPermissionsResponse#topic_arn #topic_arn} => String
    #   * {Types::DescribeTopicPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeTopicPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeTopicPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topic_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicPermissions AWS API Documentation
    #
    # @overload describe_topic_permissions(params = {})
    # @param [Hash] params ({})
    def describe_topic_permissions(params = {}, options = {})
      req = build_request(:describe_topic_permissions, params)
      req.send_request(options)
    end

    # Describes the status of a topic refresh.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   whose refresh you want to describe.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :refresh_id
    #   The ID of the refresh, which is performed when the topic is created or
    #   updated.
    #
    # @return [Types::DescribeTopicRefreshResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicRefreshResponse#refresh_details #refresh_details} => Types::TopicRefreshDetails
    #   * {Types::DescribeTopicRefreshResponse#request_id #request_id} => String
    #   * {Types::DescribeTopicRefreshResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topic_refresh({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     refresh_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_details.refresh_arn #=> String
    #   resp.refresh_details.refresh_id #=> String
    #   resp.refresh_details.refresh_status #=> String, one of "INITIALIZED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicRefresh AWS API Documentation
    #
    # @overload describe_topic_refresh(params = {})
    # @param [Hash] params ({})
    def describe_topic_refresh(params = {}, options = {})
      req = build_request(:describe_topic_refresh, params)
      req.send_request(options)
    end

    # Deletes a topic refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that contains the refresh schedule that you want
    #   to describe. This ID is unique per Amazon Web Services Region for each
    #   Amazon Web Services account.
    #
    # @option params [required, String] :dataset_id
    #   The ID of the dataset.
    #
    # @return [Types::DescribeTopicRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicRefreshScheduleResponse#topic_id #topic_id} => String
    #   * {Types::DescribeTopicRefreshScheduleResponse#topic_arn #topic_arn} => String
    #   * {Types::DescribeTopicRefreshScheduleResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DescribeTopicRefreshScheduleResponse#refresh_schedule #refresh_schedule} => Types::TopicRefreshSchedule
    #   * {Types::DescribeTopicRefreshScheduleResponse#status #status} => Integer
    #   * {Types::DescribeTopicRefreshScheduleResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topic_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     dataset_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.dataset_arn #=> String
    #   resp.refresh_schedule.is_enabled #=> Boolean
    #   resp.refresh_schedule.based_on_spice_schedule #=> Boolean
    #   resp.refresh_schedule.starting_at #=> Time
    #   resp.refresh_schedule.timezone #=> String
    #   resp.refresh_schedule.repeat_at #=> String
    #   resp.refresh_schedule.topic_schedule_type #=> String, one of "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicRefreshSchedule AWS API Documentation
    #
    # @overload describe_topic_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def describe_topic_refresh_schedule(params = {}, options = {})
      req = build_request(:describe_topic_refresh_schedule, params)
      req.send_request(options)
    end

    # Returns information about a user, given the user name.
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
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
    #   resp.user.external_login_federation_provider_type #=> String
    #   resp.user.external_login_federation_provider_url #=> String
    #   resp.user.external_login_id #=> String
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

    # Describes a VPC connection.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that contains the
    #   VPC connection that you want described.
    #
    # @option params [required, String] :vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon Web
    #   Services account.
    #
    # @return [Types::DescribeVPCConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVPCConnectionResponse#vpc_connection #vpc_connection} => Types::VPCConnection
    #   * {Types::DescribeVPCConnectionResponse#request_id #request_id} => String
    #   * {Types::DescribeVPCConnectionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_connection({
    #     aws_account_id: "AwsAccountId", # required
    #     vpc_connection_id: "VPCConnectionResourceIdUnrestricted", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_connection.vpc_connection_id #=> String
    #   resp.vpc_connection.arn #=> String
    #   resp.vpc_connection.name #=> String
    #   resp.vpc_connection.vpc_id #=> String
    #   resp.vpc_connection.security_group_ids #=> Array
    #   resp.vpc_connection.security_group_ids[0] #=> String
    #   resp.vpc_connection.dns_resolvers #=> Array
    #   resp.vpc_connection.dns_resolvers[0] #=> String
    #   resp.vpc_connection.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.vpc_connection.availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.vpc_connection.network_interfaces #=> Array
    #   resp.vpc_connection.network_interfaces[0].subnet_id #=> String
    #   resp.vpc_connection.network_interfaces[0].availability_zone #=> String
    #   resp.vpc_connection.network_interfaces[0].error_message #=> String
    #   resp.vpc_connection.network_interfaces[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETED", "DELETION_FAILED", "DELETION_SCHEDULED", "ATTACHMENT_FAILED_ROLLBACK_FAILED"
    #   resp.vpc_connection.network_interfaces[0].network_interface_id #=> String
    #   resp.vpc_connection.role_arn #=> String
    #   resp.vpc_connection.created_time #=> Time
    #   resp.vpc_connection.last_updated_time #=> Time
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeVPCConnection AWS API Documentation
    #
    # @overload describe_vpc_connection(params = {})
    # @param [Hash] params ({})
    def describe_vpc_connection(params = {}, options = {})
      req = build_request(:describe_vpc_connection, params)
      req.send_request(options)
    end

    # Generates an embed URL that you can use to embed an Amazon QuickSight
    # dashboard or visual in your website, without having to register any
    # reader users. Before you use this action, make sure that you have
    # configured the dashboards and permissions.
    #
    # The following rules apply to the generated URL:
    #
    # * It contains a temporary bearer token. It is valid for 5 minutes
    #   after it is generated. Once redeemed within this period, it cannot
    #   be re-used again.
    #
    # * The URL validity period should not be confused with the actual
    #   session lifetime that can be customized using the `
    #   SessionLifetimeInMinutes ` parameter. The resulting user session is
    #   valid for 15 minutes (minimum) to 10 hours (maximum). The default
    #   session duration is 10 hours.
    #
    # * You are charged only when the URL is used or there is interaction
    #   with Amazon QuickSight.
    #
    # For more information, see [Embedded Analytics][1] in the *Amazon
    # QuickSight User Guide*.
    #
    # For more information about the high-level steps for embedding and for
    # an interactive demo of the ways you can customize embedding, visit the
    # [Amazon QuickSight Developer Portal][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the dashboard
    #   that you're embedding.
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be in
    #   \[15-600\] minutes range.
    #
    # @option params [required, String] :namespace
    #   The Amazon QuickSight namespace that the anonymous user virtually
    #   belongs to. If you are not using an Amazon QuickSight custom
    #   namespace, set this to `default`.
    #
    # @option params [Array<Types::SessionTag>] :session_tags
    #   The session tags used for row-level security. Before you use this
    #   parameter, make sure that you have configured the relevant datasets
    #   using the `DataSet$RowLevelPermissionTagConfiguration` parameter so
    #   that session tags can be used to provide row-level security.
    #
    #   These are not the tags used for the Amazon Web Services resource
    #   tagging feature. For more information, see [Using Row-Level Security
    #   (RLS) with Tags][1]in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html
    #
    # @option params [required, Array<String>] :authorized_resource_arns
    #   The Amazon Resource Names (ARNs) for the Amazon QuickSight resources
    #   that the user is authorized to access during the lifetime of the
    #   session. If you choose `Dashboard` embedding experience, pass the list
    #   of dashboard ARNs in the account that you want the user to be able to
    #   view. Currently, you can pass up to 25 dashboard ARNs in each API
    #   call.
    #
    # @option params [required, Types::AnonymousUserEmbeddingExperienceConfiguration] :experience_configuration
    #   The configuration of the experience that you are embedding.
    #
    # @option params [Array<String>] :allowed_domains
    #   The domains that you want to add to the allow list for access to the
    #   generated URL that is then embedded. This optional parameter overrides
    #   the static domains that are configured in the Manage QuickSight menu
    #   in the Amazon QuickSight console. Instead, it allows only the domains
    #   that you include in this parameter. You can list up to three domains
    #   or subdomains in each API call.
    #
    #   To include all subdomains under a specific domain to the allow list,
    #   use `*`. For example, `https://*.sapp.amazon.com` includes all
    #   subdomains under `https://sapp.amazon.com`.
    #
    # @return [Types::GenerateEmbedUrlForAnonymousUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateEmbedUrlForAnonymousUserResponse#embed_url #embed_url} => String
    #   * {Types::GenerateEmbedUrlForAnonymousUserResponse#status #status} => Integer
    #   * {Types::GenerateEmbedUrlForAnonymousUserResponse#request_id #request_id} => String
    #   * {Types::GenerateEmbedUrlForAnonymousUserResponse#anonymous_user_arn #anonymous_user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_embed_url_for_anonymous_user({
    #     aws_account_id: "AwsAccountId", # required
    #     session_lifetime_in_minutes: 1,
    #     namespace: "Namespace", # required
    #     session_tags: [
    #       {
    #         key: "SessionTagKey", # required
    #         value: "SessionTagValue", # required
    #       },
    #     ],
    #     authorized_resource_arns: ["Arn"], # required
    #     experience_configuration: { # required
    #       dashboard: {
    #         initial_dashboard_id: "ShortRestrictiveResourceId", # required
    #       },
    #       dashboard_visual: {
    #         initial_dashboard_visual_id: { # required
    #           dashboard_id: "ShortRestrictiveResourceId", # required
    #           sheet_id: "ShortRestrictiveResourceId", # required
    #           visual_id: "ShortRestrictiveResourceId", # required
    #         },
    #       },
    #       q_search_bar: {
    #         initial_topic_id: "RestrictiveResourceId", # required
    #       },
    #     },
    #     allowed_domains: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.anonymous_user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GenerateEmbedUrlForAnonymousUser AWS API Documentation
    #
    # @overload generate_embed_url_for_anonymous_user(params = {})
    # @param [Hash] params ({})
    def generate_embed_url_for_anonymous_user(params = {}, options = {})
      req = build_request(:generate_embed_url_for_anonymous_user, params)
      req.send_request(options)
    end

    # Generates an embed URL that you can use to embed an Amazon QuickSight
    # experience in your website. This action can be used for any type of
    # user registered in an Amazon QuickSight account. Before you use this
    # action, make sure that you have configured the relevant Amazon
    # QuickSight resource and permissions.
    #
    # The following rules apply to the generated URL:
    #
    # * It contains a temporary bearer token. It is valid for 5 minutes
    #   after it is generated. Once redeemed within this period, it cannot
    #   be re-used again.
    #
    # * The URL validity period should not be confused with the actual
    #   session lifetime that can be customized using the `
    #   SessionLifetimeInMinutes ` parameter.
    #
    #   The resulting user session is valid for 15 minutes (minimum) to 10
    #   hours (maximum). The default session duration is 10 hours.
    #
    # * You are charged only when the URL is used or there is interaction
    #   with Amazon QuickSight.
    #
    # For more information, see [Embedded Analytics][1] in the *Amazon
    # QuickSight User Guide*.
    #
    # For more information about the high-level steps for embedding and for
    # an interactive demo of the ways you can customize embedding, visit the
    # [Amazon QuickSight Developer Portal][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the dashboard
    #   that you're embedding.
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be in
    #   \[15-600\] minutes range.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name for the registered user.
    #
    # @option params [required, Types::RegisteredUserEmbeddingExperienceConfiguration] :experience_configuration
    #   The experience you are embedding. For registered users, you can embed
    #   Amazon QuickSight dashboards, Amazon QuickSight visuals, the Amazon
    #   QuickSight Q search bar, or the entire Amazon QuickSight console.
    #
    # @option params [Array<String>] :allowed_domains
    #   The domains that you want to add to the allow list for access to the
    #   generated URL that is then embedded. This optional parameter overrides
    #   the static domains that are configured in the Manage QuickSight menu
    #   in the Amazon QuickSight console. Instead, it allows only the domains
    #   that you include in this parameter. You can list up to three domains
    #   or subdomains in each API call.
    #
    #   To include all subdomains under a specific domain to the allow list,
    #   use `*`. For example, `https://*.sapp.amazon.com` includes all
    #   subdomains under `https://sapp.amazon.com`.
    #
    # @return [Types::GenerateEmbedUrlForRegisteredUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateEmbedUrlForRegisteredUserResponse#embed_url #embed_url} => String
    #   * {Types::GenerateEmbedUrlForRegisteredUserResponse#status #status} => Integer
    #   * {Types::GenerateEmbedUrlForRegisteredUserResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_embed_url_for_registered_user({
    #     aws_account_id: "AwsAccountId", # required
    #     session_lifetime_in_minutes: 1,
    #     user_arn: "Arn", # required
    #     experience_configuration: { # required
    #       dashboard: {
    #         initial_dashboard_id: "ShortRestrictiveResourceId", # required
    #         feature_configurations: {
    #           state_persistence: {
    #             enabled: false, # required
    #           },
    #           bookmarks: {
    #             enabled: false, # required
    #           },
    #         },
    #       },
    #       quick_sight_console: {
    #         initial_path: "EntryPath",
    #         feature_configurations: {
    #           state_persistence: {
    #             enabled: false, # required
    #           },
    #         },
    #       },
    #       q_search_bar: {
    #         initial_topic_id: "RestrictiveResourceId",
    #       },
    #       dashboard_visual: {
    #         initial_dashboard_visual_id: { # required
    #           dashboard_id: "ShortRestrictiveResourceId", # required
    #           sheet_id: "ShortRestrictiveResourceId", # required
    #           visual_id: "ShortRestrictiveResourceId", # required
    #         },
    #       },
    #     },
    #     allowed_domains: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GenerateEmbedUrlForRegisteredUser AWS API Documentation
    #
    # @overload generate_embed_url_for_registered_user(params = {})
    # @param [Hash] params ({})
    def generate_embed_url_for_registered_user(params = {}, options = {})
      req = build_request(:generate_embed_url_for_registered_user, params)
      req.send_request(options)
    end

    # Generates a temporary session URL and authorization code(bearer token)
    # that you can use to embed an Amazon QuickSight read-only dashboard in
    # your website or application. Before you use this command, make sure
    # that you have configured the dashboards and permissions.
    #
    # Currently, you can use `GetDashboardEmbedURL` only from the server,
    # not from the user's browser. The following rules apply to the
    # generated URL:
    #
    # * They must be used together.
    #
    # * They can be used one time only.
    #
    # * They are valid for 5 minutes after you run this command.
    #
    # * You are charged only when the URL is used or there is interaction
    #   with Amazon QuickSight.
    #
    # * The resulting user session is valid for 15 minutes (default) up to
    #   10 hours (maximum). You can use the optional
    #   `SessionLifetimeInMinutes` parameter to customize session duration.
    #
    # For more information, see [Embedding Analytics Using
    # GetDashboardEmbedUrl][1] in the *Amazon QuickSight User Guide*.
    #
    # For more information about the high-level steps for embedding and for
    # an interactive demo of the ways you can customize embedding, visit the
    # [Amazon QuickSight Developer Portal][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-deprecated.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the dashboard
    #   that you're embedding.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to the Identity and Access
    #   Management (IAM) policy.
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
    # @option params [Boolean] :state_persistence_enabled
    #   Adds persistence of state for the user session in an embedded
    #   dashboard. Persistence applies to the sheet and the parameter
    #   settings. These are control settings that the dashboard subscriber
    #   (Amazon QuickSight reader) chooses while viewing the dashboard. If
    #   this is set to `TRUE`, the settings are the same when the subscriber
    #   reopens the same dashboard URL. The state is stored in Amazon
    #   QuickSight, not in a browser cookie. If this is set to FALSE, the
    #   state of the user session is not persisted. The default is `FALSE`.
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
    # @option params [String] :namespace
    #   The Amazon QuickSight namespace that contains the dashboard IDs in
    #   this request. If you're not using a custom namespace, set `Namespace
    #   = default`.
    #
    # @option params [Array<String>] :additional_dashboard_ids
    #   A list of one or more dashboard IDs that you want anonymous users to
    #   have tempporary access to. Currently, the `IdentityType` parameter
    #   must be set to `ANONYMOUS` because other identity types authenticate
    #   as Amazon QuickSight or IAM users. For example, if you set
    #   "`--dashboard-id dash_id1 --dashboard-id dash_id2 dash_id3
    #   identity-type ANONYMOUS`", the session can access all three
    #   dashboards.
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
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     identity_type: "IAM", # required, accepts IAM, QUICKSIGHT, ANONYMOUS
    #     session_lifetime_in_minutes: 1,
    #     undo_redo_disabled: false,
    #     reset_disabled: false,
    #     state_persistence_enabled: false,
    #     user_arn: "Arn",
    #     namespace: "Namespace",
    #     additional_dashboard_ids: ["ShortRestrictiveResourceId"],
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
    # embed the Amazon Amazon QuickSight console in your web server code.
    # Use `GetSessionEmbedUrl` where you want to provide an authoring portal
    # that allows users to create data sources, datasets, analyses, and
    # dashboards. The users who access an embedded Amazon QuickSight console
    # need belong to the author or admin security cohort. If you want to
    # restrict permissions to some of these features, add a custom
    # permissions profile to the user with the ` UpdateUser ` API operation.
    # Use ` RegisterUser ` API operation to add a new user with a custom
    # permission profile attached. For more information, see the following
    # sections in the *Amazon QuickSight User Guide*:
    #
    # * [Embedding Analytics][1]
    #
    # * [Customizing Access to the Amazon QuickSight Console][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account associated with your Amazon
    #   QuickSight subscription.
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
    #     key from the Amazon QuickSight console URL of the dashboard
    #
    #   * `/analyses/AnalysisId ` - where `AnalysisId` is the actual ID key
    #     from the Amazon QuickSight console URL of the analysis
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
    #   Omit this parameter for users in the third group, IAM users and IAM
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

    # Lists Amazon QuickSight analyses that exist in the specified Amazon
    # Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analyses.
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

    # Lists all asset bundle export jobs that have been taken place in the
    # last 14 days. Jobs created more than 14 days ago are deleted forever
    # and are not returned. If you are using the same job ID for multiple
    # jobs, `ListAssetBundleExportJobs` only returns the most recent job
    # that uses the repeated job ID.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that the export jobs were
    #   executed in.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListAssetBundleExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetBundleExportJobsResponse#asset_bundle_export_job_summary_list #asset_bundle_export_job_summary_list} => Array&lt;Types::AssetBundleExportJobSummary&gt;
    #   * {Types::ListAssetBundleExportJobsResponse#next_token #next_token} => String
    #   * {Types::ListAssetBundleExportJobsResponse#request_id #request_id} => String
    #   * {Types::ListAssetBundleExportJobsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_bundle_export_jobs({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_bundle_export_job_summary_list #=> Array
    #   resp.asset_bundle_export_job_summary_list[0].job_status #=> String, one of "QUEUED_FOR_IMMEDIATE_EXECUTION", "IN_PROGRESS", "SUCCESSFUL", "FAILED"
    #   resp.asset_bundle_export_job_summary_list[0].arn #=> String
    #   resp.asset_bundle_export_job_summary_list[0].created_time #=> Time
    #   resp.asset_bundle_export_job_summary_list[0].asset_bundle_export_job_id #=> String
    #   resp.asset_bundle_export_job_summary_list[0].include_all_dependencies #=> Boolean
    #   resp.asset_bundle_export_job_summary_list[0].export_format #=> String, one of "CLOUDFORMATION_JSON", "QUICKSIGHT_JSON"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAssetBundleExportJobs AWS API Documentation
    #
    # @overload list_asset_bundle_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_asset_bundle_export_jobs(params = {}, options = {})
      req = build_request(:list_asset_bundle_export_jobs, params)
      req.send_request(options)
    end

    # Lists all asset bundle import jobs that have taken place in the last
    # 14 days. Jobs created more than 14 days ago are deleted forever and
    # are not returned. If you are using the same job ID for multiple jobs,
    # `ListAssetBundleImportJobs` only returns the most recent job that uses
    # the repeated job ID.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that the import jobs were
    #   executed in.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListAssetBundleImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetBundleImportJobsResponse#asset_bundle_import_job_summary_list #asset_bundle_import_job_summary_list} => Array&lt;Types::AssetBundleImportJobSummary&gt;
    #   * {Types::ListAssetBundleImportJobsResponse#next_token #next_token} => String
    #   * {Types::ListAssetBundleImportJobsResponse#request_id #request_id} => String
    #   * {Types::ListAssetBundleImportJobsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_bundle_import_jobs({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_bundle_import_job_summary_list #=> Array
    #   resp.asset_bundle_import_job_summary_list[0].job_status #=> String, one of "QUEUED_FOR_IMMEDIATE_EXECUTION", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "FAILED_ROLLBACK_IN_PROGRESS", "FAILED_ROLLBACK_COMPLETED", "FAILED_ROLLBACK_ERROR"
    #   resp.asset_bundle_import_job_summary_list[0].arn #=> String
    #   resp.asset_bundle_import_job_summary_list[0].created_time #=> Time
    #   resp.asset_bundle_import_job_summary_list[0].asset_bundle_import_job_id #=> String
    #   resp.asset_bundle_import_job_summary_list[0].failure_action #=> String, one of "DO_NOTHING", "ROLLBACK"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAssetBundleImportJobs AWS API Documentation
    #
    # @overload list_asset_bundle_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_asset_bundle_import_jobs(params = {}, options = {})
      req = build_request(:list_asset_bundle_import_jobs, params)
      req.send_request(options)
    end

    # Lists all the versions of the dashboards in the Amazon QuickSight
    # subscription.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're listing versions for.
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
    #     dashboard_id: "ShortRestrictiveResourceId", # required
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

    # Lists dashboards in an Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboards
    #   that you're listing.
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

    # Lists all of the datasets belonging to the current Amazon Web Services
    # account in an Amazon Web Services Region.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/*`.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
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
    #   resp.data_set_summaries[0].row_level_permission_data_set.format_version #=> String, one of "VERSION_1", "VERSION_2"
    #   resp.data_set_summaries[0].row_level_permission_data_set.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_set_summaries[0].row_level_permission_tag_configuration_applied #=> Boolean
    #   resp.data_set_summaries[0].column_level_permission_rules_applied #=> Boolean
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

    # Lists data sources in current Amazon Web Services Region that belong
    # to this Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
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
    #   resp.data_sources[0].type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL", "DATABRICKS"
    #   resp.data_sources[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.data_sources[0].created_time #=> Time
    #   resp.data_sources[0].last_updated_time #=> Time
    #   resp.data_sources[0].data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_sources[0].data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data_sources[0].data_source_parameters.athena_parameters.role_arn #=> String
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
    #   resp.data_sources[0].data_source_parameters.oracle_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.oracle_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.oracle_parameters.database #=> String
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
    #   resp.data_sources[0].data_source_parameters.s3_parameters.role_arn #=> String
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
    #   resp.data_sources[0].data_source_parameters.amazon_open_search_parameters.domain #=> String
    #   resp.data_sources[0].data_source_parameters.exasol_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.exasol_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.databricks_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.databricks_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.databricks_parameters.sql_endpoint_path #=> String
    #   resp.data_sources[0].alternate_data_source_parameters #=> Array
    #   resp.data_sources[0].alternate_data_source_parameters[0].amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].athena_parameters.work_group #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].athena_parameters.role_arn #=> String
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
    #   resp.data_sources[0].alternate_data_source_parameters[0].oracle_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].oracle_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].oracle_parameters.database #=> String
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
    #   resp.data_sources[0].alternate_data_source_parameters[0].s3_parameters.role_arn #=> String
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
    #   resp.data_sources[0].alternate_data_source_parameters[0].amazon_open_search_parameters.domain #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].exasol_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].exasol_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].databricks_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].databricks_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].databricks_parameters.sql_endpoint_path #=> String
    #   resp.data_sources[0].vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_sources[0].ssl_properties.disable_ssl #=> Boolean
    #   resp.data_sources[0].error_info.type #=> String, one of "ACCESS_DENIED", "COPY_SOURCE_NOT_FOUND", "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"
    #   resp.data_sources[0].error_info.message #=> String
    #   resp.data_sources[0].secret_arn #=> String
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

    # List all assets (`DASHBOARD`, `ANALYSIS`, and `DATASET`) in a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListFolderMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFolderMembersResponse#status #status} => Integer
    #   * {Types::ListFolderMembersResponse#folder_member_list #folder_member_list} => Array&lt;Types::MemberIdArnPair&gt;
    #   * {Types::ListFolderMembersResponse#next_token #next_token} => String
    #   * {Types::ListFolderMembersResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_folder_members({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_member_list #=> Array
    #   resp.folder_member_list[0].member_id #=> String
    #   resp.folder_member_list[0].member_arn #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListFolderMembers AWS API Documentation
    #
    # @overload list_folder_members(params = {})
    # @param [Hash] params ({})
    def list_folder_members(params = {}, options = {})
      req = build_request(:list_folder_members, params)
      req.send_request(options)
    end

    # Lists all folders in an account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListFoldersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFoldersResponse#status #status} => Integer
    #   * {Types::ListFoldersResponse#folder_summary_list #folder_summary_list} => Array&lt;Types::FolderSummary&gt;
    #   * {Types::ListFoldersResponse#next_token #next_token} => String
    #   * {Types::ListFoldersResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_folders({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_summary_list #=> Array
    #   resp.folder_summary_list[0].arn #=> String
    #   resp.folder_summary_list[0].folder_id #=> String
    #   resp.folder_summary_list[0].name #=> String
    #   resp.folder_summary_list[0].folder_type #=> String, one of "SHARED"
    #   resp.folder_summary_list[0].created_time #=> Time
    #   resp.folder_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListFolders AWS API Documentation
    #
    # @overload list_folders(params = {})
    # @param [Hash] params ({})
    def list_folders(params = {}, options = {})
      req = build_request(:list_folders, params)
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
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want a list of users from.
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
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want a list of groups from.
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

    # Lists the IAM policy assignments in the current Amazon QuickSight
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains these IAM
    #   policy assignments.
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

    # Lists all of the IAM policy assignments, including the Amazon Resource
    # Names (ARNs), for the IAM policies assigned to the specified user and
    # group, or groups that the user belongs to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   assignments.
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
    #   The Amazon Web Services account ID.
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
    #     data_set_id: "String", # required
    #     next_token: "String",
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
    #   resp.ingestions[0].error_info.type #=> String, one of "FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR", "REFRESH_SUPPRESSED_BY_EDIT", "PERMISSION_NOT_FOUND", "ELASTICSEARCH_CURSOR_NOT_ENABLED", "CURSOR_NOT_ENABLED", "DUPLICATE_COLUMN_NAMES_FOUND"
    #   resp.ingestions[0].error_info.message #=> String
    #   resp.ingestions[0].row_info.rows_ingested #=> Integer
    #   resp.ingestions[0].row_info.rows_dropped #=> Integer
    #   resp.ingestions[0].row_info.total_rows_in_dataset #=> Integer
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

    # Lists the namespaces for the specified Amazon Web Services account.
    # This operation doesn't list deleted namespaces.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the Amazon
    #   QuickSight namespaces that you want to list.
    #
    # @option params [String] :next_token
    #   A unique pagination token that can be used in a subsequent request.
    #   You will receive a pagination token in the response body of a previous
    #   `ListNameSpaces` API call if there is more data that can be returned.
    #   To receive the data, make another `ListNamespaces` API call with the
    #   returned token to retrieve the next page of data. Each token is valid
    #   for 24 hours. If you try to make a `ListNamespaces` API call with an
    #   expired token, you will receive a `HTTP 400 InvalidNextTokenException`
    #   error.
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

    # Lists the refresh schedules of a dataset. Each dataset can have up to
    # 5 schedules.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @return [Types::ListRefreshSchedulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRefreshSchedulesResponse#refresh_schedules #refresh_schedules} => Array&lt;Types::RefreshSchedule&gt;
    #   * {Types::ListRefreshSchedulesResponse#status #status} => Integer
    #   * {Types::ListRefreshSchedulesResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_refresh_schedules({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_schedules #=> Array
    #   resp.refresh_schedules[0].schedule_id #=> String
    #   resp.refresh_schedules[0].schedule_frequency.interval #=> String, one of "MINUTE15", "MINUTE30", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.refresh_schedules[0].schedule_frequency.refresh_on_day.day_of_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.refresh_schedules[0].schedule_frequency.refresh_on_day.day_of_month #=> String
    #   resp.refresh_schedules[0].schedule_frequency.timezone #=> String
    #   resp.refresh_schedules[0].schedule_frequency.time_of_the_day #=> String
    #   resp.refresh_schedules[0].start_after_date_time #=> Time
    #   resp.refresh_schedules[0].refresh_type #=> String, one of "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.refresh_schedules[0].arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListRefreshSchedules AWS API Documentation
    #
    # @overload list_refresh_schedules(params = {})
    # @param [Hash] params ({})
    def list_refresh_schedules(params = {}, options = {})
      req = build_request(:list_refresh_schedules, params)
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
    #   The ID of the Amazon Web Services account that contains the template
    #   aliases that you're listing.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the templates
    #   that you're listing.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the templates
    #   that you're listing.
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
    #   The ID of the Amazon Web Services account that contains the theme
    #   aliases that you're listing.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
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

    # Lists all the versions of the themes in the current Amazon Web
    # Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the themes
    #   that you're listing.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_theme_versions({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
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

    # Lists all the themes in the current Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the themes
    #   that you're listing.
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
    #   * `QUICKSIGHT` - Display only the starting themes defined by Amazon
    #     QuickSight.
    #
    # @return [Types::ListThemesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThemesResponse#theme_summary_list #theme_summary_list} => Array&lt;Types::ThemeSummary&gt;
    #   * {Types::ListThemesResponse#next_token #next_token} => String
    #   * {Types::ListThemesResponse#status #status} => Integer
    #   * {Types::ListThemesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Lists all of the refresh schedules for a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   whose refresh schedule you want described.
    #
    # @option params [required, String] :topic_id
    #   The ID for the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::ListTopicRefreshSchedulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicRefreshSchedulesResponse#topic_id #topic_id} => String
    #   * {Types::ListTopicRefreshSchedulesResponse#topic_arn #topic_arn} => String
    #   * {Types::ListTopicRefreshSchedulesResponse#refresh_schedules #refresh_schedules} => Array&lt;Types::TopicRefreshScheduleSummary&gt;
    #   * {Types::ListTopicRefreshSchedulesResponse#status #status} => Integer
    #   * {Types::ListTopicRefreshSchedulesResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topic_refresh_schedules({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.refresh_schedules #=> Array
    #   resp.refresh_schedules[0].dataset_id #=> String
    #   resp.refresh_schedules[0].dataset_arn #=> String
    #   resp.refresh_schedules[0].dataset_name #=> String
    #   resp.refresh_schedules[0].refresh_schedule.is_enabled #=> Boolean
    #   resp.refresh_schedules[0].refresh_schedule.based_on_spice_schedule #=> Boolean
    #   resp.refresh_schedules[0].refresh_schedule.starting_at #=> Time
    #   resp.refresh_schedules[0].refresh_schedule.timezone #=> String
    #   resp.refresh_schedules[0].refresh_schedule.repeat_at #=> String
    #   resp.refresh_schedules[0].refresh_schedule.topic_schedule_type #=> String, one of "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTopicRefreshSchedules AWS API Documentation
    #
    # @overload list_topic_refresh_schedules(params = {})
    # @param [Hash] params ({})
    def list_topic_refresh_schedules(params = {}, options = {})
      req = build_request(:list_topic_refresh_schedules, params)
      req.send_request(options)
    end

    # Lists all of the topics within an account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topics
    #   that you want to list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTopicsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicsResponse#topics_summaries #topics_summaries} => Array&lt;Types::TopicSummary&gt;
    #   * {Types::ListTopicsResponse#next_token #next_token} => String
    #   * {Types::ListTopicsResponse#request_id #request_id} => String
    #   * {Types::ListTopicsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topics({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.topics_summaries #=> Array
    #   resp.topics_summaries[0].arn #=> String
    #   resp.topics_summaries[0].topic_id #=> String
    #   resp.topics_summaries[0].name #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTopics AWS API Documentation
    #
    # @overload list_topics(params = {})
    # @param [Hash] params ({})
    def list_topics(params = {}, options = {})
      req = build_request(:list_topics, params)
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
    #   The Amazon Web Services account ID that the user is in. Currently, you
    #   use the ID for the Amazon Web Services account that contains your
    #   Amazon QuickSight account.
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
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
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
    #   resp.user_list[0].external_login_federation_provider_type #=> String
    #   resp.user_list[0].external_login_federation_provider_url #=> String
    #   resp.user_list[0].external_login_id #=> String
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

    # Lists all of the VPC connections in the current set Amazon Web
    # Services Region of an Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that contains the
    #   VPC connections that you want to list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListVPCConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVPCConnectionsResponse#vpc_connection_summaries #vpc_connection_summaries} => Array&lt;Types::VPCConnectionSummary&gt;
    #   * {Types::ListVPCConnectionsResponse#next_token #next_token} => String
    #   * {Types::ListVPCConnectionsResponse#request_id #request_id} => String
    #   * {Types::ListVPCConnectionsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_connections({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_connection_summaries #=> Array
    #   resp.vpc_connection_summaries[0].vpc_connection_id #=> String
    #   resp.vpc_connection_summaries[0].arn #=> String
    #   resp.vpc_connection_summaries[0].name #=> String
    #   resp.vpc_connection_summaries[0].vpc_id #=> String
    #   resp.vpc_connection_summaries[0].security_group_ids #=> Array
    #   resp.vpc_connection_summaries[0].security_group_ids[0] #=> String
    #   resp.vpc_connection_summaries[0].dns_resolvers #=> Array
    #   resp.vpc_connection_summaries[0].dns_resolvers[0] #=> String
    #   resp.vpc_connection_summaries[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.vpc_connection_summaries[0].availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.vpc_connection_summaries[0].network_interfaces #=> Array
    #   resp.vpc_connection_summaries[0].network_interfaces[0].subnet_id #=> String
    #   resp.vpc_connection_summaries[0].network_interfaces[0].availability_zone #=> String
    #   resp.vpc_connection_summaries[0].network_interfaces[0].error_message #=> String
    #   resp.vpc_connection_summaries[0].network_interfaces[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETED", "DELETION_FAILED", "DELETION_SCHEDULED", "ATTACHMENT_FAILED_ROLLBACK_FAILED"
    #   resp.vpc_connection_summaries[0].network_interfaces[0].network_interface_id #=> String
    #   resp.vpc_connection_summaries[0].role_arn #=> String
    #   resp.vpc_connection_summaries[0].created_time #=> Time
    #   resp.vpc_connection_summaries[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListVPCConnections AWS API Documentation
    #
    # @overload list_vpc_connections(params = {})
    # @param [Hash] params ({})
    def list_vpc_connections(params = {}, options = {})
      req = build_request(:list_vpc_connections, params)
      req.send_request(options)
    end

    # Creates or updates the dataset refresh properties for the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, Types::DataSetRefreshProperties] :data_set_refresh_properties
    #   The dataset refresh properties.
    #
    # @return [Types::PutDataSetRefreshPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDataSetRefreshPropertiesResponse#request_id #request_id} => String
    #   * {Types::PutDataSetRefreshPropertiesResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_set_refresh_properties({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     data_set_refresh_properties: { # required
    #       refresh_configuration: { # required
    #         incremental_refresh: { # required
    #           lookback_window: { # required
    #             column_name: "String", # required
    #             size: 1, # required
    #             size_unit: "HOUR", # required, accepts HOUR, DAY, WEEK
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PutDataSetRefreshProperties AWS API Documentation
    #
    # @overload put_data_set_refresh_properties(params = {})
    # @param [Hash] params ({})
    def put_data_set_refresh_properties(params = {}, options = {})
      req = build_request(:put_data_set_refresh_properties, params)
      req.send_request(options)
    end

    # Creates an Amazon QuickSight user whose identity is associated with
    # the Identity and Access Management (IAM) identity or role specified in
    # the request. When you register a new user from the Amazon QuickSight
    # API, Amazon QuickSight generates a registration URL. The user accesses
    # this registration URL to create their account. Amazon QuickSight
    # doesn't send a registration email to users who are registered from
    # the Amazon QuickSight API. If you want new users to receive a
    # registration email, then add those users in the Amazon QuickSight
    # console. For more information on registering a new user in the Amazon
    # QuickSight console, see [ Inviting users to access Amazon
    # QuickSight][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/managing-users.html#inviting-users
    #
    # @option params [required, String] :identity_type
    #   Amazon QuickSight supports several ways of managing the identity of
    #   users. This parameter accepts two values:
    #
    #   * `IAM`: A user whose identity maps to an existing IAM user or role.
    #
    #   * `QUICKSIGHT`: A user whose identity is owned and managed internally
    #     by Amazon QuickSight.
    #
    # @option params [required, String] :email
    #   The email address of the user that you want to register.
    #
    # @option params [required, String] :user_role
    #   The Amazon QuickSight role for the user. The user role can be one of
    #   the following:
    #
    #   * `READER`: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   * `RESTRICTED_READER`: This role isn't currently available for use.
    #
    #   * `RESTRICTED_AUTHOR`: This role isn't currently available for use.
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
    #   ][1] in the *CLI Reference.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
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
    #   custom permission sets by using the Amazon QuickSight console. Then,
    #   you use the `RegisterUser` API operation to assign the named set of
    #   permissions to a Amazon QuickSight user.
    #
    #   Amazon QuickSight custom permissions are applied through IAM policies.
    #   Therefore, they override the permissions typically granted by
    #   assigning Amazon QuickSight users to one of the default security
    #   cohorts in Amazon QuickSight (admin, author, reader).
    #
    #   This feature is available only to Amazon QuickSight Enterprise edition
    #   subscriptions.
    #
    # @option params [String] :external_login_federation_provider_type
    #   The type of supported external login provider that provides identity
    #   to let a user federate into Amazon QuickSight with an associated
    #   Identity and Access Management(IAM) role. The type of supported
    #   external login provider can be one of the following.
    #
    #   * `COGNITO`: Amazon Cognito. The provider URL is
    #     cognito-identity.amazonaws.com. When choosing the `COGNITO` provider
    #     type, don’t use the "CustomFederationProviderUrl" parameter which
    #     is only needed when the external provider is custom.
    #
    #   * `CUSTOM_OIDC`: Custom OpenID Connect (OIDC) provider. When choosing
    #     `CUSTOM_OIDC` type, use the `CustomFederationProviderUrl` parameter
    #     to provide the custom OIDC provider URL.
    #
    # @option params [String] :custom_federation_provider_url
    #   The URL of the custom OpenID Connect (OIDC) provider that provides
    #   identity to let a user federate into Amazon QuickSight with an
    #   associated Identity and Access Management(IAM) role. This parameter
    #   should only be used when `ExternalLoginFederationProviderType`
    #   parameter is set to `CUSTOM_OIDC`.
    #
    # @option params [String] :external_login_id
    #   The identity ID for a user in the external login provider.
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
    #     external_login_federation_provider_type: "String",
    #     custom_federation_provider_url: "String",
    #     external_login_id: "String",
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
    #   resp.user.external_login_federation_provider_type #=> String
    #   resp.user.external_login_federation_provider_url #=> String
    #   resp.user.external_login_id #=> String
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
    #   The ID of the Amazon Web Services account that contains the analysis.
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
    #     analysis_id: "ShortRestrictiveResourceId", # required
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
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analyses
    #   that you're searching for.
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
    #         operator: "StringEquals", # accepts StringEquals, StringLike
    #         name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER, QUICKSIGHT_VIEWER_OR_OWNER, DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, ANALYSIS_NAME
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
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the user whose
    #   dashboards you're searching for.
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
    #         operator: "StringEquals", # required, accepts StringEquals, StringLike
    #         name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER, QUICKSIGHT_VIEWER_OR_OWNER, DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, DASHBOARD_NAME
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

    # Use the `SearchDataSets` operation to search for datasets that belong
    # to an account.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, Array<Types::DataSetSearchFilter>] :filters
    #   The filters to apply to the search.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::SearchDataSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDataSetsResponse#data_set_summaries #data_set_summaries} => Array&lt;Types::DataSetSummary&gt;
    #   * {Types::SearchDataSetsResponse#next_token #next_token} => String
    #   * {Types::SearchDataSetsResponse#status #status} => Integer
    #   * {Types::SearchDataSetsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_data_sets({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # required, accepts StringEquals, StringLike
    #         name: "QUICKSIGHT_VIEWER_OR_OWNER", # required, accepts QUICKSIGHT_VIEWER_OR_OWNER, QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, DATASET_NAME
    #         value: "String", # required
    #       },
    #     ],
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
    #   resp.data_set_summaries[0].row_level_permission_data_set.format_version #=> String, one of "VERSION_1", "VERSION_2"
    #   resp.data_set_summaries[0].row_level_permission_data_set.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_set_summaries[0].row_level_permission_tag_configuration_applied #=> Boolean
    #   resp.data_set_summaries[0].column_level_permission_rules_applied #=> Boolean
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDataSets AWS API Documentation
    #
    # @overload search_data_sets(params = {})
    # @param [Hash] params ({})
    def search_data_sets(params = {}, options = {})
      req = build_request(:search_data_sets, params)
      req.send_request(options)
    end

    # Use the `SearchDataSources` operation to search for data sources that
    # belong to an account.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, Array<Types::DataSourceSearchFilter>] :filters
    #   The filters to apply to the search.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::SearchDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDataSourcesResponse#data_source_summaries #data_source_summaries} => Array&lt;Types::DataSourceSummary&gt;
    #   * {Types::SearchDataSourcesResponse#next_token #next_token} => String
    #   * {Types::SearchDataSourcesResponse#status #status} => Integer
    #   * {Types::SearchDataSourcesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_data_sources({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # required, accepts StringEquals, StringLike
    #         name: "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER", # required, accepts DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, DATASOURCE_NAME
    #         value: "String", # required
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_summaries #=> Array
    #   resp.data_source_summaries[0].arn #=> String
    #   resp.data_source_summaries[0].data_source_id #=> String
    #   resp.data_source_summaries[0].name #=> String
    #   resp.data_source_summaries[0].type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL", "DATABRICKS"
    #   resp.data_source_summaries[0].created_time #=> Time
    #   resp.data_source_summaries[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDataSources AWS API Documentation
    #
    # @overload search_data_sources(params = {})
    # @param [Hash] params ({})
    def search_data_sources(params = {}, options = {})
      req = build_request(:search_data_sources, params)
      req.send_request(options)
    end

    # Searches the subfolders in a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, Array<Types::FolderSearchFilter>] :filters
    #   The filters to apply to the search. Currently, you can search only by
    #   the parent folder ARN. For example, `"Filters": [ \{ "Name":
    #   "PARENT_FOLDER_ARN", "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:folder/folderId" \} ]`.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::SearchFoldersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFoldersResponse#status #status} => Integer
    #   * {Types::SearchFoldersResponse#folder_summary_list #folder_summary_list} => Array&lt;Types::FolderSummary&gt;
    #   * {Types::SearchFoldersResponse#next_token #next_token} => String
    #   * {Types::SearchFoldersResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_folders({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # accepts StringEquals, StringLike
    #         name: "PARENT_FOLDER_ARN", # accepts PARENT_FOLDER_ARN, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, QUICKSIGHT_OWNER, QUICKSIGHT_VIEWER_OR_OWNER, FOLDER_NAME
    #         value: "String",
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_summary_list #=> Array
    #   resp.folder_summary_list[0].arn #=> String
    #   resp.folder_summary_list[0].folder_id #=> String
    #   resp.folder_summary_list[0].name #=> String
    #   resp.folder_summary_list[0].folder_type #=> String, one of "SHARED"
    #   resp.folder_summary_list[0].created_time #=> Time
    #   resp.folder_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchFolders AWS API Documentation
    #
    # @overload search_folders(params = {})
    # @param [Hash] params ({})
    def search_folders(params = {}, options = {})
      req = build_request(:search_folders, params)
      req.send_request(options)
    end

    # Use the `SearchGroups` operation to search groups in a specified
    # Amazon QuickSight namespace using the supplied filters.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want to search.
    #
    # @option params [required, Array<Types::GroupSearchFilter>] :filters
    #   The structure for the search filters that you want to apply to your
    #   search.
    #
    # @return [Types::SearchGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::SearchGroupsResponse#next_token #next_token} => String
    #   * {Types::SearchGroupsResponse#request_id #request_id} => String
    #   * {Types::SearchGroupsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_groups({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #     filters: [ # required
    #       {
    #         operator: "StartsWith", # required, accepts StartsWith
    #         name: "GROUP_NAME", # required, accepts GROUP_NAME
    #         value: "String", # required
    #       },
    #     ],
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchGroups AWS API Documentation
    #
    # @overload search_groups(params = {})
    # @param [Hash] params ({})
    def search_groups(params = {}, options = {})
      req = build_request(:search_groups, params)
      req.send_request(options)
    end

    # Starts an Asset Bundle export job.
    #
    # An Asset Bundle export job exports specified Amazon QuickSight assets.
    # You can also choose to export any asset dependencies in the same job.
    # Export jobs run asynchronously and can be polled with a
    # `DescribeAssetBundleExportJob` API call. When a job is successfully
    # completed, a download URL that contains the exported assets is
    # returned. The URL is valid for 5 minutes and can be refreshed with a
    # `DescribeAssetBundleExportJob` API call. Each Amazon QuickSight
    # account can run up to 5 export jobs concurrently.
    #
    # The API caller must have the necessary permissions in their IAM role
    # to access each resource before the resources can be exported.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account to export assets from.
    #
    # @option params [required, String] :asset_bundle_export_job_id
    #   The ID of the job. This ID is unique while the job is running. After
    #   the job is completed, you can reuse this ID for another job.
    #
    # @option params [required, Array<String>] :resource_arns
    #   An array of resource ARNs to export. The following resources are
    #   supported.
    #
    #   * `Analysis`
    #
    #   * `Dashboard`
    #
    #   * `DataSet`
    #
    #   * `DataSource`
    #
    #   * `RefreshSchedule`
    #
    #   * `Theme`
    #
    #   * `VPCConnection`
    #
    #   The API caller must have the necessary permissions in their IAM role
    #   to access each resource before the resources can be exported.
    #
    # @option params [Boolean] :include_all_dependencies
    #   A Boolean that determines whether all dependencies of each resource
    #   ARN are recursively exported with the job. For example, say you
    #   provided a Dashboard ARN to the `ResourceArns` parameter. If you set
    #   `IncludeAllDependencies` to `TRUE`, any theme, dataset, and data
    #   source resource that is a dependency of the dashboard is also
    #   exported.
    #
    # @option params [required, String] :export_format
    #   The export data format.
    #
    # @option params [Types::AssetBundleCloudFormationOverridePropertyConfiguration] :cloud_formation_override_property_configuration
    #   An optional collection of structures that generate CloudFormation
    #   parameters to override the existing resource property values when the
    #   resource is exported to a new CloudFormation template.
    #
    #   Use this field if the `ExportFormat` field of a
    #   `StartAssetBundleExportJobRequest` API call is set to
    #   `CLOUDFORMATION_JSON`.
    #
    # @return [Types::StartAssetBundleExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAssetBundleExportJobResponse#arn #arn} => String
    #   * {Types::StartAssetBundleExportJobResponse#asset_bundle_export_job_id #asset_bundle_export_job_id} => String
    #   * {Types::StartAssetBundleExportJobResponse#request_id #request_id} => String
    #   * {Types::StartAssetBundleExportJobResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_asset_bundle_export_job({
    #     aws_account_id: "AwsAccountId", # required
    #     asset_bundle_export_job_id: "ShortRestrictiveResourceId", # required
    #     resource_arns: ["Arn"], # required
    #     include_all_dependencies: false,
    #     export_format: "CLOUDFORMATION_JSON", # required, accepts CLOUDFORMATION_JSON, QUICKSIGHT_JSON
    #     cloud_formation_override_property_configuration: {
    #       resource_id_override_configuration: {
    #         prefix_for_all_resources: false,
    #       },
    #       vpc_connections: [
    #         {
    #           arn: "Arn",
    #           properties: ["Name"], # required, accepts Name, DnsResolvers, RoleArn
    #         },
    #       ],
    #       refresh_schedules: [
    #         {
    #           arn: "Arn",
    #           properties: ["StartAfterDateTime"], # required, accepts StartAfterDateTime
    #         },
    #       ],
    #       data_sources: [
    #         {
    #           arn: "Arn",
    #           properties: ["Name"], # required, accepts Name, DisableSsl, SecretArn, Username, Password, Domain, WorkGroup, Host, Port, Database, DataSetName, Catalog, InstanceId, ClusterId, ManifestFileLocation, Warehouse, RoleArn
    #         },
    #       ],
    #       data_sets: [
    #         {
    #           arn: "Arn",
    #           properties: ["Name"], # required, accepts Name
    #         },
    #       ],
    #       themes: [
    #         {
    #           arn: "Arn",
    #           properties: ["Name"], # required, accepts Name
    #         },
    #       ],
    #       analyses: [
    #         {
    #           arn: "Arn",
    #           properties: ["Name"], # required, accepts Name
    #         },
    #       ],
    #       dashboards: [
    #         {
    #           arn: "Arn",
    #           properties: ["Name"], # required, accepts Name
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.asset_bundle_export_job_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StartAssetBundleExportJob AWS API Documentation
    #
    # @overload start_asset_bundle_export_job(params = {})
    # @param [Hash] params ({})
    def start_asset_bundle_export_job(params = {}, options = {})
      req = build_request(:start_asset_bundle_export_job, params)
      req.send_request(options)
    end

    # Starts an Asset Bundle import job.
    #
    # An Asset Bundle import job imports specified Amazon QuickSight assets
    # into an Amazon QuickSight account. You can also choose to import a
    # naming prefix and specified configuration overrides. The assets that
    # are contained in the bundle file that you provide are used to create
    # or update a new or existing asset in your Amazon QuickSight account.
    # Each Amazon QuickSight account can run up to 5 import jobs
    # concurrently.
    #
    # The API caller must have the necessary `"create"`, `"describe"`, and
    # `"update"` permissions in their IAM role to access each resource type
    # that is contained in the bundle file before the resources can be
    # imported.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account to import assets into.
    #
    # @option params [required, String] :asset_bundle_import_job_id
    #   The ID of the job. This ID is unique while the job is running. After
    #   the job is completed, you can reuse this ID for another job.
    #
    # @option params [required, Types::AssetBundleImportSource] :asset_bundle_import_source
    #   The source of the asset bundle zip file that contains the data that
    #   you want to import. The file must be in `QUICKSIGHT_JSON` format.
    #
    # @option params [Types::AssetBundleImportJobOverrideParameters] :override_parameters
    #   Optional overrides to be applied to the resource configuration before
    #   import.
    #
    # @option params [String] :failure_action
    #   The failure action for the import job.
    #
    #   If you choose `ROLLBACK`, failed import jobs will attempt to undo any
    #   asset changes caused by the failed job.
    #
    #   If you choose `DO_NOTHING`, failed import jobs will not attempt to
    #   roll back any asset changes caused by the failed job, possibly keeping
    #   the Amazon QuickSight account in an inconsistent state.
    #
    # @return [Types::StartAssetBundleImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAssetBundleImportJobResponse#arn #arn} => String
    #   * {Types::StartAssetBundleImportJobResponse#asset_bundle_import_job_id #asset_bundle_import_job_id} => String
    #   * {Types::StartAssetBundleImportJobResponse#request_id #request_id} => String
    #   * {Types::StartAssetBundleImportJobResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_asset_bundle_import_job({
    #     aws_account_id: "AwsAccountId", # required
    #     asset_bundle_import_job_id: "ShortRestrictiveResourceId", # required
    #     asset_bundle_import_source: { # required
    #       body: "data",
    #       s3_uri: "S3Uri",
    #     },
    #     override_parameters: {
    #       resource_id_override_configuration: {
    #         prefix_for_all_resources: "String",
    #       },
    #       vpc_connections: [
    #         {
    #           vpc_connection_id: "VPCConnectionResourceIdUnrestricted", # required
    #           name: "ResourceName",
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #           dns_resolvers: ["IPv4Address"],
    #           role_arn: "RoleArn",
    #         },
    #       ],
    #       refresh_schedules: [
    #         {
    #           data_set_id: "ResourceId", # required
    #           schedule_id: "String", # required
    #           start_after_date_time: Time.now,
    #         },
    #       ],
    #       data_sources: [
    #         {
    #           data_source_id: "ResourceId", # required
    #           name: "ResourceName",
    #           data_source_parameters: {
    #             amazon_elasticsearch_parameters: {
    #               domain: "Domain", # required
    #             },
    #             athena_parameters: {
    #               work_group: "WorkGroup",
    #               role_arn: "RoleArn",
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
    #             oracle_parameters: {
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
    #               role_arn: "RoleArn",
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
    #             amazon_open_search_parameters: {
    #               domain: "Domain", # required
    #             },
    #             exasol_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             databricks_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               sql_endpoint_path: "SqlEndpointPath", # required
    #             },
    #           },
    #           vpc_connection_properties: {
    #             vpc_connection_arn: "Arn", # required
    #           },
    #           ssl_properties: {
    #             disable_ssl: false,
    #           },
    #           credentials: {
    #             credential_pair: {
    #               username: "DbUsername", # required
    #               password: "Password", # required
    #             },
    #             secret_arn: "SecretArn",
    #           },
    #         },
    #       ],
    #       data_sets: [
    #         {
    #           data_set_id: "ResourceId", # required
    #           name: "ResourceName",
    #         },
    #       ],
    #       themes: [
    #         {
    #           theme_id: "ResourceId", # required
    #           name: "ResourceName",
    #         },
    #       ],
    #       analyses: [
    #         {
    #           analysis_id: "ResourceId", # required
    #           name: "ResourceName",
    #         },
    #       ],
    #       dashboards: [
    #         {
    #           dashboard_id: "ResourceId", # required
    #           name: "ResourceName",
    #         },
    #       ],
    #     },
    #     failure_action: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.asset_bundle_import_job_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StartAssetBundleImportJob AWS API Documentation
    #
    # @overload start_asset_bundle_import_job(params = {})
    # @param [Hash] params ({})
    def start_asset_bundle_import_job(params = {}, options = {})
      req = build_request(:start_asset_bundle_import_job, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified Amazon
    # QuickSight resource.
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
    # You can associate as many as 50 tags with a resource. Amazon
    # QuickSight supports tagging on data set, data source, dashboard,
    # template, and topic.
    #
    # Tagging for Amazon QuickSight works in a similar way to tagging for
    # other Amazon Web Services services, except for the following:
    #
    # * You can't use tags to track costs for Amazon QuickSight. This
    #   isn't possible because you can't tag the resources that Amazon
    #   QuickSight costs are based on, for example Amazon QuickSight storage
    #   capacity (SPICE), number of users, type of users, and usage metrics.
    #
    # * Amazon QuickSight doesn't currently support the tag editor for
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

    # Updates Amazon QuickSight customizations for the current Amazon Web
    # Services Region. Currently, the only customization that you can use is
    # a theme.
    #
    # You can use customizations for your Amazon Web Services account or, if
    # you specify a namespace, for a Amazon QuickSight namespace instead.
    # Customizations that apply to a namespace override customizations that
    # apply to an Amazon Web Services account. To find out which
    # customizations apply, use the `DescribeAccountCustomization` API
    # operation.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to update
    #   Amazon QuickSight customizations for.
    #
    # @option params [String] :namespace
    #   The namespace that you want to update Amazon QuickSight customizations
    #   for.
    #
    # @option params [required, Types::AccountCustomization] :account_customization
    #   The Amazon QuickSight customizations you're updating in the current
    #   Amazon Web Services Region.
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
    #       default_email_customization_template: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.aws_account_id #=> String
    #   resp.namespace #=> String
    #   resp.account_customization.default_theme #=> String
    #   resp.account_customization.default_email_customization_template #=> String
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

    # Updates the Amazon QuickSight settings in your Amazon Web Services
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the Amazon
    #   QuickSight settings that you want to list.
    #
    # @option params [required, String] :default_namespace
    #   The default namespace for this Amazon Web Services account. Currently,
    #   the default is `default`. IAM users that register for the first time
    #   with Amazon QuickSight provide an email address that becomes
    #   associated with the default namespace.
    #
    # @option params [String] :notification_email
    #   The email address that you want Amazon QuickSight to send
    #   notifications to regarding your Amazon Web Services account or Amazon
    #   QuickSight subscription.
    #
    # @option params [Boolean] :termination_protection_enabled
    #   A boolean value that determines whether or not an Amazon QuickSight
    #   account can be deleted. A `True` value doesn't allow the account to
    #   be deleted and results in an error message if a user tries to make a
    #   `DeleteAccountSubscription` request. A `False` value will allow the
    #   account to be deleted.
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
    #     termination_protection_enabled: false,
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
    #   The ID of the Amazon Web Services account that contains the analysis
    #   that you're updating.
    #
    # @option params [required, String] :analysis_id
    #   The ID for the analysis that you're updating. This ID displays in the
    #   URL of the analysis.
    #
    # @option params [required, String] :name
    #   A descriptive name for the analysis that you're updating. This name
    #   displays for the analysis in the Amazon QuickSight console.
    #
    # @option params [Types::Parameters] :parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might accept
    #   multiple values.
    #
    # @option params [Types::AnalysisSourceEntity] :source_entity
    #   A source entity to use for the analysis that you're updating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #
    # @option params [String] :theme_arn
    #   The Amazon Resource Name (ARN) for the theme to apply to the analysis
    #   that you're creating. To see the theme in the Amazon QuickSight
    #   console, make sure that you have access to it.
    #
    # @option params [Types::AnalysisDefinition] :definition
    #   The definition of an analysis.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    # @return [Types::UpdateAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnalysisResponse#arn #arn} => String
    #   * {Types::UpdateAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::UpdateAnalysisResponse#update_status #update_status} => String
    #   * {Types::UpdateAnalysisResponse#status #status} => Integer
    #   * {Types::UpdateAnalysisResponse#request_id #request_id} => String
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
    #   The ID of the Amazon Web Services account that contains the analysis
    #   whose permissions you're updating. You must be using the Amazon Web
    #   Services account that the analysis is in.
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
    #     analysis_id: "ShortRestrictiveResourceId", # required
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

    # Updates a dashboard in an Amazon Web Services account.
    #
    # <note markdown="1"> Updating a Dashboard creates a new dashboard version but does not
    # immediately publish the new version. You can update the published
    # version of a dashboard by using the ` UpdateDashboardPublishedVersion
    # ` API operation.
    #
    #  </note>
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [required, String] :name
    #   The display name of the dashboard.
    #
    # @option params [Types::DashboardSourceEntity] :source_entity
    #   The entity that you are using as a source when you update the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only update a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to update a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the ` CreateTemplate ` API operation. For `SourceTemplate`, specify
    #   the Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate` ARN can contain any Amazon Web Services account and
    #   any Amazon QuickSight-supported Amazon Web Services Region.
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
    #     Amazon QuickSight disables the left filter pane on the published
    #     dashboard, which can be used for ad hoc (one-time) filtering. This
    #     option is `ENABLED` by default.
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
    #   must exist in the same Amazon Web Services account where you create
    #   the dashboard.
    #
    # @option params [Types::DashboardVersionDefinition] :definition
    #   The definition of a dashboard.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
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
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   whose permissions you're updating.
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
    # @option params [Array<Types::ResourcePermission>] :grant_link_permissions
    #   Grants link permissions to all users in a defined namespace.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_link_permissions
    #   Revokes link permissions from all users in a defined namespace.
    #
    # @return [Types::UpdateDashboardPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardPermissionsResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::UpdateDashboardPermissionsResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateDashboardPermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDashboardPermissionsResponse#status #status} => Integer
    #   * {Types::UpdateDashboardPermissionsResponse#link_sharing_configuration #link_sharing_configuration} => Types::LinkSharingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
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
    #     grant_link_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_link_permissions: [
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
    #   resp.link_sharing_configuration.permissions #=> Array
    #   resp.link_sharing_configuration.permissions[0].principal #=> String
    #   resp.link_sharing_configuration.permissions[0].actions #=> Array
    #   resp.link_sharing_configuration.permissions[0].actions[0] #=> String
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
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're updating.
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
    #     dashboard_id: "ShortRestrictiveResourceId", # required
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

    # Updates a dataset. This operation doesn't support datasets that
    # include uploaded files as a source. Partial updates are not supported
    # by this operation.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to update. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
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
    #   Groupings of columns that work together in certain Amazon QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #
    # @option params [Hash<String,Types::FieldFolder>] :field_folders
    #   The folder that contains fields and nested subfolders for your
    #   dataset.
    #
    # @option params [Types::RowLevelPermissionDataSet] :row_level_permission_data_set
    #   The row-level security configuration for the data you want to create.
    #
    # @option params [Types::RowLevelPermissionTagConfiguration] :row_level_permission_tag_configuration
    #   The configuration of tags on a dataset to set row-level security.
    #   Row-level security tags are currently supported for anonymous
    #   embedding only.
    #
    # @option params [Array<Types::ColumnLevelPermissionRule>] :column_level_permission_rules
    #   A set of one or more definitions of a ` ColumnLevelPermissionRule `.
    #
    # @option params [Types::DataSetUsageConfiguration] :data_set_usage_configuration
    #   The usage configuration to apply to child datasets that reference this
    #   dataset as a source.
    #
    # @option params [Array<Types::DatasetParameter>] :dataset_parameters
    #   The parameter declarations of the dataset.
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
    #           catalog: "RelationalTableCatalog",
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
    #                   column_description: {
    #                     text: "ColumnDescriptiveText",
    #                   },
    #                 },
    #               ],
    #             },
    #             untag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tag_names: ["COLUMN_GEOGRAPHIC_ROLE"], # required, accepts COLUMN_GEOGRAPHIC_ROLE, COLUMN_DESCRIPTION
    #             },
    #             override_dataset_parameter_operation: {
    #               parameter_name: "DatasetParameterName", # required
    #               new_parameter_name: "DatasetParameterName",
    #               new_default_values: {
    #                 string_static_values: ["StringDatasetParameterDefaultValue"],
    #                 decimal_static_values: [1.0],
    #                 date_time_static_values: [Time.now],
    #                 integer_static_values: [1],
    #               },
    #             },
    #           },
    #         ],
    #         source: { # required
    #           join_instruction: {
    #             left_operand: "LogicalTableId", # required
    #             right_operand: "LogicalTableId", # required
    #             left_join_key_properties: {
    #               unique_key: false,
    #             },
    #             right_join_key_properties: {
    #               unique_key: false,
    #             },
    #             type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #             on_clause: "OnClause", # required
    #           },
    #           physical_table_id: "PhysicalTableId",
    #           data_set_arn: "Arn",
    #         },
    #       },
    #     },
    #     import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: "ColumnGroupName", # required
    #           country_code: "US", # accepts US
    #           columns: ["ColumnName"], # required
    #         },
    #       },
    #     ],
    #     field_folders: {
    #       "FieldFolderPath" => {
    #         description: "FieldFolderDescription",
    #         columns: ["String"],
    #       },
    #     },
    #     row_level_permission_data_set: {
    #       namespace: "Namespace",
    #       arn: "Arn", # required
    #       permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
    #       format_version: "VERSION_1", # accepts VERSION_1, VERSION_2
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     row_level_permission_tag_configuration: {
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #       tag_rules: [ # required
    #         {
    #           tag_key: "SessionTagKey", # required
    #           column_name: "String", # required
    #           tag_multi_value_delimiter: "RowLevelPermissionTagDelimiter",
    #           match_all_value: "SessionTagValue",
    #         },
    #       ],
    #       tag_rule_configurations: [
    #         ["SessionTagKey"],
    #       ],
    #     },
    #     column_level_permission_rules: [
    #       {
    #         principals: ["String"],
    #         column_names: ["String"],
    #       },
    #     ],
    #     data_set_usage_configuration: {
    #       disable_use_as_direct_query_source: false,
    #       disable_use_as_imported_source: false,
    #     },
    #     dataset_parameters: [
    #       {
    #         string_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: ["StringDatasetParameterDefaultValue"],
    #           },
    #         },
    #         decimal_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: [1.0],
    #           },
    #         },
    #         integer_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: [1],
    #           },
    #         },
    #         date_time_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #           default_values: {
    #             static_values: [Time.now],
    #           },
    #         },
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
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset whose permissions you want to update. This ID
    #   is unique per Amazon Web Services Region for each Amazon Web Services
    #   account.
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
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #
    # @option params [required, String] :name
    #   A display name for the data source.
    #
    # @option params [Types::DataSourceParameters] :data_source_parameters
    #   The parameters that Amazon QuickSight uses to connect to your
    #   underlying source.
    #
    # @option params [Types::DataSourceCredentials] :credentials
    #   The credentials that Amazon QuickSight that uses to connect to your
    #   underlying source. Currently, only credentials based on user name and
    #   password are supported.
    #
    # @option params [Types::VpcConnectionProperties] :vpc_connection_properties
    #   Use this parameter only when you want Amazon QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #
    # @option params [Types::SslProperties] :ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when Amazon QuickSight
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
    #         role_arn: "RoleArn",
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
    #       oracle_parameters: {
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
    #         role_arn: "RoleArn",
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
    #       amazon_open_search_parameters: {
    #         domain: "Domain", # required
    #       },
    #       exasol_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       databricks_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         sql_endpoint_path: "SqlEndpointPath", # required
    #       },
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: "DbUsername", # required
    #         password: "Password", # required
    #         alternate_data_source_parameters: [
    #           {
    #             amazon_elasticsearch_parameters: {
    #               domain: "Domain", # required
    #             },
    #             athena_parameters: {
    #               work_group: "WorkGroup",
    #               role_arn: "RoleArn",
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
    #             oracle_parameters: {
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
    #               role_arn: "RoleArn",
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
    #             amazon_open_search_parameters: {
    #               domain: "Domain", # required
    #             },
    #             exasol_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             databricks_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               sql_endpoint_path: "SqlEndpointPath", # required
    #             },
    #           },
    #         ],
    #       },
    #       copy_source_arn: "CopySourceArn",
    #       secret_arn: "SecretArn",
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
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
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

    # Updates the name of a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder to
    #   update.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [required, String] :name
    #   The name of the folder.
    #
    # @return [Types::UpdateFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFolderResponse#status #status} => Integer
    #   * {Types::UpdateFolderResponse#arn #arn} => String
    #   * {Types::UpdateFolderResponse#folder_id #folder_id} => String
    #   * {Types::UpdateFolderResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_folder({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     name: "FolderName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.folder_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateFolder AWS API Documentation
    #
    # @overload update_folder(params = {})
    # @param [Hash] params ({})
    def update_folder(params = {}, options = {})
      req = build_request(:update_folder, params)
      req.send_request(options)
    end

    # Updates permissions of a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder to
    #   update.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The permissions that you want to grant on a resource.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The permissions that you want to revoke from a resource.
    #
    # @return [Types::UpdateFolderPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFolderPermissionsResponse#status #status} => Integer
    #   * {Types::UpdateFolderPermissionsResponse#arn #arn} => String
    #   * {Types::UpdateFolderPermissionsResponse#folder_id #folder_id} => String
    #   * {Types::UpdateFolderPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateFolderPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_folder_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
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
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.folder_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateFolderPermissions AWS API Documentation
    #
    # @overload update_folder_permissions(params = {})
    # @param [Hash] params ({})
    def update_folder_permissions(params = {}, options = {})
      req = build_request(:update_folder_permissions, params)
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
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want to update.
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
    # request. This overwrites all of the users included in `Identities`.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the IAM policy
    #   assignment.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment, also called a rule. The name must be
    #   unique within the Amazon Web Services account.
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
    #   The ARN for the IAM policy to apply to the Amazon QuickSight users and
    #   groups specified in this assignment.
    #
    # @option params [Hash<String,Array>] :identities
    #   The Amazon QuickSight users, groups, or both that you want to assign
    #   the policy to.
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

    # Updates the content and status of IP rules. To use this operation, you
    # must provide the entire map of rules. You can use the
    # `DescribeIpRestriction` operation to get the current rule map.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the IP rules.
    #
    # @option params [Hash<String,String>] :ip_restriction_rule_map
    #   A map that describes the updated IP rules with CIDR ranges and
    #   descriptions.
    #
    # @option params [Boolean] :enabled
    #   A value that specifies whether IP rules are turned on.
    #
    # @return [Types::UpdateIpRestrictionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIpRestrictionResponse#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateIpRestrictionResponse#request_id #request_id} => String
    #   * {Types::UpdateIpRestrictionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_restriction({
    #     aws_account_id: "AwsAccountId", # required
    #     ip_restriction_rule_map: {
    #       "CIDR" => "IpRestrictionRuleDescription",
    #     },
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIpRestriction AWS API Documentation
    #
    # @overload update_ip_restriction(params = {})
    # @param [Hash] params ({})
    def update_ip_restriction(params = {}, options = {})
      req = build_request(:update_ip_restriction, params)
      req.send_request(options)
    end

    # Use the `UpdatePublicSharingSettings` operation to turn on or turn off
    # the public sharing settings of an Amazon QuickSight dashboard.
    #
    # To use this operation, turn on session capacity pricing for your
    # Amazon QuickSight account.
    #
    # Before you can turn on public sharing on your account, make sure to
    # give public sharing permissions to an administrative user in the
    # Identity and Access Management (IAM) console. For more information on
    # using IAM with Amazon QuickSight, see [Using Amazon QuickSight with
    # IAM][1] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID associated with your Amazon
    #   QuickSight subscription.
    #
    # @option params [Boolean] :public_sharing_enabled
    #   A Boolean value that indicates whether public sharing is turned on for
    #   an Amazon QuickSight account.
    #
    # @return [Types::UpdatePublicSharingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePublicSharingSettingsResponse#request_id #request_id} => String
    #   * {Types::UpdatePublicSharingSettingsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_public_sharing_settings({
    #     aws_account_id: "AwsAccountId", # required
    #     public_sharing_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdatePublicSharingSettings AWS API Documentation
    #
    # @overload update_public_sharing_settings(params = {})
    # @param [Hash] params ({})
    def update_public_sharing_settings(params = {}, options = {})
      req = build_request(:update_public_sharing_settings, params)
      req.send_request(options)
    end

    # Updates a refresh schedule for a dataset.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, Types::RefreshSchedule] :schedule
    #   The refresh schedule.
    #
    # @return [Types::UpdateRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRefreshScheduleResponse#status #status} => Integer
    #   * {Types::UpdateRefreshScheduleResponse#request_id #request_id} => String
    #   * {Types::UpdateRefreshScheduleResponse#schedule_id #schedule_id} => String
    #   * {Types::UpdateRefreshScheduleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_refresh_schedule({
    #     data_set_id: "ResourceId", # required
    #     aws_account_id: "AwsAccountId", # required
    #     schedule: { # required
    #       schedule_id: "String", # required
    #       schedule_frequency: { # required
    #         interval: "MINUTE15", # required, accepts MINUTE15, MINUTE30, HOURLY, DAILY, WEEKLY, MONTHLY
    #         refresh_on_day: {
    #           day_of_week: "SUNDAY", # accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #           day_of_month: "DayOfMonth",
    #         },
    #         timezone: "String",
    #         time_of_the_day: "String",
    #       },
    #       start_after_date_time: Time.now,
    #       refresh_type: "INCREMENTAL_REFRESH", # required, accepts INCREMENTAL_REFRESH, FULL_REFRESH
    #       arn: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.schedule_id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateRefreshSchedule AWS API Documentation
    #
    # @overload update_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def update_refresh_schedule(params = {}, options = {})
      req = build_request(:update_refresh_schedule, params)
      req.send_request(options)
    end

    # Updates a template from an existing Amazon QuickSight analysis or
    # another template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're updating.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [Types::TemplateSourceEntity] :source_entity
    #   The entity that you are using as a source when you update the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name (ARN).
    #   For `SourceTemplate`, specify the ARN of the source template. For
    #   `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any Amazon Web Services account and
    #   any Amazon QuickSight-supported Amazon Web Services Region;.
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
    # @option params [Types::TemplateVersionDefinition] :definition
    #   The definition of a template.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
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
    #   The ID of the Amazon Web Services account that contains the template
    #   alias that you're updating.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the template.
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
    #     template_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the theme that
    #   you're updating.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [String] :name
    #   The name for the theme.
    #
    # @option params [required, String] :base_theme_id
    #   The theme ID, defined by Amazon QuickSight, that a custom theme
    #   inherits from. All themes initially inherit from a default Amazon
    #   QuickSight theme.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     name: "ThemeName",
    #     base_theme_id: "ShortRestrictiveResourceId", # required
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
    #       typography: {
    #         font_families: [
    #           {
    #             font_family: "String",
    #           },
    #         ],
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
    #   The ID of the Amazon Web Services account that contains the theme
    #   alias that you're updating.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
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
    #   The ID of the Amazon Web Services account that contains the theme.
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
    #     theme_id: "ShortRestrictiveResourceId", # required
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

    # Updates a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic that
    #   you want to update.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, Types::TopicDetails] :topic
    #   The definition of the topic that you want to update.
    #
    # @return [Types::UpdateTopicResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTopicResponse#topic_id #topic_id} => String
    #   * {Types::UpdateTopicResponse#arn #arn} => String
    #   * {Types::UpdateTopicResponse#refresh_arn #refresh_arn} => String
    #   * {Types::UpdateTopicResponse#request_id #request_id} => String
    #   * {Types::UpdateTopicResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_topic({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     topic: { # required
    #       name: "ResourceName",
    #       description: "LimitedString",
    #       data_sets: [
    #         {
    #           dataset_arn: "Arn", # required
    #           dataset_name: "LimitedString",
    #           dataset_description: "LimitedString",
    #           data_aggregation: {
    #             dataset_row_date_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #             default_date_column_name: "LimitedString",
    #           },
    #           filters: [
    #             {
    #               filter_description: "LimitedString",
    #               filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #               filter_name: "LimitedString", # required
    #               filter_synonyms: ["LimitedString"],
    #               operand_field_name: "LimitedString", # required
    #               filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER
    #               category_filter: {
    #                 category_filter_function: "EXACT", # accepts EXACT, CONTAINS
    #                 category_filter_type: "CUSTOM_FILTER", # accepts CUSTOM_FILTER, CUSTOM_FILTER_LIST, FILTER_LIST
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                   collective_constant: {
    #                     value_list: ["String"],
    #                   },
    #                 },
    #                 inverse: false,
    #               },
    #               numeric_equality_filter: {
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #                 aggregation: "NO_AGGREGATION", # accepts NO_AGGREGATION, SUM, AVERAGE, COUNT, DISTINCT_COUNT, MAX, MEDIAN, MIN, STDEV, STDEVP, VAR, VARP
    #               },
    #               numeric_range_filter: {
    #                 inclusive: false,
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   range_constant: {
    #                     minimum: "LimitedString",
    #                     maximum: "LimitedString",
    #                   },
    #                 },
    #                 aggregation: "NO_AGGREGATION", # accepts NO_AGGREGATION, SUM, AVERAGE, COUNT, DISTINCT_COUNT, MAX, MEDIAN, MIN, STDEV, STDEVP, VAR, VARP
    #               },
    #               date_range_filter: {
    #                 inclusive: false,
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   range_constant: {
    #                     minimum: "LimitedString",
    #                     maximum: "LimitedString",
    #                   },
    #                 },
    #               },
    #               relative_date_filter: {
    #                 time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #                 relative_date_filter_function: "PREVIOUS", # accepts PREVIOUS, THIS, LAST, NEXT, NOW
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #               },
    #             },
    #           ],
    #           columns: [
    #             {
    #               column_name: "LimitedString", # required
    #               column_friendly_name: "LimitedString",
    #               column_description: "LimitedString",
    #               column_synonyms: ["LimitedString"],
    #               column_data_role: "DIMENSION", # accepts DIMENSION, MEASURE
    #               aggregation: "SUM", # accepts SUM, MAX, MIN, COUNT, DISTINCT_COUNT, AVERAGE
    #               is_included_in_topic: false,
    #               disable_indexing: false,
    #               comparative_order: {
    #                 use_ordering: "GREATER_IS_BETTER", # accepts GREATER_IS_BETTER, LESSER_IS_BETTER, SPECIFIED
    #                 specifed_order: ["String"],
    #                 treat_undefined_specified_values: "LEAST", # accepts LEAST, MOST
    #               },
    #               semantic_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #                 truthy_cell_value: "SensitiveString",
    #                 truthy_cell_value_synonyms: ["SensitiveString"],
    #                 falsey_cell_value: "SensitiveString",
    #                 falsey_cell_value_synonyms: ["SensitiveString"],
    #               },
    #               time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #               allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               not_allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               default_formatting: {
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #               },
    #               never_aggregate_in_filter: false,
    #               cell_value_synonyms: [
    #                 {
    #                   cell_value: "LimitedString",
    #                   synonyms: ["String"],
    #                 },
    #               ],
    #             },
    #           ],
    #           calculated_fields: [
    #             {
    #               calculated_field_name: "LimitedString", # required
    #               calculated_field_description: "LimitedString",
    #               expression: "Expression", # required
    #               calculated_field_synonyms: ["LimitedString"],
    #               is_included_in_topic: false,
    #               disable_indexing: false,
    #               column_data_role: "DIMENSION", # accepts DIMENSION, MEASURE
    #               time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #               default_formatting: {
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #               },
    #               aggregation: "SUM", # accepts SUM, MAX, MIN, COUNT, DISTINCT_COUNT, AVERAGE
    #               comparative_order: {
    #                 use_ordering: "GREATER_IS_BETTER", # accepts GREATER_IS_BETTER, LESSER_IS_BETTER, SPECIFIED
    #                 specifed_order: ["String"],
    #                 treat_undefined_specified_values: "LEAST", # accepts LEAST, MOST
    #               },
    #               semantic_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #                 truthy_cell_value: "SensitiveString",
    #                 truthy_cell_value_synonyms: ["SensitiveString"],
    #                 falsey_cell_value: "SensitiveString",
    #                 falsey_cell_value_synonyms: ["SensitiveString"],
    #               },
    #               allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               not_allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               never_aggregate_in_filter: false,
    #               cell_value_synonyms: [
    #                 {
    #                   cell_value: "LimitedString",
    #                   synonyms: ["String"],
    #                 },
    #               ],
    #             },
    #           ],
    #           named_entities: [
    #             {
    #               entity_name: "LimitedString", # required
    #               entity_description: "LimitedString",
    #               entity_synonyms: ["LimitedString"],
    #               semantic_entity_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #               },
    #               definition: [
    #                 {
    #                   field_name: "LimitedString",
    #                   property_name: "LimitedString",
    #                   property_role: "PRIMARY", # accepts PRIMARY, ID
    #                   property_usage: "INHERIT", # accepts INHERIT, DIMENSION, MEASURE
    #                   metric: {
    #                     aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, CUSTOM
    #                     aggregation_function_parameters: {
    #                       "LimitedString" => "LimitedString",
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.arn #=> String
    #   resp.refresh_arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopic AWS API Documentation
    #
    # @overload update_topic(params = {})
    # @param [Hash] params ({})
    def update_topic(params = {}, options = {})
      req = build_request(:update_topic, params)
      req.send_request(options)
    end

    # Updates the permissions of a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic that
    #   you want to update the permissions for.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The resource permissions that you want to grant to the topic.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The resource permissions that you want to revoke from the topic.
    #
    # @return [Types::UpdateTopicPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTopicPermissionsResponse#topic_id #topic_id} => String
    #   * {Types::UpdateTopicPermissionsResponse#topic_arn #topic_arn} => String
    #   * {Types::UpdateTopicPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateTopicPermissionsResponse#status #status} => Integer
    #   * {Types::UpdateTopicPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_topic_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
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
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicPermissions AWS API Documentation
    #
    # @overload update_topic_permissions(params = {})
    # @param [Hash] params ({})
    def update_topic_permissions(params = {}, options = {})
      req = build_request(:update_topic_permissions, params)
      req.send_request(options)
    end

    # Updates a topic refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   whose refresh schedule you want to update.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :dataset_id
    #   The ID of the dataset.
    #
    # @option params [required, Types::TopicRefreshSchedule] :refresh_schedule
    #   The definition of a refresh schedule.
    #
    # @return [Types::UpdateTopicRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTopicRefreshScheduleResponse#topic_id #topic_id} => String
    #   * {Types::UpdateTopicRefreshScheduleResponse#topic_arn #topic_arn} => String
    #   * {Types::UpdateTopicRefreshScheduleResponse#dataset_arn #dataset_arn} => String
    #   * {Types::UpdateTopicRefreshScheduleResponse#status #status} => Integer
    #   * {Types::UpdateTopicRefreshScheduleResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_topic_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     dataset_id: "String", # required
    #     refresh_schedule: { # required
    #       is_enabled: false, # required
    #       based_on_spice_schedule: false, # required
    #       starting_at: Time.now,
    #       timezone: "LimitedString",
    #       repeat_at: "LimitedString",
    #       topic_schedule_type: "HOURLY", # accepts HOURLY, DAILY, WEEKLY, MONTHLY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.dataset_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicRefreshSchedule AWS API Documentation
    #
    # @overload update_topic_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def update_topic_refresh_schedule(params = {}, options = {})
      req = build_request(:update_topic_refresh_schedule, params)
      req.send_request(options)
    end

    # Updates an Amazon QuickSight user.
    #
    # @option params [required, String] :user_name
    #   The Amazon QuickSight user name that you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
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
    #   * `READER`: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   The name of the Amazon QuickSight role is invisible to the user except
    #   for the console screens dealing with permissions.
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
    #   custom permission sets by using the Amazon QuickSight console. Then,
    #   you use the `RegisterUser` API operation to assign the named set of
    #   permissions to a Amazon QuickSight user.
    #
    #   Amazon QuickSight custom permissions are applied through IAM policies.
    #   Therefore, they override the permissions typically granted by
    #   assigning Amazon QuickSight users to one of the default security
    #   cohorts in Amazon QuickSight (admin, author, reader).
    #
    #   This feature is available only to Amazon QuickSight Enterprise edition
    #   subscriptions.
    #
    # @option params [Boolean] :unapply_custom_permissions
    #   A flag that you use to indicate that you want to remove all custom
    #   permissions from this user. Using this parameter resets the user to
    #   the state it was in before a custom permissions profile was applied.
    #   This parameter defaults to NULL and it doesn't accept any other
    #   value.
    #
    # @option params [String] :external_login_federation_provider_type
    #   The type of supported external login provider that provides identity
    #   to let a user federate into Amazon QuickSight with an associated
    #   Identity and Access Management(IAM) role. The type of supported
    #   external login provider can be one of the following.
    #
    #   * `COGNITO`: Amazon Cognito. The provider URL is
    #     cognito-identity.amazonaws.com. When choosing the `COGNITO` provider
    #     type, don’t use the "CustomFederationProviderUrl" parameter which
    #     is only needed when the external provider is custom.
    #
    #   * `CUSTOM_OIDC`: Custom OpenID Connect (OIDC) provider. When choosing
    #     `CUSTOM_OIDC` type, use the `CustomFederationProviderUrl` parameter
    #     to provide the custom OIDC provider URL.
    #
    #   * `NONE`: This clears all the previously saved external login
    #     information for a user. Use the ` DescribeUser ` API operation to
    #     check the external login information.
    #
    # @option params [String] :custom_federation_provider_url
    #   The URL of the custom OpenID Connect (OIDC) provider that provides
    #   identity to let a user federate into Amazon QuickSight with an
    #   associated Identity and Access Management(IAM) role. This parameter
    #   should only be used when `ExternalLoginFederationProviderType`
    #   parameter is set to `CUSTOM_OIDC`.
    #
    # @option params [String] :external_login_id
    #   The identity ID for a user in the external login provider.
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
    #     external_login_federation_provider_type: "String",
    #     custom_federation_provider_url: "String",
    #     external_login_id: "String",
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
    #   resp.user.external_login_federation_provider_type #=> String
    #   resp.user.external_login_federation_provider_url #=> String
    #   resp.user.external_login_id #=> String
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

    # Updates a VPC connection.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that contains the
    #   VPC connection that you want to update.
    #
    # @option params [required, String] :vpc_connection_id
    #   The ID of the VPC connection that you're updating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon Web
    #   Services account.
    #
    # @option params [required, String] :name
    #   The display name for the VPC connection.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of subnet IDs for the VPC connection.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   A list of security group IDs for the VPC connection.
    #
    # @option params [Array<String>] :dns_resolvers
    #   A list of IP addresses of DNS resolver endpoints for the VPC
    #   connection.
    #
    # @option params [required, String] :role_arn
    #   An IAM role associated with the VPC connection.
    #
    # @return [Types::UpdateVPCConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVPCConnectionResponse#arn #arn} => String
    #   * {Types::UpdateVPCConnectionResponse#vpc_connection_id #vpc_connection_id} => String
    #   * {Types::UpdateVPCConnectionResponse#update_status #update_status} => String
    #   * {Types::UpdateVPCConnectionResponse#availability_status #availability_status} => String
    #   * {Types::UpdateVPCConnectionResponse#request_id #request_id} => String
    #   * {Types::UpdateVPCConnectionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_connection({
    #     aws_account_id: "AwsAccountId", # required
    #     vpc_connection_id: "VPCConnectionResourceIdUnrestricted", # required
    #     name: "ResourceName", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     dns_resolvers: ["IPv4Address"],
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.vpc_connection_id #=> String
    #   resp.update_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateVPCConnection AWS API Documentation
    #
    # @overload update_vpc_connection(params = {})
    # @param [Hash] params ({})
    def update_vpc_connection(params = {}, options = {})
      req = build_request(:update_vpc_connection, params)
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
      context[:gem_version] = '1.86.0'
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
