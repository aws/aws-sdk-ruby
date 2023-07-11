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

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudcontrolapi)

module Aws::CloudControlApi
  # An API client for CloudControlApi.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudControlApi::Client.new(
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

    @identifier = :cloudcontrolapi

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
    add_plugin(Aws::CloudControlApi::Plugins::Endpoints)

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
    #   @option options [Aws::CloudControlApi::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CloudControlApi::EndpointParameters`
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

    # Cancels the specified resource operation request. For more
    # information, see [Canceling resource operation requests][1] in the
    # *Amazon Web Services Cloud Control API User Guide*.
    #
    # Only resource operations requests with a status of `PENDING` or
    # `IN_PROGRESS` can be canceled.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-cancel
    #
    # @option params [required, String] :request_token
    #   The `RequestToken` of the `ProgressEvent` object returned by the
    #   resource operation request.
    #
    # @return [Types::CancelResourceRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelResourceRequestOutput#progress_event #progress_event} => Types::ProgressEvent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_resource_request({
    #     request_token: "RequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.progress_event.type_name #=> String
    #   resp.progress_event.identifier #=> String
    #   resp.progress_event.request_token #=> String
    #   resp.progress_event.operation #=> String, one of "CREATE", "DELETE", "UPDATE"
    #   resp.progress_event.operation_status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"
    #   resp.progress_event.event_time #=> Time
    #   resp.progress_event.resource_model #=> String
    #   resp.progress_event.status_message #=> String
    #   resp.progress_event.error_code #=> String, one of "NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"
    #   resp.progress_event.retry_after #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/CancelResourceRequest AWS API Documentation
    #
    # @overload cancel_resource_request(params = {})
    # @param [Hash] params ({})
    def cancel_resource_request(params = {}, options = {})
      req = build_request(:cancel_resource_request, params)
      req.send_request(options)
    end

    # Creates the specified resource. For more information, see [Creating a
    # resource][1] in the *Amazon Web Services Cloud Control API User
    # Guide*.
    #
    # After you have initiated a resource creation request, you can monitor
    # the progress of your request by calling [GetResourceRequestStatus][2]
    # using the `RequestToken` of the `ProgressEvent` type returned by
    # `CreateResource`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html
    # [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
    #
    # @option params [required, String] :type_name
    #   The name of the resource type.
    #
    # @option params [String] :type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this resource
    #   operation. The role specified must have the permissions required for
    #   this operation. The necessary permissions for each event handler are
    #   defined in the ` handlers ` section of the [resource type definition
    #   schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #
    # @option params [String] :client_token
    #   A unique identifier to ensure the idempotency of the resource request.
    #   As a best practice, specify this token to ensure idempotency, so that
    #   Amazon Web Services Cloud Control API can accurately distinguish
    #   between request retries and new resource requests. You might retry a
    #   resource request to ensure that it was successfully received.
    #
    #   A client token is valid for 36 hours once used. After that, a resource
    #   request with the same client token is treated as a new request.
    #
    #   If you do not specify a client token, one is generated for inclusion
    #   in the request.
    #
    #   For more information, see [Ensuring resource operation requests are
    #   unique][1] in the *Amazon Web Services Cloud Control API User Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency
    #
    # @option params [required, String] :desired_state
    #   Structured data format representing the desired state of the resource,
    #   consisting of that resource's properties and their desired values.
    #
    #   <note markdown="1"> Cloud Control API currently supports JSON as a structured data format.
    #
    #    </note>
    #
    #        <p>Specify the desired state as one of the following:</p> <ul> <li> <p>A JSON blob</p> </li> <li> <p>A local path containing the desired state in JSON data format</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html#resource-operations-create-desiredstate">Composing the desired state of the resource</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p> <p>For more information about the properties of a specific resource, refer to the related topic for the resource in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Resource and property types reference</a> in the <i>CloudFormation Users Guide</i>.</p>
    #
    # @return [Types::CreateResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceOutput#progress_event #progress_event} => Types::ProgressEvent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource({
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     desired_state: "Properties", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.progress_event.type_name #=> String
    #   resp.progress_event.identifier #=> String
    #   resp.progress_event.request_token #=> String
    #   resp.progress_event.operation #=> String, one of "CREATE", "DELETE", "UPDATE"
    #   resp.progress_event.operation_status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"
    #   resp.progress_event.event_time #=> Time
    #   resp.progress_event.resource_model #=> String
    #   resp.progress_event.status_message #=> String
    #   resp.progress_event.error_code #=> String, one of "NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"
    #   resp.progress_event.retry_after #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/CreateResource AWS API Documentation
    #
    # @overload create_resource(params = {})
    # @param [Hash] params ({})
    def create_resource(params = {}, options = {})
      req = build_request(:create_resource, params)
      req.send_request(options)
    end

    # Deletes the specified resource. For details, see [Deleting a
    # resource][1] in the *Amazon Web Services Cloud Control API User
    # Guide*.
    #
    # After you have initiated a resource deletion request, you can monitor
    # the progress of your request by calling [GetResourceRequestStatus][2]
    # using the `RequestToken` of the `ProgressEvent` returned by
    # `DeleteResource`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html
    # [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
    #
    # @option params [required, String] :type_name
    #   The name of the resource type.
    #
    # @option params [String] :type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this resource
    #   operation. The role specified must have the permissions required for
    #   this operation. The necessary permissions for each event handler are
    #   defined in the ` handlers ` section of the [resource type definition
    #   schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #
    # @option params [String] :client_token
    #   A unique identifier to ensure the idempotency of the resource request.
    #   As a best practice, specify this token to ensure idempotency, so that
    #   Amazon Web Services Cloud Control API can accurately distinguish
    #   between request retries and new resource requests. You might retry a
    #   resource request to ensure that it was successfully received.
    #
    #   A client token is valid for 36 hours once used. After that, a resource
    #   request with the same client token is treated as a new request.
    #
    #   If you do not specify a client token, one is generated for inclusion
    #   in the request.
    #
    #   For more information, see [Ensuring resource operation requests are
    #   unique][1] in the *Amazon Web Services Cloud Control API User Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency
    #
    # @option params [required, String] :identifier
    #   The identifier for the resource.
    #
    #   You can specify the primary identifier, or any secondary identifier
    #   defined for the resource type in its resource schema. You can only
    #   specify one identifier. Primary identifiers can be specified as a
    #   string or JSON; secondary identifiers must be specified as JSON.
    #
    #   For compound primary identifiers (that is, one that consists of
    #   multiple resource properties strung together), to specify the primary
    #   identifier as a string, list the property values *in the order they
    #   are specified* in the primary identifier definition, separated by `|`.
    #
    #   For more information, see [Identifying resources][1] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html
    #
    # @return [Types::DeleteResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourceOutput#progress_event #progress_event} => Types::ProgressEvent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource({
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.progress_event.type_name #=> String
    #   resp.progress_event.identifier #=> String
    #   resp.progress_event.request_token #=> String
    #   resp.progress_event.operation #=> String, one of "CREATE", "DELETE", "UPDATE"
    #   resp.progress_event.operation_status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"
    #   resp.progress_event.event_time #=> Time
    #   resp.progress_event.resource_model #=> String
    #   resp.progress_event.status_message #=> String
    #   resp.progress_event.error_code #=> String, one of "NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"
    #   resp.progress_event.retry_after #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/DeleteResource AWS API Documentation
    #
    # @overload delete_resource(params = {})
    # @param [Hash] params ({})
    def delete_resource(params = {}, options = {})
      req = build_request(:delete_resource, params)
      req.send_request(options)
    end

    # Returns information about the current state of the specified resource.
    # For details, see [Reading a resource's current state][1].
    #
    # You can use this action to return information about an existing
    # resource in your account and Amazon Web Services Region, whether those
    # resources were provisioned using Cloud Control API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html
    #
    # @option params [required, String] :type_name
    #   The name of the resource type.
    #
    # @option params [String] :type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this resource
    #   operation. The role specified must have the permissions required for
    #   this operation. The necessary permissions for each event handler are
    #   defined in the ` handlers ` section of the [resource type definition
    #   schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #
    # @option params [required, String] :identifier
    #   The identifier for the resource.
    #
    #   You can specify the primary identifier, or any secondary identifier
    #   defined for the resource type in its resource schema. You can only
    #   specify one identifier. Primary identifiers can be specified as a
    #   string or JSON; secondary identifiers must be specified as JSON.
    #
    #   For compound primary identifiers (that is, one that consists of
    #   multiple resource properties strung together), to specify the primary
    #   identifier as a string, list the property values *in the order they
    #   are specified* in the primary identifier definition, separated by `|`.
    #
    #   For more information, see [Identifying resources][1] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html
    #
    # @return [Types::GetResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceOutput#type_name #type_name} => String
    #   * {Types::GetResourceOutput#resource_description #resource_description} => Types::ResourceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource({
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.type_name #=> String
    #   resp.resource_description.identifier #=> String
    #   resp.resource_description.properties #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/GetResource AWS API Documentation
    #
    # @overload get_resource(params = {})
    # @param [Hash] params ({})
    def get_resource(params = {}, options = {})
      req = build_request(:get_resource, params)
      req.send_request(options)
    end

    # Returns the current status of a resource operation request. For more
    # information, see [Tracking the progress of resource operation
    # requests][1] in the *Amazon Web Services Cloud Control API User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track
    #
    # @option params [required, String] :request_token
    #   A unique token used to track the progress of the resource operation
    #   request.
    #
    #   Request tokens are included in the `ProgressEvent` type returned by a
    #   resource operation request.
    #
    # @return [Types::GetResourceRequestStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceRequestStatusOutput#progress_event #progress_event} => Types::ProgressEvent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_request_status({
    #     request_token: "RequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.progress_event.type_name #=> String
    #   resp.progress_event.identifier #=> String
    #   resp.progress_event.request_token #=> String
    #   resp.progress_event.operation #=> String, one of "CREATE", "DELETE", "UPDATE"
    #   resp.progress_event.operation_status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"
    #   resp.progress_event.event_time #=> Time
    #   resp.progress_event.resource_model #=> String
    #   resp.progress_event.status_message #=> String
    #   resp.progress_event.error_code #=> String, one of "NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"
    #   resp.progress_event.retry_after #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * resource_request_success
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/GetResourceRequestStatus AWS API Documentation
    #
    # @overload get_resource_request_status(params = {})
    # @param [Hash] params ({})
    def get_resource_request_status(params = {}, options = {})
      req = build_request(:get_resource_request_status, params)
      req.send_request(options)
    end

    # Returns existing resource operation requests. This includes requests
    # of all status types. For more information, see [Listing active
    # resource operation requests][1] in the *Amazon Web Services Cloud
    # Control API User Guide*.
    #
    # <note markdown="1"> Resource operation requests expire after 7 days.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    #   The default is `20`.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call this action again
    #   and assign that token to the request object's `NextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @option params [Types::ResourceRequestStatusFilter] :resource_request_status_filter
    #   The filter criteria to apply to the requests returned.
    #
    # @return [Types::ListResourceRequestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceRequestsOutput#resource_request_status_summaries #resource_request_status_summaries} => Array&lt;Types::ProgressEvent&gt;
    #   * {Types::ListResourceRequestsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_requests({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_request_status_filter: {
    #       operations: ["CREATE"], # accepts CREATE, DELETE, UPDATE
    #       operation_statuses: ["PENDING"], # accepts PENDING, IN_PROGRESS, SUCCESS, FAILED, CANCEL_IN_PROGRESS, CANCEL_COMPLETE
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_request_status_summaries #=> Array
    #   resp.resource_request_status_summaries[0].type_name #=> String
    #   resp.resource_request_status_summaries[0].identifier #=> String
    #   resp.resource_request_status_summaries[0].request_token #=> String
    #   resp.resource_request_status_summaries[0].operation #=> String, one of "CREATE", "DELETE", "UPDATE"
    #   resp.resource_request_status_summaries[0].operation_status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"
    #   resp.resource_request_status_summaries[0].event_time #=> Time
    #   resp.resource_request_status_summaries[0].resource_model #=> String
    #   resp.resource_request_status_summaries[0].status_message #=> String
    #   resp.resource_request_status_summaries[0].error_code #=> String, one of "NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"
    #   resp.resource_request_status_summaries[0].retry_after #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ListResourceRequests AWS API Documentation
    #
    # @overload list_resource_requests(params = {})
    # @param [Hash] params ({})
    def list_resource_requests(params = {}, options = {})
      req = build_request(:list_resource_requests, params)
      req.send_request(options)
    end

    # Returns information about the specified resources. For more
    # information, see [Discovering resources][1] in the *Amazon Web
    # Services Cloud Control API User Guide*.
    #
    # You can use this action to return information about existing resources
    # in your account and Amazon Web Services Region, whether those
    # resources were provisioned using Cloud Control API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html
    #
    # @option params [required, String] :type_name
    #   The name of the resource type.
    #
    # @option params [String] :type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this resource
    #   operation. The role specified must have the permissions required for
    #   this operation. The necessary permissions for each event handler are
    #   defined in the ` handlers ` section of the [resource type definition
    #   schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call this action again
    #   and assign that token to the request object's `NextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @option params [Integer] :max_results
    #   Reserved.
    #
    # @option params [String] :resource_model
    #   The resource model to use to select the resources to return.
    #
    # @return [Types::ListResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesOutput#type_name #type_name} => String
    #   * {Types::ListResourcesOutput#resource_descriptions #resource_descriptions} => Array&lt;Types::ResourceDescription&gt;
    #   * {Types::ListResourcesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources({
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     next_token: "HandlerNextToken",
    #     max_results: 1,
    #     resource_model: "Properties",
    #   })
    #
    # @example Response structure
    #
    #   resp.type_name #=> String
    #   resp.resource_descriptions #=> Array
    #   resp.resource_descriptions[0].identifier #=> String
    #   resp.resource_descriptions[0].properties #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ListResources AWS API Documentation
    #
    # @overload list_resources(params = {})
    # @param [Hash] params ({})
    def list_resources(params = {}, options = {})
      req = build_request(:list_resources, params)
      req.send_request(options)
    end

    # Updates the specified property values in the resource.
    #
    # You specify your resource property updates as a list of patch
    # operations contained in a JSON patch document that adheres to the [
    # *RFC 6902 - JavaScript Object Notation (JSON) Patch* ][1] standard.
    #
    # For details on how Cloud Control API performs resource update
    # operations, see [Updating a resource][2] in the *Amazon Web Services
    # Cloud Control API User Guide*.
    #
    # After you have initiated a resource update request, you can monitor
    # the progress of your request by calling [GetResourceRequestStatus][3]
    # using the `RequestToken` of the `ProgressEvent` returned by
    # `UpdateResource`.
    #
    # For more information about the properties of a specific resource,
    # refer to the related topic for the resource in the [Resource and
    # property types reference][4] in the *CloudFormation Users Guide*.
    #
    #
    #
    # [1]: https://datatracker.ietf.org/doc/html/rfc6902
    # [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html
    # [3]: https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
    # [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #
    # @option params [required, String] :type_name
    #   The name of the resource type.
    #
    # @option params [String] :type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this resource
    #   operation. The role specified must have the permissions required for
    #   this operation. The necessary permissions for each event handler are
    #   defined in the ` handlers ` section of the [resource type definition
    #   schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #
    # @option params [String] :client_token
    #   A unique identifier to ensure the idempotency of the resource request.
    #   As a best practice, specify this token to ensure idempotency, so that
    #   Amazon Web Services Cloud Control API can accurately distinguish
    #   between request retries and new resource requests. You might retry a
    #   resource request to ensure that it was successfully received.
    #
    #   A client token is valid for 36 hours once used. After that, a resource
    #   request with the same client token is treated as a new request.
    #
    #   If you do not specify a client token, one is generated for inclusion
    #   in the request.
    #
    #   For more information, see [Ensuring resource operation requests are
    #   unique][1] in the *Amazon Web Services Cloud Control API User Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency
    #
    # @option params [required, String] :identifier
    #   The identifier for the resource.
    #
    #   You can specify the primary identifier, or any secondary identifier
    #   defined for the resource type in its resource schema. You can only
    #   specify one identifier. Primary identifiers can be specified as a
    #   string or JSON; secondary identifiers must be specified as JSON.
    #
    #   For compound primary identifiers (that is, one that consists of
    #   multiple resource properties strung together), to specify the primary
    #   identifier as a string, list the property values *in the order they
    #   are specified* in the primary identifier definition, separated by `|`.
    #
    #   For more information, see [Identifying resources][1] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html
    #
    # @option params [required, String] :patch_document
    #   A JavaScript Object Notation (JSON) document listing the patch
    #   operations that represent the updates to apply to the current resource
    #   properties. For details, see [Composing the patch document][1] in the
    #   *Amazon Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html#resource-operations-update-patch
    #
    # @return [Types::UpdateResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResourceOutput#progress_event #progress_event} => Types::ProgressEvent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource({
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     identifier: "Identifier", # required
    #     patch_document: "PatchDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.progress_event.type_name #=> String
    #   resp.progress_event.identifier #=> String
    #   resp.progress_event.request_token #=> String
    #   resp.progress_event.operation #=> String, one of "CREATE", "DELETE", "UPDATE"
    #   resp.progress_event.operation_status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"
    #   resp.progress_event.event_time #=> Time
    #   resp.progress_event.resource_model #=> String
    #   resp.progress_event.status_message #=> String
    #   resp.progress_event.error_code #=> String, one of "NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"
    #   resp.progress_event.retry_after #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/UpdateResource AWS API Documentation
    #
    # @overload update_resource(params = {})
    # @param [Hash] params ({})
    def update_resource(params = {}, options = {})
      req = build_request(:update_resource, params)
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
      context[:gem_name] = 'aws-sdk-cloudcontrolapi'
      context[:gem_version] = '1.15.0'
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
    # | waiter_name              | params                               | :delay   | :max_attempts |
    # | ------------------------ | ------------------------------------ | -------- | ------------- |
    # | resource_request_success | {Client#get_resource_request_status} | 5        | 24            |
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
        resource_request_success: Waiters::ResourceRequestSuccess
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
