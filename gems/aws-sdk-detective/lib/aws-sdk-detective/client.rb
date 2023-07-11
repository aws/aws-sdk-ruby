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

Aws::Plugins::GlobalConfiguration.add_identifier(:detective)

module Aws::Detective
  # An API client for Detective.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Detective::Client.new(
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

    @identifier = :detective

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
    add_plugin(Aws::Detective::Plugins::Endpoints)

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
    #   @option options [Aws::Detective::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Detective::EndpointParameters`
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

    # Accepts an invitation for the member account to contribute data to a
    # behavior graph. This operation can only be called by an invited member
    # account.
    #
    # The request provides the ARN of behavior graph.
    #
    # The member account status in the graph must be `INVITED`.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph that the member account is accepting the
    #   invitation for.
    #
    #   The member account status in the behavior graph must be `INVITED`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation({
    #     graph_arn: "GraphArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/AcceptInvitation AWS API Documentation
    #
    # @overload accept_invitation(params = {})
    # @param [Hash] params ({})
    def accept_invitation(params = {}, options = {})
      req = build_request(:accept_invitation, params)
      req.send_request(options)
    end

    # Gets data source package information for the behavior graph.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of Amazon Web Services accounts to get data source package
    #   information on.
    #
    # @return [Types::BatchGetGraphMemberDatasourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetGraphMemberDatasourcesResponse#member_datasources #member_datasources} => Array&lt;Types::MembershipDatasources&gt;
    #   * {Types::BatchGetGraphMemberDatasourcesResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_graph_member_datasources({
    #     graph_arn: "GraphArn", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member_datasources #=> Array
    #   resp.member_datasources[0].account_id #=> String
    #   resp.member_datasources[0].graph_arn #=> String
    #   resp.member_datasources[0].datasource_package_ingest_history #=> Hash
    #   resp.member_datasources[0].datasource_package_ingest_history["DatasourcePackage"] #=> Hash
    #   resp.member_datasources[0].datasource_package_ingest_history["DatasourcePackage"]["DatasourcePackageIngestState"].timestamp #=> Time
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/BatchGetGraphMemberDatasources AWS API Documentation
    #
    # @overload batch_get_graph_member_datasources(params = {})
    # @param [Hash] params ({})
    def batch_get_graph_member_datasources(params = {}, options = {})
      req = build_request(:batch_get_graph_member_datasources, params)
      req.send_request(options)
    end

    # Gets information on the data source package history for an account.
    #
    # @option params [required, Array<String>] :graph_arns
    #   The ARN of the behavior graph.
    #
    # @return [Types::BatchGetMembershipDatasourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetMembershipDatasourcesResponse#membership_datasources #membership_datasources} => Array&lt;Types::MembershipDatasources&gt;
    #   * {Types::BatchGetMembershipDatasourcesResponse#unprocessed_graphs #unprocessed_graphs} => Array&lt;Types::UnprocessedGraph&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_membership_datasources({
    #     graph_arns: ["GraphArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_datasources #=> Array
    #   resp.membership_datasources[0].account_id #=> String
    #   resp.membership_datasources[0].graph_arn #=> String
    #   resp.membership_datasources[0].datasource_package_ingest_history #=> Hash
    #   resp.membership_datasources[0].datasource_package_ingest_history["DatasourcePackage"] #=> Hash
    #   resp.membership_datasources[0].datasource_package_ingest_history["DatasourcePackage"]["DatasourcePackageIngestState"].timestamp #=> Time
    #   resp.unprocessed_graphs #=> Array
    #   resp.unprocessed_graphs[0].graph_arn #=> String
    #   resp.unprocessed_graphs[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/BatchGetMembershipDatasources AWS API Documentation
    #
    # @overload batch_get_membership_datasources(params = {})
    # @param [Hash] params ({})
    def batch_get_membership_datasources(params = {}, options = {})
      req = build_request(:batch_get_membership_datasources, params)
      req.send_request(options)
    end

    # Creates a new behavior graph for the calling account, and sets that
    # account as the administrator account. This operation is called by the
    # account that is enabling Detective.
    #
    # Before you try to enable Detective, make sure that your account has
    # been enrolled in Amazon GuardDuty for at least 48 hours. If you do not
    # meet this requirement, you cannot enable Detective. If you do meet the
    # GuardDuty prerequisite, then when you make the request to enable
    # Detective, it checks whether your data volume is within the Detective
    # quota. If it exceeds the quota, then you cannot enable Detective.
    #
    # The operation also enables Detective for the calling account in the
    # currently selected Region. It returns the ARN of the new behavior
    # graph.
    #
    # `CreateGraph` triggers a process to create the corresponding data
    # tables for the new behavior graph.
    #
    # An account can only be the administrator account for one behavior
    # graph within a Region. If the same account calls `CreateGraph` with
    # the same administrator account, it always returns the same behavior
    # graph ARN. It does not create a new behavior graph.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the new behavior graph. You can add up to 50
    #   tags. For each tag, you provide the tag key and the tag value. Each
    #   tag key can contain up to 128 characters. Each tag value can contain
    #   up to 256 characters.
    #
    # @return [Types::CreateGraphResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGraphResponse#graph_arn #graph_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_graph({
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.graph_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/CreateGraph AWS API Documentation
    #
    # @overload create_graph(params = {})
    # @param [Hash] params ({})
    def create_graph(params = {}, options = {})
      req = build_request(:create_graph, params)
      req.send_request(options)
    end

    # `CreateMembers` is used to send invitations to accounts. For the
    # organization behavior graph, the Detective administrator account uses
    # `CreateMembers` to enable organization accounts as member accounts.
    #
    # For invited accounts, `CreateMembers` sends a request to invite the
    # specified Amazon Web Services accounts to be member accounts in the
    # behavior graph. This operation can only be called by the administrator
    # account for a behavior graph.
    #
    # `CreateMembers` verifies the accounts and then invites the verified
    # accounts. The administrator can optionally specify to not send
    # invitation emails to the member accounts. This would be used when the
    # administrator manages their member accounts centrally.
    #
    # For organization accounts in the organization behavior graph,
    # `CreateMembers` attempts to enable the accounts. The organization
    # accounts do not receive invitations.
    #
    # The request provides the behavior graph ARN and the list of accounts
    # to invite or to enable.
    #
    # The response separates the requested accounts into two lists:
    #
    # * The accounts that `CreateMembers` was able to process. For invited
    #   accounts, includes member accounts that are being verified, that
    #   have passed verification and are to be invited, and that have failed
    #   verification. For organization accounts in the organization behavior
    #   graph, includes accounts that can be enabled and that cannot be
    #   enabled.
    #
    # * The accounts that `CreateMembers` was unable to process. This list
    #   includes accounts that were already invited to be member accounts in
    #   the behavior graph.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph.
    #
    # @option params [String] :message
    #   Customized message text to include in the invitation email message to
    #   the invited member accounts.
    #
    # @option params [Boolean] :disable_email_notification
    #   if set to `true`, then the invited accounts do not receive email
    #   notifications. By default, this is set to `false`, and the invited
    #   accounts receive email notifications.
    #
    #   Organization accounts in the organization behavior graph do not
    #   receive email notifications.
    #
    # @option params [required, Array<Types::Account>] :accounts
    #   The list of Amazon Web Services accounts to invite or to enable. You
    #   can invite or enable up to 50 accounts at a time. For each invited
    #   account, the account list contains the account identifier and the
    #   Amazon Web Services account root user email address. For organization
    #   accounts in the organization behavior graph, the email address is not
    #   required.
    #
    # @return [Types::CreateMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMembersResponse#members #members} => Array&lt;Types::MemberDetail&gt;
    #   * {Types::CreateMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_members({
    #     graph_arn: "GraphArn", # required
    #     message: "EmailMessage",
    #     disable_email_notification: false,
    #     accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         email_address: "EmailAddress", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].email_address #=> String
    #   resp.members[0].graph_arn #=> String
    #   resp.members[0].master_id #=> String
    #   resp.members[0].administrator_id #=> String
    #   resp.members[0].status #=> String, one of "INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"
    #   resp.members[0].disabled_reason #=> String, one of "VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"
    #   resp.members[0].invited_time #=> Time
    #   resp.members[0].updated_time #=> Time
    #   resp.members[0].volume_usage_in_bytes #=> Integer
    #   resp.members[0].volume_usage_updated_time #=> Time
    #   resp.members[0].percent_of_graph_utilization #=> Float
    #   resp.members[0].percent_of_graph_utilization_updated_time #=> Time
    #   resp.members[0].invitation_type #=> String, one of "INVITATION", "ORGANIZATION"
    #   resp.members[0].volume_usage_by_datasource_package #=> Hash
    #   resp.members[0].volume_usage_by_datasource_package["DatasourcePackage"].volume_usage_in_bytes #=> Integer
    #   resp.members[0].volume_usage_by_datasource_package["DatasourcePackage"].volume_usage_update_time #=> Time
    #   resp.members[0].datasource_package_ingest_states #=> Hash
    #   resp.members[0].datasource_package_ingest_states["DatasourcePackage"] #=> String, one of "STARTED", "STOPPED", "DISABLED"
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/CreateMembers AWS API Documentation
    #
    # @overload create_members(params = {})
    # @param [Hash] params ({})
    def create_members(params = {}, options = {})
      req = build_request(:create_members, params)
      req.send_request(options)
    end

    # Disables the specified behavior graph and queues it to be deleted.
    # This operation removes the behavior graph from each member account's
    # list of behavior graphs.
    #
    # `DeleteGraph` can only be called by the administrator account for a
    # behavior graph.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph to disable.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_graph({
    #     graph_arn: "GraphArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DeleteGraph AWS API Documentation
    #
    # @overload delete_graph(params = {})
    # @param [Hash] params ({})
    def delete_graph(params = {}, options = {})
      req = build_request(:delete_graph, params)
      req.send_request(options)
    end

    # Removes the specified member accounts from the behavior graph. The
    # removed accounts no longer contribute data to the behavior graph. This
    # operation can only be called by the administrator account for the
    # behavior graph.
    #
    # For invited accounts, the removed accounts are deleted from the list
    # of accounts in the behavior graph. To restore the account, the
    # administrator account must send another invitation.
    #
    # For organization accounts in the organization behavior graph, the
    # Detective administrator account can always enable the organization
    # account again. Organization accounts that are not enabled as member
    # accounts are not included in the `ListMembers` results for the
    # organization behavior graph.
    #
    # An administrator account cannot use `DeleteMembers` to remove their
    # own account from the behavior graph. To disable a behavior graph, the
    # administrator account uses the `DeleteGraph` API method.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph to remove members from.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of Amazon Web Services account identifiers for the member
    #   accounts to remove from the behavior graph. You can remove up to 50
    #   member accounts at a time.
    #
    # @return [Types::DeleteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMembersResponse#account_ids #account_ids} => Array&lt;String&gt;
    #   * {Types::DeleteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_members({
    #     graph_arn: "GraphArn", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0] #=> String
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DeleteMembers AWS API Documentation
    #
    # @overload delete_members(params = {})
    # @param [Hash] params ({})
    def delete_members(params = {}, options = {})
      req = build_request(:delete_members, params)
      req.send_request(options)
    end

    # Returns information about the configuration for the organization
    # behavior graph. Currently indicates whether to automatically enable
    # new organization accounts as member accounts.
    #
    # Can only be called by the Detective administrator account for the
    # organization.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the organization behavior graph.
    #
    # @return [Types::DescribeOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable #auto_enable} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_configuration({
    #     graph_arn: "GraphArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_enable #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DescribeOrganizationConfiguration AWS API Documentation
    #
    # @overload describe_organization_configuration(params = {})
    # @param [Hash] params ({})
    def describe_organization_configuration(params = {}, options = {})
      req = build_request(:describe_organization_configuration, params)
      req.send_request(options)
    end

    # Removes the Detective administrator account in the current Region.
    # Deletes the organization behavior graph.
    #
    # Can only be called by the organization management account.
    #
    # Removing the Detective administrator account does not affect the
    # delegated administrator account for Detective in Organizations.
    #
    # To remove the delegated administrator account in Organizations, use
    # the Organizations API. Removing the delegated administrator account
    # also removes the Detective administrator account in all Regions,
    # except for Regions where the Detective administrator account is the
    # organization management account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DisableOrganizationAdminAccount AWS API Documentation
    #
    # @overload disable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def disable_organization_admin_account(params = {}, options = {})
      req = build_request(:disable_organization_admin_account, params)
      req.send_request(options)
    end

    # Removes the member account from the specified behavior graph. This
    # operation can only be called by an invited member account that has the
    # `ENABLED` status.
    #
    # `DisassociateMembership` cannot be called by an organization account
    # in the organization behavior graph. For the organization behavior
    # graph, the Detective administrator account determines which
    # organization accounts to enable or disable as member accounts.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph to remove the member account from.
    #
    #   The member account's member status in the behavior graph must be
    #   `ENABLED`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_membership({
    #     graph_arn: "GraphArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DisassociateMembership AWS API Documentation
    #
    # @overload disassociate_membership(params = {})
    # @param [Hash] params ({})
    def disassociate_membership(params = {}, options = {})
      req = build_request(:disassociate_membership, params)
      req.send_request(options)
    end

    # Designates the Detective administrator account for the organization in
    # the current Region.
    #
    # If the account does not have Detective enabled, then enables Detective
    # for that account and creates a new behavior graph.
    #
    # Can only be called by the organization management account.
    #
    # If the organization has a delegated administrator account in
    # Organizations, then the Detective administrator account must be either
    # the delegated administrator account or the organization management
    # account.
    #
    # If the organization does not have a delegated administrator account in
    # Organizations, then you can choose any account in the organization. If
    # you choose an account other than the organization management account,
    # Detective calls Organizations to make that account the delegated
    # administrator account for Detective. The organization management
    # account cannot be the delegated administrator account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account identifier of the account to designate
    #   as the Detective administrator account for the organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_organization_admin_account({
    #     account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/EnableOrganizationAdminAccount AWS API Documentation
    #
    # @overload enable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def enable_organization_admin_account(params = {}, options = {})
      req = build_request(:enable_organization_admin_account, params)
      req.send_request(options)
    end

    # Returns the membership details for specified member accounts for a
    # behavior graph.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph for which to request the member details.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of Amazon Web Services account identifiers for the member
    #   account for which to return member details. You can request details
    #   for up to 50 member accounts at a time.
    #
    #   You cannot use `GetMembers` to retrieve information about member
    #   accounts that were removed from the behavior graph.
    #
    # @return [Types::GetMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMembersResponse#member_details #member_details} => Array&lt;Types::MemberDetail&gt;
    #   * {Types::GetMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_members({
    #     graph_arn: "GraphArn", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member_details #=> Array
    #   resp.member_details[0].account_id #=> String
    #   resp.member_details[0].email_address #=> String
    #   resp.member_details[0].graph_arn #=> String
    #   resp.member_details[0].master_id #=> String
    #   resp.member_details[0].administrator_id #=> String
    #   resp.member_details[0].status #=> String, one of "INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"
    #   resp.member_details[0].disabled_reason #=> String, one of "VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"
    #   resp.member_details[0].invited_time #=> Time
    #   resp.member_details[0].updated_time #=> Time
    #   resp.member_details[0].volume_usage_in_bytes #=> Integer
    #   resp.member_details[0].volume_usage_updated_time #=> Time
    #   resp.member_details[0].percent_of_graph_utilization #=> Float
    #   resp.member_details[0].percent_of_graph_utilization_updated_time #=> Time
    #   resp.member_details[0].invitation_type #=> String, one of "INVITATION", "ORGANIZATION"
    #   resp.member_details[0].volume_usage_by_datasource_package #=> Hash
    #   resp.member_details[0].volume_usage_by_datasource_package["DatasourcePackage"].volume_usage_in_bytes #=> Integer
    #   resp.member_details[0].volume_usage_by_datasource_package["DatasourcePackage"].volume_usage_update_time #=> Time
    #   resp.member_details[0].datasource_package_ingest_states #=> Hash
    #   resp.member_details[0].datasource_package_ingest_states["DatasourcePackage"] #=> String, one of "STARTED", "STOPPED", "DISABLED"
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/GetMembers AWS API Documentation
    #
    # @overload get_members(params = {})
    # @param [Hash] params ({})
    def get_members(params = {}, options = {})
      req = build_request(:get_members, params)
      req.send_request(options)
    end

    # Lists data source packages in the behavior graph.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph.
    #
    # @option params [String] :next_token
    #   For requests to get the next page of results, the pagination token
    #   that was returned with the previous set of results. The initial
    #   request does not include a pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListDatasourcePackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasourcePackagesResponse#datasource_packages #datasource_packages} => Hash&lt;String,Types::DatasourcePackageIngestDetail&gt;
    #   * {Types::ListDatasourcePackagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasource_packages({
    #     graph_arn: "GraphArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datasource_packages #=> Hash
    #   resp.datasource_packages["DatasourcePackage"].datasource_package_ingest_state #=> String, one of "STARTED", "STOPPED", "DISABLED"
    #   resp.datasource_packages["DatasourcePackage"].last_ingest_state_change #=> Hash
    #   resp.datasource_packages["DatasourcePackage"].last_ingest_state_change["DatasourcePackageIngestState"].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListDatasourcePackages AWS API Documentation
    #
    # @overload list_datasource_packages(params = {})
    # @param [Hash] params ({})
    def list_datasource_packages(params = {}, options = {})
      req = build_request(:list_datasource_packages, params)
      req.send_request(options)
    end

    # Returns the list of behavior graphs that the calling account is an
    # administrator account of. This operation can only be called by an
    # administrator account.
    #
    # Because an account can currently only be the administrator of one
    # behavior graph within a Region, the results always contain a single
    # behavior graph.
    #
    # @option params [String] :next_token
    #   For requests to get the next page of results, the pagination token
    #   that was returned with the previous set of results. The initial
    #   request does not include a pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of graphs to return at a time. The total must be
    #   less than the overall limit on the number of results to return, which
    #   is currently 200.
    #
    # @return [Types::ListGraphsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGraphsResponse#graph_list #graph_list} => Array&lt;Types::Graph&gt;
    #   * {Types::ListGraphsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_graphs({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.graph_list #=> Array
    #   resp.graph_list[0].arn #=> String
    #   resp.graph_list[0].created_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListGraphs AWS API Documentation
    #
    # @overload list_graphs(params = {})
    # @param [Hash] params ({})
    def list_graphs(params = {}, options = {})
      req = build_request(:list_graphs, params)
      req.send_request(options)
    end

    # Retrieves the list of open and accepted behavior graph invitations for
    # the member account. This operation can only be called by an invited
    # member account.
    #
    # Open invitations are invitations that the member account has not
    # responded to.
    #
    # The results do not include behavior graphs for which the member
    # account declined the invitation. The results also do not include
    # behavior graphs that the member account resigned from or was removed
    # from.
    #
    # @option params [String] :next_token
    #   For requests to retrieve the next page of results, the pagination
    #   token that was returned with the previous page of results. The initial
    #   request does not include a pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of behavior graph invitations to return in the
    #   response. The total must be less than the overall limit on the number
    #   of results to return, which is currently 200.
    #
    # @return [Types::ListInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvitationsResponse#invitations #invitations} => Array&lt;Types::MemberDetail&gt;
    #   * {Types::ListInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.invitations #=> Array
    #   resp.invitations[0].account_id #=> String
    #   resp.invitations[0].email_address #=> String
    #   resp.invitations[0].graph_arn #=> String
    #   resp.invitations[0].master_id #=> String
    #   resp.invitations[0].administrator_id #=> String
    #   resp.invitations[0].status #=> String, one of "INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"
    #   resp.invitations[0].disabled_reason #=> String, one of "VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"
    #   resp.invitations[0].invited_time #=> Time
    #   resp.invitations[0].updated_time #=> Time
    #   resp.invitations[0].volume_usage_in_bytes #=> Integer
    #   resp.invitations[0].volume_usage_updated_time #=> Time
    #   resp.invitations[0].percent_of_graph_utilization #=> Float
    #   resp.invitations[0].percent_of_graph_utilization_updated_time #=> Time
    #   resp.invitations[0].invitation_type #=> String, one of "INVITATION", "ORGANIZATION"
    #   resp.invitations[0].volume_usage_by_datasource_package #=> Hash
    #   resp.invitations[0].volume_usage_by_datasource_package["DatasourcePackage"].volume_usage_in_bytes #=> Integer
    #   resp.invitations[0].volume_usage_by_datasource_package["DatasourcePackage"].volume_usage_update_time #=> Time
    #   resp.invitations[0].datasource_package_ingest_states #=> Hash
    #   resp.invitations[0].datasource_package_ingest_states["DatasourcePackage"] #=> String, one of "STARTED", "STOPPED", "DISABLED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListInvitations AWS API Documentation
    #
    # @overload list_invitations(params = {})
    # @param [Hash] params ({})
    def list_invitations(params = {}, options = {})
      req = build_request(:list_invitations, params)
      req.send_request(options)
    end

    # Retrieves the list of member accounts for a behavior graph.
    #
    # For invited accounts, the results do not include member accounts that
    # were removed from the behavior graph.
    #
    # For the organization behavior graph, the results do not include
    # organization accounts that the Detective administrator account has not
    # enabled as member accounts.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph for which to retrieve the list of member
    #   accounts.
    #
    # @option params [String] :next_token
    #   For requests to retrieve the next page of member account results, the
    #   pagination token that was returned with the previous page of results.
    #   The initial request does not include a pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of member accounts to include in the response. The
    #   total must be less than the overall limit on the number of results to
    #   return, which is currently 200.
    #
    # @return [Types::ListMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersResponse#member_details #member_details} => Array&lt;Types::MemberDetail&gt;
    #   * {Types::ListMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     graph_arn: "GraphArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.member_details #=> Array
    #   resp.member_details[0].account_id #=> String
    #   resp.member_details[0].email_address #=> String
    #   resp.member_details[0].graph_arn #=> String
    #   resp.member_details[0].master_id #=> String
    #   resp.member_details[0].administrator_id #=> String
    #   resp.member_details[0].status #=> String, one of "INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"
    #   resp.member_details[0].disabled_reason #=> String, one of "VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"
    #   resp.member_details[0].invited_time #=> Time
    #   resp.member_details[0].updated_time #=> Time
    #   resp.member_details[0].volume_usage_in_bytes #=> Integer
    #   resp.member_details[0].volume_usage_updated_time #=> Time
    #   resp.member_details[0].percent_of_graph_utilization #=> Float
    #   resp.member_details[0].percent_of_graph_utilization_updated_time #=> Time
    #   resp.member_details[0].invitation_type #=> String, one of "INVITATION", "ORGANIZATION"
    #   resp.member_details[0].volume_usage_by_datasource_package #=> Hash
    #   resp.member_details[0].volume_usage_by_datasource_package["DatasourcePackage"].volume_usage_in_bytes #=> Integer
    #   resp.member_details[0].volume_usage_by_datasource_package["DatasourcePackage"].volume_usage_update_time #=> Time
    #   resp.member_details[0].datasource_package_ingest_states #=> Hash
    #   resp.member_details[0].datasource_package_ingest_states["DatasourcePackage"] #=> String, one of "STARTED", "STOPPED", "DISABLED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Returns information about the Detective administrator account for an
    # organization. Can only be called by the organization management
    # account.
    #
    # @option params [String] :next_token
    #   For requests to get the next page of results, the pagination token
    #   that was returned with the previous set of results. The initial
    #   request does not include a pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListOrganizationAdminAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationAdminAccountsResponse#administrators #administrators} => Array&lt;Types::Administrator&gt;
    #   * {Types::ListOrganizationAdminAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_admin_accounts({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.administrators #=> Array
    #   resp.administrators[0].account_id #=> String
    #   resp.administrators[0].graph_arn #=> String
    #   resp.administrators[0].delegation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListOrganizationAdminAccounts AWS API Documentation
    #
    # @overload list_organization_admin_accounts(params = {})
    # @param [Hash] params ({})
    def list_organization_admin_accounts(params = {}, options = {})
      req = build_request(:list_organization_admin_accounts, params)
      req.send_request(options)
    end

    # Returns the tag values that are assigned to a behavior graph.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the behavior graph for which to retrieve the tag values.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "GraphArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Rejects an invitation to contribute the account data to a behavior
    # graph. This operation must be called by an invited member account that
    # has the `INVITED` status.
    #
    # `RejectInvitation` cannot be called by an organization account in the
    # organization behavior graph. In the organization behavior graph,
    # organization accounts do not receive an invitation.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph to reject the invitation to.
    #
    #   The member account's current member status in the behavior graph must
    #   be `INVITED`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_invitation({
    #     graph_arn: "GraphArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/RejectInvitation AWS API Documentation
    #
    # @overload reject_invitation(params = {})
    # @param [Hash] params ({})
    def reject_invitation(params = {}, options = {})
      req = build_request(:reject_invitation, params)
      req.send_request(options)
    end

    # Sends a request to enable data ingest for a member account that has a
    # status of `ACCEPTED_BUT_DISABLED`.
    #
    # For valid member accounts, the status is updated as follows.
    #
    # * If Detective enabled the member account, then the new status is
    #   `ENABLED`.
    #
    # * If Detective cannot enable the member account, the status remains
    #   `ACCEPTED_BUT_DISABLED`.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph.
    #
    # @option params [required, String] :account_id
    #   The account ID of the member account to try to enable.
    #
    #   The account must be an invited member account with a status of
    #   `ACCEPTED_BUT_DISABLED`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_monitoring_member({
    #     graph_arn: "GraphArn", # required
    #     account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/StartMonitoringMember AWS API Documentation
    #
    # @overload start_monitoring_member(params = {})
    # @param [Hash] params ({})
    def start_monitoring_member(params = {}, options = {})
      req = build_request(:start_monitoring_member, params)
      req.send_request(options)
    end

    # Applies tag values to a behavior graph.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the behavior graph to assign the tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to assign to the behavior graph. You can add up to 50 tags.
    #   For each tag, you provide the tag key and the tag value. Each tag key
    #   can contain up to 128 characters. Each tag value can contain up to 256
    #   characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "GraphArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a behavior graph.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the behavior graph to remove the tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the tags to remove from the behavior graph. You can
    #   remove up to 50 tags at a time.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "GraphArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Starts a data source packages for the behavior graph.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the behavior graph.
    #
    # @option params [required, Array<String>] :datasource_packages
    #   The data source package start for the behavior graph.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_datasource_packages({
    #     graph_arn: "GraphArn", # required
    #     datasource_packages: ["DETECTIVE_CORE"], # required, accepts DETECTIVE_CORE, EKS_AUDIT, ASFF_SECURITYHUB_FINDING
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UpdateDatasourcePackages AWS API Documentation
    #
    # @overload update_datasource_packages(params = {})
    # @param [Hash] params ({})
    def update_datasource_packages(params = {}, options = {})
      req = build_request(:update_datasource_packages, params)
      req.send_request(options)
    end

    # Updates the configuration for the Organizations integration in the
    # current Region. Can only be called by the Detective administrator
    # account for the organization.
    #
    # @option params [required, String] :graph_arn
    #   The ARN of the organization behavior graph.
    #
    # @option params [Boolean] :auto_enable
    #   Indicates whether to automatically enable new organization accounts as
    #   member accounts in the organization behavior graph.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration({
    #     graph_arn: "GraphArn", # required
    #     auto_enable: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UpdateOrganizationConfiguration AWS API Documentation
    #
    # @overload update_organization_configuration(params = {})
    # @param [Hash] params ({})
    def update_organization_configuration(params = {}, options = {})
      req = build_request(:update_organization_configuration, params)
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
      context[:gem_name] = 'aws-sdk-detective'
      context[:gem_version] = '1.38.0'
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
