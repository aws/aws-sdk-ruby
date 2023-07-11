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

Aws::Plugins::GlobalConfiguration.add_identifier(:ssmincidents)

module Aws::SSMIncidents
  # An API client for SSMIncidents.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SSMIncidents::Client.new(
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

    @identifier = :ssmincidents

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
    add_plugin(Aws::SSMIncidents::Plugins::Endpoints)

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
    #   @option options [Aws::SSMIncidents::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SSMIncidents::EndpointParameters`
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

    # A replication set replicates and encrypts your data to the provided
    # Regions with the provided KMS key.
    #
    # @option params [String] :client_token
    #   A token that ensures that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Hash<String,Types::RegionMapInputValue>] :regions
    #   The Regions that Incident Manager replicates your data to. You can
    #   have up to three Regions in your replication set.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags to add to the replication set.
    #
    # @return [Types::CreateReplicationSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationSetOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_set({
    #     client_token: "ClientToken",
    #     regions: { # required
    #       "RegionName" => {
    #         sse_kms_key_id: "SseKmsKey",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/CreateReplicationSet AWS API Documentation
    #
    # @overload create_replication_set(params = {})
    # @param [Hash] params ({})
    def create_replication_set(params = {}, options = {})
      req = build_request(:create_replication_set, params)
      req.send_request(options)
    end

    # Creates a response plan that automates the initial response to
    # incidents. A response plan engages contacts, starts chat channel
    # collaboration, and initiates runbooks at the beginning of an incident.
    #
    # @option params [Array<Types::Action>] :actions
    #   The actions that the response plan starts at the beginning of an
    #   incident.
    #
    # @option params [Types::ChatChannel] :chat_channel
    #   The Chatbot chat channel used for collaboration during an incident.
    #
    # @option params [String] :client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :display_name
    #   The long format of the response plan name. This field can contain
    #   spaces.
    #
    # @option params [Array<String>] :engagements
    #   The Amazon Resource Name (ARN) for the contacts and escalation plans
    #   that the response plan engages during an incident.
    #
    # @option params [required, Types::IncidentTemplate] :incident_template
    #   Details used to create an incident when using this response plan.
    #
    # @option params [Array<Types::Integration>] :integrations
    #   Information about third-party services integrated into the response
    #   plan.
    #
    # @option params [required, String] :name
    #   The short format name of the response plan. Can't include spaces.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags that you are adding to the response plan.
    #
    # @return [Types::CreateResponsePlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResponsePlanOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_response_plan({
    #     actions: [
    #       {
    #         ssm_automation: {
    #           document_name: "SsmAutomationDocumentNameString", # required
    #           document_version: "SsmAutomationDocumentVersionString",
    #           dynamic_parameters: {
    #             "DynamicSsmParametersKeyString" => {
    #               variable: "INCIDENT_RECORD_ARN", # accepts INCIDENT_RECORD_ARN, INVOLVED_RESOURCES
    #             },
    #           },
    #           parameters: {
    #             "SsmParametersKeyString" => ["SsmParameterValuesMemberString"],
    #           },
    #           role_arn: "RoleArn", # required
    #           target_account: "RESPONSE_PLAN_OWNER_ACCOUNT", # accepts RESPONSE_PLAN_OWNER_ACCOUNT, IMPACTED_ACCOUNT
    #         },
    #       },
    #     ],
    #     chat_channel: {
    #       chatbot_sns: ["SnsArn"],
    #       empty: {
    #       },
    #     },
    #     client_token: "ClientToken",
    #     display_name: "ResponsePlanDisplayName",
    #     engagements: ["SsmContactsArn"],
    #     incident_template: { # required
    #       dedupe_string: "DedupeString",
    #       impact: 1, # required
    #       incident_tags: {
    #         "TagKey" => "TagValue",
    #       },
    #       notification_targets: [
    #         {
    #           sns_topic_arn: "Arn",
    #         },
    #       ],
    #       summary: "IncidentSummary",
    #       title: "IncidentTitle", # required
    #     },
    #     integrations: [
    #       {
    #         pager_duty_configuration: {
    #           name: "PagerDutyConfigurationNameString", # required
    #           pager_duty_incident_configuration: { # required
    #             service_id: "PagerDutyIncidentConfigurationServiceIdString", # required
    #           },
    #           secret_id: "PagerDutyConfigurationSecretIdString", # required
    #         },
    #       },
    #     ],
    #     name: "ResponsePlanName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/CreateResponsePlan AWS API Documentation
    #
    # @overload create_response_plan(params = {})
    # @param [Hash] params ({})
    def create_response_plan(params = {}, options = {})
      req = build_request(:create_response_plan, params)
      req.send_request(options)
    end

    # Creates a custom timeline event on the incident details page of an
    # incident record. Incident Manager automatically creates timeline
    # events that mark key moments during an incident. You can create custom
    # timeline events to mark important events that Incident Manager can
    # detect automatically.
    #
    # @option params [String] :client_token
    #   A token that ensures that a client calls the action only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :event_data
    #   A short description of the event.
    #
    # @option params [Array<Types::EventReference>] :event_references
    #   Adds one or more references to the `TimelineEvent`. A reference is an
    #   Amazon Web Services resource involved or associated with the incident.
    #   To specify a reference, enter its Amazon Resource Name (ARN). You can
    #   also specify a related item associated with a resource. For example,
    #   to specify an Amazon DynamoDB (DynamoDB) table as a resource, use the
    #   table's ARN. You can also specify an Amazon CloudWatch metric
    #   associated with the DynamoDB table as a related item.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :event_time
    #   The time that the event occurred.
    #
    # @option params [required, String] :event_type
    #   The type of event. You can create timeline events of type `Custom
    #   Event`.
    #
    # @option params [required, String] :incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident record that the action
    #   adds the incident to.
    #
    # @return [Types::CreateTimelineEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTimelineEventOutput#event_id #event_id} => String
    #   * {Types::CreateTimelineEventOutput#incident_record_arn #incident_record_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_timeline_event({
    #     client_token: "ClientToken",
    #     event_data: "EventData", # required
    #     event_references: [
    #       {
    #         related_item_id: "GeneratedId",
    #         resource: "Arn",
    #       },
    #     ],
    #     event_time: Time.now, # required
    #     event_type: "TimelineEventType", # required
    #     incident_record_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_id #=> String
    #   resp.incident_record_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/CreateTimelineEvent AWS API Documentation
    #
    # @overload create_timeline_event(params = {})
    # @param [Hash] params ({})
    def create_timeline_event(params = {}, options = {})
      req = build_request(:create_timeline_event, params)
      req.send_request(options)
    end

    # Delete an incident record from Incident Manager.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the incident record you are
    #   deleting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_incident_record({
    #     arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteIncidentRecord AWS API Documentation
    #
    # @overload delete_incident_record(params = {})
    # @param [Hash] params ({})
    def delete_incident_record(params = {}, options = {})
      req = build_request(:delete_incident_record, params)
      req.send_request(options)
    end

    # Deletes all Regions in your replication set. Deleting the replication
    # set deletes all Incident Manager data.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the replication set you're
    #   deleting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_set({
    #     arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteReplicationSet AWS API Documentation
    #
    # @overload delete_replication_set(params = {})
    # @param [Hash] params ({})
    def delete_replication_set(params = {}, options = {})
      req = build_request(:delete_replication_set, params)
      req.send_request(options)
    end

    # Deletes the resource policy that Resource Access Manager uses to share
    # your Incident Manager resource.
    #
    # @option params [required, String] :policy_id
    #   The ID of the resource policy you're deleting.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you're deleting the
    #   policy from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     policy_id: "PolicyId", # required
    #     resource_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes the specified response plan. Deleting a response plan stops
    # all linked CloudWatch alarms and EventBridge events from creating an
    # incident with this response plan.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_response_plan({
    #     arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteResponsePlan AWS API Documentation
    #
    # @overload delete_response_plan(params = {})
    # @param [Hash] params ({})
    def delete_response_plan(params = {}, options = {})
      req = build_request(:delete_response_plan, params)
      req.send_request(options)
    end

    # Deletes a timeline event from an incident.
    #
    # @option params [required, String] :event_id
    #   The ID of the event to update. You can use `ListTimelineEvents` to
    #   find an event's ID.
    #
    # @option params [required, String] :incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that includes the
    #   timeline event.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_timeline_event({
    #     event_id: "UUID", # required
    #     incident_record_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteTimelineEvent AWS API Documentation
    #
    # @overload delete_timeline_event(params = {})
    # @param [Hash] params ({})
    def delete_timeline_event(params = {}, options = {})
      req = build_request(:delete_timeline_event, params)
      req.send_request(options)
    end

    # Returns the details for the specified incident record.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the incident record.
    #
    # @return [Types::GetIncidentRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIncidentRecordOutput#incident_record #incident_record} => Types::IncidentRecord
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_incident_record({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.incident_record.arn #=> String
    #   resp.incident_record.automation_executions #=> Array
    #   resp.incident_record.automation_executions[0].ssm_execution_arn #=> String
    #   resp.incident_record.chat_channel.chatbot_sns #=> Array
    #   resp.incident_record.chat_channel.chatbot_sns[0] #=> String
    #   resp.incident_record.creation_time #=> Time
    #   resp.incident_record.dedupe_string #=> String
    #   resp.incident_record.impact #=> Integer
    #   resp.incident_record.incident_record_source.created_by #=> String
    #   resp.incident_record.incident_record_source.invoked_by #=> String
    #   resp.incident_record.incident_record_source.resource_arn #=> String
    #   resp.incident_record.incident_record_source.source #=> String
    #   resp.incident_record.last_modified_by #=> String
    #   resp.incident_record.last_modified_time #=> Time
    #   resp.incident_record.notification_targets #=> Array
    #   resp.incident_record.notification_targets[0].sns_topic_arn #=> String
    #   resp.incident_record.resolved_time #=> Time
    #   resp.incident_record.status #=> String, one of "OPEN", "RESOLVED"
    #   resp.incident_record.summary #=> String
    #   resp.incident_record.title #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetIncidentRecord AWS API Documentation
    #
    # @overload get_incident_record(params = {})
    # @param [Hash] params ({})
    def get_incident_record(params = {}, options = {})
      req = build_request(:get_incident_record, params)
      req.send_request(options)
    end

    # Retrieve your Incident Manager replication set.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the replication set you want to
    #   retrieve.
    #
    # @return [Types::GetReplicationSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReplicationSetOutput#replication_set #replication_set} => Types::ReplicationSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_set({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_set.arn #=> String
    #   resp.replication_set.created_by #=> String
    #   resp.replication_set.created_time #=> Time
    #   resp.replication_set.deletion_protected #=> Boolean
    #   resp.replication_set.last_modified_by #=> String
    #   resp.replication_set.last_modified_time #=> Time
    #   resp.replication_set.region_map #=> Hash
    #   resp.replication_set.region_map["RegionName"].sse_kms_key_id #=> String
    #   resp.replication_set.region_map["RegionName"].status #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED"
    #   resp.replication_set.region_map["RegionName"].status_message #=> String
    #   resp.replication_set.region_map["RegionName"].status_update_date_time #=> Time
    #   resp.replication_set.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * wait_for_replication_set_active
    #   * wait_for_replication_set_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetReplicationSet AWS API Documentation
    #
    # @overload get_replication_set(params = {})
    # @param [Hash] params ({})
    def get_replication_set(params = {}, options = {})
      req = build_request(:get_replication_set, params)
      req.send_request(options)
    end

    # Retrieves the resource policies attached to the specified response
    # plan.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource policies to display for each page of
    #   results.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the response plan with the attached
    #   resource policy.
    #
    # @return [Types::GetResourcePoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePoliciesOutput#next_token #next_token} => String
    #   * {Types::GetResourcePoliciesOutput#resource_policies #resource_policies} => Array&lt;Types::ResourcePolicy&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policies({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resource_policies #=> Array
    #   resp.resource_policies[0].policy_document #=> String
    #   resp.resource_policies[0].policy_id #=> String
    #   resp.resource_policies[0].ram_resource_share_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetResourcePolicies AWS API Documentation
    #
    # @overload get_resource_policies(params = {})
    # @param [Hash] params ({})
    def get_resource_policies(params = {}, options = {})
      req = build_request(:get_resource_policies, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified response plan.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #
    # @return [Types::GetResponsePlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResponsePlanOutput#actions #actions} => Array&lt;Types::Action&gt;
    #   * {Types::GetResponsePlanOutput#arn #arn} => String
    #   * {Types::GetResponsePlanOutput#chat_channel #chat_channel} => Types::ChatChannel
    #   * {Types::GetResponsePlanOutput#display_name #display_name} => String
    #   * {Types::GetResponsePlanOutput#engagements #engagements} => Array&lt;String&gt;
    #   * {Types::GetResponsePlanOutput#incident_template #incident_template} => Types::IncidentTemplate
    #   * {Types::GetResponsePlanOutput#integrations #integrations} => Array&lt;Types::Integration&gt;
    #   * {Types::GetResponsePlanOutput#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_response_plan({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.actions #=> Array
    #   resp.actions[0].ssm_automation.document_name #=> String
    #   resp.actions[0].ssm_automation.document_version #=> String
    #   resp.actions[0].ssm_automation.dynamic_parameters #=> Hash
    #   resp.actions[0].ssm_automation.dynamic_parameters["DynamicSsmParametersKeyString"].variable #=> String, one of "INCIDENT_RECORD_ARN", "INVOLVED_RESOURCES"
    #   resp.actions[0].ssm_automation.parameters #=> Hash
    #   resp.actions[0].ssm_automation.parameters["SsmParametersKeyString"] #=> Array
    #   resp.actions[0].ssm_automation.parameters["SsmParametersKeyString"][0] #=> String
    #   resp.actions[0].ssm_automation.role_arn #=> String
    #   resp.actions[0].ssm_automation.target_account #=> String, one of "RESPONSE_PLAN_OWNER_ACCOUNT", "IMPACTED_ACCOUNT"
    #   resp.arn #=> String
    #   resp.chat_channel.chatbot_sns #=> Array
    #   resp.chat_channel.chatbot_sns[0] #=> String
    #   resp.display_name #=> String
    #   resp.engagements #=> Array
    #   resp.engagements[0] #=> String
    #   resp.incident_template.dedupe_string #=> String
    #   resp.incident_template.impact #=> Integer
    #   resp.incident_template.incident_tags #=> Hash
    #   resp.incident_template.incident_tags["TagKey"] #=> String
    #   resp.incident_template.notification_targets #=> Array
    #   resp.incident_template.notification_targets[0].sns_topic_arn #=> String
    #   resp.incident_template.summary #=> String
    #   resp.incident_template.title #=> String
    #   resp.integrations #=> Array
    #   resp.integrations[0].pager_duty_configuration.name #=> String
    #   resp.integrations[0].pager_duty_configuration.pager_duty_incident_configuration.service_id #=> String
    #   resp.integrations[0].pager_duty_configuration.secret_id #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetResponsePlan AWS API Documentation
    #
    # @overload get_response_plan(params = {})
    # @param [Hash] params ({})
    def get_response_plan(params = {}, options = {})
      req = build_request(:get_response_plan, params)
      req.send_request(options)
    end

    # Retrieves a timeline event based on its ID and incident record.
    #
    # @option params [required, String] :event_id
    #   The ID of the event. You can get an event's ID when you create it, or
    #   by using `ListTimelineEvents`.
    #
    # @option params [required, String] :incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that includes the
    #   timeline event.
    #
    # @return [Types::GetTimelineEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTimelineEventOutput#event #event} => Types::TimelineEvent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_timeline_event({
    #     event_id: "UUID", # required
    #     incident_record_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event.event_data #=> String
    #   resp.event.event_id #=> String
    #   resp.event.event_references #=> Array
    #   resp.event.event_references[0].related_item_id #=> String
    #   resp.event.event_references[0].resource #=> String
    #   resp.event.event_time #=> Time
    #   resp.event.event_type #=> String
    #   resp.event.event_updated_time #=> Time
    #   resp.event.incident_record_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetTimelineEvent AWS API Documentation
    #
    # @overload get_timeline_event(params = {})
    # @param [Hash] params ({})
    def get_timeline_event(params = {}, options = {})
      req = build_request(:get_timeline_event, params)
      req.send_request(options)
    end

    # Lists all incident records in your account. Use this command to
    # retrieve the Amazon Resource Name (ARN) of the incident record you
    # want to update.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters the list of incident records you want to search through. You
    #   can filter on the following keys:
    #
    #   * `creationTime`
    #
    #   * `impact`
    #
    #   * `status`
    #
    #   * `createdBy`
    #
    #   Note the following when when you use Filters:
    #
    #   * If you don't specify a Filter, the response includes all incident
    #     records.
    #
    #   * If you specify more than one filter in a single request, the
    #     response returns incident records that match all filters.
    #
    #   * If you specify a filter with more than one value, the response
    #     returns incident records that match any of the values provided.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results per page.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @return [Types::ListIncidentRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIncidentRecordsOutput#incident_record_summaries #incident_record_summaries} => Array&lt;Types::IncidentRecordSummary&gt;
    #   * {Types::ListIncidentRecordsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_incident_records({
    #     filters: [
    #       {
    #         condition: { # required
    #           after: Time.now,
    #           before: Time.now,
    #           equals: {
    #             integer_values: [1],
    #             string_values: ["StringListMemberString"],
    #           },
    #         },
    #         key: "FilterKeyString", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.incident_record_summaries #=> Array
    #   resp.incident_record_summaries[0].arn #=> String
    #   resp.incident_record_summaries[0].creation_time #=> Time
    #   resp.incident_record_summaries[0].impact #=> Integer
    #   resp.incident_record_summaries[0].incident_record_source.created_by #=> String
    #   resp.incident_record_summaries[0].incident_record_source.invoked_by #=> String
    #   resp.incident_record_summaries[0].incident_record_source.resource_arn #=> String
    #   resp.incident_record_summaries[0].incident_record_source.source #=> String
    #   resp.incident_record_summaries[0].resolved_time #=> Time
    #   resp.incident_record_summaries[0].status #=> String, one of "OPEN", "RESOLVED"
    #   resp.incident_record_summaries[0].title #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListIncidentRecords AWS API Documentation
    #
    # @overload list_incident_records(params = {})
    # @param [Hash] params ({})
    def list_incident_records(params = {}, options = {})
      req = build_request(:list_incident_records, params)
      req.send_request(options)
    end

    # List all related items for an incident record.
    #
    # @option params [required, String] :incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident record containing the
    #   listed related items.
    #
    # @option params [Integer] :max_results
    #   The maximum number of related items per page.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @return [Types::ListRelatedItemsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRelatedItemsOutput#next_token #next_token} => String
    #   * {Types::ListRelatedItemsOutput#related_items #related_items} => Array&lt;Types::RelatedItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_related_items({
    #     incident_record_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.related_items #=> Array
    #   resp.related_items[0].generated_id #=> String
    #   resp.related_items[0].identifier.type #=> String, one of "ANALYSIS", "INCIDENT", "METRIC", "PARENT", "ATTACHMENT", "OTHER", "AUTOMATION", "INVOLVED_RESOURCE", "TASK"
    #   resp.related_items[0].identifier.value.arn #=> String
    #   resp.related_items[0].identifier.value.metric_definition #=> String
    #   resp.related_items[0].identifier.value.pager_duty_incident_detail.auto_resolve #=> Boolean
    #   resp.related_items[0].identifier.value.pager_duty_incident_detail.id #=> String
    #   resp.related_items[0].identifier.value.pager_duty_incident_detail.secret_id #=> String
    #   resp.related_items[0].identifier.value.url #=> String
    #   resp.related_items[0].title #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListRelatedItems AWS API Documentation
    #
    # @overload list_related_items(params = {})
    # @param [Hash] params ({})
    def list_related_items(params = {}, options = {})
      req = build_request(:list_related_items, params)
      req.send_request(options)
    end

    # Lists details about the replication set configured in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results per page.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @return [Types::ListReplicationSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReplicationSetsOutput#next_token #next_token} => String
    #   * {Types::ListReplicationSetsOutput#replication_set_arns #replication_set_arns} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_replication_sets({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.replication_set_arns #=> Array
    #   resp.replication_set_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListReplicationSets AWS API Documentation
    #
    # @overload list_replication_sets(params = {})
    # @param [Hash] params ({})
    def list_replication_sets(params = {}, options = {})
      req = build_request(:list_replication_sets, params)
      req.send_request(options)
    end

    # Lists all response plans in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of response plans per page.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @return [Types::ListResponsePlansOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResponsePlansOutput#next_token #next_token} => String
    #   * {Types::ListResponsePlansOutput#response_plan_summaries #response_plan_summaries} => Array&lt;Types::ResponsePlanSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_response_plans({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.response_plan_summaries #=> Array
    #   resp.response_plan_summaries[0].arn #=> String
    #   resp.response_plan_summaries[0].display_name #=> String
    #   resp.response_plan_summaries[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListResponsePlans AWS API Documentation
    #
    # @overload list_response_plans(params = {})
    # @param [Hash] params ({})
    def list_response_plans(params = {}, options = {})
      req = build_request(:list_response_plans, params)
      req.send_request(options)
    end

    # Lists the tags that are attached to the specified response plan.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
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
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists timeline events for the specified incident record.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters the timeline events based on the provided conditional values.
    #   You can filter timeline events with the following keys:
    #
    #   * `eventTime`
    #
    #   * `eventType`
    #
    #   Note the following when deciding how to use Filters:
    #
    #   * If you don't specify a Filter, the response includes all timeline
    #     events.
    #
    #   * If you specify more than one filter in a single request, the
    #     response returns timeline events that match all filters.
    #
    #   * If you specify a filter with more than one value, the response
    #     returns timeline events that match any of the values provided.
    #
    # @option params [required, String] :incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that includes the
    #   timeline event.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results per page.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @option params [String] :sort_by
    #   Sort timeline events by the specified key value pair.
    #
    # @option params [String] :sort_order
    #   Sorts the order of timeline events by the value specified in the
    #   `sortBy` field.
    #
    # @return [Types::ListTimelineEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTimelineEventsOutput#event_summaries #event_summaries} => Array&lt;Types::EventSummary&gt;
    #   * {Types::ListTimelineEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_timeline_events({
    #     filters: [
    #       {
    #         condition: { # required
    #           after: Time.now,
    #           before: Time.now,
    #           equals: {
    #             integer_values: [1],
    #             string_values: ["StringListMemberString"],
    #           },
    #         },
    #         key: "FilterKeyString", # required
    #       },
    #     ],
    #     incident_record_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_by: "EVENT_TIME", # accepts EVENT_TIME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.event_summaries #=> Array
    #   resp.event_summaries[0].event_id #=> String
    #   resp.event_summaries[0].event_references #=> Array
    #   resp.event_summaries[0].event_references[0].related_item_id #=> String
    #   resp.event_summaries[0].event_references[0].resource #=> String
    #   resp.event_summaries[0].event_time #=> Time
    #   resp.event_summaries[0].event_type #=> String
    #   resp.event_summaries[0].event_updated_time #=> Time
    #   resp.event_summaries[0].incident_record_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListTimelineEvents AWS API Documentation
    #
    # @overload list_timeline_events(params = {})
    # @param [Hash] params ({})
    def list_timeline_events(params = {}, options = {})
      req = build_request(:list_timeline_events, params)
      req.send_request(options)
    end

    # Adds a resource policy to the specified response plan. The resource
    # policy is used to share the response plan using Resource Access
    # Manager (RAM). For more information about cross-account sharing, see
    # [Cross-Region and cross-account incident management][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/incident-manager/latest/userguide/incident-manager-cross-account-cross-region.html
    #
    # @option params [required, String] :policy
    #   Details of the resource policy.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the response plan to add the
    #   resource policy to.
    #
    # @return [Types::PutResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyOutput#policy_id #policy_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy: "Policy", # required
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Used to start an incident from CloudWatch alarms, EventBridge events,
    # or manually.
    #
    # @option params [String] :client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :impact
    #   Defines the impact to the customers. Providing an impact overwrites
    #   the impact provided by a response plan.
    #
    #   **Possible impacts:**
    #
    #   * `1` - Critical impact, this typically relates to full application
    #     failure that impacts many to all customers.
    #
    #   * `2` - High impact, partial application failure with impact to many
    #     customers.
    #
    #   * `3` - Medium impact, the application is providing reduced service to
    #     customers.
    #
    #   * `4` - Low impact, customer might aren't impacted by the problem
    #     yet.
    #
    #   * `5` - No impact, customers aren't currently impacted but urgent
    #     action is needed to avoid impact.
    #
    # @option params [Array<Types::RelatedItem>] :related_items
    #   Add related items to the incident for other responders to use. Related
    #   items are Amazon Web Services resources, external links, or files
    #   uploaded to an Amazon S3 bucket.
    #
    # @option params [required, String] :response_plan_arn
    #   The Amazon Resource Name (ARN) of the response plan that pre-defines
    #   summary, chat channels, Amazon SNS topics, runbooks, title, and impact
    #   of the incident.
    #
    # @option params [String] :title
    #   Provide a title for the incident. Providing a title overwrites the
    #   title provided by the response plan.
    #
    # @option params [Types::TriggerDetails] :trigger_details
    #   Details of what created the incident record in Incident Manager.
    #
    # @return [Types::StartIncidentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartIncidentOutput#incident_record_arn #incident_record_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_incident({
    #     client_token: "ClientToken",
    #     impact: 1,
    #     related_items: [
    #       {
    #         generated_id: "GeneratedId",
    #         identifier: { # required
    #           type: "ANALYSIS", # required, accepts ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER, AUTOMATION, INVOLVED_RESOURCE, TASK
    #           value: { # required
    #             arn: "Arn",
    #             metric_definition: "MetricDefinition",
    #             pager_duty_incident_detail: {
    #               auto_resolve: false,
    #               id: "PagerDutyIncidentDetailIdString", # required
    #               secret_id: "PagerDutyIncidentDetailSecretIdString",
    #             },
    #             url: "Url",
    #           },
    #         },
    #         title: "RelatedItemTitleString",
    #       },
    #     ],
    #     response_plan_arn: "Arn", # required
    #     title: "IncidentTitle",
    #     trigger_details: {
    #       raw_data: "RawData",
    #       source: "IncidentSource", # required
    #       timestamp: Time.now, # required
    #       trigger_arn: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.incident_record_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/StartIncident AWS API Documentation
    #
    # @overload start_incident(params = {})
    # @param [Hash] params ({})
    def start_incident(params = {}, options = {})
      req = build_request(:start_incident, params)
      req.send_request(options)
    end

    # Adds a tag to a response plan.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the response plan you're adding the
    #   tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags to add to the response plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the response plan you're removing a
    #   tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The name of the tag to remove from the response plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update deletion protection to either allow or deny deletion of the
    # final Region in a replication set.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the replication set to update.
    #
    # @option params [String] :client_token
    #   A token that ensures that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Boolean] :deletion_protected
    #   Specifies if deletion protection is turned on or off in your account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deletion_protection({
    #     arn: "Arn", # required
    #     client_token: "ClientToken",
    #     deletion_protected: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateDeletionProtection AWS API Documentation
    #
    # @overload update_deletion_protection(params = {})
    # @param [Hash] params ({})
    def update_deletion_protection(params = {}, options = {})
      req = build_request(:update_deletion_protection, params)
      req.send_request(options)
    end

    # Update the details of an incident record. You can use this operation
    # to update an incident record from the defined chat channel. For more
    # information about using actions in chat channels, see [Interacting
    # through chat][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the incident record you are
    #   updating.
    #
    # @option params [Types::ChatChannel] :chat_channel
    #   The Chatbot chat channel where responders can collaborate.
    #
    # @option params [String] :client_token
    #   A token that ensures that a client calls the operation only once with
    #   the specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :impact
    #   Defines the impact of the incident to customers and applications. If
    #   you provide an impact for an incident, it overwrites the impact
    #   provided by the response plan.
    #
    #   **Possible impacts:**
    #
    #   * `1` - Critical impact, full application failure that impacts many to
    #     all customers.
    #
    #   * `2` - High impact, partial application failure with impact to many
    #     customers.
    #
    #   * `3` - Medium impact, the application is providing reduced service to
    #     customers.
    #
    #   * `4` - Low impact, customer aren't impacted by the problem yet.
    #
    #   * `5` - No impact, customers aren't currently impacted but urgent
    #     action is needed to avoid impact.
    #
    # @option params [Array<Types::NotificationTargetItem>] :notification_targets
    #   The Amazon SNS targets that Incident Manager notifies when a client
    #   updates an incident.
    #
    #   Using multiple SNS topics creates redundancy in the event that a
    #   Region is down during the incident.
    #
    # @option params [String] :status
    #   The status of the incident. Possible statuses are `Open` or
    #   `Resolved`.
    #
    # @option params [String] :summary
    #   A longer description of what occurred during the incident.
    #
    # @option params [String] :title
    #   A brief description of the incident.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_incident_record({
    #     arn: "Arn", # required
    #     chat_channel: {
    #       chatbot_sns: ["SnsArn"],
    #       empty: {
    #       },
    #     },
    #     client_token: "ClientToken",
    #     impact: 1,
    #     notification_targets: [
    #       {
    #         sns_topic_arn: "Arn",
    #       },
    #     ],
    #     status: "OPEN", # accepts OPEN, RESOLVED
    #     summary: "IncidentSummary",
    #     title: "IncidentTitle",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateIncidentRecord AWS API Documentation
    #
    # @overload update_incident_record(params = {})
    # @param [Hash] params ({})
    def update_incident_record(params = {}, options = {})
      req = build_request(:update_incident_record, params)
      req.send_request(options)
    end

    # Add or remove related items from the related items tab of an incident
    # record.
    #
    # @option params [String] :client_token
    #   A token that ensures that a client calls the operation only once with
    #   the specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident record that contains
    #   the related items that you update.
    #
    # @option params [required, Types::RelatedItemsUpdate] :related_items_update
    #   Details about the item that you are add to, or delete from, an
    #   incident.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_related_items({
    #     client_token: "ClientToken",
    #     incident_record_arn: "Arn", # required
    #     related_items_update: { # required
    #       item_to_add: {
    #         generated_id: "GeneratedId",
    #         identifier: { # required
    #           type: "ANALYSIS", # required, accepts ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER, AUTOMATION, INVOLVED_RESOURCE, TASK
    #           value: { # required
    #             arn: "Arn",
    #             metric_definition: "MetricDefinition",
    #             pager_duty_incident_detail: {
    #               auto_resolve: false,
    #               id: "PagerDutyIncidentDetailIdString", # required
    #               secret_id: "PagerDutyIncidentDetailSecretIdString",
    #             },
    #             url: "Url",
    #           },
    #         },
    #         title: "RelatedItemTitleString",
    #       },
    #       item_to_remove: {
    #         type: "ANALYSIS", # required, accepts ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER, AUTOMATION, INVOLVED_RESOURCE, TASK
    #         value: { # required
    #           arn: "Arn",
    #           metric_definition: "MetricDefinition",
    #           pager_duty_incident_detail: {
    #             auto_resolve: false,
    #             id: "PagerDutyIncidentDetailIdString", # required
    #             secret_id: "PagerDutyIncidentDetailSecretIdString",
    #           },
    #           url: "Url",
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateRelatedItems AWS API Documentation
    #
    # @overload update_related_items(params = {})
    # @param [Hash] params ({})
    def update_related_items(params = {}, options = {})
      req = build_request(:update_related_items, params)
      req.send_request(options)
    end

    # Add or delete Regions from your replication set.
    #
    # @option params [required, Array<Types::UpdateReplicationSetAction>] :actions
    #   An action to add or delete a Region.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the replication set you're
    #   updating.
    #
    # @option params [String] :client_token
    #   A token that ensures that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_set({
    #     actions: [ # required
    #       {
    #         add_region_action: {
    #           region_name: "RegionName", # required
    #           sse_kms_key_id: "SseKmsKey",
    #         },
    #         delete_region_action: {
    #           region_name: "RegionName", # required
    #         },
    #       },
    #     ],
    #     arn: "Arn", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateReplicationSet AWS API Documentation
    #
    # @overload update_replication_set(params = {})
    # @param [Hash] params ({})
    def update_replication_set(params = {}, options = {})
      req = build_request(:update_replication_set, params)
      req.send_request(options)
    end

    # Updates the specified response plan.
    #
    # @option params [Array<Types::Action>] :actions
    #   The actions that this response plan takes at the beginning of an
    #   incident.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #
    # @option params [Types::ChatChannel] :chat_channel
    #   The Chatbot chat channel used for collaboration during an incident.
    #
    #   Use the empty structure to remove the chat channel from the response
    #   plan.
    #
    # @option params [String] :client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :display_name
    #   The long format name of the response plan. The display name can't
    #   contain spaces.
    #
    # @option params [Array<String>] :engagements
    #   The Amazon Resource Name (ARN) for the contacts and escalation plans
    #   that the response plan engages during an incident.
    #
    # @option params [String] :incident_template_dedupe_string
    #   The string Incident Manager uses to prevent duplicate incidents from
    #   being created by the same incident in the same account.
    #
    # @option params [Integer] :incident_template_impact
    #   Defines the impact to the customers. Providing an impact overwrites
    #   the impact provided by a response plan.
    #
    #   **Possible impacts:**
    #
    #   * `5` - Severe impact
    #
    #   * `4` - High impact
    #
    #   * `3` - Medium impact
    #
    #   * `2` - Low impact
    #
    #   * `1` - No impact
    #
    # @option params [Array<Types::NotificationTargetItem>] :incident_template_notification_targets
    #   The Amazon SNS targets that are notified when updates are made to an
    #   incident.
    #
    # @option params [String] :incident_template_summary
    #   A brief summary of the incident. This typically contains what has
    #   happened, what's currently happening, and next steps.
    #
    # @option params [Hash<String,String>] :incident_template_tags
    #   Tags to assign to the template. When the `StartIncident` API action is
    #   called, Incident Manager assigns the tags specified in the template to
    #   the incident. To call this action, you must also have permission to
    #   call the `TagResource` API action for the incident record resource.
    #
    # @option params [String] :incident_template_title
    #   The short format name of the incident. The title can't contain
    #   spaces.
    #
    # @option params [Array<Types::Integration>] :integrations
    #   Information about third-party services integrated into the response
    #   plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_response_plan({
    #     actions: [
    #       {
    #         ssm_automation: {
    #           document_name: "SsmAutomationDocumentNameString", # required
    #           document_version: "SsmAutomationDocumentVersionString",
    #           dynamic_parameters: {
    #             "DynamicSsmParametersKeyString" => {
    #               variable: "INCIDENT_RECORD_ARN", # accepts INCIDENT_RECORD_ARN, INVOLVED_RESOURCES
    #             },
    #           },
    #           parameters: {
    #             "SsmParametersKeyString" => ["SsmParameterValuesMemberString"],
    #           },
    #           role_arn: "RoleArn", # required
    #           target_account: "RESPONSE_PLAN_OWNER_ACCOUNT", # accepts RESPONSE_PLAN_OWNER_ACCOUNT, IMPACTED_ACCOUNT
    #         },
    #       },
    #     ],
    #     arn: "Arn", # required
    #     chat_channel: {
    #       chatbot_sns: ["SnsArn"],
    #       empty: {
    #       },
    #     },
    #     client_token: "ClientToken",
    #     display_name: "ResponsePlanDisplayName",
    #     engagements: ["SsmContactsArn"],
    #     incident_template_dedupe_string: "DedupeString",
    #     incident_template_impact: 1,
    #     incident_template_notification_targets: [
    #       {
    #         sns_topic_arn: "Arn",
    #       },
    #     ],
    #     incident_template_summary: "IncidentSummary",
    #     incident_template_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     incident_template_title: "IncidentTitle",
    #     integrations: [
    #       {
    #         pager_duty_configuration: {
    #           name: "PagerDutyConfigurationNameString", # required
    #           pager_duty_incident_configuration: { # required
    #             service_id: "PagerDutyIncidentConfigurationServiceIdString", # required
    #           },
    #           secret_id: "PagerDutyConfigurationSecretIdString", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateResponsePlan AWS API Documentation
    #
    # @overload update_response_plan(params = {})
    # @param [Hash] params ({})
    def update_response_plan(params = {}, options = {})
      req = build_request(:update_response_plan, params)
      req.send_request(options)
    end

    # Updates a timeline event. You can update events of type `Custom
    # Event`.
    #
    # @option params [String] :client_token
    #   A token that ensures that a client calls the operation only once with
    #   the specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :event_data
    #   A short description of the event.
    #
    # @option params [required, String] :event_id
    #   The ID of the event to update. You can use `ListTimelineEvents` to
    #   find an event's ID.
    #
    # @option params [Array<Types::EventReference>] :event_references
    #   Updates all existing references in a `TimelineEvent`. A reference is
    #   an Amazon Web Services resource involved or associated with the
    #   incident. To specify a reference, enter its Amazon Resource Name
    #   (ARN). You can also specify a related item associated with that
    #   resource. For example, to specify an Amazon DynamoDB (DynamoDB) table
    #   as a resource, use its ARN. You can also specify an Amazon CloudWatch
    #   metric associated with the DynamoDB table as a related item.
    #
    #   This update action overrides all existing references. If you want to
    #   keep existing references, you must specify them in the call. If you
    #   don't, this action removes any existing references and enters only
    #   new references.
    #
    # @option params [Time,DateTime,Date,Integer,String] :event_time
    #   The time that the event occurred.
    #
    # @option params [String] :event_type
    #   The type of event. You can update events of type `Custom Event`.
    #
    # @option params [required, String] :incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that includes the
    #   timeline event.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_timeline_event({
    #     client_token: "ClientToken",
    #     event_data: "EventData",
    #     event_id: "UUID", # required
    #     event_references: [
    #       {
    #         related_item_id: "GeneratedId",
    #         resource: "Arn",
    #       },
    #     ],
    #     event_time: Time.now,
    #     event_type: "TimelineEventType",
    #     incident_record_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateTimelineEvent AWS API Documentation
    #
    # @overload update_timeline_event(params = {})
    # @param [Hash] params ({})
    def update_timeline_event(params = {}, options = {})
      req = build_request(:update_timeline_event, params)
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
      context[:gem_name] = 'aws-sdk-ssmincidents'
      context[:gem_version] = '1.27.0'
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
    # | waiter_name                      | params                       | :delay   | :max_attempts |
    # | -------------------------------- | ---------------------------- | -------- | ------------- |
    # | wait_for_replication_set_active  | {Client#get_replication_set} | 30       | 5             |
    # | wait_for_replication_set_deleted | {Client#get_replication_set} | 30       | 5             |
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
        wait_for_replication_set_active: Waiters::WaitForReplicationSetActive,
        wait_for_replication_set_deleted: Waiters::WaitForReplicationSetDeleted
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
