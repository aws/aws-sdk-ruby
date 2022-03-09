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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudtrail)

module Aws::CloudTrail
  # An API client for CloudTrail.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudTrail::Client.new(
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

    @identifier = :cloudtrail

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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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

    # Adds one or more tags to a trail, up to a limit of 50. Overwrites an
    # existing tag's value when a new value is specified for an existing
    # tag key. Tag key names must be unique for a trail; you cannot have two
    # keys with the same name but different values. If you specify a key
    # without a value, the tag will be created with the specified key and a
    # value of null. You can tag a trail that applies to all Amazon Web
    # Services Regions only from the Region in which the trail was created
    # (also known as its home region).
    #
    # @option params [required, String] :resource_id
    #   Specifies the ARN of the trail to which one or more tags will be
    #   added. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @option params [required, Array<Types::Tag>] :tags_list
    #   Contains a list of tags, up to a limit of 50
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     resource_id: "String", # required
    #     tags_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Cancels a query if the query is not in a terminated state, such as
    # `CANCELLED`, `FAILED`, `TIMED_OUT`, or `FINISHED`. You must specify an
    # ARN value for `EventDataStore`. The ID of the query that you want to
    # cancel is also required. When you run `CancelQuery`, the query status
    # might show as `CANCELLED` even if the operation is not yet finished.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of an event data store on which
    #   the specified query is running.
    #
    # @option params [required, String] :query_id
    #   The ID of the query that you want to cancel. The `QueryId` comes from
    #   the response of a `StartQuery` operation.
    #
    # @return [Types::CancelQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelQueryResponse#query_id #query_id} => String
    #   * {Types::CancelQueryResponse#query_status #query_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_query({
    #     event_data_store: "EventDataStoreArn", # required
    #     query_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.query_status #=> String, one of "QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CancelQuery AWS API Documentation
    #
    # @overload cancel_query(params = {})
    # @param [Hash] params ({})
    def cancel_query(params = {}, options = {})
      req = build_request(:cancel_query, params)
      req.send_request(options)
    end

    # Creates a new event data store.
    #
    # @option params [required, String] :name
    #   The name of the event data store.
    #
    # @option params [Array<Types::AdvancedEventSelector>] :advanced_event_selectors
    #   The advanced event selectors to use to select the events for the data
    #   store. For more information about how to use advanced event selectors,
    #   see [Log events by using advanced event selectors][1] in the
    #   CloudTrail User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced
    #
    # @option params [Boolean] :multi_region_enabled
    #   Specifies whether the event data store includes events from all
    #   regions, or only from the region in which the event data store is
    #   created.
    #
    # @option params [Boolean] :organization_enabled
    #   Specifies whether an event data store collects events logged for an
    #   organization in Organizations.
    #
    # @option params [Integer] :retention_period
    #   The retention period of the event data store, in days. You can set a
    #   retention period of up to 2555 days, the equivalent of seven years.
    #
    # @option params [Boolean] :termination_protection_enabled
    #   Specifies whether termination protection is enabled for the event data
    #   store. If termination protection is enabled, you cannot delete the
    #   event data store until termination protection is disabled.
    #
    # @option params [Array<Types::Tag>] :tags_list
    #   A list of tags.
    #
    # @return [Types::CreateEventDataStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventDataStoreResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::CreateEventDataStoreResponse#name #name} => String
    #   * {Types::CreateEventDataStoreResponse#status #status} => String
    #   * {Types::CreateEventDataStoreResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #   * {Types::CreateEventDataStoreResponse#multi_region_enabled #multi_region_enabled} => Boolean
    #   * {Types::CreateEventDataStoreResponse#organization_enabled #organization_enabled} => Boolean
    #   * {Types::CreateEventDataStoreResponse#retention_period #retention_period} => Integer
    #   * {Types::CreateEventDataStoreResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #   * {Types::CreateEventDataStoreResponse#tags_list #tags_list} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateEventDataStoreResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateEventDataStoreResponse#updated_timestamp #updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_data_store({
    #     name: "EventDataStoreName", # required
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"],
    #           },
    #         ],
    #       },
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION"
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.multi_region_enabled #=> Boolean
    #   resp.organization_enabled #=> Boolean
    #   resp.retention_period #=> Integer
    #   resp.termination_protection_enabled #=> Boolean
    #   resp.tags_list #=> Array
    #   resp.tags_list[0].key #=> String
    #   resp.tags_list[0].value #=> String
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateEventDataStore AWS API Documentation
    #
    # @overload create_event_data_store(params = {})
    # @param [Hash] params ({})
    def create_event_data_store(params = {}, options = {})
      req = build_request(:create_event_data_store, params)
      req.send_request(options)
    end

    # Creates a trail that specifies the settings for delivery of log data
    # to an Amazon S3 bucket.
    #
    # @option params [required, String] :name
    #   Specifies the name of the trail. The name must meet the following
    #   requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    # @option params [required, String] :s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #
    # @option params [String] :s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #
    # @option params [String] :sns_topic_name
    #   Specifies the name of the Amazon SNS topic defined for notification of
    #   log file delivery. The maximum length is 256 characters.
    #
    # @option params [Boolean] :include_global_service_events
    #   Specifies whether the trail is publishing events from global services
    #   such as IAM to the log files.
    #
    # @option params [Boolean] :is_multi_region_trail
    #   Specifies whether the trail is created in the current region or in all
    #   regions. The default is false, which creates a trail only in the
    #   region where you are signed in. As a best practice, consider creating
    #   trails that log events in all regions.
    #
    # @option params [Boolean] :enable_log_file_validation
    #   Specifies whether log file integrity validation is enabled. The
    #   default is false.
    #
    #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
    #   files is broken after one hour. CloudTrail does not create digest
    #   files for log files that were delivered during a period in which log
    #   file integrity validation was disabled. For example, if you enable log
    #   file integrity validation at noon on January 1, disable it at noon on
    #   January 2, and re-enable it at noon on January 10, digest files will
    #   not be created for the log files delivered from noon on January 2 to
    #   noon on January 10. The same applies whenever you stop CloudTrail
    #   logging or delete a trail.
    #
    #    </note>
    #
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs will be delivered. Not required unless you specify
    #   `CloudWatchLogsRoleArn`.
    #
    # @option params [String] :cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to write
    #   to a user's log group.
    #
    # @option params [String] :kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs delivered by
    #   CloudTrail. The value can be an alias name prefixed by "alias/", a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or a
    #   globally unique identifier.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012
    #
    #   * 12345678-1234-1234-1234-123456789012
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #
    # @option params [Boolean] :is_organization_trail
    #   Specifies whether the trail is created for all accounts in an
    #   organization in Organizations, or only for the current Amazon Web
    #   Services account. The default is false, and cannot be true unless the
    #   call is made on behalf of an Amazon Web Services account that is the
    #   management account for an organization in Organizations.
    #
    # @option params [Array<Types::Tag>] :tags_list
    #   A list of tags.
    #
    # @return [Types::CreateTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrailResponse#name #name} => String
    #   * {Types::CreateTrailResponse#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::CreateTrailResponse#s3_key_prefix #s3_key_prefix} => String
    #   * {Types::CreateTrailResponse#sns_topic_name #sns_topic_name} => String
    #   * {Types::CreateTrailResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::CreateTrailResponse#include_global_service_events #include_global_service_events} => Boolean
    #   * {Types::CreateTrailResponse#is_multi_region_trail #is_multi_region_trail} => Boolean
    #   * {Types::CreateTrailResponse#trail_arn #trail_arn} => String
    #   * {Types::CreateTrailResponse#log_file_validation_enabled #log_file_validation_enabled} => Boolean
    #   * {Types::CreateTrailResponse#cloud_watch_logs_log_group_arn #cloud_watch_logs_log_group_arn} => String
    #   * {Types::CreateTrailResponse#cloud_watch_logs_role_arn #cloud_watch_logs_role_arn} => String
    #   * {Types::CreateTrailResponse#kms_key_id #kms_key_id} => String
    #   * {Types::CreateTrailResponse#is_organization_trail #is_organization_trail} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trail({
    #     name: "String", # required
    #     s3_bucket_name: "String", # required
    #     s3_key_prefix: "String",
    #     sns_topic_name: "String",
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     enable_log_file_validation: false,
    #     cloud_watch_logs_log_group_arn: "String",
    #     cloud_watch_logs_role_arn: "String",
    #     kms_key_id: "String",
    #     is_organization_trail: false,
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.s3_bucket_name #=> String
    #   resp.s3_key_prefix #=> String
    #   resp.sns_topic_name #=> String
    #   resp.sns_topic_arn #=> String
    #   resp.include_global_service_events #=> Boolean
    #   resp.is_multi_region_trail #=> Boolean
    #   resp.trail_arn #=> String
    #   resp.log_file_validation_enabled #=> Boolean
    #   resp.cloud_watch_logs_log_group_arn #=> String
    #   resp.cloud_watch_logs_role_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.is_organization_trail #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateTrail AWS API Documentation
    #
    # @overload create_trail(params = {})
    # @param [Hash] params ({})
    def create_trail(params = {}, options = {})
      req = build_request(:create_trail, params)
      req.send_request(options)
    end

    # Disables the event data store specified by `EventDataStore`, which
    # accepts an event data store ARN. After you run `DeleteEventDataStore`,
    # the event data store enters a `PENDING_DELETION` state, and is
    # automatically deleted after a wait period of seven days.
    # `TerminationProtectionEnabled` must be set to `False` on the event
    # data store; this operation cannot work if
    # `TerminationProtectionEnabled` is `True`.
    #
    # After you run `DeleteEventDataStore` on an event data store, you
    # cannot run `ListQueries`, `DescribeQuery`, or `GetQueryResults` on
    # queries that are using an event data store in a `PENDING_DELETION`
    # state. An event data store in the `PENDING_DELETION` state does not
    # incur costs.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of the event data store to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_data_store({
    #     event_data_store: "EventDataStoreArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteEventDataStore AWS API Documentation
    #
    # @overload delete_event_data_store(params = {})
    # @param [Hash] params ({})
    def delete_event_data_store(params = {}, options = {})
      req = build_request(:delete_event_data_store, params)
      req.send_request(options)
    end

    # Deletes a trail. This operation must be called from the region in
    # which the trail was created. `DeleteTrail` cannot be called on the
    # shadow trails (replicated trails in other regions) of a trail that is
    # enabled in all regions.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail to be deleted.
    #   The following is the format of a trail ARN.
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trail({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteTrail AWS API Documentation
    #
    # @overload delete_trail(params = {})
    # @param [Hash] params ({})
    def delete_trail(params = {}, options = {})
      req = build_request(:delete_trail, params)
      req.send_request(options)
    end

    # Returns metadata about a query, including query run time in
    # milliseconds, number of events scanned and matched, and query status.
    # You must specify an ARN for `EventDataStore`, and a value for
    # `QueryID`.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of an event data store on which
    #   the specified query was run.
    #
    # @option params [required, String] :query_id
    #   The query ID.
    #
    # @return [Types::DescribeQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQueryResponse#query_id #query_id} => String
    #   * {Types::DescribeQueryResponse#query_string #query_string} => String
    #   * {Types::DescribeQueryResponse#query_status #query_status} => String
    #   * {Types::DescribeQueryResponse#query_statistics #query_statistics} => Types::QueryStatisticsForDescribeQuery
    #   * {Types::DescribeQueryResponse#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query({
    #     event_data_store: "EventDataStoreArn", # required
    #     query_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.query_string #=> String
    #   resp.query_status #=> String, one of "QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.query_statistics.events_matched #=> Integer
    #   resp.query_statistics.events_scanned #=> Integer
    #   resp.query_statistics.bytes_scanned #=> Integer
    #   resp.query_statistics.execution_time_in_millis #=> Integer
    #   resp.query_statistics.creation_time #=> Time
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeQuery AWS API Documentation
    #
    # @overload describe_query(params = {})
    # @param [Hash] params ({})
    def describe_query(params = {}, options = {})
      req = build_request(:describe_query, params)
      req.send_request(options)
    end

    # Retrieves settings for one or more trails associated with the current
    # region for your account.
    #
    # @option params [Array<String>] :trail_name_list
    #   Specifies a list of trail names, trail ARNs, or both, of the trails to
    #   describe. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   If an empty list is specified, information for the trail in the
    #   current region is returned.
    #
    #   * If an empty list is specified and `IncludeShadowTrails` is false,
    #     then information for all trails in the current region is returned.
    #
    #   * If an empty list is specified and IncludeShadowTrails is null or
    #     true, then information for all trails in the current region and any
    #     associated shadow trails in other regions is returned.
    #
    #   <note markdown="1"> If one or more trail names are specified, information is returned only
    #   if the names match the names of trails belonging only to the current
    #   region. To return information about a trail in another region, you
    #   must specify its trail ARN.
    #
    #    </note>
    #
    # @option params [Boolean] :include_shadow_trails
    #   Specifies whether to include shadow trails in the response. A shadow
    #   trail is the replication in a region of a trail that was created in a
    #   different region, or in the case of an organization trail, the
    #   replication of an organization trail in member accounts. If you do not
    #   include shadow trails, organization trails in a member account and
    #   region replication trails will not be returned. The default is true.
    #
    # @return [Types::DescribeTrailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrailsResponse#trail_list #trail_list} => Array&lt;Types::Trail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trails({
    #     trail_name_list: ["String"],
    #     include_shadow_trails: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_list #=> Array
    #   resp.trail_list[0].name #=> String
    #   resp.trail_list[0].s3_bucket_name #=> String
    #   resp.trail_list[0].s3_key_prefix #=> String
    #   resp.trail_list[0].sns_topic_name #=> String
    #   resp.trail_list[0].sns_topic_arn #=> String
    #   resp.trail_list[0].include_global_service_events #=> Boolean
    #   resp.trail_list[0].is_multi_region_trail #=> Boolean
    #   resp.trail_list[0].home_region #=> String
    #   resp.trail_list[0].trail_arn #=> String
    #   resp.trail_list[0].log_file_validation_enabled #=> Boolean
    #   resp.trail_list[0].cloud_watch_logs_log_group_arn #=> String
    #   resp.trail_list[0].cloud_watch_logs_role_arn #=> String
    #   resp.trail_list[0].kms_key_id #=> String
    #   resp.trail_list[0].has_custom_event_selectors #=> Boolean
    #   resp.trail_list[0].has_insight_selectors #=> Boolean
    #   resp.trail_list[0].is_organization_trail #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeTrails AWS API Documentation
    #
    # @overload describe_trails(params = {})
    # @param [Hash] params ({})
    def describe_trails(params = {}, options = {})
      req = build_request(:describe_trails, params)
      req.send_request(options)
    end

    # Returns information about an event data store specified as either an
    # ARN or the ID portion of the ARN.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store about which
    #   you want information.
    #
    # @return [Types::GetEventDataStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventDataStoreResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::GetEventDataStoreResponse#name #name} => String
    #   * {Types::GetEventDataStoreResponse#status #status} => String
    #   * {Types::GetEventDataStoreResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #   * {Types::GetEventDataStoreResponse#multi_region_enabled #multi_region_enabled} => Boolean
    #   * {Types::GetEventDataStoreResponse#organization_enabled #organization_enabled} => Boolean
    #   * {Types::GetEventDataStoreResponse#retention_period #retention_period} => Integer
    #   * {Types::GetEventDataStoreResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #   * {Types::GetEventDataStoreResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetEventDataStoreResponse#updated_timestamp #updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_data_store({
    #     event_data_store: "EventDataStoreArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION"
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.multi_region_enabled #=> Boolean
    #   resp.organization_enabled #=> Boolean
    #   resp.retention_period #=> Integer
    #   resp.termination_protection_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventDataStore AWS API Documentation
    #
    # @overload get_event_data_store(params = {})
    # @param [Hash] params ({})
    def get_event_data_store(params = {}, options = {})
      req = build_request(:get_event_data_store, params)
      req.send_request(options)
    end

    # Describes the settings for the event selectors that you configured for
    # your trail. The information returned for your event selectors includes
    # the following:
    #
    # * If your event selector includes read-only events, write-only events,
    #   or all events. This applies to both management events and data
    #   events.
    #
    # * If your event selector includes management events.
    #
    # * If your event selector includes data events, the resources on which
    #   you are logging data events.
    #
    # For more information, see [Logging Data and Management Events for
    # Trails ][1] in the *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html
    #
    # @option params [required, String] :trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Types::GetEventSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::GetEventSelectorsResponse#event_selectors #event_selectors} => Array&lt;Types::EventSelector&gt;
    #   * {Types::GetEventSelectorsResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_selectors({
    #     trail_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.event_selectors #=> Array
    #   resp.event_selectors[0].read_write_type #=> String, one of "ReadOnly", "WriteOnly", "All"
    #   resp.event_selectors[0].include_management_events #=> Boolean
    #   resp.event_selectors[0].data_resources #=> Array
    #   resp.event_selectors[0].data_resources[0].type #=> String
    #   resp.event_selectors[0].data_resources[0].values #=> Array
    #   resp.event_selectors[0].data_resources[0].values[0] #=> String
    #   resp.event_selectors[0].exclude_management_event_sources #=> Array
    #   resp.event_selectors[0].exclude_management_event_sources[0] #=> String
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventSelectors AWS API Documentation
    #
    # @overload get_event_selectors(params = {})
    # @param [Hash] params ({})
    def get_event_selectors(params = {}, options = {})
      req = build_request(:get_event_selectors, params)
      req.send_request(options)
    end

    # Describes the settings for the Insights event selectors that you
    # configured for your trail. `GetInsightSelectors` shows if CloudTrail
    # Insights event logging is enabled on the trail, and if it is, which
    # insight types are enabled. If you run `GetInsightSelectors` on a trail
    # that does not have Insights events enabled, the operation throws the
    # exception `InsightNotEnabledException`
    #
    # For more information, see [Logging CloudTrail Insights Events for
    # Trails ][1] in the *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html
    #
    # @option params [required, String] :trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Types::GetInsightSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::GetInsightSelectorsResponse#insight_selectors #insight_selectors} => Array&lt;Types::InsightSelector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_selectors({
    #     trail_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.insight_selectors #=> Array
    #   resp.insight_selectors[0].insight_type #=> String, one of "ApiCallRateInsight", "ApiErrorRateInsight"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetInsightSelectors AWS API Documentation
    #
    # @overload get_insight_selectors(params = {})
    # @param [Hash] params ({})
    def get_insight_selectors(params = {}, options = {})
      req = build_request(:get_insight_selectors, params)
      req.send_request(options)
    end

    # Gets event data results of a query. You must specify the `QueryID`
    # value returned by the `StartQuery` operation, and an ARN for
    # `EventDataStore`.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store against
    #   which the query was run.
    #
    # @option params [required, String] :query_id
    #   The ID of the query for which you want to get results.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of query results.
    #
    # @option params [Integer] :max_query_results
    #   The maximum number of query results to display on a single page.
    #
    # @return [Types::GetQueryResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsResponse#query_status #query_status} => String
    #   * {Types::GetQueryResultsResponse#query_statistics #query_statistics} => Types::QueryStatistics
    #   * {Types::GetQueryResultsResponse#query_result_rows #query_result_rows} => Array&lt;Array&lt;Hash&lt;String,String&gt;&gt;&gt;
    #   * {Types::GetQueryResultsResponse#next_token #next_token} => String
    #   * {Types::GetQueryResultsResponse#error_message #error_message} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results({
    #     event_data_store: "EventDataStoreArn", # required
    #     query_id: "UUID", # required
    #     next_token: "PaginationToken",
    #     max_query_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.query_status #=> String, one of "QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.query_statistics.results_count #=> Integer
    #   resp.query_statistics.total_results_count #=> Integer
    #   resp.query_statistics.bytes_scanned #=> Integer
    #   resp.query_result_rows #=> Array
    #   resp.query_result_rows[0] #=> Array
    #   resp.query_result_rows[0][0] #=> Hash
    #   resp.query_result_rows[0][0]["QueryResultKey"] #=> String
    #   resp.next_token #=> String
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetQueryResults AWS API Documentation
    #
    # @overload get_query_results(params = {})
    # @param [Hash] params ({})
    def get_query_results(params = {}, options = {})
      req = build_request(:get_query_results, params)
      req.send_request(options)
    end

    # Returns settings information for a specified trail.
    #
    # @option params [required, String] :name
    #   The name or the Amazon Resource Name (ARN) of the trail for which you
    #   want to retrieve settings information.
    #
    # @return [Types::GetTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrailResponse#trail #trail} => Types::Trail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trail({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trail.name #=> String
    #   resp.trail.s3_bucket_name #=> String
    #   resp.trail.s3_key_prefix #=> String
    #   resp.trail.sns_topic_name #=> String
    #   resp.trail.sns_topic_arn #=> String
    #   resp.trail.include_global_service_events #=> Boolean
    #   resp.trail.is_multi_region_trail #=> Boolean
    #   resp.trail.home_region #=> String
    #   resp.trail.trail_arn #=> String
    #   resp.trail.log_file_validation_enabled #=> Boolean
    #   resp.trail.cloud_watch_logs_log_group_arn #=> String
    #   resp.trail.cloud_watch_logs_role_arn #=> String
    #   resp.trail.kms_key_id #=> String
    #   resp.trail.has_custom_event_selectors #=> Boolean
    #   resp.trail.has_insight_selectors #=> Boolean
    #   resp.trail.is_organization_trail #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrail AWS API Documentation
    #
    # @overload get_trail(params = {})
    # @param [Hash] params ({})
    def get_trail(params = {}, options = {})
      req = build_request(:get_trail, params)
      req.send_request(options)
    end

    # Returns a JSON-formatted list of information about the specified
    # trail. Fields include information on delivery errors, Amazon SNS and
    # Amazon S3 errors, and start and stop logging times for each trail.
    # This operation returns trail status from a single region. To return
    # trail status from all regions, you must call the operation on each
    # region.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail for which you
    #   are requesting status. To get the status of a shadow trail (a
    #   replication of the trail in another region), you must specify its ARN.
    #   The following is the format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Types::GetTrailStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrailStatusResponse#is_logging #is_logging} => Boolean
    #   * {Types::GetTrailStatusResponse#latest_delivery_error #latest_delivery_error} => String
    #   * {Types::GetTrailStatusResponse#latest_notification_error #latest_notification_error} => String
    #   * {Types::GetTrailStatusResponse#latest_delivery_time #latest_delivery_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_notification_time #latest_notification_time} => Time
    #   * {Types::GetTrailStatusResponse#start_logging_time #start_logging_time} => Time
    #   * {Types::GetTrailStatusResponse#stop_logging_time #stop_logging_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_cloud_watch_logs_delivery_error #latest_cloud_watch_logs_delivery_error} => String
    #   * {Types::GetTrailStatusResponse#latest_cloud_watch_logs_delivery_time #latest_cloud_watch_logs_delivery_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_digest_delivery_time #latest_digest_delivery_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_digest_delivery_error #latest_digest_delivery_error} => String
    #   * {Types::GetTrailStatusResponse#latest_delivery_attempt_time #latest_delivery_attempt_time} => String
    #   * {Types::GetTrailStatusResponse#latest_notification_attempt_time #latest_notification_attempt_time} => String
    #   * {Types::GetTrailStatusResponse#latest_notification_attempt_succeeded #latest_notification_attempt_succeeded} => String
    #   * {Types::GetTrailStatusResponse#latest_delivery_attempt_succeeded #latest_delivery_attempt_succeeded} => String
    #   * {Types::GetTrailStatusResponse#time_logging_started #time_logging_started} => String
    #   * {Types::GetTrailStatusResponse#time_logging_stopped #time_logging_stopped} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trail_status({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.is_logging #=> Boolean
    #   resp.latest_delivery_error #=> String
    #   resp.latest_notification_error #=> String
    #   resp.latest_delivery_time #=> Time
    #   resp.latest_notification_time #=> Time
    #   resp.start_logging_time #=> Time
    #   resp.stop_logging_time #=> Time
    #   resp.latest_cloud_watch_logs_delivery_error #=> String
    #   resp.latest_cloud_watch_logs_delivery_time #=> Time
    #   resp.latest_digest_delivery_time #=> Time
    #   resp.latest_digest_delivery_error #=> String
    #   resp.latest_delivery_attempt_time #=> String
    #   resp.latest_notification_attempt_time #=> String
    #   resp.latest_notification_attempt_succeeded #=> String
    #   resp.latest_delivery_attempt_succeeded #=> String
    #   resp.time_logging_started #=> String
    #   resp.time_logging_stopped #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailStatus AWS API Documentation
    #
    # @overload get_trail_status(params = {})
    # @param [Hash] params ({})
    def get_trail_status(params = {}, options = {})
      req = build_request(:get_trail_status, params)
      req.send_request(options)
    end

    # Returns information about all event data stores in the account, in the
    # current region.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of event data store results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of event data stores to display on a single page.
    #
    # @return [Types::ListEventDataStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventDataStoresResponse#event_data_stores #event_data_stores} => Array&lt;Types::EventDataStore&gt;
    #   * {Types::ListEventDataStoresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_data_stores({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_stores #=> Array
    #   resp.event_data_stores[0].event_data_store_arn #=> String
    #   resp.event_data_stores[0].name #=> String
    #   resp.event_data_stores[0].termination_protection_enabled #=> Boolean
    #   resp.event_data_stores[0].status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION"
    #   resp.event_data_stores[0].advanced_event_selectors #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].name #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.event_data_stores[0].multi_region_enabled #=> Boolean
    #   resp.event_data_stores[0].organization_enabled #=> Boolean
    #   resp.event_data_stores[0].retention_period #=> Integer
    #   resp.event_data_stores[0].created_timestamp #=> Time
    #   resp.event_data_stores[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListEventDataStores AWS API Documentation
    #
    # @overload list_event_data_stores(params = {})
    # @param [Hash] params ({})
    def list_event_data_stores(params = {}, options = {})
      req = build_request(:list_event_data_stores, params)
      req.send_request(options)
    end

    # Returns all public keys whose private keys were used to sign the
    # digest files within the specified time range. The public key is needed
    # to validate digest files that were signed with its corresponding
    # private key.
    #
    # <note markdown="1"> CloudTrail uses different private and public key pairs per region.
    # Each digest file is signed with a private key unique to its region.
    # When you validate a digest file from a specific region, you must look
    # in the same region for its corresponding public key.
    #
    #  </note>
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Optionally specifies, in UTC, the start of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the current
    #   time is used, and the current public key is returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Optionally specifies, in UTC, the end of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the current
    #   time is used.
    #
    # @option params [String] :next_token
    #   Reserved for future use.
    #
    # @return [Types::ListPublicKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPublicKeysResponse#public_key_list #public_key_list} => Array&lt;Types::PublicKey&gt;
    #   * {Types::ListPublicKeysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_public_keys({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key_list #=> Array
    #   resp.public_key_list[0].value #=> String
    #   resp.public_key_list[0].validity_start_time #=> Time
    #   resp.public_key_list[0].validity_end_time #=> Time
    #   resp.public_key_list[0].fingerprint #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListPublicKeys AWS API Documentation
    #
    # @overload list_public_keys(params = {})
    # @param [Hash] params ({})
    def list_public_keys(params = {}, options = {})
      req = build_request(:list_public_keys, params)
      req.send_request(options)
    end

    # Returns a list of queries and query statuses for the past seven days.
    # You must specify an ARN value for `EventDataStore`. Optionally, to
    # shorten the list of results, you can specify a time range, formatted
    # as timestamps, by adding `StartTime` and `EndTime` parameters, and a
    # `QueryStatus` value. Valid values for `QueryStatus` include `QUEUED`,
    # `RUNNING`, `FINISHED`, `FAILED`, `TIMED_OUT`, or `CANCELLED`.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of an event data store on which
    #   queries were run.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of queries to show on a page.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Use with `EndTime` to bound a `ListQueries` request, and limit its
    #   results to only those queries run within a specified time period.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Use with `StartTime` to bound a `ListQueries` request, and limit its
    #   results to only those queries run within a specified time period.
    #
    # @option params [String] :query_status
    #   The status of queries that you want to return in results. Valid values
    #   for `QueryStatus` include `QUEUED`, `RUNNING`, `FINISHED`, `FAILED`,
    #   `TIMED_OUT`, or `CANCELLED`.
    #
    # @return [Types::ListQueriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueriesResponse#queries #queries} => Array&lt;Types::Query&gt;
    #   * {Types::ListQueriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queries({
    #     event_data_store: "EventDataStoreArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     query_status: "QUEUED", # accepts QUEUED, RUNNING, FINISHED, FAILED, CANCELLED, TIMED_OUT
    #   })
    #
    # @example Response structure
    #
    #   resp.queries #=> Array
    #   resp.queries[0].query_id #=> String
    #   resp.queries[0].query_status #=> String, one of "QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.queries[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListQueries AWS API Documentation
    #
    # @overload list_queries(params = {})
    # @param [Hash] params ({})
    def list_queries(params = {}, options = {})
      req = build_request(:list_queries, params)
      req.send_request(options)
    end

    # Lists the tags for the trail in the current region.
    #
    # @option params [required, Array<String>] :resource_id_list
    #   Specifies a list of trail ARNs whose tags will be listed. The list has
    #   a limit of 20 ARNs. The following is the format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @option params [String] :next_token
    #   Reserved for future use.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#resource_tag_list #resource_tag_list} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_id_list: ["String"], # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tag_list #=> Array
    #   resp.resource_tag_list[0].resource_id #=> String
    #   resp.resource_tag_list[0].tags_list #=> Array
    #   resp.resource_tag_list[0].tags_list[0].key #=> String
    #   resp.resource_tag_list[0].tags_list[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Lists trails that are in the current account.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call. This token must be passed in with the same parameters that were
    #   specified in the the original call. For example, if the original call
    #   specified an AttributeKey of 'Username' with a value of 'root',
    #   the call with NextToken should include those same parameters.
    #
    # @return [Types::ListTrailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrailsResponse#trails #trails} => Array&lt;Types::TrailInfo&gt;
    #   * {Types::ListTrailsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trails({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.trails #=> Array
    #   resp.trails[0].trail_arn #=> String
    #   resp.trails[0].name #=> String
    #   resp.trails[0].home_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTrails AWS API Documentation
    #
    # @overload list_trails(params = {})
    # @param [Hash] params ({})
    def list_trails(params = {}, options = {})
      req = build_request(:list_trails, params)
      req.send_request(options)
    end

    # Looks up [management events][1] or [CloudTrail Insights events][2]
    # that are captured by CloudTrail. You can look up events that occurred
    # in a region within the last 90 days. Lookup supports the following
    # attributes for management events:
    #
    # * Amazon Web Services access key
    #
    # * Event ID
    #
    # * Event name
    #
    # * Event source
    #
    # * Read only
    #
    # * Resource name
    #
    # * Resource type
    #
    # * User name
    #
    # Lookup supports the following attributes for Insights events:
    #
    # * Event ID
    #
    # * Event name
    #
    # * Event source
    #
    # All attributes are optional. The default number of results returned is
    # 50, with a maximum of 50 possible. The response includes a token that
    # you can use to get the next page of results.
    #
    # The rate of lookup requests is limited to two per second, per account,
    # per region. If this limit is exceeded, a throttling error occurs.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events
    #
    # @option params [Array<Types::LookupAttribute>] :lookup_attributes
    #   Contains a list of lookup attributes. Currently the list can contain
    #   only one item.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Specifies that only events that occur after or at the specified time
    #   are returned. If the specified start time is after the specified end
    #   time, an error is returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Specifies that only events that occur before or at the specified time
    #   are returned. If the specified end time is before the specified start
    #   time, an error is returned.
    #
    # @option params [String] :event_category
    #   Specifies the event category. If you do not specify an event category,
    #   events of the category are not returned in the response. For example,
    #   if you do not specify `insight` as the value of `EventCategory`, no
    #   Insights events are returned.
    #
    # @option params [Integer] :max_results
    #   The number of events to return. Possible values are 1 through 50. The
    #   default is 50.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call. This token must be passed in with the same parameters that were
    #   specified in the the original call. For example, if the original call
    #   specified an AttributeKey of 'Username' with a value of 'root',
    #   the call with NextToken should include those same parameters.
    #
    # @return [Types::LookupEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LookupEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::LookupEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.lookup_events({
    #     lookup_attributes: [
    #       {
    #         attribute_key: "EventId", # required, accepts EventId, EventName, ReadOnly, Username, ResourceType, ResourceName, EventSource, AccessKeyId
    #         attribute_value: "String", # required
    #       },
    #     ],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     event_category: "insight", # accepts insight
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].event_name #=> String
    #   resp.events[0].read_only #=> String
    #   resp.events[0].access_key_id #=> String
    #   resp.events[0].event_time #=> Time
    #   resp.events[0].event_source #=> String
    #   resp.events[0].username #=> String
    #   resp.events[0].resources #=> Array
    #   resp.events[0].resources[0].resource_type #=> String
    #   resp.events[0].resources[0].resource_name #=> String
    #   resp.events[0].cloud_trail_event #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupEvents AWS API Documentation
    #
    # @overload lookup_events(params = {})
    # @param [Hash] params ({})
    def lookup_events(params = {}, options = {})
      req = build_request(:lookup_events, params)
      req.send_request(options)
    end

    # Configures an event selector or advanced event selectors for your
    # trail. Use event selectors or advanced event selectors to specify
    # management and data event settings for your trail. By default, trails
    # created without specific event selectors are configured to log all
    # read and write management events, and no data events.
    #
    # When an event occurs in your account, CloudTrail evaluates the event
    # selectors or advanced event selectors in all trails. For each trail,
    # if the event matches any event selector, the trail processes and logs
    # the event. If the event doesn't match any event selector, the trail
    # doesn't log the event.
    #
    # Example
    #
    # 1.  You create an event selector for a trail and specify that you want
    #     write-only events.
    #
    # 2.  The EC2 `GetConsoleOutput` and `RunInstances` API operations occur
    #     in your account.
    #
    # 3.  CloudTrail evaluates whether the events match your event
    #     selectors.
    #
    # 4.  The `RunInstances` is a write-only event and it matches your event
    #     selector. The trail logs the event.
    #
    # 5.  The `GetConsoleOutput` is a read-only event that doesn't match
    #     your event selector. The trail doesn't log the event.
    #
    # The `PutEventSelectors` operation must be called from the region in
    # which the trail was created; otherwise, an
    # `InvalidHomeRegionException` exception is thrown.
    #
    # You can configure up to five event selectors for each trail. For more
    # information, see [Logging data and management events for trails ][1]
    # and [Quotas in CloudTrail][2] in the *CloudTrail User Guide*.
    #
    # You can add advanced event selectors, and conditions for your advanced
    # event selectors, up to a maximum of 500 values for all conditions and
    # selectors on a trail. You can use either `AdvancedEventSelectors` or
    # `EventSelectors`, but not both. If you apply `AdvancedEventSelectors`
    # to a trail, any existing `EventSelectors` are overwritten. For more
    # information about advanced event selectors, see [Logging data events
    # for trails][3] in the *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html
    # [3]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html
    #
    # @option params [required, String] :trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the following format.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @option params [Array<Types::EventSelector>] :event_selectors
    #   Specifies the settings for your event selectors. You can configure up
    #   to five event selectors for a trail. You can use either
    #   `EventSelectors` or `AdvancedEventSelectors` in a `PutEventSelectors`
    #   request, but not both. If you apply `EventSelectors` to a trail, any
    #   existing `AdvancedEventSelectors` are overwritten.
    #
    # @option params [Array<Types::AdvancedEventSelector>] :advanced_event_selectors
    #   Specifies the settings for advanced event selectors. You can add
    #   advanced event selectors, and conditions for your advanced event
    #   selectors, up to a maximum of 500 values for all conditions and
    #   selectors on a trail. You can use either `AdvancedEventSelectors` or
    #   `EventSelectors`, but not both. If you apply `AdvancedEventSelectors`
    #   to a trail, any existing `EventSelectors` are overwritten. For more
    #   information about advanced event selectors, see [Logging data events
    #   for trails][1] in the *CloudTrail User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html
    #
    # @return [Types::PutEventSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::PutEventSelectorsResponse#event_selectors #event_selectors} => Array&lt;Types::EventSelector&gt;
    #   * {Types::PutEventSelectorsResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_selectors({
    #     trail_name: "String", # required
    #     event_selectors: [
    #       {
    #         read_write_type: "ReadOnly", # accepts ReadOnly, WriteOnly, All
    #         include_management_events: false,
    #         data_resources: [
    #           {
    #             type: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         exclude_management_event_sources: ["String"],
    #       },
    #     ],
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"],
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.event_selectors #=> Array
    #   resp.event_selectors[0].read_write_type #=> String, one of "ReadOnly", "WriteOnly", "All"
    #   resp.event_selectors[0].include_management_events #=> Boolean
    #   resp.event_selectors[0].data_resources #=> Array
    #   resp.event_selectors[0].data_resources[0].type #=> String
    #   resp.event_selectors[0].data_resources[0].values #=> Array
    #   resp.event_selectors[0].data_resources[0].values[0] #=> String
    #   resp.event_selectors[0].exclude_management_event_sources #=> Array
    #   resp.event_selectors[0].exclude_management_event_sources[0] #=> String
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutEventSelectors AWS API Documentation
    #
    # @overload put_event_selectors(params = {})
    # @param [Hash] params ({})
    def put_event_selectors(params = {}, options = {})
      req = build_request(:put_event_selectors, params)
      req.send_request(options)
    end

    # Lets you enable Insights event logging by specifying the Insights
    # selectors that you want to enable on an existing trail. You also use
    # `PutInsightSelectors` to turn off Insights event logging, by passing
    # an empty list of insight types. The valid Insights event types in this
    # release are `ApiErrorRateInsight` and `ApiCallRateInsight`.
    #
    # @option params [required, String] :trail_name
    #   The name of the CloudTrail trail for which you want to change or add
    #   Insights selectors.
    #
    # @option params [required, Array<Types::InsightSelector>] :insight_selectors
    #   A JSON string that contains the insight types you want to log on a
    #   trail. `ApiCallRateInsight` and `ApiErrorRateInsight` are valid
    #   insight types.
    #
    # @return [Types::PutInsightSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutInsightSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::PutInsightSelectorsResponse#insight_selectors #insight_selectors} => Array&lt;Types::InsightSelector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_insight_selectors({
    #     trail_name: "String", # required
    #     insight_selectors: [ # required
    #       {
    #         insight_type: "ApiCallRateInsight", # accepts ApiCallRateInsight, ApiErrorRateInsight
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.insight_selectors #=> Array
    #   resp.insight_selectors[0].insight_type #=> String, one of "ApiCallRateInsight", "ApiErrorRateInsight"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutInsightSelectors AWS API Documentation
    #
    # @overload put_insight_selectors(params = {})
    # @param [Hash] params ({})
    def put_insight_selectors(params = {}, options = {})
      req = build_request(:put_insight_selectors, params)
      req.send_request(options)
    end

    # Removes the specified tags from a trail.
    #
    # @option params [required, String] :resource_id
    #   Specifies the ARN of the trail from which tags should be removed. The
    #   format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @option params [required, Array<Types::Tag>] :tags_list
    #   Specifies a list of tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     resource_id: "String", # required
    #     tags_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Restores a deleted event data store specified by `EventDataStore`,
    # which accepts an event data store ARN. You can only restore a deleted
    # event data store within the seven-day wait period after deletion.
    # Restoring an event data store can take several minutes, depending on
    # the size of the event data store.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of the event data store that you
    #   want to restore.
    #
    # @return [Types::RestoreEventDataStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreEventDataStoreResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::RestoreEventDataStoreResponse#name #name} => String
    #   * {Types::RestoreEventDataStoreResponse#status #status} => String
    #   * {Types::RestoreEventDataStoreResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #   * {Types::RestoreEventDataStoreResponse#multi_region_enabled #multi_region_enabled} => Boolean
    #   * {Types::RestoreEventDataStoreResponse#organization_enabled #organization_enabled} => Boolean
    #   * {Types::RestoreEventDataStoreResponse#retention_period #retention_period} => Integer
    #   * {Types::RestoreEventDataStoreResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #   * {Types::RestoreEventDataStoreResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::RestoreEventDataStoreResponse#updated_timestamp #updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_event_data_store({
    #     event_data_store: "EventDataStoreArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION"
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.multi_region_enabled #=> Boolean
    #   resp.organization_enabled #=> Boolean
    #   resp.retention_period #=> Integer
    #   resp.termination_protection_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RestoreEventDataStore AWS API Documentation
    #
    # @overload restore_event_data_store(params = {})
    # @param [Hash] params ({})
    def restore_event_data_store(params = {}, options = {})
      req = build_request(:restore_event_data_store, params)
      req.send_request(options)
    end

    # Starts the recording of Amazon Web Services API calls and log file
    # delivery for a trail. For a trail that is enabled in all regions, this
    # operation must be called from the region in which the trail was
    # created. This operation cannot be called on the shadow trails
    # (replicated trails in other regions) of a trail that is enabled in all
    # regions.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail logs Amazon Web Services API calls. The following is the
    #   format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_logging({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartLogging AWS API Documentation
    #
    # @overload start_logging(params = {})
    # @param [Hash] params ({})
    def start_logging(params = {}, options = {})
      req = build_request(:start_logging, params)
      req.send_request(options)
    end

    # Starts a CloudTrail Lake query. The required `QueryStatement`
    # parameter provides your SQL query, enclosed in single quotation marks.
    #
    # @option params [required, String] :query_statement
    #   The SQL code of your query.
    #
    # @return [Types::StartQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryResponse#query_id #query_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query({
    #     query_statement: "QueryStatement", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartQuery AWS API Documentation
    #
    # @overload start_query(params = {})
    # @param [Hash] params ({})
    def start_query(params = {}, options = {})
      req = build_request(:start_query, params)
      req.send_request(options)
    end

    # Suspends the recording of Amazon Web Services API calls and log file
    # delivery for the specified trail. Under most circumstances, there is
    # no need to use this action. You can update a trail without stopping it
    # first. This action is the only way to stop recording. For a trail
    # enabled in all regions, this operation must be called from the region
    # in which the trail was created, or an `InvalidHomeRegionException`
    # will occur. This operation cannot be called on the shadow trails
    # (replicated trails in other regions) of a trail enabled in all
    # regions.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail will stop logging Amazon Web Services API calls. The
    #   following is the format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_logging({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopLogging AWS API Documentation
    #
    # @overload stop_logging(params = {})
    # @param [Hash] params ({})
    def stop_logging(params = {}, options = {})
      req = build_request(:stop_logging, params)
      req.send_request(options)
    end

    # Updates an event data store. The required `EventDataStore` value is an
    # ARN or the ID portion of the ARN. Other parameters are optional, but
    # at least one optional parameter must be specified, or CloudTrail
    # throws an error. `RetentionPeriod` is in days, and valid values are
    # integers between 90 and 2555. By default, `TerminationProtection` is
    # enabled. `AdvancedEventSelectors` includes or excludes management and
    # data events in your event data store; for more information about
    # `AdvancedEventSelectors`, see
    # PutEventSelectorsRequest$AdvancedEventSelectors.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of the event data store that you
    #   want to update.
    #
    # @option params [String] :name
    #   The event data store name.
    #
    # @option params [Array<Types::AdvancedEventSelector>] :advanced_event_selectors
    #   The advanced event selectors used to select events for the event data
    #   store.
    #
    # @option params [Boolean] :multi_region_enabled
    #   Specifies whether an event data store collects events from all
    #   regions, or only from the region in which it was created.
    #
    # @option params [Boolean] :organization_enabled
    #   Specifies whether an event data store collects events logged for an
    #   organization in Organizations.
    #
    # @option params [Integer] :retention_period
    #   The retention period, in days.
    #
    # @option params [Boolean] :termination_protection_enabled
    #   Indicates that termination protection is enabled and the event data
    #   store cannot be automatically deleted.
    #
    # @return [Types::UpdateEventDataStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEventDataStoreResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::UpdateEventDataStoreResponse#name #name} => String
    #   * {Types::UpdateEventDataStoreResponse#status #status} => String
    #   * {Types::UpdateEventDataStoreResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #   * {Types::UpdateEventDataStoreResponse#multi_region_enabled #multi_region_enabled} => Boolean
    #   * {Types::UpdateEventDataStoreResponse#organization_enabled #organization_enabled} => Boolean
    #   * {Types::UpdateEventDataStoreResponse#retention_period #retention_period} => Integer
    #   * {Types::UpdateEventDataStoreResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #   * {Types::UpdateEventDataStoreResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::UpdateEventDataStoreResponse#updated_timestamp #updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_data_store({
    #     event_data_store: "EventDataStoreArn", # required
    #     name: "EventDataStoreName",
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"],
    #           },
    #         ],
    #       },
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION"
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.multi_region_enabled #=> Boolean
    #   resp.organization_enabled #=> Boolean
    #   resp.retention_period #=> Integer
    #   resp.termination_protection_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateEventDataStore AWS API Documentation
    #
    # @overload update_event_data_store(params = {})
    # @param [Hash] params ({})
    def update_event_data_store(params = {}, options = {})
      req = build_request(:update_event_data_store, params)
      req.send_request(options)
    end

    # Updates trail settings that control what events you are logging, and
    # how to handle log files. Changes to a trail do not require stopping
    # the CloudTrail service. Use this action to designate an existing
    # bucket for log delivery. If the existing bucket has previously been a
    # target for CloudTrail log files, an IAM policy exists for the bucket.
    # `UpdateTrail` must be called from the region in which the trail was
    # created; otherwise, an `InvalidHomeRegionException` is thrown.
    #
    # @option params [required, String] :name
    #   Specifies the name of the trail or trail ARN. If `Name` is a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If `Name` is a trail ARN, it must be in the following format.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @option params [String] :s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #
    # @option params [String] :s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #
    # @option params [String] :sns_topic_name
    #   Specifies the name of the Amazon SNS topic defined for notification of
    #   log file delivery. The maximum length is 256 characters.
    #
    # @option params [Boolean] :include_global_service_events
    #   Specifies whether the trail is publishing events from global services
    #   such as IAM to the log files.
    #
    # @option params [Boolean] :is_multi_region_trail
    #   Specifies whether the trail applies only to the current region or to
    #   all regions. The default is false. If the trail exists only in the
    #   current region and this value is set to true, shadow trails
    #   (replications of the trail) will be created in the other regions. If
    #   the trail exists in all regions and this value is set to false, the
    #   trail will remain in the region where it was created, and its shadow
    #   trails in other regions will be deleted. As a best practice, consider
    #   using trails that log events in all regions.
    #
    # @option params [Boolean] :enable_log_file_validation
    #   Specifies whether log file validation is enabled. The default is
    #   false.
    #
    #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
    #   files is broken after one hour. CloudTrail does not create digest
    #   files for log files that were delivered during a period in which log
    #   file integrity validation was disabled. For example, if you enable log
    #   file integrity validation at noon on January 1, disable it at noon on
    #   January 2, and re-enable it at noon on January 10, digest files will
    #   not be created for the log files delivered from noon on January 2 to
    #   noon on January 10. The same applies whenever you stop CloudTrail
    #   logging or delete a trail.
    #
    #    </note>
    #
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs are delivered. Not required unless you specify
    #   `CloudWatchLogsRoleArn`.
    #
    # @option params [String] :cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to write
    #   to a user's log group.
    #
    # @option params [String] :kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs delivered by
    #   CloudTrail. The value can be an alias name prefixed by "alias/", a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or a
    #   globally unique identifier.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012
    #
    #   * 12345678-1234-1234-1234-123456789012
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #
    # @option params [Boolean] :is_organization_trail
    #   Specifies whether the trail is applied to all accounts in an
    #   organization in Organizations, or only for the current Amazon Web
    #   Services account. The default is false, and cannot be true unless the
    #   call is made on behalf of an Amazon Web Services account that is the
    #   management account for an organization in Organizations. If the trail
    #   is not an organization trail and this is set to `true`, the trail will
    #   be created in all Amazon Web Services accounts that belong to the
    #   organization. If the trail is an organization trail and this is set to
    #   `false`, the trail will remain in the current Amazon Web Services
    #   account but be deleted from all member accounts in the organization.
    #
    # @return [Types::UpdateTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTrailResponse#name #name} => String
    #   * {Types::UpdateTrailResponse#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::UpdateTrailResponse#s3_key_prefix #s3_key_prefix} => String
    #   * {Types::UpdateTrailResponse#sns_topic_name #sns_topic_name} => String
    #   * {Types::UpdateTrailResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::UpdateTrailResponse#include_global_service_events #include_global_service_events} => Boolean
    #   * {Types::UpdateTrailResponse#is_multi_region_trail #is_multi_region_trail} => Boolean
    #   * {Types::UpdateTrailResponse#trail_arn #trail_arn} => String
    #   * {Types::UpdateTrailResponse#log_file_validation_enabled #log_file_validation_enabled} => Boolean
    #   * {Types::UpdateTrailResponse#cloud_watch_logs_log_group_arn #cloud_watch_logs_log_group_arn} => String
    #   * {Types::UpdateTrailResponse#cloud_watch_logs_role_arn #cloud_watch_logs_role_arn} => String
    #   * {Types::UpdateTrailResponse#kms_key_id #kms_key_id} => String
    #   * {Types::UpdateTrailResponse#is_organization_trail #is_organization_trail} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trail({
    #     name: "String", # required
    #     s3_bucket_name: "String",
    #     s3_key_prefix: "String",
    #     sns_topic_name: "String",
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     enable_log_file_validation: false,
    #     cloud_watch_logs_log_group_arn: "String",
    #     cloud_watch_logs_role_arn: "String",
    #     kms_key_id: "String",
    #     is_organization_trail: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.s3_bucket_name #=> String
    #   resp.s3_key_prefix #=> String
    #   resp.sns_topic_name #=> String
    #   resp.sns_topic_arn #=> String
    #   resp.include_global_service_events #=> Boolean
    #   resp.is_multi_region_trail #=> Boolean
    #   resp.trail_arn #=> String
    #   resp.log_file_validation_enabled #=> Boolean
    #   resp.cloud_watch_logs_log_group_arn #=> String
    #   resp.cloud_watch_logs_role_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.is_organization_trail #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateTrail AWS API Documentation
    #
    # @overload update_trail(params = {})
    # @param [Hash] params ({})
    def update_trail(params = {}, options = {})
      req = build_request(:update_trail, params)
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
      context[:gem_name] = 'aws-sdk-cloudtrail'
      context[:gem_version] = '1.48.0'
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
