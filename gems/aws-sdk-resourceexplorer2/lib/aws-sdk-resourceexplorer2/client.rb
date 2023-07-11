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

Aws::Plugins::GlobalConfiguration.add_identifier(:resourceexplorer2)

module Aws::ResourceExplorer2
  # An API client for ResourceExplorer2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ResourceExplorer2::Client.new(
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

    @identifier = :resourceexplorer2

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
    add_plugin(Aws::ResourceExplorer2::Plugins::Endpoints)

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
    #   @option options [Aws::ResourceExplorer2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ResourceExplorer2::EndpointParameters`
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

    # Sets the specified view as the default for the Amazon Web Services
    # Region in which you call this operation. When a user performs a Search
    # that doesn't explicitly specify which view to use, then Amazon Web
    # Services Resource Explorer automatically chooses this default view for
    # searches performed in this Amazon Web Services Region.
    #
    # If an Amazon Web Services Region doesn't have a default view
    # configured, then users must explicitly specify a view with every
    # `Search` operation performed in that Region.
    #
    # @option params [required, String] :view_arn
    #   The [Amazon resource name (ARN)][1] of the view to set as the default
    #   for the Amazon Web Services Region and Amazon Web Services account in
    #   which you call this operation. The specified view must already exist
    #   in the called Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::AssociateDefaultViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateDefaultViewOutput#view_arn #view_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_default_view({
    #     view_arn: "AssociateDefaultViewInputViewArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.view_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/AssociateDefaultView AWS API Documentation
    #
    # @overload associate_default_view(params = {})
    # @param [Hash] params ({})
    def associate_default_view(params = {}, options = {})
      req = build_request(:associate_default_view, params)
      req.send_request(options)
    end

    # Retrieves details about a list of views.
    #
    # @option params [Array<String>] :view_arns
    #   A list of [Amazon resource names (ARNs)][1] that identify the views
    #   you want details for.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::BatchGetViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetViewOutput#errors #errors} => Array&lt;Types::BatchGetViewError&gt;
    #   * {Types::BatchGetViewOutput#views #views} => Array&lt;Types::View&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_view({
    #     view_arns: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].view_arn #=> String
    #   resp.views #=> Array
    #   resp.views[0].filters.filter_string #=> String
    #   resp.views[0].included_properties #=> Array
    #   resp.views[0].included_properties[0].name #=> String
    #   resp.views[0].last_updated_at #=> Time
    #   resp.views[0].owner #=> String
    #   resp.views[0].scope #=> String
    #   resp.views[0].view_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/BatchGetView AWS API Documentation
    #
    # @overload batch_get_view(params = {})
    # @param [Hash] params ({})
    def batch_get_view(params = {}, options = {})
      req = build_request(:batch_get_view, params)
      req.send_request(options)
    end

    # Turns on Amazon Web Services Resource Explorer in the Amazon Web
    # Services Region in which you called this operation by creating an
    # index. Resource Explorer begins discovering the resources in this
    # Region and stores the details about the resources in the index so that
    # they can be queried by using the Search operation. You can create only
    # one index in a Region.
    #
    # <note markdown="1"> This operation creates only a *local* index. To promote the local
    # index in one Amazon Web Services Region into the aggregator index for
    # the Amazon Web Services account, use the UpdateIndexType operation.
    # For more information, see [Turning on cross-Region search by creating
    # an aggregator index][1] in the *Amazon Web Services Resource Explorer
    # User Guide*.
    #
    #  </note>
    #
    # For more details about what happens when you turn on Resource Explorer
    # in an Amazon Web Services Region, see [Turn on Resource Explorer to
    # index your resources in an Amazon Web Services Region][2] in the
    # *Amazon Web Services Resource Explorer User Guide*.
    #
    # If this is the first Amazon Web Services Region in which you've
    # created an index for Resource Explorer, then this operation also
    # [creates a service-linked role][3] in your Amazon Web Services account
    # that allows Resource Explorer to enumerate your resources to populate
    # the index.
    #
    # * **Action**: `resource-explorer-2:CreateIndex`
    #
    #   **Resource**: The ARN of the index (as it will exist after the
    #   operation completes) in the Amazon Web Services Region and account
    #   in which you're trying to create the index. Use the wildcard
    #   character (`*`) at the end of the string to match the eventual UUID.
    #   For example, the following `Resource` element restricts the role or
    #   user to creating an index in only the `us-east-2` Region of the
    #   specified account.
    #
    #   `"Resource":
    #   "arn:aws:resource-explorer-2:us-west-2:<account-id>:index/*"`
    #
    #   Alternatively, you can use `"Resource": "*"` to allow the role or
    #   user to create an index in any Region.
    #
    # * **Action**: `iam:CreateServiceLinkedRole`
    #
    #   **Resource**: No specific resource (*).
    #
    #   This permission is required only the first time you create an index
    #   to turn on Resource Explorer in the account. Resource Explorer uses
    #   this to create the [service-linked role needed to index the
    #   resources in your account][3]. Resource Explorer uses the same
    #   service-linked role for all additional indexes you create
    #   afterwards.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html
    # [2]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-service-activate.html
    # [3]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html
    #
    # @option params [String] :client_token
    #   This value helps ensure idempotency. Resource Explorer uses this value
    #   to prevent the accidental creation of duplicate versions. We recommend
    #   that you generate a [UUID-type value][1] to ensure the uniqueness of
    #   your views.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Hash<String,String>] :tags
    #   The specified tags are attached only to the index created in this
    #   Amazon Web Services Region. The tags aren't attached to any of the
    #   resources listed in the index.
    #
    # @return [Types::CreateIndexOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIndexOutput#arn #arn} => String
    #   * {Types::CreateIndexOutput#created_at #created_at} => Time
    #   * {Types::CreateIndexOutput#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index({
    #     client_token: "String",
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/CreateIndex AWS API Documentation
    #
    # @overload create_index(params = {})
    # @param [Hash] params ({})
    def create_index(params = {}, options = {})
      req = build_request(:create_index, params)
      req.send_request(options)
    end

    # Creates a view that users can query by using the Search operation.
    # Results from queries that you make using this view include only
    # resources that match the view's `Filters`. For more information about
    # Amazon Web Services Resource Explorer views, see [Managing views][1]
    # in the *Amazon Web Services Resource Explorer User Guide*.
    #
    # Only the principals with an IAM identity-based policy that grants
    # `Allow` to the `Search` action on a `Resource` with the [Amazon
    # resource name (ARN)][2] of this view can Search using views you create
    # with this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views.html
    # [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   This value helps ensure idempotency. Resource Explorer uses this value
    #   to prevent the accidental creation of duplicate versions. We recommend
    #   that you generate a [UUID-type value][1] to ensure the uniqueness of
    #   your views.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Types::SearchFilter] :filters
    #   An array of strings that specify which resources are included in the
    #   results of queries made using this view. When you use this view in a
    #   Search operation, the filter string is combined with the search's
    #   `QueryString` parameter using a logical `AND` operator.
    #
    #   For information about the supported syntax, see [Search query
    #   reference for Resource Explorer][1] in the *Amazon Web Services
    #   Resource Explorer User Guide*.
    #
    #   This query string in the context of this operation supports only
    #   [filter prefixes][2] with optional [operators][3]. It doesn't support
    #   free-form text. For example, the string `region:us* service:ec2
    #   -tag:stage=prod` includes all Amazon EC2 resources in any Amazon Web
    #   Services Region that begins with the letters `us` and is *not* tagged
    #   with a key `Stage` that has the value `prod`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html
    #   [2]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters
    #   [3]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators
    #
    # @option params [Array<Types::IncludedProperty>] :included_properties
    #   Specifies optional fields that you want included in search results
    #   from this view. It is a list of objects that each describe a field to
    #   include.
    #
    #   The default is an empty list, with no optional fields included in the
    #   results.
    #
    # @option params [Hash<String,String>] :tags
    #   Tag key and value pairs that are attached to the view.
    #
    # @option params [required, String] :view_name
    #   The name of the new view. This name appears in the list of views in
    #   Resource Explorer.
    #
    #   The name must be no more than 64 characters long, and can include
    #   letters, digits, and the dash (-) character. The name must be unique
    #   within its Amazon Web Services Region.
    #
    # @return [Types::CreateViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateViewOutput#view #view} => Types::View
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_view({
    #     client_token: "CreateViewInputClientTokenString",
    #     filters: {
    #       filter_string: "SearchFilterFilterStringString", # required
    #     },
    #     included_properties: [
    #       {
    #         name: "IncludedPropertyNameString", # required
    #       },
    #     ],
    #     tags: {
    #       "String" => "String",
    #     },
    #     view_name: "ViewName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.view.filters.filter_string #=> String
    #   resp.view.included_properties #=> Array
    #   resp.view.included_properties[0].name #=> String
    #   resp.view.last_updated_at #=> Time
    #   resp.view.owner #=> String
    #   resp.view.scope #=> String
    #   resp.view.view_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/CreateView AWS API Documentation
    #
    # @overload create_view(params = {})
    # @param [Hash] params ({})
    def create_view(params = {}, options = {})
      req = build_request(:create_view, params)
      req.send_request(options)
    end

    # Deletes the specified index and turns off Amazon Web Services Resource
    # Explorer in the specified Amazon Web Services Region. When you delete
    # an index, Resource Explorer stops discovering and indexing resources
    # in that Region. Resource Explorer also deletes all views in that
    # Region. These actions occur as asynchronous background tasks. You can
    # check to see when the actions are complete by using the GetIndex
    # operation and checking the `Status` response value.
    #
    # <note markdown="1"> If the index you delete is the aggregator index for the Amazon Web
    # Services account, you must wait 24 hours before you can promote
    # another local index to be the aggregator index for the account. Users
    # can't perform account-wide searches using Resource Explorer until
    # another aggregator index is configured.
    #
    #  </note>
    #
    # @option params [required, String] :arn
    #   The [Amazon resource name (ARN)][1] of the index that you want to
    #   delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::DeleteIndexOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIndexOutput#arn #arn} => String
    #   * {Types::DeleteIndexOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::DeleteIndexOutput#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index({
    #     arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.last_updated_at #=> Time
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/DeleteIndex AWS API Documentation
    #
    # @overload delete_index(params = {})
    # @param [Hash] params ({})
    def delete_index(params = {}, options = {})
      req = build_request(:delete_index, params)
      req.send_request(options)
    end

    # Deletes the specified view.
    #
    # If the specified view is the default view for its Amazon Web Services
    # Region, then all Search operations in that Region must explicitly
    # specify the view to use until you configure a new default by calling
    # the AssociateDefaultView operation.
    #
    # @option params [required, String] :view_arn
    #   The [Amazon resource name (ARN)][1] of the view that you want to
    #   delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::DeleteViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteViewOutput#view_arn #view_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_view({
    #     view_arn: "DeleteViewInputViewArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.view_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/DeleteView AWS API Documentation
    #
    # @overload delete_view(params = {})
    # @param [Hash] params ({})
    def delete_view(params = {}, options = {})
      req = build_request(:delete_view, params)
      req.send_request(options)
    end

    # After you call this operation, the affected Amazon Web Services Region
    # no longer has a default view. All Search operations in that Region
    # must explicitly specify a view or the operation fails. You can
    # configure a new default by calling the AssociateDefaultView operation.
    #
    # If an Amazon Web Services Region doesn't have a default view
    # configured, then users must explicitly specify a view with every
    # `Search` operation performed in that Region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/DisassociateDefaultView AWS API Documentation
    #
    # @overload disassociate_default_view(params = {})
    # @param [Hash] params ({})
    def disassociate_default_view(params = {}, options = {})
      req = build_request(:disassociate_default_view, params)
      req.send_request(options)
    end

    # Retrieves the Amazon Resource Name (ARN) of the view that is the
    # default for the Amazon Web Services Region in which you call this
    # operation. You can then call GetView to retrieve the details of that
    # view.
    #
    # @return [Types::GetDefaultViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDefaultViewOutput#view_arn #view_arn} => String
    #
    # @example Response structure
    #
    #   resp.view_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/GetDefaultView AWS API Documentation
    #
    # @overload get_default_view(params = {})
    # @param [Hash] params ({})
    def get_default_view(params = {}, options = {})
      req = build_request(:get_default_view, params)
      req.send_request(options)
    end

    # Retrieves details about the Amazon Web Services Resource Explorer
    # index in the Amazon Web Services Region in which you invoked the
    # operation.
    #
    # @return [Types::GetIndexOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIndexOutput#arn #arn} => String
    #   * {Types::GetIndexOutput#created_at #created_at} => Time
    #   * {Types::GetIndexOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetIndexOutput#replicating_from #replicating_from} => Array&lt;String&gt;
    #   * {Types::GetIndexOutput#replicating_to #replicating_to} => Array&lt;String&gt;
    #   * {Types::GetIndexOutput#state #state} => String
    #   * {Types::GetIndexOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetIndexOutput#type #type} => String
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.replicating_from #=> Array
    #   resp.replicating_from[0] #=> String
    #   resp.replicating_to #=> Array
    #   resp.replicating_to[0] #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "UPDATING"
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.type #=> String, one of "LOCAL", "AGGREGATOR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/GetIndex AWS API Documentation
    #
    # @overload get_index(params = {})
    # @param [Hash] params ({})
    def get_index(params = {}, options = {})
      req = build_request(:get_index, params)
      req.send_request(options)
    end

    # Retrieves details of the specified view.
    #
    # @option params [required, String] :view_arn
    #   The [Amazon resource name (ARN)][1] of the view that you want
    #   information about.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::GetViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetViewOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetViewOutput#view #view} => Types::View
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_view({
    #     view_arn: "GetViewInputViewArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.view.filters.filter_string #=> String
    #   resp.view.included_properties #=> Array
    #   resp.view.included_properties[0].name #=> String
    #   resp.view.last_updated_at #=> Time
    #   resp.view.owner #=> String
    #   resp.view.scope #=> String
    #   resp.view.view_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/GetView AWS API Documentation
    #
    # @overload get_view(params = {})
    # @param [Hash] params ({})
    def get_view(params = {}, options = {})
      req = build_request(:get_view, params)
      req.send_request(options)
    end

    # Retrieves a list of all of the indexes in Amazon Web Services Regions
    # that are currently collecting resource information for Amazon Web
    # Services Resource Explorer.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value appropriate to the operation. If additional items exist beyond
    #   those included in the current response, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Array<String>] :regions
    #   If specified, limits the response to only information about the index
    #   in the specified list of Amazon Web Services Regions.
    #
    # @option params [String] :type
    #   If specified, limits the output to only indexes of the specified Type,
    #   either `LOCAL` or `AGGREGATOR`.
    #
    #   Use this option to discover the aggregator index for your account.
    #
    # @return [Types::ListIndexesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIndexesOutput#indexes #indexes} => Array&lt;Types::Index&gt;
    #   * {Types::ListIndexesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_indexes({
    #     max_results: 1,
    #     next_token: "ListIndexesInputNextTokenString",
    #     regions: ["String"],
    #     type: "LOCAL", # accepts LOCAL, AGGREGATOR
    #   })
    #
    # @example Response structure
    #
    #   resp.indexes #=> Array
    #   resp.indexes[0].arn #=> String
    #   resp.indexes[0].region #=> String
    #   resp.indexes[0].type #=> String, one of "LOCAL", "AGGREGATOR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListIndexes AWS API Documentation
    #
    # @overload list_indexes(params = {})
    # @param [Hash] params ({})
    def list_indexes(params = {}, options = {})
      req = build_request(:list_indexes, params)
      req.send_request(options)
    end

    # Retrieves a list of all resource types currently supported by Amazon
    # Web Services Resource Explorer.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value appropriate to the operation. If additional items exist beyond
    #   those included in the current response, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @return [Types::ListSupportedResourceTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSupportedResourceTypesOutput#next_token #next_token} => String
    #   * {Types::ListSupportedResourceTypesOutput#resource_types #resource_types} => Array&lt;Types::SupportedResourceType&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_supported_resource_types({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resource_types #=> Array
    #   resp.resource_types[0].resource_type #=> String
    #   resp.resource_types[0].service #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListSupportedResourceTypes AWS API Documentation
    #
    # @overload list_supported_resource_types(params = {})
    # @param [Hash] params ({})
    def list_supported_resource_types(params = {}, options = {})
      req = build_request(:list_supported_resource_types, params)
      req.send_request(options)
    end

    # Lists the tags that are attached to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The [Amazon resource name (ARN)][1] of the view or index that you want
    #   to attach tags to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
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
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the [Amazon resource names (ARNs)][1] of the views available in
    # the Amazon Web Services Region in which you call this operation.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a paginated operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value appropriate to the operation. If additional items exist beyond
    #   those included in the current response, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @return [Types::ListViewsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListViewsOutput#next_token #next_token} => String
    #   * {Types::ListViewsOutput#views #views} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_views({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.views #=> Array
    #   resp.views[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListViews AWS API Documentation
    #
    # @overload list_views(params = {})
    # @param [Hash] params ({})
    def list_views(params = {}, options = {})
      req = build_request(:list_views, params)
      req.send_request(options)
    end

    # Searches for resources and displays details about all resources that
    # match the specified criteria. You must specify a query string.
    #
    # All search queries must use a view. If you don't explicitly specify a
    # view, then Amazon Web Services Resource Explorer uses the default view
    # for the Amazon Web Services Region in which you call this operation.
    # The results are the logical intersection of the results that match
    # both the `QueryString` parameter supplied to this operation and the
    # `SearchFilter` parameter attached to the view.
    #
    # For the complete syntax supported by the `QueryString` parameter, see
    # [Search query syntax reference for Resource Explorer][1].
    #
    # If your search results are empty, or are missing results that you
    # think should be there, see [Troubleshooting Resource Explorer
    # search][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html
    # [2]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/troubleshooting_search.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value appropriate to the operation. If additional items exist beyond
    #   those included in the current response, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [required, String] :query_string
    #   A string that includes keywords and filters that specify the resources
    #   that you want to include in the results.
    #
    #   For the complete syntax supported by the `QueryString` parameter, see
    #   [Search query syntax reference for Resource Explorer][1].
    #
    #   The search is completely case insensitive. You can specify an empty
    #   string to return all results up to the limit of 1,000 total results.
    #
    #   <note markdown="1"> The operation can return only the first 1,000 results. If the resource
    #   you want is not included, then use a different value for `QueryString`
    #   to refine the results.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html
    #
    # @option params [String] :view_arn
    #   Specifies the [Amazon resource name (ARN)][1] of the view to use for
    #   the query. If you don't specify a value for this parameter, then the
    #   operation automatically uses the default view for the Amazon Web
    #   Services Region in which you called this operation. If the Region
    #   either doesn't have a default view or if you don't have permission
    #   to use the default view, then the operation fails with a `401
    #   Unauthorized` exception.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::SearchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchOutput#count #count} => Types::ResourceCount
    #   * {Types::SearchOutput#next_token #next_token} => String
    #   * {Types::SearchOutput#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::SearchOutput#view_arn #view_arn} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search({
    #     max_results: 1,
    #     next_token: "SearchInputNextTokenString",
    #     query_string: "QueryString", # required
    #     view_arn: "SearchInputViewArnString",
    #   })
    #
    # @example Response structure
    #
    #   resp.count.complete #=> Boolean
    #   resp.count.total_resources #=> Integer
    #   resp.next_token #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].arn #=> String
    #   resp.resources[0].last_reported_at #=> Time
    #   resp.resources[0].owning_account_id #=> String
    #   resp.resources[0].properties #=> Array
    #   resp.resources[0].properties[0].last_reported_at #=> Time
    #   resp.resources[0].properties[0].name #=> String
    #   resp.resources[0].region #=> String
    #   resp.resources[0].resource_type #=> String
    #   resp.resources[0].service #=> String
    #   resp.view_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/Search AWS API Documentation
    #
    # @overload search(params = {})
    # @param [Hash] params ({})
    def search(params = {}, options = {})
      req = build_request(:search, params)
      req.send_request(options)
    end

    # Adds one or more tag key and value pairs to an Amazon Web Services
    # Resource Explorer view or index.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tag key and value pairs that you want to attach to the
    #   specified view or index.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the view or index that you want to
    #   attach tags to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     tags: {
    #       "String" => "String",
    #     },
    #     resource_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tag key and value pairs from an Amazon Web
    # Services Resource Explorer view or index.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the view or index that you want to
    #   remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the keys for the tags that you want to remove from the
    #   specified view or index.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Changes the type of the index from one of the following types to the
    # other. For more information about indexes and the role they perform in
    # Amazon Web Services Resource Explorer, see [Turning on cross-Region
    # search by creating an aggregator index][1] in the *Amazon Web Services
    # Resource Explorer User Guide*.
    #
    # * <b> <code>AGGREGATOR</code> index type</b>
    #
    #   The index contains information about resources from all Amazon Web
    #   Services Regions in the Amazon Web Services account in which you've
    #   created a Resource Explorer index. Resource information from all
    #   other Regions is replicated to this Region's index.
    #
    #   When you change the index type to `AGGREGATOR`, Resource Explorer
    #   turns on replication of all discovered resource information from the
    #   other Amazon Web Services Regions in your account to this index. You
    #   can then, from this Region only, perform resource search queries
    #   that span all Amazon Web Services Regions in the Amazon Web Services
    #   account. Turning on replication from all other Regions is performed
    #   by asynchronous background tasks. You can check the status of the
    #   asynchronous tasks by using the GetIndex operation. When the
    #   asynchronous tasks complete, the `Status` response of that operation
    #   changes from `UPDATING` to `ACTIVE`. After that, you can start to
    #   see results from other Amazon Web Services Regions in query results.
    #   However, it can take several hours for replication from all other
    #   Regions to complete.
    #
    #   You can have only one aggregator index per Amazon Web Services
    #   account. Before you can promote a different index to be the
    #   aggregator index for the account, you must first demote the existing
    #   aggregator index to type `LOCAL`.
    #
    # * <b> <code>LOCAL</code> index type</b>
    #
    #   The index contains information about resources in only the Amazon
    #   Web Services Region in which the index exists. If an aggregator
    #   index in another Region exists, then information in this local index
    #   is replicated to the aggregator index.
    #
    #   When you change the index type to `LOCAL`, Resource Explorer turns
    #   off the replication of resource information from all other Amazon
    #   Web Services Regions in the Amazon Web Services account to this
    #   Region. The aggregator index remains in the `UPDATING` state until
    #   all replication with other Regions successfully stops. You can check
    #   the status of the asynchronous task by using the GetIndex operation.
    #   When Resource Explorer successfully stops all replication with other
    #   Regions, the `Status` response of that operation changes from
    #   `UPDATING` to `ACTIVE`. Separately, the resource information from
    #   other Regions that was previously stored in the index is deleted
    #   within 30 days by another background task. Until that asynchronous
    #   task completes, some results from other Regions can continue to
    #   appear in search results.
    #
    #   After you demote an aggregator index to a local index, you must wait
    #   24 hours before you can promote another index to be the new
    #   aggregator index for the account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html
    #
    # @option params [required, String] :arn
    #   The [Amazon resource name (ARN)][1] of the index that you want to
    #   update.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :type
    #   The type of the index. To understand the difference between `LOCAL`
    #   and `AGGREGATOR`, see [Turning on cross-Region search][1] in the
    #   *Amazon Web Services Resource Explorer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html
    #
    # @return [Types::UpdateIndexTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIndexTypeOutput#arn #arn} => String
    #   * {Types::UpdateIndexTypeOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateIndexTypeOutput#state #state} => String
    #   * {Types::UpdateIndexTypeOutput#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_index_type({
    #     arn: "String", # required
    #     type: "LOCAL", # required, accepts LOCAL, AGGREGATOR
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.last_updated_at #=> Time
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "UPDATING"
    #   resp.type #=> String, one of "LOCAL", "AGGREGATOR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UpdateIndexType AWS API Documentation
    #
    # @overload update_index_type(params = {})
    # @param [Hash] params ({})
    def update_index_type(params = {}, options = {})
      req = build_request(:update_index_type, params)
      req.send_request(options)
    end

    # Modifies some of the details of a view. You can change the filter
    # string and the list of included properties. You can't change the name
    # of the view.
    #
    # @option params [Types::SearchFilter] :filters
    #   An array of strings that specify which resources are included in the
    #   results of queries made using this view. When you use this view in a
    #   Search operation, the filter string is combined with the search's
    #   `QueryString` parameter using a logical `AND` operator.
    #
    #   For information about the supported syntax, see [Search query
    #   reference for Resource Explorer][1] in the *Amazon Web Services
    #   Resource Explorer User Guide*.
    #
    #   This query string in the context of this operation supports only
    #   [filter prefixes][2] with optional [operators][3]. It doesn't support
    #   free-form text. For example, the string `region:us* service:ec2
    #   -tag:stage=prod` includes all Amazon EC2 resources in any Amazon Web
    #   Services Region that begins with the letters `us` and is *not* tagged
    #   with a key `Stage` that has the value `prod`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html
    #   [2]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters
    #   [3]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators
    #
    # @option params [Array<Types::IncludedProperty>] :included_properties
    #   Specifies optional fields that you want included in search results
    #   from this view. It is a list of objects that each describe a field to
    #   include.
    #
    #   The default is an empty list, with no optional fields included in the
    #   results.
    #
    # @option params [required, String] :view_arn
    #   The [Amazon resource name (ARN)][1] of the view that you want to
    #   modify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::UpdateViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateViewOutput#view #view} => Types::View
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_view({
    #     filters: {
    #       filter_string: "SearchFilterFilterStringString", # required
    #     },
    #     included_properties: [
    #       {
    #         name: "IncludedPropertyNameString", # required
    #       },
    #     ],
    #     view_arn: "UpdateViewInputViewArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.view.filters.filter_string #=> String
    #   resp.view.included_properties #=> Array
    #   resp.view.included_properties[0].name #=> String
    #   resp.view.last_updated_at #=> Time
    #   resp.view.owner #=> String
    #   resp.view.scope #=> String
    #   resp.view.view_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UpdateView AWS API Documentation
    #
    # @overload update_view(params = {})
    # @param [Hash] params ({})
    def update_view(params = {}, options = {})
      req = build_request(:update_view, params)
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
      context[:gem_name] = 'aws-sdk-resourceexplorer2'
      context[:gem_version] = '1.9.0'
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
