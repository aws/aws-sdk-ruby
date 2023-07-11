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

Aws::Plugins::GlobalConfiguration.add_identifier(:connectcampaignservice)

module Aws::ConnectCampaignService
  # An API client for ConnectCampaignService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ConnectCampaignService::Client.new(
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

    @identifier = :connectcampaignservice

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
    add_plugin(Aws::ConnectCampaignService::Plugins::Endpoints)

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
    #   @option options [Aws::ConnectCampaignService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ConnectCampaignService::EndpointParameters`
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

    # Creates a campaign for the specified Amazon Connect account. This API
    # is idempotent.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @option params [required, Types::DialerConfig] :dialer_config
    #   The possible types of dialer config parameters
    #
    # @option params [required, String] :name
    #   The name of an Amazon Connect Campaign name.
    #
    # @option params [required, Types::OutboundCallConfig] :outbound_call_config
    #   The configuration used for outbound calls.
    #
    # @option params [Hash<String,String>] :tags
    #   Tag map with key and value.
    #
    # @return [Types::CreateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCampaignResponse#arn #arn} => String
    #   * {Types::CreateCampaignResponse#id #id} => String
    #   * {Types::CreateCampaignResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign({
    #     connect_instance_id: "InstanceId", # required
    #     dialer_config: { # required
    #       predictive_dialer_config: {
    #         bandwidth_allocation: 1.0, # required
    #       },
    #       progressive_dialer_config: {
    #         bandwidth_allocation: 1.0, # required
    #       },
    #     },
    #     name: "CampaignName", # required
    #     outbound_call_config: { # required
    #       answer_machine_detection_config: {
    #         enable_answer_machine_detection: false, # required
    #       },
    #       connect_contact_flow_id: "ContactFlowId", # required
    #       connect_queue_id: "QueueId", # required
    #       connect_source_phone_number: "SourcePhoneNumber",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/CreateCampaign AWS API Documentation
    #
    # @overload create_campaign(params = {})
    # @param [Hash] params ({})
    def create_campaign(params = {}, options = {})
      req = build_request(:create_campaign, params)
      req.send_request(options)
    end

    # Deletes a campaign from the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DeleteCampaign AWS API Documentation
    #
    # @overload delete_campaign(params = {})
    # @param [Hash] params ({})
    def delete_campaign(params = {}, options = {})
      req = build_request(:delete_campaign, params)
      req.send_request(options)
    end

    # Deletes a connect instance config from the specified AWS account.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connect_instance_config({
    #     connect_instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DeleteConnectInstanceConfig AWS API Documentation
    #
    # @overload delete_connect_instance_config(params = {})
    # @param [Hash] params ({})
    def delete_connect_instance_config(params = {}, options = {})
      req = build_request(:delete_connect_instance_config, params)
      req.send_request(options)
    end

    # Delete the Connect Campaigns onboarding job for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_onboarding_job({
    #     connect_instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DeleteInstanceOnboardingJob AWS API Documentation
    #
    # @overload delete_instance_onboarding_job(params = {})
    # @param [Hash] params ({})
    def delete_instance_onboarding_job(params = {}, options = {})
      req = build_request(:delete_instance_onboarding_job, params)
      req.send_request(options)
    end

    # Describes the specific campaign.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Types::DescribeCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCampaignResponse#campaign #campaign} => Types::Campaign
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign.arn #=> String
    #   resp.campaign.connect_instance_id #=> String
    #   resp.campaign.dialer_config.predictive_dialer_config.bandwidth_allocation #=> Float
    #   resp.campaign.dialer_config.progressive_dialer_config.bandwidth_allocation #=> Float
    #   resp.campaign.id #=> String
    #   resp.campaign.name #=> String
    #   resp.campaign.outbound_call_config.answer_machine_detection_config.enable_answer_machine_detection #=> Boolean
    #   resp.campaign.outbound_call_config.connect_contact_flow_id #=> String
    #   resp.campaign.outbound_call_config.connect_queue_id #=> String
    #   resp.campaign.outbound_call_config.connect_source_phone_number #=> String
    #   resp.campaign.tags #=> Hash
    #   resp.campaign.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DescribeCampaign AWS API Documentation
    #
    # @overload describe_campaign(params = {})
    # @param [Hash] params ({})
    def describe_campaign(params = {}, options = {})
      req = build_request(:describe_campaign, params)
      req.send_request(options)
    end

    # Get state of a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Types::GetCampaignStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignStateResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_state({
    #     id: "CampaignId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String, one of "Initialized", "Running", "Paused", "Stopped", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetCampaignState AWS API Documentation
    #
    # @overload get_campaign_state(params = {})
    # @param [Hash] params ({})
    def get_campaign_state(params = {}, options = {})
      req = build_request(:get_campaign_state, params)
      req.send_request(options)
    end

    # Get state of campaigns for the specified Amazon Connect account.
    #
    # @option params [required, Array<String>] :campaign_ids
    #   List of CampaignId
    #
    # @return [Types::GetCampaignStateBatchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignStateBatchResponse#failed_requests #failed_requests} => Array&lt;Types::FailedCampaignStateResponse&gt;
    #   * {Types::GetCampaignStateBatchResponse#successful_requests #successful_requests} => Array&lt;Types::SuccessfulCampaignStateResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_state_batch({
    #     campaign_ids: ["CampaignId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].campaign_id #=> String
    #   resp.failed_requests[0].failure_code #=> String, one of "ResourceNotFound", "UnknownError"
    #   resp.successful_requests #=> Array
    #   resp.successful_requests[0].campaign_id #=> String
    #   resp.successful_requests[0].state #=> String, one of "Initialized", "Running", "Paused", "Stopped", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetCampaignStateBatch AWS API Documentation
    #
    # @overload get_campaign_state_batch(params = {})
    # @param [Hash] params ({})
    def get_campaign_state_batch(params = {}, options = {})
      req = build_request(:get_campaign_state_batch, params)
      req.send_request(options)
    end

    # Get the specific Connect instance config.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @return [Types::GetConnectInstanceConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectInstanceConfigResponse#connect_instance_config #connect_instance_config} => Types::InstanceConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connect_instance_config({
    #     connect_instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_instance_config.connect_instance_id #=> String
    #   resp.connect_instance_config.encryption_config.enabled #=> Boolean
    #   resp.connect_instance_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.connect_instance_config.encryption_config.key_arn #=> String
    #   resp.connect_instance_config.service_linked_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetConnectInstanceConfig AWS API Documentation
    #
    # @overload get_connect_instance_config(params = {})
    # @param [Hash] params ({})
    def get_connect_instance_config(params = {}, options = {})
      req = build_request(:get_connect_instance_config, params)
      req.send_request(options)
    end

    # Get the specific instance onboarding job status.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @return [Types::GetInstanceOnboardingJobStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceOnboardingJobStatusResponse#connect_instance_onboarding_job_status #connect_instance_onboarding_job_status} => Types::InstanceOnboardingJobStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_onboarding_job_status({
    #     connect_instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_instance_onboarding_job_status.connect_instance_id #=> String
    #   resp.connect_instance_onboarding_job_status.failure_code #=> String, one of "EVENT_BRIDGE_ACCESS_DENIED", "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED", "IAM_ACCESS_DENIED", "KMS_ACCESS_DENIED", "KMS_KEY_NOT_FOUND", "INTERNAL_FAILURE"
    #   resp.connect_instance_onboarding_job_status.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetInstanceOnboardingJobStatus AWS API Documentation
    #
    # @overload get_instance_onboarding_job_status(params = {})
    # @param [Hash] params ({})
    def get_instance_onboarding_job_status(params = {}, options = {})
      req = build_request(:get_instance_onboarding_job_status, params)
      req.send_request(options)
    end

    # Provides summary information about the campaigns under the specified
    # Amazon Connect account.
    #
    # @option params [Types::CampaignFilters] :filters
    #   Filter model by type
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCampaignsResponse#campaign_summary_list #campaign_summary_list} => Array&lt;Types::CampaignSummary&gt;
    #   * {Types::ListCampaignsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_campaigns({
    #     filters: {
    #       instance_id_filter: {
    #         operator: "Eq", # required, accepts Eq
    #         value: "InstanceId", # required
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_summary_list #=> Array
    #   resp.campaign_summary_list[0].arn #=> String
    #   resp.campaign_summary_list[0].connect_instance_id #=> String
    #   resp.campaign_summary_list[0].id #=> String
    #   resp.campaign_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ListCampaigns AWS API Documentation
    #
    # @overload list_campaigns(params = {})
    # @param [Hash] params ({})
    def list_campaigns(params = {}, options = {})
      req = build_request(:list_campaigns, params)
      req.send_request(options)
    end

    # List tags for a resource.
    #
    # @option params [required, String] :arn
    #   Arn
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Pauses a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.pause_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/PauseCampaign AWS API Documentation
    #
    # @overload pause_campaign(params = {})
    # @param [Hash] params ({})
    def pause_campaign(params = {}, options = {})
      req = build_request(:pause_campaign, params)
      req.send_request(options)
    end

    # Creates dials requests for the specified campaign Amazon Connect
    # account. This API is idempotent.
    #
    # @option params [required, Array<Types::DialRequest>] :dial_requests
    #   A list of dial requests.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Types::PutDialRequestBatchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDialRequestBatchResponse#failed_requests #failed_requests} => Array&lt;Types::FailedRequest&gt;
    #   * {Types::PutDialRequestBatchResponse#successful_requests #successful_requests} => Array&lt;Types::SuccessfulRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_dial_request_batch({
    #     dial_requests: [ # required
    #       {
    #         attributes: { # required
    #           "AttributeName" => "AttributeValue",
    #         },
    #         client_token: "ClientToken", # required
    #         expiration_time: Time.now, # required
    #         phone_number: "DestinationPhoneNumber", # required
    #       },
    #     ],
    #     id: "CampaignId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].client_token #=> String
    #   resp.failed_requests[0].failure_code #=> String, one of "InvalidInput", "RequestThrottled", "UnknownError"
    #   resp.failed_requests[0].id #=> String
    #   resp.successful_requests #=> Array
    #   resp.successful_requests[0].client_token #=> String
    #   resp.successful_requests[0].id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/PutDialRequestBatch AWS API Documentation
    #
    # @overload put_dial_request_batch(params = {})
    # @param [Hash] params ({})
    def put_dial_request_batch(params = {}, options = {})
      req = build_request(:put_dial_request_batch, params)
      req.send_request(options)
    end

    # Stops a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ResumeCampaign AWS API Documentation
    #
    # @overload resume_campaign(params = {})
    # @param [Hash] params ({})
    def resume_campaign(params = {}, options = {})
      req = build_request(:resume_campaign, params)
      req.send_request(options)
    end

    # Starts a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/StartCampaign AWS API Documentation
    #
    # @overload start_campaign(params = {})
    # @param [Hash] params ({})
    def start_campaign(params = {}, options = {})
      req = build_request(:start_campaign, params)
      req.send_request(options)
    end

    # Onboard the specific Amazon Connect instance to Connect Campaigns.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @option params [required, Types::EncryptionConfig] :encryption_config
    #   Encryption config for Connect Instance. Note that sensitive data will
    #   always be encrypted. If disabled, service will perform encryption with
    #   its own key. If enabled, a KMS key id needs to be provided and KMS
    #   charges will apply. KMS is only type supported
    #
    # @return [Types::StartInstanceOnboardingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartInstanceOnboardingJobResponse#connect_instance_onboarding_job_status #connect_instance_onboarding_job_status} => Types::InstanceOnboardingJobStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_instance_onboarding_job({
    #     connect_instance_id: "InstanceId", # required
    #     encryption_config: { # required
    #       enabled: false, # required
    #       encryption_type: "KMS", # accepts KMS
    #       key_arn: "EncryptionKey",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_instance_onboarding_job_status.connect_instance_id #=> String
    #   resp.connect_instance_onboarding_job_status.failure_code #=> String, one of "EVENT_BRIDGE_ACCESS_DENIED", "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED", "IAM_ACCESS_DENIED", "KMS_ACCESS_DENIED", "KMS_KEY_NOT_FOUND", "INTERNAL_FAILURE"
    #   resp.connect_instance_onboarding_job_status.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/StartInstanceOnboardingJob AWS API Documentation
    #
    # @overload start_instance_onboarding_job(params = {})
    # @param [Hash] params ({})
    def start_instance_onboarding_job(params = {}, options = {})
      req = build_request(:start_instance_onboarding_job, params)
      req.send_request(options)
    end

    # Stops a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/StopCampaign AWS API Documentation
    #
    # @overload stop_campaign(params = {})
    # @param [Hash] params ({})
    def stop_campaign(params = {}, options = {})
      req = build_request(:stop_campaign, params)
      req.send_request(options)
    end

    # Tag a resource.
    #
    # @option params [required, String] :arn
    #   Arn
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tag map with key and value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untag a resource.
    #
    # @option params [required, String] :arn
    #   Arn
    #
    # @option params [required, Array<String>] :tag_keys
    #   List of tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the dialer config of a campaign. This API is idempotent.
    #
    # @option params [required, Types::DialerConfig] :dialer_config
    #   The possible types of dialer config parameters
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_dialer_config({
    #     dialer_config: { # required
    #       predictive_dialer_config: {
    #         bandwidth_allocation: 1.0, # required
    #       },
    #       progressive_dialer_config: {
    #         bandwidth_allocation: 1.0, # required
    #       },
    #     },
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/UpdateCampaignDialerConfig AWS API Documentation
    #
    # @overload update_campaign_dialer_config(params = {})
    # @param [Hash] params ({})
    def update_campaign_dialer_config(params = {}, options = {})
      req = build_request(:update_campaign_dialer_config, params)
      req.send_request(options)
    end

    # Updates the name of a campaign. This API is idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, String] :name
    #   The name of an Amazon Connect Campaign name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_name({
    #     id: "CampaignId", # required
    #     name: "CampaignName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/UpdateCampaignName AWS API Documentation
    #
    # @overload update_campaign_name(params = {})
    # @param [Hash] params ({})
    def update_campaign_name(params = {}, options = {})
      req = build_request(:update_campaign_name, params)
      req.send_request(options)
    end

    # Updates the outbound call config of a campaign. This API is
    # idempotent.
    #
    # @option params [Types::AnswerMachineDetectionConfig] :answer_machine_detection_config
    #   Answering Machine Detection config
    #
    # @option params [String] :connect_contact_flow_id
    #   The identifier of the contact flow for the outbound call.
    #
    # @option params [String] :connect_source_phone_number
    #   The phone number associated with the Amazon Connect instance, in E.164
    #   format. If you do not specify a source phone number, you must specify
    #   a queue.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_outbound_call_config({
    #     answer_machine_detection_config: {
    #       enable_answer_machine_detection: false, # required
    #     },
    #     connect_contact_flow_id: "ContactFlowId",
    #     connect_source_phone_number: "SourcePhoneNumber",
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/UpdateCampaignOutboundCallConfig AWS API Documentation
    #
    # @overload update_campaign_outbound_call_config(params = {})
    # @param [Hash] params ({})
    def update_campaign_outbound_call_config(params = {}, options = {})
      req = build_request(:update_campaign_outbound_call_config, params)
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
      context[:gem_name] = 'aws-sdk-connectcampaignservice'
      context[:gem_version] = '1.8.0'
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
