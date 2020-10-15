# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:macie2)

module Aws::Macie2
  # An API client for Macie2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Macie2::Client.new(
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

    @identifier = :macie2

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
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
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Accepts an Amazon Macie membership invitation that was received from a
    # specific account.
    #
    # @option params [required, String] :invitation_id
    #
    # @option params [required, String] :master_account
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation({
    #     invitation_id: "__string", # required
    #     master_account: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AcceptInvitation AWS API Documentation
    #
    # @overload accept_invitation(params = {})
    # @param [Hash] params ({})
    def accept_invitation(params = {}, options = {})
      req = build_request(:accept_invitation, params)
      req.send_request(options)
    end

    # Retrieves information about one or more custom data identifiers.
    #
    # @option params [Array<String>] :ids
    #
    # @return [Types::BatchGetCustomDataIdentifiersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCustomDataIdentifiersResponse#custom_data_identifiers #custom_data_identifiers} => Array&lt;Types::BatchGetCustomDataIdentifierSummary&gt;
    #   * {Types::BatchGetCustomDataIdentifiersResponse#not_found_identifier_ids #not_found_identifier_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_custom_data_identifiers({
    #     ids: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_data_identifiers #=> Array
    #   resp.custom_data_identifiers[0].arn #=> String
    #   resp.custom_data_identifiers[0].created_at #=> Time
    #   resp.custom_data_identifiers[0].deleted #=> Boolean
    #   resp.custom_data_identifiers[0].description #=> String
    #   resp.custom_data_identifiers[0].id #=> String
    #   resp.custom_data_identifiers[0].name #=> String
    #   resp.not_found_identifier_ids #=> Array
    #   resp.not_found_identifier_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BatchGetCustomDataIdentifiers AWS API Documentation
    #
    # @overload batch_get_custom_data_identifiers(params = {})
    # @param [Hash] params ({})
    def batch_get_custom_data_identifiers(params = {}, options = {})
      req = build_request(:batch_get_custom_data_identifiers, params)
      req.send_request(options)
    end

    # Creates and defines the settings for a classification job.
    #
    # @option params [required, String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<String>] :custom_data_identifier_ids
    #
    # @option params [String] :description
    #
    # @option params [Boolean] :initial_run
    #
    # @option params [required, String] :job_type
    #   The schedule for running a classification job. Valid values are:
    #
    # @option params [required, String] :name
    #
    # @option params [required, Types::S3JobDefinition] :s3_job_definition
    #   Specifies which S3 buckets contain the objects that a classification
    #   job analyzes, and the scope of that analysis.
    #
    # @option params [Integer] :sampling_percentage
    #
    # @option params [Types::JobScheduleFrequency] :schedule_frequency
    #   Specifies the recurrence pattern for running a classification job.
    #
    # @option params [Hash<String,String>] :tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for a classification job, custom data identifier,
    #   findings filter, or member account.
    #
    # @return [Types::CreateClassificationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClassificationJobResponse#job_arn #job_arn} => String
    #   * {Types::CreateClassificationJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_classification_job({
    #     client_token: "__string", # required
    #     custom_data_identifier_ids: ["__string"],
    #     description: "__string",
    #     initial_run: false,
    #     job_type: "ONE_TIME", # required, accepts ONE_TIME, SCHEDULED
    #     name: "__string", # required
    #     s3_job_definition: { # required
    #       bucket_definitions: [
    #         {
    #           account_id: "__string",
    #           buckets: ["__string"],
    #         },
    #       ],
    #       scoping: {
    #         excludes: {
    #           and: [
    #             {
    #               simple_scope_term: {
    #                 comparator: "EQ", # accepts EQ, GT, GTE, LT, LTE, NE, CONTAINS
    #                 key: "BUCKET_CREATION_DATE", # accepts BUCKET_CREATION_DATE, OBJECT_EXTENSION, OBJECT_LAST_MODIFIED_DATE, OBJECT_SIZE, TAG
    #                 values: ["__string"],
    #               },
    #               tag_scope_term: {
    #                 comparator: "EQ", # accepts EQ, GT, GTE, LT, LTE, NE, CONTAINS
    #                 key: "__string",
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string",
    #                   },
    #                 ],
    #                 target: "S3_OBJECT", # accepts S3_OBJECT
    #               },
    #             },
    #           ],
    #         },
    #         includes: {
    #           and: [
    #             {
    #               simple_scope_term: {
    #                 comparator: "EQ", # accepts EQ, GT, GTE, LT, LTE, NE, CONTAINS
    #                 key: "BUCKET_CREATION_DATE", # accepts BUCKET_CREATION_DATE, OBJECT_EXTENSION, OBJECT_LAST_MODIFIED_DATE, OBJECT_SIZE, TAG
    #                 values: ["__string"],
    #               },
    #               tag_scope_term: {
    #                 comparator: "EQ", # accepts EQ, GT, GTE, LT, LTE, NE, CONTAINS
    #                 key: "__string",
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string",
    #                   },
    #                 ],
    #                 target: "S3_OBJECT", # accepts S3_OBJECT
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     sampling_percentage: 1,
    #     schedule_frequency: {
    #       daily_schedule: {
    #       },
    #       monthly_schedule: {
    #         day_of_month: 1,
    #       },
    #       weekly_schedule: {
    #         day_of_week: "SUNDAY", # accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #       },
    #     },
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateClassificationJob AWS API Documentation
    #
    # @overload create_classification_job(params = {})
    # @param [Hash] params ({})
    def create_classification_job(params = {}, options = {})
      req = build_request(:create_classification_job, params)
      req.send_request(options)
    end

    # Creates and defines the criteria and other settings for a custom data
    # identifier.
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #
    # @option params [Array<String>] :ignore_words
    #
    # @option params [Array<String>] :keywords
    #
    # @option params [Integer] :maximum_match_distance
    #
    # @option params [String] :name
    #
    # @option params [String] :regex
    #
    # @option params [Hash<String,String>] :tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for a classification job, custom data identifier,
    #   findings filter, or member account.
    #
    # @return [Types::CreateCustomDataIdentifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomDataIdentifierResponse#custom_data_identifier_id #custom_data_identifier_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_data_identifier({
    #     client_token: "__string",
    #     description: "__string",
    #     ignore_words: ["__string"],
    #     keywords: ["__string"],
    #     maximum_match_distance: 1,
    #     name: "__string",
    #     regex: "__string",
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_data_identifier_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateCustomDataIdentifier AWS API Documentation
    #
    # @overload create_custom_data_identifier(params = {})
    # @param [Hash] params ({})
    def create_custom_data_identifier(params = {}, options = {})
      req = build_request(:create_custom_data_identifier, params)
      req.send_request(options)
    end

    # Creates and defines the criteria and other settings for a findings
    # filter.
    #
    # @option params [required, String] :action
    #   The action to perform on findings that meet the filter criteria. To
    #   suppress (automatically archive) findings that meet the criteria, set
    #   this value to ARCHIVE. Valid values are:
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #
    # @option params [required, Types::FindingCriteria] :finding_criteria
    #   Specifies, as a map, one or more property-based conditions that filter
    #   the results of a query for findings.
    #
    # @option params [required, String] :name
    #
    # @option params [Integer] :position
    #
    # @option params [Hash<String,String>] :tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for a classification job, custom data identifier,
    #   findings filter, or member account.
    #
    # @return [Types::CreateFindingsFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFindingsFilterResponse#arn #arn} => String
    #   * {Types::CreateFindingsFilterResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_findings_filter({
    #     action: "ARCHIVE", # required, accepts ARCHIVE, NOOP
    #     client_token: "__string",
    #     description: "__string",
    #     finding_criteria: { # required
    #       criterion: {
    #         "__string" => {
    #           eq: ["__string"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           neq: ["__string"],
    #         },
    #       },
    #     },
    #     name: "__string", # required
    #     position: 1,
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateFindingsFilter AWS API Documentation
    #
    # @overload create_findings_filter(params = {})
    # @param [Hash] params ({})
    def create_findings_filter(params = {}, options = {})
      req = build_request(:create_findings_filter, params)
      req.send_request(options)
    end

    # Sends an Amazon Macie membership invitation to one or more accounts.
    #
    # @option params [required, Array<String>] :account_ids
    #
    # @option params [Boolean] :disable_email_notification
    #
    # @option params [String] :message
    #
    # @return [Types::CreateInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_invitations({
    #     account_ids: ["__string"], # required
    #     disable_email_notification: false,
    #     message: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].error_code #=> String, one of "ClientError", "InternalError"
    #   resp.unprocessed_accounts[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateInvitations AWS API Documentation
    #
    # @overload create_invitations(params = {})
    # @param [Hash] params ({})
    def create_invitations(params = {}, options = {})
      req = build_request(:create_invitations, params)
      req.send_request(options)
    end

    # Associates an account with an Amazon Macie master account.
    #
    # @option params [required, Types::AccountDetail] :account
    #   Specifies details for an account to associate with an Amazon Macie
    #   master account.
    #
    # @option params [Hash<String,String>] :tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for a classification job, custom data identifier,
    #   findings filter, or member account.
    #
    # @return [Types::CreateMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMemberResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_member({
    #     account: { # required
    #       account_id: "__string", # required
    #       email: "__string", # required
    #     },
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateMember AWS API Documentation
    #
    # @overload create_member(params = {})
    # @param [Hash] params ({})
    def create_member(params = {}, options = {})
      req = build_request(:create_member, params)
      req.send_request(options)
    end

    # Creates sample findings.
    #
    # @option params [Array<String>] :finding_types
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sample_findings({
    #     finding_types: ["SensitiveData:S3Object/Multiple"], # accepts SensitiveData:S3Object/Multiple, SensitiveData:S3Object/Financial, SensitiveData:S3Object/Personal, SensitiveData:S3Object/Credentials, SensitiveData:S3Object/CustomIdentifier, Policy:IAMUser/S3BucketPublic, Policy:IAMUser/S3BucketSharedExternally, Policy:IAMUser/S3BucketReplicatedExternally, Policy:IAMUser/S3BucketEncryptionDisabled, Policy:IAMUser/S3BlockPublicAccessDisabled
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateSampleFindings AWS API Documentation
    #
    # @overload create_sample_findings(params = {})
    # @param [Hash] params ({})
    def create_sample_findings(params = {}, options = {})
      req = build_request(:create_sample_findings, params)
      req.send_request(options)
    end

    # Declines Amazon Macie membership invitations that were received from
    # specific accounts.
    #
    # @option params [required, Array<String>] :account_ids
    #
    # @return [Types::DeclineInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeclineInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decline_invitations({
    #     account_ids: ["__string"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].error_code #=> String, one of "ClientError", "InternalError"
    #   resp.unprocessed_accounts[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeclineInvitations AWS API Documentation
    #
    # @overload decline_invitations(params = {})
    # @param [Hash] params ({})
    def decline_invitations(params = {}, options = {})
      req = build_request(:decline_invitations, params)
      req.send_request(options)
    end

    # Soft deletes a custom data identifier.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_data_identifier({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteCustomDataIdentifier AWS API Documentation
    #
    # @overload delete_custom_data_identifier(params = {})
    # @param [Hash] params ({})
    def delete_custom_data_identifier(params = {}, options = {})
      req = build_request(:delete_custom_data_identifier, params)
      req.send_request(options)
    end

    # Deletes a findings filter.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_findings_filter({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteFindingsFilter AWS API Documentation
    #
    # @overload delete_findings_filter(params = {})
    # @param [Hash] params ({})
    def delete_findings_filter(params = {}, options = {})
      req = build_request(:delete_findings_filter, params)
      req.send_request(options)
    end

    # Deletes Amazon Macie membership invitations that were received from
    # specific accounts.
    #
    # @option params [required, Array<String>] :account_ids
    #
    # @return [Types::DeleteInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_invitations({
    #     account_ids: ["__string"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].error_code #=> String, one of "ClientError", "InternalError"
    #   resp.unprocessed_accounts[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteInvitations AWS API Documentation
    #
    # @overload delete_invitations(params = {})
    # @param [Hash] params ({})
    def delete_invitations(params = {}, options = {})
      req = build_request(:delete_invitations, params)
      req.send_request(options)
    end

    # Deletes the association between an Amazon Macie master account and an
    # account.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_member({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteMember AWS API Documentation
    #
    # @overload delete_member(params = {})
    # @param [Hash] params ({})
    def delete_member(params = {}, options = {})
      req = build_request(:delete_member, params)
      req.send_request(options)
    end

    # Retrieves (queries) statistical data and other information about one
    # or more S3 buckets that Amazon Macie monitors and analyzes.
    #
    # @option params [Hash<String,Types::BucketCriteriaAdditionalProperties>] :criteria
    #   Specifies, as a map, one or more attribute-based conditions that
    #   filter the results of a query for information about S3 buckets.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [Types::BucketSortCriteria] :sort_criteria
    #   Specifies criteria for sorting the results of a query for information
    #   about S3 buckets.
    #
    # @return [Types::DescribeBucketsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBucketsResponse#buckets #buckets} => Array&lt;Types::BucketMetadata&gt;
    #   * {Types::DescribeBucketsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_buckets({
    #     criteria: {
    #       "__string" => {
    #         eq: ["__string"],
    #         gt: 1,
    #         gte: 1,
    #         lt: 1,
    #         lte: 1,
    #         neq: ["__string"],
    #         prefix: "__string",
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "__string",
    #     sort_criteria: {
    #       attribute_name: "__string",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.buckets #=> Array
    #   resp.buckets[0].account_id #=> String
    #   resp.buckets[0].bucket_arn #=> String
    #   resp.buckets[0].bucket_created_at #=> Time
    #   resp.buckets[0].bucket_name #=> String
    #   resp.buckets[0].classifiable_object_count #=> Integer
    #   resp.buckets[0].classifiable_size_in_bytes #=> Integer
    #   resp.buckets[0].last_updated #=> Time
    #   resp.buckets[0].object_count #=> Integer
    #   resp.buckets[0].object_count_by_encryption_type.customer_managed #=> Integer
    #   resp.buckets[0].object_count_by_encryption_type.kms_managed #=> Integer
    #   resp.buckets[0].object_count_by_encryption_type.s3_managed #=> Integer
    #   resp.buckets[0].object_count_by_encryption_type.unencrypted #=> Integer
    #   resp.buckets[0].public_access.effective_permission #=> String, one of "PUBLIC", "NOT_PUBLIC", "UNKNOWN"
    #   resp.buckets[0].public_access.permission_configuration.account_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.account_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.account_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.account_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_read_access #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_write_access #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_read_access #=> Boolean
    #   resp.buckets[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_write_access #=> Boolean
    #   resp.buckets[0].region #=> String
    #   resp.buckets[0].replication_details.replicated #=> Boolean
    #   resp.buckets[0].replication_details.replicated_externally #=> Boolean
    #   resp.buckets[0].replication_details.replication_accounts #=> Array
    #   resp.buckets[0].replication_details.replication_accounts[0] #=> String
    #   resp.buckets[0].shared_access #=> String, one of "EXTERNAL", "INTERNAL", "NOT_SHARED", "UNKNOWN"
    #   resp.buckets[0].size_in_bytes #=> Integer
    #   resp.buckets[0].size_in_bytes_compressed #=> Integer
    #   resp.buckets[0].tags #=> Array
    #   resp.buckets[0].tags[0].key #=> String
    #   resp.buckets[0].tags[0].value #=> String
    #   resp.buckets[0].unclassifiable_object_count.file_type #=> Integer
    #   resp.buckets[0].unclassifiable_object_count.storage_class #=> Integer
    #   resp.buckets[0].unclassifiable_object_count.total #=> Integer
    #   resp.buckets[0].unclassifiable_object_size_in_bytes.file_type #=> Integer
    #   resp.buckets[0].unclassifiable_object_size_in_bytes.storage_class #=> Integer
    #   resp.buckets[0].unclassifiable_object_size_in_bytes.total #=> Integer
    #   resp.buckets[0].versioning #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DescribeBuckets AWS API Documentation
    #
    # @overload describe_buckets(params = {})
    # @param [Hash] params ({})
    def describe_buckets(params = {}, options = {})
      req = build_request(:describe_buckets, params)
      req.send_request(options)
    end

    # Retrieves the status and settings for a classification job.
    #
    # @option params [required, String] :job_id
    #
    # @return [Types::DescribeClassificationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClassificationJobResponse#client_token #client_token} => String
    #   * {Types::DescribeClassificationJobResponse#created_at #created_at} => Time
    #   * {Types::DescribeClassificationJobResponse#custom_data_identifier_ids #custom_data_identifier_ids} => Array&lt;String&gt;
    #   * {Types::DescribeClassificationJobResponse#description #description} => String
    #   * {Types::DescribeClassificationJobResponse#initial_run #initial_run} => Boolean
    #   * {Types::DescribeClassificationJobResponse#job_arn #job_arn} => String
    #   * {Types::DescribeClassificationJobResponse#job_id #job_id} => String
    #   * {Types::DescribeClassificationJobResponse#job_status #job_status} => String
    #   * {Types::DescribeClassificationJobResponse#job_type #job_type} => String
    #   * {Types::DescribeClassificationJobResponse#last_run_time #last_run_time} => Time
    #   * {Types::DescribeClassificationJobResponse#name #name} => String
    #   * {Types::DescribeClassificationJobResponse#s3_job_definition #s3_job_definition} => Types::S3JobDefinition
    #   * {Types::DescribeClassificationJobResponse#sampling_percentage #sampling_percentage} => Integer
    #   * {Types::DescribeClassificationJobResponse#schedule_frequency #schedule_frequency} => Types::JobScheduleFrequency
    #   * {Types::DescribeClassificationJobResponse#statistics #statistics} => Types::Statistics
    #   * {Types::DescribeClassificationJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeClassificationJobResponse#user_paused_details #user_paused_details} => Types::UserPausedDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_classification_job({
    #     job_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.created_at #=> Time
    #   resp.custom_data_identifier_ids #=> Array
    #   resp.custom_data_identifier_ids[0] #=> String
    #   resp.description #=> String
    #   resp.initial_run #=> Boolean
    #   resp.job_arn #=> String
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"
    #   resp.job_type #=> String, one of "ONE_TIME", "SCHEDULED"
    #   resp.last_run_time #=> Time
    #   resp.name #=> String
    #   resp.s3_job_definition.bucket_definitions #=> Array
    #   resp.s3_job_definition.bucket_definitions[0].account_id #=> String
    #   resp.s3_job_definition.bucket_definitions[0].buckets #=> Array
    #   resp.s3_job_definition.bucket_definitions[0].buckets[0] #=> String
    #   resp.s3_job_definition.scoping.excludes.and #=> Array
    #   resp.s3_job_definition.scoping.excludes.and[0].simple_scope_term.comparator #=> String, one of "EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS"
    #   resp.s3_job_definition.scoping.excludes.and[0].simple_scope_term.key #=> String, one of "BUCKET_CREATION_DATE", "OBJECT_EXTENSION", "OBJECT_LAST_MODIFIED_DATE", "OBJECT_SIZE", "TAG"
    #   resp.s3_job_definition.scoping.excludes.and[0].simple_scope_term.values #=> Array
    #   resp.s3_job_definition.scoping.excludes.and[0].simple_scope_term.values[0] #=> String
    #   resp.s3_job_definition.scoping.excludes.and[0].tag_scope_term.comparator #=> String, one of "EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS"
    #   resp.s3_job_definition.scoping.excludes.and[0].tag_scope_term.key #=> String
    #   resp.s3_job_definition.scoping.excludes.and[0].tag_scope_term.tag_values #=> Array
    #   resp.s3_job_definition.scoping.excludes.and[0].tag_scope_term.tag_values[0].key #=> String
    #   resp.s3_job_definition.scoping.excludes.and[0].tag_scope_term.tag_values[0].value #=> String
    #   resp.s3_job_definition.scoping.excludes.and[0].tag_scope_term.target #=> String, one of "S3_OBJECT"
    #   resp.s3_job_definition.scoping.includes.and #=> Array
    #   resp.s3_job_definition.scoping.includes.and[0].simple_scope_term.comparator #=> String, one of "EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS"
    #   resp.s3_job_definition.scoping.includes.and[0].simple_scope_term.key #=> String, one of "BUCKET_CREATION_DATE", "OBJECT_EXTENSION", "OBJECT_LAST_MODIFIED_DATE", "OBJECT_SIZE", "TAG"
    #   resp.s3_job_definition.scoping.includes.and[0].simple_scope_term.values #=> Array
    #   resp.s3_job_definition.scoping.includes.and[0].simple_scope_term.values[0] #=> String
    #   resp.s3_job_definition.scoping.includes.and[0].tag_scope_term.comparator #=> String, one of "EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS"
    #   resp.s3_job_definition.scoping.includes.and[0].tag_scope_term.key #=> String
    #   resp.s3_job_definition.scoping.includes.and[0].tag_scope_term.tag_values #=> Array
    #   resp.s3_job_definition.scoping.includes.and[0].tag_scope_term.tag_values[0].key #=> String
    #   resp.s3_job_definition.scoping.includes.and[0].tag_scope_term.tag_values[0].value #=> String
    #   resp.s3_job_definition.scoping.includes.and[0].tag_scope_term.target #=> String, one of "S3_OBJECT"
    #   resp.sampling_percentage #=> Integer
    #   resp.schedule_frequency.monthly_schedule.day_of_month #=> Integer
    #   resp.schedule_frequency.weekly_schedule.day_of_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.statistics.approximate_number_of_objects_to_process #=> Float
    #   resp.statistics.number_of_runs #=> Float
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.user_paused_details.job_expires_at #=> Time
    #   resp.user_paused_details.job_imminent_expiration_health_event_arn #=> String
    #   resp.user_paused_details.job_paused_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DescribeClassificationJob AWS API Documentation
    #
    # @overload describe_classification_job(params = {})
    # @param [Hash] params ({})
    def describe_classification_job(params = {}, options = {})
      req = build_request(:describe_classification_job, params)
      req.send_request(options)
    end

    # Retrieves the Amazon Macie configuration settings for an AWS
    # organization.
    #
    # @return [Types::DescribeOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable #auto_enable} => Boolean
    #   * {Types::DescribeOrganizationConfigurationResponse#max_account_limit_reached #max_account_limit_reached} => Boolean
    #
    # @example Response structure
    #
    #   resp.auto_enable #=> Boolean
    #   resp.max_account_limit_reached #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DescribeOrganizationConfiguration AWS API Documentation
    #
    # @overload describe_organization_configuration(params = {})
    # @param [Hash] params ({})
    def describe_organization_configuration(params = {}, options = {})
      req = build_request(:describe_organization_configuration, params)
      req.send_request(options)
    end

    # Disables an Amazon Macie account and deletes Macie resources for the
    # account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisableMacie AWS API Documentation
    #
    # @overload disable_macie(params = {})
    # @param [Hash] params ({})
    def disable_macie(params = {}, options = {})
      req = build_request(:disable_macie, params)
      req.send_request(options)
    end

    # Disables an account as a delegated administrator of Amazon Macie for
    # an AWS organization.
    #
    # @option params [required, String] :admin_account_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_organization_admin_account({
    #     admin_account_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisableOrganizationAdminAccount AWS API Documentation
    #
    # @overload disable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def disable_organization_admin_account(params = {}, options = {})
      req = build_request(:disable_organization_admin_account, params)
      req.send_request(options)
    end

    # Disassociates a member account from its Amazon Macie master account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisassociateFromMasterAccount AWS API Documentation
    #
    # @overload disassociate_from_master_account(params = {})
    # @param [Hash] params ({})
    def disassociate_from_master_account(params = {}, options = {})
      req = build_request(:disassociate_from_master_account, params)
      req.send_request(options)
    end

    # Disassociates an Amazon Macie master account from a member account.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisassociateMember AWS API Documentation
    #
    # @overload disassociate_member(params = {})
    # @param [Hash] params ({})
    def disassociate_member(params = {}, options = {})
      req = build_request(:disassociate_member, params)
      req.send_request(options)
    end

    # Enables Amazon Macie and specifies the configuration settings for a
    # Macie account.
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :finding_publishing_frequency
    #   The frequency with which Amazon Macie publishes updates to policy
    #   findings for an account. This includes publishing updates to AWS
    #   Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch
    #   Events). Valid values are:
    #
    # @option params [String] :status
    #   The status of an Amazon Macie account. Valid values are:
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_macie({
    #     client_token: "__string",
    #     finding_publishing_frequency: "FIFTEEN_MINUTES", # accepts FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS
    #     status: "PAUSED", # accepts PAUSED, ENABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/EnableMacie AWS API Documentation
    #
    # @overload enable_macie(params = {})
    # @param [Hash] params ({})
    def enable_macie(params = {}, options = {})
      req = build_request(:enable_macie, params)
      req.send_request(options)
    end

    # Enables an account as a delegated administrator of Amazon Macie for an
    # AWS organization.
    #
    # @option params [required, String] :admin_account_id
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_organization_admin_account({
    #     admin_account_id: "__string", # required
    #     client_token: "__string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/EnableOrganizationAdminAccount AWS API Documentation
    #
    # @overload enable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def enable_organization_admin_account(params = {}, options = {})
      req = build_request(:enable_organization_admin_account, params)
      req.send_request(options)
    end

    # Retrieves (queries) aggregated statistical data for all the S3 buckets
    # that Amazon Macie monitors and analyzes.
    #
    # @option params [String] :account_id
    #
    # @return [Types::GetBucketStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBucketStatisticsResponse#bucket_count #bucket_count} => Integer
    #   * {Types::GetBucketStatisticsResponse#bucket_count_by_effective_permission #bucket_count_by_effective_permission} => Types::BucketCountByEffectivePermission
    #   * {Types::GetBucketStatisticsResponse#bucket_count_by_encryption_type #bucket_count_by_encryption_type} => Types::BucketCountByEncryptionType
    #   * {Types::GetBucketStatisticsResponse#bucket_count_by_shared_access_type #bucket_count_by_shared_access_type} => Types::BucketCountBySharedAccessType
    #   * {Types::GetBucketStatisticsResponse#classifiable_object_count #classifiable_object_count} => Integer
    #   * {Types::GetBucketStatisticsResponse#classifiable_size_in_bytes #classifiable_size_in_bytes} => Integer
    #   * {Types::GetBucketStatisticsResponse#last_updated #last_updated} => Time
    #   * {Types::GetBucketStatisticsResponse#object_count #object_count} => Integer
    #   * {Types::GetBucketStatisticsResponse#size_in_bytes #size_in_bytes} => Integer
    #   * {Types::GetBucketStatisticsResponse#size_in_bytes_compressed #size_in_bytes_compressed} => Integer
    #   * {Types::GetBucketStatisticsResponse#unclassifiable_object_count #unclassifiable_object_count} => Types::ObjectLevelStatistics
    #   * {Types::GetBucketStatisticsResponse#unclassifiable_object_size_in_bytes #unclassifiable_object_size_in_bytes} => Types::ObjectLevelStatistics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_statistics({
    #     account_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.bucket_count #=> Integer
    #   resp.bucket_count_by_effective_permission.publicly_accessible #=> Integer
    #   resp.bucket_count_by_effective_permission.publicly_readable #=> Integer
    #   resp.bucket_count_by_effective_permission.publicly_writable #=> Integer
    #   resp.bucket_count_by_effective_permission.unknown #=> Integer
    #   resp.bucket_count_by_encryption_type.kms_managed #=> Integer
    #   resp.bucket_count_by_encryption_type.s3_managed #=> Integer
    #   resp.bucket_count_by_encryption_type.unencrypted #=> Integer
    #   resp.bucket_count_by_shared_access_type.external #=> Integer
    #   resp.bucket_count_by_shared_access_type.internal #=> Integer
    #   resp.bucket_count_by_shared_access_type.not_shared #=> Integer
    #   resp.bucket_count_by_shared_access_type.unknown #=> Integer
    #   resp.classifiable_object_count #=> Integer
    #   resp.classifiable_size_in_bytes #=> Integer
    #   resp.last_updated #=> Time
    #   resp.object_count #=> Integer
    #   resp.size_in_bytes #=> Integer
    #   resp.size_in_bytes_compressed #=> Integer
    #   resp.unclassifiable_object_count.file_type #=> Integer
    #   resp.unclassifiable_object_count.storage_class #=> Integer
    #   resp.unclassifiable_object_count.total #=> Integer
    #   resp.unclassifiable_object_size_in_bytes.file_type #=> Integer
    #   resp.unclassifiable_object_size_in_bytes.storage_class #=> Integer
    #   resp.unclassifiable_object_size_in_bytes.total #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetBucketStatistics AWS API Documentation
    #
    # @overload get_bucket_statistics(params = {})
    # @param [Hash] params ({})
    def get_bucket_statistics(params = {}, options = {})
      req = build_request(:get_bucket_statistics, params)
      req.send_request(options)
    end

    # Retrieves the configuration settings for storing data classification
    # results.
    #
    # @return [Types::GetClassificationExportConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClassificationExportConfigurationResponse#configuration #configuration} => Types::ClassificationExportConfiguration
    #
    # @example Response structure
    #
    #   resp.configuration.s3_destination.bucket_name #=> String
    #   resp.configuration.s3_destination.key_prefix #=> String
    #   resp.configuration.s3_destination.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetClassificationExportConfiguration AWS API Documentation
    #
    # @overload get_classification_export_configuration(params = {})
    # @param [Hash] params ({})
    def get_classification_export_configuration(params = {}, options = {})
      req = build_request(:get_classification_export_configuration, params)
      req.send_request(options)
    end

    # Retrieves the criteria and other settings for a custom data
    # identifier.
    #
    # @option params [required, String] :id
    #
    # @return [Types::GetCustomDataIdentifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomDataIdentifierResponse#arn #arn} => String
    #   * {Types::GetCustomDataIdentifierResponse#created_at #created_at} => Time
    #   * {Types::GetCustomDataIdentifierResponse#deleted #deleted} => Boolean
    #   * {Types::GetCustomDataIdentifierResponse#description #description} => String
    #   * {Types::GetCustomDataIdentifierResponse#id #id} => String
    #   * {Types::GetCustomDataIdentifierResponse#ignore_words #ignore_words} => Array&lt;String&gt;
    #   * {Types::GetCustomDataIdentifierResponse#keywords #keywords} => Array&lt;String&gt;
    #   * {Types::GetCustomDataIdentifierResponse#maximum_match_distance #maximum_match_distance} => Integer
    #   * {Types::GetCustomDataIdentifierResponse#name #name} => String
    #   * {Types::GetCustomDataIdentifierResponse#regex #regex} => String
    #   * {Types::GetCustomDataIdentifierResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_data_identifier({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.deleted #=> Boolean
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.ignore_words #=> Array
    #   resp.ignore_words[0] #=> String
    #   resp.keywords #=> Array
    #   resp.keywords[0] #=> String
    #   resp.maximum_match_distance #=> Integer
    #   resp.name #=> String
    #   resp.regex #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetCustomDataIdentifier AWS API Documentation
    #
    # @overload get_custom_data_identifier(params = {})
    # @param [Hash] params ({})
    def get_custom_data_identifier(params = {}, options = {})
      req = build_request(:get_custom_data_identifier, params)
      req.send_request(options)
    end

    # Retrieves (queries) aggregated statistical data about findings.
    #
    # @option params [Types::FindingCriteria] :finding_criteria
    #   Specifies, as a map, one or more property-based conditions that filter
    #   the results of a query for findings.
    #
    # @option params [required, String] :group_by
    #
    # @option params [Integer] :size
    #
    # @option params [Types::FindingStatisticsSortCriteria] :sort_criteria
    #   Specifies criteria for sorting the results of a query that retrieves
    #   aggregated statistical data about findings.
    #
    # @return [Types::GetFindingStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingStatisticsResponse#counts_by_group #counts_by_group} => Array&lt;Types::GroupCount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding_statistics({
    #     finding_criteria: {
    #       criterion: {
    #         "__string" => {
    #           eq: ["__string"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           neq: ["__string"],
    #         },
    #       },
    #     },
    #     group_by: "resourcesAffected.s3Bucket.name", # required, accepts resourcesAffected.s3Bucket.name, type, classificationDetails.jobId, severity.description
    #     size: 1,
    #     sort_criteria: {
    #       attribute_name: "groupKey", # accepts groupKey, count
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.counts_by_group #=> Array
    #   resp.counts_by_group[0].count #=> Integer
    #   resp.counts_by_group[0].group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingStatistics AWS API Documentation
    #
    # @overload get_finding_statistics(params = {})
    # @param [Hash] params ({})
    def get_finding_statistics(params = {}, options = {})
      req = build_request(:get_finding_statistics, params)
      req.send_request(options)
    end

    # Retrieves the details of one or more findings.
    #
    # @option params [required, Array<String>] :finding_ids
    #
    # @option params [Types::SortCriteria] :sort_criteria
    #   Specifies criteria for sorting the results of a request for findings.
    #
    # @return [Types::GetFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsResponse#findings #findings} => Array&lt;Types::Finding&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings({
    #     finding_ids: ["__string"], # required
    #     sort_criteria: {
    #       attribute_name: "__string",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].account_id #=> String
    #   resp.findings[0].archived #=> Boolean
    #   resp.findings[0].category #=> String, one of "CLASSIFICATION", "POLICY"
    #   resp.findings[0].classification_details.detailed_results_location #=> String
    #   resp.findings[0].classification_details.job_arn #=> String
    #   resp.findings[0].classification_details.job_id #=> String
    #   resp.findings[0].classification_details.result.additional_occurrences #=> Boolean
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections #=> Array
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].arn #=> String
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].count #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].name #=> String
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells #=> Array
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells[0].cell_reference #=> String
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells[0].column #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells[0].column_name #=> String
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells[0].row #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.line_ranges #=> Array
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.line_ranges[0].end #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.line_ranges[0].start #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.line_ranges[0].start_column #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.offset_ranges #=> Array
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.offset_ranges[0].end #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.offset_ranges[0].start #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.offset_ranges[0].start_column #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages #=> Array
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].line_range.end #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].line_range.start #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].line_range.start_column #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].offset_range.end #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].offset_range.start #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].offset_range.start_column #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].page_number #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.records #=> Array
    #   resp.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.records[0].record_index #=> Integer
    #   resp.findings[0].classification_details.result.custom_data_identifiers.total_count #=> Integer
    #   resp.findings[0].classification_details.result.mime_type #=> String
    #   resp.findings[0].classification_details.result.sensitive_data #=> Array
    #   resp.findings[0].classification_details.result.sensitive_data[0].category #=> String, one of "FINANCIAL_INFORMATION", "PERSONAL_INFORMATION", "CREDENTIALS", "CUSTOM_IDENTIFIER"
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections #=> Array
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].count #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.cells #=> Array
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.cells[0].cell_reference #=> String
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.cells[0].column #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.cells[0].column_name #=> String
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.cells[0].row #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.line_ranges #=> Array
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.line_ranges[0].end #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.line_ranges[0].start #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.line_ranges[0].start_column #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.offset_ranges #=> Array
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.offset_ranges[0].end #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.offset_ranges[0].start #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.offset_ranges[0].start_column #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.pages #=> Array
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.pages[0].line_range.end #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.pages[0].line_range.start #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.pages[0].line_range.start_column #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.pages[0].offset_range.end #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.pages[0].offset_range.start #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.pages[0].offset_range.start_column #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.pages[0].page_number #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.records #=> Array
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences.records[0].record_index #=> Integer
    #   resp.findings[0].classification_details.result.sensitive_data[0].detections[0].type #=> String
    #   resp.findings[0].classification_details.result.sensitive_data[0].total_count #=> Integer
    #   resp.findings[0].classification_details.result.size_classified #=> Integer
    #   resp.findings[0].classification_details.result.status.code #=> String
    #   resp.findings[0].classification_details.result.status.reason #=> String
    #   resp.findings[0].count #=> Integer
    #   resp.findings[0].created_at #=> Time
    #   resp.findings[0].description #=> String
    #   resp.findings[0].id #=> String
    #   resp.findings[0].partition #=> String
    #   resp.findings[0].policy_details.action.action_type #=> String, one of "AWS_API_CALL"
    #   resp.findings[0].policy_details.action.api_call_details.api #=> String
    #   resp.findings[0].policy_details.action.api_call_details.api_service_name #=> String
    #   resp.findings[0].policy_details.action.api_call_details.first_seen #=> Time
    #   resp.findings[0].policy_details.action.api_call_details.last_seen #=> Time
    #   resp.findings[0].policy_details.actor.domain_details.domain_name #=> String
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_address_v4 #=> String
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_city.name #=> String
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_country.code #=> String
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_country.name #=> String
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_geo_location.lat #=> Float
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_geo_location.lon #=> Float
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_owner.asn #=> String
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_owner.asn_org #=> String
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_owner.isp #=> String
    #   resp.findings[0].policy_details.actor.ip_address_details.ip_owner.org #=> String
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.access_key_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.account_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.arn #=> String
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.principal_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.session_context.attributes.creation_date #=> Time
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.session_context.attributes.mfa_authenticated #=> Boolean
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.account_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.arn #=> String
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.principal_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.type #=> String
    #   resp.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.user_name #=> String
    #   resp.findings[0].policy_details.actor.user_identity.aws_account.account_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.aws_account.principal_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.aws_service.invoked_by #=> String
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.access_key_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.account_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.arn #=> String
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.principal_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.session_context.attributes.creation_date #=> Time
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.session_context.attributes.mfa_authenticated #=> Boolean
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.session_context.session_issuer.account_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.session_context.session_issuer.arn #=> String
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.session_context.session_issuer.principal_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.session_context.session_issuer.type #=> String
    #   resp.findings[0].policy_details.actor.user_identity.federated_user.session_context.session_issuer.user_name #=> String
    #   resp.findings[0].policy_details.actor.user_identity.iam_user.account_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.iam_user.arn #=> String
    #   resp.findings[0].policy_details.actor.user_identity.iam_user.principal_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.iam_user.user_name #=> String
    #   resp.findings[0].policy_details.actor.user_identity.root.account_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.root.arn #=> String
    #   resp.findings[0].policy_details.actor.user_identity.root.principal_id #=> String
    #   resp.findings[0].policy_details.actor.user_identity.type #=> String, one of "AssumedRole", "IAMUser", "FederatedUser", "Root", "AWSAccount", "AWSService"
    #   resp.findings[0].region #=> String
    #   resp.findings[0].resources_affected.s3_bucket.arn #=> String
    #   resp.findings[0].resources_affected.s3_bucket.created_at #=> Time
    #   resp.findings[0].resources_affected.s3_bucket.default_server_side_encryption.encryption_type #=> String, one of "NONE", "AES256", "aws:kms", "UNKNOWN"
    #   resp.findings[0].resources_affected.s3_bucket.default_server_side_encryption.kms_master_key_id #=> String
    #   resp.findings[0].resources_affected.s3_bucket.name #=> String
    #   resp.findings[0].resources_affected.s3_bucket.owner.display_name #=> String
    #   resp.findings[0].resources_affected.s3_bucket.owner.id #=> String
    #   resp.findings[0].resources_affected.s3_bucket.public_access.effective_permission #=> String, one of "PUBLIC", "NOT_PUBLIC", "UNKNOWN"
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_read_access #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_write_access #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_read_access #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_write_access #=> Boolean
    #   resp.findings[0].resources_affected.s3_bucket.tags #=> Array
    #   resp.findings[0].resources_affected.s3_bucket.tags[0].key #=> String
    #   resp.findings[0].resources_affected.s3_bucket.tags[0].value #=> String
    #   resp.findings[0].resources_affected.s3_object.bucket_arn #=> String
    #   resp.findings[0].resources_affected.s3_object.e_tag #=> String
    #   resp.findings[0].resources_affected.s3_object.extension #=> String
    #   resp.findings[0].resources_affected.s3_object.key #=> String
    #   resp.findings[0].resources_affected.s3_object.last_modified #=> Time
    #   resp.findings[0].resources_affected.s3_object.path #=> String
    #   resp.findings[0].resources_affected.s3_object.public_access #=> Boolean
    #   resp.findings[0].resources_affected.s3_object.server_side_encryption.encryption_type #=> String, one of "NONE", "AES256", "aws:kms", "UNKNOWN"
    #   resp.findings[0].resources_affected.s3_object.server_side_encryption.kms_master_key_id #=> String
    #   resp.findings[0].resources_affected.s3_object.size #=> Integer
    #   resp.findings[0].resources_affected.s3_object.storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "ONEZONE_IA", "GLACIER"
    #   resp.findings[0].resources_affected.s3_object.tags #=> Array
    #   resp.findings[0].resources_affected.s3_object.tags[0].key #=> String
    #   resp.findings[0].resources_affected.s3_object.tags[0].value #=> String
    #   resp.findings[0].resources_affected.s3_object.version_id #=> String
    #   resp.findings[0].sample #=> Boolean
    #   resp.findings[0].schema_version #=> String
    #   resp.findings[0].severity.description #=> String, one of "Low", "Medium", "High"
    #   resp.findings[0].severity.score #=> Integer
    #   resp.findings[0].title #=> String
    #   resp.findings[0].type #=> String, one of "SensitiveData:S3Object/Multiple", "SensitiveData:S3Object/Financial", "SensitiveData:S3Object/Personal", "SensitiveData:S3Object/Credentials", "SensitiveData:S3Object/CustomIdentifier", "Policy:IAMUser/S3BucketPublic", "Policy:IAMUser/S3BucketSharedExternally", "Policy:IAMUser/S3BucketReplicatedExternally", "Policy:IAMUser/S3BucketEncryptionDisabled", "Policy:IAMUser/S3BlockPublicAccessDisabled"
    #   resp.findings[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindings AWS API Documentation
    #
    # @overload get_findings(params = {})
    # @param [Hash] params ({})
    def get_findings(params = {}, options = {})
      req = build_request(:get_findings, params)
      req.send_request(options)
    end

    # Retrieves the criteria and other settings for a findings filter.
    #
    # @option params [required, String] :id
    #
    # @return [Types::GetFindingsFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsFilterResponse#action #action} => String
    #   * {Types::GetFindingsFilterResponse#arn #arn} => String
    #   * {Types::GetFindingsFilterResponse#description #description} => String
    #   * {Types::GetFindingsFilterResponse#finding_criteria #finding_criteria} => Types::FindingCriteria
    #   * {Types::GetFindingsFilterResponse#id #id} => String
    #   * {Types::GetFindingsFilterResponse#name #name} => String
    #   * {Types::GetFindingsFilterResponse#position #position} => Integer
    #   * {Types::GetFindingsFilterResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_filter({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action #=> String, one of "ARCHIVE", "NOOP"
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.finding_criteria.criterion #=> Hash
    #   resp.finding_criteria.criterion["__string"].eq #=> Array
    #   resp.finding_criteria.criterion["__string"].eq[0] #=> String
    #   resp.finding_criteria.criterion["__string"].gt #=> Integer
    #   resp.finding_criteria.criterion["__string"].gte #=> Integer
    #   resp.finding_criteria.criterion["__string"].lt #=> Integer
    #   resp.finding_criteria.criterion["__string"].lte #=> Integer
    #   resp.finding_criteria.criterion["__string"].neq #=> Array
    #   resp.finding_criteria.criterion["__string"].neq[0] #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.position #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingsFilter AWS API Documentation
    #
    # @overload get_findings_filter(params = {})
    # @param [Hash] params ({})
    def get_findings_filter(params = {}, options = {})
      req = build_request(:get_findings_filter, params)
      req.send_request(options)
    end

    # Retrieves the count of Amazon Macie membership invitations that were
    # received by an account.
    #
    # @return [Types::GetInvitationsCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvitationsCountResponse#invitations_count #invitations_count} => Integer
    #
    # @example Response structure
    #
    #   resp.invitations_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetInvitationsCount AWS API Documentation
    #
    # @overload get_invitations_count(params = {})
    # @param [Hash] params ({})
    def get_invitations_count(params = {}, options = {})
      req = build_request(:get_invitations_count, params)
      req.send_request(options)
    end

    # Retrieves the current status and configuration settings for an Amazon
    # Macie account.
    #
    # @return [Types::GetMacieSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMacieSessionResponse#created_at #created_at} => Time
    #   * {Types::GetMacieSessionResponse#finding_publishing_frequency #finding_publishing_frequency} => String
    #   * {Types::GetMacieSessionResponse#service_role #service_role} => String
    #   * {Types::GetMacieSessionResponse#status #status} => String
    #   * {Types::GetMacieSessionResponse#updated_at #updated_at} => Time
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.finding_publishing_frequency #=> String, one of "FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"
    #   resp.service_role #=> String
    #   resp.status #=> String, one of "PAUSED", "ENABLED"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetMacieSession AWS API Documentation
    #
    # @overload get_macie_session(params = {})
    # @param [Hash] params ({})
    def get_macie_session(params = {}, options = {})
      req = build_request(:get_macie_session, params)
      req.send_request(options)
    end

    # Retrieves information about the Amazon Macie master account for an
    # account.
    #
    # @return [Types::GetMasterAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMasterAccountResponse#master #master} => Types::Invitation
    #
    # @example Response structure
    #
    #   resp.master.account_id #=> String
    #   resp.master.invitation_id #=> String
    #   resp.master.invited_at #=> Time
    #   resp.master.relationship_status #=> String, one of "Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetMasterAccount AWS API Documentation
    #
    # @overload get_master_account(params = {})
    # @param [Hash] params ({})
    def get_master_account(params = {}, options = {})
      req = build_request(:get_master_account, params)
      req.send_request(options)
    end

    # Retrieves information about a member account that's associated with
    # an Amazon Macie master account.
    #
    # @option params [required, String] :id
    #
    # @return [Types::GetMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemberResponse#account_id #account_id} => String
    #   * {Types::GetMemberResponse#arn #arn} => String
    #   * {Types::GetMemberResponse#email #email} => String
    #   * {Types::GetMemberResponse#invited_at #invited_at} => Time
    #   * {Types::GetMemberResponse#master_account_id #master_account_id} => String
    #   * {Types::GetMemberResponse#relationship_status #relationship_status} => String
    #   * {Types::GetMemberResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetMemberResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.arn #=> String
    #   resp.email #=> String
    #   resp.invited_at #=> Time
    #   resp.master_account_id #=> String
    #   resp.relationship_status #=> String, one of "Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetMember AWS API Documentation
    #
    # @overload get_member(params = {})
    # @param [Hash] params ({})
    def get_member(params = {}, options = {})
      req = build_request(:get_member, params)
      req.send_request(options)
    end

    # Retrieves (queries) quotas and aggregated usage data for one or more
    # accounts.
    #
    # @option params [Array<Types::UsageStatisticsFilter>] :filter_by
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [Types::UsageStatisticsSortBy] :sort_by
    #   Specifies criteria for sorting the results of a query for account
    #   quotas and usage data.
    #
    # @return [Types::GetUsageStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUsageStatisticsResponse#next_token #next_token} => String
    #   * {Types::GetUsageStatisticsResponse#records #records} => Array&lt;Types::UsageRecord&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_statistics({
    #     filter_by: [
    #       {
    #         comparator: "GT", # accepts GT, GTE, LT, LTE, EQ, NE, CONTAINS
    #         key: "accountId", # accepts accountId, serviceLimit, freeTrialStartDate, total
    #         values: ["__string"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "__string",
    #     sort_by: {
    #       key: "accountId", # accepts accountId, total, serviceLimitValue, freeTrialStartDate
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.records #=> Array
    #   resp.records[0].account_id #=> String
    #   resp.records[0].free_trial_start_date #=> Time
    #   resp.records[0].usage #=> Array
    #   resp.records[0].usage[0].currency #=> String, one of "USD"
    #   resp.records[0].usage[0].estimated_cost #=> String
    #   resp.records[0].usage[0].service_limit.is_service_limited #=> Boolean
    #   resp.records[0].usage[0].service_limit.unit #=> String, one of "TERABYTES"
    #   resp.records[0].usage[0].service_limit.value #=> Integer
    #   resp.records[0].usage[0].type #=> String, one of "DATA_INVENTORY_EVALUATION", "SENSITIVE_DATA_DISCOVERY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetUsageStatistics AWS API Documentation
    #
    # @overload get_usage_statistics(params = {})
    # @param [Hash] params ({})
    def get_usage_statistics(params = {}, options = {})
      req = build_request(:get_usage_statistics, params)
      req.send_request(options)
    end

    # Retrieves (queries) aggregated usage data for an account.
    #
    # @return [Types::GetUsageTotalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUsageTotalsResponse#usage_totals #usage_totals} => Array&lt;Types::UsageTotal&gt;
    #
    # @example Response structure
    #
    #   resp.usage_totals #=> Array
    #   resp.usage_totals[0].currency #=> String, one of "USD"
    #   resp.usage_totals[0].estimated_cost #=> String
    #   resp.usage_totals[0].type #=> String, one of "DATA_INVENTORY_EVALUATION", "SENSITIVE_DATA_DISCOVERY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetUsageTotals AWS API Documentation
    #
    # @overload get_usage_totals(params = {})
    # @param [Hash] params ({})
    def get_usage_totals(params = {}, options = {})
      req = build_request(:get_usage_totals, params)
      req.send_request(options)
    end

    # Retrieves a subset of information about one or more classification
    # jobs.
    #
    # @option params [Types::ListJobsFilterCriteria] :filter_criteria
    #   Specifies criteria for filtering the results of a request for
    #   information about classification jobs.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [Types::ListJobsSortCriteria] :sort_criteria
    #   Specifies criteria for sorting the results of a request for
    #   information about classification jobs.
    #
    # @return [Types::ListClassificationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClassificationJobsResponse#items #items} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListClassificationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_classification_jobs({
    #     filter_criteria: {
    #       excludes: [
    #         {
    #           comparator: "EQ", # accepts EQ, GT, GTE, LT, LTE, NE, CONTAINS
    #           key: "jobType", # accepts jobType, jobStatus, createdAt, name
    #           values: ["__string"],
    #         },
    #       ],
    #       includes: [
    #         {
    #           comparator: "EQ", # accepts EQ, GT, GTE, LT, LTE, NE, CONTAINS
    #           key: "jobType", # accepts jobType, jobStatus, createdAt, name
    #           values: ["__string"],
    #         },
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: "__string",
    #     sort_criteria: {
    #       attribute_name: "createdAt", # accepts createdAt, jobStatus, name, jobType
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].bucket_definitions #=> Array
    #   resp.items[0].bucket_definitions[0].account_id #=> String
    #   resp.items[0].bucket_definitions[0].buckets #=> Array
    #   resp.items[0].bucket_definitions[0].buckets[0] #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].job_id #=> String
    #   resp.items[0].job_status #=> String, one of "RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"
    #   resp.items[0].job_type #=> String, one of "ONE_TIME", "SCHEDULED"
    #   resp.items[0].name #=> String
    #   resp.items[0].user_paused_details.job_expires_at #=> Time
    #   resp.items[0].user_paused_details.job_imminent_expiration_health_event_arn #=> String
    #   resp.items[0].user_paused_details.job_paused_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListClassificationJobs AWS API Documentation
    #
    # @overload list_classification_jobs(params = {})
    # @param [Hash] params ({})
    def list_classification_jobs(params = {}, options = {})
      req = build_request(:list_classification_jobs, params)
      req.send_request(options)
    end

    # Retrieves a subset of information about all the custom data
    # identifiers for an account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListCustomDataIdentifiersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomDataIdentifiersResponse#items #items} => Array&lt;Types::CustomDataIdentifierSummary&gt;
    #   * {Types::ListCustomDataIdentifiersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_data_identifiers({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].description #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListCustomDataIdentifiers AWS API Documentation
    #
    # @overload list_custom_data_identifiers(params = {})
    # @param [Hash] params ({})
    def list_custom_data_identifiers(params = {}, options = {})
      req = build_request(:list_custom_data_identifiers, params)
      req.send_request(options)
    end

    # Retrieves a subset of information about one or more findings.
    #
    # @option params [Types::FindingCriteria] :finding_criteria
    #   Specifies, as a map, one or more property-based conditions that filter
    #   the results of a query for findings.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [Types::SortCriteria] :sort_criteria
    #   Specifies criteria for sorting the results of a request for findings.
    #
    # @return [Types::ListFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsResponse#finding_ids #finding_ids} => Array&lt;String&gt;
    #   * {Types::ListFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings({
    #     finding_criteria: {
    #       criterion: {
    #         "__string" => {
    #           eq: ["__string"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           neq: ["__string"],
    #         },
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "__string",
    #     sort_criteria: {
    #       attribute_name: "__string",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_ids #=> Array
    #   resp.finding_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListFindings AWS API Documentation
    #
    # @overload list_findings(params = {})
    # @param [Hash] params ({})
    def list_findings(params = {}, options = {})
      req = build_request(:list_findings, params)
      req.send_request(options)
    end

    # Retrieves a subset of information about all the findings filters for
    # an account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListFindingsFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsFiltersResponse#findings_filter_list_items #findings_filter_list_items} => Array&lt;Types::FindingsFilterListItem&gt;
    #   * {Types::ListFindingsFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings_filters({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.findings_filter_list_items #=> Array
    #   resp.findings_filter_list_items[0].action #=> String, one of "ARCHIVE", "NOOP"
    #   resp.findings_filter_list_items[0].arn #=> String
    #   resp.findings_filter_list_items[0].id #=> String
    #   resp.findings_filter_list_items[0].name #=> String
    #   resp.findings_filter_list_items[0].tags #=> Hash
    #   resp.findings_filter_list_items[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListFindingsFilters AWS API Documentation
    #
    # @overload list_findings_filters(params = {})
    # @param [Hash] params ({})
    def list_findings_filters(params = {}, options = {})
      req = build_request(:list_findings_filters, params)
      req.send_request(options)
    end

    # Retrieves information about all the Amazon Macie membership
    # invitations that were received by an account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvitationsResponse#invitations #invitations} => Array&lt;Types::Invitation&gt;
    #   * {Types::ListInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.invitations #=> Array
    #   resp.invitations[0].account_id #=> String
    #   resp.invitations[0].invitation_id #=> String
    #   resp.invitations[0].invited_at #=> Time
    #   resp.invitations[0].relationship_status #=> String, one of "Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListInvitations AWS API Documentation
    #
    # @overload list_invitations(params = {})
    # @param [Hash] params ({})
    def list_invitations(params = {}, options = {})
      req = build_request(:list_invitations, params)
      req.send_request(options)
    end

    # Retrieves information about the accounts that are associated with an
    # Amazon Macie master account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [String] :only_associated
    #
    # @return [Types::ListMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::ListMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     max_results: 1,
    #     next_token: "__string",
    #     only_associated: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].arn #=> String
    #   resp.members[0].email #=> String
    #   resp.members[0].invited_at #=> Time
    #   resp.members[0].master_account_id #=> String
    #   resp.members[0].relationship_status #=> String, one of "Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"
    #   resp.members[0].tags #=> Hash
    #   resp.members[0].tags["__string"] #=> String
    #   resp.members[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Retrieves information about the account that's designated as the
    # delegated administrator of Amazon Macie for an AWS organization.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListOrganizationAdminAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationAdminAccountsResponse#admin_accounts #admin_accounts} => Array&lt;Types::AdminAccount&gt;
    #   * {Types::ListOrganizationAdminAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_admin_accounts({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_accounts #=> Array
    #   resp.admin_accounts[0].account_id #=> String
    #   resp.admin_accounts[0].status #=> String, one of "ENABLED", "DISABLING_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListOrganizationAdminAccounts AWS API Documentation
    #
    # @overload list_organization_admin_accounts(params = {})
    # @param [Hash] params ({})
    def list_organization_admin_accounts(params = {}, options = {})
      req = build_request(:list_organization_admin_accounts, params)
      req.send_request(options)
    end

    # Retrieves the tags (keys and values) that are associated with a
    # classification job, custom data identifier, findings filter, or member
    # account.
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates the configuration settings for storing data
    # classification results.
    #
    # @option params [required, Types::ClassificationExportConfiguration] :configuration
    #   Specifies where to store data classification results, and the
    #   encryption settings to use when storing results in that location.
    #   Currently, you can store classification results only in an S3 bucket.
    #
    # @return [Types::PutClassificationExportConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutClassificationExportConfigurationResponse#configuration #configuration} => Types::ClassificationExportConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_classification_export_configuration({
    #     configuration: { # required
    #       s3_destination: {
    #         bucket_name: "__string", # required
    #         key_prefix: "__string",
    #         kms_key_arn: "__string", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.s3_destination.bucket_name #=> String
    #   resp.configuration.s3_destination.key_prefix #=> String
    #   resp.configuration.s3_destination.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/PutClassificationExportConfiguration AWS API Documentation
    #
    # @overload put_classification_export_configuration(params = {})
    # @param [Hash] params ({})
    def put_classification_export_configuration(params = {}, options = {})
      req = build_request(:put_classification_export_configuration, params)
      req.send_request(options)
    end

    # Adds or updates one or more tags (keys and values) that are associated
    # with a classification job, custom data identifier, findings filter, or
    # member account.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for a classification job, custom data identifier,
    #   findings filter, or member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Tests a custom data identifier.
    #
    # @option params [Array<String>] :ignore_words
    #
    # @option params [Array<String>] :keywords
    #
    # @option params [Integer] :maximum_match_distance
    #
    # @option params [required, String] :regex
    #
    # @option params [required, String] :sample_text
    #
    # @return [Types::TestCustomDataIdentifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestCustomDataIdentifierResponse#match_count #match_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_custom_data_identifier({
    #     ignore_words: ["__string"],
    #     keywords: ["__string"],
    #     maximum_match_distance: 1,
    #     regex: "__string", # required
    #     sample_text: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.match_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TestCustomDataIdentifier AWS API Documentation
    #
    # @overload test_custom_data_identifier(params = {})
    # @param [Hash] params ({})
    def test_custom_data_identifier(params = {}, options = {})
      req = build_request(:test_custom_data_identifier, params)
      req.send_request(options)
    end

    # Removes one or more tags (keys and values) from a classification job,
    # custom data identifier, findings filter, or member account.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Changes the status of a classification job.
    #
    # @option params [required, String] :job_id
    #
    # @option params [required, String] :job_status
    #   The current status of a classification job. Possible values are:
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_classification_job({
    #     job_id: "__string", # required
    #     job_status: "RUNNING", # required, accepts RUNNING, PAUSED, CANCELLED, COMPLETE, IDLE, USER_PAUSED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateClassificationJob AWS API Documentation
    #
    # @overload update_classification_job(params = {})
    # @param [Hash] params ({})
    def update_classification_job(params = {}, options = {})
      req = build_request(:update_classification_job, params)
      req.send_request(options)
    end

    # Updates the criteria and other settings for a findings filter.
    #
    # @option params [String] :action
    #   The action to perform on findings that meet the filter criteria. To
    #   suppress (automatically archive) findings that meet the criteria, set
    #   this value to ARCHIVE. Valid values are:
    #
    # @option params [String] :description
    #
    # @option params [Types::FindingCriteria] :finding_criteria
    #   Specifies, as a map, one or more property-based conditions that filter
    #   the results of a query for findings.
    #
    # @option params [required, String] :id
    #
    # @option params [String] :name
    #
    # @option params [Integer] :position
    #
    # @return [Types::UpdateFindingsFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFindingsFilterResponse#arn #arn} => String
    #   * {Types::UpdateFindingsFilterResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings_filter({
    #     action: "ARCHIVE", # accepts ARCHIVE, NOOP
    #     description: "__string",
    #     finding_criteria: {
    #       criterion: {
    #         "__string" => {
    #           eq: ["__string"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           neq: ["__string"],
    #         },
    #       },
    #     },
    #     id: "__string", # required
    #     name: "__string",
    #     position: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateFindingsFilter AWS API Documentation
    #
    # @overload update_findings_filter(params = {})
    # @param [Hash] params ({})
    def update_findings_filter(params = {}, options = {})
      req = build_request(:update_findings_filter, params)
      req.send_request(options)
    end

    # Suspends or re-enables an Amazon Macie account, or updates the
    # configuration settings for a Macie account.
    #
    # @option params [String] :finding_publishing_frequency
    #   The frequency with which Amazon Macie publishes updates to policy
    #   findings for an account. This includes publishing updates to AWS
    #   Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch
    #   Events). Valid values are:
    #
    # @option params [String] :status
    #   The status of an Amazon Macie account. Valid values are:
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_macie_session({
    #     finding_publishing_frequency: "FIFTEEN_MINUTES", # accepts FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS
    #     status: "PAUSED", # accepts PAUSED, ENABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateMacieSession AWS API Documentation
    #
    # @overload update_macie_session(params = {})
    # @param [Hash] params ({})
    def update_macie_session(params = {}, options = {})
      req = build_request(:update_macie_session, params)
      req.send_request(options)
    end

    # Enables an Amazon Macie master account to suspend or re-enable a
    # member account.
    #
    # @option params [required, String] :id
    #
    # @option params [required, String] :status
    #   The status of an Amazon Macie account. Valid values are:
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_member_session({
    #     id: "__string", # required
    #     status: "PAUSED", # required, accepts PAUSED, ENABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateMemberSession AWS API Documentation
    #
    # @overload update_member_session(params = {})
    # @param [Hash] params ({})
    def update_member_session(params = {}, options = {})
      req = build_request(:update_member_session, params)
      req.send_request(options)
    end

    # Updates Amazon Macie configuration settings for an AWS organization.
    #
    # @option params [required, Boolean] :auto_enable
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration({
    #     auto_enable: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateOrganizationConfiguration AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-macie2'
      context[:gem_version] = '1.13.0'
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
