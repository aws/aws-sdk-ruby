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
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lambda)

module Aws::Lambda
  # An API client for Lambda.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Lambda::Client.new(
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

    @identifier = :lambda

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
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::Lambda::Plugins::Endpoints)

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
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Aws::Lambda::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Lambda::EndpointParameters`
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

    # Adds permissions to the resource-based policy of a version of an
    # [Lambda layer][1]. Use this action to grant layer usage permission to
    # other accounts. You can grant permission to a single account, all
    # accounts in an organization, or all Amazon Web Services accounts.
    #
    # To revoke permission, call RemoveLayerVersionPermission with the
    # statement ID that you specified when you added it.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @option params [required, String] :statement_id
    #   An identifier that distinguishes the policy from others on the same
    #   layer version.
    #
    # @option params [required, String] :action
    #   The API action that grants access to the layer. For example,
    #   `lambda:GetLayerVersion`.
    #
    # @option params [required, String] :principal
    #   An account ID, or `*` to grant layer usage permission to all accounts
    #   in an organization, or all Amazon Web Services accounts (if
    #   `organizationId` is not specified). For the last case, make sure that
    #   you really do want all Amazon Web Services accounts to have usage
    #   permission to this layer.
    #
    # @option params [String] :organization_id
    #   With the principal set to `*`, grant permission to all accounts in the
    #   specified organization.
    #
    # @option params [String] :revision_id
    #   Only update the policy if the revision ID matches the ID specified.
    #   Use this option to avoid modifying a policy that has changed since you
    #   last read it.
    #
    # @return [Types::AddLayerVersionPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddLayerVersionPermissionResponse#statement #statement} => String
    #   * {Types::AddLayerVersionPermissionResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_layer_version_permission({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #     statement_id: "StatementId", # required
    #     action: "LayerPermissionAllowedAction", # required
    #     principal: "LayerPermissionAllowedPrincipal", # required
    #     organization_id: "OrganizationId",
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.statement #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddLayerVersionPermission AWS API Documentation
    #
    # @overload add_layer_version_permission(params = {})
    # @param [Hash] params ({})
    def add_layer_version_permission(params = {}, options = {})
      req = build_request(:add_layer_version_permission, params)
      req.send_request(options)
    end

    # Grants an Amazon Web Service, Amazon Web Services account, or Amazon
    # Web Services organization permission to use a function. You can apply
    # the policy at the function level, or specify a qualifier to restrict
    # access to a single version or alias. If you use a qualifier, the
    # invoker must use the full Amazon Resource Name (ARN) of that version
    # or alias to invoke the function. Note: Lambda does not support adding
    # policies to version $LATEST.
    #
    # To grant permission to another account, specify the account ID as the
    # `Principal`. To grant permission to an organization defined in
    # Organizations, specify the organization ID as the `PrincipalOrgID`.
    # For Amazon Web Services, the principal is a domain-style identifier
    # that the service defines, such as `s3.amazonaws.com` or
    # `sns.amazonaws.com`. For Amazon Web Services, you can also specify the
    # ARN of the associated resource as the `SourceArn`. If you grant
    # permission to a service principal without specifying the source, other
    # accounts could potentially configure resources in their account to
    # invoke your Lambda function.
    #
    # This operation adds a statement to a resource-based permissions policy
    # for the function. For more information about function policies, see
    # [Using resource-based policies for Lambda][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :statement_id
    #   A statement identifier that differentiates the statement from others
    #   in the same policy.
    #
    # @option params [required, String] :action
    #   The action that the principal can use on the function. For example,
    #   `lambda:InvokeFunction` or `lambda:GetFunction`.
    #
    # @option params [required, String] :principal
    #   The Amazon Web Service or Amazon Web Services account that invokes the
    #   function. If you specify a service, use `SourceArn` or `SourceAccount`
    #   to limit who can invoke the function through that service.
    #
    # @option params [String] :source_arn
    #   For Amazon Web Services, the ARN of the Amazon Web Services resource
    #   that invokes the function. For example, an Amazon S3 bucket or Amazon
    #   SNS topic.
    #
    #   Note that Lambda configures the comparison using the `StringLike`
    #   operator.
    #
    # @option params [String] :source_account
    #   For Amazon Web Service, the ID of the Amazon Web Services account that
    #   owns the resource. Use this together with `SourceArn` to ensure that
    #   the specified account owns the resource. It is possible for an Amazon
    #   S3 bucket to be deleted by its owner and recreated by another account.
    #
    # @option params [String] :event_source_token
    #   For Alexa Smart Home functions, a token that the invoker must supply.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to add permissions to a published version
    #   of the function.
    #
    # @option params [String] :revision_id
    #   Update the policy only if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a policy that has
    #   changed since you last read it.
    #
    # @option params [String] :principal_org_id
    #   The identifier for your organization in Organizations. Use this to
    #   grant permissions to all the Amazon Web Services accounts under this
    #   organization.
    #
    # @option params [String] :function_url_auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users only.
    #   Set to `NONE` if you want to bypass IAM authentication to create a
    #   public endpoint. For more information, see [Security and auth model
    #   for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #
    # @return [Types::AddPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddPermissionResponse#statement #statement} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_permission({
    #     function_name: "FunctionName", # required
    #     statement_id: "StatementId", # required
    #     action: "Action", # required
    #     principal: "Principal", # required
    #     source_arn: "Arn",
    #     source_account: "SourceOwner",
    #     event_source_token: "EventSourceToken",
    #     qualifier: "Qualifier",
    #     revision_id: "String",
    #     principal_org_id: "PrincipalOrgID",
    #     function_url_auth_type: "NONE", # accepts NONE, AWS_IAM
    #   })
    #
    # @example Response structure
    #
    #   resp.statement #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddPermission AWS API Documentation
    #
    # @overload add_permission(params = {})
    # @param [Hash] params ({})
    def add_permission(params = {}, options = {})
      req = build_request(:add_permission, params)
      req.send_request(options)
    end

    # Creates an [alias][1] for a Lambda function version. Use aliases to
    # provide clients with a function identifier that you can update to
    # invoke a different version.
    #
    # You can also map an alias to split invocation requests between two
    # versions. Use the `RoutingConfig` parameter to specify a second
    # version and the percentage of invocation requests that it receives.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   The name of the alias.
    #
    # @option params [required, String] :function_version
    #   The function version that the alias invokes.
    #
    # @option params [String] :description
    #   A description of the alias.
    #
    # @option params [Types::AliasRoutingConfiguration] :routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing
    #
    # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AliasConfiguration#alias_arn #alias_arn} => String
    #   * {Types::AliasConfiguration#name #name} => String
    #   * {Types::AliasConfiguration#function_version #function_version} => String
    #   * {Types::AliasConfiguration#description #description} => String
    #   * {Types::AliasConfiguration#routing_config #routing_config} => Types::AliasRoutingConfiguration
    #   * {Types::AliasConfiguration#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "Version", # required
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_arn #=> String
    #   resp.name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config.additional_version_weights #=> Hash
    #   resp.routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates a code signing configuration. A [code signing
    # configuration][1] defines a list of allowed signing profiles and
    # defines the code-signing validation policy (action to be taken if
    # deployment validation checks fail).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html
    #
    # @option params [String] :description
    #   Descriptive name for this code signing configuration.
    #
    # @option params [required, Types::AllowedPublishers] :allowed_publishers
    #   Signing profiles for this code signing configuration.
    #
    # @option params [Types::CodeSigningPolicies] :code_signing_policies
    #   The code signing policies define the actions to take if the validation
    #   checks fail.
    #
    # @return [Types::CreateCodeSigningConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCodeSigningConfigResponse#code_signing_config #code_signing_config} => Types::CodeSigningConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_signing_config({
    #     description: "Description",
    #     allowed_publishers: { # required
    #       signing_profile_version_arns: ["Arn"], # required
    #     },
    #     code_signing_policies: {
    #       untrusted_artifact_on_deployment: "Warn", # accepts Warn, Enforce
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_signing_config.code_signing_config_id #=> String
    #   resp.code_signing_config.code_signing_config_arn #=> String
    #   resp.code_signing_config.description #=> String
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns #=> Array
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.code_signing_config.code_signing_policies.untrusted_artifact_on_deployment #=> String, one of "Warn", "Enforce"
    #   resp.code_signing_config.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateCodeSigningConfig AWS API Documentation
    #
    # @overload create_code_signing_config(params = {})
    # @param [Hash] params ({})
    def create_code_signing_config(params = {}, options = {})
      req = build_request(:create_code_signing_config, params)
      req.send_request(options)
    end

    # Creates a mapping between an event source and an Lambda function.
    # Lambda reads items from the event source and invokes the function.
    #
    # For details about how to configure different event sources, see the
    # following topics.
    #
    # * [ Amazon DynamoDB Streams][1]
    #
    # * [ Amazon Kinesis][2]
    #
    # * [ Amazon SQS][3]
    #
    # * [ Amazon MQ and RabbitMQ][4]
    #
    # * [ Amazon MSK][5]
    #
    # * [ Apache Kafka][6]
    #
    # * [ Amazon DocumentDB][7]
    #
    # The following error handling options are available only for stream
    # sources (DynamoDB and Kinesis):
    #
    # * `BisectBatchOnFunctionError` – If the function returns an error,
    #   split the batch in two and retry.
    #
    # * `DestinationConfig` – Send discarded records to an Amazon SQS queue
    #   or Amazon SNS topic.
    #
    # * `MaximumRecordAgeInSeconds` – Discard records older than the
    #   specified age. The default value is infinite (-1). When set to
    #   infinite (-1), failed records are retried until the record expires
    #
    # * `MaximumRetryAttempts` – Discard records after the specified number
    #   of retries. The default value is infinite (-1). When set to infinite
    #   (-1), failed records are retried until the record expires.
    #
    # * `ParallelizationFactor` – Process multiple batches from each shard
    #   concurrently.
    #
    # For information about which configuration parameters apply to each
    # event source, see the following topics.
    #
    # * [ Amazon DynamoDB Streams][8]
    #
    # * [ Amazon Kinesis][9]
    #
    # * [ Amazon SQS][10]
    #
    # * [ Amazon MQ and RabbitMQ][11]
    #
    # * [ Amazon MSK][12]
    #
    # * [ Apache Kafka][13]
    #
    # * [ Amazon DocumentDB][14]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource
    # [4]: https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping
    # [5]: https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html
    # [6]: https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html
    # [7]: https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html
    # [8]: https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params
    # [9]: https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params
    # [10]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params
    # [11]: https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params
    # [12]: https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms
    # [13]: https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms
    # [14]: https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration
    #
    # @option params [String] :event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #
    #   * **Amazon Kinesis** – The ARN of the data stream or a stream
    #     consumer.
    #
    #   * **Amazon DynamoDB Streams** – The ARN of the stream.
    #
    #   * **Amazon Simple Queue Service** – The ARN of the queue.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** – The ARN of the
    #     cluster.
    #
    #   * **Amazon MQ** – The ARN of the broker.
    #
    #   * **Amazon DocumentDB** – The ARN of the DocumentDB change stream.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `MyFunction`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** – `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #
    # @option params [Boolean] :enabled
    #   When true, the event source mapping is active. When false, Lambda
    #   pauses polling and invocation.
    #
    #   Default: True
    #
    # @option params [Integer] :batch_size
    #   The maximum number of records in each batch that Lambda pulls from
    #   your stream or queue and sends to your function. Lambda passes all of
    #   the records in the batch to the function in a single call, up to the
    #   payload limit for synchronous invocation (6 MB).
    #
    #   * **Amazon Kinesis** – Default 100. Max 10,000.
    #
    #   * **Amazon DynamoDB Streams** – Default 100. Max 10,000.
    #
    #   * **Amazon Simple Queue Service** – Default 10. For standard queues
    #     the max is 10,000. For FIFO queues the max is 10.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** – Default 100. Max
    #     10,000.
    #
    #   * **Self-managed Apache Kafka** – Default 100. Max 10,000.
    #
    #   * **Amazon MQ (ActiveMQ and RabbitMQ)** – Default 100. Max 10,000.
    #
    #   * **DocumentDB** – Default 100. Max 10,000.
    #
    # @option params [Types::FilterCriteria] :filter_criteria
    #   An object that defines the filter criteria that determine whether
    #   Lambda should process an event. For more information, see [Lambda
    #   event filtering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html
    #
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   The maximum amount of time, in seconds, that Lambda spends gathering
    #   records before invoking the function. You can configure
    #   `MaximumBatchingWindowInSeconds` to any value from 0 seconds to 300
    #   seconds in increments of seconds.
    #
    #   For streams and Amazon SQS event sources, the default batching window
    #   is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ,
    #   and DocumentDB event sources, the default batching window is 500 ms.
    #   Note that because you can only change `MaximumBatchingWindowInSeconds`
    #   in increments of seconds, you cannot revert back to the 500 ms default
    #   batching window after you have changed it. To restore the default
    #   batching window, you must create a new event source mapping.
    #
    #   Related setting: For streams and Amazon SQS event sources, when you
    #   set `BatchSize` to a value greater than 10, you must set
    #   `MaximumBatchingWindowInSeconds` to at least 1.
    #
    # @option params [Integer] :parallelization_factor
    #   (Kinesis and DynamoDB Streams only) The number of batches to process
    #   from each shard concurrently.
    #
    # @option params [String] :starting_position
    #   The position in a stream from which to start reading. Required for
    #   Amazon Kinesis and Amazon DynamoDB Stream event sources.
    #   `AT_TIMESTAMP` is supported only for Amazon Kinesis streams, Amazon
    #   DocumentDB, Amazon MSK, and self-managed Apache Kafka.
    #
    # @option params [Time,DateTime,Date,Integer,String] :starting_position_timestamp
    #   With `StartingPosition` set to `AT_TIMESTAMP`, the time from which to
    #   start reading. `StartingPositionTimestamp` cannot be in the future.
    #
    # @option params [Types::DestinationConfig] :destination_config
    #   (Kinesis and DynamoDB Streams only) A standard Amazon SQS queue or
    #   standard Amazon SNS topic destination for discarded records.
    #
    # @option params [Integer] :maximum_record_age_in_seconds
    #   (Kinesis and DynamoDB Streams only) Discard records older than the
    #   specified age. The default value is infinite (-1).
    #
    # @option params [Boolean] :bisect_batch_on_function_error
    #   (Kinesis and DynamoDB Streams only) If the function returns an error,
    #   split the batch in two and retry.
    #
    # @option params [Integer] :maximum_retry_attempts
    #   (Kinesis and DynamoDB Streams only) Discard records after the
    #   specified number of retries. The default value is infinite (-1). When
    #   set to infinite (-1), failed records are retried until the record
    #   expires.
    #
    # @option params [Integer] :tumbling_window_in_seconds
    #   (Kinesis and DynamoDB Streams only) The duration in seconds of a
    #   processing window for DynamoDB and Kinesis Streams event sources. A
    #   value of 0 seconds indicates no tumbling window.
    #
    # @option params [Array<String>] :topics
    #   The name of the Kafka topic.
    #
    # @option params [Array<String>] :queues
    #   (MQ) The name of the Amazon MQ broker destination queue to consume.
    #
    # @option params [Array<Types::SourceAccessConfiguration>] :source_access_configurations
    #   An array of authentication protocols or VPC components required to
    #   secure your event source.
    #
    # @option params [Types::SelfManagedEventSource] :self_managed_event_source
    #   The self-managed Apache Kafka cluster to receive records from.
    #
    # @option params [Array<String>] :function_response_types
    #   (Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response
    #   type enums applied to the event source mapping.
    #
    # @option params [Types::AmazonManagedKafkaEventSourceConfig] :amazon_managed_kafka_event_source_config
    #   Specific configuration settings for an Amazon Managed Streaming for
    #   Apache Kafka (Amazon MSK) event source.
    #
    # @option params [Types::SelfManagedKafkaEventSourceConfig] :self_managed_kafka_event_source_config
    #   Specific configuration settings for a self-managed Apache Kafka event
    #   source.
    #
    # @option params [Types::ScalingConfig] :scaling_config
    #   (Amazon SQS only) The scaling configuration for the event source. For
    #   more information, see [Configuring maximum concurrency for Amazon SQS
    #   event sources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency
    #
    # @option params [Types::DocumentDBEventSourceConfig] :document_db_event_source_config
    #   Specific configuration settings for a DocumentDB event source.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#starting_position #starting_position} => String
    #   * {Types::EventSourceMappingConfiguration#starting_position_timestamp #starting_position_timestamp} => Time
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#maximum_batching_window_in_seconds #maximum_batching_window_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#parallelization_factor #parallelization_factor} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#filter_criteria #filter_criteria} => Types::FilterCriteria
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #   * {Types::EventSourceMappingConfiguration#destination_config #destination_config} => Types::DestinationConfig
    #   * {Types::EventSourceMappingConfiguration#topics #topics} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#queues #queues} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#source_access_configurations #source_access_configurations} => Array&lt;Types::SourceAccessConfiguration&gt;
    #   * {Types::EventSourceMappingConfiguration#self_managed_event_source #self_managed_event_source} => Types::SelfManagedEventSource
    #   * {Types::EventSourceMappingConfiguration#maximum_record_age_in_seconds #maximum_record_age_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#bisect_batch_on_function_error #bisect_batch_on_function_error} => Boolean
    #   * {Types::EventSourceMappingConfiguration#maximum_retry_attempts #maximum_retry_attempts} => Integer
    #   * {Types::EventSourceMappingConfiguration#tumbling_window_in_seconds #tumbling_window_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#function_response_types #function_response_types} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#amazon_managed_kafka_event_source_config #amazon_managed_kafka_event_source_config} => Types::AmazonManagedKafkaEventSourceConfig
    #   * {Types::EventSourceMappingConfiguration#self_managed_kafka_event_source_config #self_managed_kafka_event_source_config} => Types::SelfManagedKafkaEventSourceConfig
    #   * {Types::EventSourceMappingConfiguration#scaling_config #scaling_config} => Types::ScalingConfig
    #   * {Types::EventSourceMappingConfiguration#document_db_event_source_config #document_db_event_source_config} => Types::DocumentDBEventSourceConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_source_mapping({
    #     event_source_arn: "Arn",
    #     function_name: "FunctionName", # required
    #     enabled: false,
    #     batch_size: 1,
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern",
    #         },
    #       ],
    #     },
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     starting_position: "TRIM_HORIZON", # accepts TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #     starting_position_timestamp: Time.now,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn",
    #       },
    #       on_failure: {
    #         destination: "DestinationArn",
    #       },
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH", # accepts BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH, VIRTUAL_HOST, CLIENT_CERTIFICATE_TLS_AUTH, SERVER_ROOT_CA_CERTIFICATE
    #         uri: "URI",
    #       },
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "KAFKA_BOOTSTRAP_SERVERS" => ["Endpoint"],
    #       },
    #     },
    #     function_response_types: ["ReportBatchItemFailures"], # accepts ReportBatchItemFailures
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1,
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup", # accepts UpdateLookup, Default
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.starting_position #=> String, one of "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"
    #   resp.starting_position_timestamp #=> Time
    #   resp.batch_size #=> Integer
    #   resp.maximum_batching_window_in_seconds #=> Integer
    #   resp.parallelization_factor #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.filter_criteria.filters #=> Array
    #   resp.filter_criteria.filters[0].pattern #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure.destination #=> String
    #   resp.topics #=> Array
    #   resp.topics[0] #=> String
    #   resp.queues #=> Array
    #   resp.queues[0] #=> String
    #   resp.source_access_configurations #=> Array
    #   resp.source_access_configurations[0].type #=> String, one of "BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"
    #   resp.source_access_configurations[0].uri #=> String
    #   resp.self_managed_event_source.endpoints #=> Hash
    #   resp.self_managed_event_source.endpoints["EndPointType"] #=> Array
    #   resp.self_managed_event_source.endpoints["EndPointType"][0] #=> String
    #   resp.maximum_record_age_in_seconds #=> Integer
    #   resp.bisect_batch_on_function_error #=> Boolean
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.tumbling_window_in_seconds #=> Integer
    #   resp.function_response_types #=> Array
    #   resp.function_response_types[0] #=> String, one of "ReportBatchItemFailures"
    #   resp.amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.scaling_config.maximum_concurrency #=> Integer
    #   resp.document_db_event_source_config.database_name #=> String
    #   resp.document_db_event_source_config.collection_name #=> String
    #   resp.document_db_event_source_config.full_document #=> String, one of "UpdateLookup", "Default"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateEventSourceMapping AWS API Documentation
    #
    # @overload create_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def create_event_source_mapping(params = {}, options = {})
      req = build_request(:create_event_source_mapping, params)
      req.send_request(options)
    end

    # Creates a Lambda function. To create a function, you need a
    # [deployment package][1] and an [execution role][2]. The deployment
    # package is a .zip file archive or container image that contains your
    # function code. The execution role grants the function permission to
    # use Amazon Web Services, such as Amazon CloudWatch Logs for log
    # streaming and X-Ray for request tracing.
    #
    # If the deployment package is a [container image][3], then you set the
    # package type to `Image`. For a container image, the code property must
    # include the URI of a container image in the Amazon ECR registry. You
    # do not need to specify the handler and runtime properties.
    #
    # If the deployment package is a [.zip file archive][4], then you set
    # the package type to `Zip`. For a .zip file archive, the code property
    # specifies the location of the .zip file. You must also specify the
    # handler and runtime properties. The code in the deployment package
    # must be compatible with the target instruction set architecture of the
    # function (`x86-64` or `arm64`). If you do not specify the
    # architecture, then the default value is `x86-64`.
    #
    # When you create a function, Lambda provisions an instance of the
    # function and its supporting resources. If your function connects to a
    # VPC, this process can take a minute or so. During this time, you
    # can't invoke or modify the function. The `State`, `StateReason`, and
    # `StateReasonCode` fields in the response from GetFunctionConfiguration
    # indicate when the function is ready to invoke. For more information,
    # see [Lambda function states][5].
    #
    # A function has an unpublished version, and can have published versions
    # and aliases. The unpublished version changes when you update your
    # function's code and configuration. A published version is a snapshot
    # of your function code and configuration that can't be changed. An
    # alias is a named resource that maps to a version, and can be changed
    # to map to a different version. Use the `Publish` parameter to create
    # version `1` of your function from its initial configuration.
    #
    # The other parameters let you configure version-specific and
    # function-level settings. You can modify version-specific settings
    # later with UpdateFunctionConfiguration. Function-level settings apply
    # to both the unpublished and published versions of the function, and
    # include tags (TagResource) and per-function concurrency limits
    # (PutFunctionConcurrency).
    #
    # You can use code signing if your deployment package is a .zip file
    # archive. To enable code signing for this function, specify the ARN of
    # a code-signing configuration. When a user attempts to deploy a code
    # package with UpdateFunctionCode, Lambda checks that the code package
    # has a valid signature from a trusted publisher. The code-signing
    # configuration includes set of signing profiles, which define the
    # trusted publishers for this function.
    #
    # If another Amazon Web Services account or an Amazon Web Service
    # invokes your function, use AddPermission to grant permission by
    # creating a resource-based Identity and Access Management (IAM) policy.
    # You can grant permissions at the function level, on a version, or on
    # an alias.
    #
    # To invoke your function directly, use Invoke. To invoke your function
    # in response to events in other Amazon Web Services, create an event
    # source mapping (CreateEventSourceMapping), or configure a function
    # trigger in the other service. For more information, see [Invoking
    # Lambda functions][6].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html
    # [4]: https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip
    # [5]: https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html
    # [6]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :runtime
    #   The identifier of the function's [runtime][1]. Runtime is required if
    #   the deployment package is a .zip file archive.
    #
    #   The following list includes deprecated runtimes. For more information,
    #   see [Runtime deprecation policy][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #
    # @option params [required, String] :role
    #   The Amazon Resource Name (ARN) of the function's execution role.
    #
    # @option params [String] :handler
    #   The name of the method within your code that Lambda calls to run your
    #   function. Handler is required if the deployment package is a .zip file
    #   archive. The format includes the file name. It can also include
    #   namespaces and other qualifiers, depending on the runtime. For more
    #   information, see [Lambda programming model][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html
    #
    # @option params [required, Types::FunctionCode] :code
    #   The code for the function.
    #
    # @option params [String] :description
    #   A description of the function.
    #
    # @option params [Integer] :timeout
    #   The amount of time (in seconds) that Lambda allows a function to run
    #   before stopping it. The default is 3 seconds. The maximum allowed
    #   value is 900 seconds. For more information, see [Lambda execution
    #   environment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html
    #
    # @option params [Integer] :memory_size
    #   The amount of [memory available to the function][1] at runtime.
    #   Increasing the function memory also increases its CPU allocation. The
    #   default value is 128 MB. The value can be any multiple of 1 MB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console
    #
    # @option params [Boolean] :publish
    #   Set to true to publish the first version of the function during
    #   creation.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   For network connectivity to Amazon Web Services resources in a VPC,
    #   specify a list of security groups and subnets in the VPC. When you
    #   connect a function to a VPC, it can access resources and the internet
    #   only through that VPC. For more information, see [Configuring a Lambda
    #   function to access resources in a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #
    # @option params [String] :package_type
    #   The type of deployment package. Set to `Image` for container image and
    #   set to `Zip` for .zip file archive.
    #
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   A dead-letter queue configuration that specifies the queue or topic
    #   where Lambda sends asynchronous events when they fail processing. For
    #   more information, see [Dead-letter queues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq
    #
    # @option params [Types::Environment] :environment
    #   Environment variables that are accessible from function code during
    #   execution.
    #
    # @option params [String] :kms_key_arn
    #   The ARN of the Key Management Service (KMS) customer managed key
    #   that's used to encrypt your function's [environment variables][1].
    #   When [Lambda SnapStart][2] is activated, Lambda also uses this key is
    #   to encrypt your function's snapshot. If you deploy your function
    #   using a container image, Lambda also uses this key to encrypt your
    #   function when it's deployed. Note that this is not the same key
    #   that's used to protect your container image in the Amazon Elastic
    #   Container Registry (Amazon ECR). If you don't provide a customer
    #   managed key, Lambda uses a default service key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html
    #
    # @option params [Types::TracingConfig] :tracing_config
    #   Set `Mode` to `Active` to sample and trace a subset of incoming
    #   requests with [X-Ray][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html
    #
    # @option params [Hash<String,String>] :tags
    #   A list of [tags][1] to apply to the function.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [Array<String>] :layers
    #   A list of [function layers][1] to add to the function's execution
    #   environment. Specify each layer by its ARN, including the version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [Array<Types::FileSystemConfig>] :file_system_configs
    #   Connection settings for an Amazon EFS file system.
    #
    # @option params [Types::ImageConfig] :image_config
    #   Container image [configuration values][1] that override the values in
    #   the container image Dockerfile.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-images.html#configuration-images-settings
    #
    # @option params [String] :code_signing_config_arn
    #   To enable code signing for this function, specify the ARN of a
    #   code-signing configuration. A code-signing configuration includes a
    #   set of signing profiles, which define the trusted publishers for this
    #   function.
    #
    # @option params [Array<String>] :architectures
    #   The instruction set architecture that the function supports. Enter a
    #   string array with one of the valid values (arm64 or x86\_64). The
    #   default value is `x86_64`.
    #
    # @option params [Types::EphemeralStorage] :ephemeral_storage
    #   The size of the function's `/tmp` directory in MB. The default value
    #   is 512, but can be any whole number between 512 and 10,240 MB.
    #
    # @option params [Types::SnapStart] :snap_start
    #   The function's [SnapStart][1] setting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #   * {Types::FunctionConfiguration#state #state} => String
    #   * {Types::FunctionConfiguration#state_reason #state_reason} => String
    #   * {Types::FunctionConfiguration#state_reason_code #state_reason_code} => String
    #   * {Types::FunctionConfiguration#last_update_status #last_update_status} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason #last_update_status_reason} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason_code #last_update_status_reason_code} => String
    #   * {Types::FunctionConfiguration#file_system_configs #file_system_configs} => Array&lt;Types::FileSystemConfig&gt;
    #   * {Types::FunctionConfiguration#package_type #package_type} => String
    #   * {Types::FunctionConfiguration#image_config_response #image_config_response} => Types::ImageConfigResponse
    #   * {Types::FunctionConfiguration#signing_profile_version_arn #signing_profile_version_arn} => String
    #   * {Types::FunctionConfiguration#signing_job_arn #signing_job_arn} => String
    #   * {Types::FunctionConfiguration#architectures #architectures} => Array&lt;String&gt;
    #   * {Types::FunctionConfiguration#ephemeral_storage #ephemeral_storage} => Types::EphemeralStorage
    #   * {Types::FunctionConfiguration#snap_start #snap_start} => Types::SnapStartResponse
    #   * {Types::FunctionConfiguration#runtime_version_config #runtime_version_config} => Types::RuntimeVersionConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function({
    #     function_name: "FunctionName", # required
    #     runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2
    #     role: "RoleArn", # required
    #     handler: "Handler",
    #     code: { # required
    #       zip_file: "data",
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #       image_uri: "String",
    #     },
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     publish: false,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     package_type: "Zip", # accepts Zip, Image
    #     dead_letter_config: {
    #       target_arn: "ResourceArn",
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue",
    #       },
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active", # accepts Active, PassThrough
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     layers: ["LayerVersionArn"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       },
    #     ],
    #     image_config: {
    #       entry_point: ["String"],
    #       command: ["String"],
    #       working_directory: "WorkingDirectory",
    #     },
    #     code_signing_config_arn: "CodeSigningConfigArn",
    #     architectures: ["x86_64"], # accepts x86_64, arm64
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions", # accepts PublishedVersions, None
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of "Pending", "Active", "Inactive", "Failed"
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of "Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.file_system_configs #=> Array
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of "Zip", "Image"
    #   resp.image_config_response.image_config.entry_point #=> Array
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array
    #   resp.image_config_response.image_config.command[0] #=> String
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #   resp.architectures #=> Array
    #   resp.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.ephemeral_storage.size #=> Integer
    #   resp.snap_start.apply_on #=> String, one of "PublishedVersions", "None"
    #   resp.snap_start.optimization_status #=> String, one of "On", "Off"
    #   resp.runtime_version_config.runtime_version_arn #=> String
    #   resp.runtime_version_config.error.error_code #=> String
    #   resp.runtime_version_config.error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateFunction AWS API Documentation
    #
    # @overload create_function(params = {})
    # @param [Hash] params ({})
    def create_function(params = {}, options = {})
      req = build_request(:create_function, params)
      req.send_request(options)
    end

    # Creates a Lambda function URL with the specified configuration
    # parameters. A function URL is a dedicated HTTP(S) endpoint that you
    # can use to invoke your function.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   The alias name.
    #
    # @option params [required, String] :auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users only.
    #   Set to `NONE` if you want to bypass IAM authentication to create a
    #   public endpoint. For more information, see [Security and auth model
    #   for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #
    # @option params [Types::Cors] :cors
    #   The [cross-origin resource sharing (CORS)][1] settings for your
    #   function URL.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #
    # @option params [String] :invoke_mode
    #   Use one of the following options:
    #
    #   * `BUFFERED` – This is the default option. Lambda invokes your
    #     function using the `Invoke` API operation. Invocation results are
    #     available when the payload is complete. The maximum payload size is
    #     6 MB.
    #
    #   * `RESPONSE_STREAM` – Your function streams payload results as they
    #     become available. Lambda invokes your function using the
    #     `InvokeWithResponseStream` API operation. The maximum response
    #     payload size is 20 MB, however, you can [request a quota
    #     increase][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html
    #
    # @return [Types::CreateFunctionUrlConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFunctionUrlConfigResponse#function_url #function_url} => String
    #   * {Types::CreateFunctionUrlConfigResponse#function_arn #function_arn} => String
    #   * {Types::CreateFunctionUrlConfigResponse#auth_type #auth_type} => String
    #   * {Types::CreateFunctionUrlConfigResponse#cors #cors} => Types::Cors
    #   * {Types::CreateFunctionUrlConfigResponse#creation_time #creation_time} => Time
    #   * {Types::CreateFunctionUrlConfigResponse#invoke_mode #invoke_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function_url_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "FunctionUrlQualifier",
    #     auth_type: "NONE", # required, accepts NONE, AWS_IAM
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1,
    #     },
    #     invoke_mode: "BUFFERED", # accepts BUFFERED, RESPONSE_STREAM
    #   })
    #
    # @example Response structure
    #
    #   resp.function_url #=> String
    #   resp.function_arn #=> String
    #   resp.auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.cors.allow_credentials #=> Boolean
    #   resp.cors.allow_headers #=> Array
    #   resp.cors.allow_headers[0] #=> String
    #   resp.cors.allow_methods #=> Array
    #   resp.cors.allow_methods[0] #=> String
    #   resp.cors.allow_origins #=> Array
    #   resp.cors.allow_origins[0] #=> String
    #   resp.cors.expose_headers #=> Array
    #   resp.cors.expose_headers[0] #=> String
    #   resp.cors.max_age #=> Integer
    #   resp.creation_time #=> Time
    #   resp.invoke_mode #=> String, one of "BUFFERED", "RESPONSE_STREAM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateFunctionUrlConfig AWS API Documentation
    #
    # @overload create_function_url_config(params = {})
    # @param [Hash] params ({})
    def create_function_url_config(params = {}, options = {})
      req = build_request(:create_function_url_config, params)
      req.send_request(options)
    end

    # Deletes a Lambda function [alias][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   The name of the alias.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Deletes the code signing configuration. You can delete the code
    # signing configuration only if no function is using it.
    #
    # @option params [required, String] :code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_code_signing_config({
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteCodeSigningConfig AWS API Documentation
    #
    # @overload delete_code_signing_config(params = {})
    # @param [Hash] params ({})
    def delete_code_signing_config(params = {}, options = {})
      req = build_request(:delete_code_signing_config, params)
      req.send_request(options)
    end

    # Deletes an [event source mapping][1]. You can get the identifier of a
    # mapping from the output of ListEventSourceMappings.
    #
    # When you delete an event source mapping, it enters a `Deleting` state
    # and might not be completely deleted for several seconds.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html
    #
    # @option params [required, String] :uuid
    #   The identifier of the event source mapping.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#starting_position #starting_position} => String
    #   * {Types::EventSourceMappingConfiguration#starting_position_timestamp #starting_position_timestamp} => Time
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#maximum_batching_window_in_seconds #maximum_batching_window_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#parallelization_factor #parallelization_factor} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#filter_criteria #filter_criteria} => Types::FilterCriteria
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #   * {Types::EventSourceMappingConfiguration#destination_config #destination_config} => Types::DestinationConfig
    #   * {Types::EventSourceMappingConfiguration#topics #topics} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#queues #queues} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#source_access_configurations #source_access_configurations} => Array&lt;Types::SourceAccessConfiguration&gt;
    #   * {Types::EventSourceMappingConfiguration#self_managed_event_source #self_managed_event_source} => Types::SelfManagedEventSource
    #   * {Types::EventSourceMappingConfiguration#maximum_record_age_in_seconds #maximum_record_age_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#bisect_batch_on_function_error #bisect_batch_on_function_error} => Boolean
    #   * {Types::EventSourceMappingConfiguration#maximum_retry_attempts #maximum_retry_attempts} => Integer
    #   * {Types::EventSourceMappingConfiguration#tumbling_window_in_seconds #tumbling_window_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#function_response_types #function_response_types} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#amazon_managed_kafka_event_source_config #amazon_managed_kafka_event_source_config} => Types::AmazonManagedKafkaEventSourceConfig
    #   * {Types::EventSourceMappingConfiguration#self_managed_kafka_event_source_config #self_managed_kafka_event_source_config} => Types::SelfManagedKafkaEventSourceConfig
    #   * {Types::EventSourceMappingConfiguration#scaling_config #scaling_config} => Types::ScalingConfig
    #   * {Types::EventSourceMappingConfiguration#document_db_event_source_config #document_db_event_source_config} => Types::DocumentDBEventSourceConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_source_mapping({
    #     uuid: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.starting_position #=> String, one of "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"
    #   resp.starting_position_timestamp #=> Time
    #   resp.batch_size #=> Integer
    #   resp.maximum_batching_window_in_seconds #=> Integer
    #   resp.parallelization_factor #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.filter_criteria.filters #=> Array
    #   resp.filter_criteria.filters[0].pattern #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure.destination #=> String
    #   resp.topics #=> Array
    #   resp.topics[0] #=> String
    #   resp.queues #=> Array
    #   resp.queues[0] #=> String
    #   resp.source_access_configurations #=> Array
    #   resp.source_access_configurations[0].type #=> String, one of "BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"
    #   resp.source_access_configurations[0].uri #=> String
    #   resp.self_managed_event_source.endpoints #=> Hash
    #   resp.self_managed_event_source.endpoints["EndPointType"] #=> Array
    #   resp.self_managed_event_source.endpoints["EndPointType"][0] #=> String
    #   resp.maximum_record_age_in_seconds #=> Integer
    #   resp.bisect_batch_on_function_error #=> Boolean
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.tumbling_window_in_seconds #=> Integer
    #   resp.function_response_types #=> Array
    #   resp.function_response_types[0] #=> String, one of "ReportBatchItemFailures"
    #   resp.amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.scaling_config.maximum_concurrency #=> Integer
    #   resp.document_db_event_source_config.database_name #=> String
    #   resp.document_db_event_source_config.collection_name #=> String
    #   resp.document_db_event_source_config.full_document #=> String, one of "UpdateLookup", "Default"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteEventSourceMapping AWS API Documentation
    #
    # @overload delete_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def delete_event_source_mapping(params = {}, options = {})
      req = build_request(:delete_event_source_mapping, params)
      req.send_request(options)
    end

    # Deletes a Lambda function. To delete a specific function version, use
    # the `Qualifier` parameter. Otherwise, all versions and aliases are
    # deleted. This doesn't require the user to have explicit permissions
    # for DeleteAlias.
    #
    # To delete Lambda event source mappings that invoke a function, use
    # DeleteEventSourceMapping. For Amazon Web Services and resources that
    # invoke your function directly, delete the trigger in the service where
    # you originally configured it.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function or version.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:1` (with
    #     version).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version to delete. You can't delete a version that an alias
    #   references.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunction AWS API Documentation
    #
    # @overload delete_function(params = {})
    # @param [Hash] params ({})
    def delete_function(params = {}, options = {})
      req = build_request(:delete_function, params)
      req.send_request(options)
    end

    # Removes the code signing configuration from the function.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_code_signing_config({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionCodeSigningConfig AWS API Documentation
    #
    # @overload delete_function_code_signing_config(params = {})
    # @param [Hash] params ({})
    def delete_function_code_signing_config(params = {}, options = {})
      req = build_request(:delete_function_code_signing_config, params)
      req.send_request(options)
    end

    # Removes a concurrent execution limit from a function.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_concurrency({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionConcurrency AWS API Documentation
    #
    # @overload delete_function_concurrency(params = {})
    # @param [Hash] params ({})
    def delete_function_concurrency(params = {}, options = {})
      req = build_request(:delete_function_concurrency, params)
      req.send_request(options)
    end

    # Deletes the configuration for asynchronous invocation for a function,
    # version, or alias.
    #
    # To configure options for asynchronous invocation, use
    # PutFunctionEventInvokeConfig.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   A version number or alias name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_event_invoke_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionEventInvokeConfig AWS API Documentation
    #
    # @overload delete_function_event_invoke_config(params = {})
    # @param [Hash] params ({})
    def delete_function_event_invoke_config(params = {}, options = {})
      req = build_request(:delete_function_event_invoke_config, params)
      req.send_request(options)
    end

    # Deletes a Lambda function URL. When you delete a function URL, you
    # can't recover it. Creating a new function URL results in a different
    # URL address.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   The alias name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_url_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "FunctionUrlQualifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionUrlConfig AWS API Documentation
    #
    # @overload delete_function_url_config(params = {})
    # @param [Hash] params ({})
    def delete_function_url_config(params = {}, options = {})
      req = build_request(:delete_function_url_config, params)
      req.send_request(options)
    end

    # Deletes a version of an [Lambda layer][1]. Deleted versions can no
    # longer be viewed or added to functions. To avoid breaking functions, a
    # copy of the version remains in Lambda until no functions refer to it.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_layer_version({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteLayerVersion AWS API Documentation
    #
    # @overload delete_layer_version(params = {})
    # @param [Hash] params ({})
    def delete_layer_version(params = {}, options = {})
      req = build_request(:delete_layer_version, params)
      req.send_request(options)
    end

    # Deletes the provisioned concurrency configuration for a function.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :qualifier
    #   The version number or alias name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioned_concurrency_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteProvisionedConcurrencyConfig AWS API Documentation
    #
    # @overload delete_provisioned_concurrency_config(params = {})
    # @param [Hash] params ({})
    def delete_provisioned_concurrency_config(params = {}, options = {})
      req = build_request(:delete_provisioned_concurrency_config, params)
      req.send_request(options)
    end

    # Retrieves details about your account's [limits][1] and usage in an
    # Amazon Web Services Region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/limits.html
    #
    # @return [Types::GetAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResponse#account_limit #account_limit} => Types::AccountLimit
    #   * {Types::GetAccountSettingsResponse#account_usage #account_usage} => Types::AccountUsage
    #
    # @example Response structure
    #
    #   resp.account_limit.total_code_size #=> Integer
    #   resp.account_limit.code_size_unzipped #=> Integer
    #   resp.account_limit.code_size_zipped #=> Integer
    #   resp.account_limit.concurrent_executions #=> Integer
    #   resp.account_limit.unreserved_concurrent_executions #=> Integer
    #   resp.account_usage.total_code_size #=> Integer
    #   resp.account_usage.function_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Returns details about a Lambda function [alias][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   The name of the alias.
    #
    # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AliasConfiguration#alias_arn #alias_arn} => String
    #   * {Types::AliasConfiguration#name #name} => String
    #   * {Types::AliasConfiguration#function_version #function_version} => String
    #   * {Types::AliasConfiguration#description #description} => String
    #   * {Types::AliasConfiguration#routing_config #routing_config} => Types::AliasRoutingConfiguration
    #   * {Types::AliasConfiguration#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_arn #=> String
    #   resp.name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config.additional_version_weights #=> Hash
    #   resp.routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAlias AWS API Documentation
    #
    # @overload get_alias(params = {})
    # @param [Hash] params ({})
    def get_alias(params = {}, options = {})
      req = build_request(:get_alias, params)
      req.send_request(options)
    end

    # Returns information about the specified code signing configuration.
    #
    # @option params [required, String] :code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing configuration.
    #
    # @return [Types::GetCodeSigningConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeSigningConfigResponse#code_signing_config #code_signing_config} => Types::CodeSigningConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_signing_config({
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_signing_config.code_signing_config_id #=> String
    #   resp.code_signing_config.code_signing_config_arn #=> String
    #   resp.code_signing_config.description #=> String
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns #=> Array
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.code_signing_config.code_signing_policies.untrusted_artifact_on_deployment #=> String, one of "Warn", "Enforce"
    #   resp.code_signing_config.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetCodeSigningConfig AWS API Documentation
    #
    # @overload get_code_signing_config(params = {})
    # @param [Hash] params ({})
    def get_code_signing_config(params = {}, options = {})
      req = build_request(:get_code_signing_config, params)
      req.send_request(options)
    end

    # Returns details about an event source mapping. You can get the
    # identifier of a mapping from the output of ListEventSourceMappings.
    #
    # @option params [required, String] :uuid
    #   The identifier of the event source mapping.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#starting_position #starting_position} => String
    #   * {Types::EventSourceMappingConfiguration#starting_position_timestamp #starting_position_timestamp} => Time
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#maximum_batching_window_in_seconds #maximum_batching_window_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#parallelization_factor #parallelization_factor} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#filter_criteria #filter_criteria} => Types::FilterCriteria
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #   * {Types::EventSourceMappingConfiguration#destination_config #destination_config} => Types::DestinationConfig
    #   * {Types::EventSourceMappingConfiguration#topics #topics} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#queues #queues} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#source_access_configurations #source_access_configurations} => Array&lt;Types::SourceAccessConfiguration&gt;
    #   * {Types::EventSourceMappingConfiguration#self_managed_event_source #self_managed_event_source} => Types::SelfManagedEventSource
    #   * {Types::EventSourceMappingConfiguration#maximum_record_age_in_seconds #maximum_record_age_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#bisect_batch_on_function_error #bisect_batch_on_function_error} => Boolean
    #   * {Types::EventSourceMappingConfiguration#maximum_retry_attempts #maximum_retry_attempts} => Integer
    #   * {Types::EventSourceMappingConfiguration#tumbling_window_in_seconds #tumbling_window_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#function_response_types #function_response_types} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#amazon_managed_kafka_event_source_config #amazon_managed_kafka_event_source_config} => Types::AmazonManagedKafkaEventSourceConfig
    #   * {Types::EventSourceMappingConfiguration#self_managed_kafka_event_source_config #self_managed_kafka_event_source_config} => Types::SelfManagedKafkaEventSourceConfig
    #   * {Types::EventSourceMappingConfiguration#scaling_config #scaling_config} => Types::ScalingConfig
    #   * {Types::EventSourceMappingConfiguration#document_db_event_source_config #document_db_event_source_config} => Types::DocumentDBEventSourceConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_source_mapping({
    #     uuid: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.starting_position #=> String, one of "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"
    #   resp.starting_position_timestamp #=> Time
    #   resp.batch_size #=> Integer
    #   resp.maximum_batching_window_in_seconds #=> Integer
    #   resp.parallelization_factor #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.filter_criteria.filters #=> Array
    #   resp.filter_criteria.filters[0].pattern #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure.destination #=> String
    #   resp.topics #=> Array
    #   resp.topics[0] #=> String
    #   resp.queues #=> Array
    #   resp.queues[0] #=> String
    #   resp.source_access_configurations #=> Array
    #   resp.source_access_configurations[0].type #=> String, one of "BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"
    #   resp.source_access_configurations[0].uri #=> String
    #   resp.self_managed_event_source.endpoints #=> Hash
    #   resp.self_managed_event_source.endpoints["EndPointType"] #=> Array
    #   resp.self_managed_event_source.endpoints["EndPointType"][0] #=> String
    #   resp.maximum_record_age_in_seconds #=> Integer
    #   resp.bisect_batch_on_function_error #=> Boolean
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.tumbling_window_in_seconds #=> Integer
    #   resp.function_response_types #=> Array
    #   resp.function_response_types[0] #=> String, one of "ReportBatchItemFailures"
    #   resp.amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.scaling_config.maximum_concurrency #=> Integer
    #   resp.document_db_event_source_config.database_name #=> String
    #   resp.document_db_event_source_config.collection_name #=> String
    #   resp.document_db_event_source_config.full_document #=> String, one of "UpdateLookup", "Default"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetEventSourceMapping AWS API Documentation
    #
    # @overload get_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def get_event_source_mapping(params = {}, options = {})
      req = build_request(:get_event_source_mapping, params)
      req.send_request(options)
    end

    # Returns information about the function or function version, with a
    # link to download the deployment package that's valid for 10 minutes.
    # If you specify a function version, only details that are specific to
    # that version are returned.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to get details about a published version of
    #   the function.
    #
    # @return [Types::GetFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionResponse#configuration #configuration} => Types::FunctionConfiguration
    #   * {Types::GetFunctionResponse#code #code} => Types::FunctionCodeLocation
    #   * {Types::GetFunctionResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetFunctionResponse#concurrency #concurrency} => Types::Concurrency
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.function_name #=> String
    #   resp.configuration.function_arn #=> String
    #   resp.configuration.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.configuration.role #=> String
    #   resp.configuration.handler #=> String
    #   resp.configuration.code_size #=> Integer
    #   resp.configuration.description #=> String
    #   resp.configuration.timeout #=> Integer
    #   resp.configuration.memory_size #=> Integer
    #   resp.configuration.last_modified #=> Time
    #   resp.configuration.code_sha_256 #=> String
    #   resp.configuration.version #=> String
    #   resp.configuration.vpc_config.subnet_ids #=> Array
    #   resp.configuration.vpc_config.subnet_ids[0] #=> String
    #   resp.configuration.vpc_config.security_group_ids #=> Array
    #   resp.configuration.vpc_config.security_group_ids[0] #=> String
    #   resp.configuration.vpc_config.vpc_id #=> String
    #   resp.configuration.dead_letter_config.target_arn #=> String
    #   resp.configuration.environment.variables #=> Hash
    #   resp.configuration.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.configuration.environment.error.error_code #=> String
    #   resp.configuration.environment.error.message #=> String
    #   resp.configuration.kms_key_arn #=> String
    #   resp.configuration.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.configuration.master_arn #=> String
    #   resp.configuration.revision_id #=> String
    #   resp.configuration.layers #=> Array
    #   resp.configuration.layers[0].arn #=> String
    #   resp.configuration.layers[0].code_size #=> Integer
    #   resp.configuration.layers[0].signing_profile_version_arn #=> String
    #   resp.configuration.layers[0].signing_job_arn #=> String
    #   resp.configuration.state #=> String, one of "Pending", "Active", "Inactive", "Failed"
    #   resp.configuration.state_reason #=> String
    #   resp.configuration.state_reason_code #=> String, one of "Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.configuration.last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.configuration.last_update_status_reason #=> String
    #   resp.configuration.last_update_status_reason_code #=> String, one of "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.configuration.file_system_configs #=> Array
    #   resp.configuration.file_system_configs[0].arn #=> String
    #   resp.configuration.file_system_configs[0].local_mount_path #=> String
    #   resp.configuration.package_type #=> String, one of "Zip", "Image"
    #   resp.configuration.image_config_response.image_config.entry_point #=> Array
    #   resp.configuration.image_config_response.image_config.entry_point[0] #=> String
    #   resp.configuration.image_config_response.image_config.command #=> Array
    #   resp.configuration.image_config_response.image_config.command[0] #=> String
    #   resp.configuration.image_config_response.image_config.working_directory #=> String
    #   resp.configuration.image_config_response.error.error_code #=> String
    #   resp.configuration.image_config_response.error.message #=> String
    #   resp.configuration.signing_profile_version_arn #=> String
    #   resp.configuration.signing_job_arn #=> String
    #   resp.configuration.architectures #=> Array
    #   resp.configuration.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.configuration.ephemeral_storage.size #=> Integer
    #   resp.configuration.snap_start.apply_on #=> String, one of "PublishedVersions", "None"
    #   resp.configuration.snap_start.optimization_status #=> String, one of "On", "Off"
    #   resp.configuration.runtime_version_config.runtime_version_arn #=> String
    #   resp.configuration.runtime_version_config.error.error_code #=> String
    #   resp.configuration.runtime_version_config.error.message #=> String
    #   resp.code.repository_type #=> String
    #   resp.code.location #=> String
    #   resp.code.image_uri #=> String
    #   resp.code.resolved_image_uri #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.concurrency.reserved_concurrent_executions #=> Integer
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * function_active_v2
    #   * function_exists
    #   * function_updated_v2
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunction AWS API Documentation
    #
    # @overload get_function(params = {})
    # @param [Hash] params ({})
    def get_function(params = {}, options = {})
      req = build_request(:get_function, params)
      req.send_request(options)
    end

    # Returns the code signing configuration for the specified function.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @return [Types::GetFunctionCodeSigningConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionCodeSigningConfigResponse#code_signing_config_arn #code_signing_config_arn} => String
    #   * {Types::GetFunctionCodeSigningConfigResponse#function_name #function_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_code_signing_config({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_signing_config_arn #=> String
    #   resp.function_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionCodeSigningConfig AWS API Documentation
    #
    # @overload get_function_code_signing_config(params = {})
    # @param [Hash] params ({})
    def get_function_code_signing_config(params = {}, options = {})
      req = build_request(:get_function_code_signing_config, params)
      req.send_request(options)
    end

    # Returns details about the reserved concurrency configuration for a
    # function. To set a concurrency limit for a function, use
    # PutFunctionConcurrency.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @return [Types::GetFunctionConcurrencyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionConcurrencyResponse#reserved_concurrent_executions #reserved_concurrent_executions} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_concurrency({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_concurrent_executions #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConcurrency AWS API Documentation
    #
    # @overload get_function_concurrency(params = {})
    # @param [Hash] params ({})
    def get_function_concurrency(params = {}, options = {})
      req = build_request(:get_function_concurrency, params)
      req.send_request(options)
    end

    # Returns the version-specific settings of a Lambda function or version.
    # The output includes only options that can vary between versions of a
    # function. To modify these settings, use UpdateFunctionConfiguration.
    #
    # To get all of a function's details, including function-level
    # settings, use GetFunction.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to get details about a published version of
    #   the function.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #   * {Types::FunctionConfiguration#state #state} => String
    #   * {Types::FunctionConfiguration#state_reason #state_reason} => String
    #   * {Types::FunctionConfiguration#state_reason_code #state_reason_code} => String
    #   * {Types::FunctionConfiguration#last_update_status #last_update_status} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason #last_update_status_reason} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason_code #last_update_status_reason_code} => String
    #   * {Types::FunctionConfiguration#file_system_configs #file_system_configs} => Array&lt;Types::FileSystemConfig&gt;
    #   * {Types::FunctionConfiguration#package_type #package_type} => String
    #   * {Types::FunctionConfiguration#image_config_response #image_config_response} => Types::ImageConfigResponse
    #   * {Types::FunctionConfiguration#signing_profile_version_arn #signing_profile_version_arn} => String
    #   * {Types::FunctionConfiguration#signing_job_arn #signing_job_arn} => String
    #   * {Types::FunctionConfiguration#architectures #architectures} => Array&lt;String&gt;
    #   * {Types::FunctionConfiguration#ephemeral_storage #ephemeral_storage} => Types::EphemeralStorage
    #   * {Types::FunctionConfiguration#snap_start #snap_start} => Types::SnapStartResponse
    #   * {Types::FunctionConfiguration#runtime_version_config #runtime_version_config} => Types::RuntimeVersionConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_configuration({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of "Pending", "Active", "Inactive", "Failed"
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of "Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.file_system_configs #=> Array
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of "Zip", "Image"
    #   resp.image_config_response.image_config.entry_point #=> Array
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array
    #   resp.image_config_response.image_config.command[0] #=> String
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #   resp.architectures #=> Array
    #   resp.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.ephemeral_storage.size #=> Integer
    #   resp.snap_start.apply_on #=> String, one of "PublishedVersions", "None"
    #   resp.snap_start.optimization_status #=> String, one of "On", "Off"
    #   resp.runtime_version_config.runtime_version_arn #=> String
    #   resp.runtime_version_config.error.error_code #=> String
    #   resp.runtime_version_config.error.message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * function_active
    #   * function_updated
    #   * published_version_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConfiguration AWS API Documentation
    #
    # @overload get_function_configuration(params = {})
    # @param [Hash] params ({})
    def get_function_configuration(params = {}, options = {})
      req = build_request(:get_function_configuration, params)
      req.send_request(options)
    end

    # Retrieves the configuration for asynchronous invocation for a
    # function, version, or alias.
    #
    # To configure options for asynchronous invocation, use
    # PutFunctionEventInvokeConfig.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   A version number or alias name.
    #
    # @return [Types::FunctionEventInvokeConfig] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionEventInvokeConfig#last_modified #last_modified} => Time
    #   * {Types::FunctionEventInvokeConfig#function_arn #function_arn} => String
    #   * {Types::FunctionEventInvokeConfig#maximum_retry_attempts #maximum_retry_attempts} => Integer
    #   * {Types::FunctionEventInvokeConfig#maximum_event_age_in_seconds #maximum_event_age_in_seconds} => Integer
    #   * {Types::FunctionEventInvokeConfig#destination_config #destination_config} => Types::DestinationConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_event_invoke_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.last_modified #=> Time
    #   resp.function_arn #=> String
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.maximum_event_age_in_seconds #=> Integer
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure.destination #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionEventInvokeConfig AWS API Documentation
    #
    # @overload get_function_event_invoke_config(params = {})
    # @param [Hash] params ({})
    def get_function_event_invoke_config(params = {}, options = {})
      req = build_request(:get_function_event_invoke_config, params)
      req.send_request(options)
    end

    # Returns details about a Lambda function URL.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   The alias name.
    #
    # @return [Types::GetFunctionUrlConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionUrlConfigResponse#function_url #function_url} => String
    #   * {Types::GetFunctionUrlConfigResponse#function_arn #function_arn} => String
    #   * {Types::GetFunctionUrlConfigResponse#auth_type #auth_type} => String
    #   * {Types::GetFunctionUrlConfigResponse#cors #cors} => Types::Cors
    #   * {Types::GetFunctionUrlConfigResponse#creation_time #creation_time} => Time
    #   * {Types::GetFunctionUrlConfigResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetFunctionUrlConfigResponse#invoke_mode #invoke_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_url_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "FunctionUrlQualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_url #=> String
    #   resp.function_arn #=> String
    #   resp.auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.cors.allow_credentials #=> Boolean
    #   resp.cors.allow_headers #=> Array
    #   resp.cors.allow_headers[0] #=> String
    #   resp.cors.allow_methods #=> Array
    #   resp.cors.allow_methods[0] #=> String
    #   resp.cors.allow_origins #=> Array
    #   resp.cors.allow_origins[0] #=> String
    #   resp.cors.expose_headers #=> Array
    #   resp.cors.expose_headers[0] #=> String
    #   resp.cors.max_age #=> Integer
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.invoke_mode #=> String, one of "BUFFERED", "RESPONSE_STREAM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionUrlConfig AWS API Documentation
    #
    # @overload get_function_url_config(params = {})
    # @param [Hash] params ({})
    def get_function_url_config(params = {}, options = {})
      req = build_request(:get_function_url_config, params)
      req.send_request(options)
    end

    # Returns information about a version of an [Lambda layer][1], with a
    # link to download the layer archive that's valid for 10 minutes.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @return [Types::GetLayerVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLayerVersionResponse#content #content} => Types::LayerVersionContentOutput
    #   * {Types::GetLayerVersionResponse#layer_arn #layer_arn} => String
    #   * {Types::GetLayerVersionResponse#layer_version_arn #layer_version_arn} => String
    #   * {Types::GetLayerVersionResponse#description #description} => String
    #   * {Types::GetLayerVersionResponse#created_date #created_date} => Time
    #   * {Types::GetLayerVersionResponse#version #version} => Integer
    #   * {Types::GetLayerVersionResponse#compatible_runtimes #compatible_runtimes} => Array&lt;String&gt;
    #   * {Types::GetLayerVersionResponse#license_info #license_info} => String
    #   * {Types::GetLayerVersionResponse#compatible_architectures #compatible_architectures} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layer_version({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content.location #=> String
    #   resp.content.code_sha_256 #=> String
    #   resp.content.code_size #=> Integer
    #   resp.content.signing_profile_version_arn #=> String
    #   resp.content.signing_job_arn #=> String
    #   resp.layer_arn #=> String
    #   resp.layer_version_arn #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> Integer
    #   resp.compatible_runtimes #=> Array
    #   resp.compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.license_info #=> String
    #   resp.compatible_architectures #=> Array
    #   resp.compatible_architectures[0] #=> String, one of "x86_64", "arm64"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersion AWS API Documentation
    #
    # @overload get_layer_version(params = {})
    # @param [Hash] params ({})
    def get_layer_version(params = {}, options = {})
      req = build_request(:get_layer_version, params)
      req.send_request(options)
    end

    # Returns information about a version of an [Lambda layer][1], with a
    # link to download the layer archive that's valid for 10 minutes.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :arn
    #   The ARN of the layer version.
    #
    # @return [Types::GetLayerVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLayerVersionResponse#content #content} => Types::LayerVersionContentOutput
    #   * {Types::GetLayerVersionResponse#layer_arn #layer_arn} => String
    #   * {Types::GetLayerVersionResponse#layer_version_arn #layer_version_arn} => String
    #   * {Types::GetLayerVersionResponse#description #description} => String
    #   * {Types::GetLayerVersionResponse#created_date #created_date} => Time
    #   * {Types::GetLayerVersionResponse#version #version} => Integer
    #   * {Types::GetLayerVersionResponse#compatible_runtimes #compatible_runtimes} => Array&lt;String&gt;
    #   * {Types::GetLayerVersionResponse#license_info #license_info} => String
    #   * {Types::GetLayerVersionResponse#compatible_architectures #compatible_architectures} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layer_version_by_arn({
    #     arn: "LayerVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content.location #=> String
    #   resp.content.code_sha_256 #=> String
    #   resp.content.code_size #=> Integer
    #   resp.content.signing_profile_version_arn #=> String
    #   resp.content.signing_job_arn #=> String
    #   resp.layer_arn #=> String
    #   resp.layer_version_arn #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> Integer
    #   resp.compatible_runtimes #=> Array
    #   resp.compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.license_info #=> String
    #   resp.compatible_architectures #=> Array
    #   resp.compatible_architectures[0] #=> String, one of "x86_64", "arm64"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionByArn AWS API Documentation
    #
    # @overload get_layer_version_by_arn(params = {})
    # @param [Hash] params ({})
    def get_layer_version_by_arn(params = {}, options = {})
      req = build_request(:get_layer_version_by_arn, params)
      req.send_request(options)
    end

    # Returns the permission policy for a version of an [Lambda layer][1].
    # For more information, see AddLayerVersionPermission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @return [Types::GetLayerVersionPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLayerVersionPolicyResponse#policy #policy} => String
    #   * {Types::GetLayerVersionPolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layer_version_policy({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionPolicy AWS API Documentation
    #
    # @overload get_layer_version_policy(params = {})
    # @param [Hash] params ({})
    def get_layer_version_policy(params = {}, options = {})
      req = build_request(:get_layer_version_policy, params)
      req.send_request(options)
    end

    # Returns the [resource-based IAM policy][1] for a function, version, or
    # alias.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to get the policy for that resource.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy #policy} => String
    #   * {Types::GetPolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Retrieves the provisioned concurrency configuration for a function's
    # alias or version.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :qualifier
    #   The version number or alias name.
    #
    # @return [Types::GetProvisionedConcurrencyConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProvisionedConcurrencyConfigResponse#requested_provisioned_concurrent_executions #requested_provisioned_concurrent_executions} => Integer
    #   * {Types::GetProvisionedConcurrencyConfigResponse#available_provisioned_concurrent_executions #available_provisioned_concurrent_executions} => Integer
    #   * {Types::GetProvisionedConcurrencyConfigResponse#allocated_provisioned_concurrent_executions #allocated_provisioned_concurrent_executions} => Integer
    #   * {Types::GetProvisionedConcurrencyConfigResponse#status #status} => String
    #   * {Types::GetProvisionedConcurrencyConfigResponse#status_reason #status_reason} => String
    #   * {Types::GetProvisionedConcurrencyConfigResponse#last_modified #last_modified} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_provisioned_concurrency_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.requested_provisioned_concurrent_executions #=> Integer
    #   resp.available_provisioned_concurrent_executions #=> Integer
    #   resp.allocated_provisioned_concurrent_executions #=> Integer
    #   resp.status #=> String, one of "IN_PROGRESS", "READY", "FAILED"
    #   resp.status_reason #=> String
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetProvisionedConcurrencyConfig AWS API Documentation
    #
    # @overload get_provisioned_concurrency_config(params = {})
    # @param [Hash] params ({})
    def get_provisioned_concurrency_config(params = {}, options = {})
      req = build_request(:get_provisioned_concurrency_config, params)
      req.send_request(options)
    end

    # Retrieves the runtime management configuration for a function's
    # version. If the runtime update mode is **Manual**, this includes the
    # ARN of the runtime version and the runtime update mode. If the runtime
    # update mode is **Auto** or **Function update**, this includes the
    # runtime update mode and `null` is returned for the ARN. For more
    # information, see [Runtime updates][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version of the function. This can be `$LATEST` or a
    #   published version number. If no value is specified, the configuration
    #   for the `$LATEST` version is returned.
    #
    # @return [Types::GetRuntimeManagementConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuntimeManagementConfigResponse#update_runtime_on #update_runtime_on} => String
    #   * {Types::GetRuntimeManagementConfigResponse#runtime_version_arn #runtime_version_arn} => String
    #   * {Types::GetRuntimeManagementConfigResponse#function_arn #function_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_runtime_management_config({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_runtime_on #=> String, one of "Auto", "Manual", "FunctionUpdate"
    #   resp.runtime_version_arn #=> String
    #   resp.function_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetRuntimeManagementConfig AWS API Documentation
    #
    # @overload get_runtime_management_config(params = {})
    # @param [Hash] params ({})
    def get_runtime_management_config(params = {}, options = {})
      req = build_request(:get_runtime_management_config, params)
      req.send_request(options)
    end

    # Invokes a Lambda function. You can invoke a function synchronously
    # (and wait for the response), or asynchronously. To invoke a function
    # asynchronously, set `InvocationType` to `Event`.
    #
    # For [synchronous invocation][1], details about the function response,
    # including errors, are included in the response body and headers. For
    # either invocation type, you can find more information in the
    # [execution log][2] and [trace][3].
    #
    # When an error occurs, your function may be invoked multiple times.
    # Retry behavior varies by error type, client, event source, and
    # invocation type. For example, if you invoke a function asynchronously
    # and it returns an error, Lambda executes the function up to two more
    # times. For more information, see [Error handling and automatic retries
    # in Lambda][4].
    #
    # For [asynchronous invocation][5], Lambda adds events to a queue before
    # sending them to your function. If your function does not have enough
    # capacity to keep up with the queue, events may be lost. Occasionally,
    # your function may receive the same event multiple times, even if no
    # error occurs. To retain events that were not processed, configure your
    # function with a [dead-letter queue][6].
    #
    # The status code in the API response doesn't reflect function errors.
    # Error codes are reserved for errors that prevent your function from
    # executing, such as permissions errors, [quota][7] errors, or issues
    # with your function's code and configuration. For example, Lambda
    # returns `TooManyRequestsException` if running the function would cause
    # you to exceed a concurrency limit at either the account level
    # (`ConcurrentInvocationLimitExceeded`) or function level
    # (`ReservedFunctionConcurrentInvocationLimitExceeded`).
    #
    # For functions with a long timeout, your client might disconnect during
    # synchronous invocation while it waits for a response. Configure your
    # HTTP client, SDK, firewall, proxy, or operating system to allow for
    # long connections with timeout or keep-alive settings.
    #
    # This operation requires permission for the [lambda:InvokeFunction][8]
    # action. For details on how to set up permissions for cross-account
    # invocations, see [Granting function access to other accounts][9].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html
    # [4]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html
    # [5]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html
    # [6]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq
    # [7]: https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html
    # [8]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html
    # [9]: https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :invocation_type
    #   Choose from the following options.
    #
    #   * `RequestResponse` (default) – Invoke the function synchronously.
    #     Keep the connection open until the function returns a response or
    #     times out. The API response includes the function response and
    #     additional data.
    #
    #   * `Event` – Invoke the function asynchronously. Send events that fail
    #     multiple times to the function's dead-letter queue (if one is
    #     configured). The API response only includes a status code.
    #
    #   * `DryRun` – Validate parameter values and verify that the user or
    #     role has permission to invoke the function.
    #
    # @option params [String] :log_type
    #   Set to `Tail` to include the execution log in the response. Applies to
    #   synchronously invoked functions only.
    #
    # @option params [String] :client_context
    #   Up to 3,583 bytes of base64-encoded data about the invoking client to
    #   pass to the function in the context object.
    #
    # @option params [String, StringIO, File] :payload
    #   The JSON that you want to provide to your Lambda function as input.
    #
    #   You can enter the JSON directly. For example, `--payload '\{ "key":
    #   "value" \}'`. You can also specify a file path. For example,
    #   `--payload file://payload.json`.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to invoke a published version of the
    #   function.
    #
    # @return [Types::InvocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvocationResponse#status_code #status_code} => Integer
    #   * {Types::InvocationResponse#function_error #function_error} => String
    #   * {Types::InvocationResponse#log_result #log_result} => String
    #   * {Types::InvocationResponse#payload #payload} => String
    #   * {Types::InvocationResponse#executed_version #executed_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke({
    #     function_name: "NamespacedFunctionName", # required
    #     invocation_type: "Event", # accepts Event, RequestResponse, DryRun
    #     log_type: "None", # accepts None, Tail
    #     client_context: "String",
    #     payload: "data",
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.function_error #=> String
    #   resp.log_result #=> String
    #   resp.payload #=> String
    #   resp.executed_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Invoke AWS API Documentation
    #
    # @overload invoke(params = {})
    # @param [Hash] params ({})
    def invoke(params = {}, options = {})
      req = build_request(:invoke, params)
      req.send_request(options)
    end

    # For asynchronous function invocation, use Invoke.
    #
    # Invokes a function asynchronously.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String, StringIO, File] :invoke_args
    #   The JSON that you want to provide to your Lambda function as input.
    #
    # @return [Types::InvokeAsyncResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeAsyncResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_async({
    #     function_name: "NamespacedFunctionName", # required
    #     invoke_args: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsync AWS API Documentation
    #
    # @overload invoke_async(params = {})
    # @param [Hash] params ({})
    def invoke_async(params = {}, options = {})
      req = build_request(:invoke_async, params)
      req.send_request(options)
    end

    # Configure your Lambda functions to stream response payloads back to
    # clients. For more information, see [Configuring a Lambda function to
    # stream responses][1].
    #
    # This operation requires permission for the [lambda:InvokeFunction][2]
    # action. For details on how to set up permissions for cross-account
    # invocations, see [Granting function access to other accounts][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :invocation_type
    #   Use one of the following options:
    #
    #   * `RequestResponse` (default) – Invoke the function synchronously.
    #     Keep the connection open until the function returns a response or
    #     times out. The API operation response includes the function response
    #     and additional data.
    #
    #   * `DryRun` – Validate parameter values and verify that the IAM user or
    #     role has permission to invoke the function.
    #
    # @option params [String] :log_type
    #   Set to `Tail` to include the execution log in the response. Applies to
    #   synchronously invoked functions only.
    #
    # @option params [String] :client_context
    #   Up to 3,583 bytes of base64-encoded data about the invoking client to
    #   pass to the function in the context object.
    #
    # @option params [String] :qualifier
    #   The alias name.
    #
    # @option params [String, StringIO, File] :payload
    #   The JSON that you want to provide to your Lambda function as input.
    #
    #   You can enter the JSON directly. For example, `--payload '\{ "key":
    #   "value" \}'`. You can also specify a file path. For example,
    #   `--payload file://payload.json`.
    #
    # @return [Types::InvokeWithResponseStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeWithResponseStreamResponse#status_code #status_code} => Integer
    #   * {Types::InvokeWithResponseStreamResponse#executed_version #executed_version} => String
    #   * {Types::InvokeWithResponseStreamResponse#event_stream #event_stream} => Types::InvokeWithResponseStreamResponseEvent
    #   * {Types::InvokeWithResponseStreamResponse#response_stream_content_type #response_stream_content_type} => String
    #
    # @example EventStream Operation Example
    #
    #   You can process event once it arrives immediately, or wait until
    #   full response complete and iterate through eventstream enumerator.
    #
    #   To interact with event immediately, you need to register #invoke_with_response_stream
    #   with callbacks, callbacks can be register for specifc events or for all events,
    #   callback for errors in the event stream is also available for register.
    #
    #   Callbacks can be passed in by `:event_stream_handler` option or within block
    #   statement attached to #invoke_with_response_stream call directly. Hybrid pattern of both
    #   is also supported.
    #
    #   `:event_stream_handler` option takes in either Proc object or
    #   Aws::Lambda::EventStreams::InvokeWithResponseStreamResponseEvent object.
    #
    #   Usage pattern a): callbacks with a block attached to #invoke_with_response_stream
    #     Example for registering callbacks for all event types and error event
    #
    #     client.invoke_with_response_stream( # params input# ) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #
    #       stream.on_event do |event|
    #         # process all events arrive
    #         puts event.event_type
    #         ...
    #       end
    #
    #     end
    #
    #   Usage pattern b): pass in `:event_stream_handler` for #invoke_with_response_stream
    #
    #     1) create a Aws::Lambda::EventStreams::InvokeWithResponseStreamResponseEvent object
    #     Example for registering callbacks with specific events
    #
    #       handler = Aws::Lambda::EventStreams::InvokeWithResponseStreamResponseEvent.new
    #       handler.on_payload_chunk_event do |event|
    #         event # => Aws::Lambda::Types::PayloadChunk
    #       end
    #       handler.on_invoke_complete_event do |event|
    #         event # => Aws::Lambda::Types::InvokeComplete
    #       end
    #
    #     client.invoke_with_response_stream( # params input #, event_stream_handler: handler)
    #
    #     2) use a Ruby Proc object
    #     Example for registering callbacks with specific events
    #
    #     handler = Proc.new do |stream|
    #       stream.on_payload_chunk_event do |event|
    #         event # => Aws::Lambda::Types::PayloadChunk
    #       end
    #       stream.on_invoke_complete_event do |event|
    #         event # => Aws::Lambda::Types::InvokeComplete
    #       end
    #     end
    #
    #     client.invoke_with_response_stream( # params input #, event_stream_handler: handler)
    #
    #   Usage pattern c): hybird pattern of a) and b)
    #
    #       handler = Aws::Lambda::EventStreams::InvokeWithResponseStreamResponseEvent.new
    #       handler.on_payload_chunk_event do |event|
    #         event # => Aws::Lambda::Types::PayloadChunk
    #       end
    #       handler.on_invoke_complete_event do |event|
    #         event # => Aws::Lambda::Types::InvokeComplete
    #       end
    #
    #     client.invoke_with_response_stream( # params input #, event_stream_handler: handler) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #     end
    #
    #   Besides above usage patterns for process events when they arrive immediately, you can also
    #   iterate through events after response complete.
    #
    #   Events are available at resp.event_stream # => Enumerator
    #   For parameter input example, please refer to following request syntax
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_with_response_stream({
    #     function_name: "NamespacedFunctionName", # required
    #     invocation_type: "RequestResponse", # accepts RequestResponse, DryRun
    #     log_type: "None", # accepts None, Tail
    #     client_context: "String",
    #     qualifier: "Qualifier",
    #     payload: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.executed_version #=> String
    #   All events are available at resp.event_stream:
    #   resp.event_stream #=> Enumerator
    #   resp.event_stream.event_types #=> [:payload_chunk, :invoke_complete]
    #
    #   For :payload_chunk event available at #on_payload_chunk_event callback and response eventstream enumerator:
    #   event.payload #=> String
    #
    #   For :invoke_complete event available at #on_invoke_complete_event callback and response eventstream enumerator:
    #   event.error_code #=> String
    #   event.error_details #=> String
    #   event.log_result #=> String
    #
    #   resp.response_stream_content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeWithResponseStream AWS API Documentation
    #
    # @overload invoke_with_response_stream(params = {})
    # @param [Hash] params ({})
    def invoke_with_response_stream(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::InvokeWithResponseStreamResponseEvent then handler
        when Proc then EventStreams::InvokeWithResponseStreamResponseEvent.new.tap(&handler)
        when nil then EventStreams::InvokeWithResponseStreamResponseEvent.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::Lambda::EventStreams::InvokeWithResponseStreamResponseEvent"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_with_response_stream, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Returns a list of [aliases][1] for a Lambda function.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :function_version
    #   Specify a function version to only list aliases that invoke that
    #   version.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   Limit the number of aliases returned.
    #
    # @return [Types::ListAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesResponse#next_marker #next_marker} => String
    #   * {Types::ListAliasesResponse#aliases #aliases} => Array&lt;Types::AliasConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases({
    #     function_name: "FunctionName", # required
    #     function_version: "Version",
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.aliases #=> Array
    #   resp.aliases[0].alias_arn #=> String
    #   resp.aliases[0].name #=> String
    #   resp.aliases[0].function_version #=> String
    #   resp.aliases[0].description #=> String
    #   resp.aliases[0].routing_config.additional_version_weights #=> Hash
    #   resp.aliases[0].routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.aliases[0].revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Returns a list of [code signing configurations][1]. A request returns
    # up to 10,000 configurations per call. You can use the `MaxItems`
    # parameter to return fewer configurations per call.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   Maximum number of items to return.
    #
    # @return [Types::ListCodeSigningConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeSigningConfigsResponse#next_marker #next_marker} => String
    #   * {Types::ListCodeSigningConfigsResponse#code_signing_configs #code_signing_configs} => Array&lt;Types::CodeSigningConfig&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_signing_configs({
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.code_signing_configs #=> Array
    #   resp.code_signing_configs[0].code_signing_config_id #=> String
    #   resp.code_signing_configs[0].code_signing_config_arn #=> String
    #   resp.code_signing_configs[0].description #=> String
    #   resp.code_signing_configs[0].allowed_publishers.signing_profile_version_arns #=> Array
    #   resp.code_signing_configs[0].allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.code_signing_configs[0].code_signing_policies.untrusted_artifact_on_deployment #=> String, one of "Warn", "Enforce"
    #   resp.code_signing_configs[0].last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListCodeSigningConfigs AWS API Documentation
    #
    # @overload list_code_signing_configs(params = {})
    # @param [Hash] params ({})
    def list_code_signing_configs(params = {}, options = {})
      req = build_request(:list_code_signing_configs, params)
      req.send_request(options)
    end

    # Lists event source mappings. Specify an `EventSourceArn` to show only
    # event source mappings for a single event source.
    #
    # @option params [String] :event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #
    #   * **Amazon Kinesis** – The ARN of the data stream or a stream
    #     consumer.
    #
    #   * **Amazon DynamoDB Streams** – The ARN of the stream.
    #
    #   * **Amazon Simple Queue Service** – The ARN of the queue.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** – The ARN of the
    #     cluster.
    #
    #   * **Amazon MQ** – The ARN of the broker.
    #
    #   * **Amazon DocumentDB** – The ARN of the DocumentDB change stream.
    #
    # @option params [String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `MyFunction`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** – `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #
    # @option params [String] :marker
    #   A pagination token returned by a previous call.
    #
    # @option params [Integer] :max_items
    #   The maximum number of event source mappings to return. Note that
    #   ListEventSourceMappings returns a maximum of 100 items in each
    #   response, even if you set the number higher.
    #
    # @return [Types::ListEventSourceMappingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventSourceMappingsResponse#next_marker #next_marker} => String
    #   * {Types::ListEventSourceMappingsResponse#event_source_mappings #event_source_mappings} => Array&lt;Types::EventSourceMappingConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_source_mappings({
    #     event_source_arn: "Arn",
    #     function_name: "FunctionName",
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.event_source_mappings #=> Array
    #   resp.event_source_mappings[0].uuid #=> String
    #   resp.event_source_mappings[0].starting_position #=> String, one of "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"
    #   resp.event_source_mappings[0].starting_position_timestamp #=> Time
    #   resp.event_source_mappings[0].batch_size #=> Integer
    #   resp.event_source_mappings[0].maximum_batching_window_in_seconds #=> Integer
    #   resp.event_source_mappings[0].parallelization_factor #=> Integer
    #   resp.event_source_mappings[0].event_source_arn #=> String
    #   resp.event_source_mappings[0].filter_criteria.filters #=> Array
    #   resp.event_source_mappings[0].filter_criteria.filters[0].pattern #=> String
    #   resp.event_source_mappings[0].function_arn #=> String
    #   resp.event_source_mappings[0].last_modified #=> Time
    #   resp.event_source_mappings[0].last_processing_result #=> String
    #   resp.event_source_mappings[0].state #=> String
    #   resp.event_source_mappings[0].state_transition_reason #=> String
    #   resp.event_source_mappings[0].destination_config.on_success.destination #=> String
    #   resp.event_source_mappings[0].destination_config.on_failure.destination #=> String
    #   resp.event_source_mappings[0].topics #=> Array
    #   resp.event_source_mappings[0].topics[0] #=> String
    #   resp.event_source_mappings[0].queues #=> Array
    #   resp.event_source_mappings[0].queues[0] #=> String
    #   resp.event_source_mappings[0].source_access_configurations #=> Array
    #   resp.event_source_mappings[0].source_access_configurations[0].type #=> String, one of "BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"
    #   resp.event_source_mappings[0].source_access_configurations[0].uri #=> String
    #   resp.event_source_mappings[0].self_managed_event_source.endpoints #=> Hash
    #   resp.event_source_mappings[0].self_managed_event_source.endpoints["EndPointType"] #=> Array
    #   resp.event_source_mappings[0].self_managed_event_source.endpoints["EndPointType"][0] #=> String
    #   resp.event_source_mappings[0].maximum_record_age_in_seconds #=> Integer
    #   resp.event_source_mappings[0].bisect_batch_on_function_error #=> Boolean
    #   resp.event_source_mappings[0].maximum_retry_attempts #=> Integer
    #   resp.event_source_mappings[0].tumbling_window_in_seconds #=> Integer
    #   resp.event_source_mappings[0].function_response_types #=> Array
    #   resp.event_source_mappings[0].function_response_types[0] #=> String, one of "ReportBatchItemFailures"
    #   resp.event_source_mappings[0].amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.event_source_mappings[0].self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.event_source_mappings[0].scaling_config.maximum_concurrency #=> Integer
    #   resp.event_source_mappings[0].document_db_event_source_config.database_name #=> String
    #   resp.event_source_mappings[0].document_db_event_source_config.collection_name #=> String
    #   resp.event_source_mappings[0].document_db_event_source_config.full_document #=> String, one of "UpdateLookup", "Default"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappings AWS API Documentation
    #
    # @overload list_event_source_mappings(params = {})
    # @param [Hash] params ({})
    def list_event_source_mappings(params = {}, options = {})
      req = build_request(:list_event_source_mappings, params)
      req.send_request(options)
    end

    # Retrieves a list of configurations for asynchronous invocation for a
    # function.
    #
    # To configure options for asynchronous invocation, use
    # PutFunctionEventInvokeConfig.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   The maximum number of configurations to return.
    #
    # @return [Types::ListFunctionEventInvokeConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionEventInvokeConfigsResponse#function_event_invoke_configs #function_event_invoke_configs} => Array&lt;Types::FunctionEventInvokeConfig&gt;
    #   * {Types::ListFunctionEventInvokeConfigsResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_function_event_invoke_configs({
    #     function_name: "FunctionName", # required
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.function_event_invoke_configs #=> Array
    #   resp.function_event_invoke_configs[0].last_modified #=> Time
    #   resp.function_event_invoke_configs[0].function_arn #=> String
    #   resp.function_event_invoke_configs[0].maximum_retry_attempts #=> Integer
    #   resp.function_event_invoke_configs[0].maximum_event_age_in_seconds #=> Integer
    #   resp.function_event_invoke_configs[0].destination_config.on_success.destination #=> String
    #   resp.function_event_invoke_configs[0].destination_config.on_failure.destination #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionEventInvokeConfigs AWS API Documentation
    #
    # @overload list_function_event_invoke_configs(params = {})
    # @param [Hash] params ({})
    def list_function_event_invoke_configs(params = {}, options = {})
      req = build_request(:list_function_event_invoke_configs, params)
      req.send_request(options)
    end

    # Returns a list of Lambda function URLs for the specified function.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   The maximum number of function URLs to return in the response. Note
    #   that `ListFunctionUrlConfigs` returns a maximum of 50 items in each
    #   response, even if you set the number higher.
    #
    # @return [Types::ListFunctionUrlConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionUrlConfigsResponse#function_url_configs #function_url_configs} => Array&lt;Types::FunctionUrlConfig&gt;
    #   * {Types::ListFunctionUrlConfigsResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_function_url_configs({
    #     function_name: "FunctionName", # required
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.function_url_configs #=> Array
    #   resp.function_url_configs[0].function_url #=> String
    #   resp.function_url_configs[0].function_arn #=> String
    #   resp.function_url_configs[0].creation_time #=> Time
    #   resp.function_url_configs[0].last_modified_time #=> Time
    #   resp.function_url_configs[0].cors.allow_credentials #=> Boolean
    #   resp.function_url_configs[0].cors.allow_headers #=> Array
    #   resp.function_url_configs[0].cors.allow_headers[0] #=> String
    #   resp.function_url_configs[0].cors.allow_methods #=> Array
    #   resp.function_url_configs[0].cors.allow_methods[0] #=> String
    #   resp.function_url_configs[0].cors.allow_origins #=> Array
    #   resp.function_url_configs[0].cors.allow_origins[0] #=> String
    #   resp.function_url_configs[0].cors.expose_headers #=> Array
    #   resp.function_url_configs[0].cors.expose_headers[0] #=> String
    #   resp.function_url_configs[0].cors.max_age #=> Integer
    #   resp.function_url_configs[0].auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.function_url_configs[0].invoke_mode #=> String, one of "BUFFERED", "RESPONSE_STREAM"
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionUrlConfigs AWS API Documentation
    #
    # @overload list_function_url_configs(params = {})
    # @param [Hash] params ({})
    def list_function_url_configs(params = {}, options = {})
      req = build_request(:list_function_url_configs, params)
      req.send_request(options)
    end

    # Returns a list of Lambda functions, with the version-specific
    # configuration of each. Lambda returns up to 50 functions per call.
    #
    # Set `FunctionVersion` to `ALL` to include all published versions of
    # each function in addition to the unpublished version.
    #
    # <note markdown="1"> The `ListFunctions` operation returns a subset of the
    # FunctionConfiguration fields. To get the additional fields (State,
    # StateReasonCode, StateReason, LastUpdateStatus,
    # LastUpdateStatusReason, LastUpdateStatusReasonCode,
    # RuntimeVersionConfig) for a function or version, use GetFunction.
    #
    #  </note>
    #
    # @option params [String] :master_region
    #   For Lambda@Edge functions, the Amazon Web Services Region of the
    #   master function. For example, `us-east-1` filters the list of
    #   functions to include only Lambda@Edge functions replicated from a
    #   master function in US East (N. Virginia). If specified, you must set
    #   `FunctionVersion` to `ALL`.
    #
    # @option params [String] :function_version
    #   Set to `ALL` to include entries for all published versions of each
    #   function.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   The maximum number of functions to return in the response. Note that
    #   `ListFunctions` returns a maximum of 50 items in each response, even
    #   if you set the number higher.
    #
    # @return [Types::ListFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionsResponse#next_marker #next_marker} => String
    #   * {Types::ListFunctionsResponse#functions #functions} => Array&lt;Types::FunctionConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions({
    #     master_region: "MasterRegion",
    #     function_version: "ALL", # accepts ALL
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.functions #=> Array
    #   resp.functions[0].function_name #=> String
    #   resp.functions[0].function_arn #=> String
    #   resp.functions[0].runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.functions[0].role #=> String
    #   resp.functions[0].handler #=> String
    #   resp.functions[0].code_size #=> Integer
    #   resp.functions[0].description #=> String
    #   resp.functions[0].timeout #=> Integer
    #   resp.functions[0].memory_size #=> Integer
    #   resp.functions[0].last_modified #=> Time
    #   resp.functions[0].code_sha_256 #=> String
    #   resp.functions[0].version #=> String
    #   resp.functions[0].vpc_config.subnet_ids #=> Array
    #   resp.functions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.functions[0].vpc_config.security_group_ids #=> Array
    #   resp.functions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.functions[0].vpc_config.vpc_id #=> String
    #   resp.functions[0].dead_letter_config.target_arn #=> String
    #   resp.functions[0].environment.variables #=> Hash
    #   resp.functions[0].environment.variables["EnvironmentVariableName"] #=> String
    #   resp.functions[0].environment.error.error_code #=> String
    #   resp.functions[0].environment.error.message #=> String
    #   resp.functions[0].kms_key_arn #=> String
    #   resp.functions[0].tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.functions[0].master_arn #=> String
    #   resp.functions[0].revision_id #=> String
    #   resp.functions[0].layers #=> Array
    #   resp.functions[0].layers[0].arn #=> String
    #   resp.functions[0].layers[0].code_size #=> Integer
    #   resp.functions[0].layers[0].signing_profile_version_arn #=> String
    #   resp.functions[0].layers[0].signing_job_arn #=> String
    #   resp.functions[0].state #=> String, one of "Pending", "Active", "Inactive", "Failed"
    #   resp.functions[0].state_reason #=> String
    #   resp.functions[0].state_reason_code #=> String, one of "Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.functions[0].last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.functions[0].last_update_status_reason #=> String
    #   resp.functions[0].last_update_status_reason_code #=> String, one of "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.functions[0].file_system_configs #=> Array
    #   resp.functions[0].file_system_configs[0].arn #=> String
    #   resp.functions[0].file_system_configs[0].local_mount_path #=> String
    #   resp.functions[0].package_type #=> String, one of "Zip", "Image"
    #   resp.functions[0].image_config_response.image_config.entry_point #=> Array
    #   resp.functions[0].image_config_response.image_config.entry_point[0] #=> String
    #   resp.functions[0].image_config_response.image_config.command #=> Array
    #   resp.functions[0].image_config_response.image_config.command[0] #=> String
    #   resp.functions[0].image_config_response.image_config.working_directory #=> String
    #   resp.functions[0].image_config_response.error.error_code #=> String
    #   resp.functions[0].image_config_response.error.message #=> String
    #   resp.functions[0].signing_profile_version_arn #=> String
    #   resp.functions[0].signing_job_arn #=> String
    #   resp.functions[0].architectures #=> Array
    #   resp.functions[0].architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.functions[0].ephemeral_storage.size #=> Integer
    #   resp.functions[0].snap_start.apply_on #=> String, one of "PublishedVersions", "None"
    #   resp.functions[0].snap_start.optimization_status #=> String, one of "On", "Off"
    #   resp.functions[0].runtime_version_config.runtime_version_arn #=> String
    #   resp.functions[0].runtime_version_config.error.error_code #=> String
    #   resp.functions[0].runtime_version_config.error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctions AWS API Documentation
    #
    # @overload list_functions(params = {})
    # @param [Hash] params ({})
    def list_functions(params = {}, options = {})
      req = build_request(:list_functions, params)
      req.send_request(options)
    end

    # List the functions that use the specified code signing configuration.
    # You can use this method prior to deleting a code signing
    # configuration, to verify that no functions are using it.
    #
    # @option params [required, String] :code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing configuration.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   Maximum number of items to return.
    #
    # @return [Types::ListFunctionsByCodeSigningConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionsByCodeSigningConfigResponse#next_marker #next_marker} => String
    #   * {Types::ListFunctionsByCodeSigningConfigResponse#function_arns #function_arns} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions_by_code_signing_config({
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.function_arns #=> Array
    #   resp.function_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsByCodeSigningConfig AWS API Documentation
    #
    # @overload list_functions_by_code_signing_config(params = {})
    # @param [Hash] params ({})
    def list_functions_by_code_signing_config(params = {}, options = {})
      req = build_request(:list_functions_by_code_signing_config, params)
      req.send_request(options)
    end

    # Lists the versions of an [Lambda layer][1]. Versions that have been
    # deleted aren't listed. Specify a [runtime identifier][2] to list only
    # versions that indicate that they're compatible with that runtime.
    # Specify a compatible architecture to include only layer versions that
    # are compatible with that architecture.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #
    # @option params [String] :compatible_runtime
    #   A runtime identifier. For example, `go1.x`.
    #
    #   The following list includes deprecated runtimes. For more information,
    #   see [Runtime deprecation policy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [String] :marker
    #   A pagination token returned by a previous call.
    #
    # @option params [Integer] :max_items
    #   The maximum number of versions to return.
    #
    # @option params [String] :compatible_architecture
    #   The compatible [instruction set architecture][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #
    # @return [Types::ListLayerVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLayerVersionsResponse#next_marker #next_marker} => String
    #   * {Types::ListLayerVersionsResponse#layer_versions #layer_versions} => Array&lt;Types::LayerVersionsListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layer_versions({
    #     compatible_runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2
    #     layer_name: "LayerName", # required
    #     marker: "String",
    #     max_items: 1,
    #     compatible_architecture: "x86_64", # accepts x86_64, arm64
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.layer_versions #=> Array
    #   resp.layer_versions[0].layer_version_arn #=> String
    #   resp.layer_versions[0].version #=> Integer
    #   resp.layer_versions[0].description #=> String
    #   resp.layer_versions[0].created_date #=> Time
    #   resp.layer_versions[0].compatible_runtimes #=> Array
    #   resp.layer_versions[0].compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.layer_versions[0].license_info #=> String
    #   resp.layer_versions[0].compatible_architectures #=> Array
    #   resp.layer_versions[0].compatible_architectures[0] #=> String, one of "x86_64", "arm64"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayerVersions AWS API Documentation
    #
    # @overload list_layer_versions(params = {})
    # @param [Hash] params ({})
    def list_layer_versions(params = {}, options = {})
      req = build_request(:list_layer_versions, params)
      req.send_request(options)
    end

    # Lists [Lambda layers][1] and shows information about the latest
    # version of each. Specify a [runtime identifier][2] to list only layers
    # that indicate that they're compatible with that runtime. Specify a
    # compatible architecture to include only layers that are compatible
    # with that [instruction set architecture][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #
    # @option params [String] :compatible_runtime
    #   A runtime identifier. For example, `go1.x`.
    #
    #   The following list includes deprecated runtimes. For more information,
    #   see [Runtime deprecation policy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #
    # @option params [String] :marker
    #   A pagination token returned by a previous call.
    #
    # @option params [Integer] :max_items
    #   The maximum number of layers to return.
    #
    # @option params [String] :compatible_architecture
    #   The compatible [instruction set architecture][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #
    # @return [Types::ListLayersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLayersResponse#next_marker #next_marker} => String
    #   * {Types::ListLayersResponse#layers #layers} => Array&lt;Types::LayersListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layers({
    #     compatible_runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2
    #     marker: "String",
    #     max_items: 1,
    #     compatible_architecture: "x86_64", # accepts x86_64, arm64
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].layer_name #=> String
    #   resp.layers[0].layer_arn #=> String
    #   resp.layers[0].latest_matching_version.layer_version_arn #=> String
    #   resp.layers[0].latest_matching_version.version #=> Integer
    #   resp.layers[0].latest_matching_version.description #=> String
    #   resp.layers[0].latest_matching_version.created_date #=> Time
    #   resp.layers[0].latest_matching_version.compatible_runtimes #=> Array
    #   resp.layers[0].latest_matching_version.compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.layers[0].latest_matching_version.license_info #=> String
    #   resp.layers[0].latest_matching_version.compatible_architectures #=> Array
    #   resp.layers[0].latest_matching_version.compatible_architectures[0] #=> String, one of "x86_64", "arm64"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayers AWS API Documentation
    #
    # @overload list_layers(params = {})
    # @param [Hash] params ({})
    def list_layers(params = {}, options = {})
      req = build_request(:list_layers, params)
      req.send_request(options)
    end

    # Retrieves a list of provisioned concurrency configurations for a
    # function.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   Specify a number to limit the number of configurations returned.
    #
    # @return [Types::ListProvisionedConcurrencyConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisionedConcurrencyConfigsResponse#provisioned_concurrency_configs #provisioned_concurrency_configs} => Array&lt;Types::ProvisionedConcurrencyConfigListItem&gt;
    #   * {Types::ListProvisionedConcurrencyConfigsResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioned_concurrency_configs({
    #     function_name: "FunctionName", # required
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_concurrency_configs #=> Array
    #   resp.provisioned_concurrency_configs[0].function_arn #=> String
    #   resp.provisioned_concurrency_configs[0].requested_provisioned_concurrent_executions #=> Integer
    #   resp.provisioned_concurrency_configs[0].available_provisioned_concurrent_executions #=> Integer
    #   resp.provisioned_concurrency_configs[0].allocated_provisioned_concurrent_executions #=> Integer
    #   resp.provisioned_concurrency_configs[0].status #=> String, one of "IN_PROGRESS", "READY", "FAILED"
    #   resp.provisioned_concurrency_configs[0].status_reason #=> String
    #   resp.provisioned_concurrency_configs[0].last_modified #=> Time
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListProvisionedConcurrencyConfigs AWS API Documentation
    #
    # @overload list_provisioned_concurrency_configs(params = {})
    # @param [Hash] params ({})
    def list_provisioned_concurrency_configs(params = {}, options = {})
      req = build_request(:list_provisioned_concurrency_configs, params)
      req.send_request(options)
    end

    # Returns a function's [tags][1]. You can also view tags with
    # GetFunction.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, String] :resource
    #   The function's Amazon Resource Name (ARN). Note: Lambda does not
    #   support adding tags to aliases or versions.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource: "FunctionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Returns a list of [versions][1], with the version-specific
    # configuration of each. Lambda returns up to 50 versions per call.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   The maximum number of versions to return. Note that
    #   `ListVersionsByFunction` returns a maximum of 50 items in each
    #   response, even if you set the number higher.
    #
    # @return [Types::ListVersionsByFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVersionsByFunctionResponse#next_marker #next_marker} => String
    #   * {Types::ListVersionsByFunctionResponse#versions #versions} => Array&lt;Types::FunctionConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_versions_by_function({
    #     function_name: "NamespacedFunctionName", # required
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].function_name #=> String
    #   resp.versions[0].function_arn #=> String
    #   resp.versions[0].runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.versions[0].role #=> String
    #   resp.versions[0].handler #=> String
    #   resp.versions[0].code_size #=> Integer
    #   resp.versions[0].description #=> String
    #   resp.versions[0].timeout #=> Integer
    #   resp.versions[0].memory_size #=> Integer
    #   resp.versions[0].last_modified #=> Time
    #   resp.versions[0].code_sha_256 #=> String
    #   resp.versions[0].version #=> String
    #   resp.versions[0].vpc_config.subnet_ids #=> Array
    #   resp.versions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.versions[0].vpc_config.security_group_ids #=> Array
    #   resp.versions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.versions[0].vpc_config.vpc_id #=> String
    #   resp.versions[0].dead_letter_config.target_arn #=> String
    #   resp.versions[0].environment.variables #=> Hash
    #   resp.versions[0].environment.variables["EnvironmentVariableName"] #=> String
    #   resp.versions[0].environment.error.error_code #=> String
    #   resp.versions[0].environment.error.message #=> String
    #   resp.versions[0].kms_key_arn #=> String
    #   resp.versions[0].tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.versions[0].master_arn #=> String
    #   resp.versions[0].revision_id #=> String
    #   resp.versions[0].layers #=> Array
    #   resp.versions[0].layers[0].arn #=> String
    #   resp.versions[0].layers[0].code_size #=> Integer
    #   resp.versions[0].layers[0].signing_profile_version_arn #=> String
    #   resp.versions[0].layers[0].signing_job_arn #=> String
    #   resp.versions[0].state #=> String, one of "Pending", "Active", "Inactive", "Failed"
    #   resp.versions[0].state_reason #=> String
    #   resp.versions[0].state_reason_code #=> String, one of "Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.versions[0].last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.versions[0].last_update_status_reason #=> String
    #   resp.versions[0].last_update_status_reason_code #=> String, one of "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.versions[0].file_system_configs #=> Array
    #   resp.versions[0].file_system_configs[0].arn #=> String
    #   resp.versions[0].file_system_configs[0].local_mount_path #=> String
    #   resp.versions[0].package_type #=> String, one of "Zip", "Image"
    #   resp.versions[0].image_config_response.image_config.entry_point #=> Array
    #   resp.versions[0].image_config_response.image_config.entry_point[0] #=> String
    #   resp.versions[0].image_config_response.image_config.command #=> Array
    #   resp.versions[0].image_config_response.image_config.command[0] #=> String
    #   resp.versions[0].image_config_response.image_config.working_directory #=> String
    #   resp.versions[0].image_config_response.error.error_code #=> String
    #   resp.versions[0].image_config_response.error.message #=> String
    #   resp.versions[0].signing_profile_version_arn #=> String
    #   resp.versions[0].signing_job_arn #=> String
    #   resp.versions[0].architectures #=> Array
    #   resp.versions[0].architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.versions[0].ephemeral_storage.size #=> Integer
    #   resp.versions[0].snap_start.apply_on #=> String, one of "PublishedVersions", "None"
    #   resp.versions[0].snap_start.optimization_status #=> String, one of "On", "Off"
    #   resp.versions[0].runtime_version_config.runtime_version_arn #=> String
    #   resp.versions[0].runtime_version_config.error.error_code #=> String
    #   resp.versions[0].runtime_version_config.error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListVersionsByFunction AWS API Documentation
    #
    # @overload list_versions_by_function(params = {})
    # @param [Hash] params ({})
    def list_versions_by_function(params = {}, options = {})
      req = build_request(:list_versions_by_function, params)
      req.send_request(options)
    end

    # Creates an [Lambda layer][1] from a ZIP archive. Each time you call
    # `PublishLayerVersion` with the same layer name, a new version is
    # created.
    #
    # Add layers to your function with CreateFunction or
    # UpdateFunctionConfiguration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [String] :description
    #   The description of the version.
    #
    # @option params [required, Types::LayerVersionContentInput] :content
    #   The function layer archive.
    #
    # @option params [Array<String>] :compatible_runtimes
    #   A list of compatible [function runtimes][1]. Used for filtering with
    #   ListLayers and ListLayerVersions.
    #
    #   The following list includes deprecated runtimes. For more information,
    #   see [Runtime deprecation policy][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #
    # @option params [String] :license_info
    #   The layer's software license. It can be any of the following:
    #
    #   * An [SPDX license identifier][1]. For example, `MIT`.
    #
    #   * The URL of a license hosted on the internet. For example,
    #     `https://opensource.org/licenses/MIT`.
    #
    #   * The full text of the license.
    #
    #
    #
    #   [1]: https://spdx.org/licenses/
    #
    # @option params [Array<String>] :compatible_architectures
    #   A list of compatible [instruction set architectures][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html
    #
    # @return [Types::PublishLayerVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishLayerVersionResponse#content #content} => Types::LayerVersionContentOutput
    #   * {Types::PublishLayerVersionResponse#layer_arn #layer_arn} => String
    #   * {Types::PublishLayerVersionResponse#layer_version_arn #layer_version_arn} => String
    #   * {Types::PublishLayerVersionResponse#description #description} => String
    #   * {Types::PublishLayerVersionResponse#created_date #created_date} => Time
    #   * {Types::PublishLayerVersionResponse#version #version} => Integer
    #   * {Types::PublishLayerVersionResponse#compatible_runtimes #compatible_runtimes} => Array&lt;String&gt;
    #   * {Types::PublishLayerVersionResponse#license_info #license_info} => String
    #   * {Types::PublishLayerVersionResponse#compatible_architectures #compatible_architectures} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_layer_version({
    #     layer_name: "LayerName", # required
    #     description: "Description",
    #     content: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #       zip_file: "data",
    #     },
    #     compatible_runtimes: ["nodejs"], # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2
    #     license_info: "LicenseInfo",
    #     compatible_architectures: ["x86_64"], # accepts x86_64, arm64
    #   })
    #
    # @example Response structure
    #
    #   resp.content.location #=> String
    #   resp.content.code_sha_256 #=> String
    #   resp.content.code_size #=> Integer
    #   resp.content.signing_profile_version_arn #=> String
    #   resp.content.signing_job_arn #=> String
    #   resp.layer_arn #=> String
    #   resp.layer_version_arn #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> Integer
    #   resp.compatible_runtimes #=> Array
    #   resp.compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.license_info #=> String
    #   resp.compatible_architectures #=> Array
    #   resp.compatible_architectures[0] #=> String, one of "x86_64", "arm64"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishLayerVersion AWS API Documentation
    #
    # @overload publish_layer_version(params = {})
    # @param [Hash] params ({})
    def publish_layer_version(params = {}, options = {})
      req = build_request(:publish_layer_version, params)
      req.send_request(options)
    end

    # Creates a [version][1] from the current code and configuration of a
    # function. Use versions to create a snapshot of your function code and
    # configuration that doesn't change.
    #
    # Lambda doesn't publish a version if the function's configuration and
    # code haven't changed since the last version. Use UpdateFunctionCode
    # or UpdateFunctionConfiguration to update the function before
    # publishing a version.
    #
    # Clients can invoke versions directly or with an alias. To create an
    # alias, use CreateAlias.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :code_sha_256
    #   Only publish a version if the hash value matches the value that's
    #   specified. Use this option to avoid publishing a version if the
    #   function code has changed since you last updated it. You can get the
    #   hash for the version that you uploaded from the output of
    #   UpdateFunctionCode.
    #
    # @option params [String] :description
    #   A description for the version to override the description in the
    #   function configuration.
    #
    # @option params [String] :revision_id
    #   Only update the function if the revision ID matches the ID that's
    #   specified. Use this option to avoid publishing a version if the
    #   function configuration has changed since you last updated it.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #   * {Types::FunctionConfiguration#state #state} => String
    #   * {Types::FunctionConfiguration#state_reason #state_reason} => String
    #   * {Types::FunctionConfiguration#state_reason_code #state_reason_code} => String
    #   * {Types::FunctionConfiguration#last_update_status #last_update_status} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason #last_update_status_reason} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason_code #last_update_status_reason_code} => String
    #   * {Types::FunctionConfiguration#file_system_configs #file_system_configs} => Array&lt;Types::FileSystemConfig&gt;
    #   * {Types::FunctionConfiguration#package_type #package_type} => String
    #   * {Types::FunctionConfiguration#image_config_response #image_config_response} => Types::ImageConfigResponse
    #   * {Types::FunctionConfiguration#signing_profile_version_arn #signing_profile_version_arn} => String
    #   * {Types::FunctionConfiguration#signing_job_arn #signing_job_arn} => String
    #   * {Types::FunctionConfiguration#architectures #architectures} => Array&lt;String&gt;
    #   * {Types::FunctionConfiguration#ephemeral_storage #ephemeral_storage} => Types::EphemeralStorage
    #   * {Types::FunctionConfiguration#snap_start #snap_start} => Types::SnapStartResponse
    #   * {Types::FunctionConfiguration#runtime_version_config #runtime_version_config} => Types::RuntimeVersionConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_version({
    #     function_name: "FunctionName", # required
    #     code_sha_256: "String",
    #     description: "Description",
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of "Pending", "Active", "Inactive", "Failed"
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of "Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.file_system_configs #=> Array
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of "Zip", "Image"
    #   resp.image_config_response.image_config.entry_point #=> Array
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array
    #   resp.image_config_response.image_config.command[0] #=> String
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #   resp.architectures #=> Array
    #   resp.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.ephemeral_storage.size #=> Integer
    #   resp.snap_start.apply_on #=> String, one of "PublishedVersions", "None"
    #   resp.snap_start.optimization_status #=> String, one of "On", "Off"
    #   resp.runtime_version_config.runtime_version_arn #=> String
    #   resp.runtime_version_config.error.error_code #=> String
    #   resp.runtime_version_config.error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishVersion AWS API Documentation
    #
    # @overload publish_version(params = {})
    # @param [Hash] params ({})
    def publish_version(params = {}, options = {})
      req = build_request(:publish_version, params)
      req.send_request(options)
    end

    # Update the code signing configuration for the function. Changes to the
    # code signing configuration take effect the next time a user tries to
    # deploy a code package to the function.
    #
    # @option params [required, String] :code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing configuration.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @return [Types::PutFunctionCodeSigningConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutFunctionCodeSigningConfigResponse#code_signing_config_arn #code_signing_config_arn} => String
    #   * {Types::PutFunctionCodeSigningConfigResponse#function_name #function_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_function_code_signing_config({
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     function_name: "FunctionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_signing_config_arn #=> String
    #   resp.function_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionCodeSigningConfig AWS API Documentation
    #
    # @overload put_function_code_signing_config(params = {})
    # @param [Hash] params ({})
    def put_function_code_signing_config(params = {}, options = {})
      req = build_request(:put_function_code_signing_config, params)
      req.send_request(options)
    end

    # Sets the maximum number of simultaneous executions for a function, and
    # reserves capacity for that concurrency level.
    #
    # Concurrency settings apply to the function as a whole, including all
    # published versions and the unpublished version. Reserving concurrency
    # both ensures that your function has capacity to process the specified
    # number of events simultaneously, and prevents it from scaling beyond
    # that level. Use GetFunction to see the current setting for a function.
    #
    # Use GetAccountSettings to see your Regional concurrency limit. You can
    # reserve concurrency for as many functions as you like, as long as you
    # leave at least 100 simultaneous executions unreserved for functions
    # that aren't configured with a per-function limit. For more
    # information, see [Lambda function scaling][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-scaling.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, Integer] :reserved_concurrent_executions
    #   The number of simultaneous executions to reserve for the function.
    #
    # @return [Types::Concurrency] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Concurrency#reserved_concurrent_executions #reserved_concurrent_executions} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_function_concurrency({
    #     function_name: "FunctionName", # required
    #     reserved_concurrent_executions: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_concurrent_executions #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionConcurrency AWS API Documentation
    #
    # @overload put_function_concurrency(params = {})
    # @param [Hash] params ({})
    def put_function_concurrency(params = {}, options = {})
      req = build_request(:put_function_concurrency, params)
      req.send_request(options)
    end

    # Configures options for [asynchronous invocation][1] on a function,
    # version, or alias. If a configuration already exists for a function,
    # version, or alias, this operation overwrites it. If you exclude any
    # settings, they are removed. To set one option without affecting
    # existing settings for other options, use
    # UpdateFunctionEventInvokeConfig.
    #
    # By default, Lambda retries an asynchronous invocation twice if the
    # function returns an error. It retains events in a queue for up to six
    # hours. When an event fails all processing attempts or stays in the
    # asynchronous invocation queue for too long, Lambda discards it. To
    # retain discarded events, configure a dead-letter queue with
    # UpdateFunctionConfiguration.
    #
    # To send an invocation record to a queue, topic, function, or event
    # bus, specify a [destination][2]. You can configure separate
    # destinations for successful invocations (on-success) and events that
    # fail all processing attempts (on-failure). You can configure
    # destinations in addition to or instead of a dead-letter queue.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   A version number or alias name.
    #
    # @option params [Integer] :maximum_retry_attempts
    #   The maximum number of times to retry when the function returns an
    #   error.
    #
    # @option params [Integer] :maximum_event_age_in_seconds
    #   The maximum age of a request that Lambda sends to a function for
    #   processing.
    #
    # @option params [Types::DestinationConfig] :destination_config
    #   A destination for events after they have been sent to a function for
    #   processing.
    #
    #   **Destinations**
    #
    #   * **Function** - The Amazon Resource Name (ARN) of a Lambda function.
    #
    #   * **Queue** - The ARN of a standard SQS queue.
    #
    #   * **Topic** - The ARN of a standard SNS topic.
    #
    #   * **Event Bus** - The ARN of an Amazon EventBridge event bus.
    #
    # @return [Types::FunctionEventInvokeConfig] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionEventInvokeConfig#last_modified #last_modified} => Time
    #   * {Types::FunctionEventInvokeConfig#function_arn #function_arn} => String
    #   * {Types::FunctionEventInvokeConfig#maximum_retry_attempts #maximum_retry_attempts} => Integer
    #   * {Types::FunctionEventInvokeConfig#maximum_event_age_in_seconds #maximum_event_age_in_seconds} => Integer
    #   * {Types::FunctionEventInvokeConfig#destination_config #destination_config} => Types::DestinationConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_function_event_invoke_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn",
    #       },
    #       on_failure: {
    #         destination: "DestinationArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.last_modified #=> Time
    #   resp.function_arn #=> String
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.maximum_event_age_in_seconds #=> Integer
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure.destination #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionEventInvokeConfig AWS API Documentation
    #
    # @overload put_function_event_invoke_config(params = {})
    # @param [Hash] params ({})
    def put_function_event_invoke_config(params = {}, options = {})
      req = build_request(:put_function_event_invoke_config, params)
      req.send_request(options)
    end

    # Adds a provisioned concurrency configuration to a function's alias or
    # version.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :qualifier
    #   The version number or alias name.
    #
    # @option params [required, Integer] :provisioned_concurrent_executions
    #   The amount of provisioned concurrency to allocate for the version or
    #   alias.
    #
    # @return [Types::PutProvisionedConcurrencyConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProvisionedConcurrencyConfigResponse#requested_provisioned_concurrent_executions #requested_provisioned_concurrent_executions} => Integer
    #   * {Types::PutProvisionedConcurrencyConfigResponse#available_provisioned_concurrent_executions #available_provisioned_concurrent_executions} => Integer
    #   * {Types::PutProvisionedConcurrencyConfigResponse#allocated_provisioned_concurrent_executions #allocated_provisioned_concurrent_executions} => Integer
    #   * {Types::PutProvisionedConcurrencyConfigResponse#status #status} => String
    #   * {Types::PutProvisionedConcurrencyConfigResponse#status_reason #status_reason} => String
    #   * {Types::PutProvisionedConcurrencyConfigResponse#last_modified #last_modified} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_provisioned_concurrency_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier", # required
    #     provisioned_concurrent_executions: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.requested_provisioned_concurrent_executions #=> Integer
    #   resp.available_provisioned_concurrent_executions #=> Integer
    #   resp.allocated_provisioned_concurrent_executions #=> Integer
    #   resp.status #=> String, one of "IN_PROGRESS", "READY", "FAILED"
    #   resp.status_reason #=> String
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutProvisionedConcurrencyConfig AWS API Documentation
    #
    # @overload put_provisioned_concurrency_config(params = {})
    # @param [Hash] params ({})
    def put_provisioned_concurrency_config(params = {}, options = {})
      req = build_request(:put_provisioned_concurrency_config, params)
      req.send_request(options)
    end

    # Sets the runtime management configuration for a function's version.
    # For more information, see [Runtime updates][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version of the function. This can be `$LATEST` or a
    #   published version number. If no value is specified, the configuration
    #   for the `$LATEST` version is returned.
    #
    # @option params [required, String] :update_runtime_on
    #   Specify the runtime update mode.
    #
    #   * **Auto (default)** - Automatically update to the most recent and
    #     secure runtime version using a [Two-phase runtime version
    #     rollout][1]. This is the best choice for most customers to ensure
    #     they always benefit from runtime updates.
    #
    #   * **Function update** - Lambda updates the runtime of your function to
    #     the most recent and secure runtime version when you update your
    #     function. This approach synchronizes runtime updates with function
    #     deployments, giving you control over when runtime updates are
    #     applied and allowing you to detect and mitigate rare runtime update
    #     incompatibilities early. When using this setting, you need to
    #     regularly update your functions to keep their runtime up-to-date.
    #
    #   * **Manual** - You specify a runtime version in your function
    #     configuration. The function will use this runtime version
    #     indefinitely. In the rare case where a new runtime version is
    #     incompatible with an existing function, this allows you to roll back
    #     your function to an earlier runtime version. For more information,
    #     see [Roll back a runtime version][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback
    #
    # @option params [String] :runtime_version_arn
    #   The ARN of the runtime version you want the function to use.
    #
    #   <note markdown="1"> This is only required if you're using the **Manual** runtime update
    #   mode.
    #
    #    </note>
    #
    # @return [Types::PutRuntimeManagementConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRuntimeManagementConfigResponse#update_runtime_on #update_runtime_on} => String
    #   * {Types::PutRuntimeManagementConfigResponse#function_arn #function_arn} => String
    #   * {Types::PutRuntimeManagementConfigResponse#runtime_version_arn #runtime_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_runtime_management_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #     update_runtime_on: "Auto", # required, accepts Auto, Manual, FunctionUpdate
    #     runtime_version_arn: "RuntimeVersionArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_runtime_on #=> String, one of "Auto", "Manual", "FunctionUpdate"
    #   resp.function_arn #=> String
    #   resp.runtime_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutRuntimeManagementConfig AWS API Documentation
    #
    # @overload put_runtime_management_config(params = {})
    # @param [Hash] params ({})
    def put_runtime_management_config(params = {}, options = {})
      req = build_request(:put_runtime_management_config, params)
      req.send_request(options)
    end

    # Removes a statement from the permissions policy for a version of an
    # [Lambda layer][1]. For more information, see
    # AddLayerVersionPermission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @option params [required, String] :statement_id
    #   The identifier that was specified when the statement was added.
    #
    # @option params [String] :revision_id
    #   Only update the policy if the revision ID matches the ID specified.
    #   Use this option to avoid modifying a policy that has changed since you
    #   last read it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_layer_version_permission({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #     statement_id: "StatementId", # required
    #     revision_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemoveLayerVersionPermission AWS API Documentation
    #
    # @overload remove_layer_version_permission(params = {})
    # @param [Hash] params ({})
    def remove_layer_version_permission(params = {}, options = {})
      req = build_request(:remove_layer_version_permission, params)
      req.send_request(options)
    end

    # Revokes function-use permission from an Amazon Web Service or another
    # Amazon Web Services account. You can get the ID of the statement from
    # the output of GetPolicy.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :statement_id
    #   Statement ID of the permission to remove.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to remove permissions from a published
    #   version of the function.
    #
    # @option params [String] :revision_id
    #   Update the policy only if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a policy that has
    #   changed since you last read it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission({
    #     function_name: "FunctionName", # required
    #     statement_id: "NamespacedStatementId", # required
    #     qualifier: "Qualifier",
    #     revision_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemovePermission AWS API Documentation
    #
    # @overload remove_permission(params = {})
    # @param [Hash] params ({})
    def remove_permission(params = {}, options = {})
      req = build_request(:remove_permission, params)
      req.send_request(options)
    end

    # Adds [tags][1] to a function.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, String] :resource
    #   The function's Amazon Resource Name (ARN).
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags to apply to the function.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource: "FunctionArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes [tags][1] from a function.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, String] :resource
    #   The function's Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the function.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource: "FunctionArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of a Lambda function [alias][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   The name of the alias.
    #
    # @option params [String] :function_version
    #   The function version that the alias invokes.
    #
    # @option params [String] :description
    #   A description of the alias.
    #
    # @option params [Types::AliasRoutingConfiguration] :routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing
    #
    # @option params [String] :revision_id
    #   Only update the alias if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying an alias that has
    #   changed since you last read it.
    #
    # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AliasConfiguration#alias_arn #alias_arn} => String
    #   * {Types::AliasConfiguration#name #name} => String
    #   * {Types::AliasConfiguration#function_version #function_version} => String
    #   * {Types::AliasConfiguration#description #description} => String
    #   * {Types::AliasConfiguration#routing_config #routing_config} => Types::AliasRoutingConfiguration
    #   * {Types::AliasConfiguration#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0,
    #       },
    #     },
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_arn #=> String
    #   resp.name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config.additional_version_weights #=> Hash
    #   resp.routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateAlias AWS API Documentation
    #
    # @overload update_alias(params = {})
    # @param [Hash] params ({})
    def update_alias(params = {}, options = {})
      req = build_request(:update_alias, params)
      req.send_request(options)
    end

    # Update the code signing configuration. Changes to the code signing
    # configuration take effect the next time a user tries to deploy a code
    # package to the function.
    #
    # @option params [required, String] :code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing configuration.
    #
    # @option params [String] :description
    #   Descriptive name for this code signing configuration.
    #
    # @option params [Types::AllowedPublishers] :allowed_publishers
    #   Signing profiles for this code signing configuration.
    #
    # @option params [Types::CodeSigningPolicies] :code_signing_policies
    #   The code signing policy.
    #
    # @return [Types::UpdateCodeSigningConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCodeSigningConfigResponse#code_signing_config #code_signing_config} => Types::CodeSigningConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_code_signing_config({
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     description: "Description",
    #     allowed_publishers: {
    #       signing_profile_version_arns: ["Arn"], # required
    #     },
    #     code_signing_policies: {
    #       untrusted_artifact_on_deployment: "Warn", # accepts Warn, Enforce
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_signing_config.code_signing_config_id #=> String
    #   resp.code_signing_config.code_signing_config_arn #=> String
    #   resp.code_signing_config.description #=> String
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns #=> Array
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.code_signing_config.code_signing_policies.untrusted_artifact_on_deployment #=> String, one of "Warn", "Enforce"
    #   resp.code_signing_config.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateCodeSigningConfig AWS API Documentation
    #
    # @overload update_code_signing_config(params = {})
    # @param [Hash] params ({})
    def update_code_signing_config(params = {}, options = {})
      req = build_request(:update_code_signing_config, params)
      req.send_request(options)
    end

    # Updates an event source mapping. You can change the function that
    # Lambda invokes, or pause invocation and resume later from the same
    # location.
    #
    # For details about how to configure different event sources, see the
    # following topics.
    #
    # * [ Amazon DynamoDB Streams][1]
    #
    # * [ Amazon Kinesis][2]
    #
    # * [ Amazon SQS][3]
    #
    # * [ Amazon MQ and RabbitMQ][4]
    #
    # * [ Amazon MSK][5]
    #
    # * [ Apache Kafka][6]
    #
    # * [ Amazon DocumentDB][7]
    #
    # The following error handling options are available only for stream
    # sources (DynamoDB and Kinesis):
    #
    # * `BisectBatchOnFunctionError` – If the function returns an error,
    #   split the batch in two and retry.
    #
    # * `DestinationConfig` – Send discarded records to an Amazon SQS queue
    #   or Amazon SNS topic.
    #
    # * `MaximumRecordAgeInSeconds` – Discard records older than the
    #   specified age. The default value is infinite (-1). When set to
    #   infinite (-1), failed records are retried until the record expires
    #
    # * `MaximumRetryAttempts` – Discard records after the specified number
    #   of retries. The default value is infinite (-1). When set to infinite
    #   (-1), failed records are retried until the record expires.
    #
    # * `ParallelizationFactor` – Process multiple batches from each shard
    #   concurrently.
    #
    # For information about which configuration parameters apply to each
    # event source, see the following topics.
    #
    # * [ Amazon DynamoDB Streams][8]
    #
    # * [ Amazon Kinesis][9]
    #
    # * [ Amazon SQS][10]
    #
    # * [ Amazon MQ and RabbitMQ][11]
    #
    # * [ Amazon MSK][12]
    #
    # * [ Apache Kafka][13]
    #
    # * [ Amazon DocumentDB][14]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource
    # [4]: https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping
    # [5]: https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html
    # [6]: https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html
    # [7]: https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html
    # [8]: https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params
    # [9]: https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params
    # [10]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params
    # [11]: https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params
    # [12]: https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms
    # [13]: https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms
    # [14]: https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration
    #
    # @option params [required, String] :uuid
    #   The identifier of the event source mapping.
    #
    # @option params [String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `MyFunction`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** – `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #
    # @option params [Boolean] :enabled
    #   When true, the event source mapping is active. When false, Lambda
    #   pauses polling and invocation.
    #
    #   Default: True
    #
    # @option params [Integer] :batch_size
    #   The maximum number of records in each batch that Lambda pulls from
    #   your stream or queue and sends to your function. Lambda passes all of
    #   the records in the batch to the function in a single call, up to the
    #   payload limit for synchronous invocation (6 MB).
    #
    #   * **Amazon Kinesis** – Default 100. Max 10,000.
    #
    #   * **Amazon DynamoDB Streams** – Default 100. Max 10,000.
    #
    #   * **Amazon Simple Queue Service** – Default 10. For standard queues
    #     the max is 10,000. For FIFO queues the max is 10.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** – Default 100. Max
    #     10,000.
    #
    #   * **Self-managed Apache Kafka** – Default 100. Max 10,000.
    #
    #   * **Amazon MQ (ActiveMQ and RabbitMQ)** – Default 100. Max 10,000.
    #
    #   * **DocumentDB** – Default 100. Max 10,000.
    #
    # @option params [Types::FilterCriteria] :filter_criteria
    #   An object that defines the filter criteria that determine whether
    #   Lambda should process an event. For more information, see [Lambda
    #   event filtering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html
    #
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   The maximum amount of time, in seconds, that Lambda spends gathering
    #   records before invoking the function. You can configure
    #   `MaximumBatchingWindowInSeconds` to any value from 0 seconds to 300
    #   seconds in increments of seconds.
    #
    #   For streams and Amazon SQS event sources, the default batching window
    #   is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ,
    #   and DocumentDB event sources, the default batching window is 500 ms.
    #   Note that because you can only change `MaximumBatchingWindowInSeconds`
    #   in increments of seconds, you cannot revert back to the 500 ms default
    #   batching window after you have changed it. To restore the default
    #   batching window, you must create a new event source mapping.
    #
    #   Related setting: For streams and Amazon SQS event sources, when you
    #   set `BatchSize` to a value greater than 10, you must set
    #   `MaximumBatchingWindowInSeconds` to at least 1.
    #
    # @option params [Types::DestinationConfig] :destination_config
    #   (Kinesis and DynamoDB Streams only) A standard Amazon SQS queue or
    #   standard Amazon SNS topic destination for discarded records.
    #
    # @option params [Integer] :maximum_record_age_in_seconds
    #   (Kinesis and DynamoDB Streams only) Discard records older than the
    #   specified age. The default value is infinite (-1).
    #
    # @option params [Boolean] :bisect_batch_on_function_error
    #   (Kinesis and DynamoDB Streams only) If the function returns an error,
    #   split the batch in two and retry.
    #
    # @option params [Integer] :maximum_retry_attempts
    #   (Kinesis and DynamoDB Streams only) Discard records after the
    #   specified number of retries. The default value is infinite (-1). When
    #   set to infinite (-1), failed records are retried until the record
    #   expires.
    #
    # @option params [Integer] :parallelization_factor
    #   (Kinesis and DynamoDB Streams only) The number of batches to process
    #   from each shard concurrently.
    #
    # @option params [Array<Types::SourceAccessConfiguration>] :source_access_configurations
    #   An array of authentication protocols or VPC components required to
    #   secure your event source.
    #
    # @option params [Integer] :tumbling_window_in_seconds
    #   (Kinesis and DynamoDB Streams only) The duration in seconds of a
    #   processing window for DynamoDB and Kinesis Streams event sources. A
    #   value of 0 seconds indicates no tumbling window.
    #
    # @option params [Array<String>] :function_response_types
    #   (Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response
    #   type enums applied to the event source mapping.
    #
    # @option params [Types::ScalingConfig] :scaling_config
    #   (Amazon SQS only) The scaling configuration for the event source. For
    #   more information, see [Configuring maximum concurrency for Amazon SQS
    #   event sources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency
    #
    # @option params [Types::DocumentDBEventSourceConfig] :document_db_event_source_config
    #   Specific configuration settings for a DocumentDB event source.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#starting_position #starting_position} => String
    #   * {Types::EventSourceMappingConfiguration#starting_position_timestamp #starting_position_timestamp} => Time
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#maximum_batching_window_in_seconds #maximum_batching_window_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#parallelization_factor #parallelization_factor} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#filter_criteria #filter_criteria} => Types::FilterCriteria
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #   * {Types::EventSourceMappingConfiguration#destination_config #destination_config} => Types::DestinationConfig
    #   * {Types::EventSourceMappingConfiguration#topics #topics} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#queues #queues} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#source_access_configurations #source_access_configurations} => Array&lt;Types::SourceAccessConfiguration&gt;
    #   * {Types::EventSourceMappingConfiguration#self_managed_event_source #self_managed_event_source} => Types::SelfManagedEventSource
    #   * {Types::EventSourceMappingConfiguration#maximum_record_age_in_seconds #maximum_record_age_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#bisect_batch_on_function_error #bisect_batch_on_function_error} => Boolean
    #   * {Types::EventSourceMappingConfiguration#maximum_retry_attempts #maximum_retry_attempts} => Integer
    #   * {Types::EventSourceMappingConfiguration#tumbling_window_in_seconds #tumbling_window_in_seconds} => Integer
    #   * {Types::EventSourceMappingConfiguration#function_response_types #function_response_types} => Array&lt;String&gt;
    #   * {Types::EventSourceMappingConfiguration#amazon_managed_kafka_event_source_config #amazon_managed_kafka_event_source_config} => Types::AmazonManagedKafkaEventSourceConfig
    #   * {Types::EventSourceMappingConfiguration#self_managed_kafka_event_source_config #self_managed_kafka_event_source_config} => Types::SelfManagedKafkaEventSourceConfig
    #   * {Types::EventSourceMappingConfiguration#scaling_config #scaling_config} => Types::ScalingConfig
    #   * {Types::EventSourceMappingConfiguration#document_db_event_source_config #document_db_event_source_config} => Types::DocumentDBEventSourceConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_source_mapping({
    #     uuid: "String", # required
    #     function_name: "FunctionName",
    #     enabled: false,
    #     batch_size: 1,
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern",
    #         },
    #       ],
    #     },
    #     maximum_batching_window_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn",
    #       },
    #       on_failure: {
    #         destination: "DestinationArn",
    #       },
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     parallelization_factor: 1,
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH", # accepts BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH, VIRTUAL_HOST, CLIENT_CERTIFICATE_TLS_AUTH, SERVER_ROOT_CA_CERTIFICATE
    #         uri: "URI",
    #       },
    #     ],
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures"], # accepts ReportBatchItemFailures
    #     scaling_config: {
    #       maximum_concurrency: 1,
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup", # accepts UpdateLookup, Default
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.starting_position #=> String, one of "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"
    #   resp.starting_position_timestamp #=> Time
    #   resp.batch_size #=> Integer
    #   resp.maximum_batching_window_in_seconds #=> Integer
    #   resp.parallelization_factor #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.filter_criteria.filters #=> Array
    #   resp.filter_criteria.filters[0].pattern #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure.destination #=> String
    #   resp.topics #=> Array
    #   resp.topics[0] #=> String
    #   resp.queues #=> Array
    #   resp.queues[0] #=> String
    #   resp.source_access_configurations #=> Array
    #   resp.source_access_configurations[0].type #=> String, one of "BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"
    #   resp.source_access_configurations[0].uri #=> String
    #   resp.self_managed_event_source.endpoints #=> Hash
    #   resp.self_managed_event_source.endpoints["EndPointType"] #=> Array
    #   resp.self_managed_event_source.endpoints["EndPointType"][0] #=> String
    #   resp.maximum_record_age_in_seconds #=> Integer
    #   resp.bisect_batch_on_function_error #=> Boolean
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.tumbling_window_in_seconds #=> Integer
    #   resp.function_response_types #=> Array
    #   resp.function_response_types[0] #=> String, one of "ReportBatchItemFailures"
    #   resp.amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.scaling_config.maximum_concurrency #=> Integer
    #   resp.document_db_event_source_config.database_name #=> String
    #   resp.document_db_event_source_config.collection_name #=> String
    #   resp.document_db_event_source_config.full_document #=> String, one of "UpdateLookup", "Default"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateEventSourceMapping AWS API Documentation
    #
    # @overload update_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def update_event_source_mapping(params = {}, options = {})
      req = build_request(:update_event_source_mapping, params)
      req.send_request(options)
    end

    # Updates a Lambda function's code. If code signing is enabled for the
    # function, the code package must be signed by a trusted publisher. For
    # more information, see [Configuring code signing for Lambda][1].
    #
    # If the function's package type is `Image`, then you must specify the
    # code package in `ImageUri` as the URI of a [container image][2] in the
    # Amazon ECR registry.
    #
    # If the function's package type is `Zip`, then you must specify the
    # deployment package as a [.zip file archive][3]. Enter the Amazon S3
    # bucket and key of the code .zip file location. You can also provide
    # the function code inline using the `ZipFile` field.
    #
    # The code in the deployment package must be compatible with the target
    # instruction set architecture of the function (`x86-64` or `arm64`).
    #
    # The function's code is locked when you publish a version. You can't
    # modify the code of a published version, only the unpublished version.
    #
    # <note markdown="1"> For a function defined as a container image, Lambda resolves the image
    # tag to an image digest. In Amazon ECR, if you update the image tag to
    # a new image, Lambda does not automatically update the function.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String, StringIO, File] :zip_file
    #   The base64-encoded contents of the deployment package. Amazon Web
    #   Services SDK and CLI clients handle the encoding for you. Use only
    #   with a function defined with a .zip file archive deployment package.
    #
    # @option params [String] :s3_bucket
    #   An Amazon S3 bucket in the same Amazon Web Services Region as your
    #   function. The bucket can be in a different Amazon Web Services
    #   account. Use only with a function defined with a .zip file archive
    #   deployment package.
    #
    # @option params [String] :s3_key
    #   The Amazon S3 key of the deployment package. Use only with a function
    #   defined with a .zip file archive deployment package.
    #
    # @option params [String] :s3_object_version
    #   For versioned objects, the version of the deployment package object to
    #   use.
    #
    # @option params [String] :image_uri
    #   URI of a container image in the Amazon ECR registry. Do not use for a
    #   function defined with a .zip file archive.
    #
    # @option params [Boolean] :publish
    #   Set to true to publish a new version of the function after updating
    #   the code. This has the same effect as calling PublishVersion
    #   separately.
    #
    # @option params [Boolean] :dry_run
    #   Set to true to validate the request parameters and access permissions
    #   without modifying the function code.
    #
    # @option params [String] :revision_id
    #   Update the function only if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a function that has
    #   changed since you last read it.
    #
    # @option params [Array<String>] :architectures
    #   The instruction set architecture that the function supports. Enter a
    #   string array with one of the valid values (arm64 or x86\_64). The
    #   default value is `x86_64`.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #   * {Types::FunctionConfiguration#state #state} => String
    #   * {Types::FunctionConfiguration#state_reason #state_reason} => String
    #   * {Types::FunctionConfiguration#state_reason_code #state_reason_code} => String
    #   * {Types::FunctionConfiguration#last_update_status #last_update_status} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason #last_update_status_reason} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason_code #last_update_status_reason_code} => String
    #   * {Types::FunctionConfiguration#file_system_configs #file_system_configs} => Array&lt;Types::FileSystemConfig&gt;
    #   * {Types::FunctionConfiguration#package_type #package_type} => String
    #   * {Types::FunctionConfiguration#image_config_response #image_config_response} => Types::ImageConfigResponse
    #   * {Types::FunctionConfiguration#signing_profile_version_arn #signing_profile_version_arn} => String
    #   * {Types::FunctionConfiguration#signing_job_arn #signing_job_arn} => String
    #   * {Types::FunctionConfiguration#architectures #architectures} => Array&lt;String&gt;
    #   * {Types::FunctionConfiguration#ephemeral_storage #ephemeral_storage} => Types::EphemeralStorage
    #   * {Types::FunctionConfiguration#snap_start #snap_start} => Types::SnapStartResponse
    #   * {Types::FunctionConfiguration#runtime_version_config #runtime_version_config} => Types::RuntimeVersionConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_code({
    #     function_name: "FunctionName", # required
    #     zip_file: "data",
    #     s3_bucket: "S3Bucket",
    #     s3_key: "S3Key",
    #     s3_object_version: "S3ObjectVersion",
    #     image_uri: "String",
    #     publish: false,
    #     dry_run: false,
    #     revision_id: "String",
    #     architectures: ["x86_64"], # accepts x86_64, arm64
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of "Pending", "Active", "Inactive", "Failed"
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of "Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.file_system_configs #=> Array
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of "Zip", "Image"
    #   resp.image_config_response.image_config.entry_point #=> Array
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array
    #   resp.image_config_response.image_config.command[0] #=> String
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #   resp.architectures #=> Array
    #   resp.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.ephemeral_storage.size #=> Integer
    #   resp.snap_start.apply_on #=> String, one of "PublishedVersions", "None"
    #   resp.snap_start.optimization_status #=> String, one of "On", "Off"
    #   resp.runtime_version_config.runtime_version_arn #=> String
    #   resp.runtime_version_config.error.error_code #=> String
    #   resp.runtime_version_config.error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionCode AWS API Documentation
    #
    # @overload update_function_code(params = {})
    # @param [Hash] params ({})
    def update_function_code(params = {}, options = {})
      req = build_request(:update_function_code, params)
      req.send_request(options)
    end

    # Modify the version-specific settings of a Lambda function.
    #
    # When you update a function, Lambda provisions an instance of the
    # function and its supporting resources. If your function connects to a
    # VPC, this process can take a minute. During this time, you can't
    # modify the function, but you can still invoke it. The
    # `LastUpdateStatus`, `LastUpdateStatusReason`, and
    # `LastUpdateStatusReasonCode` fields in the response from
    # GetFunctionConfiguration indicate when the update is complete and the
    # function is processing events with the new configuration. For more
    # information, see [Lambda function states][1].
    #
    # These settings can vary between versions of a function and are locked
    # when you publish a version. You can't modify the configuration of a
    # published version, only the unpublished version.
    #
    # To configure function concurrency, use PutFunctionConcurrency. To
    # grant invoke permissions to an Amazon Web Services account or Amazon
    # Web Service, use AddPermission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :role
    #   The Amazon Resource Name (ARN) of the function's execution role.
    #
    # @option params [String] :handler
    #   The name of the method within your code that Lambda calls to run your
    #   function. Handler is required if the deployment package is a .zip file
    #   archive. The format includes the file name. It can also include
    #   namespaces and other qualifiers, depending on the runtime. For more
    #   information, see [Lambda programming model][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html
    #
    # @option params [String] :description
    #   A description of the function.
    #
    # @option params [Integer] :timeout
    #   The amount of time (in seconds) that Lambda allows a function to run
    #   before stopping it. The default is 3 seconds. The maximum allowed
    #   value is 900 seconds. For more information, see [Lambda execution
    #   environment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html
    #
    # @option params [Integer] :memory_size
    #   The amount of [memory available to the function][1] at runtime.
    #   Increasing the function memory also increases its CPU allocation. The
    #   default value is 128 MB. The value can be any multiple of 1 MB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   For network connectivity to Amazon Web Services resources in a VPC,
    #   specify a list of security groups and subnets in the VPC. When you
    #   connect a function to a VPC, it can access resources and the internet
    #   only through that VPC. For more information, see [Configuring a Lambda
    #   function to access resources in a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #
    # @option params [Types::Environment] :environment
    #   Environment variables that are accessible from function code during
    #   execution.
    #
    # @option params [String] :runtime
    #   The identifier of the function's [runtime][1]. Runtime is required if
    #   the deployment package is a .zip file archive.
    #
    #   The following list includes deprecated runtimes. For more information,
    #   see [Runtime deprecation policy][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy
    #
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   A dead-letter queue configuration that specifies the queue or topic
    #   where Lambda sends asynchronous events when they fail processing. For
    #   more information, see [Dead-letter queues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq
    #
    # @option params [String] :kms_key_arn
    #   The ARN of the Key Management Service (KMS) customer managed key
    #   that's used to encrypt your function's [environment variables][1].
    #   When [Lambda SnapStart][2] is activated, Lambda also uses this key is
    #   to encrypt your function's snapshot. If you deploy your function
    #   using a container image, Lambda also uses this key to encrypt your
    #   function when it's deployed. Note that this is not the same key
    #   that's used to protect your container image in the Amazon Elastic
    #   Container Registry (Amazon ECR). If you don't provide a customer
    #   managed key, Lambda uses a default service key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption
    #   [2]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html
    #
    # @option params [Types::TracingConfig] :tracing_config
    #   Set `Mode` to `Active` to sample and trace a subset of incoming
    #   requests with [X-Ray][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html
    #
    # @option params [String] :revision_id
    #   Update the function only if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a function that has
    #   changed since you last read it.
    #
    # @option params [Array<String>] :layers
    #   A list of [function layers][1] to add to the function's execution
    #   environment. Specify each layer by its ARN, including the version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [Array<Types::FileSystemConfig>] :file_system_configs
    #   Connection settings for an Amazon EFS file system.
    #
    # @option params [Types::ImageConfig] :image_config
    #   [Container image configuration values][1] that override the values in
    #   the container image Docker file.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html
    #
    # @option params [Types::EphemeralStorage] :ephemeral_storage
    #   The size of the function's `/tmp` directory in MB. The default value
    #   is 512, but can be any whole number between 512 and 10,240 MB.
    #
    # @option params [Types::SnapStart] :snap_start
    #   The function's [SnapStart][1] setting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #   * {Types::FunctionConfiguration#state #state} => String
    #   * {Types::FunctionConfiguration#state_reason #state_reason} => String
    #   * {Types::FunctionConfiguration#state_reason_code #state_reason_code} => String
    #   * {Types::FunctionConfiguration#last_update_status #last_update_status} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason #last_update_status_reason} => String
    #   * {Types::FunctionConfiguration#last_update_status_reason_code #last_update_status_reason_code} => String
    #   * {Types::FunctionConfiguration#file_system_configs #file_system_configs} => Array&lt;Types::FileSystemConfig&gt;
    #   * {Types::FunctionConfiguration#package_type #package_type} => String
    #   * {Types::FunctionConfiguration#image_config_response #image_config_response} => Types::ImageConfigResponse
    #   * {Types::FunctionConfiguration#signing_profile_version_arn #signing_profile_version_arn} => String
    #   * {Types::FunctionConfiguration#signing_job_arn #signing_job_arn} => String
    #   * {Types::FunctionConfiguration#architectures #architectures} => Array&lt;String&gt;
    #   * {Types::FunctionConfiguration#ephemeral_storage #ephemeral_storage} => Types::EphemeralStorage
    #   * {Types::FunctionConfiguration#snap_start #snap_start} => Types::SnapStartResponse
    #   * {Types::FunctionConfiguration#runtime_version_config #runtime_version_config} => Types::RuntimeVersionConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_configuration({
    #     function_name: "FunctionName", # required
    #     role: "RoleArn",
    #     handler: "Handler",
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue",
    #       },
    #     },
    #     runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2
    #     dead_letter_config: {
    #       target_arn: "ResourceArn",
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active", # accepts Active, PassThrough
    #     },
    #     revision_id: "String",
    #     layers: ["LayerVersionArn"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       },
    #     ],
    #     image_config: {
    #       entry_point: ["String"],
    #       command: ["String"],
    #       working_directory: "WorkingDirectory",
    #     },
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions", # accepts PublishedVersions, None
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of "Pending", "Active", "Inactive", "Failed"
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of "Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"
    #   resp.file_system_configs #=> Array
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of "Zip", "Image"
    #   resp.image_config_response.image_config.entry_point #=> Array
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array
    #   resp.image_config_response.image_config.command[0] #=> String
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #   resp.architectures #=> Array
    #   resp.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.ephemeral_storage.size #=> Integer
    #   resp.snap_start.apply_on #=> String, one of "PublishedVersions", "None"
    #   resp.snap_start.optimization_status #=> String, one of "On", "Off"
    #   resp.runtime_version_config.runtime_version_arn #=> String
    #   resp.runtime_version_config.error.error_code #=> String
    #   resp.runtime_version_config.error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionConfiguration AWS API Documentation
    #
    # @overload update_function_configuration(params = {})
    # @param [Hash] params ({})
    def update_function_configuration(params = {}, options = {})
      req = build_request(:update_function_configuration, params)
      req.send_request(options)
    end

    # Updates the configuration for asynchronous invocation for a function,
    # version, or alias.
    #
    # To configure options for asynchronous invocation, use
    # PutFunctionEventInvokeConfig.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   A version number or alias name.
    #
    # @option params [Integer] :maximum_retry_attempts
    #   The maximum number of times to retry when the function returns an
    #   error.
    #
    # @option params [Integer] :maximum_event_age_in_seconds
    #   The maximum age of a request that Lambda sends to a function for
    #   processing.
    #
    # @option params [Types::DestinationConfig] :destination_config
    #   A destination for events after they have been sent to a function for
    #   processing.
    #
    #   **Destinations**
    #
    #   * **Function** - The Amazon Resource Name (ARN) of a Lambda function.
    #
    #   * **Queue** - The ARN of a standard SQS queue.
    #
    #   * **Topic** - The ARN of a standard SNS topic.
    #
    #   * **Event Bus** - The ARN of an Amazon EventBridge event bus.
    #
    # @return [Types::FunctionEventInvokeConfig] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionEventInvokeConfig#last_modified #last_modified} => Time
    #   * {Types::FunctionEventInvokeConfig#function_arn #function_arn} => String
    #   * {Types::FunctionEventInvokeConfig#maximum_retry_attempts #maximum_retry_attempts} => Integer
    #   * {Types::FunctionEventInvokeConfig#maximum_event_age_in_seconds #maximum_event_age_in_seconds} => Integer
    #   * {Types::FunctionEventInvokeConfig#destination_config #destination_config} => Types::DestinationConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_event_invoke_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn",
    #       },
    #       on_failure: {
    #         destination: "DestinationArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.last_modified #=> Time
    #   resp.function_arn #=> String
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.maximum_event_age_in_seconds #=> Integer
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure.destination #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionEventInvokeConfig AWS API Documentation
    #
    # @overload update_function_event_invoke_config(params = {})
    # @param [Hash] params ({})
    def update_function_event_invoke_config(params = {}, options = {})
      req = build_request(:update_function_event_invoke_config, params)
      req.send_request(options)
    end

    # Updates the configuration for a Lambda function URL.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** – `my-function`.
    #
    #   * **Function ARN** –
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** – `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   The alias name.
    #
    # @option params [String] :auth_type
    #   The type of authentication that your function URL uses. Set to
    #   `AWS_IAM` if you want to restrict access to authenticated users only.
    #   Set to `NONE` if you want to bypass IAM authentication to create a
    #   public endpoint. For more information, see [Security and auth model
    #   for Lambda function URLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html
    #
    # @option params [Types::Cors] :cors
    #   The [cross-origin resource sharing (CORS)][1] settings for your
    #   function URL.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #
    # @option params [String] :invoke_mode
    #   Use one of the following options:
    #
    #   * `BUFFERED` – This is the default option. Lambda invokes your
    #     function using the `Invoke` API operation. Invocation results are
    #     available when the payload is complete. The maximum payload size is
    #     6 MB.
    #
    #   * `RESPONSE_STREAM` – Your function streams payload results as they
    #     become available. Lambda invokes your function using the
    #     `InvokeWithResponseStream` API operation. The maximum response
    #     payload size is 20 MB, however, you can [request a quota
    #     increase][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html
    #
    # @return [Types::UpdateFunctionUrlConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFunctionUrlConfigResponse#function_url #function_url} => String
    #   * {Types::UpdateFunctionUrlConfigResponse#function_arn #function_arn} => String
    #   * {Types::UpdateFunctionUrlConfigResponse#auth_type #auth_type} => String
    #   * {Types::UpdateFunctionUrlConfigResponse#cors #cors} => Types::Cors
    #   * {Types::UpdateFunctionUrlConfigResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateFunctionUrlConfigResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateFunctionUrlConfigResponse#invoke_mode #invoke_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_url_config({
    #     function_name: "FunctionName", # required
    #     qualifier: "FunctionUrlQualifier",
    #     auth_type: "NONE", # accepts NONE, AWS_IAM
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1,
    #     },
    #     invoke_mode: "BUFFERED", # accepts BUFFERED, RESPONSE_STREAM
    #   })
    #
    # @example Response structure
    #
    #   resp.function_url #=> String
    #   resp.function_arn #=> String
    #   resp.auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.cors.allow_credentials #=> Boolean
    #   resp.cors.allow_headers #=> Array
    #   resp.cors.allow_headers[0] #=> String
    #   resp.cors.allow_methods #=> Array
    #   resp.cors.allow_methods[0] #=> String
    #   resp.cors.allow_origins #=> Array
    #   resp.cors.allow_origins[0] #=> String
    #   resp.cors.expose_headers #=> Array
    #   resp.cors.expose_headers[0] #=> String
    #   resp.cors.max_age #=> Integer
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.invoke_mode #=> String, one of "BUFFERED", "RESPONSE_STREAM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionUrlConfig AWS API Documentation
    #
    # @overload update_function_url_config(params = {})
    # @param [Hash] params ({})
    def update_function_url_config(params = {}, options = {})
      req = build_request(:update_function_url_config, params)
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
      context[:gem_name] = 'aws-sdk-lambda'
      context[:gem_version] = '1.103.0'
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
    # | waiter_name              | params                              | :delay   | :max_attempts |
    # | ------------------------ | ----------------------------------- | -------- | ------------- |
    # | function_active          | {Client#get_function_configuration} | 5        | 60            |
    # | function_active_v2       | {Client#get_function}               | 1        | 300           |
    # | function_exists          | {Client#get_function}               | 1        | 20            |
    # | function_updated         | {Client#get_function_configuration} | 5        | 60            |
    # | function_updated_v2      | {Client#get_function}               | 1        | 300           |
    # | published_version_active | {Client#get_function_configuration} | 5        | 312           |
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
        function_active: Waiters::FunctionActive,
        function_active_v2: Waiters::FunctionActiveV2,
        function_exists: Waiters::FunctionExists,
        function_updated: Waiters::FunctionUpdated,
        function_updated_v2: Waiters::FunctionUpdatedV2,
        published_version_active: Waiters::PublishedVersionActive
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
