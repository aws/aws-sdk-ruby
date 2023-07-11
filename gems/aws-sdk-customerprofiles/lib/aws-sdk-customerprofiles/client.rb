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

Aws::Plugins::GlobalConfiguration.add_identifier(:customerprofiles)

module Aws::CustomerProfiles
  # An API client for CustomerProfiles.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CustomerProfiles::Client.new(
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

    @identifier = :customerprofiles

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
    add_plugin(Aws::CustomerProfiles::Plugins::Endpoints)

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
    #   @option options [Aws::CustomerProfiles::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CustomerProfiles::EndpointParameters`
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

    # Associates a new key value with a specific profile, such as a Contact
    # Record ContactId.
    #
    # A profile object can have a single unique key and any number of
    # additional keys that can be used to identify the profile that it
    # belongs to.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :key_name
    #   A searchable identifier of a customer profile. The predefined keys you
    #   can use include: \_account, \_profileId, \_assetId, \_caseId,
    #   \_orderId, \_fullName, \_phone, \_email, \_ctrContactId,
    #   \_marketoLeadId, \_salesforceAccountId, \_salesforceContactId,
    #   \_salesforceAssetId, \_zendeskUserId, \_zendeskExternalId,
    #   \_zendeskTicketId, \_serviceNowSystemId, \_serviceNowIncidentId,
    #   \_segmentUserId, \_shopifyCustomerId, \_shopifyOrderId.
    #
    # @option params [required, Array<String>] :values
    #   A list of key values.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::AddProfileKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddProfileKeyResponse#key_name #key_name} => String
    #   * {Types::AddProfileKeyResponse#values #values} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_profile_key({
    #     profile_id: "uuid", # required
    #     key_name: "name", # required
    #     values: ["string1To255"], # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_name #=> String
    #   resp.values #=> Array
    #   resp.values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AddProfileKey AWS API Documentation
    #
    # @overload add_profile_key(params = {})
    # @param [Hash] params ({})
    def add_profile_key(params = {}, options = {})
      req = build_request(:add_profile_key, params)
      req.send_request(options)
    end

    # Creates a new calculated attribute definition. After creation, new
    # object data ingested into Customer Profiles will be included in the
    # calculated attribute, which can be retrieved for a profile using the
    # [GetCalculatedAttributeForProfile][1] API. Defining a calculated
    # attribute makes it available for all profiles within a domain. Each
    # calculated attribute can only reference one `ObjectType` and at most,
    # two fields from that `ObjectType`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetCalculatedAttributeForProfile.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @option params [String] :display_name
    #   The display name of the calculated attribute.
    #
    # @option params [String] :description
    #   The description of the calculated attribute.
    #
    # @option params [required, Types::AttributeDetails] :attribute_details
    #   Mathematical expression and a list of attribute items specified in
    #   that expression.
    #
    # @option params [Types::Conditions] :conditions
    #   The conditions including range, object count, and threshold for the
    #   calculated attribute.
    #
    # @option params [required, String] :statistic
    #   The aggregation operation to perform for the calculated attribute.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateCalculatedAttributeDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#calculated_attribute_name #calculated_attribute_name} => String
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#display_name #display_name} => String
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#description #description} => String
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#attribute_details #attribute_details} => Types::AttributeDetails
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#conditions #conditions} => Types::Conditions
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#statistic #statistic} => String
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#created_at #created_at} => Time
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_calculated_attribute_definition({
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #     display_name: "displayName",
    #     description: "text",
    #     attribute_details: { # required
    #       attributes: [ # required
    #         {
    #           name: "attributeName", # required
    #         },
    #       ],
    #       expression: "string1To255", # required
    #     },
    #     conditions: {
    #       range: {
    #         value: 1, # required
    #         unit: "DAYS", # required, accepts DAYS
    #       },
    #       object_count: 1,
    #       threshold: {
    #         value: "string1To255", # required
    #         operator: "EQUAL_TO", # required, accepts EQUAL_TO, GREATER_THAN, LESS_THAN, NOT_EQUAL_TO
    #       },
    #     },
    #     statistic: "FIRST_OCCURRENCE", # required, accepts FIRST_OCCURRENCE, LAST_OCCURRENCE, COUNT, SUM, MINIMUM, MAXIMUM, AVERAGE, MAX_OCCURRENCE
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.calculated_attribute_name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.attribute_details.attributes #=> Array
    #   resp.attribute_details.attributes[0].name #=> String
    #   resp.attribute_details.expression #=> String
    #   resp.conditions.range.value #=> Integer
    #   resp.conditions.range.unit #=> String, one of "DAYS"
    #   resp.conditions.object_count #=> Integer
    #   resp.conditions.threshold.value #=> String
    #   resp.conditions.threshold.operator #=> String, one of "EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"
    #   resp.statistic #=> String, one of "FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateCalculatedAttributeDefinition AWS API Documentation
    #
    # @overload create_calculated_attribute_definition(params = {})
    # @param [Hash] params ({})
    def create_calculated_attribute_definition(params = {}, options = {})
      req = build_request(:create_calculated_attribute_definition, params)
      req.send_request(options)
    end

    # Creates a domain, which is a container for all customer data, such as
    # customer profile attributes, object types, profile keys, and
    # encryption keys. You can create multiple domains, and each domain can
    # have multiple third-party integrations.
    #
    # Each Amazon Connect instance can be associated with only one domain.
    # Multiple Amazon Connect instances can be associated with one domain.
    #
    # Use this API or [UpdateDomain][1] to enable [identity resolution][2]:
    # set `Matching` to true.
    #
    # To prevent cross-service impersonation when you call this API, see
    # [Cross-service confused deputy prevention][3] for sample policies that
    # you should apply.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, Integer] :default_expiration_days
    #   The default number of days until the data within the domain expires.
    #
    # @option params [String] :default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used when
    #   no specific type of encryption key is specified. It is used to encrypt
    #   all data before it is placed in permanent or semi-permanent storage.
    #
    # @option params [String] :dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   You must set up a policy on the DeadLetterQueue for the SendMessage
    #   operation to enable Amazon Connect Customer Profiles to send messages
    #   to the DeadLetterQueue.
    #
    # @option params [Types::MatchingRequest] :matching
    #   The process of matching duplicate profiles. If `Matching` = `true`,
    #   Amazon Connect Customer Profiles starts a weekly batch process called
    #   Identity Resolution Job. If you do not specify a date and time for
    #   Identity Resolution Job to run, by default it runs every Saturday at
    #   12AM UTC to detect duplicate profiles in your domains.
    #
    #   After the Identity Resolution Job completes, use the [GetMatches][1]
    #   API to return and review the results. Or, if you have configured
    #   `ExportingConfig` in the `MatchingRequest`, you can download the
    #   results from S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResponse#domain_name #domain_name} => String
    #   * {Types::CreateDomainResponse#default_expiration_days #default_expiration_days} => Integer
    #   * {Types::CreateDomainResponse#default_encryption_key #default_encryption_key} => String
    #   * {Types::CreateDomainResponse#dead_letter_queue_url #dead_letter_queue_url} => String
    #   * {Types::CreateDomainResponse#matching #matching} => Types::MatchingResponse
    #   * {Types::CreateDomainResponse#created_at #created_at} => Time
    #   * {Types::CreateDomainResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateDomainResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     domain_name: "name", # required
    #     default_expiration_days: 1, # required
    #     default_encryption_key: "encryptionKey",
    #     dead_letter_queue_url: "sqsQueueUrl",
    #     matching: {
    #       enabled: false, # required
    #       job_schedule: {
    #         day_of_the_week: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         time: "JobScheduleTime", # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"],
    #           ],
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #           source_name: "string1To255",
    #         },
    #         min_allowed_confidence_score_for_merging: 1.0,
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig",
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.default_expiration_days #=> Integer
    #   resp.default_encryption_key #=> String
    #   resp.dead_letter_queue_url #=> String
    #   resp.matching.enabled #=> Boolean
    #   resp.matching.job_schedule.day_of_the_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.matching.job_schedule.time #=> String
    #   resp.matching.auto_merging.enabled #=> Boolean
    #   resp.matching.auto_merging.consolidation.matching_attributes_list #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0] #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.matching.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.matching.auto_merging.conflict_resolution.source_name #=> String
    #   resp.matching.auto_merging.min_allowed_confidence_score_for_merging #=> Float
    #   resp.matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates an event stream, which is a subscription to real-time events,
    # such as when profiles are created and updated through Amazon Connect
    # Customer Profiles.
    #
    # Each event stream can be associated with only one Kinesis Data Stream
    # destination in the same region and Amazon Web Services account as the
    # customer profiles domain
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :uri
    #   The StreamARN of the destination to deliver profile events to. For
    #   example, arn:aws:kinesis:region:account-id:stream/stream-name
    #
    # @option params [required, String] :event_stream_name
    #   The name of the event stream.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventStreamResponse#event_stream_arn #event_stream_arn} => String
    #   * {Types::CreateEventStreamResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_stream({
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #     event_stream_name: "name", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event_stream_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateEventStream AWS API Documentation
    #
    # @overload create_event_stream(params = {})
    # @param [Hash] params ({})
    def create_event_stream(params = {}, options = {})
      req = build_request(:create_event_stream, params)
      req.send_request(options)
    end

    # Creates an integration workflow. An integration workflow is an async
    # process which ingests historic data and sets up an integration for
    # ongoing updates. The supported Amazon AppFlow sources are Salesforce,
    # ServiceNow, and Marketo.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :workflow_type
    #   The type of workflow. The only supported value is
    #   APPFLOW\_INTEGRATION.
    #
    # @option params [required, Types::IntegrationConfig] :integration_config
    #   Configuration data for integration workflow.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Customer Profiles
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateIntegrationWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationWorkflowResponse#workflow_id #workflow_id} => String
    #   * {Types::CreateIntegrationWorkflowResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration_workflow({
    #     domain_name: "name", # required
    #     workflow_type: "APPFLOW_INTEGRATION", # required, accepts APPFLOW_INTEGRATION
    #     integration_config: { # required
    #       appflow_integration: {
    #         flow_definition: { # required
    #           description: "FlowDescription",
    #           flow_name: "FlowName", # required
    #           kms_arn: "KmsArn", # required
    #           source_flow_config: { # required
    #             connector_profile_name: "ConnectorProfileName",
    #             connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #             incremental_pull_config: {
    #               datetime_type_field_name: "DatetimeTypeFieldName",
    #             },
    #             source_connector_properties: { # required
    #               marketo: {
    #                 object: "Object", # required
    #               },
    #               s3: {
    #                 bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #               },
    #               salesforce: {
    #                 object: "Object", # required
    #                 enable_dynamic_field_update: false,
    #                 include_deleted_records: false,
    #               },
    #               service_now: {
    #                 object: "Object", # required
    #               },
    #               zendesk: {
    #                 object: "Object", # required
    #               },
    #             },
    #           },
    #           tasks: [ # required
    #             {
    #               connector_operator: {
    #                 marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               },
    #               destination_field: "DestinationField",
    #               source_fields: ["stringTo2048"], # required
    #               task_properties: {
    #                 "VALUE" => "Property",
    #               },
    #               task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #             },
    #           ],
    #           trigger_config: { # required
    #             trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #             trigger_properties: {
    #               scheduled: {
    #                 schedule_expression: "ScheduleExpression", # required
    #                 data_pull_mode: "Incremental", # accepts Incremental, Complete
    #                 schedule_start_time: Time.now,
    #                 schedule_end_time: Time.now,
    #                 timezone: "Timezone",
    #                 schedule_offset: 1,
    #                 first_execution_from: Time.now,
    #               },
    #             },
    #           },
    #         },
    #         batches: [
    #           {
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           },
    #         ],
    #       },
    #     },
    #     object_type_name: "typeName", # required
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_id #=> String
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateIntegrationWorkflow AWS API Documentation
    #
    # @overload create_integration_workflow(params = {})
    # @param [Hash] params ({})
    def create_integration_workflow(params = {}, options = {})
      req = build_request(:create_integration_workflow, params)
      req.send_request(options)
    end

    # Creates a standard profile.
    #
    # A standard profile represents the following attributes for a customer
    # profile in a domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :account_number
    #   A unique account number that you have given to the customer.
    #
    # @option params [String] :additional_information
    #   Any additional information relevant to the customer’s profile.
    #
    # @option params [String] :party_type
    #   The type of profile used to describe the customer.
    #
    # @option params [String] :business_name
    #   The name of the customer’s business.
    #
    # @option params [String] :first_name
    #   The customer’s first name.
    #
    # @option params [String] :middle_name
    #   The customer’s middle name.
    #
    # @option params [String] :last_name
    #   The customer’s last name.
    #
    # @option params [String] :birth_date
    #   The customer’s birth date.
    #
    # @option params [String] :gender
    #   The gender with which the customer identifies.
    #
    # @option params [String] :phone_number
    #   The customer’s phone number, which has not been specified as a mobile,
    #   home, or business number.
    #
    # @option params [String] :mobile_phone_number
    #   The customer’s mobile phone number.
    #
    # @option params [String] :home_phone_number
    #   The customer’s home phone number.
    #
    # @option params [String] :business_phone_number
    #   The customer’s business phone number.
    #
    # @option params [String] :email_address
    #   The customer’s email address, which has not been specified as a
    #   personal or business address.
    #
    # @option params [String] :personal_email_address
    #   The customer’s personal email address.
    #
    # @option params [String] :business_email_address
    #   The customer’s business email address.
    #
    # @option params [Types::Address] :address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #
    # @option params [Types::Address] :shipping_address
    #   The customer’s shipping address.
    #
    # @option params [Types::Address] :mailing_address
    #   The customer’s mailing address.
    #
    # @option params [Types::Address] :billing_address
    #   The customer’s billing address.
    #
    # @option params [Hash<String,String>] :attributes
    #   A key value pair of attributes of a customer profile.
    #
    # @option params [String] :party_type_string
    #   An alternative to `PartyType` which accepts any string as input.
    #
    # @option params [String] :gender_string
    #   An alternative to `Gender` which accepts any string as input.
    #
    # @return [Types::CreateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfileResponse#profile_id #profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile({
    #     domain_name: "name", # required
    #     account_number: "string1To255",
    #     additional_information: "string1To1000",
    #     party_type: "INDIVIDUAL", # accepts INDIVIDUAL, BUSINESS, OTHER
    #     business_name: "string1To255",
    #     first_name: "string1To255",
    #     middle_name: "string1To255",
    #     last_name: "string1To255",
    #     birth_date: "string1To255",
    #     gender: "MALE", # accepts MALE, FEMALE, UNSPECIFIED
    #     phone_number: "string1To255",
    #     mobile_phone_number: "string1To255",
    #     home_phone_number: "string1To255",
    #     business_phone_number: "string1To255",
    #     email_address: "string1To255",
    #     personal_email_address: "string1To255",
    #     business_email_address: "string1To255",
    #     address: {
    #       address_1: "string1To255",
    #       address_2: "string1To255",
    #       address_3: "string1To255",
    #       address_4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255",
    #     },
    #     shipping_address: {
    #       address_1: "string1To255",
    #       address_2: "string1To255",
    #       address_3: "string1To255",
    #       address_4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255",
    #     },
    #     mailing_address: {
    #       address_1: "string1To255",
    #       address_2: "string1To255",
    #       address_3: "string1To255",
    #       address_4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255",
    #     },
    #     billing_address: {
    #       address_1: "string1To255",
    #       address_2: "string1To255",
    #       address_3: "string1To255",
    #       address_4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255",
    #     },
    #     attributes: {
    #       "string1To255" => "string1To255",
    #     },
    #     party_type_string: "string1To255",
    #     gender_string: "string1To255",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateProfile AWS API Documentation
    #
    # @overload create_profile(params = {})
    # @param [Hash] params ({})
    def create_profile(params = {}, options = {})
      req = build_request(:create_profile, params)
      req.send_request(options)
    end

    # Deletes an existing calculated attribute definition. Note that
    # deleting a default calculated attribute is possible, however once
    # deleted, you will be unable to undo that action and will need to
    # recreate it on your own using the CreateCalculatedAttributeDefinition
    # API if you want it back.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_calculated_attribute_definition({
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteCalculatedAttributeDefinition AWS API Documentation
    #
    # @overload delete_calculated_attribute_definition(params = {})
    # @param [Hash] params ({})
    def delete_calculated_attribute_definition(params = {}, options = {})
      req = build_request(:delete_calculated_attribute_definition, params)
      req.send_request(options)
    end

    # Deletes a specific domain and all of its customer data, such as
    # customer profile attributes and their related objects.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::DeleteDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Disables and deletes the specified event stream.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :event_stream_name
    #   The name of the event stream
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_stream({
    #     domain_name: "name", # required
    #     event_stream_name: "name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteEventStream AWS API Documentation
    #
    # @overload delete_event_stream(params = {})
    # @param [Hash] params ({})
    def delete_event_stream(params = {}, options = {})
      req = build_request(:delete_event_stream, params)
      req.send_request(options)
    end

    # Removes an integration from a specific domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :uri
    #   The URI of the S3 bucket or any other type of data source.
    #
    # @return [Types::DeleteIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIntegrationResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration({
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteIntegration AWS API Documentation
    #
    # @overload delete_integration(params = {})
    # @param [Hash] params ({})
    def delete_integration(params = {}, options = {})
      req = build_request(:delete_integration, params)
      req.send_request(options)
    end

    # Deletes the standard customer profile and all data pertaining to the
    # profile.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::DeleteProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProfileResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile({
    #     profile_id: "uuid", # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfile AWS API Documentation
    #
    # @overload delete_profile(params = {})
    # @param [Hash] params ({})
    def delete_profile(params = {}, options = {})
      req = build_request(:delete_profile, params)
      req.send_request(options)
    end

    # Removes a searchable key from a customer profile.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :key_name
    #   A searchable identifier of a customer profile.
    #
    # @option params [required, Array<String>] :values
    #   A list of key values.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::DeleteProfileKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProfileKeyResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile_key({
    #     profile_id: "uuid", # required
    #     key_name: "name", # required
    #     values: ["string1To255"], # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileKey AWS API Documentation
    #
    # @overload delete_profile_key(params = {})
    # @param [Hash] params ({})
    def delete_profile_key(params = {}, options = {})
      req = build_request(:delete_profile_key, params)
      req.send_request(options)
    end

    # Removes an object associated with a profile of a given
    # ProfileObjectType.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :profile_object_unique_key
    #   The unique identifier of the profile object generated by the service.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::DeleteProfileObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProfileObjectResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile_object({
    #     profile_id: "uuid", # required
    #     profile_object_unique_key: "string1To255", # required
    #     object_type_name: "typeName", # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObject AWS API Documentation
    #
    # @overload delete_profile_object(params = {})
    # @param [Hash] params ({})
    def delete_profile_object(params = {}, options = {})
      req = build_request(:delete_profile_object, params)
      req.send_request(options)
    end

    # Removes a ProfileObjectType from a specific domain as well as removes
    # all the ProfileObjects of that type. It also disables integrations
    # from this specific ProfileObjectType. In addition, it scrubs all of
    # the fields of the standard profile that were populated from this
    # ProfileObjectType.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @return [Types::DeleteProfileObjectTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProfileObjectTypeResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile_object_type({
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectType AWS API Documentation
    #
    # @overload delete_profile_object_type(params = {})
    # @param [Hash] params ({})
    def delete_profile_object_type(params = {}, options = {})
      req = build_request(:delete_profile_object_type, params)
      req.send_request(options)
    end

    # Deletes the specified workflow and all its corresponding resources.
    # This is an async process.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :workflow_id
    #   Unique identifier for the workflow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     domain_name: "name", # required
    #     workflow_id: "string1To255", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # Tests the auto-merging settings of your Identity Resolution Job
    # without merging your data. It randomly selects a sample of matching
    # groups from the existing matching results, and applies the automerging
    # settings that you provided. You can then view the number of profiles
    # in the sample, the number of matches, and the number of profiles
    # identified to be merged. This enables you to evaluate the accuracy of
    # the attributes in your matching list.
    #
    # You can't view which profiles are matched and would be merged.
    #
    # We strongly recommend you use this API to do a dry run of the
    # automerging process before running the Identity Resolution Job.
    # Include **at least** two matching attributes. If your matching list
    # includes too few attributes (such as only `FirstName` or only
    # `LastName`), there may be a large number of matches. This increases
    # the chances of erroneous merges.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, Types::Consolidation] :consolidation
    #   A list of matching attributes that represent matching criteria.
    #
    # @option params [required, Types::ConflictResolution] :conflict_resolution
    #   How the auto-merging process should resolve conflicts between
    #   different profiles.
    #
    # @option params [Float] :min_allowed_confidence_score_for_merging
    #   Minimum confidence score required for profiles within a matching group
    #   to be merged during the auto-merge process.
    #
    # @return [Types::GetAutoMergingPreviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutoMergingPreviewResponse#domain_name #domain_name} => String
    #   * {Types::GetAutoMergingPreviewResponse#number_of_matches_in_sample #number_of_matches_in_sample} => Integer
    #   * {Types::GetAutoMergingPreviewResponse#number_of_profiles_in_sample #number_of_profiles_in_sample} => Integer
    #   * {Types::GetAutoMergingPreviewResponse#number_of_profiles_will_be_merged #number_of_profiles_will_be_merged} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_auto_merging_preview({
    #     domain_name: "name", # required
    #     consolidation: { # required
    #       matching_attributes_list: [ # required
    #         ["string1To255"],
    #       ],
    #     },
    #     conflict_resolution: { # required
    #       conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #       source_name: "string1To255",
    #     },
    #     min_allowed_confidence_score_for_merging: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.number_of_matches_in_sample #=> Integer
    #   resp.number_of_profiles_in_sample #=> Integer
    #   resp.number_of_profiles_will_be_merged #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetAutoMergingPreview AWS API Documentation
    #
    # @overload get_auto_merging_preview(params = {})
    # @param [Hash] params ({})
    def get_auto_merging_preview(params = {}, options = {})
      req = build_request(:get_auto_merging_preview, params)
      req.send_request(options)
    end

    # Provides more information on a calculated attribute definition for
    # Customer Profiles.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @return [Types::GetCalculatedAttributeDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCalculatedAttributeDefinitionResponse#calculated_attribute_name #calculated_attribute_name} => String
    #   * {Types::GetCalculatedAttributeDefinitionResponse#display_name #display_name} => String
    #   * {Types::GetCalculatedAttributeDefinitionResponse#description #description} => String
    #   * {Types::GetCalculatedAttributeDefinitionResponse#created_at #created_at} => Time
    #   * {Types::GetCalculatedAttributeDefinitionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetCalculatedAttributeDefinitionResponse#statistic #statistic} => String
    #   * {Types::GetCalculatedAttributeDefinitionResponse#conditions #conditions} => Types::Conditions
    #   * {Types::GetCalculatedAttributeDefinitionResponse#attribute_details #attribute_details} => Types::AttributeDetails
    #   * {Types::GetCalculatedAttributeDefinitionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_calculated_attribute_definition({
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.calculated_attribute_name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.statistic #=> String, one of "FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"
    #   resp.conditions.range.value #=> Integer
    #   resp.conditions.range.unit #=> String, one of "DAYS"
    #   resp.conditions.object_count #=> Integer
    #   resp.conditions.threshold.value #=> String
    #   resp.conditions.threshold.operator #=> String, one of "EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"
    #   resp.attribute_details.attributes #=> Array
    #   resp.attribute_details.attributes[0].name #=> String
    #   resp.attribute_details.expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetCalculatedAttributeDefinition AWS API Documentation
    #
    # @overload get_calculated_attribute_definition(params = {})
    # @param [Hash] params ({})
    def get_calculated_attribute_definition(params = {}, options = {})
      req = build_request(:get_calculated_attribute_definition, params)
      req.send_request(options)
    end

    # Retrieve a calculated attribute for a customer profile.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @return [Types::GetCalculatedAttributeForProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCalculatedAttributeForProfileResponse#calculated_attribute_name #calculated_attribute_name} => String
    #   * {Types::GetCalculatedAttributeForProfileResponse#display_name #display_name} => String
    #   * {Types::GetCalculatedAttributeForProfileResponse#is_data_partial #is_data_partial} => String
    #   * {Types::GetCalculatedAttributeForProfileResponse#value #value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_calculated_attribute_for_profile({
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #     calculated_attribute_name: "typeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.calculated_attribute_name #=> String
    #   resp.display_name #=> String
    #   resp.is_data_partial #=> String
    #   resp.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetCalculatedAttributeForProfile AWS API Documentation
    #
    # @overload get_calculated_attribute_for_profile(params = {})
    # @param [Hash] params ({})
    def get_calculated_attribute_for_profile(params = {}, options = {})
      req = build_request(:get_calculated_attribute_for_profile, params)
      req.send_request(options)
    end

    # Returns information about a specific domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::GetDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainResponse#domain_name #domain_name} => String
    #   * {Types::GetDomainResponse#default_expiration_days #default_expiration_days} => Integer
    #   * {Types::GetDomainResponse#default_encryption_key #default_encryption_key} => String
    #   * {Types::GetDomainResponse#dead_letter_queue_url #dead_letter_queue_url} => String
    #   * {Types::GetDomainResponse#stats #stats} => Types::DomainStats
    #   * {Types::GetDomainResponse#matching #matching} => Types::MatchingResponse
    #   * {Types::GetDomainResponse#created_at #created_at} => Time
    #   * {Types::GetDomainResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetDomainResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain({
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.default_expiration_days #=> Integer
    #   resp.default_encryption_key #=> String
    #   resp.dead_letter_queue_url #=> String
    #   resp.stats.profile_count #=> Integer
    #   resp.stats.metering_profile_count #=> Integer
    #   resp.stats.object_count #=> Integer
    #   resp.stats.total_size #=> Integer
    #   resp.matching.enabled #=> Boolean
    #   resp.matching.job_schedule.day_of_the_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.matching.job_schedule.time #=> String
    #   resp.matching.auto_merging.enabled #=> Boolean
    #   resp.matching.auto_merging.consolidation.matching_attributes_list #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0] #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.matching.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.matching.auto_merging.conflict_resolution.source_name #=> String
    #   resp.matching.auto_merging.min_allowed_confidence_score_for_merging #=> Float
    #   resp.matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomain AWS API Documentation
    #
    # @overload get_domain(params = {})
    # @param [Hash] params ({})
    def get_domain(params = {}, options = {})
      req = build_request(:get_domain, params)
      req.send_request(options)
    end

    # Returns information about the specified event stream in a specific
    # domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :event_stream_name
    #   The name of the event stream provided during create operations.
    #
    # @return [Types::GetEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventStreamResponse#domain_name #domain_name} => String
    #   * {Types::GetEventStreamResponse#event_stream_arn #event_stream_arn} => String
    #   * {Types::GetEventStreamResponse#created_at #created_at} => Time
    #   * {Types::GetEventStreamResponse#state #state} => String
    #   * {Types::GetEventStreamResponse#stopped_since #stopped_since} => Time
    #   * {Types::GetEventStreamResponse#destination_details #destination_details} => Types::EventStreamDestinationDetails
    #   * {Types::GetEventStreamResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_stream({
    #     domain_name: "name", # required
    #     event_stream_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.event_stream_arn #=> String
    #   resp.created_at #=> Time
    #   resp.state #=> String, one of "RUNNING", "STOPPED"
    #   resp.stopped_since #=> Time
    #   resp.destination_details.uri #=> String
    #   resp.destination_details.status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.destination_details.unhealthy_since #=> Time
    #   resp.destination_details.message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetEventStream AWS API Documentation
    #
    # @overload get_event_stream(params = {})
    # @param [Hash] params ({})
    def get_event_stream(params = {}, options = {})
      req = build_request(:get_event_stream, params)
      req.send_request(options)
    end

    # Returns information about an Identity Resolution Job in a specific
    # domain.
    #
    # Identity Resolution Jobs are set up using the Amazon Connect admin
    # console. For more information, see [Use Identity Resolution to
    # consolidate similar profiles][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :job_id
    #   The unique identifier of the Identity Resolution Job.
    #
    # @return [Types::GetIdentityResolutionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityResolutionJobResponse#domain_name #domain_name} => String
    #   * {Types::GetIdentityResolutionJobResponse#job_id #job_id} => String
    #   * {Types::GetIdentityResolutionJobResponse#status #status} => String
    #   * {Types::GetIdentityResolutionJobResponse#message #message} => String
    #   * {Types::GetIdentityResolutionJobResponse#job_start_time #job_start_time} => Time
    #   * {Types::GetIdentityResolutionJobResponse#job_end_time #job_end_time} => Time
    #   * {Types::GetIdentityResolutionJobResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetIdentityResolutionJobResponse#job_expiration_time #job_expiration_time} => Time
    #   * {Types::GetIdentityResolutionJobResponse#auto_merging #auto_merging} => Types::AutoMerging
    #   * {Types::GetIdentityResolutionJobResponse#exporting_location #exporting_location} => Types::ExportingLocation
    #   * {Types::GetIdentityResolutionJobResponse#job_stats #job_stats} => Types::JobStats
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_resolution_job({
    #     domain_name: "name", # required
    #     job_id: "uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.job_id #=> String
    #   resp.status #=> String, one of "PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"
    #   resp.message #=> String
    #   resp.job_start_time #=> Time
    #   resp.job_end_time #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.job_expiration_time #=> Time
    #   resp.auto_merging.enabled #=> Boolean
    #   resp.auto_merging.consolidation.matching_attributes_list #=> Array
    #   resp.auto_merging.consolidation.matching_attributes_list[0] #=> Array
    #   resp.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.auto_merging.conflict_resolution.source_name #=> String
    #   resp.auto_merging.min_allowed_confidence_score_for_merging #=> Float
    #   resp.exporting_location.s3_exporting.s3_bucket_name #=> String
    #   resp.exporting_location.s3_exporting.s3_key_name #=> String
    #   resp.job_stats.number_of_profiles_reviewed #=> Integer
    #   resp.job_stats.number_of_matches_found #=> Integer
    #   resp.job_stats.number_of_merges_done #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIdentityResolutionJob AWS API Documentation
    #
    # @overload get_identity_resolution_job(params = {})
    # @param [Hash] params ({})
    def get_identity_resolution_job(params = {}, options = {})
      req = build_request(:get_identity_resolution_job, params)
      req.send_request(options)
    end

    # Returns an integration for a domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :uri
    #   The URI of the S3 bucket or any other type of data source.
    #
    # @return [Types::GetIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationResponse#domain_name #domain_name} => String
    #   * {Types::GetIntegrationResponse#uri #uri} => String
    #   * {Types::GetIntegrationResponse#object_type_name #object_type_name} => String
    #   * {Types::GetIntegrationResponse#created_at #created_at} => Time
    #   * {Types::GetIntegrationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResponse#object_type_names #object_type_names} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResponse#workflow_id #workflow_id} => String
    #   * {Types::GetIntegrationResponse#is_unstructured #is_unstructured} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration({
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.uri #=> String
    #   resp.object_type_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.object_type_names #=> Hash
    #   resp.object_type_names["string1To255"] #=> String
    #   resp.workflow_id #=> String
    #   resp.is_unstructured #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIntegration AWS API Documentation
    #
    # @overload get_integration(params = {})
    # @param [Hash] params ({})
    def get_integration(params = {}, options = {})
      req = build_request(:get_integration, params)
      req.send_request(options)
    end

    # Before calling this API, use [CreateDomain][1] or [UpdateDomain][2] to
    # enable identity resolution: set `Matching` to true.
    #
    # GetMatches returns potentially matching profiles, based on the results
    # of the latest run of a machine learning process.
    #
    # The process of matching duplicate profiles. If `Matching` = `true`,
    # Amazon Connect Customer Profiles starts a weekly batch process called
    # Identity Resolution Job. If you do not specify a date and time for
    # Identity Resolution Job to run, by default it runs every Saturday at
    # 12AM UTC to detect duplicate profiles in your domains.
    #
    #  After the Identity Resolution Job completes, use the [GetMatches][3]
    # API to return and review the results. Or, if you have configured
    # `ExportingConfig` in the `MatchingRequest`, you can download the
    # results from S3.
    #
    # Amazon Connect uses the following profile attributes to identify
    # matches:
    #
    # * PhoneNumber
    #
    # * HomePhoneNumber
    #
    # * BusinessPhoneNumber
    #
    # * MobilePhoneNumber
    #
    # * EmailAddress
    #
    # * PersonalEmailAddress
    #
    # * BusinessEmailAddress
    #
    # * FullName
    #
    # For example, two or more profiles—with spelling mistakes such as
    # **John Doe** and **Jhn Doe**, or different casing email addresses such
    # as **JOHN\_DOE@ANYCOMPANY.COM** and **johndoe@anycompany.com**, or
    # different phone number formats such as **555-010-0000** and
    # **+1-555-010-0000**—can be detected as belonging to the same customer
    # **John Doe** and merged into a unified profile.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html
    # [3]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::GetMatchesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMatchesResponse#next_token #next_token} => String
    #   * {Types::GetMatchesResponse#match_generation_date #match_generation_date} => Time
    #   * {Types::GetMatchesResponse#potential_matches #potential_matches} => Integer
    #   * {Types::GetMatchesResponse#matches #matches} => Array&lt;Types::MatchItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_matches({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.match_generation_date #=> Time
    #   resp.potential_matches #=> Integer
    #   resp.matches #=> Array
    #   resp.matches[0].match_id #=> String
    #   resp.matches[0].profile_ids #=> Array
    #   resp.matches[0].profile_ids[0] #=> String
    #   resp.matches[0].confidence_score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetMatches AWS API Documentation
    #
    # @overload get_matches(params = {})
    # @param [Hash] params ({})
    def get_matches(params = {}, options = {})
      req = build_request(:get_matches, params)
      req.send_request(options)
    end

    # Returns the object types for a specific domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @return [Types::GetProfileObjectTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileObjectTypeResponse#object_type_name #object_type_name} => String
    #   * {Types::GetProfileObjectTypeResponse#description #description} => String
    #   * {Types::GetProfileObjectTypeResponse#template_id #template_id} => String
    #   * {Types::GetProfileObjectTypeResponse#expiration_days #expiration_days} => Integer
    #   * {Types::GetProfileObjectTypeResponse#encryption_key #encryption_key} => String
    #   * {Types::GetProfileObjectTypeResponse#allow_profile_creation #allow_profile_creation} => Boolean
    #   * {Types::GetProfileObjectTypeResponse#source_last_updated_timestamp_format #source_last_updated_timestamp_format} => String
    #   * {Types::GetProfileObjectTypeResponse#fields #fields} => Hash&lt;String,Types::ObjectTypeField&gt;
    #   * {Types::GetProfileObjectTypeResponse#keys #keys} => Hash&lt;String,Array&lt;Types::ObjectTypeKey&gt;&gt;
    #   * {Types::GetProfileObjectTypeResponse#created_at #created_at} => Time
    #   * {Types::GetProfileObjectTypeResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetProfileObjectTypeResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_object_type({
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.object_type_name #=> String
    #   resp.description #=> String
    #   resp.template_id #=> String
    #   resp.expiration_days #=> Integer
    #   resp.encryption_key #=> String
    #   resp.allow_profile_creation #=> Boolean
    #   resp.source_last_updated_timestamp_format #=> String
    #   resp.fields #=> Hash
    #   resp.fields["name"].source #=> String
    #   resp.fields["name"].target #=> String
    #   resp.fields["name"].content_type #=> String, one of "STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"
    #   resp.keys #=> Hash
    #   resp.keys["name"] #=> Array
    #   resp.keys["name"][0].standard_identifiers #=> Array
    #   resp.keys["name"][0].standard_identifiers[0] #=> String, one of "PROFILE", "ASSET", "CASE", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY", "ORDER"
    #   resp.keys["name"][0].field_names #=> Array
    #   resp.keys["name"][0].field_names[0] #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectType AWS API Documentation
    #
    # @overload get_profile_object_type(params = {})
    # @param [Hash] params ({})
    def get_profile_object_type(params = {}, options = {})
      req = build_request(:get_profile_object_type, params)
      req.send_request(options)
    end

    # Returns the template information for a specific object type.
    #
    # A template is a predefined ProfileObjectType, such as
    # “Salesforce-Account” or “Salesforce-Contact.” When a user sends a
    # ProfileObject, using the PutProfileObject API, with an ObjectTypeName
    # that matches one of the TemplateIds, it uses the mappings from the
    # template.
    #
    # @option params [required, String] :template_id
    #   A unique identifier for the object template.
    #
    # @return [Types::GetProfileObjectTypeTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileObjectTypeTemplateResponse#template_id #template_id} => String
    #   * {Types::GetProfileObjectTypeTemplateResponse#source_name #source_name} => String
    #   * {Types::GetProfileObjectTypeTemplateResponse#source_object #source_object} => String
    #   * {Types::GetProfileObjectTypeTemplateResponse#allow_profile_creation #allow_profile_creation} => Boolean
    #   * {Types::GetProfileObjectTypeTemplateResponse#source_last_updated_timestamp_format #source_last_updated_timestamp_format} => String
    #   * {Types::GetProfileObjectTypeTemplateResponse#fields #fields} => Hash&lt;String,Types::ObjectTypeField&gt;
    #   * {Types::GetProfileObjectTypeTemplateResponse#keys #keys} => Hash&lt;String,Array&lt;Types::ObjectTypeKey&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_object_type_template({
    #     template_id: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.source_name #=> String
    #   resp.source_object #=> String
    #   resp.allow_profile_creation #=> Boolean
    #   resp.source_last_updated_timestamp_format #=> String
    #   resp.fields #=> Hash
    #   resp.fields["name"].source #=> String
    #   resp.fields["name"].target #=> String
    #   resp.fields["name"].content_type #=> String, one of "STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"
    #   resp.keys #=> Hash
    #   resp.keys["name"] #=> Array
    #   resp.keys["name"][0].standard_identifiers #=> Array
    #   resp.keys["name"][0].standard_identifiers[0] #=> String, one of "PROFILE", "ASSET", "CASE", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY", "ORDER"
    #   resp.keys["name"][0].field_names #=> Array
    #   resp.keys["name"][0].field_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeTemplate AWS API Documentation
    #
    # @overload get_profile_object_type_template(params = {})
    # @param [Hash] params ({})
    def get_profile_object_type_template(params = {}, options = {})
      req = build_request(:get_profile_object_type_template, params)
      req.send_request(options)
    end

    # Get details of specified workflow.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :workflow_id
    #   Unique identifier for the workflow.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#workflow_id #workflow_id} => String
    #   * {Types::GetWorkflowResponse#workflow_type #workflow_type} => String
    #   * {Types::GetWorkflowResponse#status #status} => String
    #   * {Types::GetWorkflowResponse#error_description #error_description} => String
    #   * {Types::GetWorkflowResponse#start_date #start_date} => Time
    #   * {Types::GetWorkflowResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetWorkflowResponse#attributes #attributes} => Types::WorkflowAttributes
    #   * {Types::GetWorkflowResponse#metrics #metrics} => Types::WorkflowMetrics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     domain_name: "name", # required
    #     workflow_id: "uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_id #=> String
    #   resp.workflow_type #=> String, one of "APPFLOW_INTEGRATION"
    #   resp.status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"
    #   resp.error_description #=> String
    #   resp.start_date #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.attributes.appflow_integration.source_connector_type #=> String, one of "Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"
    #   resp.attributes.appflow_integration.connector_profile_name #=> String
    #   resp.attributes.appflow_integration.role_arn #=> String
    #   resp.metrics.appflow_integration.records_processed #=> Integer
    #   resp.metrics.appflow_integration.steps_completed #=> Integer
    #   resp.metrics.appflow_integration.total_steps #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Get granular list of steps in workflow.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :workflow_id
    #   Unique identifier for the workflow.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::GetWorkflowStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowStepsResponse#workflow_id #workflow_id} => String
    #   * {Types::GetWorkflowStepsResponse#workflow_type #workflow_type} => String
    #   * {Types::GetWorkflowStepsResponse#items #items} => Array&lt;Types::WorkflowStepItem&gt;
    #   * {Types::GetWorkflowStepsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_steps({
    #     domain_name: "name", # required
    #     workflow_id: "uuid", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_id #=> String
    #   resp.workflow_type #=> String, one of "APPFLOW_INTEGRATION"
    #   resp.items #=> Array
    #   resp.items[0].appflow_integration.flow_name #=> String
    #   resp.items[0].appflow_integration.status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"
    #   resp.items[0].appflow_integration.execution_message #=> String
    #   resp.items[0].appflow_integration.records_processed #=> Integer
    #   resp.items[0].appflow_integration.batch_records_start_time #=> String
    #   resp.items[0].appflow_integration.batch_records_end_time #=> String
    #   resp.items[0].appflow_integration.created_at #=> Time
    #   resp.items[0].appflow_integration.last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetWorkflowSteps AWS API Documentation
    #
    # @overload get_workflow_steps(params = {})
    # @param [Hash] params ({})
    def get_workflow_steps(params = {}, options = {})
      req = build_request(:get_workflow_steps, params)
      req.send_request(options)
    end

    # Lists all of the integrations associated to a specific URI in the AWS
    # account.
    #
    # @option params [required, String] :uri
    #   The URI of the S3 bucket or any other type of data source.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous ListAccountIntegrations API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [Boolean] :include_hidden
    #   Boolean to indicate if hidden integration should be returned. Defaults
    #   to `False`.
    #
    # @return [Types::ListAccountIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountIntegrationsResponse#items #items} => Array&lt;Types::ListIntegrationItem&gt;
    #   * {Types::ListAccountIntegrationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_integrations({
    #     uri: "string1To255", # required
    #     next_token: "token",
    #     max_results: 1,
    #     include_hidden: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].uri #=> String
    #   resp.items[0].object_type_name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].object_type_names #=> Hash
    #   resp.items[0].object_type_names["string1To255"] #=> String
    #   resp.items[0].workflow_id #=> String
    #   resp.items[0].is_unstructured #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListAccountIntegrations AWS API Documentation
    #
    # @overload list_account_integrations(params = {})
    # @param [Hash] params ({})
    def list_account_integrations(params = {}, options = {})
      req = build_request(:list_account_integrations, params)
      req.send_request(options)
    end

    # Lists calculated attribute definitions for Customer Profiles
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous call to
    #   ListCalculatedAttributeDefinitions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of calculated attribute definitions returned per
    #   page.
    #
    # @return [Types::ListCalculatedAttributeDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCalculatedAttributeDefinitionsResponse#items #items} => Array&lt;Types::ListCalculatedAttributeDefinitionItem&gt;
    #   * {Types::ListCalculatedAttributeDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_calculated_attribute_definitions({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].calculated_attribute_name #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributeDefinitions AWS API Documentation
    #
    # @overload list_calculated_attribute_definitions(params = {})
    # @param [Hash] params ({})
    def list_calculated_attribute_definitions(params = {}, options = {})
      req = build_request(:list_calculated_attribute_definitions, params)
      req.send_request(options)
    end

    # Retrieve a list of calculated attributes for a customer profile.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous call to
    #   ListCalculatedAttributesForProfile.
    #
    # @option params [Integer] :max_results
    #   The maximum number of calculated attributes returned per page.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @return [Types::ListCalculatedAttributesForProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCalculatedAttributesForProfileResponse#items #items} => Array&lt;Types::ListCalculatedAttributeForProfileItem&gt;
    #   * {Types::ListCalculatedAttributesForProfileResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_calculated_attributes_for_profile({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].calculated_attribute_name #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].is_data_partial #=> String
    #   resp.items[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributesForProfile AWS API Documentation
    #
    # @overload list_calculated_attributes_for_profile(params = {})
    # @param [Hash] params ({})
    def list_calculated_attributes_for_profile(params = {}, options = {})
      req = build_request(:list_calculated_attributes_for_profile, params)
      req.send_request(options)
    end

    # Returns a list of all the domains for an AWS account that have been
    # created.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous ListDomain API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsResponse#items #items} => Array&lt;Types::ListDomainItem&gt;
    #   * {Types::ListDomainsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Returns a list of all the event streams in a specific domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListEventStreamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventStreamsResponse#items #items} => Array&lt;Types::EventStreamSummary&gt;
    #   * {Types::ListEventStreamsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_streams({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].event_stream_name #=> String
    #   resp.items[0].event_stream_arn #=> String
    #   resp.items[0].state #=> String, one of "RUNNING", "STOPPED"
    #   resp.items[0].stopped_since #=> Time
    #   resp.items[0].destination_summary.uri #=> String
    #   resp.items[0].destination_summary.status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.items[0].destination_summary.unhealthy_since #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListEventStreams AWS API Documentation
    #
    # @overload list_event_streams(params = {})
    # @param [Hash] params ({})
    def list_event_streams(params = {}, options = {})
      req = build_request(:list_event_streams, params)
      req.send_request(options)
    end

    # Lists all of the Identity Resolution Jobs in your domain. The response
    # sorts the list by `JobStartTime`.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListIdentityResolutionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityResolutionJobsResponse#identity_resolution_jobs_list #identity_resolution_jobs_list} => Array&lt;Types::IdentityResolutionJob&gt;
    #   * {Types::ListIdentityResolutionJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_resolution_jobs({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_resolution_jobs_list #=> Array
    #   resp.identity_resolution_jobs_list[0].domain_name #=> String
    #   resp.identity_resolution_jobs_list[0].job_id #=> String
    #   resp.identity_resolution_jobs_list[0].status #=> String, one of "PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"
    #   resp.identity_resolution_jobs_list[0].job_start_time #=> Time
    #   resp.identity_resolution_jobs_list[0].job_end_time #=> Time
    #   resp.identity_resolution_jobs_list[0].job_stats.number_of_profiles_reviewed #=> Integer
    #   resp.identity_resolution_jobs_list[0].job_stats.number_of_matches_found #=> Integer
    #   resp.identity_resolution_jobs_list[0].job_stats.number_of_merges_done #=> Integer
    #   resp.identity_resolution_jobs_list[0].exporting_location.s3_exporting.s3_bucket_name #=> String
    #   resp.identity_resolution_jobs_list[0].exporting_location.s3_exporting.s3_key_name #=> String
    #   resp.identity_resolution_jobs_list[0].message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIdentityResolutionJobs AWS API Documentation
    #
    # @overload list_identity_resolution_jobs(params = {})
    # @param [Hash] params ({})
    def list_identity_resolution_jobs(params = {}, options = {})
      req = build_request(:list_identity_resolution_jobs, params)
      req.send_request(options)
    end

    # Lists all of the integrations in your domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous ListIntegrations API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [Boolean] :include_hidden
    #   Boolean to indicate if hidden integration should be returned. Defaults
    #   to `False`.
    #
    # @return [Types::ListIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntegrationsResponse#items #items} => Array&lt;Types::ListIntegrationItem&gt;
    #   * {Types::ListIntegrationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integrations({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #     include_hidden: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].uri #=> String
    #   resp.items[0].object_type_name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].object_type_names #=> Hash
    #   resp.items[0].object_type_names["string1To255"] #=> String
    #   resp.items[0].workflow_id #=> String
    #   resp.items[0].is_unstructured #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIntegrations AWS API Documentation
    #
    # @overload list_integrations(params = {})
    # @param [Hash] params ({})
    def list_integrations(params = {}, options = {})
      req = build_request(:list_integrations, params)
      req.send_request(options)
    end

    # Lists all of the template information for object types.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous ListObjectTypeTemplates API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListProfileObjectTypeTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileObjectTypeTemplatesResponse#items #items} => Array&lt;Types::ListProfileObjectTypeTemplateItem&gt;
    #   * {Types::ListProfileObjectTypeTemplatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_object_type_templates({
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].template_id #=> String
    #   resp.items[0].source_name #=> String
    #   resp.items[0].source_object #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeTemplates AWS API Documentation
    #
    # @overload list_profile_object_type_templates(params = {})
    # @param [Hash] params ({})
    def list_profile_object_type_templates(params = {}, options = {})
      req = build_request(:list_profile_object_type_templates, params)
      req.send_request(options)
    end

    # Lists all of the templates available within the service.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListProfileObjectTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileObjectTypesResponse#items #items} => Array&lt;Types::ListProfileObjectTypeItem&gt;
    #   * {Types::ListProfileObjectTypesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_object_types({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].object_type_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypes AWS API Documentation
    #
    # @overload list_profile_object_types(params = {})
    # @param [Hash] params ({})
    def list_profile_object_types(params = {}, options = {})
      req = build_request(:list_profile_object_types, params)
      req.send_request(options)
    end

    # Returns a list of objects associated with a profile of a given
    # ProfileObjectType.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous call to ListProfileObjects.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [Types::ObjectFilter] :object_filter
    #   Applies a filter to the response to include profile objects with the
    #   specified index values.
    #
    # @return [Types::ListProfileObjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileObjectsResponse#items #items} => Array&lt;Types::ListProfileObjectsItem&gt;
    #   * {Types::ListProfileObjectsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_objects({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #     profile_id: "uuid", # required
    #     object_filter: {
    #       key_name: "name", # required
    #       values: ["string1To255"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].object_type_name #=> String
    #   resp.items[0].profile_object_unique_key #=> String
    #   resp.items[0].object #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjects AWS API Documentation
    #
    # @overload list_profile_objects(params = {})
    # @param [Hash] params ({})
    def list_profile_objects(params = {}, options = {})
      req = build_request(:list_profile_objects, params)
      req.send_request(options)
    end

    # Displays the tags associated with an Amazon Connect Customer Profiles
    # resource. In Connect Customer Profiles, domains, profile object types,
    # and integrations can be tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which you want to view tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TagArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Query to list all workflows.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :workflow_type
    #   The type of workflow. The only supported value is
    #   APPFLOW\_INTEGRATION.
    #
    # @option params [String] :status
    #   Status of workflow execution.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_start_date
    #   Retrieve workflows started after timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_end_date
    #   Retrieve workflows ended after timestamp.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#items #items} => Array&lt;Types::ListWorkflowsItem&gt;
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     domain_name: "name", # required
    #     workflow_type: "APPFLOW_INTEGRATION", # accepts APPFLOW_INTEGRATION
    #     status: "NOT_STARTED", # accepts NOT_STARTED, IN_PROGRESS, COMPLETE, FAILED, SPLIT, RETRY, CANCELLED
    #     query_start_date: Time.now,
    #     query_end_date: Time.now,
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].workflow_type #=> String, one of "APPFLOW_INTEGRATION"
    #   resp.items[0].workflow_id #=> String
    #   resp.items[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"
    #   resp.items[0].status_description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Runs an AWS Lambda job that does the following:
    #
    # 1.  All the profileKeys in the `ProfileToBeMerged` will be moved to
    #     the main profile.
    #
    # 2.  All the objects in the `ProfileToBeMerged` will be moved to the
    #     main profile.
    #
    # 3.  All the `ProfileToBeMerged` will be deleted at the end.
    #
    # 4.  All the profileKeys in the `ProfileIdsToBeMerged` will be moved to
    #     the main profile.
    #
    # 5.  Standard fields are merged as follows:
    #
    #     1.  Fields are always "union"-ed if there are no conflicts in
    #         standard fields or attributeKeys.
    #
    #     2.  When there are conflicting fields:
    #
    #         1.  If no `SourceProfileIds` entry is specified, the main
    #             Profile value is always taken.
    #
    #         2.  If a `SourceProfileIds` entry is specified, the specified
    #             profileId is always taken, even if it is a NULL value.
    #
    # You can use MergeProfiles together with [GetMatches][1], which returns
    # potentially matching profiles, or use it with the results of another
    # matching system. After profiles have been merged, they cannot be
    # separated (unmerged).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :main_profile_id
    #   The identifier of the profile to be taken.
    #
    # @option params [required, Array<String>] :profile_ids_to_be_merged
    #   The identifier of the profile to be merged into MainProfileId.
    #
    # @option params [Types::FieldSourceProfileIds] :field_source_profile_ids
    #   The identifiers of the fields in the profile that has the information
    #   you want to apply to the merge. For example, say you want to merge
    #   EmailAddress from Profile1 into MainProfile. This would be the
    #   identifier of the EmailAddress field in Profile1.
    #
    # @return [Types::MergeProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MergeProfilesResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_profiles({
    #     domain_name: "name", # required
    #     main_profile_id: "uuid", # required
    #     profile_ids_to_be_merged: ["uuid"], # required
    #     field_source_profile_ids: {
    #       account_number: "uuid",
    #       additional_information: "uuid",
    #       party_type: "uuid",
    #       business_name: "uuid",
    #       first_name: "uuid",
    #       middle_name: "uuid",
    #       last_name: "uuid",
    #       birth_date: "uuid",
    #       gender: "uuid",
    #       phone_number: "uuid",
    #       mobile_phone_number: "uuid",
    #       home_phone_number: "uuid",
    #       business_phone_number: "uuid",
    #       email_address: "uuid",
    #       personal_email_address: "uuid",
    #       business_email_address: "uuid",
    #       address: "uuid",
    #       shipping_address: "uuid",
    #       mailing_address: "uuid",
    #       billing_address: "uuid",
    #       attributes: {
    #         "string1To255" => "uuid",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/MergeProfiles AWS API Documentation
    #
    # @overload merge_profiles(params = {})
    # @param [Hash] params ({})
    def merge_profiles(params = {}, options = {})
      req = build_request(:merge_profiles, params)
      req.send_request(options)
    end

    # Adds an integration between the service and a third-party service,
    # which includes Amazon AppFlow and Amazon Connect.
    #
    # An integration can belong to only one domain.
    #
    # To add or remove tags on an existing Integration, see [ TagResource
    # ][1]/[ UntagResource][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :uri
    #   The URI of the S3 bucket or any other type of data source.
    #
    # @option params [String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @option params [Types::FlowDefinition] :flow_definition
    #   The configuration that controls how Customer Profiles retrieves data
    #   from the source.
    #
    # @option params [Hash<String,String>] :object_type_names
    #   A map in which each key is an event type from an external application
    #   such as Segment or Shopify, and each value is an `ObjectTypeName`
    #   (template) used to ingest the event. It supports the following event
    #   types: `SegmentIdentify`, `ShopifyCreateCustomers`,
    #   `ShopifyUpdateCustomers`, `ShopifyCreateDraftOrders`,
    #   `ShopifyUpdateDraftOrders`, `ShopifyCreateOrders`, and
    #   `ShopifyUpdatedOrders`.
    #
    # @return [Types::PutIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutIntegrationResponse#domain_name #domain_name} => String
    #   * {Types::PutIntegrationResponse#uri #uri} => String
    #   * {Types::PutIntegrationResponse#object_type_name #object_type_name} => String
    #   * {Types::PutIntegrationResponse#created_at #created_at} => Time
    #   * {Types::PutIntegrationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::PutIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::PutIntegrationResponse#object_type_names #object_type_names} => Hash&lt;String,String&gt;
    #   * {Types::PutIntegrationResponse#workflow_id #workflow_id} => String
    #   * {Types::PutIntegrationResponse#is_unstructured #is_unstructured} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_integration({
    #     domain_name: "name", # required
    #     uri: "string1To255",
    #     object_type_name: "typeName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     flow_definition: {
    #       description: "FlowDescription",
    #       flow_name: "FlowName", # required
    #       kms_arn: "KmsArn", # required
    #       source_flow_config: { # required
    #         connector_profile_name: "ConnectorProfileName",
    #         connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #         incremental_pull_config: {
    #           datetime_type_field_name: "DatetimeTypeFieldName",
    #         },
    #         source_connector_properties: { # required
    #           marketo: {
    #             object: "Object", # required
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             enable_dynamic_field_update: false,
    #             include_deleted_records: false,
    #           },
    #           service_now: {
    #             object: "Object", # required
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #           },
    #         },
    #       },
    #       tasks: [ # required
    #         {
    #           connector_operator: {
    #             marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           },
    #           destination_field: "DestinationField",
    #           source_fields: ["stringTo2048"], # required
    #           task_properties: {
    #             "VALUE" => "Property",
    #           },
    #           task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #         },
    #       ],
    #       trigger_config: { # required
    #         trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #         trigger_properties: {
    #           scheduled: {
    #             schedule_expression: "ScheduleExpression", # required
    #             data_pull_mode: "Incremental", # accepts Incremental, Complete
    #             schedule_start_time: Time.now,
    #             schedule_end_time: Time.now,
    #             timezone: "Timezone",
    #             schedule_offset: 1,
    #             first_execution_from: Time.now,
    #           },
    #         },
    #       },
    #     },
    #     object_type_names: {
    #       "string1To255" => "typeName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.uri #=> String
    #   resp.object_type_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.object_type_names #=> Hash
    #   resp.object_type_names["string1To255"] #=> String
    #   resp.workflow_id #=> String
    #   resp.is_unstructured #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutIntegration AWS API Documentation
    #
    # @overload put_integration(params = {})
    # @param [Hash] params ({})
    def put_integration(params = {}, options = {})
      req = build_request(:put_integration, params)
      req.send_request(options)
    end

    # Adds additional objects to customer profiles of a given ObjectType.
    #
    # When adding a specific profile object, like a Contact Record, an
    # inferred profile can get created if it is not mapped to an existing
    # profile. The resulting profile will only have a phone number populated
    # in the standard ProfileObject. Any additional Contact Records with the
    # same phone number will be mapped to the same inferred profile.
    #
    # When a ProfileObject is created and if a ProfileObjectType already
    # exists for the ProfileObject, it will provide data to a standard
    # profile depending on the ProfileObjectType definition.
    #
    # PutProfileObject needs an ObjectType, which can be created using
    # PutProfileObjectType.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :object
    #   A string that is serialized from a JSON object.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::PutProfileObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProfileObjectResponse#profile_object_unique_key #profile_object_unique_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_profile_object({
    #     object_type_name: "typeName", # required
    #     object: "stringifiedJson", # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_object_unique_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObject AWS API Documentation
    #
    # @overload put_profile_object(params = {})
    # @param [Hash] params ({})
    def put_profile_object(params = {}, options = {})
      req = build_request(:put_profile_object, params)
      req.send_request(options)
    end

    # Defines a ProfileObjectType.
    #
    # To add or remove tags on an existing ObjectType, see [
    # TagResource][1]/[UntagResource][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :description
    #   Description of the profile object type.
    #
    # @option params [String] :template_id
    #   A unique identifier for the object template. For some attributes in
    #   the request, the service will use the default value from the object
    #   template when TemplateId is present. If these attributes are present
    #   in the request, the service may return a `BadRequestException`. These
    #   attributes include: AllowProfileCreation,
    #   SourceLastUpdatedTimestampFormat, Fields, and Keys. For example, if
    #   AllowProfileCreation is set to true when TemplateId is set, the
    #   service may return a `BadRequestException`.
    #
    # @option params [Integer] :expiration_days
    #   The number of days until the data in the object expires.
    #
    # @option params [String] :encryption_key
    #   The customer-provided key to encrypt the profile object that will be
    #   created in this profile object type.
    #
    # @option params [Boolean] :allow_profile_creation
    #   Indicates whether a profile should be created when data is received if
    #   one doesn’t exist for an object of this type. The default is `FALSE`.
    #   If the AllowProfileCreation flag is set to `FALSE`, then the service
    #   tries to fetch a standard profile and associate this object with the
    #   profile. If it is set to `TRUE`, and if no match is found, then the
    #   service creates a new standard profile.
    #
    # @option params [String] :source_last_updated_timestamp_format
    #   The format of your `sourceLastUpdatedTimestamp` that was previously
    #   set up.
    #
    # @option params [Hash<String,Types::ObjectTypeField>] :fields
    #   A map of the name and ObjectType field.
    #
    # @option params [Hash<String,Array>] :keys
    #   A list of unique keys that can be used to map data to the profile.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::PutProfileObjectTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProfileObjectTypeResponse#object_type_name #object_type_name} => String
    #   * {Types::PutProfileObjectTypeResponse#description #description} => String
    #   * {Types::PutProfileObjectTypeResponse#template_id #template_id} => String
    #   * {Types::PutProfileObjectTypeResponse#expiration_days #expiration_days} => Integer
    #   * {Types::PutProfileObjectTypeResponse#encryption_key #encryption_key} => String
    #   * {Types::PutProfileObjectTypeResponse#allow_profile_creation #allow_profile_creation} => Boolean
    #   * {Types::PutProfileObjectTypeResponse#source_last_updated_timestamp_format #source_last_updated_timestamp_format} => String
    #   * {Types::PutProfileObjectTypeResponse#fields #fields} => Hash&lt;String,Types::ObjectTypeField&gt;
    #   * {Types::PutProfileObjectTypeResponse#keys #keys} => Hash&lt;String,Array&lt;Types::ObjectTypeKey&gt;&gt;
    #   * {Types::PutProfileObjectTypeResponse#created_at #created_at} => Time
    #   * {Types::PutProfileObjectTypeResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::PutProfileObjectTypeResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_profile_object_type({
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #     description: "text", # required
    #     template_id: "name",
    #     expiration_days: 1,
    #     encryption_key: "encryptionKey",
    #     allow_profile_creation: false,
    #     source_last_updated_timestamp_format: "string1To255",
    #     fields: {
    #       "name" => {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING", # accepts STRING, NUMBER, PHONE_NUMBER, EMAIL_ADDRESS, NAME
    #       },
    #     },
    #     keys: {
    #       "name" => [
    #         {
    #           standard_identifiers: ["PROFILE"], # accepts PROFILE, ASSET, CASE, UNIQUE, SECONDARY, LOOKUP_ONLY, NEW_ONLY, ORDER
    #           field_names: ["name"],
    #         },
    #       ],
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.object_type_name #=> String
    #   resp.description #=> String
    #   resp.template_id #=> String
    #   resp.expiration_days #=> Integer
    #   resp.encryption_key #=> String
    #   resp.allow_profile_creation #=> Boolean
    #   resp.source_last_updated_timestamp_format #=> String
    #   resp.fields #=> Hash
    #   resp.fields["name"].source #=> String
    #   resp.fields["name"].target #=> String
    #   resp.fields["name"].content_type #=> String, one of "STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"
    #   resp.keys #=> Hash
    #   resp.keys["name"] #=> Array
    #   resp.keys["name"][0].standard_identifiers #=> Array
    #   resp.keys["name"][0].standard_identifiers[0] #=> String, one of "PROFILE", "ASSET", "CASE", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY", "ORDER"
    #   resp.keys["name"][0].field_names #=> Array
    #   resp.keys["name"][0].field_names[0] #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectType AWS API Documentation
    #
    # @overload put_profile_object_type(params = {})
    # @param [Hash] params ({})
    def put_profile_object_type(params = {}, options = {})
      req = build_request(:put_profile_object_type, params)
      req.send_request(options)
    end

    # Searches for profiles within a specific domain using one or more
    # predefined search keys (e.g., \_fullName, \_phone, \_email, \_account,
    # etc.) and/or custom-defined search keys. A search key is a data type
    # pair that consists of a `KeyName` and `Values` list.
    #
    # This operation supports searching for profiles with a minimum of 1
    # key-value(s) pair and up to 5 key-value(s) pairs using either `AND` or
    # `OR` logic.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous SearchProfiles API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    #   The default is 20 if this parameter is not included in the request.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :key_name
    #   A searchable identifier of a customer profile. The predefined keys you
    #   can use to search include: \_account, \_profileId, \_assetId,
    #   \_caseId, \_orderId, \_fullName, \_phone, \_email, \_ctrContactId,
    #   \_marketoLeadId, \_salesforceAccountId, \_salesforceContactId,
    #   \_salesforceAssetId, \_zendeskUserId, \_zendeskExternalId,
    #   \_zendeskTicketId, \_serviceNowSystemId, \_serviceNowIncidentId,
    #   \_segmentUserId, \_shopifyCustomerId, \_shopifyOrderId.
    #
    # @option params [required, Array<String>] :values
    #   A list of key values.
    #
    # @option params [Array<Types::AdditionalSearchKey>] :additional_search_keys
    #   A list of `AdditionalSearchKey` objects that are each searchable
    #   identifiers of a profile. Each `AdditionalSearchKey` object contains a
    #   `KeyName` and a list of `Values` associated with that specific key
    #   (i.e., a key-value(s) pair). These additional search keys will be used
    #   in conjunction with the `LogicalOperator` and the required `KeyName`
    #   and `Values` parameters to search for profiles that satisfy the search
    #   criteria.
    #
    # @option params [String] :logical_operator
    #   Relationship between all specified search keys that will be used to
    #   search for profiles. This includes the required `KeyName` and `Values`
    #   parameters as well as any key-value(s) pairs specified in the
    #   `AdditionalSearchKeys` list.
    #
    #   This parameter influences which profiles will be returned in the
    #   response in the following manner:
    #
    #   * `AND` - The response only includes profiles that match all of the
    #     search keys.
    #
    #   * `OR` - The response includes profiles that match at least one of the
    #     search keys.
    #
    #   The `OR` relationship is the default behavior if this parameter is not
    #   included in the request.
    #
    # @return [Types::SearchProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProfilesResponse#items #items} => Array&lt;Types::Profile&gt;
    #   * {Types::SearchProfilesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_profiles({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     key_name: "name", # required
    #     values: ["string1To255"], # required
    #     additional_search_keys: [
    #       {
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #       },
    #     ],
    #     logical_operator: "AND", # accepts AND, OR
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].profile_id #=> String
    #   resp.items[0].account_number #=> String
    #   resp.items[0].additional_information #=> String
    #   resp.items[0].party_type #=> String, one of "INDIVIDUAL", "BUSINESS", "OTHER"
    #   resp.items[0].business_name #=> String
    #   resp.items[0].first_name #=> String
    #   resp.items[0].middle_name #=> String
    #   resp.items[0].last_name #=> String
    #   resp.items[0].birth_date #=> String
    #   resp.items[0].gender #=> String, one of "MALE", "FEMALE", "UNSPECIFIED"
    #   resp.items[0].phone_number #=> String
    #   resp.items[0].mobile_phone_number #=> String
    #   resp.items[0].home_phone_number #=> String
    #   resp.items[0].business_phone_number #=> String
    #   resp.items[0].email_address #=> String
    #   resp.items[0].personal_email_address #=> String
    #   resp.items[0].business_email_address #=> String
    #   resp.items[0].address.address_1 #=> String
    #   resp.items[0].address.address_2 #=> String
    #   resp.items[0].address.address_3 #=> String
    #   resp.items[0].address.address_4 #=> String
    #   resp.items[0].address.city #=> String
    #   resp.items[0].address.county #=> String
    #   resp.items[0].address.state #=> String
    #   resp.items[0].address.province #=> String
    #   resp.items[0].address.country #=> String
    #   resp.items[0].address.postal_code #=> String
    #   resp.items[0].shipping_address.address_1 #=> String
    #   resp.items[0].shipping_address.address_2 #=> String
    #   resp.items[0].shipping_address.address_3 #=> String
    #   resp.items[0].shipping_address.address_4 #=> String
    #   resp.items[0].shipping_address.city #=> String
    #   resp.items[0].shipping_address.county #=> String
    #   resp.items[0].shipping_address.state #=> String
    #   resp.items[0].shipping_address.province #=> String
    #   resp.items[0].shipping_address.country #=> String
    #   resp.items[0].shipping_address.postal_code #=> String
    #   resp.items[0].mailing_address.address_1 #=> String
    #   resp.items[0].mailing_address.address_2 #=> String
    #   resp.items[0].mailing_address.address_3 #=> String
    #   resp.items[0].mailing_address.address_4 #=> String
    #   resp.items[0].mailing_address.city #=> String
    #   resp.items[0].mailing_address.county #=> String
    #   resp.items[0].mailing_address.state #=> String
    #   resp.items[0].mailing_address.province #=> String
    #   resp.items[0].mailing_address.country #=> String
    #   resp.items[0].mailing_address.postal_code #=> String
    #   resp.items[0].billing_address.address_1 #=> String
    #   resp.items[0].billing_address.address_2 #=> String
    #   resp.items[0].billing_address.address_3 #=> String
    #   resp.items[0].billing_address.address_4 #=> String
    #   resp.items[0].billing_address.city #=> String
    #   resp.items[0].billing_address.county #=> String
    #   resp.items[0].billing_address.state #=> String
    #   resp.items[0].billing_address.province #=> String
    #   resp.items[0].billing_address.country #=> String
    #   resp.items[0].billing_address.postal_code #=> String
    #   resp.items[0].attributes #=> Hash
    #   resp.items[0].attributes["string1To255"] #=> String
    #   resp.items[0].found_by_items #=> Array
    #   resp.items[0].found_by_items[0].key_name #=> String
    #   resp.items[0].found_by_items[0].values #=> Array
    #   resp.items[0].found_by_items[0].values[0] #=> String
    #   resp.items[0].party_type_string #=> String
    #   resp.items[0].gender_string #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SearchProfiles AWS API Documentation
    #
    # @overload search_profiles(params = {})
    # @param [Hash] params ({})
    def search_profiles(params = {}, options = {})
      req = build_request(:search_profiles, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified Amazon
    # Connect Customer Profiles resource. Tags can help you organize and
    # categorize your resources. You can also use them to scope user
    # permissions by granting a user permission to access or change only
    # resources with certain tag values. In Connect Customer Profiles,
    # domains, profile object types, and integrations can be tagged.
    #
    # Tags don't have any semantic meaning to AWS and are interpreted
    # strictly as strings of characters.
    #
    # You can use the TagResource action with a resource that already has
    # tags. If you specify a new tag key, this tag is appended to the list
    # of tags associated with the resource. If you specify a tag key that is
    # already associated with the resource, the new tag value that you
    # specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you're adding tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified Amazon Connect Customer
    # Profiles resource. In Connect Customer Profiles, domains, profile
    # object types, and integrations can be tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource from which you are removing tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing calculated attribute definition. When updating the
    # Conditions, note that increasing the date range of a calculated
    # attribute will not trigger inclusion of historical data greater than
    # the current date range.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @option params [String] :display_name
    #   The display name of the calculated attribute.
    #
    # @option params [String] :description
    #   The description of the calculated attribute.
    #
    # @option params [Types::Conditions] :conditions
    #   The conditions including range, object count, and threshold for the
    #   calculated attribute.
    #
    # @return [Types::UpdateCalculatedAttributeDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#calculated_attribute_name #calculated_attribute_name} => String
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#display_name #display_name} => String
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#description #description} => String
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#created_at #created_at} => Time
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#statistic #statistic} => String
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#conditions #conditions} => Types::Conditions
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#attribute_details #attribute_details} => Types::AttributeDetails
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_calculated_attribute_definition({
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #     display_name: "displayName",
    #     description: "text",
    #     conditions: {
    #       range: {
    #         value: 1, # required
    #         unit: "DAYS", # required, accepts DAYS
    #       },
    #       object_count: 1,
    #       threshold: {
    #         value: "string1To255", # required
    #         operator: "EQUAL_TO", # required, accepts EQUAL_TO, GREATER_THAN, LESS_THAN, NOT_EQUAL_TO
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.calculated_attribute_name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.statistic #=> String, one of "FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"
    #   resp.conditions.range.value #=> Integer
    #   resp.conditions.range.unit #=> String, one of "DAYS"
    #   resp.conditions.object_count #=> Integer
    #   resp.conditions.threshold.value #=> String
    #   resp.conditions.threshold.operator #=> String, one of "EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"
    #   resp.attribute_details.attributes #=> Array
    #   resp.attribute_details.attributes[0].name #=> String
    #   resp.attribute_details.expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateCalculatedAttributeDefinition AWS API Documentation
    #
    # @overload update_calculated_attribute_definition(params = {})
    # @param [Hash] params ({})
    def update_calculated_attribute_definition(params = {}, options = {})
      req = build_request(:update_calculated_attribute_definition, params)
      req.send_request(options)
    end

    # Updates the properties of a domain, including creating or selecting a
    # dead letter queue or an encryption key.
    #
    # After a domain is created, the name can’t be changed.
    #
    # Use this API or [CreateDomain][1] to enable [identity resolution][2]:
    # set `Matching` to true.
    #
    # To prevent cross-service impersonation when you call this API, see
    # [Cross-service confused deputy prevention][3] for sample policies that
    # you should apply.
    #
    # To add or remove tags on an existing Domain, see
    # [TagResource][4]/[UntagResource][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html
    # [4]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html
    # [5]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [Integer] :default_expiration_days
    #   The default number of days until the data within the domain expires.
    #
    # @option params [String] :default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used when
    #   no specific type of encryption key is specified. It is used to encrypt
    #   all data before it is placed in permanent or semi-permanent storage.
    #   If specified as an empty string, it will clear any existing value.
    #
    # @option params [String] :dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   If specified as an empty string, it will clear any existing value. You
    #   must set up a policy on the DeadLetterQueue for the SendMessage
    #   operation to enable Amazon Connect Customer Profiles to send messages
    #   to the DeadLetterQueue.
    #
    # @option params [Types::MatchingRequest] :matching
    #   The process of matching duplicate profiles. If `Matching` = `true`,
    #   Amazon Connect Customer Profiles starts a weekly batch process called
    #   Identity Resolution Job. If you do not specify a date and time for
    #   Identity Resolution Job to run, by default it runs every Saturday at
    #   12AM UTC to detect duplicate profiles in your domains.
    #
    #   After the Identity Resolution Job completes, use the [GetMatches][1]
    #   API to return and review the results. Or, if you have configured
    #   `ExportingConfig` in the `MatchingRequest`, you can download the
    #   results from S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::UpdateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainResponse#domain_name #domain_name} => String
    #   * {Types::UpdateDomainResponse#default_expiration_days #default_expiration_days} => Integer
    #   * {Types::UpdateDomainResponse#default_encryption_key #default_encryption_key} => String
    #   * {Types::UpdateDomainResponse#dead_letter_queue_url #dead_letter_queue_url} => String
    #   * {Types::UpdateDomainResponse#matching #matching} => Types::MatchingResponse
    #   * {Types::UpdateDomainResponse#created_at #created_at} => Time
    #   * {Types::UpdateDomainResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateDomainResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain({
    #     domain_name: "name", # required
    #     default_expiration_days: 1,
    #     default_encryption_key: "encryptionKey",
    #     dead_letter_queue_url: "sqsQueueUrl",
    #     matching: {
    #       enabled: false, # required
    #       job_schedule: {
    #         day_of_the_week: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         time: "JobScheduleTime", # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"],
    #           ],
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #           source_name: "string1To255",
    #         },
    #         min_allowed_confidence_score_for_merging: 1.0,
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig",
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.default_expiration_days #=> Integer
    #   resp.default_encryption_key #=> String
    #   resp.dead_letter_queue_url #=> String
    #   resp.matching.enabled #=> Boolean
    #   resp.matching.job_schedule.day_of_the_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.matching.job_schedule.time #=> String
    #   resp.matching.auto_merging.enabled #=> Boolean
    #   resp.matching.auto_merging.consolidation.matching_attributes_list #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0] #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.matching.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.matching.auto_merging.conflict_resolution.source_name #=> String
    #   resp.matching.auto_merging.min_allowed_confidence_score_for_merging #=> Float
    #   resp.matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateDomain AWS API Documentation
    #
    # @overload update_domain(params = {})
    # @param [Hash] params ({})
    def update_domain(params = {}, options = {})
      req = build_request(:update_domain, params)
      req.send_request(options)
    end

    # Updates the properties of a profile. The ProfileId is required for
    # updating a customer profile.
    #
    # When calling the UpdateProfile API, specifying an empty string value
    # means that any existing value will be removed. Not specifying a string
    # value means that any value already there will be kept.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [String] :additional_information
    #   Any additional information relevant to the customer’s profile.
    #
    # @option params [String] :account_number
    #   A unique account number that you have given to the customer.
    #
    # @option params [String] :party_type
    #   The type of profile used to describe the customer.
    #
    # @option params [String] :business_name
    #   The name of the customer’s business.
    #
    # @option params [String] :first_name
    #   The customer’s first name.
    #
    # @option params [String] :middle_name
    #   The customer’s middle name.
    #
    # @option params [String] :last_name
    #   The customer’s last name.
    #
    # @option params [String] :birth_date
    #   The customer’s birth date.
    #
    # @option params [String] :gender
    #   The gender with which the customer identifies.
    #
    # @option params [String] :phone_number
    #   The customer’s phone number, which has not been specified as a mobile,
    #   home, or business number.
    #
    # @option params [String] :mobile_phone_number
    #   The customer’s mobile phone number.
    #
    # @option params [String] :home_phone_number
    #   The customer’s home phone number.
    #
    # @option params [String] :business_phone_number
    #   The customer’s business phone number.
    #
    # @option params [String] :email_address
    #   The customer’s email address, which has not been specified as a
    #   personal or business address.
    #
    # @option params [String] :personal_email_address
    #   The customer’s personal email address.
    #
    # @option params [String] :business_email_address
    #   The customer’s business email address.
    #
    # @option params [Types::UpdateAddress] :address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #
    # @option params [Types::UpdateAddress] :shipping_address
    #   The customer’s shipping address.
    #
    # @option params [Types::UpdateAddress] :mailing_address
    #   The customer’s mailing address.
    #
    # @option params [Types::UpdateAddress] :billing_address
    #   The customer’s billing address.
    #
    # @option params [Hash<String,String>] :attributes
    #   A key value pair of attributes of a customer profile.
    #
    # @option params [String] :party_type_string
    #   An alternative to `PartyType` which accepts any string as input.
    #
    # @option params [String] :gender_string
    #   An alternative to `Gender` which accepts any string as input.
    #
    # @return [Types::UpdateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProfileResponse#profile_id #profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile({
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #     additional_information: "string0To1000",
    #     account_number: "string0To255",
    #     party_type: "INDIVIDUAL", # accepts INDIVIDUAL, BUSINESS, OTHER
    #     business_name: "string0To255",
    #     first_name: "string0To255",
    #     middle_name: "string0To255",
    #     last_name: "string0To255",
    #     birth_date: "string0To255",
    #     gender: "MALE", # accepts MALE, FEMALE, UNSPECIFIED
    #     phone_number: "string0To255",
    #     mobile_phone_number: "string0To255",
    #     home_phone_number: "string0To255",
    #     business_phone_number: "string0To255",
    #     email_address: "string0To255",
    #     personal_email_address: "string0To255",
    #     business_email_address: "string0To255",
    #     address: {
    #       address_1: "string0To255",
    #       address_2: "string0To255",
    #       address_3: "string0To255",
    #       address_4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255",
    #     },
    #     shipping_address: {
    #       address_1: "string0To255",
    #       address_2: "string0To255",
    #       address_3: "string0To255",
    #       address_4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255",
    #     },
    #     mailing_address: {
    #       address_1: "string0To255",
    #       address_2: "string0To255",
    #       address_3: "string0To255",
    #       address_4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255",
    #     },
    #     billing_address: {
    #       address_1: "string0To255",
    #       address_2: "string0To255",
    #       address_3: "string0To255",
    #       address_4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255",
    #     },
    #     attributes: {
    #       "string1To255" => "string0To255",
    #     },
    #     party_type_string: "string0To255",
    #     gender_string: "string0To255",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateProfile AWS API Documentation
    #
    # @overload update_profile(params = {})
    # @param [Hash] params ({})
    def update_profile(params = {}, options = {})
      req = build_request(:update_profile, params)
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
      context[:gem_name] = 'aws-sdk-customerprofiles'
      context[:gem_version] = '1.34.0'
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
