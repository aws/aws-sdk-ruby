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

Aws::Plugins::GlobalConfiguration.add_identifier(:appstream)

module Aws::AppStream
  # An API client for AppStream.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppStream::Client.new(
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

    @identifier = :appstream

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
    add_plugin(Aws::AppStream::Plugins::Endpoints)

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
    #   @option options [Aws::AppStream::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AppStream::EndpointParameters`
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

    # Associates the specified app block builder with the specified app
    # block.
    #
    # @option params [required, String] :app_block_arn
    #   The ARN of the app block.
    #
    # @option params [required, String] :app_block_builder_name
    #   The name of the app block builder.
    #
    # @return [Types::AssociateAppBlockBuilderAppBlockResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAppBlockBuilderAppBlockResult#app_block_builder_app_block_association #app_block_builder_app_block_association} => Types::AppBlockBuilderAppBlockAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_app_block_builder_app_block({
    #     app_block_arn: "Arn", # required
    #     app_block_builder_name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_block_builder_app_block_association.app_block_arn #=> String
    #   resp.app_block_builder_app_block_association.app_block_builder_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateAppBlockBuilderAppBlock AWS API Documentation
    #
    # @overload associate_app_block_builder_app_block(params = {})
    # @param [Hash] params ({})
    def associate_app_block_builder_app_block(params = {}, options = {})
      req = build_request(:associate_app_block_builder_app_block, params)
      req.send_request(options)
    end

    # Associates the specified application with the specified fleet. This is
    # only supported for Elastic fleets.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [required, String] :application_arn
    #   The ARN of the application.
    #
    # @return [Types::AssociateApplicationFleetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateApplicationFleetResult#application_fleet_association #application_fleet_association} => Types::ApplicationFleetAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_application_fleet({
    #     fleet_name: "Name", # required
    #     application_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_fleet_association.fleet_name #=> String
    #   resp.application_fleet_association.application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateApplicationFleet AWS API Documentation
    #
    # @overload associate_application_fleet(params = {})
    # @param [Hash] params ({})
    def associate_application_fleet(params = {}, options = {})
      req = build_request(:associate_application_fleet, params)
      req.send_request(options)
    end

    # Associates an application to entitle.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack.
    #
    # @option params [required, String] :entitlement_name
    #   The name of the entitlement.
    #
    # @option params [required, String] :application_identifier
    #   The identifier of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_application_to_entitlement({
    #     stack_name: "Name", # required
    #     entitlement_name: "Name", # required
    #     application_identifier: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateApplicationToEntitlement AWS API Documentation
    #
    # @overload associate_application_to_entitlement(params = {})
    # @param [Hash] params ({})
    def associate_application_to_entitlement(params = {}, options = {})
      req = build_request(:associate_application_to_entitlement, params)
      req.send_request(options)
    end

    # Associates the specified fleet with the specified stack.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_fleet({
    #     fleet_name: "String", # required
    #     stack_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateFleet AWS API Documentation
    #
    # @overload associate_fleet(params = {})
    # @param [Hash] params ({})
    def associate_fleet(params = {}, options = {})
      req = build_request(:associate_fleet, params)
      req.send_request(options)
    end

    # Associates the specified users with the specified stacks. Users in a
    # user pool cannot be assigned to stacks with fleets that are joined to
    # an Active Directory domain.
    #
    # @option params [required, Array<Types::UserStackAssociation>] :user_stack_associations
    #   The list of UserStackAssociation objects.
    #
    # @return [Types::BatchAssociateUserStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateUserStackResult#errors #errors} => Array&lt;Types::UserStackAssociationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_user_stack({
    #     user_stack_associations: [ # required
    #       {
    #         stack_name: "String", # required
    #         user_name: "Username", # required
    #         authentication_type: "API", # required, accepts API, SAML, USERPOOL, AWS_AD
    #         send_email_notification: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].user_stack_association.stack_name #=> String
    #   resp.errors[0].user_stack_association.user_name #=> String
    #   resp.errors[0].user_stack_association.authentication_type #=> String, one of "API", "SAML", "USERPOOL", "AWS_AD"
    #   resp.errors[0].user_stack_association.send_email_notification #=> Boolean
    #   resp.errors[0].error_code #=> String, one of "STACK_NOT_FOUND", "USER_NAME_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INTERNAL_ERROR"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/BatchAssociateUserStack AWS API Documentation
    #
    # @overload batch_associate_user_stack(params = {})
    # @param [Hash] params ({})
    def batch_associate_user_stack(params = {}, options = {})
      req = build_request(:batch_associate_user_stack, params)
      req.send_request(options)
    end

    # Disassociates the specified users from the specified stacks.
    #
    # @option params [required, Array<Types::UserStackAssociation>] :user_stack_associations
    #   The list of UserStackAssociation objects.
    #
    # @return [Types::BatchDisassociateUserStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateUserStackResult#errors #errors} => Array&lt;Types::UserStackAssociationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_user_stack({
    #     user_stack_associations: [ # required
    #       {
    #         stack_name: "String", # required
    #         user_name: "Username", # required
    #         authentication_type: "API", # required, accepts API, SAML, USERPOOL, AWS_AD
    #         send_email_notification: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].user_stack_association.stack_name #=> String
    #   resp.errors[0].user_stack_association.user_name #=> String
    #   resp.errors[0].user_stack_association.authentication_type #=> String, one of "API", "SAML", "USERPOOL", "AWS_AD"
    #   resp.errors[0].user_stack_association.send_email_notification #=> Boolean
    #   resp.errors[0].error_code #=> String, one of "STACK_NOT_FOUND", "USER_NAME_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INTERNAL_ERROR"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/BatchDisassociateUserStack AWS API Documentation
    #
    # @overload batch_disassociate_user_stack(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_user_stack(params = {}, options = {})
      req = build_request(:batch_disassociate_user_stack, params)
      req.send_request(options)
    end

    # Copies the image within the same region or to a new region within the
    # same AWS account. Note that any tags you added to the image will not
    # be copied.
    #
    # @option params [required, String] :source_image_name
    #   The name of the image to copy.
    #
    # @option params [required, String] :destination_image_name
    #   The name that the image will have when it is copied to the
    #   destination.
    #
    # @option params [required, String] :destination_region
    #   The destination region to which the image will be copied. This
    #   parameter is required, even if you are copying an image within the
    #   same region.
    #
    # @option params [String] :destination_image_description
    #   The description that the image will have when it is copied to the
    #   destination.
    #
    # @return [Types::CopyImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyImageResponse#destination_image_name #destination_image_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_image({
    #     source_image_name: "Name", # required
    #     destination_image_name: "Name", # required
    #     destination_region: "RegionName", # required
    #     destination_image_description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_image_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CopyImage AWS API Documentation
    #
    # @overload copy_image(params = {})
    # @param [Hash] params ({})
    def copy_image(params = {}, options = {})
      req = build_request(:copy_image, params)
      req.send_request(options)
    end

    # Creates an app block.
    #
    # App blocks are an Amazon AppStream 2.0 resource that stores the
    # details about the virtual hard disk in an S3 bucket. It also stores
    # the setup script with details about how to mount the virtual hard
    # disk. The virtual hard disk includes the application binaries and
    # other files necessary to launch your applications. Multiple
    # applications can be assigned to a single app block.
    #
    # This is only supported for Elastic fleets.
    #
    # @option params [required, String] :name
    #   The name of the app block.
    #
    # @option params [String] :description
    #   The description of the app block.
    #
    # @option params [String] :display_name
    #   The display name of the app block. This is not displayed to the user.
    #
    # @option params [required, Types::S3Location] :source_s3_location
    #   The source S3 location of the app block.
    #
    # @option params [Types::ScriptDetails] :setup_script_details
    #   The setup script details of the app block. This must be provided for
    #   the `CUSTOM` PackagingType.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to the app block.
    #
    # @option params [Types::ScriptDetails] :post_setup_script_details
    #   The post setup script details of the app block. This can only be
    #   provided for the `APPSTREAM2` PackagingType.
    #
    # @option params [String] :packaging_type
    #   The packaging type of the app block.
    #
    # @return [Types::CreateAppBlockResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppBlockResult#app_block #app_block} => Types::AppBlock
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_block({
    #     name: "Name", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     source_s3_location: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     setup_script_details: {
    #       script_s3_location: { # required
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key",
    #       },
    #       executable_path: "String", # required
    #       executable_parameters: "String",
    #       timeout_in_seconds: 1, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     post_setup_script_details: {
    #       script_s3_location: { # required
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key",
    #       },
    #       executable_path: "String", # required
    #       executable_parameters: "String",
    #       timeout_in_seconds: 1, # required
    #     },
    #     packaging_type: "CUSTOM", # accepts CUSTOM, APPSTREAM2
    #   })
    #
    # @example Response structure
    #
    #   resp.app_block.name #=> String
    #   resp.app_block.arn #=> String
    #   resp.app_block.description #=> String
    #   resp.app_block.display_name #=> String
    #   resp.app_block.source_s3_location.s3_bucket #=> String
    #   resp.app_block.source_s3_location.s3_key #=> String
    #   resp.app_block.setup_script_details.script_s3_location.s3_bucket #=> String
    #   resp.app_block.setup_script_details.script_s3_location.s3_key #=> String
    #   resp.app_block.setup_script_details.executable_path #=> String
    #   resp.app_block.setup_script_details.executable_parameters #=> String
    #   resp.app_block.setup_script_details.timeout_in_seconds #=> Integer
    #   resp.app_block.created_time #=> Time
    #   resp.app_block.post_setup_script_details.script_s3_location.s3_bucket #=> String
    #   resp.app_block.post_setup_script_details.script_s3_location.s3_key #=> String
    #   resp.app_block.post_setup_script_details.executable_path #=> String
    #   resp.app_block.post_setup_script_details.executable_parameters #=> String
    #   resp.app_block.post_setup_script_details.timeout_in_seconds #=> Integer
    #   resp.app_block.packaging_type #=> String, one of "CUSTOM", "APPSTREAM2"
    #   resp.app_block.state #=> String, one of "INACTIVE", "ACTIVE"
    #   resp.app_block.app_block_errors #=> Array
    #   resp.app_block.app_block_errors[0].error_code #=> String
    #   resp.app_block.app_block_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateAppBlock AWS API Documentation
    #
    # @overload create_app_block(params = {})
    # @param [Hash] params ({})
    def create_app_block(params = {}, options = {})
      req = build_request(:create_app_block, params)
      req.send_request(options)
    end

    # Creates an app block builder.
    #
    # @option params [required, String] :name
    #   The unique name for the app block builder.
    #
    # @option params [String] :description
    #   The description of the app block builder.
    #
    # @option params [String] :display_name
    #   The display name of the app block builder.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the app block builder. A tag is a key-value
    #   pair, and the value is optional. For example, Environment=Test. If you
    #   do not specify a value, Environment=.
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #
    #   For more information, see [Tagging Your Resources][1] in the *Amazon
    #   AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [required, String] :platform
    #   The platform of the app block builder.
    #
    #   `WINDOWS_SERVER_2019` is the only valid value.
    #
    # @option params [required, String] :instance_type
    #   The instance type to use when launching the app block builder. The
    #   following instance types are available:
    #
    #   * stream.standard.small
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.standard.xlarge
    #
    #   * stream.standard.2xlarge
    #
    # @option params [required, Types::VpcConfig] :vpc_config
    #   The VPC configuration for the app block builder.
    #
    #   App block builders require that you specify at least two subnets in
    #   different availability zones.
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the app block builder.
    #
    # @option params [String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to apply to the app
    #   block builder. To assume a role, the app block builder calls the AWS
    #   Security Token Service (STS) `AssumeRole` API operation and passes the
    #   ARN of the role to use. The operation creates a new session with
    #   temporary credentials. AppStream 2.0 retrieves the temporary
    #   credentials and creates the **appstream\_machine\_role** credential
    #   profile on the instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
    #
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   The list of interface VPC endpoint (interface endpoint) objects.
    #   Administrators can connect to the app block builder only through the
    #   specified endpoints.
    #
    # @return [Types::CreateAppBlockBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppBlockBuilderResult#app_block_builder #app_block_builder} => Types::AppBlockBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_block_builder({
    #     name: "Name", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     platform: "WINDOWS_SERVER_2019", # required, accepts WINDOWS_SERVER_2019
    #     instance_type: "String", # required
    #     vpc_config: { # required
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     enable_default_internet_access: false,
    #     iam_role_arn: "Arn",
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING", # required, accepts STREAMING
    #         vpce_id: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.app_block_builder.arn #=> String
    #   resp.app_block_builder.name #=> String
    #   resp.app_block_builder.display_name #=> String
    #   resp.app_block_builder.description #=> String
    #   resp.app_block_builder.platform #=> String, one of "WINDOWS_SERVER_2019"
    #   resp.app_block_builder.instance_type #=> String
    #   resp.app_block_builder.enable_default_internet_access #=> Boolean
    #   resp.app_block_builder.iam_role_arn #=> String
    #   resp.app_block_builder.vpc_config.subnet_ids #=> Array
    #   resp.app_block_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.app_block_builder.vpc_config.security_group_ids #=> Array
    #   resp.app_block_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.app_block_builder.state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.app_block_builder.created_time #=> Time
    #   resp.app_block_builder.app_block_builder_errors #=> Array
    #   resp.app_block_builder.app_block_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.app_block_builder.app_block_builder_errors[0].error_message #=> String
    #   resp.app_block_builder.app_block_builder_errors[0].error_timestamp #=> Time
    #   resp.app_block_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR"
    #   resp.app_block_builder.state_change_reason.message #=> String
    #   resp.app_block_builder.access_endpoints #=> Array
    #   resp.app_block_builder.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.app_block_builder.access_endpoints[0].vpce_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateAppBlockBuilder AWS API Documentation
    #
    # @overload create_app_block_builder(params = {})
    # @param [Hash] params ({})
    def create_app_block_builder(params = {}, options = {})
      req = build_request(:create_app_block_builder, params)
      req.send_request(options)
    end

    # Creates a URL to start a create app block builder streaming session.
    #
    # @option params [required, String] :app_block_builder_name
    #   The name of the app block builder.
    #
    # @option params [Integer] :validity
    #   The time that the streaming URL will be valid, in seconds. Specify a
    #   value between 1 and 604800 seconds. The default is 3600 seconds.
    #
    # @return [Types::CreateAppBlockBuilderStreamingURLResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppBlockBuilderStreamingURLResult#streaming_url #streaming_url} => String
    #   * {Types::CreateAppBlockBuilderStreamingURLResult#expires #expires} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_block_builder_streaming_url({
    #     app_block_builder_name: "Name", # required
    #     validity: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_url #=> String
    #   resp.expires #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateAppBlockBuilderStreamingURL AWS API Documentation
    #
    # @overload create_app_block_builder_streaming_url(params = {})
    # @param [Hash] params ({})
    def create_app_block_builder_streaming_url(params = {}, options = {})
      req = build_request(:create_app_block_builder_streaming_url, params)
      req.send_request(options)
    end

    # Creates an application.
    #
    # Applications are an Amazon AppStream 2.0 resource that stores the
    # details about how to launch applications on Elastic fleet streaming
    # instances. An application consists of the launch details, icon, and
    # display name. Applications are associated with an app block that
    # contains the application binaries and other files. The applications
    # assigned to an Elastic fleet are the applications users can launch.
    #
    # This is only supported for Elastic fleets.
    #
    # @option params [required, String] :name
    #   The name of the application. This name is visible to users when
    #   display name is not specified.
    #
    # @option params [String] :display_name
    #   The display name of the application. This name is visible to users in
    #   the application catalog.
    #
    # @option params [String] :description
    #   The description of the application.
    #
    # @option params [required, Types::S3Location] :icon_s3_location
    #   The location in S3 of the application icon.
    #
    # @option params [required, String] :launch_path
    #   The launch path of the application.
    #
    # @option params [String] :working_directory
    #   The working directory of the application.
    #
    # @option params [String] :launch_parameters
    #   The launch parameters of the application.
    #
    # @option params [required, Array<String>] :platforms
    #   The platforms the application supports. WINDOWS\_SERVER\_2019 and
    #   AMAZON\_LINUX2 are supported for Elastic fleets.
    #
    # @option params [required, Array<String>] :instance_families
    #   The instance families the application supports. Valid values are
    #   GENERAL\_PURPOSE and GRAPHICS\_G4.
    #
    # @option params [required, String] :app_block_arn
    #   The app block ARN to which the application should be associated
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to the application.
    #
    # @return [Types::CreateApplicationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResult#application #application} => Types::Application
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     name: "Name", # required
    #     display_name: "DisplayName",
    #     description: "Description",
    #     icon_s3_location: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     launch_path: "String", # required
    #     working_directory: "String",
    #     launch_parameters: "String",
    #     platforms: ["WINDOWS"], # required, accepts WINDOWS, WINDOWS_SERVER_2016, WINDOWS_SERVER_2019, AMAZON_LINUX2
    #     instance_families: ["String"], # required
    #     app_block_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application.name #=> String
    #   resp.application.display_name #=> String
    #   resp.application.icon_url #=> String
    #   resp.application.launch_path #=> String
    #   resp.application.launch_parameters #=> String
    #   resp.application.enabled #=> Boolean
    #   resp.application.metadata #=> Hash
    #   resp.application.metadata["String"] #=> String
    #   resp.application.working_directory #=> String
    #   resp.application.description #=> String
    #   resp.application.arn #=> String
    #   resp.application.app_block_arn #=> String
    #   resp.application.icon_s3_location.s3_bucket #=> String
    #   resp.application.icon_s3_location.s3_key #=> String
    #   resp.application.platforms #=> Array
    #   resp.application.platforms[0] #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.application.instance_families #=> Array
    #   resp.application.instance_families[0] #=> String
    #   resp.application.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates a Directory Config object in AppStream 2.0. This object
    # includes the configuration information required to join fleets and
    # image builders to Microsoft Active Directory domains.
    #
    # @option params [required, String] :directory_name
    #   The fully qualified name of the directory (for example,
    #   corp.example.com).
    #
    # @option params [required, Array<String>] :organizational_unit_distinguished_names
    #   The distinguished names of the organizational units for computer
    #   accounts.
    #
    # @option params [Types::ServiceAccountCredentials] :service_account_credentials
    #   The credentials for the service account used by the fleet or image
    #   builder to connect to the directory.
    #
    # @option params [Types::CertificateBasedAuthProperties] :certificate_based_auth_properties
    #   The certificate-based authentication properties used to authenticate
    #   SAML 2.0 Identity Provider (IdP) user identities to Active Directory
    #   domain-joined streaming instances. Fallback is turned on by default
    #   when certificate-based authentication is **Enabled** . Fallback allows
    #   users to log in using their AD domain password if certificate-based
    #   authentication is unsuccessful, or to unlock a desktop lock screen.
    #   **Enabled\_no\_directory\_login\_fallback** enables certificate-based
    #   authentication, but does not allow users to log in using their AD
    #   domain password. Users will be disconnected to re-authenticate using
    #   certificates.
    #
    # @return [Types::CreateDirectoryConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectoryConfigResult#directory_config #directory_config} => Types::DirectoryConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_directory_config({
    #     directory_name: "DirectoryName", # required
    #     organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"], # required
    #     service_account_credentials: {
    #       account_name: "AccountName", # required
    #       account_password: "AccountPassword", # required
    #     },
    #     certificate_based_auth_properties: {
    #       status: "DISABLED", # accepts DISABLED, ENABLED, ENABLED_NO_DIRECTORY_LOGIN_FALLBACK
    #       certificate_authority_arn: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_config.directory_name #=> String
    #   resp.directory_config.organizational_unit_distinguished_names #=> Array
    #   resp.directory_config.organizational_unit_distinguished_names[0] #=> String
    #   resp.directory_config.service_account_credentials.account_name #=> String
    #   resp.directory_config.service_account_credentials.account_password #=> String
    #   resp.directory_config.created_time #=> Time
    #   resp.directory_config.certificate_based_auth_properties.status #=> String, one of "DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"
    #   resp.directory_config.certificate_based_auth_properties.certificate_authority_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateDirectoryConfig AWS API Documentation
    #
    # @overload create_directory_config(params = {})
    # @param [Hash] params ({})
    def create_directory_config(params = {}, options = {})
      req = build_request(:create_directory_config, params)
      req.send_request(options)
    end

    # Creates a new entitlement. Entitlements control access to specific
    # applications within a stack, based on user attributes. Entitlements
    # apply to SAML 2.0 federated user identities. Amazon AppStream 2.0 user
    # pool and streaming URL users are entitled to all applications in a
    # stack. Entitlements don't apply to the desktop stream view
    # application, or to applications managed by a dynamic app provider
    # using the Dynamic Application Framework.
    #
    # @option params [required, String] :name
    #   The name of the entitlement.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack with which the entitlement is associated.
    #
    # @option params [String] :description
    #   The description of the entitlement.
    #
    # @option params [required, String] :app_visibility
    #   Specifies whether all or selected apps are entitled.
    #
    # @option params [required, Array<Types::EntitlementAttribute>] :attributes
    #   The attributes of the entitlement.
    #
    # @return [Types::CreateEntitlementResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEntitlementResult#entitlement #entitlement} => Types::Entitlement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_entitlement({
    #     name: "Name", # required
    #     stack_name: "Name", # required
    #     description: "Description",
    #     app_visibility: "ALL", # required, accepts ALL, ASSOCIATED
    #     attributes: [ # required
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlement.name #=> String
    #   resp.entitlement.stack_name #=> String
    #   resp.entitlement.description #=> String
    #   resp.entitlement.app_visibility #=> String, one of "ALL", "ASSOCIATED"
    #   resp.entitlement.attributes #=> Array
    #   resp.entitlement.attributes[0].name #=> String
    #   resp.entitlement.attributes[0].value #=> String
    #   resp.entitlement.created_time #=> Time
    #   resp.entitlement.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateEntitlement AWS API Documentation
    #
    # @overload create_entitlement(params = {})
    # @param [Hash] params ({})
    def create_entitlement(params = {}, options = {})
      req = build_request(:create_entitlement, params)
      req.send_request(options)
    end

    # Creates a fleet. A fleet consists of streaming instances that your
    # users access for their applications and desktops.
    #
    # @option params [required, String] :name
    #   A unique name for the fleet.
    #
    # @option params [String] :image_name
    #   The name of the image used to create the fleet.
    #
    # @option params [String] :image_arn
    #   The ARN of the public, private, or shared image to use.
    #
    # @option params [required, String] :instance_type
    #   The instance type to use when launching fleet instances. The following
    #   instance types are available:
    #
    #   * stream.standard.small
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.standard.xlarge
    #
    #   * stream.standard.2xlarge
    #
    #   * stream.compute.large
    #
    #   * stream.compute.xlarge
    #
    #   * stream.compute.2xlarge
    #
    #   * stream.compute.4xlarge
    #
    #   * stream.compute.8xlarge
    #
    #   * stream.memory.large
    #
    #   * stream.memory.xlarge
    #
    #   * stream.memory.2xlarge
    #
    #   * stream.memory.4xlarge
    #
    #   * stream.memory.8xlarge
    #
    #   * stream.memory.z1d.large
    #
    #   * stream.memory.z1d.xlarge
    #
    #   * stream.memory.z1d.2xlarge
    #
    #   * stream.memory.z1d.3xlarge
    #
    #   * stream.memory.z1d.6xlarge
    #
    #   * stream.memory.z1d.12xlarge
    #
    #   * stream.graphics-design.large
    #
    #   * stream.graphics-design.xlarge
    #
    #   * stream.graphics-design.2xlarge
    #
    #   * stream.graphics-design.4xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #
    #   * stream.graphics.g4dn.xlarge
    #
    #   * stream.graphics.g4dn.2xlarge
    #
    #   * stream.graphics.g4dn.4xlarge
    #
    #   * stream.graphics.g4dn.8xlarge
    #
    #   * stream.graphics.g4dn.12xlarge
    #
    #   * stream.graphics.g4dn.16xlarge
    #
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #
    #   The following instance types are available for Elastic fleets:
    #
    #   * stream.standard.small
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.standard.xlarge
    #
    #   * stream.standard.2xlarge
    #
    # @option params [String] :fleet_type
    #   The fleet type.
    #
    #   ALWAYS\_ON
    #
    #   : Provides users with instant-on access to their apps. You are charged
    #     for all running instances in your fleet, even if no users are
    #     streaming apps.
    #
    #   ON\_DEMAND
    #
    #   : Provide users with access to applications after they connect, which
    #     takes one to two minutes. You are charged for instance streaming
    #     when users are connected and a small hourly fee for instances that
    #     are not streaming apps.
    #
    # @option params [Types::ComputeCapacity] :compute_capacity
    #   The desired capacity for the fleet. This is not allowed for Elastic
    #   fleets. For Elastic fleets, specify MaxConcurrentSessions instead.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the fleet. This is required for Elastic
    #   fleets, but not required for other fleet types. Elastic fleets require
    #   that you specify at least two subnets in different availability zones.
    #
    # @option params [Integer] :max_user_duration_in_seconds
    #   The maximum amount of time that a streaming session can remain active,
    #   in seconds. If users are still connected to a streaming instance five
    #   minutes before this limit is reached, they are prompted to save any
    #   open documents before being disconnected. After this time elapses, the
    #   instance is terminated and replaced by a new instance.
    #
    #   Specify a value between 600 and 360000.
    #
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   The amount of time that a streaming session remains active after users
    #   disconnect. If users try to reconnect to the streaming session after a
    #   disconnection or network interruption within this time interval, they
    #   are connected to their previous session. Otherwise, they are connected
    #   to a new session with a new streaming instance.
    #
    #   Specify a value between 60 and 360000.
    #
    # @option params [String] :description
    #   The description to display.
    #
    # @option params [String] :display_name
    #   The fleet name to display.
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   The name of the directory and organizational unit (OU) to use to join
    #   the fleet to a Microsoft Active Directory domain. This is not allowed
    #   for Elastic fleets.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the fleet. A tag is a key-value pair, and
    #   the value is optional. For example, Environment=Test. If you do not
    #   specify a value, Environment=.
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #
    #   For more information, see [Tagging Your Resources][1] in the *Amazon
    #   AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [Integer] :idle_disconnect_timeout_in_seconds
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the
    #   `DisconnectTimeoutInSeconds` time interval begins. Users are notified
    #   before they are disconnected due to inactivity. If they try to
    #   reconnect to the streaming session before the time interval specified
    #   in `DisconnectTimeoutInSeconds` elapses, they are connected to their
    #   previous session. Users are considered idle when they stop providing
    #   keyboard or mouse input during their streaming session. File uploads
    #   and downloads, audio in, audio out, and pixels changing do not qualify
    #   as user activity. If users continue to be idle after the time interval
    #   in `IdleDisconnectTimeoutInSeconds` elapses, they are disconnected.
    #
    #   To prevent users from being disconnected due to inactivity, specify a
    #   value of 0. Otherwise, specify a value between 60 and 3600. The
    #   default value is 0.
    #
    #   <note markdown="1"> If you enable this feature, we recommend that you specify a value that
    #   corresponds exactly to a whole number of minutes (for example, 60,
    #   120, and 180). If you don't do this, the value is rounded to the
    #   nearest minute. For example, if you specify a value of 70, users are
    #   disconnected after 1 minute of inactivity. If you specify a value that
    #   is at the midpoint between two different minutes, the value is rounded
    #   up. For example, if you specify a value of 90, users are disconnected
    #   after 2 minutes of inactivity.
    #
    #    </note>
    #
    # @option params [String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to apply to the fleet.
    #   To assume a role, a fleet instance calls the AWS Security Token
    #   Service (STS) `AssumeRole` API operation and passes the ARN of the
    #   role to use. The operation creates a new session with temporary
    #   credentials. AppStream 2.0 retrieves the temporary credentials and
    #   creates the **appstream\_machine\_role** credential profile on the
    #   instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
    #
    # @option params [String] :stream_view
    #   The AppStream 2.0 view that is displayed to your users when they
    #   stream from the fleet. When `APP` is specified, only the windows of
    #   applications opened by users display. When `DESKTOP` is specified, the
    #   standard desktop that is provided by the operating system displays.
    #
    #   The default value is `APP`.
    #
    # @option params [String] :platform
    #   The fleet platform. WINDOWS\_SERVER\_2019 and AMAZON\_LINUX2 are
    #   supported for Elastic fleets.
    #
    # @option params [Integer] :max_concurrent_sessions
    #   The maximum concurrent sessions of the Elastic fleet. This is required
    #   for Elastic fleets, and not allowed for other fleet types.
    #
    # @option params [Array<String>] :usb_device_filter_strings
    #   The USB device filter strings that specify which USB devices a user
    #   can redirect to the fleet streaming session, when using the Windows
    #   native client. This is allowed but not required for Elastic fleets.
    #
    # @option params [Types::S3Location] :session_script_s3_location
    #   The S3 location of the session scripts configuration zip file. This
    #   only applies to Elastic fleets.
    #
    # @return [Types::CreateFleetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetResult#fleet #fleet} => Types::Fleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     name: "Name", # required
    #     image_name: "Name",
    #     image_arn: "Arn",
    #     instance_type: "String", # required
    #     fleet_type: "ALWAYS_ON", # accepts ALWAYS_ON, ON_DEMAND, ELASTIC
    #     compute_capacity: {
    #       desired_instances: 1, # required
    #     },
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     max_user_duration_in_seconds: 1,
    #     disconnect_timeout_in_seconds: 1,
    #     description: "Description",
    #     display_name: "DisplayName",
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: "DirectoryName",
    #       organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     idle_disconnect_timeout_in_seconds: 1,
    #     iam_role_arn: "Arn",
    #     stream_view: "APP", # accepts APP, DESKTOP
    #     platform: "WINDOWS", # accepts WINDOWS, WINDOWS_SERVER_2016, WINDOWS_SERVER_2019, AMAZON_LINUX2
    #     max_concurrent_sessions: 1,
    #     usb_device_filter_strings: ["UsbDeviceFilterString"],
    #     session_script_s3_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet.arn #=> String
    #   resp.fleet.name #=> String
    #   resp.fleet.display_name #=> String
    #   resp.fleet.description #=> String
    #   resp.fleet.image_name #=> String
    #   resp.fleet.image_arn #=> String
    #   resp.fleet.instance_type #=> String
    #   resp.fleet.fleet_type #=> String, one of "ALWAYS_ON", "ON_DEMAND", "ELASTIC"
    #   resp.fleet.compute_capacity_status.desired #=> Integer
    #   resp.fleet.compute_capacity_status.running #=> Integer
    #   resp.fleet.compute_capacity_status.in_use #=> Integer
    #   resp.fleet.compute_capacity_status.available #=> Integer
    #   resp.fleet.max_user_duration_in_seconds #=> Integer
    #   resp.fleet.disconnect_timeout_in_seconds #=> Integer
    #   resp.fleet.state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.fleet.vpc_config.subnet_ids #=> Array
    #   resp.fleet.vpc_config.subnet_ids[0] #=> String
    #   resp.fleet.vpc_config.security_group_ids #=> Array
    #   resp.fleet.vpc_config.security_group_ids[0] #=> String
    #   resp.fleet.created_time #=> Time
    #   resp.fleet.fleet_errors #=> Array
    #   resp.fleet.fleet_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.fleet.fleet_errors[0].error_message #=> String
    #   resp.fleet.enable_default_internet_access #=> Boolean
    #   resp.fleet.domain_join_info.directory_name #=> String
    #   resp.fleet.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.fleet.idle_disconnect_timeout_in_seconds #=> Integer
    #   resp.fleet.iam_role_arn #=> String
    #   resp.fleet.stream_view #=> String, one of "APP", "DESKTOP"
    #   resp.fleet.platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.fleet.max_concurrent_sessions #=> Integer
    #   resp.fleet.usb_device_filter_strings #=> Array
    #   resp.fleet.usb_device_filter_strings[0] #=> String
    #   resp.fleet.session_script_s3_location.s3_bucket #=> String
    #   resp.fleet.session_script_s3_location.s3_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateFleet AWS API Documentation
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Creates an image builder. An image builder is a virtual machine that
    # is used to create an image.
    #
    # The initial state of the builder is `PENDING`. When it is ready, the
    # state is `RUNNING`.
    #
    # @option params [required, String] :name
    #   A unique name for the image builder.
    #
    # @option params [String] :image_name
    #   The name of the image used to create the image builder.
    #
    # @option params [String] :image_arn
    #   The ARN of the public, private, or shared image to use.
    #
    # @option params [required, String] :instance_type
    #   The instance type to use when launching the image builder. The
    #   following instance types are available:
    #
    #   * stream.standard.small
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.compute.large
    #
    #   * stream.compute.xlarge
    #
    #   * stream.compute.2xlarge
    #
    #   * stream.compute.4xlarge
    #
    #   * stream.compute.8xlarge
    #
    #   * stream.memory.large
    #
    #   * stream.memory.xlarge
    #
    #   * stream.memory.2xlarge
    #
    #   * stream.memory.4xlarge
    #
    #   * stream.memory.8xlarge
    #
    #   * stream.memory.z1d.large
    #
    #   * stream.memory.z1d.xlarge
    #
    #   * stream.memory.z1d.2xlarge
    #
    #   * stream.memory.z1d.3xlarge
    #
    #   * stream.memory.z1d.6xlarge
    #
    #   * stream.memory.z1d.12xlarge
    #
    #   * stream.graphics-design.large
    #
    #   * stream.graphics-design.xlarge
    #
    #   * stream.graphics-design.2xlarge
    #
    #   * stream.graphics-design.4xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #
    #   * stream.graphics.g4dn.xlarge
    #
    #   * stream.graphics.g4dn.2xlarge
    #
    #   * stream.graphics.g4dn.4xlarge
    #
    #   * stream.graphics.g4dn.8xlarge
    #
    #   * stream.graphics.g4dn.12xlarge
    #
    #   * stream.graphics.g4dn.16xlarge
    #
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #
    # @option params [String] :description
    #   The description to display.
    #
    # @option params [String] :display_name
    #   The image builder name to display.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the image builder. You can specify only one
    #   subnet.
    #
    # @option params [String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to apply to the image
    #   builder. To assume a role, the image builder calls the AWS Security
    #   Token Service (STS) `AssumeRole` API operation and passes the ARN of
    #   the role to use. The operation creates a new session with temporary
    #   credentials. AppStream 2.0 retrieves the temporary credentials and
    #   creates the **appstream\_machine\_role** credential profile on the
    #   instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the image builder.
    #
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   The name of the directory and organizational unit (OU) to use to join
    #   the image builder to a Microsoft Active Directory domain.
    #
    # @option params [String] :appstream_agent_version
    #   The version of the AppStream 2.0 agent to use for this image builder.
    #   To use the latest version of the AppStream 2.0 agent, specify
    #   \[LATEST\].
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the image builder. A tag is a key-value
    #   pair, and the value is optional. For example, Environment=Test. If you
    #   do not specify a value, Environment=.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   For more information about tags, see [Tagging Your Resources][1] in
    #   the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   The list of interface VPC endpoint (interface endpoint) objects.
    #   Administrators can connect to the image builder only through the
    #   specified endpoints.
    #
    # @return [Types::CreateImageBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageBuilderResult#image_builder #image_builder} => Types::ImageBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_builder({
    #     name: "Name", # required
    #     image_name: "String",
    #     image_arn: "Arn",
    #     instance_type: "String", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     iam_role_arn: "Arn",
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: "DirectoryName",
    #       organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #     },
    #     appstream_agent_version: "AppstreamAgentVersion",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING", # required, accepts STREAMING
    #         vpce_id: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builder.name #=> String
    #   resp.image_builder.arn #=> String
    #   resp.image_builder.image_arn #=> String
    #   resp.image_builder.description #=> String
    #   resp.image_builder.display_name #=> String
    #   resp.image_builder.vpc_config.subnet_ids #=> Array
    #   resp.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.image_builder.vpc_config.security_group_ids #=> Array
    #   resp.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.image_builder.instance_type #=> String
    #   resp.image_builder.platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.image_builder.iam_role_arn #=> String
    #   resp.image_builder.state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"
    #   resp.image_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builder.state_change_reason.message #=> String
    #   resp.image_builder.created_time #=> Time
    #   resp.image_builder.enable_default_internet_access #=> Boolean
    #   resp.image_builder.domain_join_info.directory_name #=> String
    #   resp.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builder.network_access_configuration.eni_private_ip_address #=> String
    #   resp.image_builder.network_access_configuration.eni_id #=> String
    #   resp.image_builder.image_builder_errors #=> Array
    #   resp.image_builder.image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builder.appstream_agent_version #=> String
    #   resp.image_builder.access_endpoints #=> Array
    #   resp.image_builder.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.image_builder.access_endpoints[0].vpce_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilder AWS API Documentation
    #
    # @overload create_image_builder(params = {})
    # @param [Hash] params ({})
    def create_image_builder(params = {}, options = {})
      req = build_request(:create_image_builder, params)
      req.send_request(options)
    end

    # Creates a URL to start an image builder streaming session.
    #
    # @option params [required, String] :name
    #   The name of the image builder.
    #
    # @option params [Integer] :validity
    #   The time that the streaming URL will be valid, in seconds. Specify a
    #   value between 1 and 604800 seconds. The default is 3600 seconds.
    #
    # @return [Types::CreateImageBuilderStreamingURLResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageBuilderStreamingURLResult#streaming_url #streaming_url} => String
    #   * {Types::CreateImageBuilderStreamingURLResult#expires #expires} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_builder_streaming_url({
    #     name: "String", # required
    #     validity: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_url #=> String
    #   resp.expires #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilderStreamingURL AWS API Documentation
    #
    # @overload create_image_builder_streaming_url(params = {})
    # @param [Hash] params ({})
    def create_image_builder_streaming_url(params = {}, options = {})
      req = build_request(:create_image_builder_streaming_url, params)
      req.send_request(options)
    end

    # Creates a stack to start streaming applications to users. A stack
    # consists of an associated fleet, user access policies, and storage
    # configurations.
    #
    # @option params [required, String] :name
    #   The name of the stack.
    #
    # @option params [String] :description
    #   The description to display.
    #
    # @option params [String] :display_name
    #   The stack name to display.
    #
    # @option params [Array<Types::StorageConnector>] :storage_connectors
    #   The storage connectors to enable.
    #
    # @option params [String] :redirect_url
    #   The URL that users are redirected to after their streaming session
    #   ends.
    #
    # @option params [String] :feedback_url
    #   The URL that users are redirected to after they click the Send
    #   Feedback link. If no URL is specified, no Send Feedback link is
    #   displayed.
    #
    # @option params [Array<Types::UserSetting>] :user_settings
    #   The actions that are enabled or disabled for users during their
    #   streaming sessions. By default, these actions are enabled.
    #
    # @option params [Types::ApplicationSettings] :application_settings
    #   The persistent application settings for users of a stack. When these
    #   settings are enabled, changes that users make to applications and
    #   Windows settings are automatically saved after each session and
    #   applied to the next session.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the stack. A tag is a key-value pair, and
    #   the value is optional. For example, Environment=Test. If you do not
    #   specify a value, Environment=.
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #
    #   For more information about tags, see [Tagging Your Resources][1] in
    #   the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   The list of interface VPC endpoint (interface endpoint) objects. Users
    #   of the stack can connect to AppStream 2.0 only through the specified
    #   endpoints.
    #
    # @option params [Array<String>] :embed_host_domains
    #   The domains where AppStream 2.0 streaming sessions can be embedded in
    #   an iframe. You must approve the domains that you want to host embedded
    #   AppStream 2.0 streaming sessions.
    #
    # @option params [Types::StreamingExperienceSettings] :streaming_experience_settings
    #   The streaming protocol you want your stack to prefer. This can be UDP
    #   or TCP. Currently, UDP is only supported in the Windows native client.
    #
    # @return [Types::CreateStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackResult#stack #stack} => Types::Stack
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack({
    #     name: "Name", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     storage_connectors: [
    #       {
    #         connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS, GOOGLE_DRIVE, ONE_DRIVE
    #         resource_identifier: "ResourceIdentifier",
    #         domains: ["Domain"],
    #       },
    #     ],
    #     redirect_url: "RedirectURL",
    #     feedback_url: "FeedbackURL",
    #     user_settings: [
    #       {
    #         action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", # required, accepts CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE, DOMAIN_PASSWORD_SIGNIN, DOMAIN_SMART_CARD_SIGNIN
    #         permission: "ENABLED", # required, accepts ENABLED, DISABLED
    #       },
    #     ],
    #     application_settings: {
    #       enabled: false, # required
    #       settings_group: "SettingsGroup",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING", # required, accepts STREAMING
    #         vpce_id: "String",
    #       },
    #     ],
    #     embed_host_domains: ["EmbedHostDomain"],
    #     streaming_experience_settings: {
    #       preferred_protocol: "TCP", # accepts TCP, UDP
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stack.arn #=> String
    #   resp.stack.name #=> String
    #   resp.stack.description #=> String
    #   resp.stack.display_name #=> String
    #   resp.stack.created_time #=> Time
    #   resp.stack.storage_connectors #=> Array
    #   resp.stack.storage_connectors[0].connector_type #=> String, one of "HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"
    #   resp.stack.storage_connectors[0].resource_identifier #=> String
    #   resp.stack.storage_connectors[0].domains #=> Array
    #   resp.stack.storage_connectors[0].domains[0] #=> String
    #   resp.stack.redirect_url #=> String
    #   resp.stack.feedback_url #=> String
    #   resp.stack.stack_errors #=> Array
    #   resp.stack.stack_errors[0].error_code #=> String, one of "STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"
    #   resp.stack.stack_errors[0].error_message #=> String
    #   resp.stack.user_settings #=> Array
    #   resp.stack.user_settings[0].action #=> String, one of "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN"
    #   resp.stack.user_settings[0].permission #=> String, one of "ENABLED", "DISABLED"
    #   resp.stack.application_settings.enabled #=> Boolean
    #   resp.stack.application_settings.settings_group #=> String
    #   resp.stack.application_settings.s3_bucket_name #=> String
    #   resp.stack.access_endpoints #=> Array
    #   resp.stack.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.stack.access_endpoints[0].vpce_id #=> String
    #   resp.stack.embed_host_domains #=> Array
    #   resp.stack.embed_host_domains[0] #=> String
    #   resp.stack.streaming_experience_settings.preferred_protocol #=> String, one of "TCP", "UDP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStack AWS API Documentation
    #
    # @overload create_stack(params = {})
    # @param [Hash] params ({})
    def create_stack(params = {}, options = {})
      req = build_request(:create_stack, params)
      req.send_request(options)
    end

    # Creates a temporary URL to start an AppStream 2.0 streaming session
    # for the specified user. A streaming URL enables application streaming
    # to be tested without user setup.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user.
    #
    # @option params [String] :application_id
    #   The name of the application to launch after the session starts. This
    #   is the name that you specified as **Name** in the Image Assistant. If
    #   your fleet is enabled for the **Desktop** stream view, you can also
    #   choose to launch directly to the operating system desktop. To do so,
    #   specify **Desktop**.
    #
    # @option params [Integer] :validity
    #   The time that the streaming URL will be valid, in seconds. Specify a
    #   value between 1 and 604800 seconds. The default is 60 seconds.
    #
    # @option params [String] :session_context
    #   The session context. For more information, see [Session Context][1] in
    #   the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters
    #
    # @return [Types::CreateStreamingURLResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingURLResult#streaming_url #streaming_url} => String
    #   * {Types::CreateStreamingURLResult#expires #expires} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_url({
    #     stack_name: "String", # required
    #     fleet_name: "String", # required
    #     user_id: "StreamingUrlUserId", # required
    #     application_id: "String",
    #     validity: 1,
    #     session_context: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_url #=> String
    #   resp.expires #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStreamingURL AWS API Documentation
    #
    # @overload create_streaming_url(params = {})
    # @param [Hash] params ({})
    def create_streaming_url(params = {}, options = {})
      req = build_request(:create_streaming_url, params)
      req.send_request(options)
    end

    # Creates a new image with the latest Windows operating system updates,
    # driver updates, and AppStream 2.0 agent software.
    #
    # For more information, see the "Update an Image by Using Managed
    # AppStream 2.0 Image Updates" section in [Administer Your AppStream
    # 2.0 Images][1], in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/administer-images.html
    #
    # @option params [required, String] :existing_image_name
    #   The name of the image to update.
    #
    # @option params [required, String] :new_image_name
    #   The name of the new image. The name must be unique within the AWS
    #   account and Region.
    #
    # @option params [String] :new_image_description
    #   The description to display for the new image.
    #
    # @option params [String] :new_image_display_name
    #   The name to display for the new image.
    #
    # @option params [Hash<String,String>] :new_image_tags
    #   The tags to associate with the new image. A tag is a key-value pair,
    #   and the value is optional. For example, Environment=Test. If you do
    #   not specify a value, Environment=.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   For more information about tags, see [Tagging Your Resources][1] in
    #   the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [Boolean] :dry_run
    #   Indicates whether to display the status of image update availability
    #   before AppStream 2.0 initiates the process of creating a new updated
    #   image. If this value is set to `true`, AppStream 2.0 displays whether
    #   image updates are available. If this value is set to `false`,
    #   AppStream 2.0 initiates the process of creating a new updated image
    #   without displaying whether image updates are available.
    #
    # @return [Types::CreateUpdatedImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUpdatedImageResult#image #image} => Types::Image
    #   * {Types::CreateUpdatedImageResult#can_update_image #can_update_image} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_updated_image({
    #     existing_image_name: "Name", # required
    #     new_image_name: "Name", # required
    #     new_image_description: "Description",
    #     new_image_display_name: "DisplayName",
    #     new_image_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.image.name #=> String
    #   resp.image.arn #=> String
    #   resp.image.base_image_arn #=> String
    #   resp.image.display_name #=> String
    #   resp.image.state #=> String, one of "PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"
    #   resp.image.visibility #=> String, one of "PUBLIC", "PRIVATE", "SHARED"
    #   resp.image.image_builder_supported #=> Boolean
    #   resp.image.image_builder_name #=> String
    #   resp.image.platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.image.description #=> String
    #   resp.image.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"
    #   resp.image.state_change_reason.message #=> String
    #   resp.image.applications #=> Array
    #   resp.image.applications[0].name #=> String
    #   resp.image.applications[0].display_name #=> String
    #   resp.image.applications[0].icon_url #=> String
    #   resp.image.applications[0].launch_path #=> String
    #   resp.image.applications[0].launch_parameters #=> String
    #   resp.image.applications[0].enabled #=> Boolean
    #   resp.image.applications[0].metadata #=> Hash
    #   resp.image.applications[0].metadata["String"] #=> String
    #   resp.image.applications[0].working_directory #=> String
    #   resp.image.applications[0].description #=> String
    #   resp.image.applications[0].arn #=> String
    #   resp.image.applications[0].app_block_arn #=> String
    #   resp.image.applications[0].icon_s3_location.s3_bucket #=> String
    #   resp.image.applications[0].icon_s3_location.s3_key #=> String
    #   resp.image.applications[0].platforms #=> Array
    #   resp.image.applications[0].platforms[0] #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.image.applications[0].instance_families #=> Array
    #   resp.image.applications[0].instance_families[0] #=> String
    #   resp.image.applications[0].created_time #=> Time
    #   resp.image.created_time #=> Time
    #   resp.image.public_base_image_released_date #=> Time
    #   resp.image.appstream_agent_version #=> String
    #   resp.image.image_permissions.allow_fleet #=> Boolean
    #   resp.image.image_permissions.allow_image_builder #=> Boolean
    #   resp.image.image_errors #=> Array
    #   resp.image.image_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image.image_errors[0].error_message #=> String
    #   resp.image.image_errors[0].error_timestamp #=> Time
    #   resp.can_update_image #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateUpdatedImage AWS API Documentation
    #
    # @overload create_updated_image(params = {})
    # @param [Hash] params ({})
    def create_updated_image(params = {}, options = {})
      req = build_request(:create_updated_image, params)
      req.send_request(options)
    end

    # Creates a usage report subscription. Usage reports are generated
    # daily.
    #
    # @return [Types::CreateUsageReportSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUsageReportSubscriptionResult#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::CreateUsageReportSubscriptionResult#schedule #schedule} => String
    #
    # @example Response structure
    #
    #   resp.s3_bucket_name #=> String
    #   resp.schedule #=> String, one of "DAILY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateUsageReportSubscription AWS API Documentation
    #
    # @overload create_usage_report_subscription(params = {})
    # @param [Hash] params ({})
    def create_usage_report_subscription(params = {}, options = {})
      req = build_request(:create_usage_report_subscription, params)
      req.send_request(options)
    end

    # Creates a new user in the user pool.
    #
    # @option params [required, String] :user_name
    #   The email address of the user.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive. During login, if they
    #   specify an email address that doesn't use the same capitalization as
    #   the email address specified when their user pool account was created,
    #   a "user does not exist" error message displays.
    #
    #    </note>
    #
    # @option params [String] :message_action
    #   The action to take for the welcome email that is sent to a user after
    #   the user is created in the user pool. If you specify SUPPRESS, no
    #   email is sent. If you specify RESEND, do not specify the first name or
    #   last name of the user. If the value is null, the email is sent.
    #
    #   <note markdown="1"> The temporary password in the welcome email is valid for only 7 days.
    #   If users don’t set their passwords within 7 days, you must send them a
    #   new welcome email.
    #
    #    </note>
    #
    # @option params [String] :first_name
    #   The first name, or given name, of the user.
    #
    # @option params [String] :last_name
    #   The last name, or surname, of the user.
    #
    # @option params [required, String] :authentication_type
    #   The authentication type for the user. You must specify USERPOOL.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     user_name: "Username", # required
    #     message_action: "SUPPRESS", # accepts SUPPRESS, RESEND
    #     first_name: "UserAttributeValue",
    #     last_name: "UserAttributeValue",
    #     authentication_type: "API", # required, accepts API, SAML, USERPOOL, AWS_AD
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes an app block.
    #
    # @option params [required, String] :name
    #   The name of the app block.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_block({
    #     name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteAppBlock AWS API Documentation
    #
    # @overload delete_app_block(params = {})
    # @param [Hash] params ({})
    def delete_app_block(params = {}, options = {})
      req = build_request(:delete_app_block, params)
      req.send_request(options)
    end

    # Deletes an app block builder.
    #
    # An app block builder can only be deleted when it has no association
    # with an app block.
    #
    # @option params [required, String] :name
    #   The name of the app block builder.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_block_builder({
    #     name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteAppBlockBuilder AWS API Documentation
    #
    # @overload delete_app_block_builder(params = {})
    # @param [Hash] params ({})
    def delete_app_block_builder(params = {}, options = {})
      req = build_request(:delete_app_block_builder, params)
      req.send_request(options)
    end

    # Deletes an application.
    #
    # @option params [required, String] :name
    #   The name of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes the specified Directory Config object from AppStream 2.0. This
    # object includes the information required to join streaming instances
    # to an Active Directory domain.
    #
    # @option params [required, String] :directory_name
    #   The name of the directory configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_directory_config({
    #     directory_name: "DirectoryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteDirectoryConfig AWS API Documentation
    #
    # @overload delete_directory_config(params = {})
    # @param [Hash] params ({})
    def delete_directory_config(params = {}, options = {})
      req = build_request(:delete_directory_config, params)
      req.send_request(options)
    end

    # Deletes the specified entitlement.
    #
    # @option params [required, String] :name
    #   The name of the entitlement.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack with which the entitlement is associated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_entitlement({
    #     name: "Name", # required
    #     stack_name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteEntitlement AWS API Documentation
    #
    # @overload delete_entitlement(params = {})
    # @param [Hash] params ({})
    def delete_entitlement(params = {}, options = {})
      req = build_request(:delete_entitlement, params)
      req.send_request(options)
    end

    # Deletes the specified fleet.
    #
    # @option params [required, String] :name
    #   The name of the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteFleet AWS API Documentation
    #
    # @overload delete_fleet(params = {})
    # @param [Hash] params ({})
    def delete_fleet(params = {}, options = {})
      req = build_request(:delete_fleet, params)
      req.send_request(options)
    end

    # Deletes the specified image. You cannot delete an image when it is in
    # use. After you delete an image, you cannot provision new capacity
    # using the image.
    #
    # @option params [required, String] :name
    #   The name of the image.
    #
    # @return [Types::DeleteImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImageResult#image #image} => Types::Image
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image({
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image.name #=> String
    #   resp.image.arn #=> String
    #   resp.image.base_image_arn #=> String
    #   resp.image.display_name #=> String
    #   resp.image.state #=> String, one of "PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"
    #   resp.image.visibility #=> String, one of "PUBLIC", "PRIVATE", "SHARED"
    #   resp.image.image_builder_supported #=> Boolean
    #   resp.image.image_builder_name #=> String
    #   resp.image.platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.image.description #=> String
    #   resp.image.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"
    #   resp.image.state_change_reason.message #=> String
    #   resp.image.applications #=> Array
    #   resp.image.applications[0].name #=> String
    #   resp.image.applications[0].display_name #=> String
    #   resp.image.applications[0].icon_url #=> String
    #   resp.image.applications[0].launch_path #=> String
    #   resp.image.applications[0].launch_parameters #=> String
    #   resp.image.applications[0].enabled #=> Boolean
    #   resp.image.applications[0].metadata #=> Hash
    #   resp.image.applications[0].metadata["String"] #=> String
    #   resp.image.applications[0].working_directory #=> String
    #   resp.image.applications[0].description #=> String
    #   resp.image.applications[0].arn #=> String
    #   resp.image.applications[0].app_block_arn #=> String
    #   resp.image.applications[0].icon_s3_location.s3_bucket #=> String
    #   resp.image.applications[0].icon_s3_location.s3_key #=> String
    #   resp.image.applications[0].platforms #=> Array
    #   resp.image.applications[0].platforms[0] #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.image.applications[0].instance_families #=> Array
    #   resp.image.applications[0].instance_families[0] #=> String
    #   resp.image.applications[0].created_time #=> Time
    #   resp.image.created_time #=> Time
    #   resp.image.public_base_image_released_date #=> Time
    #   resp.image.appstream_agent_version #=> String
    #   resp.image.image_permissions.allow_fleet #=> Boolean
    #   resp.image.image_permissions.allow_image_builder #=> Boolean
    #   resp.image.image_errors #=> Array
    #   resp.image.image_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image.image_errors[0].error_message #=> String
    #   resp.image.image_errors[0].error_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImage AWS API Documentation
    #
    # @overload delete_image(params = {})
    # @param [Hash] params ({})
    def delete_image(params = {}, options = {})
      req = build_request(:delete_image, params)
      req.send_request(options)
    end

    # Deletes the specified image builder and releases the capacity.
    #
    # @option params [required, String] :name
    #   The name of the image builder.
    #
    # @return [Types::DeleteImageBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImageBuilderResult#image_builder #image_builder} => Types::ImageBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_builder({
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builder.name #=> String
    #   resp.image_builder.arn #=> String
    #   resp.image_builder.image_arn #=> String
    #   resp.image_builder.description #=> String
    #   resp.image_builder.display_name #=> String
    #   resp.image_builder.vpc_config.subnet_ids #=> Array
    #   resp.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.image_builder.vpc_config.security_group_ids #=> Array
    #   resp.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.image_builder.instance_type #=> String
    #   resp.image_builder.platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.image_builder.iam_role_arn #=> String
    #   resp.image_builder.state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"
    #   resp.image_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builder.state_change_reason.message #=> String
    #   resp.image_builder.created_time #=> Time
    #   resp.image_builder.enable_default_internet_access #=> Boolean
    #   resp.image_builder.domain_join_info.directory_name #=> String
    #   resp.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builder.network_access_configuration.eni_private_ip_address #=> String
    #   resp.image_builder.network_access_configuration.eni_id #=> String
    #   resp.image_builder.image_builder_errors #=> Array
    #   resp.image_builder.image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builder.appstream_agent_version #=> String
    #   resp.image_builder.access_endpoints #=> Array
    #   resp.image_builder.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.image_builder.access_endpoints[0].vpce_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImageBuilder AWS API Documentation
    #
    # @overload delete_image_builder(params = {})
    # @param [Hash] params ({})
    def delete_image_builder(params = {}, options = {})
      req = build_request(:delete_image_builder, params)
      req.send_request(options)
    end

    # Deletes permissions for the specified private image. After you delete
    # permissions for an image, AWS accounts to which you previously granted
    # these permissions can no longer use the image.
    #
    # @option params [required, String] :name
    #   The name of the private image.
    #
    # @option params [required, String] :shared_account_id
    #   The 12-digit identifier of the AWS account for which to delete image
    #   permissions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_permissions({
    #     name: "Name", # required
    #     shared_account_id: "AwsAccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImagePermissions AWS API Documentation
    #
    # @overload delete_image_permissions(params = {})
    # @param [Hash] params ({})
    def delete_image_permissions(params = {}, options = {})
      req = build_request(:delete_image_permissions, params)
      req.send_request(options)
    end

    # Deletes the specified stack. After the stack is deleted, the
    # application streaming environment provided by the stack is no longer
    # available to users. Also, any reservations made for application
    # streaming sessions for the stack are released.
    #
    # @option params [required, String] :name
    #   The name of the stack.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteStack AWS API Documentation
    #
    # @overload delete_stack(params = {})
    # @param [Hash] params ({})
    def delete_stack(params = {}, options = {})
      req = build_request(:delete_stack, params)
      req.send_request(options)
    end

    # Disables usage report generation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteUsageReportSubscription AWS API Documentation
    #
    # @overload delete_usage_report_subscription(params = {})
    # @param [Hash] params ({})
    def delete_usage_report_subscription(params = {}, options = {})
      req = build_request(:delete_usage_report_subscription, params)
      req.send_request(options)
    end

    # Deletes a user from the user pool.
    #
    # @option params [required, String] :user_name
    #   The email address of the user.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive.
    #
    #    </note>
    #
    # @option params [required, String] :authentication_type
    #   The authentication type for the user. You must specify USERPOOL.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     user_name: "Username", # required
    #     authentication_type: "API", # required, accepts API, SAML, USERPOOL, AWS_AD
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more app block builder
    # associations.
    #
    # @option params [String] :app_block_arn
    #   The ARN of the app block.
    #
    # @option params [String] :app_block_builder_name
    #   The name of the app block builder.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @return [Types::DescribeAppBlockBuilderAppBlockAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppBlockBuilderAppBlockAssociationsResult#app_block_builder_app_block_associations #app_block_builder_app_block_associations} => Array&lt;Types::AppBlockBuilderAppBlockAssociation&gt;
    #   * {Types::DescribeAppBlockBuilderAppBlockAssociationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_block_builder_app_block_associations({
    #     app_block_arn: "Arn",
    #     app_block_builder_name: "Name",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_block_builder_app_block_associations #=> Array
    #   resp.app_block_builder_app_block_associations[0].app_block_arn #=> String
    #   resp.app_block_builder_app_block_associations[0].app_block_builder_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeAppBlockBuilderAppBlockAssociations AWS API Documentation
    #
    # @overload describe_app_block_builder_app_block_associations(params = {})
    # @param [Hash] params ({})
    def describe_app_block_builder_app_block_associations(params = {}, options = {})
      req = build_request(:describe_app_block_builder_app_block_associations, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more app block builders.
    #
    # @option params [Array<String>] :names
    #   The names of the app block builders.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results. The maximum value is 25.
    #
    # @return [Types::DescribeAppBlockBuildersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppBlockBuildersResult#app_block_builders #app_block_builders} => Array&lt;Types::AppBlockBuilder&gt;
    #   * {Types::DescribeAppBlockBuildersResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_block_builders({
    #     names: ["String"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.app_block_builders #=> Array
    #   resp.app_block_builders[0].arn #=> String
    #   resp.app_block_builders[0].name #=> String
    #   resp.app_block_builders[0].display_name #=> String
    #   resp.app_block_builders[0].description #=> String
    #   resp.app_block_builders[0].platform #=> String, one of "WINDOWS_SERVER_2019"
    #   resp.app_block_builders[0].instance_type #=> String
    #   resp.app_block_builders[0].enable_default_internet_access #=> Boolean
    #   resp.app_block_builders[0].iam_role_arn #=> String
    #   resp.app_block_builders[0].vpc_config.subnet_ids #=> Array
    #   resp.app_block_builders[0].vpc_config.subnet_ids[0] #=> String
    #   resp.app_block_builders[0].vpc_config.security_group_ids #=> Array
    #   resp.app_block_builders[0].vpc_config.security_group_ids[0] #=> String
    #   resp.app_block_builders[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.app_block_builders[0].created_time #=> Time
    #   resp.app_block_builders[0].app_block_builder_errors #=> Array
    #   resp.app_block_builders[0].app_block_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.app_block_builders[0].app_block_builder_errors[0].error_message #=> String
    #   resp.app_block_builders[0].app_block_builder_errors[0].error_timestamp #=> Time
    #   resp.app_block_builders[0].state_change_reason.code #=> String, one of "INTERNAL_ERROR"
    #   resp.app_block_builders[0].state_change_reason.message #=> String
    #   resp.app_block_builders[0].access_endpoints #=> Array
    #   resp.app_block_builders[0].access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.app_block_builders[0].access_endpoints[0].vpce_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeAppBlockBuilders AWS API Documentation
    #
    # @overload describe_app_block_builders(params = {})
    # @param [Hash] params ({})
    def describe_app_block_builders(params = {}, options = {})
      req = build_request(:describe_app_block_builders, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more app blocks.
    #
    # @option params [Array<String>] :arns
    #   The ARNs of the app blocks.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @return [Types::DescribeAppBlocksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppBlocksResult#app_blocks #app_blocks} => Array&lt;Types::AppBlock&gt;
    #   * {Types::DescribeAppBlocksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_blocks({
    #     arns: ["Arn"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.app_blocks #=> Array
    #   resp.app_blocks[0].name #=> String
    #   resp.app_blocks[0].arn #=> String
    #   resp.app_blocks[0].description #=> String
    #   resp.app_blocks[0].display_name #=> String
    #   resp.app_blocks[0].source_s3_location.s3_bucket #=> String
    #   resp.app_blocks[0].source_s3_location.s3_key #=> String
    #   resp.app_blocks[0].setup_script_details.script_s3_location.s3_bucket #=> String
    #   resp.app_blocks[0].setup_script_details.script_s3_location.s3_key #=> String
    #   resp.app_blocks[0].setup_script_details.executable_path #=> String
    #   resp.app_blocks[0].setup_script_details.executable_parameters #=> String
    #   resp.app_blocks[0].setup_script_details.timeout_in_seconds #=> Integer
    #   resp.app_blocks[0].created_time #=> Time
    #   resp.app_blocks[0].post_setup_script_details.script_s3_location.s3_bucket #=> String
    #   resp.app_blocks[0].post_setup_script_details.script_s3_location.s3_key #=> String
    #   resp.app_blocks[0].post_setup_script_details.executable_path #=> String
    #   resp.app_blocks[0].post_setup_script_details.executable_parameters #=> String
    #   resp.app_blocks[0].post_setup_script_details.timeout_in_seconds #=> Integer
    #   resp.app_blocks[0].packaging_type #=> String, one of "CUSTOM", "APPSTREAM2"
    #   resp.app_blocks[0].state #=> String, one of "INACTIVE", "ACTIVE"
    #   resp.app_blocks[0].app_block_errors #=> Array
    #   resp.app_blocks[0].app_block_errors[0].error_code #=> String
    #   resp.app_blocks[0].app_block_errors[0].error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeAppBlocks AWS API Documentation
    #
    # @overload describe_app_blocks(params = {})
    # @param [Hash] params ({})
    def describe_app_blocks(params = {}, options = {})
      req = build_request(:describe_app_blocks, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more application fleet
    # associations. Either ApplicationArn or FleetName must be specified.
    #
    # @option params [String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [String] :application_arn
    #   The ARN of the application.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @return [Types::DescribeApplicationFleetAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationFleetAssociationsResult#application_fleet_associations #application_fleet_associations} => Array&lt;Types::ApplicationFleetAssociation&gt;
    #   * {Types::DescribeApplicationFleetAssociationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_fleet_associations({
    #     fleet_name: "Name",
    #     application_arn: "Arn",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_fleet_associations #=> Array
    #   resp.application_fleet_associations[0].fleet_name #=> String
    #   resp.application_fleet_associations[0].application_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeApplicationFleetAssociations AWS API Documentation
    #
    # @overload describe_application_fleet_associations(params = {})
    # @param [Hash] params ({})
    def describe_application_fleet_associations(params = {}, options = {})
      req = build_request(:describe_application_fleet_associations, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more applications.
    #
    # @option params [Array<String>] :arns
    #   The ARNs for the applications.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @return [Types::DescribeApplicationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationsResult#applications #applications} => Array&lt;Types::Application&gt;
    #   * {Types::DescribeApplicationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_applications({
    #     arns: ["Arn"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].name #=> String
    #   resp.applications[0].display_name #=> String
    #   resp.applications[0].icon_url #=> String
    #   resp.applications[0].launch_path #=> String
    #   resp.applications[0].launch_parameters #=> String
    #   resp.applications[0].enabled #=> Boolean
    #   resp.applications[0].metadata #=> Hash
    #   resp.applications[0].metadata["String"] #=> String
    #   resp.applications[0].working_directory #=> String
    #   resp.applications[0].description #=> String
    #   resp.applications[0].arn #=> String
    #   resp.applications[0].app_block_arn #=> String
    #   resp.applications[0].icon_s3_location.s3_bucket #=> String
    #   resp.applications[0].icon_s3_location.s3_key #=> String
    #   resp.applications[0].platforms #=> Array
    #   resp.applications[0].platforms[0] #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.applications[0].instance_families #=> Array
    #   resp.applications[0].instance_families[0] #=> String
    #   resp.applications[0].created_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeApplications AWS API Documentation
    #
    # @overload describe_applications(params = {})
    # @param [Hash] params ({})
    def describe_applications(params = {}, options = {})
      req = build_request(:describe_applications, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified Directory Config
    # objects for AppStream 2.0, if the names for these objects are
    # provided. Otherwise, all Directory Config objects in the account are
    # described. These objects include the configuration information
    # required to join fleets and image builders to Microsoft Active
    # Directory domains.
    #
    # Although the response syntax in this topic includes the account
    # password, this password is not returned in the actual response.
    #
    # @option params [Array<String>] :directory_names
    #   The directory names.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeDirectoryConfigsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectoryConfigsResult#directory_configs #directory_configs} => Array&lt;Types::DirectoryConfig&gt;
    #   * {Types::DescribeDirectoryConfigsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_directory_configs({
    #     directory_names: ["DirectoryName"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_configs #=> Array
    #   resp.directory_configs[0].directory_name #=> String
    #   resp.directory_configs[0].organizational_unit_distinguished_names #=> Array
    #   resp.directory_configs[0].organizational_unit_distinguished_names[0] #=> String
    #   resp.directory_configs[0].service_account_credentials.account_name #=> String
    #   resp.directory_configs[0].service_account_credentials.account_password #=> String
    #   resp.directory_configs[0].created_time #=> Time
    #   resp.directory_configs[0].certificate_based_auth_properties.status #=> String, one of "DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"
    #   resp.directory_configs[0].certificate_based_auth_properties.certificate_authority_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeDirectoryConfigs AWS API Documentation
    #
    # @overload describe_directory_configs(params = {})
    # @param [Hash] params ({})
    def describe_directory_configs(params = {}, options = {})
      req = build_request(:describe_directory_configs, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one of more entitlements.
    #
    # @option params [String] :name
    #   The name of the entitlement.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack with which the entitlement is associated.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @return [Types::DescribeEntitlementsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntitlementsResult#entitlements #entitlements} => Array&lt;Types::Entitlement&gt;
    #   * {Types::DescribeEntitlementsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entitlements({
    #     name: "Name",
    #     stack_name: "Name", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlements #=> Array
    #   resp.entitlements[0].name #=> String
    #   resp.entitlements[0].stack_name #=> String
    #   resp.entitlements[0].description #=> String
    #   resp.entitlements[0].app_visibility #=> String, one of "ALL", "ASSOCIATED"
    #   resp.entitlements[0].attributes #=> Array
    #   resp.entitlements[0].attributes[0].name #=> String
    #   resp.entitlements[0].attributes[0].value #=> String
    #   resp.entitlements[0].created_time #=> Time
    #   resp.entitlements[0].last_modified_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeEntitlements AWS API Documentation
    #
    # @overload describe_entitlements(params = {})
    # @param [Hash] params ({})
    def describe_entitlements(params = {}, options = {})
      req = build_request(:describe_entitlements, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified fleets, if the
    # fleet names are provided. Otherwise, all fleets in the account are
    # described.
    #
    # @option params [Array<String>] :names
    #   The names of the fleets to describe.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeFleetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetsResult#fleets #fleets} => Array&lt;Types::Fleet&gt;
    #   * {Types::DescribeFleetsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleets({
    #     names: ["String"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleets #=> Array
    #   resp.fleets[0].arn #=> String
    #   resp.fleets[0].name #=> String
    #   resp.fleets[0].display_name #=> String
    #   resp.fleets[0].description #=> String
    #   resp.fleets[0].image_name #=> String
    #   resp.fleets[0].image_arn #=> String
    #   resp.fleets[0].instance_type #=> String
    #   resp.fleets[0].fleet_type #=> String, one of "ALWAYS_ON", "ON_DEMAND", "ELASTIC"
    #   resp.fleets[0].compute_capacity_status.desired #=> Integer
    #   resp.fleets[0].compute_capacity_status.running #=> Integer
    #   resp.fleets[0].compute_capacity_status.in_use #=> Integer
    #   resp.fleets[0].compute_capacity_status.available #=> Integer
    #   resp.fleets[0].max_user_duration_in_seconds #=> Integer
    #   resp.fleets[0].disconnect_timeout_in_seconds #=> Integer
    #   resp.fleets[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.fleets[0].vpc_config.subnet_ids #=> Array
    #   resp.fleets[0].vpc_config.subnet_ids[0] #=> String
    #   resp.fleets[0].vpc_config.security_group_ids #=> Array
    #   resp.fleets[0].vpc_config.security_group_ids[0] #=> String
    #   resp.fleets[0].created_time #=> Time
    #   resp.fleets[0].fleet_errors #=> Array
    #   resp.fleets[0].fleet_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.fleets[0].fleet_errors[0].error_message #=> String
    #   resp.fleets[0].enable_default_internet_access #=> Boolean
    #   resp.fleets[0].domain_join_info.directory_name #=> String
    #   resp.fleets[0].domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.fleets[0].idle_disconnect_timeout_in_seconds #=> Integer
    #   resp.fleets[0].iam_role_arn #=> String
    #   resp.fleets[0].stream_view #=> String, one of "APP", "DESKTOP"
    #   resp.fleets[0].platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.fleets[0].max_concurrent_sessions #=> Integer
    #   resp.fleets[0].usb_device_filter_strings #=> Array
    #   resp.fleets[0].usb_device_filter_strings[0] #=> String
    #   resp.fleets[0].session_script_s3_location.s3_bucket #=> String
    #   resp.fleets[0].session_script_s3_location.s3_key #=> String
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * fleet_started
    #   * fleet_stopped
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeFleets AWS API Documentation
    #
    # @overload describe_fleets(params = {})
    # @param [Hash] params ({})
    def describe_fleets(params = {}, options = {})
      req = build_request(:describe_fleets, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified image builders,
    # if the image builder names are provided. Otherwise, all image builders
    # in the account are described.
    #
    # @option params [Array<String>] :names
    #   The names of the image builders to describe.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeImageBuildersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImageBuildersResult#image_builders #image_builders} => Array&lt;Types::ImageBuilder&gt;
    #   * {Types::DescribeImageBuildersResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_builders({
    #     names: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builders #=> Array
    #   resp.image_builders[0].name #=> String
    #   resp.image_builders[0].arn #=> String
    #   resp.image_builders[0].image_arn #=> String
    #   resp.image_builders[0].description #=> String
    #   resp.image_builders[0].display_name #=> String
    #   resp.image_builders[0].vpc_config.subnet_ids #=> Array
    #   resp.image_builders[0].vpc_config.subnet_ids[0] #=> String
    #   resp.image_builders[0].vpc_config.security_group_ids #=> Array
    #   resp.image_builders[0].vpc_config.security_group_ids[0] #=> String
    #   resp.image_builders[0].instance_type #=> String
    #   resp.image_builders[0].platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.image_builders[0].iam_role_arn #=> String
    #   resp.image_builders[0].state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"
    #   resp.image_builders[0].state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builders[0].state_change_reason.message #=> String
    #   resp.image_builders[0].created_time #=> Time
    #   resp.image_builders[0].enable_default_internet_access #=> Boolean
    #   resp.image_builders[0].domain_join_info.directory_name #=> String
    #   resp.image_builders[0].domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builders[0].network_access_configuration.eni_private_ip_address #=> String
    #   resp.image_builders[0].network_access_configuration.eni_id #=> String
    #   resp.image_builders[0].image_builder_errors #=> Array
    #   resp.image_builders[0].image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builders[0].image_builder_errors[0].error_message #=> String
    #   resp.image_builders[0].image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builders[0].appstream_agent_version #=> String
    #   resp.image_builders[0].access_endpoints #=> Array
    #   resp.image_builders[0].access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.image_builders[0].access_endpoints[0].vpce_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImageBuilders AWS API Documentation
    #
    # @overload describe_image_builders(params = {})
    # @param [Hash] params ({})
    def describe_image_builders(params = {}, options = {})
      req = build_request(:describe_image_builders, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the permissions for shared AWS account
    # IDs on a private image that you own.
    #
    # @option params [required, String] :name
    #   The name of the private image for which to describe permissions. The
    #   image must be one that you own.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [Array<String>] :shared_aws_account_ids
    #   The 12-digit identifier of one or more AWS accounts with which the
    #   image is shared.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeImagePermissionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImagePermissionsResult#name #name} => String
    #   * {Types::DescribeImagePermissionsResult#shared_image_permissions_list #shared_image_permissions_list} => Array&lt;Types::SharedImagePermissions&gt;
    #   * {Types::DescribeImagePermissionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_permissions({
    #     name: "Name", # required
    #     max_results: 1,
    #     shared_aws_account_ids: ["AwsAccountId"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.shared_image_permissions_list #=> Array
    #   resp.shared_image_permissions_list[0].shared_account_id #=> String
    #   resp.shared_image_permissions_list[0].image_permissions.allow_fleet #=> Boolean
    #   resp.shared_image_permissions_list[0].image_permissions.allow_image_builder #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagePermissions AWS API Documentation
    #
    # @overload describe_image_permissions(params = {})
    # @param [Hash] params ({})
    def describe_image_permissions(params = {}, options = {})
      req = build_request(:describe_image_permissions, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified images, if the
    # image names or image ARNs are provided. Otherwise, all images in the
    # account are described.
    #
    # @option params [Array<String>] :names
    #   The names of the public or private images to describe.
    #
    # @option params [Array<String>] :arns
    #   The ARNs of the public, private, and shared images to describe.
    #
    # @option params [String] :type
    #   The type of image (public, private, or shared) to describe.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @return [Types::DescribeImagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImagesResult#images #images} => Array&lt;Types::Image&gt;
    #   * {Types::DescribeImagesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_images({
    #     names: ["String"],
    #     arns: ["Arn"],
    #     type: "PUBLIC", # accepts PUBLIC, PRIVATE, SHARED
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.images #=> Array
    #   resp.images[0].name #=> String
    #   resp.images[0].arn #=> String
    #   resp.images[0].base_image_arn #=> String
    #   resp.images[0].display_name #=> String
    #   resp.images[0].state #=> String, one of "PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"
    #   resp.images[0].visibility #=> String, one of "PUBLIC", "PRIVATE", "SHARED"
    #   resp.images[0].image_builder_supported #=> Boolean
    #   resp.images[0].image_builder_name #=> String
    #   resp.images[0].platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.images[0].description #=> String
    #   resp.images[0].state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"
    #   resp.images[0].state_change_reason.message #=> String
    #   resp.images[0].applications #=> Array
    #   resp.images[0].applications[0].name #=> String
    #   resp.images[0].applications[0].display_name #=> String
    #   resp.images[0].applications[0].icon_url #=> String
    #   resp.images[0].applications[0].launch_path #=> String
    #   resp.images[0].applications[0].launch_parameters #=> String
    #   resp.images[0].applications[0].enabled #=> Boolean
    #   resp.images[0].applications[0].metadata #=> Hash
    #   resp.images[0].applications[0].metadata["String"] #=> String
    #   resp.images[0].applications[0].working_directory #=> String
    #   resp.images[0].applications[0].description #=> String
    #   resp.images[0].applications[0].arn #=> String
    #   resp.images[0].applications[0].app_block_arn #=> String
    #   resp.images[0].applications[0].icon_s3_location.s3_bucket #=> String
    #   resp.images[0].applications[0].icon_s3_location.s3_key #=> String
    #   resp.images[0].applications[0].platforms #=> Array
    #   resp.images[0].applications[0].platforms[0] #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.images[0].applications[0].instance_families #=> Array
    #   resp.images[0].applications[0].instance_families[0] #=> String
    #   resp.images[0].applications[0].created_time #=> Time
    #   resp.images[0].created_time #=> Time
    #   resp.images[0].public_base_image_released_date #=> Time
    #   resp.images[0].appstream_agent_version #=> String
    #   resp.images[0].image_permissions.allow_fleet #=> Boolean
    #   resp.images[0].image_permissions.allow_image_builder #=> Boolean
    #   resp.images[0].image_errors #=> Array
    #   resp.images[0].image_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.images[0].image_errors[0].error_message #=> String
    #   resp.images[0].image_errors[0].error_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImages AWS API Documentation
    #
    # @overload describe_images(params = {})
    # @param [Hash] params ({})
    def describe_images(params = {}, options = {})
      req = build_request(:describe_images, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the streaming sessions for a specified
    # stack and fleet. If a UserId is provided for the stack and fleet, only
    # streaming sessions for that user are described. If an authentication
    # type is not provided, the default is to authenticate users using a
    # streaming URL.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack. This value is case-sensitive.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet. This value is case-sensitive.
    #
    # @option params [String] :user_id
    #   The user identifier (ID). If you specify a user ID, you must also
    #   specify the authentication type.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [Integer] :limit
    #   The size of each page of results. The default value is 20 and the
    #   maximum value is 50.
    #
    # @option params [String] :authentication_type
    #   The authentication method. Specify `API` for a user authenticated
    #   using a streaming URL or `SAML` for a SAML federated user. The default
    #   is to authenticate users using a streaming URL.
    #
    # @return [Types::DescribeSessionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSessionsResult#sessions #sessions} => Array&lt;Types::Session&gt;
    #   * {Types::DescribeSessionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sessions({
    #     stack_name: "String", # required
    #     fleet_name: "String", # required
    #     user_id: "UserId",
    #     next_token: "String",
    #     limit: 1,
    #     authentication_type: "API", # accepts API, SAML, USERPOOL, AWS_AD
    #   })
    #
    # @example Response structure
    #
    #   resp.sessions #=> Array
    #   resp.sessions[0].id #=> String
    #   resp.sessions[0].user_id #=> String
    #   resp.sessions[0].stack_name #=> String
    #   resp.sessions[0].fleet_name #=> String
    #   resp.sessions[0].state #=> String, one of "ACTIVE", "PENDING", "EXPIRED"
    #   resp.sessions[0].connection_state #=> String, one of "CONNECTED", "NOT_CONNECTED"
    #   resp.sessions[0].start_time #=> Time
    #   resp.sessions[0].max_expiration_time #=> Time
    #   resp.sessions[0].authentication_type #=> String, one of "API", "SAML", "USERPOOL", "AWS_AD"
    #   resp.sessions[0].network_access_configuration.eni_private_ip_address #=> String
    #   resp.sessions[0].network_access_configuration.eni_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeSessions AWS API Documentation
    #
    # @overload describe_sessions(params = {})
    # @param [Hash] params ({})
    def describe_sessions(params = {}, options = {})
      req = build_request(:describe_sessions, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified stacks, if the
    # stack names are provided. Otherwise, all stacks in the account are
    # described.
    #
    # @option params [Array<String>] :names
    #   The names of the stacks to describe.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeStacksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStacksResult#stacks #stacks} => Array&lt;Types::Stack&gt;
    #   * {Types::DescribeStacksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stacks({
    #     names: ["String"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.stacks #=> Array
    #   resp.stacks[0].arn #=> String
    #   resp.stacks[0].name #=> String
    #   resp.stacks[0].description #=> String
    #   resp.stacks[0].display_name #=> String
    #   resp.stacks[0].created_time #=> Time
    #   resp.stacks[0].storage_connectors #=> Array
    #   resp.stacks[0].storage_connectors[0].connector_type #=> String, one of "HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"
    #   resp.stacks[0].storage_connectors[0].resource_identifier #=> String
    #   resp.stacks[0].storage_connectors[0].domains #=> Array
    #   resp.stacks[0].storage_connectors[0].domains[0] #=> String
    #   resp.stacks[0].redirect_url #=> String
    #   resp.stacks[0].feedback_url #=> String
    #   resp.stacks[0].stack_errors #=> Array
    #   resp.stacks[0].stack_errors[0].error_code #=> String, one of "STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"
    #   resp.stacks[0].stack_errors[0].error_message #=> String
    #   resp.stacks[0].user_settings #=> Array
    #   resp.stacks[0].user_settings[0].action #=> String, one of "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN"
    #   resp.stacks[0].user_settings[0].permission #=> String, one of "ENABLED", "DISABLED"
    #   resp.stacks[0].application_settings.enabled #=> Boolean
    #   resp.stacks[0].application_settings.settings_group #=> String
    #   resp.stacks[0].application_settings.s3_bucket_name #=> String
    #   resp.stacks[0].access_endpoints #=> Array
    #   resp.stacks[0].access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.stacks[0].access_endpoints[0].vpce_id #=> String
    #   resp.stacks[0].embed_host_domains #=> Array
    #   resp.stacks[0].embed_host_domains[0] #=> String
    #   resp.stacks[0].streaming_experience_settings.preferred_protocol #=> String, one of "TCP", "UDP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeStacks AWS API Documentation
    #
    # @overload describe_stacks(params = {})
    # @param [Hash] params ({})
    def describe_stacks(params = {}, options = {})
      req = build_request(:describe_stacks, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more usage report
    # subscriptions.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeUsageReportSubscriptionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUsageReportSubscriptionsResult#usage_report_subscriptions #usage_report_subscriptions} => Array&lt;Types::UsageReportSubscription&gt;
    #   * {Types::DescribeUsageReportSubscriptionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_usage_report_subscriptions({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_report_subscriptions #=> Array
    #   resp.usage_report_subscriptions[0].s3_bucket_name #=> String
    #   resp.usage_report_subscriptions[0].schedule #=> String, one of "DAILY"
    #   resp.usage_report_subscriptions[0].last_generated_report_date #=> Time
    #   resp.usage_report_subscriptions[0].subscription_errors #=> Array
    #   resp.usage_report_subscriptions[0].subscription_errors[0].error_code #=> String, one of "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"
    #   resp.usage_report_subscriptions[0].subscription_errors[0].error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeUsageReportSubscriptions AWS API Documentation
    #
    # @overload describe_usage_report_subscriptions(params = {})
    # @param [Hash] params ({})
    def describe_usage_report_subscriptions(params = {}, options = {})
      req = build_request(:describe_usage_report_subscriptions, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the UserStackAssociation objects. You
    # must specify either or both of the following:
    #
    # * The stack name
    #
    # * The user name (email address of the user associated with the stack)
    #   and the authentication type for the user
    #
    # @option params [String] :stack_name
    #   The name of the stack that is associated with the user.
    #
    # @option params [String] :user_name
    #   The email address of the user who is associated with the stack.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive.
    #
    #    </note>
    #
    # @option params [String] :authentication_type
    #   The authentication type for the user who is associated with the stack.
    #   You must specify USERPOOL.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeUserStackAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserStackAssociationsResult#user_stack_associations #user_stack_associations} => Array&lt;Types::UserStackAssociation&gt;
    #   * {Types::DescribeUserStackAssociationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_stack_associations({
    #     stack_name: "String",
    #     user_name: "Username",
    #     authentication_type: "API", # accepts API, SAML, USERPOOL, AWS_AD
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_stack_associations #=> Array
    #   resp.user_stack_associations[0].stack_name #=> String
    #   resp.user_stack_associations[0].user_name #=> String
    #   resp.user_stack_associations[0].authentication_type #=> String, one of "API", "SAML", "USERPOOL", "AWS_AD"
    #   resp.user_stack_associations[0].send_email_notification #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeUserStackAssociations AWS API Documentation
    #
    # @overload describe_user_stack_associations(params = {})
    # @param [Hash] params ({})
    def describe_user_stack_associations(params = {}, options = {})
      req = build_request(:describe_user_stack_associations, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified users in the
    # user pool.
    #
    # @option params [required, String] :authentication_type
    #   The authentication type for the users in the user pool to describe.
    #   You must specify USERPOOL.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeUsersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUsersResult#users #users} => Array&lt;Types::User&gt;
    #   * {Types::DescribeUsersResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_users({
    #     authentication_type: "API", # required, accepts API, SAML, USERPOOL, AWS_AD
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].arn #=> String
    #   resp.users[0].user_name #=> String
    #   resp.users[0].enabled #=> Boolean
    #   resp.users[0].status #=> String
    #   resp.users[0].first_name #=> String
    #   resp.users[0].last_name #=> String
    #   resp.users[0].created_time #=> Time
    #   resp.users[0].authentication_type #=> String, one of "API", "SAML", "USERPOOL", "AWS_AD"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeUsers AWS API Documentation
    #
    # @overload describe_users(params = {})
    # @param [Hash] params ({})
    def describe_users(params = {}, options = {})
      req = build_request(:describe_users, params)
      req.send_request(options)
    end

    # Disables the specified user in the user pool. Users can't sign in to
    # AppStream 2.0 until they are re-enabled. This action does not delete
    # the user.
    #
    # @option params [required, String] :user_name
    #   The email address of the user.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive.
    #
    #    </note>
    #
    # @option params [required, String] :authentication_type
    #   The authentication type for the user. You must specify USERPOOL.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_user({
    #     user_name: "Username", # required
    #     authentication_type: "API", # required, accepts API, SAML, USERPOOL, AWS_AD
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisableUser AWS API Documentation
    #
    # @overload disable_user(params = {})
    # @param [Hash] params ({})
    def disable_user(params = {}, options = {})
      req = build_request(:disable_user, params)
      req.send_request(options)
    end

    # Disassociates a specified app block builder from a specified app
    # block.
    #
    # @option params [required, String] :app_block_arn
    #   The ARN of the app block.
    #
    # @option params [required, String] :app_block_builder_name
    #   The name of the app block builder.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_app_block_builder_app_block({
    #     app_block_arn: "Arn", # required
    #     app_block_builder_name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisassociateAppBlockBuilderAppBlock AWS API Documentation
    #
    # @overload disassociate_app_block_builder_app_block(params = {})
    # @param [Hash] params ({})
    def disassociate_app_block_builder_app_block(params = {}, options = {})
      req = build_request(:disassociate_app_block_builder_app_block, params)
      req.send_request(options)
    end

    # Disassociates the specified application from the fleet.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [required, String] :application_arn
    #   The ARN of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_application_fleet({
    #     fleet_name: "Name", # required
    #     application_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisassociateApplicationFleet AWS API Documentation
    #
    # @overload disassociate_application_fleet(params = {})
    # @param [Hash] params ({})
    def disassociate_application_fleet(params = {}, options = {})
      req = build_request(:disassociate_application_fleet, params)
      req.send_request(options)
    end

    # Deletes the specified application from the specified entitlement.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack with which the entitlement is associated.
    #
    # @option params [required, String] :entitlement_name
    #   The name of the entitlement.
    #
    # @option params [required, String] :application_identifier
    #   The identifier of the application to remove from the entitlement.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_application_from_entitlement({
    #     stack_name: "Name", # required
    #     entitlement_name: "Name", # required
    #     application_identifier: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisassociateApplicationFromEntitlement AWS API Documentation
    #
    # @overload disassociate_application_from_entitlement(params = {})
    # @param [Hash] params ({})
    def disassociate_application_from_entitlement(params = {}, options = {})
      req = build_request(:disassociate_application_from_entitlement, params)
      req.send_request(options)
    end

    # Disassociates the specified fleet from the specified stack.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_fleet({
    #     fleet_name: "String", # required
    #     stack_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisassociateFleet AWS API Documentation
    #
    # @overload disassociate_fleet(params = {})
    # @param [Hash] params ({})
    def disassociate_fleet(params = {}, options = {})
      req = build_request(:disassociate_fleet, params)
      req.send_request(options)
    end

    # Enables a user in the user pool. After being enabled, users can sign
    # in to AppStream 2.0 and open applications from the stacks to which
    # they are assigned.
    #
    # @option params [required, String] :user_name
    #   The email address of the user.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive. During login, if they
    #   specify an email address that doesn't use the same capitalization as
    #   the email address specified when their user pool account was created,
    #   a "user does not exist" error message displays.
    #
    #    </note>
    #
    # @option params [required, String] :authentication_type
    #   The authentication type for the user. You must specify USERPOOL.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_user({
    #     user_name: "Username", # required
    #     authentication_type: "API", # required, accepts API, SAML, USERPOOL, AWS_AD
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/EnableUser AWS API Documentation
    #
    # @overload enable_user(params = {})
    # @param [Hash] params ({})
    def enable_user(params = {}, options = {})
      req = build_request(:enable_user, params)
      req.send_request(options)
    end

    # Immediately stops the specified streaming session.
    #
    # @option params [required, String] :session_id
    #   The identifier of the streaming session.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.expire_session({
    #     session_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ExpireSession AWS API Documentation
    #
    # @overload expire_session(params = {})
    # @param [Hash] params ({})
    def expire_session(params = {}, options = {})
      req = build_request(:expire_session, params)
      req.send_request(options)
    end

    # Retrieves the name of the fleet that is associated with the specified
    # stack.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListAssociatedFleetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedFleetsResult#names #names} => Array&lt;String&gt;
    #   * {Types::ListAssociatedFleetsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_fleets({
    #     stack_name: "String", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.names #=> Array
    #   resp.names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedFleets AWS API Documentation
    #
    # @overload list_associated_fleets(params = {})
    # @param [Hash] params ({})
    def list_associated_fleets(params = {}, options = {})
      req = build_request(:list_associated_fleets, params)
      req.send_request(options)
    end

    # Retrieves the name of the stack with which the specified fleet is
    # associated.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListAssociatedStacksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedStacksResult#names #names} => Array&lt;String&gt;
    #   * {Types::ListAssociatedStacksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_stacks({
    #     fleet_name: "String", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.names #=> Array
    #   resp.names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedStacks AWS API Documentation
    #
    # @overload list_associated_stacks(params = {})
    # @param [Hash] params ({})
    def list_associated_stacks(params = {}, options = {})
      req = build_request(:list_associated_stacks, params)
      req.send_request(options)
    end

    # Retrieves a list of entitled applications.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack with which the entitlement is associated.
    #
    # @option params [required, String] :entitlement_name
    #   The name of the entitlement.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @return [Types::ListEntitledApplicationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitledApplicationsResult#entitled_applications #entitled_applications} => Array&lt;Types::EntitledApplication&gt;
    #   * {Types::ListEntitledApplicationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entitled_applications({
    #     stack_name: "Name", # required
    #     entitlement_name: "Name", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entitled_applications #=> Array
    #   resp.entitled_applications[0].application_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListEntitledApplications AWS API Documentation
    #
    # @overload list_entitled_applications(params = {})
    # @param [Hash] params ({})
    def list_entitled_applications(params = {}, options = {})
      req = build_request(:list_entitled_applications, params)
      req.send_request(options)
    end

    # Retrieves a list of all tags for the specified AppStream 2.0 resource.
    # You can tag AppStream 2.0 image builders, images, fleets, and stacks.
    #
    # For more information about tags, see [Tagging Your Resources][1] in
    # the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts an app block builder.
    #
    # An app block builder can only be started when it's associated with an
    # app block.
    #
    # Starting an app block builder starts a new instance, which is
    # equivalent to an elastic fleet instance with application builder
    # assistance functionality.
    #
    # @option params [required, String] :name
    #   The name of the app block builder.
    #
    # @return [Types::StartAppBlockBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAppBlockBuilderResult#app_block_builder #app_block_builder} => Types::AppBlockBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_app_block_builder({
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_block_builder.arn #=> String
    #   resp.app_block_builder.name #=> String
    #   resp.app_block_builder.display_name #=> String
    #   resp.app_block_builder.description #=> String
    #   resp.app_block_builder.platform #=> String, one of "WINDOWS_SERVER_2019"
    #   resp.app_block_builder.instance_type #=> String
    #   resp.app_block_builder.enable_default_internet_access #=> Boolean
    #   resp.app_block_builder.iam_role_arn #=> String
    #   resp.app_block_builder.vpc_config.subnet_ids #=> Array
    #   resp.app_block_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.app_block_builder.vpc_config.security_group_ids #=> Array
    #   resp.app_block_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.app_block_builder.state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.app_block_builder.created_time #=> Time
    #   resp.app_block_builder.app_block_builder_errors #=> Array
    #   resp.app_block_builder.app_block_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.app_block_builder.app_block_builder_errors[0].error_message #=> String
    #   resp.app_block_builder.app_block_builder_errors[0].error_timestamp #=> Time
    #   resp.app_block_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR"
    #   resp.app_block_builder.state_change_reason.message #=> String
    #   resp.app_block_builder.access_endpoints #=> Array
    #   resp.app_block_builder.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.app_block_builder.access_endpoints[0].vpce_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartAppBlockBuilder AWS API Documentation
    #
    # @overload start_app_block_builder(params = {})
    # @param [Hash] params ({})
    def start_app_block_builder(params = {}, options = {})
      req = build_request(:start_app_block_builder, params)
      req.send_request(options)
    end

    # Starts the specified fleet.
    #
    # @option params [required, String] :name
    #   The name of the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fleet({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartFleet AWS API Documentation
    #
    # @overload start_fleet(params = {})
    # @param [Hash] params ({})
    def start_fleet(params = {}, options = {})
      req = build_request(:start_fleet, params)
      req.send_request(options)
    end

    # Starts the specified image builder.
    #
    # @option params [required, String] :name
    #   The name of the image builder.
    #
    # @option params [String] :appstream_agent_version
    #   The version of the AppStream 2.0 agent to use for this image builder.
    #   To use the latest version of the AppStream 2.0 agent, specify
    #   \[LATEST\].
    #
    # @return [Types::StartImageBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImageBuilderResult#image_builder #image_builder} => Types::ImageBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_image_builder({
    #     name: "String", # required
    #     appstream_agent_version: "AppstreamAgentVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builder.name #=> String
    #   resp.image_builder.arn #=> String
    #   resp.image_builder.image_arn #=> String
    #   resp.image_builder.description #=> String
    #   resp.image_builder.display_name #=> String
    #   resp.image_builder.vpc_config.subnet_ids #=> Array
    #   resp.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.image_builder.vpc_config.security_group_ids #=> Array
    #   resp.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.image_builder.instance_type #=> String
    #   resp.image_builder.platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.image_builder.iam_role_arn #=> String
    #   resp.image_builder.state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"
    #   resp.image_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builder.state_change_reason.message #=> String
    #   resp.image_builder.created_time #=> Time
    #   resp.image_builder.enable_default_internet_access #=> Boolean
    #   resp.image_builder.domain_join_info.directory_name #=> String
    #   resp.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builder.network_access_configuration.eni_private_ip_address #=> String
    #   resp.image_builder.network_access_configuration.eni_id #=> String
    #   resp.image_builder.image_builder_errors #=> Array
    #   resp.image_builder.image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builder.appstream_agent_version #=> String
    #   resp.image_builder.access_endpoints #=> Array
    #   resp.image_builder.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.image_builder.access_endpoints[0].vpce_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartImageBuilder AWS API Documentation
    #
    # @overload start_image_builder(params = {})
    # @param [Hash] params ({})
    def start_image_builder(params = {}, options = {})
      req = build_request(:start_image_builder, params)
      req.send_request(options)
    end

    # Stops an app block builder.
    #
    # Stopping an app block builder terminates the instance, and the
    # instance state is not persisted.
    #
    # @option params [required, String] :name
    #   The name of the app block builder.
    #
    # @return [Types::StopAppBlockBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopAppBlockBuilderResult#app_block_builder #app_block_builder} => Types::AppBlockBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_app_block_builder({
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_block_builder.arn #=> String
    #   resp.app_block_builder.name #=> String
    #   resp.app_block_builder.display_name #=> String
    #   resp.app_block_builder.description #=> String
    #   resp.app_block_builder.platform #=> String, one of "WINDOWS_SERVER_2019"
    #   resp.app_block_builder.instance_type #=> String
    #   resp.app_block_builder.enable_default_internet_access #=> Boolean
    #   resp.app_block_builder.iam_role_arn #=> String
    #   resp.app_block_builder.vpc_config.subnet_ids #=> Array
    #   resp.app_block_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.app_block_builder.vpc_config.security_group_ids #=> Array
    #   resp.app_block_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.app_block_builder.state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.app_block_builder.created_time #=> Time
    #   resp.app_block_builder.app_block_builder_errors #=> Array
    #   resp.app_block_builder.app_block_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.app_block_builder.app_block_builder_errors[0].error_message #=> String
    #   resp.app_block_builder.app_block_builder_errors[0].error_timestamp #=> Time
    #   resp.app_block_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR"
    #   resp.app_block_builder.state_change_reason.message #=> String
    #   resp.app_block_builder.access_endpoints #=> Array
    #   resp.app_block_builder.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.app_block_builder.access_endpoints[0].vpce_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopAppBlockBuilder AWS API Documentation
    #
    # @overload stop_app_block_builder(params = {})
    # @param [Hash] params ({})
    def stop_app_block_builder(params = {}, options = {})
      req = build_request(:stop_app_block_builder, params)
      req.send_request(options)
    end

    # Stops the specified fleet.
    #
    # @option params [required, String] :name
    #   The name of the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_fleet({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopFleet AWS API Documentation
    #
    # @overload stop_fleet(params = {})
    # @param [Hash] params ({})
    def stop_fleet(params = {}, options = {})
      req = build_request(:stop_fleet, params)
      req.send_request(options)
    end

    # Stops the specified image builder.
    #
    # @option params [required, String] :name
    #   The name of the image builder.
    #
    # @return [Types::StopImageBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopImageBuilderResult#image_builder #image_builder} => Types::ImageBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_image_builder({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builder.name #=> String
    #   resp.image_builder.arn #=> String
    #   resp.image_builder.image_arn #=> String
    #   resp.image_builder.description #=> String
    #   resp.image_builder.display_name #=> String
    #   resp.image_builder.vpc_config.subnet_ids #=> Array
    #   resp.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.image_builder.vpc_config.security_group_ids #=> Array
    #   resp.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.image_builder.instance_type #=> String
    #   resp.image_builder.platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.image_builder.iam_role_arn #=> String
    #   resp.image_builder.state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"
    #   resp.image_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builder.state_change_reason.message #=> String
    #   resp.image_builder.created_time #=> Time
    #   resp.image_builder.enable_default_internet_access #=> Boolean
    #   resp.image_builder.domain_join_info.directory_name #=> String
    #   resp.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builder.network_access_configuration.eni_private_ip_address #=> String
    #   resp.image_builder.network_access_configuration.eni_id #=> String
    #   resp.image_builder.image_builder_errors #=> Array
    #   resp.image_builder.image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builder.appstream_agent_version #=> String
    #   resp.image_builder.access_endpoints #=> Array
    #   resp.image_builder.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.image_builder.access_endpoints[0].vpce_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopImageBuilder AWS API Documentation
    #
    # @overload stop_image_builder(params = {})
    # @param [Hash] params ({})
    def stop_image_builder(params = {}, options = {})
      req = build_request(:stop_image_builder, params)
      req.send_request(options)
    end

    # Adds or overwrites one or more tags for the specified AppStream 2.0
    # resource. You can tag AppStream 2.0 image builders, images, fleets,
    # and stacks.
    #
    # Each tag consists of a key and an optional value. If a resource
    # already has a tag with the same key, this operation updates its value.
    #
    # To list the current tags for your resources, use ListTagsForResource.
    # To disassociate tags from your resources, use UntagResource.
    #
    # For more information about tags, see [Tagging Your Resources][1] in
    # the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to associate. A tag is a key-value pair, and the value is
    #   optional. For example, Environment=Test. If you do not specify a
    #   value, Environment=.
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Disassociates one or more specified tags from the specified AppStream
    # 2.0 resource.
    #
    # To list the current tags for your resources, use ListTagsForResource.
    #
    # For more information about tags, see [Tagging Your Resources][1] in
    # the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys for the tags to disassociate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an app block builder.
    #
    # If the app block builder is in the `STARTING` or `STOPPING` state, you
    # can't update it. If the app block builder is in the `RUNNING` state,
    # you can only update the DisplayName and Description. If the app block
    # builder is in the `STOPPED` state, you can update any attribute except
    # the Name.
    #
    # @option params [required, String] :name
    #   The unique name for the app block builder.
    #
    # @option params [String] :description
    #   The description of the app block builder.
    #
    # @option params [String] :display_name
    #   The display name of the app block builder.
    #
    # @option params [String] :platform
    #   The platform of the app block builder.
    #
    #   `WINDOWS_SERVER_2019` is the only valid value.
    #
    # @option params [String] :instance_type
    #   The instance type to use when launching the app block builder. The
    #   following instance types are available:
    #
    #   * stream.standard.small
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.standard.xlarge
    #
    #   * stream.standard.2xlarge
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the app block builder.
    #
    #   App block builders require that you specify at least two subnets in
    #   different availability zones.
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the app block builder.
    #
    # @option params [String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to apply to the app
    #   block builder. To assume a role, the app block builder calls the AWS
    #   Security Token Service (STS) `AssumeRole` API operation and passes the
    #   ARN of the role to use. The operation creates a new session with
    #   temporary credentials. AppStream 2.0 retrieves the temporary
    #   credentials and creates the **appstream\_machine\_role** credential
    #   profile on the instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
    #
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   The list of interface VPC endpoint (interface endpoint) objects.
    #   Administrators can connect to the app block builder only through the
    #   specified endpoints.
    #
    # @option params [Array<String>] :attributes_to_delete
    #   The attributes to delete from the app block builder.
    #
    # @return [Types::UpdateAppBlockBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppBlockBuilderResult#app_block_builder #app_block_builder} => Types::AppBlockBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_block_builder({
    #     name: "Name", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     platform: "WINDOWS", # accepts WINDOWS, WINDOWS_SERVER_2016, WINDOWS_SERVER_2019, AMAZON_LINUX2
    #     instance_type: "String",
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     enable_default_internet_access: false,
    #     iam_role_arn: "Arn",
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING", # required, accepts STREAMING
    #         vpce_id: "String",
    #       },
    #     ],
    #     attributes_to_delete: ["IAM_ROLE_ARN"], # accepts IAM_ROLE_ARN, ACCESS_ENDPOINTS, VPC_CONFIGURATION_SECURITY_GROUP_IDS
    #   })
    #
    # @example Response structure
    #
    #   resp.app_block_builder.arn #=> String
    #   resp.app_block_builder.name #=> String
    #   resp.app_block_builder.display_name #=> String
    #   resp.app_block_builder.description #=> String
    #   resp.app_block_builder.platform #=> String, one of "WINDOWS_SERVER_2019"
    #   resp.app_block_builder.instance_type #=> String
    #   resp.app_block_builder.enable_default_internet_access #=> Boolean
    #   resp.app_block_builder.iam_role_arn #=> String
    #   resp.app_block_builder.vpc_config.subnet_ids #=> Array
    #   resp.app_block_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.app_block_builder.vpc_config.security_group_ids #=> Array
    #   resp.app_block_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.app_block_builder.state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.app_block_builder.created_time #=> Time
    #   resp.app_block_builder.app_block_builder_errors #=> Array
    #   resp.app_block_builder.app_block_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.app_block_builder.app_block_builder_errors[0].error_message #=> String
    #   resp.app_block_builder.app_block_builder_errors[0].error_timestamp #=> Time
    #   resp.app_block_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR"
    #   resp.app_block_builder.state_change_reason.message #=> String
    #   resp.app_block_builder.access_endpoints #=> Array
    #   resp.app_block_builder.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.app_block_builder.access_endpoints[0].vpce_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateAppBlockBuilder AWS API Documentation
    #
    # @overload update_app_block_builder(params = {})
    # @param [Hash] params ({})
    def update_app_block_builder(params = {}, options = {})
      req = build_request(:update_app_block_builder, params)
      req.send_request(options)
    end

    # Updates the specified application.
    #
    # @option params [required, String] :name
    #   The name of the application. This name is visible to users when
    #   display name is not specified.
    #
    # @option params [String] :display_name
    #   The display name of the application. This name is visible to users in
    #   the application catalog.
    #
    # @option params [String] :description
    #   The description of the application.
    #
    # @option params [Types::S3Location] :icon_s3_location
    #   The icon S3 location of the application.
    #
    # @option params [String] :launch_path
    #   The launch path of the application.
    #
    # @option params [String] :working_directory
    #   The working directory of the application.
    #
    # @option params [String] :launch_parameters
    #   The launch parameters of the application.
    #
    # @option params [String] :app_block_arn
    #   The ARN of the app block.
    #
    # @option params [Array<String>] :attributes_to_delete
    #   The attributes to delete for an application.
    #
    # @return [Types::UpdateApplicationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationResult#application #application} => Types::Application
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     name: "Name", # required
    #     display_name: "DisplayName",
    #     description: "Description",
    #     icon_s3_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     launch_path: "String",
    #     working_directory: "String",
    #     launch_parameters: "String",
    #     app_block_arn: "Arn",
    #     attributes_to_delete: ["LAUNCH_PARAMETERS"], # accepts LAUNCH_PARAMETERS, WORKING_DIRECTORY
    #   })
    #
    # @example Response structure
    #
    #   resp.application.name #=> String
    #   resp.application.display_name #=> String
    #   resp.application.icon_url #=> String
    #   resp.application.launch_path #=> String
    #   resp.application.launch_parameters #=> String
    #   resp.application.enabled #=> Boolean
    #   resp.application.metadata #=> Hash
    #   resp.application.metadata["String"] #=> String
    #   resp.application.working_directory #=> String
    #   resp.application.description #=> String
    #   resp.application.arn #=> String
    #   resp.application.app_block_arn #=> String
    #   resp.application.icon_s3_location.s3_bucket #=> String
    #   resp.application.icon_s3_location.s3_key #=> String
    #   resp.application.platforms #=> Array
    #   resp.application.platforms[0] #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.application.instance_families #=> Array
    #   resp.application.instance_families[0] #=> String
    #   resp.application.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates the specified Directory Config object in AppStream 2.0. This
    # object includes the configuration information required to join fleets
    # and image builders to Microsoft Active Directory domains.
    #
    # @option params [required, String] :directory_name
    #   The name of the Directory Config object.
    #
    # @option params [Array<String>] :organizational_unit_distinguished_names
    #   The distinguished names of the organizational units for computer
    #   accounts.
    #
    # @option params [Types::ServiceAccountCredentials] :service_account_credentials
    #   The credentials for the service account used by the fleet or image
    #   builder to connect to the directory.
    #
    # @option params [Types::CertificateBasedAuthProperties] :certificate_based_auth_properties
    #   The certificate-based authentication properties used to authenticate
    #   SAML 2.0 Identity Provider (IdP) user identities to Active Directory
    #   domain-joined streaming instances. Fallback is turned on by default
    #   when certificate-based authentication is **Enabled** . Fallback allows
    #   users to log in using their AD domain password if certificate-based
    #   authentication is unsuccessful, or to unlock a desktop lock screen.
    #   **Enabled\_no\_directory\_login\_fallback** enables certificate-based
    #   authentication, but does not allow users to log in using their AD
    #   domain password. Users will be disconnected to re-authenticate using
    #   certificates.
    #
    # @return [Types::UpdateDirectoryConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDirectoryConfigResult#directory_config #directory_config} => Types::DirectoryConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_directory_config({
    #     directory_name: "DirectoryName", # required
    #     organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"],
    #     service_account_credentials: {
    #       account_name: "AccountName", # required
    #       account_password: "AccountPassword", # required
    #     },
    #     certificate_based_auth_properties: {
    #       status: "DISABLED", # accepts DISABLED, ENABLED, ENABLED_NO_DIRECTORY_LOGIN_FALLBACK
    #       certificate_authority_arn: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_config.directory_name #=> String
    #   resp.directory_config.organizational_unit_distinguished_names #=> Array
    #   resp.directory_config.organizational_unit_distinguished_names[0] #=> String
    #   resp.directory_config.service_account_credentials.account_name #=> String
    #   resp.directory_config.service_account_credentials.account_password #=> String
    #   resp.directory_config.created_time #=> Time
    #   resp.directory_config.certificate_based_auth_properties.status #=> String, one of "DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"
    #   resp.directory_config.certificate_based_auth_properties.certificate_authority_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateDirectoryConfig AWS API Documentation
    #
    # @overload update_directory_config(params = {})
    # @param [Hash] params ({})
    def update_directory_config(params = {}, options = {})
      req = build_request(:update_directory_config, params)
      req.send_request(options)
    end

    # Updates the specified entitlement.
    #
    # @option params [required, String] :name
    #   The name of the entitlement.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack with which the entitlement is associated.
    #
    # @option params [String] :description
    #   The description of the entitlement.
    #
    # @option params [String] :app_visibility
    #   Specifies whether all or only selected apps are entitled.
    #
    # @option params [Array<Types::EntitlementAttribute>] :attributes
    #   The attributes of the entitlement.
    #
    # @return [Types::UpdateEntitlementResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEntitlementResult#entitlement #entitlement} => Types::Entitlement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_entitlement({
    #     name: "Name", # required
    #     stack_name: "Name", # required
    #     description: "Description",
    #     app_visibility: "ALL", # accepts ALL, ASSOCIATED
    #     attributes: [
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlement.name #=> String
    #   resp.entitlement.stack_name #=> String
    #   resp.entitlement.description #=> String
    #   resp.entitlement.app_visibility #=> String, one of "ALL", "ASSOCIATED"
    #   resp.entitlement.attributes #=> Array
    #   resp.entitlement.attributes[0].name #=> String
    #   resp.entitlement.attributes[0].value #=> String
    #   resp.entitlement.created_time #=> Time
    #   resp.entitlement.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateEntitlement AWS API Documentation
    #
    # @overload update_entitlement(params = {})
    # @param [Hash] params ({})
    def update_entitlement(params = {}, options = {})
      req = build_request(:update_entitlement, params)
      req.send_request(options)
    end

    # Updates the specified fleet.
    #
    # If the fleet is in the `STOPPED` state, you can update any attribute
    # except the fleet name.
    #
    # If the fleet is in the `RUNNING` state, you can update the following
    # based on the fleet type:
    #
    # * Always-On and On-Demand fleet types
    #
    #   You can update the `DisplayName`, `ComputeCapacity`, `ImageARN`,
    #   `ImageName`, `IdleDisconnectTimeoutInSeconds`, and
    #   `DisconnectTimeoutInSeconds` attributes.
    #
    # * Elastic fleet type
    #
    #   You can update the `DisplayName`, `IdleDisconnectTimeoutInSeconds`,
    #   `DisconnectTimeoutInSeconds`, `MaxConcurrentSessions`,
    #   `SessionScriptS3Location` and `UsbDeviceFilterStrings` attributes.
    #
    # If the fleet is in the `STARTING` or `STOPPED` state, you can't
    # update it.
    #
    # @option params [String] :image_name
    #   The name of the image used to create the fleet.
    #
    # @option params [String] :image_arn
    #   The ARN of the public, private, or shared image to use.
    #
    # @option params [String] :name
    #   A unique name for the fleet.
    #
    # @option params [String] :instance_type
    #   The instance type to use when launching fleet instances. The following
    #   instance types are available:
    #
    #   * stream.standard.small
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.standard.xlarge
    #
    #   * stream.standard.2xlarge
    #
    #   * stream.compute.large
    #
    #   * stream.compute.xlarge
    #
    #   * stream.compute.2xlarge
    #
    #   * stream.compute.4xlarge
    #
    #   * stream.compute.8xlarge
    #
    #   * stream.memory.large
    #
    #   * stream.memory.xlarge
    #
    #   * stream.memory.2xlarge
    #
    #   * stream.memory.4xlarge
    #
    #   * stream.memory.8xlarge
    #
    #   * stream.memory.z1d.large
    #
    #   * stream.memory.z1d.xlarge
    #
    #   * stream.memory.z1d.2xlarge
    #
    #   * stream.memory.z1d.3xlarge
    #
    #   * stream.memory.z1d.6xlarge
    #
    #   * stream.memory.z1d.12xlarge
    #
    #   * stream.graphics-design.large
    #
    #   * stream.graphics-design.xlarge
    #
    #   * stream.graphics-design.2xlarge
    #
    #   * stream.graphics-design.4xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #
    #   * stream.graphics.g4dn.xlarge
    #
    #   * stream.graphics.g4dn.2xlarge
    #
    #   * stream.graphics.g4dn.4xlarge
    #
    #   * stream.graphics.g4dn.8xlarge
    #
    #   * stream.graphics.g4dn.12xlarge
    #
    #   * stream.graphics.g4dn.16xlarge
    #
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #
    #   The following instance types are available for Elastic fleets:
    #
    #   * stream.standard.small
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.standard.xlarge
    #
    #   * stream.standard.2xlarge
    #
    # @option params [Types::ComputeCapacity] :compute_capacity
    #   The desired capacity for the fleet. This is not allowed for Elastic
    #   fleets.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the fleet. This is required for Elastic
    #   fleets, but not required for other fleet types. Elastic fleets require
    #   that you specify at least two subnets in different availability zones.
    #
    # @option params [Integer] :max_user_duration_in_seconds
    #   The maximum amount of time that a streaming session can remain active,
    #   in seconds. If users are still connected to a streaming instance five
    #   minutes before this limit is reached, they are prompted to save any
    #   open documents before being disconnected. After this time elapses, the
    #   instance is terminated and replaced by a new instance.
    #
    #   Specify a value between 600 and 432000.
    #
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   The amount of time that a streaming session remains active after users
    #   disconnect. If users try to reconnect to the streaming session after a
    #   disconnection or network interruption within this time interval, they
    #   are connected to their previous session. Otherwise, they are connected
    #   to a new session with a new streaming instance.
    #
    #   Specify a value between 60 and 360000.
    #
    # @option params [Boolean] :delete_vpc_config
    #   Deletes the VPC association for the specified fleet.
    #
    # @option params [String] :description
    #   The description to display.
    #
    # @option params [String] :display_name
    #   The fleet name to display.
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   The name of the directory and organizational unit (OU) to use to join
    #   the fleet to a Microsoft Active Directory domain.
    #
    # @option params [Integer] :idle_disconnect_timeout_in_seconds
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the
    #   `DisconnectTimeoutInSeconds` time interval begins. Users are notified
    #   before they are disconnected due to inactivity. If users try to
    #   reconnect to the streaming session before the time interval specified
    #   in `DisconnectTimeoutInSeconds` elapses, they are connected to their
    #   previous session. Users are considered idle when they stop providing
    #   keyboard or mouse input during their streaming session. File uploads
    #   and downloads, audio in, audio out, and pixels changing do not qualify
    #   as user activity. If users continue to be idle after the time interval
    #   in `IdleDisconnectTimeoutInSeconds` elapses, they are disconnected.
    #
    #   To prevent users from being disconnected due to inactivity, specify a
    #   value of 0. Otherwise, specify a value between 60 and 3600. The
    #   default value is 0.
    #
    #   <note markdown="1"> If you enable this feature, we recommend that you specify a value that
    #   corresponds exactly to a whole number of minutes (for example, 60,
    #   120, and 180). If you don't do this, the value is rounded to the
    #   nearest minute. For example, if you specify a value of 70, users are
    #   disconnected after 1 minute of inactivity. If you specify a value that
    #   is at the midpoint between two different minutes, the value is rounded
    #   up. For example, if you specify a value of 90, users are disconnected
    #   after 2 minutes of inactivity.
    #
    #    </note>
    #
    # @option params [Array<String>] :attributes_to_delete
    #   The fleet attributes to delete.
    #
    # @option params [String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to apply to the fleet.
    #   To assume a role, a fleet instance calls the AWS Security Token
    #   Service (STS) `AssumeRole` API operation and passes the ARN of the
    #   role to use. The operation creates a new session with temporary
    #   credentials. AppStream 2.0 retrieves the temporary credentials and
    #   creates the **appstream\_machine\_role** credential profile on the
    #   instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
    #
    # @option params [String] :stream_view
    #   The AppStream 2.0 view that is displayed to your users when they
    #   stream from the fleet. When `APP` is specified, only the windows of
    #   applications opened by users display. When `DESKTOP` is specified, the
    #   standard desktop that is provided by the operating system displays.
    #
    #   The default value is `APP`.
    #
    # @option params [String] :platform
    #   The platform of the fleet. WINDOWS\_SERVER\_2019 and AMAZON\_LINUX2
    #   are supported for Elastic fleets.
    #
    # @option params [Integer] :max_concurrent_sessions
    #   The maximum number of concurrent sessions for a fleet.
    #
    # @option params [Array<String>] :usb_device_filter_strings
    #   The USB device filter strings that specify which USB devices a user
    #   can redirect to the fleet streaming session, when using the Windows
    #   native client. This is allowed but not required for Elastic fleets.
    #
    # @option params [Types::S3Location] :session_script_s3_location
    #   The S3 location of the session scripts configuration zip file. This
    #   only applies to Elastic fleets.
    #
    # @return [Types::UpdateFleetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetResult#fleet #fleet} => Types::Fleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet({
    #     image_name: "String",
    #     image_arn: "Arn",
    #     name: "String",
    #     instance_type: "String",
    #     compute_capacity: {
    #       desired_instances: 1, # required
    #     },
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     max_user_duration_in_seconds: 1,
    #     disconnect_timeout_in_seconds: 1,
    #     delete_vpc_config: false,
    #     description: "Description",
    #     display_name: "DisplayName",
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: "DirectoryName",
    #       organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #     },
    #     idle_disconnect_timeout_in_seconds: 1,
    #     attributes_to_delete: ["VPC_CONFIGURATION"], # accepts VPC_CONFIGURATION, VPC_CONFIGURATION_SECURITY_GROUP_IDS, DOMAIN_JOIN_INFO, IAM_ROLE_ARN, USB_DEVICE_FILTER_STRINGS, SESSION_SCRIPT_S3_LOCATION
    #     iam_role_arn: "Arn",
    #     stream_view: "APP", # accepts APP, DESKTOP
    #     platform: "WINDOWS", # accepts WINDOWS, WINDOWS_SERVER_2016, WINDOWS_SERVER_2019, AMAZON_LINUX2
    #     max_concurrent_sessions: 1,
    #     usb_device_filter_strings: ["UsbDeviceFilterString"],
    #     session_script_s3_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet.arn #=> String
    #   resp.fleet.name #=> String
    #   resp.fleet.display_name #=> String
    #   resp.fleet.description #=> String
    #   resp.fleet.image_name #=> String
    #   resp.fleet.image_arn #=> String
    #   resp.fleet.instance_type #=> String
    #   resp.fleet.fleet_type #=> String, one of "ALWAYS_ON", "ON_DEMAND", "ELASTIC"
    #   resp.fleet.compute_capacity_status.desired #=> Integer
    #   resp.fleet.compute_capacity_status.running #=> Integer
    #   resp.fleet.compute_capacity_status.in_use #=> Integer
    #   resp.fleet.compute_capacity_status.available #=> Integer
    #   resp.fleet.max_user_duration_in_seconds #=> Integer
    #   resp.fleet.disconnect_timeout_in_seconds #=> Integer
    #   resp.fleet.state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.fleet.vpc_config.subnet_ids #=> Array
    #   resp.fleet.vpc_config.subnet_ids[0] #=> String
    #   resp.fleet.vpc_config.security_group_ids #=> Array
    #   resp.fleet.vpc_config.security_group_ids[0] #=> String
    #   resp.fleet.created_time #=> Time
    #   resp.fleet.fleet_errors #=> Array
    #   resp.fleet.fleet_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.fleet.fleet_errors[0].error_message #=> String
    #   resp.fleet.enable_default_internet_access #=> Boolean
    #   resp.fleet.domain_join_info.directory_name #=> String
    #   resp.fleet.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.fleet.idle_disconnect_timeout_in_seconds #=> Integer
    #   resp.fleet.iam_role_arn #=> String
    #   resp.fleet.stream_view #=> String, one of "APP", "DESKTOP"
    #   resp.fleet.platform #=> String, one of "WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"
    #   resp.fleet.max_concurrent_sessions #=> Integer
    #   resp.fleet.usb_device_filter_strings #=> Array
    #   resp.fleet.usb_device_filter_strings[0] #=> String
    #   resp.fleet.session_script_s3_location.s3_bucket #=> String
    #   resp.fleet.session_script_s3_location.s3_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateFleet AWS API Documentation
    #
    # @overload update_fleet(params = {})
    # @param [Hash] params ({})
    def update_fleet(params = {}, options = {})
      req = build_request(:update_fleet, params)
      req.send_request(options)
    end

    # Adds or updates permissions for the specified private image.
    #
    # @option params [required, String] :name
    #   The name of the private image.
    #
    # @option params [required, String] :shared_account_id
    #   The 12-digit identifier of the AWS account for which you want add or
    #   update image permissions.
    #
    # @option params [required, Types::ImagePermissions] :image_permissions
    #   The permissions for the image.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_image_permissions({
    #     name: "Name", # required
    #     shared_account_id: "AwsAccountId", # required
    #     image_permissions: { # required
    #       allow_fleet: false,
    #       allow_image_builder: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateImagePermissions AWS API Documentation
    #
    # @overload update_image_permissions(params = {})
    # @param [Hash] params ({})
    def update_image_permissions(params = {}, options = {})
      req = build_request(:update_image_permissions, params)
      req.send_request(options)
    end

    # Updates the specified fields for the specified stack.
    #
    # @option params [String] :display_name
    #   The stack name to display.
    #
    # @option params [String] :description
    #   The description to display.
    #
    # @option params [required, String] :name
    #   The name of the stack.
    #
    # @option params [Array<Types::StorageConnector>] :storage_connectors
    #   The storage connectors to enable.
    #
    # @option params [Boolean] :delete_storage_connectors
    #   Deletes the storage connectors currently enabled for the stack.
    #
    # @option params [String] :redirect_url
    #   The URL that users are redirected to after their streaming session
    #   ends.
    #
    # @option params [String] :feedback_url
    #   The URL that users are redirected to after they choose the Send
    #   Feedback link. If no URL is specified, no Send Feedback link is
    #   displayed.
    #
    # @option params [Array<String>] :attributes_to_delete
    #   The stack attributes to delete.
    #
    # @option params [Array<Types::UserSetting>] :user_settings
    #   The actions that are enabled or disabled for users during their
    #   streaming sessions. By default, these actions are enabled.
    #
    # @option params [Types::ApplicationSettings] :application_settings
    #   The persistent application settings for users of a stack. When these
    #   settings are enabled, changes that users make to applications and
    #   Windows settings are automatically saved after each session and
    #   applied to the next session.
    #
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   The list of interface VPC endpoint (interface endpoint) objects. Users
    #   of the stack can connect to AppStream 2.0 only through the specified
    #   endpoints.
    #
    # @option params [Array<String>] :embed_host_domains
    #   The domains where AppStream 2.0 streaming sessions can be embedded in
    #   an iframe. You must approve the domains that you want to host embedded
    #   AppStream 2.0 streaming sessions.
    #
    # @option params [Types::StreamingExperienceSettings] :streaming_experience_settings
    #   The streaming protocol you want your stack to prefer. This can be UDP
    #   or TCP. Currently, UDP is only supported in the Windows native client.
    #
    # @return [Types::UpdateStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackResult#stack #stack} => Types::Stack
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack({
    #     display_name: "DisplayName",
    #     description: "Description",
    #     name: "String", # required
    #     storage_connectors: [
    #       {
    #         connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS, GOOGLE_DRIVE, ONE_DRIVE
    #         resource_identifier: "ResourceIdentifier",
    #         domains: ["Domain"],
    #       },
    #     ],
    #     delete_storage_connectors: false,
    #     redirect_url: "RedirectURL",
    #     feedback_url: "FeedbackURL",
    #     attributes_to_delete: ["STORAGE_CONNECTORS"], # accepts STORAGE_CONNECTORS, STORAGE_CONNECTOR_HOMEFOLDERS, STORAGE_CONNECTOR_GOOGLE_DRIVE, STORAGE_CONNECTOR_ONE_DRIVE, REDIRECT_URL, FEEDBACK_URL, THEME_NAME, USER_SETTINGS, EMBED_HOST_DOMAINS, IAM_ROLE_ARN, ACCESS_ENDPOINTS, STREAMING_EXPERIENCE_SETTINGS
    #     user_settings: [
    #       {
    #         action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", # required, accepts CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE, DOMAIN_PASSWORD_SIGNIN, DOMAIN_SMART_CARD_SIGNIN
    #         permission: "ENABLED", # required, accepts ENABLED, DISABLED
    #       },
    #     ],
    #     application_settings: {
    #       enabled: false, # required
    #       settings_group: "SettingsGroup",
    #     },
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING", # required, accepts STREAMING
    #         vpce_id: "String",
    #       },
    #     ],
    #     embed_host_domains: ["EmbedHostDomain"],
    #     streaming_experience_settings: {
    #       preferred_protocol: "TCP", # accepts TCP, UDP
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stack.arn #=> String
    #   resp.stack.name #=> String
    #   resp.stack.description #=> String
    #   resp.stack.display_name #=> String
    #   resp.stack.created_time #=> Time
    #   resp.stack.storage_connectors #=> Array
    #   resp.stack.storage_connectors[0].connector_type #=> String, one of "HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"
    #   resp.stack.storage_connectors[0].resource_identifier #=> String
    #   resp.stack.storage_connectors[0].domains #=> Array
    #   resp.stack.storage_connectors[0].domains[0] #=> String
    #   resp.stack.redirect_url #=> String
    #   resp.stack.feedback_url #=> String
    #   resp.stack.stack_errors #=> Array
    #   resp.stack.stack_errors[0].error_code #=> String, one of "STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"
    #   resp.stack.stack_errors[0].error_message #=> String
    #   resp.stack.user_settings #=> Array
    #   resp.stack.user_settings[0].action #=> String, one of "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN"
    #   resp.stack.user_settings[0].permission #=> String, one of "ENABLED", "DISABLED"
    #   resp.stack.application_settings.enabled #=> Boolean
    #   resp.stack.application_settings.settings_group #=> String
    #   resp.stack.application_settings.s3_bucket_name #=> String
    #   resp.stack.access_endpoints #=> Array
    #   resp.stack.access_endpoints[0].endpoint_type #=> String, one of "STREAMING"
    #   resp.stack.access_endpoints[0].vpce_id #=> String
    #   resp.stack.embed_host_domains #=> Array
    #   resp.stack.embed_host_domains[0] #=> String
    #   resp.stack.streaming_experience_settings.preferred_protocol #=> String, one of "TCP", "UDP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateStack AWS API Documentation
    #
    # @overload update_stack(params = {})
    # @param [Hash] params ({})
    def update_stack(params = {}, options = {})
      req = build_request(:update_stack, params)
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
      context[:gem_name] = 'aws-sdk-appstream'
      context[:gem_version] = '1.76.0'
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
    # | waiter_name   | params                   | :delay   | :max_attempts |
    # | ------------- | ------------------------ | -------- | ------------- |
    # | fleet_started | {Client#describe_fleets} | 30       | 40            |
    # | fleet_stopped | {Client#describe_fleets} | 30       | 40            |
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
        fleet_started: Waiters::FleetStarted,
        fleet_stopped: Waiters::FleetStopped
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
