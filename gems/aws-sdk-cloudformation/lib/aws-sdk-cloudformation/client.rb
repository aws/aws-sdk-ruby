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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudformation)

module Aws::CloudFormation
  # An API client for CloudFormation.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudFormation::Client.new(
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

    @identifier = :cloudformation

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
    add_plugin(Aws::Plugins::Protocols::Query)
    add_plugin(Aws::CloudFormation::Plugins::Endpoints)

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
    #   @option options [Aws::CloudFormation::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CloudFormation::EndpointParameters`
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

    # Activate trusted access with Organizations. With trusted access
    # between StackSets and Organizations activated, the management account
    # has permissions to create and manage StackSets for your organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ActivateOrganizationsAccess AWS API Documentation
    #
    # @overload activate_organizations_access(params = {})
    # @param [Hash] params ({})
    def activate_organizations_access(params = {}, options = {})
      req = build_request(:activate_organizations_access, params)
      req.send_request(options)
    end

    # Activates a public third-party extension, making it available for use
    # in stack templates. For more information, see [Using public
    # extensions][1] in the *CloudFormation User Guide*.
    #
    # Once you have activated a public third-party extension in your account
    # and Region, use [SetTypeConfiguration][2] to specify configuration
    # properties for the extension. For more information, see [Configuring
    # extensions at the account level][3] in the *CloudFormation User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html
    # [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration
    #
    # @option params [String] :type
    #   The extension type.
    #
    #   Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`,
    #   and `PublisherId`.
    #
    # @option params [String] :public_type_arn
    #   The Amazon Resource Name (ARN) of the public extension.
    #
    #   Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`,
    #   and `PublisherId`.
    #
    # @option params [String] :publisher_id
    #   The ID of the extension publisher.
    #
    #   Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`,
    #   and `PublisherId`.
    #
    # @option params [String] :type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`,
    #   and `PublisherId`.
    #
    # @option params [String] :type_name_alias
    #   An alias to assign to the public extension, in this account and
    #   Region. If you specify an alias for the extension, CloudFormation
    #   treats the alias as the extension type name within this account and
    #   Region. You must use the alias to refer to the extension in your
    #   templates, API calls, and CloudFormation console.
    #
    #   An extension alias must be unique within a given account and Region.
    #   You can activate the same public resource multiple times in the same
    #   account and Region, using different type name aliases.
    #
    # @option params [Boolean] :auto_update
    #   Whether to automatically update the extension in this account and
    #   Region when a new *minor* version is published by the extension
    #   publisher. Major versions released by the publisher must be manually
    #   updated.
    #
    #   The default is `true`.
    #
    # @option params [Types::LoggingConfig] :logging_config
    #   Contains logging configuration information for an extension.
    #
    # @option params [String] :execution_role_arn
    #   The name of the IAM execution role to use to activate the extension.
    #
    # @option params [String] :version_bump
    #   Manually updates a previously-activated type to a new major or minor
    #   version, if available. You can also use this parameter to update the
    #   value of `AutoUpdate`.
    #
    #   * `MAJOR`: CloudFormation updates the extension to the newest major
    #     version, if one is available.
    #
    #   * `MINOR`: CloudFormation updates the extension to the newest minor
    #     version, if one is available.
    #
    # @option params [Integer] :major_version
    #   The major version of this extension you want to activate, if multiple
    #   major versions are available. The default is the latest major version.
    #   CloudFormation uses the latest available *minor* version of the major
    #   version selected.
    #
    #   You can specify `MajorVersion` or `VersionBump`, but not both.
    #
    # @return [Types::ActivateTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivateTypeOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_type({
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     public_type_arn: "ThirdPartyTypeArn",
    #     publisher_id: "PublisherId",
    #     type_name: "TypeName",
    #     type_name_alias: "TypeName",
    #     auto_update: false,
    #     logging_config: {
    #       log_role_arn: "RoleArn", # required
    #       log_group_name: "LogGroupName", # required
    #     },
    #     execution_role_arn: "RoleArn",
    #     version_bump: "MAJOR", # accepts MAJOR, MINOR
    #     major_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ActivateType AWS API Documentation
    #
    # @overload activate_type(params = {})
    # @param [Hash] params ({})
    def activate_type(params = {}, options = {})
      req = build_request(:activate_type, params)
      req.send_request(options)
    end

    # Returns configuration data for the specified CloudFormation
    # extensions, from the CloudFormation registry for the account and
    # Region.
    #
    # For more information, see [Configuring extensions at the account
    # level][1] in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration
    #
    # @option params [required, Array<Types::TypeConfigurationIdentifier>] :type_configuration_identifiers
    #   The list of identifiers for the desired extension configurations.
    #
    # @return [Types::BatchDescribeTypeConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDescribeTypeConfigurationsOutput#errors #errors} => Array&lt;Types::BatchDescribeTypeConfigurationsError&gt;
    #   * {Types::BatchDescribeTypeConfigurationsOutput#unprocessed_type_configurations #unprocessed_type_configurations} => Array&lt;Types::TypeConfigurationIdentifier&gt;
    #   * {Types::BatchDescribeTypeConfigurationsOutput#type_configurations #type_configurations} => Array&lt;Types::TypeConfigurationDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_describe_type_configurations({
    #     type_configuration_identifiers: [ # required
    #       {
    #         type_arn: "TypeArn",
    #         type_configuration_alias: "TypeConfigurationAlias",
    #         type_configuration_arn: "TypeConfigurationArn",
    #         type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #         type_name: "TypeName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].type_configuration_identifier.type_arn #=> String
    #   resp.errors[0].type_configuration_identifier.type_configuration_alias #=> String
    #   resp.errors[0].type_configuration_identifier.type_configuration_arn #=> String
    #   resp.errors[0].type_configuration_identifier.type #=> String, one of "RESOURCE", "MODULE", "HOOK"
    #   resp.errors[0].type_configuration_identifier.type_name #=> String
    #   resp.unprocessed_type_configurations #=> Array
    #   resp.unprocessed_type_configurations[0].type_arn #=> String
    #   resp.unprocessed_type_configurations[0].type_configuration_alias #=> String
    #   resp.unprocessed_type_configurations[0].type_configuration_arn #=> String
    #   resp.unprocessed_type_configurations[0].type #=> String, one of "RESOURCE", "MODULE", "HOOK"
    #   resp.unprocessed_type_configurations[0].type_name #=> String
    #   resp.type_configurations #=> Array
    #   resp.type_configurations[0].arn #=> String
    #   resp.type_configurations[0].alias #=> String
    #   resp.type_configurations[0].configuration #=> String
    #   resp.type_configurations[0].last_updated #=> Time
    #   resp.type_configurations[0].type_arn #=> String
    #   resp.type_configurations[0].type_name #=> String
    #   resp.type_configurations[0].is_default_configuration #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/BatchDescribeTypeConfigurations AWS API Documentation
    #
    # @overload batch_describe_type_configurations(params = {})
    # @param [Hash] params ({})
    def batch_describe_type_configurations(params = {}, options = {})
      req = build_request(:batch_describe_type_configurations, params)
      req.send_request(options)
    end

    # Cancels an update on the specified stack. If the call completes
    # successfully, the stack rolls back the update and reverts to the
    # previous stack configuration.
    #
    # <note markdown="1"> You can cancel only stacks that are in the `UPDATE_IN_PROGRESS` state.
    #
    #  </note>
    #
    # @option params [required, String] :stack_name
    #   <note markdown="1"> If you don't pass a parameter to `StackName`, the API returns a
    #   response that describes all resources in the account.
    #
    #    The IAM policy below can be added to IAM policies when you want to
    #   limit resource-level permissions and avoid returning a response when
    #   no parameter is sent in the request:
    #
    #    `\{ "Version": "2012-10-17", "Statement": [\{ "Effect": "Deny",
    #   "Action": "cloudformation:DescribeStacks", "NotResource":
    #   "arn:aws:cloudformation:*:*:stack/*/*" \}] \}`
    #
    #    </note>
    #
    #   The name or the unique stack ID that's associated with the stack.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `CancelUpdateStack` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to cancel an update on a stack with the same
    #   name. You might retry `CancelUpdateStack` requests to ensure that
    #   CloudFormation successfully received them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_update_stack({
    #     stack_name: "StackName", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CancelUpdateStack AWS API Documentation
    #
    # @overload cancel_update_stack(params = {})
    # @param [Hash] params ({})
    def cancel_update_stack(params = {}, options = {})
      req = build_request(:cancel_update_stack, params)
      req.send_request(options)
    end

    # For a specified stack that's in the `UPDATE_ROLLBACK_FAILED` state,
    # continues rolling it back to the `UPDATE_ROLLBACK_COMPLETE` state.
    # Depending on the cause of the failure, you can manually [ fix the
    # error][1] and continue the rollback. By continuing the rollback, you
    # can return your stack to a working state (the
    # `UPDATE_ROLLBACK_COMPLETE` state), and then try to update the stack
    # again.
    #
    # A stack goes into the `UPDATE_ROLLBACK_FAILED` state when
    # CloudFormation can't roll back all changes after a failed stack
    # update. For example, you might have a stack that's rolling back to an
    # old database instance that was deleted outside of CloudFormation.
    # Because CloudFormation doesn't know the database was deleted, it
    # assumes that the database instance still exists and attempts to roll
    # back to it, causing the update rollback to fail.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
    #
    # @option params [required, String] :stack_name
    #   The name or the unique ID of the stack that you want to continue
    #   rolling back.
    #
    #   <note markdown="1"> Don't specify the name of a nested stack (a stack that was created by
    #   using the `AWS::CloudFormation::Stack` resource). Instead, use this
    #   operation on the parent stack (the stack that contains the
    #   `AWS::CloudFormation::Stack` resource).
    #
    #    </note>
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an Identity and Access Management
    #   (IAM) role that CloudFormation assumes to roll back the stack.
    #   CloudFormation uses the role's credentials to make calls on your
    #   behalf. CloudFormation always uses this role for all future operations
    #   on the stack. Provided that users have permission to operate on the
    #   stack, CloudFormation uses this role even if the users don't have
    #   permission to pass it. Ensure that the role grants least permission.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that's generated from your
    #   user credentials.
    #
    # @option params [Array<String>] :resources_to_skip
    #   A list of the logical IDs of the resources that CloudFormation skips
    #   during the continue update rollback operation. You can specify only
    #   resources that are in the `UPDATE_FAILED` state because a rollback
    #   failed. You can't specify resources that are in the `UPDATE_FAILED`
    #   state for other reasons, for example, because an update was canceled.
    #   To check why a resource update failed, use the DescribeStackResources
    #   action, and view the resource status reason.
    #
    #   Specify this property to skip rolling back resources that
    #   CloudFormation can't successfully roll back. We recommend that you [
    #   troubleshoot][1] resources before skipping them. CloudFormation sets
    #   the status of the specified resources to `UPDATE_COMPLETE` and
    #   continues to roll back the stack. After the rollback is complete, the
    #   state of the skipped resources will be inconsistent with the state of
    #   the resources in the stack template. Before performing another stack
    #   update, you must update the stack or resources to be consistent with
    #   each other. If you don't, subsequent stack updates might fail, and
    #   the stack will become unrecoverable.
    #
    #   Specify the minimum number of resources required to successfully roll
    #   back your stack. For example, a failed resource update might cause
    #   dependent resources to fail. In this case, it might not be necessary
    #   to skip the dependent resources.
    #
    #   To skip resources that are part of nested stacks, use the following
    #   format: `NestedStackName.ResourceLogicalID`. If you want to specify
    #   the logical ID of a stack resource (`Type:
    #   AWS::CloudFormation::Stack`) in the `ResourcesToSkip` list, then its
    #   corresponding embedded stack must be in one of the following states:
    #   `DELETE_IN_PROGRESS`, `DELETE_COMPLETE`, or `DELETE_FAILED`.
    #
    #   <note markdown="1"> Don't confuse a child stack's name with its corresponding logical ID
    #   defined in the parent stack. For an example of a continue update
    #   rollback operation with nested stacks, see [Using ResourcesToSkip to
    #   recover a nested stacks hierarchy][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `ContinueUpdateRollback` request. Specify
    #   this token if you plan to retry requests so that CloudFormation knows
    #   that you're not attempting to continue the rollback to a stack with
    #   the same name. You might retry `ContinueUpdateRollback` requests to
    #   ensure that CloudFormation successfully received them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.continue_update_rollback({
    #     stack_name: "StackNameOrId", # required
    #     role_arn: "RoleARN",
    #     resources_to_skip: ["ResourceToSkip"],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ContinueUpdateRollback AWS API Documentation
    #
    # @overload continue_update_rollback(params = {})
    # @param [Hash] params ({})
    def continue_update_rollback(params = {}, options = {})
      req = build_request(:continue_update_rollback, params)
      req.send_request(options)
    end

    # Creates a list of changes that will be applied to a stack so that you
    # can review the changes before executing them. You can create a change
    # set for a stack that doesn't exist or an existing stack. If you
    # create a change set for a stack that doesn't exist, the change set
    # shows all of the resources that CloudFormation will create. If you
    # create a change set for an existing stack, CloudFormation compares the
    # stack's information with the information that you submit in the
    # change set and lists the differences. Use change sets to understand
    # which resources CloudFormation will create or change, and how it will
    # change resources in an existing stack, before you create or update a
    # stack.
    #
    # To create a change set for a stack that doesn't exist, for the
    # `ChangeSetType` parameter, specify `CREATE`. To create a change set
    # for an existing stack, specify `UPDATE` for the `ChangeSetType`
    # parameter. To create a change set for an import operation, specify
    # `IMPORT` for the `ChangeSetType` parameter. After the
    # `CreateChangeSet` call successfully completes, CloudFormation starts
    # creating the change set. To check the status of the change set or to
    # review it, use the DescribeChangeSet action.
    #
    # When you are satisfied with the changes the change set will make,
    # execute the change set by using the ExecuteChangeSet action.
    # CloudFormation doesn't make changes until you execute the change set.
    #
    # To create a change set for the entire stack hierarchy, set
    # `IncludeNestedStacks` to `True`.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique ID of the stack for which you are creating a
    #   change set. CloudFormation generates the change set by comparing this
    #   stack's information with the information that you submit, such as a
    #   modified template or different parameter input values.
    #
    # @option params [String] :template_body
    #   A structure that contains the body of the revised template, with a
    #   minimum length of 1 byte and a maximum length of 51,200 bytes.
    #   CloudFormation generates the change set by comparing this template
    #   with the template of the stack that you specified.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #
    # @option params [String] :template_url
    #   The location of the file that contains the revised template. The URL
    #   must point to a template (max size: 460,800 bytes) that's located in
    #   an Amazon S3 bucket or a Systems Manager document. CloudFormation
    #   generates the change set by comparing this template with the stack
    #   that you specified.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #
    # @option params [Boolean] :use_previous_template
    #   Whether to reuse the template that's associated with the stack to
    #   create the change set.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   change set. For more information, see the Parameter data type.
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation to
    #   create the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account; for example, by
    #     creating new Identity and Access Management (IAM) users. For those
    #     stacks, you must explicitly acknowledge this by specifying one of
    #     these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, CloudFormation
    #       returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we suggest that you
    #     review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM resources in
    #     CloudFormation templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set from
    #     the processed template, so that they can review the changes
    #     resulting from the macros before actually creating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     create a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][9] and
    #     [AWS::Serverless][10] transforms, which are macros hosted by
    #     CloudFormation.
    #
    #     <note markdown="1"> This capacity doesn't apply to creating change sets, and specifying
    #     it when creating change sets has no effect.
    #
    #      If you want to create a stack from a stack template that contains
    #     macros *and* nested stacks, you must create or update the stack
    #     directly from the template using the CreateStack or UpdateStack
    #     action, and specifying this capability.
    #
    #      </note>
    #
    #     For more information about macros, see [Using CloudFormation macros
    #     to perform custom processing on templates][11].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #
    # @option params [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with if
    #   you execute this change set, such as `AWS::EC2::Instance`,
    #   `AWS::EC2::*`, or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource type that
    #   you're updating, the stack update fails. By default, CloudFormation
    #   grants permissions to all resource types. Identity and Access
    #   Management (IAM) uses this parameter for condition keys in IAM
    #   policies for CloudFormation. For more information, see [Controlling
    #   access with Identity and Access Management][1] in the CloudFormation
    #   User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an Identity and Access Management
    #   (IAM) role that CloudFormation assumes when executing the change set.
    #   CloudFormation uses the role's credentials to make calls on your
    #   behalf. CloudFormation uses this role for all future operations on the
    #   stack. Provided that users have permission to operate on the stack,
    #   CloudFormation uses this role even if the users don't have permission
    #   to pass it. Ensure that the role grants least permission.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #
    # @option params [Array<String>] :notification_arns
    #   The Amazon Resource Names (ARNs) of Amazon Simple Notification Service
    #   (Amazon SNS) topics that CloudFormation associates with the stack. To
    #   remove all associated notification topics, specify an empty list.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. CloudFormation also
    #   propagates these tags to resources in the stack. You can specify a
    #   maximum of 50 tags.
    #
    # @option params [required, String] :change_set_name
    #   The name of the change set. The name must be unique among all change
    #   sets that are associated with the specified stack.
    #
    #   A change set name can contain only alphanumeric, case sensitive
    #   characters, and hyphens. It must start with an alphabetical character
    #   and can't exceed 128 characters.
    #
    # @option params [String] :client_token
    #   A unique identifier for this `CreateChangeSet` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to create another change set with the same
    #   name. You might retry `CreateChangeSet` requests to ensure that
    #   CloudFormation successfully received them.
    #
    # @option params [String] :description
    #   A description to help you identify this change set.
    #
    # @option params [String] :change_set_type
    #   The type of change set operation. To create a change set for a new
    #   stack, specify `CREATE`. To create a change set for an existing stack,
    #   specify `UPDATE`. To create a change set for an import operation,
    #   specify `IMPORT`.
    #
    #   If you create a change set for a new stack, CloudFormation creates a
    #   stack with a unique stack ID, but no template or resources. The stack
    #   will be in the [REVIEW\_IN\_PROGRESS][1] state until you execute the
    #   change set.
    #
    #   By default, CloudFormation specifies `UPDATE`. You can't use the
    #   `UPDATE` type to create a change set for a new stack or the `CREATE`
    #   type to create a change set for an existing stack.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995
    #
    # @option params [Array<Types::ResourceToImport>] :resources_to_import
    #   The resources to import into your stack.
    #
    # @option params [Boolean] :include_nested_stacks
    #   Creates a change set for the all nested stacks specified in the
    #   template. The default behavior of this action is set to `False`. To
    #   include nested sets in a change set, specify `True`.
    #
    # @option params [String] :on_stack_failure
    #   Determines what action will be taken if stack creation fails. If this
    #   parameter is specified, the `DisableRollback` parameter to the
    #   [ExecuteChangeSet][1] API operation must not be specified. This must
    #   be one of these values:
    #
    #   * `DELETE` - Deletes the change set if the stack creation fails. This
    #     is only valid when the `ChangeSetType` parameter is set to `CREATE`.
    #     If the deletion of the stack fails, the status of the stack is
    #     `DELETE_FAILED`.
    #
    #   * `DO_NOTHING` - if the stack creation fails, do nothing. This is
    #     equivalent to specifying `true` for the `DisableRollback` parameter
    #     to the [ExecuteChangeSet][1] API operation.
    #
    #   * `ROLLBACK` - if the stack creation fails, roll back the stack. This
    #     is equivalent to specifying `false` for the `DisableRollback`
    #     parameter to the [ExecuteChangeSet][1] API operation.
    #
    #   For nested stacks, when the `OnStackFailure` parameter is set to
    #   `DELETE` for the change set for the parent stack, any failure in a
    #   child stack will cause the parent stack creation to fail and all
    #   stacks to be deleted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html
    #
    # @return [Types::CreateChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChangeSetOutput#id #id} => String
    #   * {Types::CreateChangeSetOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_change_set({
    #     stack_name: "StackNameOrId", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     notification_arns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     change_set_name: "ChangeSetName", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     change_set_type: "CREATE", # accepts CREATE, UPDATE, IMPORT
    #     resources_to_import: [
    #       {
    #         resource_type: "ResourceType", # required
    #         logical_resource_id: "LogicalResourceId", # required
    #         resource_identifier: { # required
    #           "ResourceIdentifierPropertyKey" => "ResourceIdentifierPropertyValue",
    #         },
    #       },
    #     ],
    #     include_nested_stacks: false,
    #     on_stack_failure: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK, DELETE
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet AWS API Documentation
    #
    # @overload create_change_set(params = {})
    # @param [Hash] params ({})
    def create_change_set(params = {}, options = {})
      req = build_request(:create_change_set, params)
      req.send_request(options)
    end

    # Creates a stack as specified in the template. After the call completes
    # successfully, the stack creation starts. You can check the status of
    # the stack through the DescribeStacks operation.
    #
    # @option params [required, String] :stack_name
    #   The name that's associated with the stack. The name must be unique in
    #   the Region in which you are creating the stack.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters (case sensitive)
    #   and hyphens. It must start with an alphabetical character and can't
    #   be longer than 128 characters.
    #
    #    </note>
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information, go to
    #   [Template anatomy][1] in the CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that's located in an Amazon S3
    #   bucket or a Systems Manager document. For more information, go to the
    #   [Template anatomy][1] in the CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #
    # @option params [Boolean] :disable_rollback
    #   Set to `true` to disable rollback of the stack if stack creation
    #   failed. You can specify either `DisableRollback` or `OnFailure`, but
    #   not both.
    #
    #   Default: `false`
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #
    # @option params [Integer] :timeout_in_minutes
    #   The amount of time that can pass before the stack status becomes
    #   CREATE\_FAILED; if `DisableRollback` is not set or is set to `false`,
    #   the stack will be rolled back.
    #
    # @option params [Array<String>] :notification_arns
    #   The Amazon Simple Notification Service (Amazon SNS) topic ARNs to
    #   publish stack related events. You can find your Amazon SNS topic ARNs
    #   using the Amazon SNS console or your Command Line Interface (CLI).
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation to
    #   create the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account; for example, by
    #     creating new Identity and Access Management (IAM) users. For those
    #     stacks, you must explicitly acknowledge this by specifying one of
    #     these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, CloudFormation
    #       returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM Resources in
    #     CloudFormation Templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set from
    #     the processed template, so that they can review the changes
    #     resulting from the macros before actually creating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     create a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][9] and
    #     [AWS::Serverless][10] transforms, which are macros hosted by
    #     CloudFormation.
    #
    #     If you want to create a stack from a stack template that contains
    #     macros *and* nested stacks, you must create the stack directly from
    #     the template using this capability.
    #
    #     You should only create stacks directly from a stack template that
    #     contains macros if you know what processing the macro performs.
    #
    #      Each macro relies on an underlying Lambda service function for
    #     processing stack templates. Be aware that the Lambda function owner
    #     can update the function operation without CloudFormation being
    #     notified.
    #
    #     For more information, see [Using CloudFormation macros to perform
    #     custom processing on templates][11].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #
    # @option params [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this create stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`. Use the following syntax to describe
    #   template resource types: `AWS::*` (for all Amazon Web Services
    #   resources), `Custom::*` (for all custom resources),
    #   `Custom::logical_ID ` (for a specific custom resource),
    #   `AWS::service_name::*` (for all resources of a particular Amazon Web
    #   Services service), and `AWS::service_name::resource_logical_ID ` (for
    #   a specific Amazon Web Services resource).
    #
    #   If the list of resource types doesn't include a resource that you're
    #   creating, the stack creation fails. By default, CloudFormation grants
    #   permissions to all resource types. Identity and Access Management
    #   (IAM) uses this parameter for CloudFormation-specific condition keys
    #   in IAM policies. For more information, see [Controlling Access with
    #   Identity and Access Management][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an Identity and Access Management
    #   (IAM) role that CloudFormation assumes to create the stack.
    #   CloudFormation uses the role's credentials to make calls on your
    #   behalf. CloudFormation always uses this role for all future operations
    #   on the stack. Provided that users have permission to operate on the
    #   stack, CloudFormation uses this role even if the users don't have
    #   permission to pass it. Ensure that the role grants least privilege.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that's generated from your
    #   user credentials.
    #
    # @option params [String] :on_failure
    #   Determines what action will be taken if stack creation fails. This
    #   must be one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`. You can specify
    #   either `OnFailure` or `DisableRollback`, but not both.
    #
    #   Default: `ROLLBACK`
    #
    # @option params [String] :stack_policy_body
    #   Structure containing the stack policy body. For more information, go
    #   to [ Prevent Updates to Stack Resources][1] in the *CloudFormation
    #   User Guide*. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #
    # @option params [String] :stack_policy_url
    #   Location of a file containing the stack policy. The URL must point to
    #   a policy (maximum size: 16 KB) located in an S3 bucket in the same
    #   Region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. CloudFormation also
    #   propagates these tags to the resources created in the stack. A maximum
    #   number of 50 tags can be specified.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `CreateStack` request. Specify this token
    #   if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to create a stack with the same name. You might
    #   retry `CreateStack` requests to ensure that CloudFormation
    #   successfully received them.
    #
    #   All events initiated by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #
    # @option params [Boolean] :enable_termination_protection
    #   Whether to enable termination protection on the specified stack. If a
    #   user attempts to delete a stack with termination protection enabled,
    #   the operation fails and the stack remains unchanged. For more
    #   information, see [Protecting a Stack From Being Deleted][1] in the
    #   *CloudFormation User Guide*. Termination protection is deactivated on
    #   stacks by default.
    #
    #   For [nested stacks][2], termination protection is set on the root
    #   stack and can't be changed directly on the nested stack.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #
    # @return [Types::CreateStackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack({
    #     stack_name: "StackName", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     disable_rollback: false,
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     timeout_in_minutes: 1,
    #     notification_arns: ["NotificationARN"],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     on_failure: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK, DELETE
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     enable_termination_protection: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStack AWS API Documentation
    #
    # @overload create_stack(params = {})
    # @param [Hash] params ({})
    def create_stack(params = {}, options = {})
      req = build_request(:create_stack, params)
      req.send_request(options)
    end

    # Creates stack instances for the specified accounts, within the
    # specified Amazon Web Services Regions. A stack instance refers to a
    # stack in a specific account and Region. You must specify at least one
    # value for either `Accounts` or `DeploymentTargets`, and you must
    # specify at least one value for `Regions`.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to create stack
    #   instances from.
    #
    # @option params [Array<String>] :accounts
    #   \[Self-managed permissions\] The names of one or more Amazon Web
    #   Services accounts that you want to create stack instances in the
    #   specified Region(s) for.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   \[Service-managed permissions\] The Organizations accounts for which
    #   to create stack instances in the specified Amazon Web Services
    #   Regions.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [required, Array<String>] :regions
    #   The names of one or more Amazon Web Services Regions where you want to
    #   create stack instances using the specified Amazon Web Services
    #   accounts.
    #
    # @option params [Array<Types::Parameter>] :parameter_overrides
    #   A list of stack set parameters whose values you want to override in
    #   the selected stack instances.
    #
    #   Any overridden parameter values will be applied to all stack instances
    #   in the specified accounts and Amazon Web Services Regions. When
    #   specifying parameters and their values, be aware of how CloudFormation
    #   sets parameter values during stack instance operations:
    #
    #   * To override the current value for a parameter, include the parameter
    #     and specify its value.
    #
    #   * To leave an overridden parameter set to its present value, include
    #     the parameter and specify `UsePreviousValue` as `true`. (You can't
    #     specify both a value and set `UsePreviousValue` to `true`.)
    #
    #   * To set an overridden parameter back to the value specified in the
    #     stack set, specify a parameter list but don't include the parameter
    #     in the list.
    #
    #   * To leave all parameters set to their present values, don't specify
    #     this property at all.
    #
    #   During stack set updates, any parameter values overridden for a stack
    #   instance aren't updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in the
    #   stack set; to add or delete a parameter itself, use
    #   [UpdateStackSet][1] to update the stack set template.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how CloudFormation performs this stack set operation.
    #
    # @option params [String] :operation_id
    #   The unique identifier for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that CloudFormation performs the stack set operation only once, even
    #   if you retry the request multiple times. You might retry stack set
    #   operation requests to ensure that CloudFormation successfully received
    #   them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   Repeating this stack set operation with a new operation ID retries all
    #   stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::CreateStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackInstancesOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack_instances({
    #     stack_set_name: "StackSetName", # required
    #     accounts: ["Account"],
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       accounts_url: "AccountsUrl",
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       account_filter_type: "NONE", # accepts NONE, INTERSECTION, DIFFERENCE, UNION
    #     },
    #     regions: ["Region"], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL", # accepts SEQUENTIAL, PARALLEL
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackInstances AWS API Documentation
    #
    # @overload create_stack_instances(params = {})
    # @param [Hash] params ({})
    def create_stack_instances(params = {}, options = {})
      req = build_request(:create_stack_instances, params)
      req.send_request(options)
    end

    # Creates a stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name to associate with the stack set. The name must be unique in
    #   the Region where you create your stack set.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters (case-sensitive)
    #   and hyphens. It must start with an alphabetic character and can't be
    #   longer than 128 characters.
    #
    #    </note>
    #
    # @option params [String] :description
    #   A description of the stack set. You can use the description to
    #   identify the stack set's purpose or other important information.
    #
    # @option params [String] :template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes. For more information,
    #   see [Template Anatomy][1] in the CloudFormation User Guide.
    #
    #   Conditional: You must specify either the TemplateBody or the
    #   TemplateURL parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   The location of the file that contains the template body. The URL must
    #   point to a template (maximum size: 460,800 bytes) that's located in
    #   an Amazon S3 bucket or a Systems Manager document. For more
    #   information, see [Template Anatomy][1] in the CloudFormation User
    #   Guide.
    #
    #   Conditional: You must specify either the TemplateBody or the
    #   TemplateURL parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :stack_id
    #   The stack ID you are importing into a new stack set. Specify the
    #   Amazon Resource Name (ARN) of the stack.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   The input parameters for the stack set template.
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack set
    #   template contains certain capabilities in order for CloudFormation to
    #   create the stack set and related stack instances.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account; for example, by
    #     creating new Identity and Access Management (IAM) users. For those
    #     stack sets, you must explicitly acknowledge this by specifying one
    #     of these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, CloudFormation
    #       returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM Resources in
    #     CloudFormation Templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some templates reference macros. If your stack set template
    #     references one or more macros, you must create the stack set
    #     directly from the processed template, without first reviewing the
    #     resulting changes in a change set. To create the stack set directly,
    #     you must acknowledge this capability. For more information, see
    #     [Using CloudFormation Macros to Perform Custom Processing on
    #     Templates][9].
    #
    #     Stack sets with service-managed permissions don't currently support
    #     the use of macros in templates. (This includes the
    #     [AWS::Include][10] and [AWS::Serverless][11] transforms, which are
    #     macros hosted by CloudFormation.) Even if you specify this
    #     capability for a stack set with service-managed permissions, if you
    #     reference a macro in your template the stack set operation will
    #     fail.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key-value pairs to associate with this stack set and the stacks
    #   created from it. CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. A maximum number
    #   of 50 tags can be specified.
    #
    #   If you specify tags as part of a `CreateStackSet` action,
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you don't, the entire `CreateStackSet` action
    #   fails with an `access denied` error, and the stack set is not created.
    #
    # @option params [String] :administration_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to use to create this
    #   stack set.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific stack sets
    #   within the same administrator account. For more information, see
    #   [Prerequisites: Granting Permissions for Stack Set Operations][1] in
    #   the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #
    # @option params [String] :execution_role_name
    #   The name of the IAM execution role to use to create the stack set. If
    #   you do not specify an execution role, CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the stack set
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in their
    #   stack sets.
    #
    # @option params [String] :permission_model
    #   Describes how the IAM roles required for stack set operations are
    #   created. By default, `SELF-MANAGED` is specified.
    #
    #   * With `self-managed` permissions, you must create the administrator
    #     and execution roles required to deploy to target accounts. For more
    #     information, see [Grant Self-Managed Stack Set Permissions][1].
    #
    #   * With `service-managed` permissions, StackSets automatically creates
    #     the IAM roles required to deploy to accounts managed by
    #     Organizations. For more information, see [Grant Service-Managed
    #     Stack Set Permissions][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html
    #
    # @option params [Types::AutoDeployment] :auto_deployment
    #   Describes whether StackSets automatically deploys to Organizations
    #   accounts that are added to the target organization or organizational
    #   unit (OU). Specify only if `PermissionModel` is `SERVICE_MANAGED`.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * To create a stack set with service-managed permissions while signed
    #     in to the management account, specify `SELF`.
    #
    #   * To create a stack set with service-managed permissions while signed
    #     in to a delegated administrator account, specify `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     admin in the management account. For more information, see [Register
    #     a delegated administrator][1] in the *CloudFormation User Guide*.
    #
    #   Stack sets with service-managed permissions are created in the
    #   management account, including stack sets that are created by delegated
    #   administrators.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `CreateStackSet` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to create another stack set with the same name.
    #   You might retry `CreateStackSet` requests to ensure that
    #   CloudFormation successfully received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::ManagedExecution] :managed_execution
    #   Describes whether StackSets performs non-conflicting operations
    #   concurrently and queues conflicting operations.
    #
    # @return [Types::CreateStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackSetOutput#stack_set_id #stack_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack_set({
    #     stack_set_name: "StackSetName", # required
    #     description: "Description",
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     stack_id: "StackId",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     administration_role_arn: "RoleARN",
    #     execution_role_name: "ExecutionRoleName",
    #     permission_model: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, SELF_MANAGED
    #     auto_deployment: {
    #       enabled: false,
    #       retain_stacks_on_account_removal: false,
    #     },
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #     client_request_token: "ClientRequestToken",
    #     managed_execution: {
    #       active: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackSet AWS API Documentation
    #
    # @overload create_stack_set(params = {})
    # @param [Hash] params ({})
    def create_stack_set(params = {}, options = {})
      req = build_request(:create_stack_set, params)
      req.send_request(options)
    end

    # Deactivates trusted access with Organizations. If trusted access is
    # deactivated, the management account does not have permissions to
    # create and manage service-managed StackSets for your organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeactivateOrganizationsAccess AWS API Documentation
    #
    # @overload deactivate_organizations_access(params = {})
    # @param [Hash] params ({})
    def deactivate_organizations_access(params = {}, options = {})
      req = build_request(:deactivate_organizations_access, params)
      req.send_request(options)
    end

    # Deactivates a public extension that was previously activated in this
    # account and Region.
    #
    # Once deactivated, an extension can't be used in any CloudFormation
    # operation. This includes stack update operations where the stack
    # template includes the extension, even if no updates are being made to
    # the extension. In addition, deactivated extensions aren't
    # automatically updated if a new version of the extension is released.
    #
    # @option params [String] :type_name
    #   The type name of the extension, in this account and Region. If you
    #   specified a type name alias when enabling the extension, use the type
    #   name alias.
    #
    #   Conditional: You must specify either `Arn`, or `TypeName` and `Type`.
    #
    # @option params [String] :type
    #   The extension type.
    #
    #   Conditional: You must specify either `Arn`, or `TypeName` and `Type`.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) for the extension, in this account and
    #   Region.
    #
    #   Conditional: You must specify either `Arn`, or `TypeName` and `Type`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_type({
    #     type_name: "TypeName",
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     arn: "PrivateTypeArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeactivateType AWS API Documentation
    #
    # @overload deactivate_type(params = {})
    # @param [Hash] params ({})
    def deactivate_type(params = {}, options = {})
      req = build_request(:deactivate_type, params)
      req.send_request(options)
    end

    # Deletes the specified change set. Deleting change sets ensures that no
    # one executes the wrong change set.
    #
    # If the call successfully completes, CloudFormation successfully
    # deleted the change set.
    #
    # If `IncludeNestedStacks` specifies `True` during the creation of the
    # nested change set, then `DeleteChangeSet` will delete all change sets
    # that belong to the stacks hierarchy and will also delete all change
    # sets for nested stacks with the status of `REVIEW_IN_PROGRESS`.
    #
    # @option params [required, String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you want
    #   to delete.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set to delete, specify the stack
    #   name or Amazon Resource Name (ARN) that's associated with it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_change_set({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteChangeSet AWS API Documentation
    #
    # @overload delete_change_set(params = {})
    # @param [Hash] params ({})
    def delete_change_set(params = {}, options = {})
      req = build_request(:delete_change_set, params)
      req.send_request(options)
    end

    # Deletes a specified stack. Once the call completes successfully, stack
    # deletion starts. Deleted stacks don't show up in the DescribeStacks
    # operation if the deletion has been completed successfully.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that's associated with the stack.
    #
    # @option params [Array<String>] :retain_resources
    #   For stacks in the `DELETE_FAILED` state, a list of resource logical
    #   IDs that are associated with the resources you want to retain. During
    #   deletion, CloudFormation deletes the stack but doesn't delete the
    #   retained resources.
    #
    #   Retaining resources is useful when you can't delete a resource, such
    #   as a non-empty S3 bucket, but you want to delete the stack.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an Identity and Access Management
    #   (IAM) role that CloudFormation assumes to delete the stack.
    #   CloudFormation uses the role's credentials to make calls on your
    #   behalf.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that's generated from your
    #   user credentials.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `DeleteStack` request. Specify this token
    #   if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to delete a stack with the same name. You might
    #   retry `DeleteStack` requests to ensure that CloudFormation
    #   successfully received them.
    #
    #   All events initiated by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack({
    #     stack_name: "StackName", # required
    #     retain_resources: ["LogicalResourceId"],
    #     role_arn: "RoleARN",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStack AWS API Documentation
    #
    # @overload delete_stack(params = {})
    # @param [Hash] params ({})
    def delete_stack(params = {}, options = {})
      req = build_request(:delete_stack, params)
      req.send_request(options)
    end

    # Deletes stack instances for the specified accounts, in the specified
    # Amazon Web Services Regions.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to delete stack
    #   instances for.
    #
    # @option params [Array<String>] :accounts
    #   \[Self-managed permissions\] The names of the Amazon Web Services
    #   accounts that you want to delete stack instances for.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   \[Service-managed permissions\] The Organizations accounts from which
    #   to delete stack instances.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [required, Array<String>] :regions
    #   The Amazon Web Services Regions where you want to delete stack set
    #   instances.
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how CloudFormation performs this stack set operation.
    #
    # @option params [required, Boolean] :retain_stacks
    #   Removes the stack instances from the specified stack set, but doesn't
    #   delete the stacks. You can't reassociate a retained stack or add an
    #   existing, saved stack to a new stack set.
    #
    #   For more information, see [Stack set operation options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #
    # @option params [String] :operation_id
    #   The unique identifier for this stack set operation.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that CloudFormation performs the stack set operation only once, even
    #   if you retry the request multiple times. You can retry stack set
    #   operation requests to ensure that CloudFormation successfully received
    #   them.
    #
    #   Repeating this stack set operation with a new operation ID retries all
    #   stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::DeleteStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStackInstancesOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack_instances({
    #     stack_set_name: "StackSetName", # required
    #     accounts: ["Account"],
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       accounts_url: "AccountsUrl",
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       account_filter_type: "NONE", # accepts NONE, INTERSECTION, DIFFERENCE, UNION
    #     },
    #     regions: ["Region"], # required
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL", # accepts SEQUENTIAL, PARALLEL
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     retain_stacks: false, # required
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInstances AWS API Documentation
    #
    # @overload delete_stack_instances(params = {})
    # @param [Hash] params ({})
    def delete_stack_instances(params = {}, options = {})
      req = build_request(:delete_stack_instances, params)
      req.send_request(options)
    end

    # Deletes a stack set. Before you can delete a stack set, all its member
    # stack instances must be deleted. For more information about how to
    # complete this, see DeleteStackInstances.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you're deleting. You can
    #   obtain this value by running ListStackSets.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack_set({
    #     stack_set_name: "StackSetName", # required
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackSet AWS API Documentation
    #
    # @overload delete_stack_set(params = {})
    # @param [Hash] params ({})
    def delete_stack_set(params = {}, options = {})
      req = build_request(:delete_stack_set, params)
      req.send_request(options)
    end

    # Marks an extension or extension version as `DEPRECATED` in the
    # CloudFormation registry, removing it from active use. Deprecated
    # extensions or extension versions cannot be used in CloudFormation
    # operations.
    #
    # To deregister an entire extension, you must individually deregister
    # all active versions of that extension. If an extension has only a
    # single active version, deregistering that version results in the
    # extension itself being deregistered and marked as deprecated in the
    # registry.
    #
    # You can't deregister the default version of an extension if there are
    # other active version of that extension. If you do deregister the
    # default version of an extension, the extension type itself is
    # deregistered as well and marked as deprecated.
    #
    # To view the deprecation status of an extension or extension version,
    # use [DescribeType][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type
    #   The kind of extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :version_id
    #   The ID of a specific version of the extension. The version ID is the
    #   value at the end of the Amazon Resource Name (ARN) assigned to the
    #   extension version when it is registered.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_type({
    #     arn: "PrivateTypeArn",
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     type_name: "TypeName",
    #     version_id: "TypeVersionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeregisterType AWS API Documentation
    #
    # @overload deregister_type(params = {})
    # @param [Hash] params ({})
    def deregister_type(params = {}, options = {})
      req = build_request(:deregister_type, params)
      req.send_request(options)
    end

    # Retrieves your account's CloudFormation limits, such as the maximum
    # number of stacks that you can create in your account. For more
    # information about account limits, see [CloudFormation Quotas][1] in
    # the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of limits that you want to
    #   retrieve.
    #
    # @return [Types::DescribeAccountLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountLimitsOutput#account_limits #account_limits} => Array&lt;Types::AccountLimit&gt;
    #   * {Types::DescribeAccountLimitsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_limits #=> Array
    #   resp.account_limits[0].name #=> String
    #   resp.account_limits[0].value #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeAccountLimits AWS API Documentation
    #
    # @overload describe_account_limits(params = {})
    # @param [Hash] params ({})
    def describe_account_limits(params = {}, options = {})
      req = build_request(:describe_account_limits, params)
      req.send_request(options)
    end

    # Returns the inputs for the change set and a list of changes that
    # CloudFormation will make if you execute the change set. For more
    # information, see [Updating Stacks Using Change Sets][1] in the
    # CloudFormation User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html
    #
    # @option params [required, String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you want
    #   to describe.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   ID (ARN) of the change set you want to describe.
    #
    # @option params [String] :next_token
    #   A string (provided by the DescribeChangeSet response output) that
    #   identifies the next page of information that you want to retrieve.
    #
    # @return [Types::DescribeChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChangeSetOutput#change_set_name #change_set_name} => String
    #   * {Types::DescribeChangeSetOutput#change_set_id #change_set_id} => String
    #   * {Types::DescribeChangeSetOutput#stack_id #stack_id} => String
    #   * {Types::DescribeChangeSetOutput#stack_name #stack_name} => String
    #   * {Types::DescribeChangeSetOutput#description #description} => String
    #   * {Types::DescribeChangeSetOutput#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::DescribeChangeSetOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeChangeSetOutput#execution_status #execution_status} => String
    #   * {Types::DescribeChangeSetOutput#status #status} => String
    #   * {Types::DescribeChangeSetOutput#status_reason #status_reason} => String
    #   * {Types::DescribeChangeSetOutput#notification_arns #notification_arns} => Array&lt;String&gt;
    #   * {Types::DescribeChangeSetOutput#rollback_configuration #rollback_configuration} => Types::RollbackConfiguration
    #   * {Types::DescribeChangeSetOutput#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::DescribeChangeSetOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeChangeSetOutput#changes #changes} => Array&lt;Types::Change&gt;
    #   * {Types::DescribeChangeSetOutput#next_token #next_token} => String
    #   * {Types::DescribeChangeSetOutput#include_nested_stacks #include_nested_stacks} => Boolean
    #   * {Types::DescribeChangeSetOutput#parent_change_set_id #parent_change_set_id} => String
    #   * {Types::DescribeChangeSetOutput#root_change_set_id #root_change_set_id} => String
    #   * {Types::DescribeChangeSetOutput#on_stack_failure #on_stack_failure} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_change_set({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_name #=> String
    #   resp.change_set_id #=> String
    #   resp.stack_id #=> String
    #   resp.stack_name #=> String
    #   resp.description #=> String
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_key #=> String
    #   resp.parameters[0].parameter_value #=> String
    #   resp.parameters[0].use_previous_value #=> Boolean
    #   resp.parameters[0].resolved_value #=> String
    #   resp.creation_time #=> Time
    #   resp.execution_status #=> String, one of "UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "FAILED"
    #   resp.status_reason #=> String
    #   resp.notification_arns #=> Array
    #   resp.notification_arns[0] #=> String
    #   resp.rollback_configuration.rollback_triggers #=> Array
    #   resp.rollback_configuration.rollback_triggers[0].arn #=> String
    #   resp.rollback_configuration.rollback_triggers[0].type #=> String
    #   resp.rollback_configuration.monitoring_time_in_minutes #=> Integer
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.changes #=> Array
    #   resp.changes[0].type #=> String, one of "Resource"
    #   resp.changes[0].hook_invocation_count #=> Integer
    #   resp.changes[0].resource_change.action #=> String, one of "Add", "Modify", "Remove", "Import", "Dynamic"
    #   resp.changes[0].resource_change.logical_resource_id #=> String
    #   resp.changes[0].resource_change.physical_resource_id #=> String
    #   resp.changes[0].resource_change.resource_type #=> String
    #   resp.changes[0].resource_change.replacement #=> String, one of "True", "False", "Conditional"
    #   resp.changes[0].resource_change.scope #=> Array
    #   resp.changes[0].resource_change.scope[0] #=> String, one of "Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"
    #   resp.changes[0].resource_change.details #=> Array
    #   resp.changes[0].resource_change.details[0].target.attribute #=> String, one of "Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"
    #   resp.changes[0].resource_change.details[0].target.name #=> String
    #   resp.changes[0].resource_change.details[0].target.requires_recreation #=> String, one of "Never", "Conditionally", "Always"
    #   resp.changes[0].resource_change.details[0].evaluation #=> String, one of "Static", "Dynamic"
    #   resp.changes[0].resource_change.details[0].change_source #=> String, one of "ResourceReference", "ParameterReference", "ResourceAttribute", "DirectModification", "Automatic"
    #   resp.changes[0].resource_change.details[0].causing_entity #=> String
    #   resp.changes[0].resource_change.change_set_id #=> String
    #   resp.changes[0].resource_change.module_info.type_hierarchy #=> String
    #   resp.changes[0].resource_change.module_info.logical_id_hierarchy #=> String
    #   resp.next_token #=> String
    #   resp.include_nested_stacks #=> Boolean
    #   resp.parent_change_set_id #=> String
    #   resp.root_change_set_id #=> String
    #   resp.on_stack_failure #=> String, one of "DO_NOTHING", "ROLLBACK", "DELETE"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * change_set_create_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSet AWS API Documentation
    #
    # @overload describe_change_set(params = {})
    # @param [Hash] params ({})
    def describe_change_set(params = {}, options = {})
      req = build_request(:describe_change_set, params)
      req.send_request(options)
    end

    # Returns hook-related information for the change set and a list of
    # changes that CloudFormation makes when you run the change set.
    #
    # @option params [required, String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you want
    #   to describe.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   stack ID (ARN) of the change set you want to describe.
    #
    # @option params [String] :next_token
    #   A string, provided by the `DescribeChangeSetHooks` response output,
    #   that identifies the next page of information that you want to
    #   retrieve.
    #
    # @option params [String] :logical_resource_id
    #   If specified, lists only the hooks related to the specified
    #   `LogicalResourceId`.
    #
    # @return [Types::DescribeChangeSetHooksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChangeSetHooksOutput#change_set_id #change_set_id} => String
    #   * {Types::DescribeChangeSetHooksOutput#change_set_name #change_set_name} => String
    #   * {Types::DescribeChangeSetHooksOutput#hooks #hooks} => Array&lt;Types::ChangeSetHook&gt;
    #   * {Types::DescribeChangeSetHooksOutput#status #status} => String
    #   * {Types::DescribeChangeSetHooksOutput#next_token #next_token} => String
    #   * {Types::DescribeChangeSetHooksOutput#stack_id #stack_id} => String
    #   * {Types::DescribeChangeSetHooksOutput#stack_name #stack_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_change_set_hooks({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     next_token: "NextToken",
    #     logical_resource_id: "LogicalResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_id #=> String
    #   resp.change_set_name #=> String
    #   resp.hooks #=> Array
    #   resp.hooks[0].invocation_point #=> String, one of "PRE_PROVISION"
    #   resp.hooks[0].failure_mode #=> String, one of "FAIL", "WARN"
    #   resp.hooks[0].type_name #=> String
    #   resp.hooks[0].type_version_id #=> String
    #   resp.hooks[0].type_configuration_version_id #=> String
    #   resp.hooks[0].target_details.target_type #=> String, one of "RESOURCE"
    #   resp.hooks[0].target_details.resource_target_details.logical_resource_id #=> String
    #   resp.hooks[0].target_details.resource_target_details.resource_type #=> String
    #   resp.hooks[0].target_details.resource_target_details.resource_action #=> String, one of "Add", "Modify", "Remove", "Import", "Dynamic"
    #   resp.status #=> String, one of "PLANNING", "PLANNED", "UNAVAILABLE"
    #   resp.next_token #=> String
    #   resp.stack_id #=> String
    #   resp.stack_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSetHooks AWS API Documentation
    #
    # @overload describe_change_set_hooks(params = {})
    # @param [Hash] params ({})
    def describe_change_set_hooks(params = {}, options = {})
      req = build_request(:describe_change_set_hooks, params)
      req.send_request(options)
    end

    # Retrieves information about the account's `OrganizationAccess`
    # status. This API can be called either by the management account or the
    # delegated administrator by using the `CallAs` parameter. This API can
    # also be called without the `CallAs` parameter by the management
    # account.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::DescribeOrganizationsAccessOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationsAccessOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organizations_access({
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ENABLED", "DISABLED", "DISABLED_PERMANENTLY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeOrganizationsAccess AWS API Documentation
    #
    # @overload describe_organizations_access(params = {})
    # @param [Hash] params ({})
    def describe_organizations_access(params = {}, options = {})
      req = build_request(:describe_organizations_access, params)
      req.send_request(options)
    end

    # Returns information about a CloudFormation extension publisher.
    #
    # If you don't supply a `PublisherId`, and you have registered as an
    # extension publisher, `DescribePublisher` returns information about
    # your own publisher account.
    #
    # For more information about registering as a publisher, see:
    #
    # * [RegisterPublisher][1]
    #
    # * [Publishing extensions to make them available for public use][2] in
    #   the *CloudFormation CLI User Guide*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html
    # [2]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html
    #
    # @option params [String] :publisher_id
    #   The ID of the extension publisher.
    #
    #   If you don't supply a `PublisherId`, and you have registered as an
    #   extension publisher, `DescribePublisher` returns information about
    #   your own publisher account.
    #
    # @return [Types::DescribePublisherOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePublisherOutput#publisher_id #publisher_id} => String
    #   * {Types::DescribePublisherOutput#publisher_status #publisher_status} => String
    #   * {Types::DescribePublisherOutput#identity_provider #identity_provider} => String
    #   * {Types::DescribePublisherOutput#publisher_profile #publisher_profile} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_publisher({
    #     publisher_id: "PublisherId",
    #   })
    #
    # @example Response structure
    #
    #   resp.publisher_id #=> String
    #   resp.publisher_status #=> String, one of "VERIFIED", "UNVERIFIED"
    #   resp.identity_provider #=> String, one of "AWS_Marketplace", "GitHub", "Bitbucket"
    #   resp.publisher_profile #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribePublisher AWS API Documentation
    #
    # @overload describe_publisher(params = {})
    # @param [Hash] params ({})
    def describe_publisher(params = {}, options = {})
      req = build_request(:describe_publisher, params)
      req.send_request(options)
    end

    # Returns information about a stack drift detection operation. A stack
    # drift detection operation detects whether a stack's actual
    # configuration differs, or has *drifted*, from its expected
    # configuration, as defined in the stack template and any values
    # specified as template parameters. A stack is considered to have
    # drifted if one or more of its resources have drifted. For more
    # information about stack and resource drift, see [Detecting Unregulated
    # Configuration Changes to Stacks and Resources][1].
    #
    # Use DetectStackDrift to initiate a stack drift detection operation.
    # `DetectStackDrift` returns a `StackDriftDetectionId` you can use to
    # monitor the progress of the operation using
    # `DescribeStackDriftDetectionStatus`. Once the drift detection
    # operation has completed, use DescribeStackResourceDrifts to return
    # drift information about the stack and its resources.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    #
    # @option params [required, String] :stack_drift_detection_id
    #   The ID of the drift detection results of this operation.
    #
    #   CloudFormation generates new results, with a new drift detection ID,
    #   each time this operation is run. However, the number of drift results
    #   CloudFormation retains for any given stack, and for how long, may
    #   vary.
    #
    # @return [Types::DescribeStackDriftDetectionStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackDriftDetectionStatusOutput#stack_id #stack_id} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#stack_drift_detection_id #stack_drift_detection_id} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#stack_drift_status #stack_drift_status} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#detection_status #detection_status} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#detection_status_reason #detection_status_reason} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#drifted_stack_resource_count #drifted_stack_resource_count} => Integer
    #   * {Types::DescribeStackDriftDetectionStatusOutput#timestamp #timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_drift_detection_status({
    #     stack_drift_detection_id: "StackDriftDetectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #   resp.stack_drift_detection_id #=> String
    #   resp.stack_drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.detection_status #=> String, one of "DETECTION_IN_PROGRESS", "DETECTION_FAILED", "DETECTION_COMPLETE"
    #   resp.detection_status_reason #=> String
    #   resp.drifted_stack_resource_count #=> Integer
    #   resp.timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackDriftDetectionStatus AWS API Documentation
    #
    # @overload describe_stack_drift_detection_status(params = {})
    # @param [Hash] params ({})
    def describe_stack_drift_detection_status(params = {}, options = {})
      req = build_request(:describe_stack_drift_detection_status, params)
      req.send_request(options)
    end

    # Returns all stack related events for a specified stack in reverse
    # chronological order. For more information about a stack's event
    # history, go to [Stacks][1] in the CloudFormation User Guide.
    #
    # <note markdown="1"> You can list events for stacks that have failed to create or have been
    # deleted by specifying the unique stack identifier (stack ID).
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that's associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of events that you want to
    #   retrieve.
    #
    # @return [Types::DescribeStackEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackEventsOutput#stack_events #stack_events} => Array&lt;Types::StackEvent&gt;
    #   * {Types::DescribeStackEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_events({
    #     stack_name: "StackName",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_events #=> Array
    #   resp.stack_events[0].stack_id #=> String
    #   resp.stack_events[0].event_id #=> String
    #   resp.stack_events[0].stack_name #=> String
    #   resp.stack_events[0].logical_resource_id #=> String
    #   resp.stack_events[0].physical_resource_id #=> String
    #   resp.stack_events[0].resource_type #=> String
    #   resp.stack_events[0].timestamp #=> Time
    #   resp.stack_events[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"
    #   resp.stack_events[0].resource_status_reason #=> String
    #   resp.stack_events[0].resource_properties #=> String
    #   resp.stack_events[0].client_request_token #=> String
    #   resp.stack_events[0].hook_type #=> String
    #   resp.stack_events[0].hook_status #=> String, one of "HOOK_IN_PROGRESS", "HOOK_COMPLETE_SUCCEEDED", "HOOK_COMPLETE_FAILED", "HOOK_FAILED"
    #   resp.stack_events[0].hook_status_reason #=> String
    #   resp.stack_events[0].hook_invocation_point #=> String, one of "PRE_PROVISION"
    #   resp.stack_events[0].hook_failure_mode #=> String, one of "FAIL", "WARN"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackEvents AWS API Documentation
    #
    # @overload describe_stack_events(params = {})
    # @param [Hash] params ({})
    def describe_stack_events(params = {}, options = {})
      req = build_request(:describe_stack_events, params)
      req.send_request(options)
    end

    # Returns the stack instance that's associated with the specified
    # StackSet, Amazon Web Services account, and Amazon Web Services Region.
    #
    # For a list of stack instances that are associated with a specific
    # StackSet, use ListStackInstances.
    #
    # @option params [required, String] :stack_set_name
    #   The name or the unique stack ID of the stack set that you want to get
    #   stack instance information for.
    #
    # @option params [required, String] :stack_instance_account
    #   The ID of an Amazon Web Services account that's associated with this
    #   stack instance.
    #
    # @option params [required, String] :stack_instance_region
    #   The name of a Region that's associated with this stack instance.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::DescribeStackInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackInstanceOutput#stack_instance #stack_instance} => Types::StackInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_instance({
    #     stack_set_name: "StackSetName", # required
    #     stack_instance_account: "Account", # required
    #     stack_instance_region: "Region", # required
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_instance.stack_set_id #=> String
    #   resp.stack_instance.region #=> String
    #   resp.stack_instance.account #=> String
    #   resp.stack_instance.stack_id #=> String
    #   resp.stack_instance.parameter_overrides #=> Array
    #   resp.stack_instance.parameter_overrides[0].parameter_key #=> String
    #   resp.stack_instance.parameter_overrides[0].parameter_value #=> String
    #   resp.stack_instance.parameter_overrides[0].use_previous_value #=> Boolean
    #   resp.stack_instance.parameter_overrides[0].resolved_value #=> String
    #   resp.stack_instance.status #=> String, one of "CURRENT", "OUTDATED", "INOPERABLE"
    #   resp.stack_instance.stack_instance_status.detailed_status #=> String, one of "PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED", "INOPERABLE", "SKIPPED_SUSPENDED_ACCOUNT"
    #   resp.stack_instance.status_reason #=> String
    #   resp.stack_instance.organizational_unit_id #=> String
    #   resp.stack_instance.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.stack_instance.last_drift_check_timestamp #=> Time
    #   resp.stack_instance.last_operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackInstance AWS API Documentation
    #
    # @overload describe_stack_instance(params = {})
    # @param [Hash] params ({})
    def describe_stack_instance(params = {}, options = {})
      req = build_request(:describe_stack_instance, params)
      req.send_request(options)
    end

    # Returns a description of the specified resource in the specified
    # stack.
    #
    # For deleted stacks, DescribeStackResource returns resource information
    # for up to 90 days after the stack has been deleted.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that's associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [required, String] :logical_resource_id
    #   The logical name of the resource as specified in the template.
    #
    #   Default: There is no default value.
    #
    # @return [Types::DescribeStackResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackResourceOutput#stack_resource_detail #stack_resource_detail} => Types::StackResourceDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resource({
    #     stack_name: "StackName", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_detail.stack_name #=> String
    #   resp.stack_resource_detail.stack_id #=> String
    #   resp.stack_resource_detail.logical_resource_id #=> String
    #   resp.stack_resource_detail.physical_resource_id #=> String
    #   resp.stack_resource_detail.resource_type #=> String
    #   resp.stack_resource_detail.last_updated_timestamp #=> Time
    #   resp.stack_resource_detail.resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"
    #   resp.stack_resource_detail.resource_status_reason #=> String
    #   resp.stack_resource_detail.description #=> String
    #   resp.stack_resource_detail.metadata #=> String
    #   resp.stack_resource_detail.drift_information.stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resource_detail.drift_information.last_check_timestamp #=> Time
    #   resp.stack_resource_detail.module_info.type_hierarchy #=> String
    #   resp.stack_resource_detail.module_info.logical_id_hierarchy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResource AWS API Documentation
    #
    # @overload describe_stack_resource(params = {})
    # @param [Hash] params ({})
    def describe_stack_resource(params = {}, options = {})
      req = build_request(:describe_stack_resource, params)
      req.send_request(options)
    end

    # Returns drift information for the resources that have been checked for
    # drift in the specified stack. This includes actual and expected
    # configuration values for resources where CloudFormation detects
    # configuration drift.
    #
    # For a given stack, there will be one `StackResourceDrift` for each
    # stack resource that has been checked for drift. Resources that
    # haven't yet been checked for drift aren't included. Resources that
    # don't currently support drift detection aren't checked, and so not
    # included. For a list of resources that support drift detection, see
    # [Resources that Support Drift Detection][1].
    #
    # Use DetectStackResourceDrift to detect drift on individual resources,
    # or DetectStackDrift to detect drift on all supported resources for a
    # given stack.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html
    #
    # @option params [required, String] :stack_name
    #   The name of the stack for which you want drift information.
    #
    # @option params [Array<String>] :stack_resource_drift_status_filters
    #   The resource drift status values to use as filters for the resource
    #   drift results returned.
    #
    #   * `DELETED`: The resource differs from its expected template
    #     configuration in that the resource has been deleted.
    #
    #   * `MODIFIED`: One or more resource properties differ from their
    #     expected template values.
    #
    #   * `IN_SYNC`: The resource's actual configuration matches its expected
    #     template configuration.
    #
    #   * `NOT_CHECKED`: CloudFormation doesn't currently return this value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stack resource drift
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::DescribeStackResourceDriftsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackResourceDriftsOutput#stack_resource_drifts #stack_resource_drifts} => Array&lt;Types::StackResourceDrift&gt;
    #   * {Types::DescribeStackResourceDriftsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resource_drifts({
    #     stack_name: "StackNameOrId", # required
    #     stack_resource_drift_status_filters: ["IN_SYNC"], # accepts IN_SYNC, MODIFIED, DELETED, NOT_CHECKED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_drifts #=> Array
    #   resp.stack_resource_drifts[0].stack_id #=> String
    #   resp.stack_resource_drifts[0].logical_resource_id #=> String
    #   resp.stack_resource_drifts[0].physical_resource_id #=> String
    #   resp.stack_resource_drifts[0].physical_resource_id_context #=> Array
    #   resp.stack_resource_drifts[0].physical_resource_id_context[0].key #=> String
    #   resp.stack_resource_drifts[0].physical_resource_id_context[0].value #=> String
    #   resp.stack_resource_drifts[0].resource_type #=> String
    #   resp.stack_resource_drifts[0].expected_properties #=> String
    #   resp.stack_resource_drifts[0].actual_properties #=> String
    #   resp.stack_resource_drifts[0].property_differences #=> Array
    #   resp.stack_resource_drifts[0].property_differences[0].property_path #=> String
    #   resp.stack_resource_drifts[0].property_differences[0].expected_value #=> String
    #   resp.stack_resource_drifts[0].property_differences[0].actual_value #=> String
    #   resp.stack_resource_drifts[0].property_differences[0].difference_type #=> String, one of "ADD", "REMOVE", "NOT_EQUAL"
    #   resp.stack_resource_drifts[0].stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resource_drifts[0].timestamp #=> Time
    #   resp.stack_resource_drifts[0].module_info.type_hierarchy #=> String
    #   resp.stack_resource_drifts[0].module_info.logical_id_hierarchy #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourceDrifts AWS API Documentation
    #
    # @overload describe_stack_resource_drifts(params = {})
    # @param [Hash] params ({})
    def describe_stack_resource_drifts(params = {}, options = {})
      req = build_request(:describe_stack_resource_drifts, params)
      req.send_request(options)
    end

    # Returns Amazon Web Services resource descriptions for running and
    # deleted stacks. If `StackName` is specified, all the associated
    # resources that are part of the stack are returned. If
    # `PhysicalResourceId` is specified, the associated resources of the
    # stack that the resource belongs to are returned.
    #
    # <note markdown="1"> Only the first 100 resources will be returned. If your stack has more
    # resources than this, you should use `ListStackResources` instead.
    #
    #  </note>
    #
    # For deleted stacks, `DescribeStackResources` returns resource
    # information for up to 90 days after the stack has been deleted.
    #
    # You must specify either `StackName` or `PhysicalResourceId`, but not
    # both. In addition, you can specify `LogicalResourceId` to filter the
    # returned result. For more information about resources, the
    # `LogicalResourceId` and `PhysicalResourceId`, go to the
    # [CloudFormation User Guide][1].
    #
    # <note markdown="1"> A `ValidationError` is returned if you specify both `StackName` and
    # `PhysicalResourceId` in the same request.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    #   Required: Conditional. If you don't specify `StackName`, you must
    #   specify `PhysicalResourceId`.
    #
    # @option params [String] :logical_resource_id
    #   The logical name of the resource as specified in the template.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :physical_resource_id
    #   The name or unique identifier that corresponds to a physical instance
    #   ID of a resource supported by CloudFormation.
    #
    #   For example, for an Amazon Elastic Compute Cloud (EC2) instance,
    #   `PhysicalResourceId` corresponds to the `InstanceId`. You can pass the
    #   EC2 `InstanceId` to `DescribeStackResources` to find which stack the
    #   instance belongs to and what other resources are part of the stack.
    #
    #   Required: Conditional. If you don't specify `PhysicalResourceId`, you
    #   must specify `StackName`.
    #
    #   Default: There is no default value.
    #
    # @return [Types::DescribeStackResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackResourcesOutput#stack_resources #stack_resources} => Array&lt;Types::StackResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resources({
    #     stack_name: "StackName",
    #     logical_resource_id: "LogicalResourceId",
    #     physical_resource_id: "PhysicalResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resources #=> Array
    #   resp.stack_resources[0].stack_name #=> String
    #   resp.stack_resources[0].stack_id #=> String
    #   resp.stack_resources[0].logical_resource_id #=> String
    #   resp.stack_resources[0].physical_resource_id #=> String
    #   resp.stack_resources[0].resource_type #=> String
    #   resp.stack_resources[0].timestamp #=> Time
    #   resp.stack_resources[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"
    #   resp.stack_resources[0].resource_status_reason #=> String
    #   resp.stack_resources[0].description #=> String
    #   resp.stack_resources[0].drift_information.stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resources[0].drift_information.last_check_timestamp #=> Time
    #   resp.stack_resources[0].module_info.type_hierarchy #=> String
    #   resp.stack_resources[0].module_info.logical_id_hierarchy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResources AWS API Documentation
    #
    # @overload describe_stack_resources(params = {})
    # @param [Hash] params ({})
    def describe_stack_resources(params = {}, options = {})
      req = build_request(:describe_stack_resources, params)
      req.send_request(options)
    end

    # Returns the description of the specified StackSet.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set whose description you want.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::DescribeStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackSetOutput#stack_set #stack_set} => Types::StackSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_set({
    #     stack_set_name: "StackSetName", # required
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_set.stack_set_name #=> String
    #   resp.stack_set.stack_set_id #=> String
    #   resp.stack_set.description #=> String
    #   resp.stack_set.status #=> String, one of "ACTIVE", "DELETED"
    #   resp.stack_set.template_body #=> String
    #   resp.stack_set.parameters #=> Array
    #   resp.stack_set.parameters[0].parameter_key #=> String
    #   resp.stack_set.parameters[0].parameter_value #=> String
    #   resp.stack_set.parameters[0].use_previous_value #=> Boolean
    #   resp.stack_set.parameters[0].resolved_value #=> String
    #   resp.stack_set.capabilities #=> Array
    #   resp.stack_set.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.stack_set.tags #=> Array
    #   resp.stack_set.tags[0].key #=> String
    #   resp.stack_set.tags[0].value #=> String
    #   resp.stack_set.stack_set_arn #=> String
    #   resp.stack_set.administration_role_arn #=> String
    #   resp.stack_set.execution_role_name #=> String
    #   resp.stack_set.stack_set_drift_detection_details.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "NOT_CHECKED"
    #   resp.stack_set.stack_set_drift_detection_details.drift_detection_status #=> String, one of "COMPLETED", "FAILED", "PARTIAL_SUCCESS", "IN_PROGRESS", "STOPPED"
    #   resp.stack_set.stack_set_drift_detection_details.last_drift_check_timestamp #=> Time
    #   resp.stack_set.stack_set_drift_detection_details.total_stack_instances_count #=> Integer
    #   resp.stack_set.stack_set_drift_detection_details.drifted_stack_instances_count #=> Integer
    #   resp.stack_set.stack_set_drift_detection_details.in_sync_stack_instances_count #=> Integer
    #   resp.stack_set.stack_set_drift_detection_details.in_progress_stack_instances_count #=> Integer
    #   resp.stack_set.stack_set_drift_detection_details.failed_stack_instances_count #=> Integer
    #   resp.stack_set.auto_deployment.enabled #=> Boolean
    #   resp.stack_set.auto_deployment.retain_stacks_on_account_removal #=> Boolean
    #   resp.stack_set.permission_model #=> String, one of "SERVICE_MANAGED", "SELF_MANAGED"
    #   resp.stack_set.organizational_unit_ids #=> Array
    #   resp.stack_set.organizational_unit_ids[0] #=> String
    #   resp.stack_set.managed_execution.active #=> Boolean
    #   resp.stack_set.regions #=> Array
    #   resp.stack_set.regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSet AWS API Documentation
    #
    # @overload describe_stack_set(params = {})
    # @param [Hash] params ({})
    def describe_stack_set(params = {}, options = {})
      req = build_request(:describe_stack_set, params)
      req.send_request(options)
    end

    # Returns the description of the specified StackSet operation.
    #
    # @option params [required, String] :stack_set_name
    #   The name or the unique stack ID of the stack set for the stack
    #   operation.
    #
    # @option params [required, String] :operation_id
    #   The unique ID of the stack set operation.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::DescribeStackSetOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackSetOperationOutput#stack_set_operation #stack_set_operation} => Types::StackSetOperation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_set_operation({
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_set_operation.operation_id #=> String
    #   resp.stack_set_operation.stack_set_id #=> String
    #   resp.stack_set_operation.action #=> String, one of "CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"
    #   resp.stack_set_operation.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"
    #   resp.stack_set_operation.operation_preferences.region_concurrency_type #=> String, one of "SEQUENTIAL", "PARALLEL"
    #   resp.stack_set_operation.operation_preferences.region_order #=> Array
    #   resp.stack_set_operation.operation_preferences.region_order[0] #=> String
    #   resp.stack_set_operation.operation_preferences.failure_tolerance_count #=> Integer
    #   resp.stack_set_operation.operation_preferences.failure_tolerance_percentage #=> Integer
    #   resp.stack_set_operation.operation_preferences.max_concurrent_count #=> Integer
    #   resp.stack_set_operation.operation_preferences.max_concurrent_percentage #=> Integer
    #   resp.stack_set_operation.retain_stacks #=> Boolean
    #   resp.stack_set_operation.administration_role_arn #=> String
    #   resp.stack_set_operation.execution_role_name #=> String
    #   resp.stack_set_operation.creation_timestamp #=> Time
    #   resp.stack_set_operation.end_timestamp #=> Time
    #   resp.stack_set_operation.deployment_targets.accounts #=> Array
    #   resp.stack_set_operation.deployment_targets.accounts[0] #=> String
    #   resp.stack_set_operation.deployment_targets.accounts_url #=> String
    #   resp.stack_set_operation.deployment_targets.organizational_unit_ids #=> Array
    #   resp.stack_set_operation.deployment_targets.organizational_unit_ids[0] #=> String
    #   resp.stack_set_operation.deployment_targets.account_filter_type #=> String, one of "NONE", "INTERSECTION", "DIFFERENCE", "UNION"
    #   resp.stack_set_operation.stack_set_drift_detection_details.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "NOT_CHECKED"
    #   resp.stack_set_operation.stack_set_drift_detection_details.drift_detection_status #=> String, one of "COMPLETED", "FAILED", "PARTIAL_SUCCESS", "IN_PROGRESS", "STOPPED"
    #   resp.stack_set_operation.stack_set_drift_detection_details.last_drift_check_timestamp #=> Time
    #   resp.stack_set_operation.stack_set_drift_detection_details.total_stack_instances_count #=> Integer
    #   resp.stack_set_operation.stack_set_drift_detection_details.drifted_stack_instances_count #=> Integer
    #   resp.stack_set_operation.stack_set_drift_detection_details.in_sync_stack_instances_count #=> Integer
    #   resp.stack_set_operation.stack_set_drift_detection_details.in_progress_stack_instances_count #=> Integer
    #   resp.stack_set_operation.stack_set_drift_detection_details.failed_stack_instances_count #=> Integer
    #   resp.stack_set_operation.status_reason #=> String
    #   resp.stack_set_operation.status_details.failed_stack_instances_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOperation AWS API Documentation
    #
    # @overload describe_stack_set_operation(params = {})
    # @param [Hash] params ({})
    def describe_stack_set_operation(params = {}, options = {})
      req = build_request(:describe_stack_set_operation, params)
      req.send_request(options)
    end

    # Returns the description for the specified stack; if no stack name was
    # specified, then it returns the description for all the stacks created.
    #
    # <note markdown="1"> If the stack doesn't exist, an `ValidationError` is returned.
    #
    #  </note>
    #
    # @option params [String] :stack_name
    #   <note markdown="1"> If you don't pass a parameter to `StackName`, the API returns a
    #   response that describes all resources in the account. This requires
    #   `ListStacks` and `DescribeStacks` permissions.
    #
    #    The IAM policy below can be added to IAM policies when you want to
    #   limit resource-level permissions and avoid returning a response when
    #   no parameter is sent in the request:
    #
    #    \\\{ "Version": "2012-10-17", "Statement": \[\\\{ "Effect":
    #   "Deny", "Action": "cloudformation:DescribeStacks",
    #   "NotResource": "arn:aws:cloudformation:*:*:stack/*/*" \\}\]
    #   \\}
    #
    #    </note>
    #
    #   The name or the unique stack ID that's associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stacks that you want to
    #   retrieve.
    #
    # @return [Types::DescribeStacksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStacksOutput#stacks #stacks} => Array&lt;Types::Stack&gt;
    #   * {Types::DescribeStacksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stacks({
    #     stack_name: "StackName",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stacks #=> Array
    #   resp.stacks[0].stack_id #=> String
    #   resp.stacks[0].stack_name #=> String
    #   resp.stacks[0].change_set_id #=> String
    #   resp.stacks[0].description #=> String
    #   resp.stacks[0].parameters #=> Array
    #   resp.stacks[0].parameters[0].parameter_key #=> String
    #   resp.stacks[0].parameters[0].parameter_value #=> String
    #   resp.stacks[0].parameters[0].use_previous_value #=> Boolean
    #   resp.stacks[0].parameters[0].resolved_value #=> String
    #   resp.stacks[0].creation_time #=> Time
    #   resp.stacks[0].deletion_time #=> Time
    #   resp.stacks[0].last_updated_time #=> Time
    #   resp.stacks[0].rollback_configuration.rollback_triggers #=> Array
    #   resp.stacks[0].rollback_configuration.rollback_triggers[0].arn #=> String
    #   resp.stacks[0].rollback_configuration.rollback_triggers[0].type #=> String
    #   resp.stacks[0].rollback_configuration.monitoring_time_in_minutes #=> Integer
    #   resp.stacks[0].stack_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"
    #   resp.stacks[0].stack_status_reason #=> String
    #   resp.stacks[0].disable_rollback #=> Boolean
    #   resp.stacks[0].notification_arns #=> Array
    #   resp.stacks[0].notification_arns[0] #=> String
    #   resp.stacks[0].timeout_in_minutes #=> Integer
    #   resp.stacks[0].capabilities #=> Array
    #   resp.stacks[0].capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.stacks[0].outputs #=> Array
    #   resp.stacks[0].outputs[0].output_key #=> String
    #   resp.stacks[0].outputs[0].output_value #=> String
    #   resp.stacks[0].outputs[0].description #=> String
    #   resp.stacks[0].outputs[0].export_name #=> String
    #   resp.stacks[0].role_arn #=> String
    #   resp.stacks[0].tags #=> Array
    #   resp.stacks[0].tags[0].key #=> String
    #   resp.stacks[0].tags[0].value #=> String
    #   resp.stacks[0].enable_termination_protection #=> Boolean
    #   resp.stacks[0].parent_id #=> String
    #   resp.stacks[0].root_id #=> String
    #   resp.stacks[0].drift_information.stack_drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.stacks[0].drift_information.last_check_timestamp #=> Time
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * stack_create_complete
    #   * stack_delete_complete
    #   * stack_exists
    #   * stack_import_complete
    #   * stack_rollback_complete
    #   * stack_update_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStacks AWS API Documentation
    #
    # @overload describe_stacks(params = {})
    # @param [Hash] params ({})
    def describe_stacks(params = {}, options = {})
      req = build_request(:describe_stacks, params)
      req.send_request(options)
    end

    # Returns detailed information about an extension that has been
    # registered.
    #
    # If you specify a `VersionId`, `DescribeType` returns information about
    # that specific extension version. Otherwise, it returns information
    # about the default extension version.
    #
    # @option params [String] :type
    #   The kind of extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :version_id
    #   The ID of a specific version of the extension. The version ID is the
    #   value at the end of the Amazon Resource Name (ARN) assigned to the
    #   extension version when it is registered.
    #
    #   If you specify a `VersionId`, `DescribeType` returns information about
    #   that specific extension version. Otherwise, it returns information
    #   about the default extension version.
    #
    # @option params [String] :publisher_id
    #   The publisher ID of the extension publisher.
    #
    #   Extensions provided by Amazon Web Services are not assigned a
    #   publisher ID.
    #
    # @option params [String] :public_version_number
    #   The version number of a public third-party extension.
    #
    # @return [Types::DescribeTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTypeOutput#arn #arn} => String
    #   * {Types::DescribeTypeOutput#type #type} => String
    #   * {Types::DescribeTypeOutput#type_name #type_name} => String
    #   * {Types::DescribeTypeOutput#default_version_id #default_version_id} => String
    #   * {Types::DescribeTypeOutput#is_default_version #is_default_version} => Boolean
    #   * {Types::DescribeTypeOutput#type_tests_status #type_tests_status} => String
    #   * {Types::DescribeTypeOutput#type_tests_status_description #type_tests_status_description} => String
    #   * {Types::DescribeTypeOutput#description #description} => String
    #   * {Types::DescribeTypeOutput#schema #schema} => String
    #   * {Types::DescribeTypeOutput#provisioning_type #provisioning_type} => String
    #   * {Types::DescribeTypeOutput#deprecated_status #deprecated_status} => String
    #   * {Types::DescribeTypeOutput#logging_config #logging_config} => Types::LoggingConfig
    #   * {Types::DescribeTypeOutput#required_activated_types #required_activated_types} => Array&lt;Types::RequiredActivatedType&gt;
    #   * {Types::DescribeTypeOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::DescribeTypeOutput#visibility #visibility} => String
    #   * {Types::DescribeTypeOutput#source_url #source_url} => String
    #   * {Types::DescribeTypeOutput#documentation_url #documentation_url} => String
    #   * {Types::DescribeTypeOutput#last_updated #last_updated} => Time
    #   * {Types::DescribeTypeOutput#time_created #time_created} => Time
    #   * {Types::DescribeTypeOutput#configuration_schema #configuration_schema} => String
    #   * {Types::DescribeTypeOutput#publisher_id #publisher_id} => String
    #   * {Types::DescribeTypeOutput#original_type_name #original_type_name} => String
    #   * {Types::DescribeTypeOutput#original_type_arn #original_type_arn} => String
    #   * {Types::DescribeTypeOutput#public_version_number #public_version_number} => String
    #   * {Types::DescribeTypeOutput#latest_public_version #latest_public_version} => String
    #   * {Types::DescribeTypeOutput#is_activated #is_activated} => Boolean
    #   * {Types::DescribeTypeOutput#auto_update #auto_update} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_type({
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     type_name: "TypeName",
    #     arn: "TypeArn",
    #     version_id: "TypeVersionId",
    #     publisher_id: "PublisherId",
    #     public_version_number: "PublicVersionNumber",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.type #=> String, one of "RESOURCE", "MODULE", "HOOK"
    #   resp.type_name #=> String
    #   resp.default_version_id #=> String
    #   resp.is_default_version #=> Boolean
    #   resp.type_tests_status #=> String, one of "PASSED", "FAILED", "IN_PROGRESS", "NOT_TESTED"
    #   resp.type_tests_status_description #=> String
    #   resp.description #=> String
    #   resp.schema #=> String
    #   resp.provisioning_type #=> String, one of "NON_PROVISIONABLE", "IMMUTABLE", "FULLY_MUTABLE"
    #   resp.deprecated_status #=> String, one of "LIVE", "DEPRECATED"
    #   resp.logging_config.log_role_arn #=> String
    #   resp.logging_config.log_group_name #=> String
    #   resp.required_activated_types #=> Array
    #   resp.required_activated_types[0].type_name_alias #=> String
    #   resp.required_activated_types[0].original_type_name #=> String
    #   resp.required_activated_types[0].publisher_id #=> String
    #   resp.required_activated_types[0].supported_major_versions #=> Array
    #   resp.required_activated_types[0].supported_major_versions[0] #=> Integer
    #   resp.execution_role_arn #=> String
    #   resp.visibility #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.source_url #=> String
    #   resp.documentation_url #=> String
    #   resp.last_updated #=> Time
    #   resp.time_created #=> Time
    #   resp.configuration_schema #=> String
    #   resp.publisher_id #=> String
    #   resp.original_type_name #=> String
    #   resp.original_type_arn #=> String
    #   resp.public_version_number #=> String
    #   resp.latest_public_version #=> String
    #   resp.is_activated #=> Boolean
    #   resp.auto_update #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeType AWS API Documentation
    #
    # @overload describe_type(params = {})
    # @param [Hash] params ({})
    def describe_type(params = {}, options = {})
      req = build_request(:describe_type, params)
      req.send_request(options)
    end

    # Returns information about an extension's registration, including its
    # current status and type and version identifiers.
    #
    # When you initiate a registration request using RegisterType, you can
    # then use DescribeTypeRegistration to monitor the progress of that
    # registration request.
    #
    # Once the registration request has completed, use DescribeType to
    # return detailed information about an extension.
    #
    # @option params [required, String] :registration_token
    #   The identifier for this registration request.
    #
    #   This registration token is generated by CloudFormation when you
    #   initiate a registration request using RegisterType.
    #
    # @return [Types::DescribeTypeRegistrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTypeRegistrationOutput#progress_status #progress_status} => String
    #   * {Types::DescribeTypeRegistrationOutput#description #description} => String
    #   * {Types::DescribeTypeRegistrationOutput#type_arn #type_arn} => String
    #   * {Types::DescribeTypeRegistrationOutput#type_version_arn #type_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_type_registration({
    #     registration_token: "RegistrationToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.progress_status #=> String, one of "COMPLETE", "IN_PROGRESS", "FAILED"
    #   resp.description #=> String
    #   resp.type_arn #=> String
    #   resp.type_version_arn #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * type_registration_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeTypeRegistration AWS API Documentation
    #
    # @overload describe_type_registration(params = {})
    # @param [Hash] params ({})
    def describe_type_registration(params = {}, options = {})
      req = build_request(:describe_type_registration, params)
      req.send_request(options)
    end

    # Detects whether a stack's actual configuration differs, or has
    # *drifted*, from its expected configuration, as defined in the stack
    # template and any values specified as template parameters. For each
    # resource in the stack that supports drift detection, CloudFormation
    # compares the actual configuration of the resource with its expected
    # template configuration. Only resource properties explicitly defined in
    # the stack template are checked for drift. A stack is considered to
    # have drifted if one or more of its resources differ from their
    # expected template configurations. For more information, see [Detecting
    # Unregulated Configuration Changes to Stacks and Resources][1].
    #
    # Use `DetectStackDrift` to detect drift on all supported resources for
    # a given stack, or DetectStackResourceDrift to detect drift on
    # individual resources.
    #
    # For a list of stack resources that currently support drift detection,
    # see [Resources that Support Drift Detection][2].
    #
    # `DetectStackDrift` can take up to several minutes, depending on the
    # number of resources contained within the stack. Use
    # DescribeStackDriftDetectionStatus to monitor the progress of a detect
    # stack drift operation. Once the drift detection operation has
    # completed, use DescribeStackResourceDrifts to return drift information
    # about the stack and its resources.
    #
    # When detecting drift on a stack, CloudFormation doesn't detect drift
    # on any nested stacks belonging to that stack. Perform
    # `DetectStackDrift` directly on the nested stack itself.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html
    #
    # @option params [required, String] :stack_name
    #   The name of the stack for which you want to detect drift.
    #
    # @option params [Array<String>] :logical_resource_ids
    #   The logical names of any resources you want to use as filters.
    #
    # @return [Types::DetectStackDriftOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectStackDriftOutput#stack_drift_detection_id #stack_drift_detection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_stack_drift({
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_ids: ["LogicalResourceId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_drift_detection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackDrift AWS API Documentation
    #
    # @overload detect_stack_drift(params = {})
    # @param [Hash] params ({})
    def detect_stack_drift(params = {}, options = {})
      req = build_request(:detect_stack_drift, params)
      req.send_request(options)
    end

    # Returns information about whether a resource's actual configuration
    # differs, or has *drifted*, from its expected configuration, as defined
    # in the stack template and any values specified as template parameters.
    # This information includes actual and expected property values for
    # resources in which CloudFormation detects drift. Only resource
    # properties explicitly defined in the stack template are checked for
    # drift. For more information about stack and resource drift, see
    # [Detecting Unregulated Configuration Changes to Stacks and
    # Resources][1].
    #
    # Use `DetectStackResourceDrift` to detect drift on individual
    # resources, or DetectStackDrift to detect drift on all resources in a
    # given stack that support drift detection.
    #
    # Resources that don't currently support drift detection can't be
    # checked. For a list of resources that support drift detection, see
    # [Resources that Support Drift Detection][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html
    #
    # @option params [required, String] :stack_name
    #   The name of the stack to which the resource belongs.
    #
    # @option params [required, String] :logical_resource_id
    #   The logical name of the resource for which to return drift
    #   information.
    #
    # @return [Types::DetectStackResourceDriftOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectStackResourceDriftOutput#stack_resource_drift #stack_resource_drift} => Types::StackResourceDrift
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_stack_resource_drift({
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_drift.stack_id #=> String
    #   resp.stack_resource_drift.logical_resource_id #=> String
    #   resp.stack_resource_drift.physical_resource_id #=> String
    #   resp.stack_resource_drift.physical_resource_id_context #=> Array
    #   resp.stack_resource_drift.physical_resource_id_context[0].key #=> String
    #   resp.stack_resource_drift.physical_resource_id_context[0].value #=> String
    #   resp.stack_resource_drift.resource_type #=> String
    #   resp.stack_resource_drift.expected_properties #=> String
    #   resp.stack_resource_drift.actual_properties #=> String
    #   resp.stack_resource_drift.property_differences #=> Array
    #   resp.stack_resource_drift.property_differences[0].property_path #=> String
    #   resp.stack_resource_drift.property_differences[0].expected_value #=> String
    #   resp.stack_resource_drift.property_differences[0].actual_value #=> String
    #   resp.stack_resource_drift.property_differences[0].difference_type #=> String, one of "ADD", "REMOVE", "NOT_EQUAL"
    #   resp.stack_resource_drift.stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resource_drift.timestamp #=> Time
    #   resp.stack_resource_drift.module_info.type_hierarchy #=> String
    #   resp.stack_resource_drift.module_info.logical_id_hierarchy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackResourceDrift AWS API Documentation
    #
    # @overload detect_stack_resource_drift(params = {})
    # @param [Hash] params ({})
    def detect_stack_resource_drift(params = {}, options = {})
      req = build_request(:detect_stack_resource_drift, params)
      req.send_request(options)
    end

    # Detect drift on a stack set. When CloudFormation performs drift
    # detection on a stack set, it performs drift detection on the stack
    # associated with each stack instance in the stack set. For more
    # information, see [How CloudFormation performs drift detection on a
    # stack set][1].
    #
    # `DetectStackSetDrift` returns the `OperationId` of the stack set drift
    # detection operation. Use this operation id with
    # DescribeStackSetOperation to monitor the progress of the drift
    # detection operation. The drift detection operation may take some time,
    # depending on the number of stack instances included in the stack set,
    # in addition to the number of resources included in each stack.
    #
    # Once the operation has completed, use the following actions to return
    # drift information:
    #
    # * Use DescribeStackSet to return detailed information about the stack
    #   set, including detailed information about the last *completed* drift
    #   operation performed on the stack set. (Information about drift
    #   operations that are in progress isn't included.)
    #
    # * Use ListStackInstances to return a list of stack instances belonging
    #   to the stack set, including the drift status and last drift time
    #   checked of each instance.
    #
    # * Use DescribeStackInstance to return detailed information about a
    #   specific stack instance, including its drift status and last drift
    #   time checked.
    #
    # For more information about performing a drift detection operation on a
    # stack set, see [Detecting unmanaged changes in stack sets][1].
    #
    # You can only run a single drift detection operation on a given stack
    # set at one time.
    #
    # To stop a drift detection stack set operation, use
    # StopStackSetOperation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html
    #
    # @option params [required, String] :stack_set_name
    #   The name of the stack set on which to perform the drift detection
    #   operation.
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   The user-specified preferences for how CloudFormation performs a stack
    #   set operation.
    #
    #   For more information about maximum concurrent accounts and failure
    #   tolerance, see [Stack set operation options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #
    # @option params [String] :operation_id
    #   *The ID of the stack set operation.*
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::DetectStackSetDriftOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectStackSetDriftOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_stack_set_drift({
    #     stack_set_name: "StackSetNameOrId", # required
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL", # accepts SEQUENTIAL, PARALLEL
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackSetDrift AWS API Documentation
    #
    # @overload detect_stack_set_drift(params = {})
    # @param [Hash] params ({})
    def detect_stack_set_drift(params = {}, options = {})
      req = build_request(:detect_stack_set_drift, params)
      req.send_request(options)
    end

    # Returns the estimated monthly cost of a template. The return value is
    # an Amazon Web Services Simple Monthly Calculator URL with a query
    # string that describes the resources required to run the template.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. (For more information, go to
    #   [Template Anatomy][1] in the CloudFormation User Guide.)
    #
    #   Conditional: You must pass `TemplateBody` or `TemplateURL`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template that's located in an Amazon S3 bucket or a Systems Manager
    #   document. For more information, go to [Template Anatomy][1] in the
    #   CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters.
    #
    # @return [Types::EstimateTemplateCostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EstimateTemplateCostOutput#url #url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.estimate_template_cost({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/EstimateTemplateCost AWS API Documentation
    #
    # @overload estimate_template_cost(params = {})
    # @param [Hash] params ({})
    def estimate_template_cost(params = {}, options = {})
      req = build_request(:estimate_template_cost, params)
      req.send_request(options)
    end

    # Updates a stack using the input information that was provided when the
    # specified change set was created. After the call successfully
    # completes, CloudFormation starts updating the stack. Use the
    # DescribeStacks action to view the status of the update.
    #
    # When you execute a change set, CloudFormation deletes all other change
    # sets associated with the stack because they aren't valid for the
    # updated stack.
    #
    # If a stack policy is associated with the stack, CloudFormation
    # enforces the policy during the update. You can't specify a temporary
    # stack policy that overrides the current policy.
    #
    # To create a change set for the entire stack hierarchy,
    # `IncludeNestedStacks` must have been set to `True`.
    #
    # @option params [required, String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you want
    #   use to update the specified stack.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   Amazon Resource Name (ARN) that's associated with the change set you
    #   want to execute.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `ExecuteChangeSet` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to execute a change set to update a stack with
    #   the same name. You might retry `ExecuteChangeSet` requests to ensure
    #   that CloudFormation successfully received them.
    #
    # @option params [Boolean] :disable_rollback
    #   Preserves the state of previously provisioned resources when an
    #   operation fails. This parameter can't be specified when the
    #   `OnStackFailure` parameter to the [CreateChangeSet][1] API operation
    #   was specified.
    #
    #   * `True` - if the stack creation fails, do nothing. This is equivalent
    #     to specifying `DO_NOTHING` for the `OnStackFailure` parameter to the
    #     [CreateChangeSet][1] API operation.
    #
    #   * `False` - if the stack creation fails, roll back the stack. This is
    #     equivalent to specifying `ROLLBACK` for the `OnStackFailure`
    #     parameter to the [CreateChangeSet][1] API operation.
    #
    #   Default: `True`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_change_set({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     client_request_token: "ClientRequestToken",
    #     disable_rollback: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ExecuteChangeSet AWS API Documentation
    #
    # @overload execute_change_set(params = {})
    # @param [Hash] params ({})
    def execute_change_set(params = {}, options = {})
      req = build_request(:execute_change_set, params)
      req.send_request(options)
    end

    # Returns the stack policy for a specified stack. If a stack doesn't
    # have a policy, a null value is returned.
    #
    # @option params [required, String] :stack_name
    #   The name or unique stack ID that's associated with the stack whose
    #   policy you want to get.
    #
    # @return [Types::GetStackPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStackPolicyOutput#stack_policy_body #stack_policy_body} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stack_policy({
    #     stack_name: "StackName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_policy_body #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetStackPolicy AWS API Documentation
    #
    # @overload get_stack_policy(params = {})
    # @param [Hash] params ({})
    def get_stack_policy(params = {}, options = {})
      req = build_request(:get_stack_policy, params)
      req.send_request(options)
    end

    # Returns the template body for a specified stack. You can get the
    # template for running or deleted stacks.
    #
    # For deleted stacks, `GetTemplate` returns the template for up to 90
    # days after the stack has been deleted.
    #
    # <note markdown="1"> If the template doesn't exist, a `ValidationError` is returned.
    #
    #  </note>
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that's associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of a change set for which
    #   CloudFormation returns the associated template. If you specify a name,
    #   you must also specify the `StackName`.
    #
    # @option params [String] :template_stage
    #   For templates that include transforms, the stage of the template that
    #   CloudFormation returns. To get the user-submitted template, specify
    #   `Original`. To get the template after CloudFormation has processed all
    #   transforms, specify `Processed`.
    #
    #   If the template doesn't include transforms, `Original` and
    #   `Processed` return the same template. By default, CloudFormation
    #   specifies `Processed`.
    #
    # @return [Types::GetTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateOutput#template_body #template_body} => String
    #   * {Types::GetTemplateOutput#stages_available #stages_available} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template({
    #     stack_name: "StackName",
    #     change_set_name: "ChangeSetNameOrId",
    #     template_stage: "Original", # accepts Original, Processed
    #   })
    #
    # @example Response structure
    #
    #   resp.template_body #=> String
    #   resp.stages_available #=> Array
    #   resp.stages_available[0] #=> String, one of "Original", "Processed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplate AWS API Documentation
    #
    # @overload get_template(params = {})
    # @param [Hash] params ({})
    def get_template(params = {}, options = {})
      req = build_request(:get_template, params)
      req.send_request(options)
    end

    # Returns information about a new or existing template. The
    # `GetTemplateSummary` action is useful for viewing parameter
    # information, such as default parameter values and parameter types,
    # before you create or update a stack or stack set.
    #
    # You can use the `GetTemplateSummary` action when you submit a
    # template, or you can get template information for a stack set, or a
    # running or deleted stack.
    #
    # For deleted stacks, `GetTemplateSummary` returns the template
    # information for up to 90 days after the stack has been deleted. If the
    # template doesn't exist, a `ValidationError` is returned.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information about
    #   templates, see [Template anatomy][1] in the CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that's located in an Amazon S3
    #   bucket or a Systems Manager document. For more information about
    #   templates, see [Template anatomy][1] in the CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :stack_name
    #   The name or the stack ID that's associated with the stack, which
    #   aren't always interchangeable. For running stacks, you can specify
    #   either the stack's name or its unique stack ID. For deleted stack,
    #   you must specify the unique stack ID.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    # @option params [String] :stack_set_name
    #   The name or unique ID of the stack set from which the stack was
    #   created.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::GetTemplateSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateSummaryOutput#parameters #parameters} => Array&lt;Types::ParameterDeclaration&gt;
    #   * {Types::GetTemplateSummaryOutput#description #description} => String
    #   * {Types::GetTemplateSummaryOutput#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::GetTemplateSummaryOutput#capabilities_reason #capabilities_reason} => String
    #   * {Types::GetTemplateSummaryOutput#resource_types #resource_types} => Array&lt;String&gt;
    #   * {Types::GetTemplateSummaryOutput#version #version} => String
    #   * {Types::GetTemplateSummaryOutput#metadata #metadata} => String
    #   * {Types::GetTemplateSummaryOutput#declared_transforms #declared_transforms} => Array&lt;String&gt;
    #   * {Types::GetTemplateSummaryOutput#resource_identifier_summaries #resource_identifier_summaries} => Array&lt;Types::ResourceIdentifierSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_summary({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     stack_name: "StackNameOrId",
    #     stack_set_name: "StackSetNameOrId",
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_key #=> String
    #   resp.parameters[0].default_value #=> String
    #   resp.parameters[0].parameter_type #=> String
    #   resp.parameters[0].no_echo #=> Boolean
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].parameter_constraints.allowed_values #=> Array
    #   resp.parameters[0].parameter_constraints.allowed_values[0] #=> String
    #   resp.description #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.capabilities_reason #=> String
    #   resp.resource_types #=> Array
    #   resp.resource_types[0] #=> String
    #   resp.version #=> String
    #   resp.metadata #=> String
    #   resp.declared_transforms #=> Array
    #   resp.declared_transforms[0] #=> String
    #   resp.resource_identifier_summaries #=> Array
    #   resp.resource_identifier_summaries[0].resource_type #=> String
    #   resp.resource_identifier_summaries[0].logical_resource_ids #=> Array
    #   resp.resource_identifier_summaries[0].logical_resource_ids[0] #=> String
    #   resp.resource_identifier_summaries[0].resource_identifiers #=> Array
    #   resp.resource_identifier_summaries[0].resource_identifiers[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateSummary AWS API Documentation
    #
    # @overload get_template_summary(params = {})
    # @param [Hash] params ({})
    def get_template_summary(params = {}, options = {})
      req = build_request(:get_template_summary, params)
      req.send_request(options)
    end

    # Import existing stacks into a new stack sets. Use the stack import
    # operation to import up to 10 stacks into a new stack set in the same
    # account as the source stack or in a different administrator account
    # and Region, by specifying the stack ID of the stack you intend to
    # import.
    #
    # @option params [required, String] :stack_set_name
    #   The name of the stack set. The name must be unique in the Region where
    #   you create your stack set.
    #
    # @option params [Array<String>] :stack_ids
    #   The IDs of the stacks you are importing into a stack set. You import
    #   up to 10 stacks per stack set at a time.
    #
    #   Specify either `StackIds` or `StackIdsUrl`.
    #
    # @option params [String] :stack_ids_url
    #   The Amazon S3 URL which contains list of stack ids to be inputted.
    #
    #   Specify either `StackIds` or `StackIdsUrl`.
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   The list of OU ID's to which the stacks being imported has to be
    #   mapped as deployment target.
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   The user-specified preferences for how CloudFormation performs a stack
    #   set operation.
    #
    #   For more information about maximum concurrent accounts and failure
    #   tolerance, see [Stack set operation options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #
    # @option params [String] :operation_id
    #   A unique, user defined, identifier for the stack set operation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :call_as
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * For service managed stack sets, specify `DELEGATED_ADMIN`.
    #
    # @return [Types::ImportStacksToStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportStacksToStackSetOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_stacks_to_stack_set({
    #     stack_set_name: "StackSetNameOrId", # required
    #     stack_ids: ["StackId"],
    #     stack_ids_url: "StackIdsUrl",
    #     organizational_unit_ids: ["OrganizationalUnitId"],
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL", # accepts SEQUENTIAL, PARALLEL
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ImportStacksToStackSet AWS API Documentation
    #
    # @overload import_stacks_to_stack_set(params = {})
    # @param [Hash] params ({})
    def import_stacks_to_stack_set(params = {}, options = {})
      req = build_request(:import_stacks_to_stack_set, params)
      req.send_request(options)
    end

    # Returns the ID and status of each active change set for a stack. For
    # example, CloudFormation lists change sets that are in the
    # `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.
    #
    # @option params [required, String] :stack_name
    #   The name or the Amazon Resource Name (ARN) of the stack for which you
    #   want to list change sets.
    #
    # @option params [String] :next_token
    #   A string (provided by the ListChangeSets response output) that
    #   identifies the next page of change sets that you want to retrieve.
    #
    # @return [Types::ListChangeSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChangeSetsOutput#summaries #summaries} => Array&lt;Types::ChangeSetSummary&gt;
    #   * {Types::ListChangeSetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_change_sets({
    #     stack_name: "StackNameOrId", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].stack_id #=> String
    #   resp.summaries[0].stack_name #=> String
    #   resp.summaries[0].change_set_id #=> String
    #   resp.summaries[0].change_set_name #=> String
    #   resp.summaries[0].execution_status #=> String, one of "UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"
    #   resp.summaries[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "FAILED"
    #   resp.summaries[0].status_reason #=> String
    #   resp.summaries[0].creation_time #=> Time
    #   resp.summaries[0].description #=> String
    #   resp.summaries[0].include_nested_stacks #=> Boolean
    #   resp.summaries[0].parent_change_set_id #=> String
    #   resp.summaries[0].root_change_set_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListChangeSets AWS API Documentation
    #
    # @overload list_change_sets(params = {})
    # @param [Hash] params ({})
    def list_change_sets(params = {}, options = {})
      req = build_request(:list_change_sets, params)
      req.send_request(options)
    end

    # Lists all exported output values in the account and Region in which
    # you call this action. Use this action to see the exported output
    # values that you can import into other stacks. To import values, use
    # the [ Fn::ImportValue][1] function.
    #
    # For more information, see [ CloudFormation export stack output
    # values][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html
    #
    # @option params [String] :next_token
    #   A string (provided by the ListExports response output) that identifies
    #   the next page of exported output values that you asked to retrieve.
    #
    # @return [Types::ListExportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExportsOutput#exports #exports} => Array&lt;Types::Export&gt;
    #   * {Types::ListExportsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exports({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.exports #=> Array
    #   resp.exports[0].exporting_stack_id #=> String
    #   resp.exports[0].name #=> String
    #   resp.exports[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListExports AWS API Documentation
    #
    # @overload list_exports(params = {})
    # @param [Hash] params ({})
    def list_exports(params = {}, options = {})
      req = build_request(:list_exports, params)
      req.send_request(options)
    end

    # Lists all stacks that are importing an exported output value. To
    # modify or remove an exported output value, first use this action to
    # see which stacks are using it. To see the exported output values in
    # your account, see ListExports.
    #
    # For more information about importing an exported output value, see the
    # [Fn::ImportValue][1] function.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
    #
    # @option params [required, String] :export_name
    #   The name of the exported output value. CloudFormation returns the
    #   stack names that are importing this value.
    #
    # @option params [String] :next_token
    #   A string (provided by the ListImports response output) that identifies
    #   the next page of stacks that are importing the specified exported
    #   output value.
    #
    # @return [Types::ListImportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportsOutput#imports #imports} => Array&lt;String&gt;
    #   * {Types::ListImportsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imports({
    #     export_name: "ExportName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.imports #=> Array
    #   resp.imports[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListImports AWS API Documentation
    #
    # @overload list_imports(params = {})
    # @param [Hash] params ({})
    def list_imports(params = {}, options = {})
      req = build_request(:list_imports, params)
      req.send_request(options)
    end

    # Returns summary information about stack instances that are associated
    # with the specified stack set. You can filter for stack instances that
    # are associated with a specific Amazon Web Services account name or
    # Region, or that have a specific status.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to list stack
    #   instances for.
    #
    # @option params [String] :next_token
    #   If the previous request didn't return all the remaining results, the
    #   response's `NextToken` parameter value is set to a token. To retrieve
    #   the next set of results, call `ListStackInstances` again and assign
    #   that token to the request object's `NextToken` parameter. If there
    #   are no remaining results, the previous response object's `NextToken`
    #   parameter is set to `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [Array<Types::StackInstanceFilter>] :filters
    #   The filter to apply to stack instances
    #
    # @option params [String] :stack_instance_account
    #   The name of the Amazon Web Services account that you want to list
    #   stack instances for.
    #
    # @option params [String] :stack_instance_region
    #   The name of the Region where you want to list stack instances.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::ListStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackInstancesOutput#summaries #summaries} => Array&lt;Types::StackInstanceSummary&gt;
    #   * {Types::ListStackInstancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_instances({
    #     stack_set_name: "StackSetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "DETAILED_STATUS", # accepts DETAILED_STATUS, LAST_OPERATION_ID
    #         values: "StackInstanceFilterValues",
    #       },
    #     ],
    #     stack_instance_account: "Account",
    #     stack_instance_region: "Region",
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].stack_set_id #=> String
    #   resp.summaries[0].region #=> String
    #   resp.summaries[0].account #=> String
    #   resp.summaries[0].stack_id #=> String
    #   resp.summaries[0].status #=> String, one of "CURRENT", "OUTDATED", "INOPERABLE"
    #   resp.summaries[0].status_reason #=> String
    #   resp.summaries[0].stack_instance_status.detailed_status #=> String, one of "PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED", "INOPERABLE", "SKIPPED_SUSPENDED_ACCOUNT"
    #   resp.summaries[0].organizational_unit_id #=> String
    #   resp.summaries[0].drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.summaries[0].last_drift_check_timestamp #=> Time
    #   resp.summaries[0].last_operation_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackInstances AWS API Documentation
    #
    # @overload list_stack_instances(params = {})
    # @param [Hash] params ({})
    def list_stack_instances(params = {}, options = {})
      req = build_request(:list_stack_instances, params)
      req.send_request(options)
    end

    # Returns descriptions of all resources of the specified stack.
    #
    # For deleted stacks, ListStackResources returns resource information
    # for up to 90 days after the stack has been deleted.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stack resources that you
    #   want to retrieve.
    #
    # @return [Types::ListStackResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackResourcesOutput#stack_resource_summaries #stack_resource_summaries} => Array&lt;Types::StackResourceSummary&gt;
    #   * {Types::ListStackResourcesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_resources({
    #     stack_name: "StackName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_summaries #=> Array
    #   resp.stack_resource_summaries[0].logical_resource_id #=> String
    #   resp.stack_resource_summaries[0].physical_resource_id #=> String
    #   resp.stack_resource_summaries[0].resource_type #=> String
    #   resp.stack_resource_summaries[0].last_updated_timestamp #=> Time
    #   resp.stack_resource_summaries[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"
    #   resp.stack_resource_summaries[0].resource_status_reason #=> String
    #   resp.stack_resource_summaries[0].drift_information.stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resource_summaries[0].drift_information.last_check_timestamp #=> Time
    #   resp.stack_resource_summaries[0].module_info.type_hierarchy #=> String
    #   resp.stack_resource_summaries[0].module_info.logical_id_hierarchy #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackResources AWS API Documentation
    #
    # @overload list_stack_resources(params = {})
    # @param [Hash] params ({})
    def list_stack_resources(params = {}, options = {})
      req = build_request(:list_stack_resources, params)
      req.send_request(options)
    end

    # Returns summary information about the results of a stack set
    # operation.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to get operation
    #   results for.
    #
    # @option params [required, String] :operation_id
    #   The ID of the stack set operation.
    #
    # @option params [String] :next_token
    #   If the previous request didn't return all the remaining results, the
    #   response object's `NextToken` parameter value is set to a token. To
    #   retrieve the next set of results, call `ListStackSetOperationResults`
    #   again and assign that token to the request object's `NextToken`
    #   parameter. If there are no remaining results, the previous response
    #   object's `NextToken` parameter is set to `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @option params [Array<Types::OperationResultFilter>] :filters
    #   The filter to apply to operation results.
    #
    # @return [Types::ListStackSetOperationResultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackSetOperationResultsOutput#summaries #summaries} => Array&lt;Types::StackSetOperationResultSummary&gt;
    #   * {Types::ListStackSetOperationResultsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_set_operation_results({
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #     filters: [
    #       {
    #         name: "OPERATION_RESULT_STATUS", # accepts OPERATION_RESULT_STATUS
    #         values: "OperationResultFilterValues",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].account #=> String
    #   resp.summaries[0].region #=> String
    #   resp.summaries[0].status #=> String, one of "PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"
    #   resp.summaries[0].status_reason #=> String
    #   resp.summaries[0].account_gate_result.status #=> String, one of "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.summaries[0].account_gate_result.status_reason #=> String
    #   resp.summaries[0].organizational_unit_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationResults AWS API Documentation
    #
    # @overload list_stack_set_operation_results(params = {})
    # @param [Hash] params ({})
    def list_stack_set_operation_results(params = {}, options = {})
      req = build_request(:list_stack_set_operation_results, params)
      req.send_request(options)
    end

    # Returns summary information about operations performed on a stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to get operation
    #   summaries for.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListStackSetOperations` again and assign that token to the request
    #   object's `NextToken` parameter. If there are no remaining results,
    #   the previous response object's `NextToken` parameter is set to
    #   `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::ListStackSetOperationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackSetOperationsOutput#summaries #summaries} => Array&lt;Types::StackSetOperationSummary&gt;
    #   * {Types::ListStackSetOperationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_set_operations({
    #     stack_set_name: "StackSetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].operation_id #=> String
    #   resp.summaries[0].action #=> String, one of "CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"
    #   resp.summaries[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"
    #   resp.summaries[0].creation_timestamp #=> Time
    #   resp.summaries[0].end_timestamp #=> Time
    #   resp.summaries[0].status_reason #=> String
    #   resp.summaries[0].status_details.failed_stack_instances_count #=> Integer
    #   resp.summaries[0].operation_preferences.region_concurrency_type #=> String, one of "SEQUENTIAL", "PARALLEL"
    #   resp.summaries[0].operation_preferences.region_order #=> Array
    #   resp.summaries[0].operation_preferences.region_order[0] #=> String
    #   resp.summaries[0].operation_preferences.failure_tolerance_count #=> Integer
    #   resp.summaries[0].operation_preferences.failure_tolerance_percentage #=> Integer
    #   resp.summaries[0].operation_preferences.max_concurrent_count #=> Integer
    #   resp.summaries[0].operation_preferences.max_concurrent_percentage #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperations AWS API Documentation
    #
    # @overload list_stack_set_operations(params = {})
    # @param [Hash] params ({})
    def list_stack_set_operations(params = {}, options = {})
      req = build_request(:list_stack_set_operations, params)
      req.send_request(options)
    end

    # Returns summary information about stack sets that are associated with
    # the user.
    #
    # * \[Self-managed permissions\] If you set the `CallAs` parameter to
    #   `SELF` while signed in to your Amazon Web Services account,
    #   `ListStackSets` returns all self-managed stack sets in your Amazon
    #   Web Services account.
    #
    # * \[Service-managed permissions\] If you set the `CallAs` parameter to
    #   `SELF` while signed in to the organization's management account,
    #   `ListStackSets` returns all stack sets in the management account.
    #
    # * \[Service-managed permissions\] If you set the `CallAs` parameter to
    #   `DELEGATED_ADMIN` while signed in to your member account,
    #   `ListStackSets` returns all stack sets with service-managed
    #   permissions in the management account.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call `ListStackSets`
    #   again and assign that token to the request object's `NextToken`
    #   parameter. If there are no remaining results, the previous response
    #   object's `NextToken` parameter is set to `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :status
    #   The status of the stack sets that you want to get summary information
    #   about.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the management account or as a delegated
    #   administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::ListStackSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackSetsOutput#summaries #summaries} => Array&lt;Types::StackSetSummary&gt;
    #   * {Types::ListStackSetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_sets({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACTIVE", # accepts ACTIVE, DELETED
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].stack_set_name #=> String
    #   resp.summaries[0].stack_set_id #=> String
    #   resp.summaries[0].description #=> String
    #   resp.summaries[0].status #=> String, one of "ACTIVE", "DELETED"
    #   resp.summaries[0].auto_deployment.enabled #=> Boolean
    #   resp.summaries[0].auto_deployment.retain_stacks_on_account_removal #=> Boolean
    #   resp.summaries[0].permission_model #=> String, one of "SERVICE_MANAGED", "SELF_MANAGED"
    #   resp.summaries[0].drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.summaries[0].last_drift_check_timestamp #=> Time
    #   resp.summaries[0].managed_execution.active #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSets AWS API Documentation
    #
    # @overload list_stack_sets(params = {})
    # @param [Hash] params ({})
    def list_stack_sets(params = {}, options = {})
      req = build_request(:list_stack_sets, params)
      req.send_request(options)
    end

    # Returns the summary information for stacks whose status matches the
    # specified StackStatusFilter. Summary information for stacks that have
    # been deleted is kept for 90 days after the stack is deleted. If no
    # StackStatusFilter is specified, summary information for all stacks is
    # returned (including existing stacks and stacks that have been
    # deleted).
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stacks that you want to
    #   retrieve.
    #
    # @option params [Array<String>] :stack_status_filter
    #   Stack status to use as a filter. Specify one or more stack status
    #   codes to list only stacks with the specified status codes. For a
    #   complete list of stack status codes, see the `StackStatus` parameter
    #   of the Stack data type.
    #
    # @return [Types::ListStacksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStacksOutput#stack_summaries #stack_summaries} => Array&lt;Types::StackSummary&gt;
    #   * {Types::ListStacksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stacks({
    #     next_token: "NextToken",
    #     stack_status_filter: ["CREATE_IN_PROGRESS"], # accepts CREATE_IN_PROGRESS, CREATE_FAILED, CREATE_COMPLETE, ROLLBACK_IN_PROGRESS, ROLLBACK_FAILED, ROLLBACK_COMPLETE, DELETE_IN_PROGRESS, DELETE_FAILED, DELETE_COMPLETE, UPDATE_IN_PROGRESS, UPDATE_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_COMPLETE, UPDATE_FAILED, UPDATE_ROLLBACK_IN_PROGRESS, UPDATE_ROLLBACK_FAILED, UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_ROLLBACK_COMPLETE, REVIEW_IN_PROGRESS, IMPORT_IN_PROGRESS, IMPORT_COMPLETE, IMPORT_ROLLBACK_IN_PROGRESS, IMPORT_ROLLBACK_FAILED, IMPORT_ROLLBACK_COMPLETE
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_summaries #=> Array
    #   resp.stack_summaries[0].stack_id #=> String
    #   resp.stack_summaries[0].stack_name #=> String
    #   resp.stack_summaries[0].template_description #=> String
    #   resp.stack_summaries[0].creation_time #=> Time
    #   resp.stack_summaries[0].last_updated_time #=> Time
    #   resp.stack_summaries[0].deletion_time #=> Time
    #   resp.stack_summaries[0].stack_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"
    #   resp.stack_summaries[0].stack_status_reason #=> String
    #   resp.stack_summaries[0].parent_id #=> String
    #   resp.stack_summaries[0].root_id #=> String
    #   resp.stack_summaries[0].drift_information.stack_drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.stack_summaries[0].drift_information.last_check_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStacks AWS API Documentation
    #
    # @overload list_stacks(params = {})
    # @param [Hash] params ({})
    def list_stacks(params = {}, options = {})
      req = build_request(:list_stacks, params)
      req.send_request(options)
    end

    # Returns a list of registration tokens for the specified extension(s).
    #
    # @option params [String] :type
    #   The kind of extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :registration_status_filter
    #   The current status of the extension registration request.
    #
    #   The default is `IN_PROGRESS`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call this action again
    #   and assign that token to the request object's `NextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @return [Types::ListTypeRegistrationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTypeRegistrationsOutput#registration_token_list #registration_token_list} => Array&lt;String&gt;
    #   * {Types::ListTypeRegistrationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_type_registrations({
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     type_name: "TypeName",
    #     type_arn: "TypeArn",
    #     registration_status_filter: "COMPLETE", # accepts COMPLETE, IN_PROGRESS, FAILED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_token_list #=> Array
    #   resp.registration_token_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypeRegistrations AWS API Documentation
    #
    # @overload list_type_registrations(params = {})
    # @param [Hash] params ({})
    def list_type_registrations(params = {}, options = {})
      req = build_request(:list_type_registrations, params)
      req.send_request(options)
    end

    # Returns summary information about the versions of an extension.
    #
    # @option params [String] :type
    #   The kind of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the extension for which you want version summary
    #   information.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the extension for which you want
    #   version summary information.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call this action again
    #   and assign that token to the request object's `NextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @option params [String] :deprecated_status
    #   The deprecation status of the extension versions that you want to get
    #   summary information about.
    #
    #   Valid values include:
    #
    #   * `LIVE`: The extension version is registered and can be used in
    #     CloudFormation operations, dependent on its provisioning behavior
    #     and visibility scope.
    #
    #   * `DEPRECATED`: The extension version has been deregistered and can no
    #     longer be used in CloudFormation operations.
    #
    #   The default is `LIVE`.
    #
    # @option params [String] :publisher_id
    #   The publisher ID of the extension publisher.
    #
    #   Extensions published by Amazon aren't assigned a publisher ID.
    #
    # @return [Types::ListTypeVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTypeVersionsOutput#type_version_summaries #type_version_summaries} => Array&lt;Types::TypeVersionSummary&gt;
    #   * {Types::ListTypeVersionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_type_versions({
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     type_name: "TypeName",
    #     arn: "TypeArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     deprecated_status: "LIVE", # accepts LIVE, DEPRECATED
    #     publisher_id: "PublisherId",
    #   })
    #
    # @example Response structure
    #
    #   resp.type_version_summaries #=> Array
    #   resp.type_version_summaries[0].type #=> String, one of "RESOURCE", "MODULE", "HOOK"
    #   resp.type_version_summaries[0].type_name #=> String
    #   resp.type_version_summaries[0].version_id #=> String
    #   resp.type_version_summaries[0].is_default_version #=> Boolean
    #   resp.type_version_summaries[0].arn #=> String
    #   resp.type_version_summaries[0].time_created #=> Time
    #   resp.type_version_summaries[0].description #=> String
    #   resp.type_version_summaries[0].public_version_number #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypeVersions AWS API Documentation
    #
    # @overload list_type_versions(params = {})
    # @param [Hash] params ({})
    def list_type_versions(params = {}, options = {})
      req = build_request(:list_type_versions, params)
      req.send_request(options)
    end

    # Returns summary information about extension that have been registered
    # with CloudFormation.
    #
    # @option params [String] :visibility
    #   The scope at which the extensions are visible and usable in
    #   CloudFormation operations.
    #
    #   Valid values include:
    #
    #   * `PRIVATE`: Extensions that are visible and usable within this
    #     account and Region. This includes:
    #
    #     * Private extensions you have registered in this account and Region.
    #
    #     * Public extensions that you have activated in this account and
    #       Region.
    #
    #   * `PUBLIC`: Extensions that are publicly visible and available to be
    #     activated within any Amazon Web Services account. This includes
    #     extensions from Amazon Web Services, in addition to third-party
    #     publishers.
    #
    #   The default is `PRIVATE`.
    #
    # @option params [String] :provisioning_type
    #   For resource types, the provisioning behavior of the resource type.
    #   CloudFormation determines the provisioning type during registration,
    #   based on the types of handlers in the schema handler package
    #   submitted.
    #
    #   Valid values include:
    #
    #   * `FULLY_MUTABLE`: The resource type includes an update handler to
    #     process updates to the type during stack update operations.
    #
    #   * `IMMUTABLE`: The resource type doesn't include an update handler,
    #     so the type can't be updated and must instead be replaced during
    #     stack update operations.
    #
    #   * `NON_PROVISIONABLE`: The resource type doesn't include create,
    #     read, and delete handlers, and therefore can't actually be
    #     provisioned.
    #
    #   The default is `FULLY_MUTABLE`.
    #
    # @option params [String] :deprecated_status
    #   The deprecation status of the extension that you want to get summary
    #   information about.
    #
    #   Valid values include:
    #
    #   * `LIVE`: The extension is registered for use in CloudFormation
    #     operations.
    #
    #   * `DEPRECATED`: The extension has been deregistered and can no longer
    #     be used in CloudFormation operations.
    #
    # @option params [String] :type
    #   The type of extension.
    #
    # @option params [Types::TypeFilters] :filters
    #   Filter criteria to use in determining which extensions to return.
    #
    #   Filters must be compatible with `Visibility` to return valid results.
    #   For example, specifying `AWS_TYPES` for `Category` and `PRIVATE` for
    #   `Visibility` returns an empty list of types, but specifying `PUBLIC`
    #   for `Visibility` returns the desired list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call this action again
    #   and assign that token to the request object's `NextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @return [Types::ListTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTypesOutput#type_summaries #type_summaries} => Array&lt;Types::TypeSummary&gt;
    #   * {Types::ListTypesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_types({
    #     visibility: "PUBLIC", # accepts PUBLIC, PRIVATE
    #     provisioning_type: "NON_PROVISIONABLE", # accepts NON_PROVISIONABLE, IMMUTABLE, FULLY_MUTABLE
    #     deprecated_status: "LIVE", # accepts LIVE, DEPRECATED
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     filters: {
    #       category: "REGISTERED", # accepts REGISTERED, ACTIVATED, THIRD_PARTY, AWS_TYPES
    #       publisher_id: "PublisherId",
    #       type_name_prefix: "TypeNamePrefix",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.type_summaries #=> Array
    #   resp.type_summaries[0].type #=> String, one of "RESOURCE", "MODULE", "HOOK"
    #   resp.type_summaries[0].type_name #=> String
    #   resp.type_summaries[0].default_version_id #=> String
    #   resp.type_summaries[0].type_arn #=> String
    #   resp.type_summaries[0].last_updated #=> Time
    #   resp.type_summaries[0].description #=> String
    #   resp.type_summaries[0].publisher_id #=> String
    #   resp.type_summaries[0].original_type_name #=> String
    #   resp.type_summaries[0].public_version_number #=> String
    #   resp.type_summaries[0].latest_public_version #=> String
    #   resp.type_summaries[0].publisher_identity #=> String, one of "AWS_Marketplace", "GitHub", "Bitbucket"
    #   resp.type_summaries[0].publisher_name #=> String
    #   resp.type_summaries[0].is_activated #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypes AWS API Documentation
    #
    # @overload list_types(params = {})
    # @param [Hash] params ({})
    def list_types(params = {}, options = {})
      req = build_request(:list_types, params)
      req.send_request(options)
    end

    # Publishes the specified extension to the CloudFormation registry as a
    # public extension in this Region. Public extensions are available for
    # use by all CloudFormation users. For more information about publishing
    # extensions, see [Publishing extensions to make them available for
    # public use][1] in the *CloudFormation CLI User Guide*.
    #
    # To publish an extension, you must be registered as a publisher with
    # CloudFormation. For more information, see [RegisterPublisher][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html
    #
    # @option params [String] :type
    #   The type of the extension.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #
    # @option params [String] :type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #
    # @option params [String] :public_version_number
    #   The version number to assign to this version of the extension.
    #
    #   Use the following format, and adhere to semantic versioning when
    #   assigning a version number to your extension:
    #
    #   `MAJOR.MINOR.PATCH`
    #
    #   For more information, see [Semantic Versioning 2.0.0][1].
    #
    #   If you don't specify a version number, CloudFormation increments the
    #   version number by one minor version release.
    #
    #   You cannot specify a version number the first time you publish a type.
    #   CloudFormation automatically sets the first version number to be
    #   `1.0.0`.
    #
    #
    #
    #   [1]: https://semver.org/
    #
    # @return [Types::PublishTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishTypeOutput#public_type_arn #public_type_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_type({
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     arn: "PrivateTypeArn",
    #     type_name: "TypeName",
    #     public_version_number: "PublicVersionNumber",
    #   })
    #
    # @example Response structure
    #
    #   resp.public_type_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/PublishType AWS API Documentation
    #
    # @overload publish_type(params = {})
    # @param [Hash] params ({})
    def publish_type(params = {}, options = {})
      req = build_request(:publish_type, params)
      req.send_request(options)
    end

    # Reports progress of a resource handler to CloudFormation.
    #
    # Reserved for use by the [CloudFormation CLI][1]. Don't use this API
    # in your code.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [required, String] :bearer_token
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [required, String] :operation_status
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :current_operation_status
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :status_message
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :error_code
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :resource_model
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :client_request_token
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.record_handler_progress({
    #     bearer_token: "ClientToken", # required
    #     operation_status: "PENDING", # required, accepts PENDING, IN_PROGRESS, SUCCESS, FAILED
    #     current_operation_status: "PENDING", # accepts PENDING, IN_PROGRESS, SUCCESS, FAILED
    #     status_message: "StatusMessage",
    #     error_code: "NotUpdatable", # accepts NotUpdatable, InvalidRequest, AccessDenied, InvalidCredentials, AlreadyExists, NotFound, ResourceConflict, Throttling, ServiceLimitExceeded, NotStabilized, GeneralServiceException, ServiceInternalError, NetworkFailure, InternalFailure, InvalidTypeConfiguration, HandlerInternalFailure, NonCompliant, Unknown, UnsupportedTarget
    #     resource_model: "ResourceModel",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RecordHandlerProgress AWS API Documentation
    #
    # @overload record_handler_progress(params = {})
    # @param [Hash] params ({})
    def record_handler_progress(params = {}, options = {})
      req = build_request(:record_handler_progress, params)
      req.send_request(options)
    end

    # Registers your account as a publisher of public extensions in the
    # CloudFormation registry. Public extensions are available for use by
    # all CloudFormation users. This publisher ID applies to your account in
    # all Amazon Web Services Regions.
    #
    # For information about requirements for registering as a public
    # extension publisher, see [Registering your account to publish
    # CloudFormation extensions][1] in the *CloudFormation CLI User Guide*.
    #
    #
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs
    #
    # @option params [Boolean] :accept_terms_and_conditions
    #   Whether you accept the [Terms and Conditions][1] for publishing
    #   extensions in the CloudFormation registry. You must accept the terms
    #   and conditions in order to register to publish public extensions to
    #   the CloudFormation registry.
    #
    #   The default is `false`.
    #
    #
    #
    #   [1]: https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf
    #
    # @option params [String] :connection_arn
    #   If you are using a Bitbucket or GitHub account for identity
    #   verification, the Amazon Resource Name (ARN) for your connection to
    #   that account.
    #
    #   For more information, see [Registering your account to publish
    #   CloudFormation extensions][1] in the *CloudFormation CLI User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs
    #
    # @return [Types::RegisterPublisherOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterPublisherOutput#publisher_id #publisher_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_publisher({
    #     accept_terms_and_conditions: false,
    #     connection_arn: "ConnectionArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.publisher_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RegisterPublisher AWS API Documentation
    #
    # @overload register_publisher(params = {})
    # @param [Hash] params ({})
    def register_publisher(params = {}, options = {})
      req = build_request(:register_publisher, params)
      req.send_request(options)
    end

    # Registers an extension with the CloudFormation service. Registering an
    # extension makes it available for use in CloudFormation templates in
    # your Amazon Web Services account, and includes:
    #
    # * Validating the extension schema.
    #
    # * Determining which handlers, if any, have been specified for the
    #   extension.
    #
    # * Making the extension available for use in your account.
    #
    # For more information about how to develop extensions and ready them
    # for registration, see [Creating Resource Providers][1] in the
    # *CloudFormation CLI User Guide*.
    #
    # You can have a maximum of 50 resource extension versions registered at
    # a time. This maximum is per account and per Region. Use
    # [DeregisterType][2] to deregister specific extension versions if
    # necessary.
    #
    # Once you have initiated a registration request using RegisterType, you
    # can use DescribeTypeRegistration to monitor the progress of the
    # registration request.
    #
    # Once you have registered a private extension in your account and
    # Region, use [SetTypeConfiguration][3] to specify configuration
    # properties for the extension. For more information, see [Configuring
    # extensions at the account level][4] in the *CloudFormation User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeregisterType.html
    # [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html
    # [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration
    #
    # @option params [String] :type
    #   The kind of extension.
    #
    # @option params [required, String] :type_name
    #   The name of the extension being registered.
    #
    #   We suggest that extension names adhere to the following patterns:
    #
    #   * For resource types, *company\_or\_organization*::*service*::*type*.
    #
    #   * For modules, *company\_or\_organization*::*service*::*type*::MODULE.
    #
    #   * For hooks, *MyCompany*::*Testing*::*MyTestHook*.
    #
    #   <note markdown="1"> The following organization namespaces are reserved and can't be used
    #   in your extension names:
    #
    #    * `Alexa`
    #
    #   * `AMZN`
    #
    #   * `Amazon`
    #
    #   * `AWS`
    #
    #   * `Custom`
    #
    #   * `Dev`
    #
    #    </note>
    #
    # @option params [required, String] :schema_handler_package
    #   A URL to the S3 bucket containing the extension project package that
    #   contains the necessary files for the extension you want to register.
    #
    #   For information about generating a schema handler package for the
    #   extension you want to register, see [submit][1] in the *CloudFormation
    #   CLI User Guide*.
    #
    #   <note markdown="1"> The user registering the extension must be able to access the package
    #   in the S3 bucket. That's, the user needs to have [GetObject][2]
    #   permissions for the schema handler package. For more information, see
    #   [Actions, Resources, and Condition Keys for Amazon S3][3] in the
    #   *Identity and Access Management User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html
    #   [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html
    #
    # @option params [Types::LoggingConfig] :logging_config
    #   Specifies logging configuration information for an extension.
    #
    # @option params [String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role for CloudFormation to
    #   assume when invoking the extension.
    #
    #   For CloudFormation to assume the specified execution role, the role
    #   must contain a trust relationship with the CloudFormation service
    #   principle (`resources.cloudformation.amazonaws.com`). For more
    #   information about adding trust relationships, see [Modifying a role
    #   trust policy][1] in the *Identity and Access Management User Guide*.
    #
    #   If your extension calls Amazon Web Services APIs in any of its
    #   handlers, you must create an <i> <a
    #   href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM
    #   execution role</a> </i> that includes the necessary permissions to
    #   call those Amazon Web Services APIs, and provision that execution role
    #   in your account. When CloudFormation needs to invoke the resource type
    #   handler, CloudFormation assumes this execution role to create a
    #   temporary session token, which it then passes to the resource type
    #   handler, thereby supplying your resource type with the appropriate
    #   credentials.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-console.html#roles-managingrole_edit-trust-policy
    #
    # @option params [String] :client_request_token
    #   A unique identifier that acts as an idempotency key for this
    #   registration request. Specifying a client request token prevents
    #   CloudFormation from generating more than one version of an extension
    #   from the same registration request, even if the request is submitted
    #   multiple times.
    #
    # @return [Types::RegisterTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTypeOutput#registration_token #registration_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_type({
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     type_name: "TypeName", # required
    #     schema_handler_package: "S3Url", # required
    #     logging_config: {
    #       log_role_arn: "RoleArn", # required
    #       log_group_name: "LogGroupName", # required
    #     },
    #     execution_role_arn: "RoleArn",
    #     client_request_token: "RequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RegisterType AWS API Documentation
    #
    # @overload register_type(params = {})
    # @param [Hash] params ({})
    def register_type(params = {}, options = {})
      req = build_request(:register_type, params)
      req.send_request(options)
    end

    # When specifying `RollbackStack`, you preserve the state of previously
    # provisioned resources when an operation fails. You can check the
    # status of the stack through the DescribeStacks operation.
    #
    # Rolls back the specified stack to the last known stable state from
    # `CREATE_FAILED` or `UPDATE_FAILED` stack statuses.
    #
    # This operation will delete a stack if it doesn't contain a last known
    # stable state. A last known stable state includes any status in a
    # `*_COMPLETE`. This includes the following stack statuses.
    #
    # * `CREATE_COMPLETE`
    #
    # * `UPDATE_COMPLETE`
    #
    # * `UPDATE_ROLLBACK_COMPLETE`
    #
    # * `IMPORT_COMPLETE`
    #
    # * `IMPORT_ROLLBACK_COMPLETE`
    #
    # @option params [required, String] :stack_name
    #   The name that's associated with the stack.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an Identity and Access Management
    #   role that CloudFormation assumes to rollback the stack.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `RollbackStack` request.
    #
    # @return [Types::RollbackStackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RollbackStackOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rollback_stack({
    #     stack_name: "StackNameOrId", # required
    #     role_arn: "RoleARN",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackStack AWS API Documentation
    #
    # @overload rollback_stack(params = {})
    # @param [Hash] params ({})
    def rollback_stack(params = {}, options = {})
      req = build_request(:rollback_stack, params)
      req.send_request(options)
    end

    # Sets a stack policy for a specified stack.
    #
    # @option params [required, String] :stack_name
    #   The name or unique stack ID that you want to associate a policy with.
    #
    # @option params [String] :stack_policy_body
    #   Structure containing the stack policy body. For more information, go
    #   to [ Prevent updates to stack resources][1] in the CloudFormation User
    #   Guide. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #
    # @option params [String] :stack_policy_url
    #   Location of a file containing the stack policy. The URL must point to
    #   a policy (maximum size: 16 KB) located in an Amazon S3 bucket in the
    #   same Amazon Web Services Region as the stack. You can specify either
    #   the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_stack_policy({
    #     stack_name: "StackName", # required
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetStackPolicy AWS API Documentation
    #
    # @overload set_stack_policy(params = {})
    # @param [Hash] params ({})
    def set_stack_policy(params = {}, options = {})
      req = build_request(:set_stack_policy, params)
      req.send_request(options)
    end

    # Specifies the configuration data for a registered CloudFormation
    # extension, in the given account and Region.
    #
    # To view the current configuration data for an extension, refer to the
    # `ConfigurationSchema` element of [DescribeType][1]. For more
    # information, see [Configuring extensions at the account level][2] in
    # the *CloudFormation User Guide*.
    #
    # It's strongly recommended that you use dynamic references to restrict
    # sensitive configuration definitions, such as third-party credentials.
    # For more details on dynamic references, see [Using dynamic references
    # to specify template values][3] in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration
    # [3]: https://docs.aws.amazon.com/
    #
    # @option params [String] :type_arn
    #   The Amazon Resource Name (ARN) for the extension, in this account and
    #   Region.
    #
    #   For public extensions, this will be the ARN assigned when you
    #   [activate the type][1] in this account and Region. For private
    #   extensions, this will be the ARN assigned when you [register the
    #   type][2] in this account and Region.
    #
    #   Do not include the extension versions suffix at the end of the ARN.
    #   You can set the configuration for an extension, but not for a specific
    #   extension version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #
    # @option params [required, String] :configuration
    #   The configuration data for the extension, in this account and Region.
    #
    #   The configuration data must be formatted as JSON, and validate against
    #   the schema returned in the `ConfigurationSchema` response element of
    #   [DescribeType][1]. For more information, see [Defining account-level
    #   configuration data for an extension][2] in the *CloudFormation CLI
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html
    #   [2]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-model.html#resource-type-howto-configuration
    #
    # @option params [String] :configuration_alias
    #   An alias by which to refer to this extension configuration data.
    #
    #   Conditional: Specifying a configuration alias is required when setting
    #   a configuration for a resource type extension.
    #
    # @option params [String] :type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify `ConfigurationArn`, or `Type` and
    #   `TypeName`.
    #
    # @option params [String] :type
    #   The type of extension.
    #
    #   Conditional: You must specify `ConfigurationArn`, or `Type` and
    #   `TypeName`.
    #
    # @return [Types::SetTypeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetTypeConfigurationOutput#configuration_arn #configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_type_configuration({
    #     type_arn: "TypeArn",
    #     configuration: "TypeConfiguration", # required
    #     configuration_alias: "TypeConfigurationAlias",
    #     type_name: "TypeName",
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetTypeConfiguration AWS API Documentation
    #
    # @overload set_type_configuration(params = {})
    # @param [Hash] params ({})
    def set_type_configuration(params = {}, options = {})
      req = build_request(:set_type_configuration, params)
      req.send_request(options)
    end

    # Specify the default version of an extension. The default version of an
    # extension will be used in CloudFormation operations.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the extension for which you want
    #   version summary information.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type
    #   The kind of extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :version_id
    #   The ID of a specific version of the extension. The version ID is the
    #   value at the end of the Amazon Resource Name (ARN) assigned to the
    #   extension version when it is registered.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_type_default_version({
    #     arn: "PrivateTypeArn",
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     type_name: "TypeName",
    #     version_id: "TypeVersionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetTypeDefaultVersion AWS API Documentation
    #
    # @overload set_type_default_version(params = {})
    # @param [Hash] params ({})
    def set_type_default_version(params = {}, options = {})
      req = build_request(:set_type_default_version, params)
      req.send_request(options)
    end

    # Sends a signal to the specified resource with a success or failure
    # status. You can use the `SignalResource` operation in conjunction with
    # a creation policy or update policy. CloudFormation doesn't proceed
    # with a stack creation or update until resources receive the required
    # number of signals or the timeout period is exceeded. The
    # `SignalResource` operation is useful in cases where you want to send
    # signals from anywhere other than an Amazon EC2 instance.
    #
    # @option params [required, String] :stack_name
    #   The stack name or unique stack ID that includes the resource that you
    #   want to signal.
    #
    # @option params [required, String] :logical_resource_id
    #   The logical ID of the resource that you want to signal. The logical ID
    #   is the name of the resource that given in the template.
    #
    # @option params [required, String] :unique_id
    #   A unique ID of the signal. When you signal Amazon EC2 instances or
    #   Auto Scaling groups, specify the instance ID that you are signaling as
    #   the unique ID. If you send multiple signals to a single resource (such
    #   as signaling a wait condition), each signal requires a different
    #   unique ID.
    #
    # @option params [required, String] :status
    #   The status of the signal, which is either success or failure. A
    #   failure signal causes CloudFormation to immediately fail the stack
    #   creation or update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.signal_resource({
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #     unique_id: "ResourceSignalUniqueId", # required
    #     status: "SUCCESS", # required, accepts SUCCESS, FAILURE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SignalResource AWS API Documentation
    #
    # @overload signal_resource(params = {})
    # @param [Hash] params ({})
    def signal_resource(params = {}, options = {})
      req = build_request(:signal_resource, params)
      req.send_request(options)
    end

    # Stops an in-progress operation on a stack set and its associated stack
    # instances. StackSets will cancel all the unstarted stack instance
    # deployments and wait for those are in-progress to complete.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to stop the
    #   operation for.
    #
    # @option params [required, String] :operation_id
    #   The ID of the stack operation.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stack_set_operation({
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StopStackSetOperation AWS API Documentation
    #
    # @overload stop_stack_set_operation(params = {})
    # @param [Hash] params ({})
    def stop_stack_set_operation(params = {}, options = {})
      req = build_request(:stop_stack_set_operation, params)
      req.send_request(options)
    end

    # Tests a registered extension to make sure it meets all necessary
    # requirements for being published in the CloudFormation registry.
    #
    # * For resource types, this includes passing all contracts tests
    #   defined for the type.
    #
    # * For modules, this includes determining if the module's model meets
    #   all necessary requirements.
    #
    # For more information, see [Testing your public extension prior to
    # publishing][1] in the *CloudFormation CLI User Guide*.
    #
    # If you don't specify a version, CloudFormation uses the default
    # version of the extension in your account and Region for testing.
    #
    # To perform testing, CloudFormation assumes the execution role
    # specified when the type was registered. For more information, see
    # [RegisterType][2].
    #
    # Once you've initiated testing on an extension using `TestType`, you
    # can pass the returned `TypeVersionArn` into [DescribeType][3] to
    # monitor the current test status and test status description for the
    # extension.
    #
    # An extension must have a test status of `PASSED` before it can be
    # published. For more information, see [Publishing extensions to make
    # them available for public use][4] in the *CloudFormation CLI User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    # [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html
    # [4]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #
    # @option params [String] :type
    #   The type of the extension to test.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #
    # @option params [String] :type_name
    #   The name of the extension to test.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #
    # @option params [String] :version_id
    #   The version of the extension to test.
    #
    #   You can specify the version id with either `Arn`, or with `TypeName`
    #   and `Type`.
    #
    #   If you don't specify a version, CloudFormation uses the default
    #   version of the extension in this account and Region for testing.
    #
    # @option params [String] :log_delivery_bucket
    #   The S3 bucket to which CloudFormation delivers the contract test
    #   execution logs.
    #
    #   CloudFormation delivers the logs by the time contract testing has
    #   completed and the extension has been assigned a test type status of
    #   `PASSED` or `FAILED`.
    #
    #   The user calling `TestType` must be able to access items in the
    #   specified S3 bucket. Specifically, the user needs the following
    #   permissions:
    #
    #   * `GetObject`
    #
    #   * `PutObject`
    #
    #   For more information, see [Actions, Resources, and Condition Keys for
    #   Amazon S3][1] in the *Amazon Web Services Identity and Access
    #   Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html
    #
    # @return [Types::TestTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestTypeOutput#type_version_arn #type_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_type({
    #     arn: "TypeArn",
    #     type: "RESOURCE", # accepts RESOURCE, MODULE, HOOK
    #     type_name: "TypeName",
    #     version_id: "TypeVersionId",
    #     log_delivery_bucket: "S3Bucket",
    #   })
    #
    # @example Response structure
    #
    #   resp.type_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TestType AWS API Documentation
    #
    # @overload test_type(params = {})
    # @param [Hash] params ({})
    def test_type(params = {}, options = {})
      req = build_request(:test_type, params)
      req.send_request(options)
    end

    # Updates a stack as specified in the template. After the call completes
    # successfully, the stack update starts. You can check the status of the
    # stack through the DescribeStacks action.
    #
    # To get a copy of the template for an existing stack, you can use the
    # GetTemplate action.
    #
    # For more information about creating an update template, updating a
    # stack, and monitoring the progress of the update, see [Updating a
    # Stack][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html
    #
    # @option params [required, String] :stack_name
    #   The name or unique stack ID of the stack to update.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. (For more information, go to
    #   [Template Anatomy][1] in the CloudFormation User Guide.)
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template that's located in an Amazon S3 bucket or a Systems Manager
    #   document. For more information, go to [Template Anatomy][1] in the
    #   CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Boolean] :use_previous_template
    #   Reuse the existing template that is associated with the stack that you
    #   are updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    # @option params [String] :stack_policy_during_update_body
    #   Structure containing the temporary overriding stack policy body. You
    #   can specify either the `StackPolicyDuringUpdateBody` or the
    #   `StackPolicyDuringUpdateURL` parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you don't specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    #
    # @option params [String] :stack_policy_during_update_url
    #   Location of a file containing the temporary overriding stack policy.
    #   The URL must point to a policy (max size: 16KB) located in an S3
    #   bucket in the same Region as the stack. You can specify either the
    #   `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL`
    #   parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you don't specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation to
    #   update the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account; for example, by
    #     creating new Identity and Access Management (IAM) users. For those
    #     stacks, you must explicitly acknowledge this by specifying one of
    #     these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, CloudFormation
    #       returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we suggest that you
    #     review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM Resources in
    #     CloudFormation Templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set from
    #     the processed template, so that they can review the changes
    #     resulting from the macros before actually updating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     update a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][9] and
    #     [AWS::Serverless][10] transforms, which are macros hosted by
    #     CloudFormation.
    #
    #     If you want to update a stack from a stack template that contains
    #     macros *and* nested stacks, you must update the stack directly from
    #     the template using this capability.
    #
    #     You should only update stacks directly from a stack template that
    #     contains macros if you know what processing the macro performs.
    #
    #      Each macro relies on an underlying Lambda service function for
    #     processing stack templates. Be aware that the Lambda function owner
    #     can update the function operation without CloudFormation being
    #     notified.
    #
    #     For more information, see [Using CloudFormation Macros to Perform
    #     Custom Processing on Templates][11].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #
    # @option params [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this update stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource that you're
    #   updating, the stack update fails. By default, CloudFormation grants
    #   permissions to all resource types. Identity and Access Management
    #   (IAM) uses this parameter for CloudFormation-specific condition keys
    #   in IAM policies. For more information, see [Controlling Access with
    #   Identity and Access Management][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an Identity and Access Management
    #   (IAM) role that CloudFormation assumes to update the stack.
    #   CloudFormation uses the role's credentials to make calls on your
    #   behalf. CloudFormation always uses this role for all future operations
    #   on the stack. Provided that users have permission to operate on the
    #   stack, CloudFormation uses this role even if the users don't have
    #   permission to pass it. Ensure that the role grants least privilege.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #
    # @option params [String] :stack_policy_body
    #   Structure containing a new stack policy body. You can specify either
    #   the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you don't
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    #
    # @option params [String] :stack_policy_url
    #   Location of a file containing the updated stack policy. The URL must
    #   point to a policy (max size: 16KB) located in an S3 bucket in the same
    #   Region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you don't
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    #
    # @option params [Array<String>] :notification_arns
    #   Amazon Simple Notification Service topic Amazon Resource Names (ARNs)
    #   that CloudFormation associates with the stack. Specify an empty list
    #   to remove all notification topics.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. CloudFormation also
    #   propagates these tags to supported resources in the stack. You can
    #   specify a maximum number of 50 tags.
    #
    #   If you don't specify this parameter, CloudFormation doesn't modify
    #   the stack's tags. If you specify an empty value, CloudFormation
    #   removes all associated tags.
    #
    # @option params [Boolean] :disable_rollback
    #   Preserve the state of previously provisioned resources when an
    #   operation fails.
    #
    #   Default: `False`
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `UpdateStack` request. Specify this token
    #   if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to update a stack with the same name. You might
    #   retry `UpdateStack` requests to ensure that CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #
    # @return [Types::UpdateStackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack({
    #     stack_name: "StackName", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     stack_policy_during_update_body: "StackPolicyDuringUpdateBody",
    #     stack_policy_during_update_url: "StackPolicyDuringUpdateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     notification_arns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     disable_rollback: false,
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStack AWS API Documentation
    #
    # @overload update_stack(params = {})
    # @param [Hash] params ({})
    def update_stack(params = {}, options = {})
      req = build_request(:update_stack, params)
      req.send_request(options)
    end

    # Updates the parameter values for stack instances for the specified
    # accounts, within the specified Amazon Web Services Regions. A stack
    # instance refers to a stack in a specific account and Region.
    #
    # You can only update stack instances in Amazon Web Services Regions and
    # accounts where they already exist; to create additional stack
    # instances, use [CreateStackInstances][1].
    #
    # During stack set updates, any parameters overridden for a stack
    # instance aren't updated, but retain their overridden value.
    #
    # You can only update the parameter *values* that are specified in the
    # stack set; to add or delete a parameter itself, use
    # [UpdateStackSet][2] to update the stack set template. If you add a
    # parameter to a template, before you can override the parameter value
    # specified in the stack set you must first use [UpdateStackSet][2] to
    # update all stack instances with the updated template and parameter
    # value specified in the stack set. Once a stack instance has been
    # updated with the new parameter, you can then override the parameter
    # value using `UpdateStackInstances`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set associated with the stack
    #   instances.
    #
    # @option params [Array<String>] :accounts
    #   \[Self-managed permissions\] The names of one or more Amazon Web
    #   Services accounts for which you want to update parameter values for
    #   stack instances. The overridden parameter values will be applied to
    #   all stack instances in the specified accounts and Amazon Web Services
    #   Regions.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   \[Service-managed permissions\] The Organizations accounts for which
    #   you want to update parameter values for stack instances. If your
    #   update targets OUs, the overridden parameter values only apply to the
    #   accounts that are currently in the target OUs and their child OUs.
    #   Accounts added to the target OUs and their child OUs in the future
    #   won't use the overridden values.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [required, Array<String>] :regions
    #   The names of one or more Amazon Web Services Regions in which you want
    #   to update parameter values for stack instances. The overridden
    #   parameter values will be applied to all stack instances in the
    #   specified accounts and Amazon Web Services Regions.
    #
    # @option params [Array<Types::Parameter>] :parameter_overrides
    #   A list of input parameters whose values you want to update for the
    #   specified stack instances.
    #
    #   Any overridden parameter values will be applied to all stack instances
    #   in the specified accounts and Amazon Web Services Regions. When
    #   specifying parameters and their values, be aware of how CloudFormation
    #   sets parameter values during stack instance update operations:
    #
    #   * To override the current value for a parameter, include the parameter
    #     and specify its value.
    #
    #   * To leave an overridden parameter set to its present value, include
    #     the parameter and specify `UsePreviousValue` as `true`. (You can't
    #     specify both a value and set `UsePreviousValue` to `true`.)
    #
    #   * To set an overridden parameter back to the value specified in the
    #     stack set, specify a parameter list but don't include the parameter
    #     in the list.
    #
    #   * To leave all parameters set to their present values, don't specify
    #     this property at all.
    #
    #   During stack set updates, any parameter values overridden for a stack
    #   instance aren't updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in the
    #   stack set; to add or delete a parameter itself, use `UpdateStackSet`
    #   to update the stack set template. If you add a parameter to a
    #   template, before you can override the parameter value specified in the
    #   stack set you must first use [UpdateStackSet][1] to update all stack
    #   instances with the updated template and parameter value specified in
    #   the stack set. Once a stack instance has been updated with the new
    #   parameter, you can then override the parameter value using
    #   `UpdateStackInstances`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how CloudFormation performs this stack set operation.
    #
    # @option params [String] :operation_id
    #   The unique identifier for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that CloudFormation performs the stack set operation only once, even
    #   if you retry the request multiple times. You might retry stack set
    #   operation requests to ensure that CloudFormation successfully received
    #   them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @return [Types::UpdateStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackInstancesOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack_instances({
    #     stack_set_name: "StackSetNameOrId", # required
    #     accounts: ["Account"],
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       accounts_url: "AccountsUrl",
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       account_filter_type: "NONE", # accepts NONE, INTERSECTION, DIFFERENCE, UNION
    #     },
    #     regions: ["Region"], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL", # accepts SEQUENTIAL, PARALLEL
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackInstances AWS API Documentation
    #
    # @overload update_stack_instances(params = {})
    # @param [Hash] params ({})
    def update_stack_instances(params = {}, options = {})
      req = build_request(:update_stack_instances, params)
      req.send_request(options)
    end

    # Updates the stack set, and associated stack instances in the specified
    # accounts and Amazon Web Services Regions.
    #
    # Even if the stack set operation created by updating the stack set
    # fails (completely or partially, below or above a specified failure
    # tolerance), the stack set is updated with your changes. Subsequent
    # CreateStackInstances calls on the specified stack set use the updated
    # stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to update.
    #
    # @option params [String] :description
    #   A brief description of updates that you are making.
    #
    # @option params [String] :template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes. For more information,
    #   see [Template Anatomy][1] in the CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   The location of the file that contains the template body. The URL must
    #   point to a template (maximum size: 460,800 bytes) that is located in
    #   an Amazon S3 bucket or a Systems Manager document. For more
    #   information, see [Template Anatomy][1] in the CloudFormation User
    #   Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Boolean] :use_previous_template
    #   Use the existing template that's associated with the stack set that
    #   you're updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of input parameters for the stack set template.
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation to
    #   update the stack set and its associated stack instances.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account; for example, by
    #     creating new Identity and Access Management (IAM) users. For those
    #     stacks sets, you must explicitly acknowledge this by specifying one
    #     of these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, CloudFormation
    #       returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [ AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [ AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM Resources in
    #     CloudFormation Templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some templates reference macros. If your stack set template
    #     references one or more macros, you must update the stack set
    #     directly from the processed template, without first reviewing the
    #     resulting changes in a change set. To update the stack set directly,
    #     you must acknowledge this capability. For more information, see
    #     [Using CloudFormation Macros to Perform Custom Processing on
    #     Templates][9].
    #
    #     Stack sets with service-managed permissions do not currently support
    #     the use of macros in templates. (This includes the
    #     [AWS::Include][10] and [AWS::Serverless][11] transforms, which are
    #     macros hosted by CloudFormation.) Even if you specify this
    #     capability for a stack set with service-managed permissions, if you
    #     reference a macro in your template the stack set operation will
    #     fail.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key-value pairs to associate with this stack set and the stacks
    #   created from it. CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. You can specify a
    #   maximum number of 50 tags.
    #
    #   If you specify tags for this parameter, those tags replace any list of
    #   tags that are currently associated with this stack set. This means:
    #
    #   * If you don't specify this parameter, CloudFormation doesn't modify
    #     the stack's tags.
    #
    #   * If you specify *any* tags using this parameter, you must specify
    #     *all* the tags that you want associated with this stack set, even
    #     tags you've specified before (for example, when creating the stack
    #     set or during a previous update of the stack set.). Any tags that
    #     you don't include in the updated list of tags are removed from the
    #     stack set, and therefore from the stacks and resources as well.
    #
    #   * If you specify an empty value, CloudFormation removes all currently
    #     associated tags.
    #
    #   If you specify new tags as part of an `UpdateStackSet` action,
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you omit tags that are currently associated with
    #   the stack set from the list of tags you specify, CloudFormation
    #   assumes that you want to remove those tags from the stack set, and
    #   checks to see if you have permission to untag resources. If you don't
    #   have the necessary permission(s), the entire `UpdateStackSet` action
    #   fails with an `access denied` error, and the stack set is not updated.
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how CloudFormation performs this stack set operation.
    #
    # @option params [String] :administration_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to use to update this
    #   stack set.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific stack sets
    #   within the same administrator account. For more information, see
    #   [Granting Permissions for Stack Set Operations][1] in the
    #   *CloudFormation User Guide*.
    #
    #   If you specified a customized administrator role when you created the
    #   stack set, you must specify a customized administrator role, even if
    #   it is the same customized administrator role used with this stack set
    #   previously.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #
    # @option params [String] :execution_role_name
    #   The name of the IAM execution role to use to update the stack set. If
    #   you do not specify an execution role, CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the stack set
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in their
    #   stack sets.
    #
    #   If you specify a customized execution role, CloudFormation uses that
    #   role to update the stack. If you do not specify a customized execution
    #   role, CloudFormation performs the update using the role previously
    #   associated with the stack set, so long as you have permissions to
    #   perform operations on the stack set.
    #
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   \[Service-managed permissions\] The Organizations accounts in which to
    #   update associated stack instances.
    #
    #   To update all the stack instances associated with this stack set, do
    #   not specify `DeploymentTargets` or `Regions`.
    #
    #   If the stack set update includes changes to the template (that is, if
    #   `TemplateBody` or `TemplateURL` is specified), or the `Parameters`,
    #   CloudFormation marks all stack instances with a status of `OUTDATED`
    #   prior to updating the stack instances in the specified accounts and
    #   Amazon Web Services Regions. If the stack set update doesn't include
    #   changes to the template or parameters, CloudFormation updates the
    #   stack instances in the specified accounts and Regions, while leaving
    #   all other stack instances with their existing stack instance status.
    #
    # @option params [String] :permission_model
    #   Describes how the IAM roles required for stack set operations are
    #   created. You cannot modify `PermissionModel` if there are stack
    #   instances associated with your stack set.
    #
    #   * With `self-managed` permissions, you must create the administrator
    #     and execution roles required to deploy to target accounts. For more
    #     information, see [Grant Self-Managed Stack Set Permissions][1].
    #
    #   * With `service-managed` permissions, StackSets automatically creates
    #     the IAM roles required to deploy to accounts managed by
    #     Organizations. For more information, see [Grant Service-Managed
    #     Stack Set Permissions][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html
    #
    # @option params [Types::AutoDeployment] :auto_deployment
    #   \[Service-managed permissions\] Describes whether StackSets
    #   automatically deploys to Organizations accounts that are added to a
    #   target organization or organizational unit (OU).
    #
    #   If you specify `AutoDeployment`, don't specify `DeploymentTargets` or
    #   `Regions`.
    #
    # @option params [String] :operation_id
    #   The unique ID for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that CloudFormation performs the stack set operation only once, even
    #   if you retry the request multiple times. You might retry stack set
    #   operation requests to ensure that CloudFormation successfully received
    #   them.
    #
    #   If you don't specify an operation ID, CloudFormation generates one
    #   automatically.
    #
    #   Repeating this stack set operation with a new operation ID retries all
    #   stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<String>] :accounts
    #   \[Self-managed permissions\] The accounts in which to update
    #   associated stack instances. If you specify accounts, you must also
    #   specify the Amazon Web Services Regions in which to update stack set
    #   instances.
    #
    #   To update *all* the stack instances associated with this stack set,
    #   don't specify the `Accounts` or `Regions` properties.
    #
    #   If the stack set update includes changes to the template (that is, if
    #   the `TemplateBody` or `TemplateURL` properties are specified), or the
    #   `Parameters` property, CloudFormation marks all stack instances with a
    #   status of `OUTDATED` prior to updating the stack instances in the
    #   specified accounts and Amazon Web Services Regions. If the stack set
    #   update does not include changes to the template or parameters,
    #   CloudFormation updates the stack instances in the specified accounts
    #   and Amazon Web Services Regions, while leaving all other stack
    #   instances with their existing stack instance status.
    #
    # @option params [Array<String>] :regions
    #   The Amazon Web Services Regions in which to update associated stack
    #   instances. If you specify Regions, you must also specify accounts in
    #   which to update stack set instances.
    #
    #   To update *all* the stack instances associated with this stack set, do
    #   not specify the `Accounts` or `Regions` properties.
    #
    #   If the stack set update includes changes to the template (that is, if
    #   the `TemplateBody` or `TemplateURL` properties are specified), or the
    #   `Parameters` property, CloudFormation marks all stack instances with a
    #   status of `OUTDATED` prior to updating the stack instances in the
    #   specified accounts and Regions. If the stack set update does not
    #   include changes to the template or parameters, CloudFormation updates
    #   the stack instances in the specified accounts and Regions, while
    #   leaving all other stack instances with their existing stack instance
    #   status.
    #
    # @option params [String] :call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as an
    #   account administrator in the organization's management account or as
    #   a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for stack sets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #
    # @option params [Types::ManagedExecution] :managed_execution
    #   Describes whether StackSets performs non-conflicting operations
    #   concurrently and queues conflicting operations.
    #
    # @return [Types::UpdateStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackSetOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack_set({
    #     stack_set_name: "StackSetName", # required
    #     description: "Description",
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL", # accepts SEQUENTIAL, PARALLEL
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     administration_role_arn: "RoleARN",
    #     execution_role_name: "ExecutionRoleName",
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       accounts_url: "AccountsUrl",
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       account_filter_type: "NONE", # accepts NONE, INTERSECTION, DIFFERENCE, UNION
    #     },
    #     permission_model: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, SELF_MANAGED
    #     auto_deployment: {
    #       enabled: false,
    #       retain_stacks_on_account_removal: false,
    #     },
    #     operation_id: "ClientRequestToken",
    #     accounts: ["Account"],
    #     regions: ["Region"],
    #     call_as: "SELF", # accepts SELF, DELEGATED_ADMIN
    #     managed_execution: {
    #       active: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackSet AWS API Documentation
    #
    # @overload update_stack_set(params = {})
    # @param [Hash] params ({})
    def update_stack_set(params = {}, options = {})
      req = build_request(:update_stack_set, params)
      req.send_request(options)
    end

    # Updates termination protection for the specified stack. If a user
    # attempts to delete a stack with termination protection enabled, the
    # operation fails and the stack remains unchanged. For more information,
    # see [Protecting a Stack From Being Deleted][1] in the *CloudFormation
    # User Guide*.
    #
    # For [nested stacks][2], termination protection is set on the root
    # stack and can't be changed directly on the nested stack.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #
    # @option params [required, Boolean] :enable_termination_protection
    #   Whether to enable termination protection on the specified stack.
    #
    # @option params [required, String] :stack_name
    #   The name or unique ID of the stack for which you want to set
    #   termination protection.
    #
    # @return [Types::UpdateTerminationProtectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTerminationProtectionOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_termination_protection({
    #     enable_termination_protection: false, # required
    #     stack_name: "StackNameOrId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateTerminationProtection AWS API Documentation
    #
    # @overload update_termination_protection(params = {})
    # @param [Hash] params ({})
    def update_termination_protection(params = {}, options = {})
      req = build_request(:update_termination_protection, params)
      req.send_request(options)
    end

    # Validates a specified template. CloudFormation first checks if the
    # template is valid JSON. If it isn't, CloudFormation checks if the
    # template is valid YAML. If both these checks fail, CloudFormation
    # returns a template validation error.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information, go to
    #   [Template Anatomy][1] in the CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket or a Systems Manager document. For more information, go to
    #   [Template Anatomy][1] in the CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @return [Types::ValidateTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateTemplateOutput#parameters #parameters} => Array&lt;Types::TemplateParameter&gt;
    #   * {Types::ValidateTemplateOutput#description #description} => String
    #   * {Types::ValidateTemplateOutput#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::ValidateTemplateOutput#capabilities_reason #capabilities_reason} => String
    #   * {Types::ValidateTemplateOutput#declared_transforms #declared_transforms} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_template({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_key #=> String
    #   resp.parameters[0].default_value #=> String
    #   resp.parameters[0].no_echo #=> Boolean
    #   resp.parameters[0].description #=> String
    #   resp.description #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.capabilities_reason #=> String
    #   resp.declared_transforms #=> Array
    #   resp.declared_transforms[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ValidateTemplate AWS API Documentation
    #
    # @overload validate_template(params = {})
    # @param [Hash] params ({})
    def validate_template(params = {}, options = {})
      req = build_request(:validate_template, params)
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
      context[:gem_name] = 'aws-sdk-cloudformation'
      context[:gem_version] = '1.85.0'
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
    # | waiter_name                | params                              | :delay   | :max_attempts |
    # | -------------------------- | ----------------------------------- | -------- | ------------- |
    # | change_set_create_complete | {Client#describe_change_set}        | 30       | 120           |
    # | stack_create_complete      | {Client#describe_stacks}            | 30       | 120           |
    # | stack_delete_complete      | {Client#describe_stacks}            | 30       | 120           |
    # | stack_exists               | {Client#describe_stacks}            | 5        | 20            |
    # | stack_import_complete      | {Client#describe_stacks}            | 30       | 120           |
    # | stack_rollback_complete    | {Client#describe_stacks}            | 30       | 120           |
    # | stack_update_complete      | {Client#describe_stacks}            | 30       | 120           |
    # | type_registration_complete | {Client#describe_type_registration} | 30       | 120           |
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
        change_set_create_complete: Waiters::ChangeSetCreateComplete,
        stack_create_complete: Waiters::StackCreateComplete,
        stack_delete_complete: Waiters::StackDeleteComplete,
        stack_exists: Waiters::StackExists,
        stack_import_complete: Waiters::StackImportComplete,
        stack_rollback_complete: Waiters::StackRollbackComplete,
        stack_update_complete: Waiters::StackUpdateComplete,
        type_registration_complete: Waiters::TypeRegistrationComplete
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
