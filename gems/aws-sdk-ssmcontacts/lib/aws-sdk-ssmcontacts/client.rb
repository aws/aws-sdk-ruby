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

Aws::Plugins::GlobalConfiguration.add_identifier(:ssmcontacts)

module Aws::SSMContacts
  # An API client for SSMContacts.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SSMContacts::Client.new(
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

    @identifier = :ssmcontacts

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
    add_plugin(Aws::SSMContacts::Plugins::Endpoints)

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
    #   @option options [Aws::SSMContacts::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SSMContacts::EndpointParameters`
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

    # Used to acknowledge an engagement to a contact channel during an
    # incident.
    #
    # @option params [required, String] :page_id
    #   The Amazon Resource Name (ARN) of the engagement to a contact channel.
    #
    # @option params [String] :contact_channel_id
    #   The ARN of the contact channel.
    #
    # @option params [required, String] :accept_type
    #   The type indicates if the page was `DELIVERED` or `READ`.
    #
    # @option params [String] :note
    #   Information provided by the user when the user acknowledges the page.
    #
    # @option params [required, String] :accept_code
    #   A 6-digit code used to acknowledge the page.
    #
    # @option params [String] :accept_code_validation
    #   An optional field that Incident Manager uses to `ENFORCE` `AcceptCode`
    #   validation when acknowledging an page. Acknowledgement can occur by
    #   replying to a page, or when entering the AcceptCode in the console.
    #   Enforcing AcceptCode validation causes Incident Manager to verify that
    #   the code entered by the user matches the code sent by Incident Manager
    #   with the page.
    #
    #   Incident Manager can also `IGNORE` `AcceptCode` validation. Ignoring
    #   `AcceptCode` validation causes Incident Manager to accept any value
    #   entered for the `AcceptCode`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_page({
    #     page_id: "SsmContactsArn", # required
    #     contact_channel_id: "SsmContactsArn",
    #     accept_type: "DELIVERED", # required, accepts DELIVERED, READ
    #     note: "ReceiptInfo",
    #     accept_code: "AcceptCode", # required
    #     accept_code_validation: "IGNORE", # accepts IGNORE, ENFORCE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/AcceptPage AWS API Documentation
    #
    # @overload accept_page(params = {})
    # @param [Hash] params ({})
    def accept_page(params = {}, options = {})
      req = build_request(:accept_page, params)
      req.send_request(options)
    end

    # Activates a contact's contact channel. Incident Manager can't engage
    # a contact until the contact channel has been activated.
    #
    # @option params [required, String] :contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel.
    #
    # @option params [required, String] :activation_code
    #   The code sent to the contact channel when it was created in the
    #   contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_contact_channel({
    #     contact_channel_id: "SsmContactsArn", # required
    #     activation_code: "ActivationCode", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ActivateContactChannel AWS API Documentation
    #
    # @overload activate_contact_channel(params = {})
    # @param [Hash] params ({})
    def activate_contact_channel(params = {}, options = {})
      req = build_request(:activate_contact_channel, params)
      req.send_request(options)
    end

    # Contacts are either the contacts that Incident Manager engages during
    # an incident or the escalation plans that Incident Manager uses to
    # engage contacts in phases during an incident.
    #
    # @option params [required, String] :alias
    #   The short name to quickly identify a contact or escalation plan. The
    #   contact alias must be unique and identifiable.
    #
    # @option params [String] :display_name
    #   The full name of the contact or escalation plan.
    #
    # @option params [required, String] :type
    #   To create an escalation plan use `ESCALATION`. To create a contact use
    #   `PERSONAL`.
    #
    # @option params [required, Types::Plan] :plan
    #   A list of stages. A contact has an engagement plan with stages that
    #   contact specified contact channels. An escalation plan uses stages
    #   that contact specified contacts.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds a tag to the target. You can only tag resources created in the
    #   first Region of your replication set.
    #
    # @option params [String] :idempotency_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateContactResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactResult#contact_arn #contact_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact({
    #     alias: "ContactAlias", # required
    #     display_name: "ContactName",
    #     type: "PERSONAL", # required, accepts PERSONAL, ESCALATION, ONCALL_SCHEDULE
    #     plan: { # required
    #       stages: [
    #         {
    #           duration_in_minutes: 1, # required
    #           targets: [ # required
    #             {
    #               channel_target_info: {
    #                 contact_channel_id: "SsmContactsArn", # required
    #                 retry_interval_in_minutes: 1,
    #               },
    #               contact_target_info: {
    #                 contact_id: "SsmContactsArn",
    #                 is_essential: false, # required
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #       rotation_ids: ["SsmContactsArn"],
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateContact AWS API Documentation
    #
    # @overload create_contact(params = {})
    # @param [Hash] params ({})
    def create_contact(params = {}, options = {})
      req = build_request(:create_contact, params)
      req.send_request(options)
    end

    # A contact channel is the method that Incident Manager uses to engage
    # your contact.
    #
    # @option params [required, String] :contact_id
    #   The Amazon Resource Name (ARN) of the contact you are adding the
    #   contact channel to.
    #
    # @option params [required, String] :name
    #   The name of the contact channel.
    #
    # @option params [required, String] :type
    #   Incident Manager supports three types of contact channels:
    #
    #   * `SMS`
    #
    #   * `VOICE`
    #
    #   * `EMAIL`
    #
    # @option params [required, Types::ContactChannelAddress] :delivery_address
    #   The details that Incident Manager uses when trying to engage the
    #   contact channel. The format is dependent on the type of the contact
    #   channel. The following are the expected formats:
    #
    #   * SMS - '+' followed by the country code and phone number
    #
    #   * VOICE - '+' followed by the country code and phone number
    #
    #   * EMAIL - any standard email format
    #
    # @option params [Boolean] :defer_activation
    #   If you want to activate the channel at a later time, you can choose to
    #   defer activation. Incident Manager can't engage your contact channel
    #   until it has been activated.
    #
    # @option params [String] :idempotency_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateContactChannelResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactChannelResult#contact_channel_arn #contact_channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_channel({
    #     contact_id: "SsmContactsArn", # required
    #     name: "ChannelName", # required
    #     type: "SMS", # required, accepts SMS, VOICE, EMAIL
    #     delivery_address: { # required
    #       simple_address: "SimpleAddress",
    #     },
    #     defer_activation: false,
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateContactChannel AWS API Documentation
    #
    # @overload create_contact_channel(params = {})
    # @param [Hash] params ({})
    def create_contact_channel(params = {}, options = {})
      req = build_request(:create_contact_channel, params)
      req.send_request(options)
    end

    # Creates a rotation in an on-call schedule.
    #
    # @option params [required, String] :name
    #   The name of the rotation.
    #
    # @option params [required, Array<String>] :contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts to add to the
    #   rotation.
    #
    #   The order that you list the contacts in is their shift order in the
    #   rotation schedule. To change the order of the contact's shifts, use
    #   the UpdateRotation operation.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time that the rotation goes into effect.
    #
    # @option params [required, String] :time_zone_id
    #   The time zone to base the rotation’s activity on in Internet Assigned
    #   Numbers Authority (IANA) format. For example:
    #   "America/Los\_Angeles", "UTC", or "Asia/Seoul". For more
    #   information, see the [Time Zone Database][1] on the IANA website.
    #
    #   <note markdown="1"> Designators for time zones that don’t support Daylight Savings Time
    #   rules, such as Pacific Standard Time (PST) and Pacific Daylight Time
    #   (PDT), are not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #
    # @option params [required, Types::RecurrenceSettings] :recurrence
    #   Information about the rule that specifies when a shift's team members
    #   rotate.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata to assign to the rotation. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment. For more information, see [Tagging Incident Manager
    #   resources][1] in the *Incident Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/incident-manager/latest/userguide/tagging.html
    #
    # @option params [String] :idempotency_token
    #   A token that ensures that the operation is called only once with the
    #   specified details.
    #
    # @return [Types::CreateRotationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRotationResult#rotation_arn #rotation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rotation({
    #     name: "RotationName", # required
    #     contact_ids: ["SsmContactsArn"], # required
    #     start_time: Time.now,
    #     time_zone_id: "TimeZoneId", # required
    #     recurrence: { # required
    #       monthly_settings: [
    #         {
    #           day_of_month: 1, # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           },
    #         },
    #       ],
    #       weekly_settings: [
    #         {
    #           day_of_week: "MON", # required, accepts MON, TUE, WED, THU, FRI, SAT, SUN
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           },
    #         },
    #       ],
    #       daily_settings: [
    #         {
    #           hour_of_day: 1, # required
    #           minute_of_hour: 1, # required
    #         },
    #       ],
    #       number_of_on_calls: 1, # required
    #       shift_coverages: {
    #         "MON" => [
    #           {
    #             start: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #             end: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #           },
    #         ],
    #       },
    #       recurrence_multiplier: 1, # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rotation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateRotation AWS API Documentation
    #
    # @overload create_rotation(params = {})
    # @param [Hash] params ({})
    def create_rotation(params = {}, options = {})
      req = build_request(:create_rotation, params)
      req.send_request(options)
    end

    # Creates an override for a rotation in an on-call schedule.
    #
    # @option params [required, String] :rotation_id
    #   The Amazon Resource Name (ARN) of the rotation to create an override
    #   for.
    #
    # @option params [required, Array<String>] :new_contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts to replace those in
    #   the current on-call rotation with.
    #
    #   If you want to include any current team members in the override shift,
    #   you must include their ARNs in the new contact ID list.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The date and time when the override goes into effect.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The date and time when the override ends.
    #
    # @option params [String] :idempotency_token
    #   A token that ensures that the operation is called only once with the
    #   specified details.
    #
    # @return [Types::CreateRotationOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRotationOverrideResult#rotation_override_id #rotation_override_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rotation_override({
    #     rotation_id: "SsmContactsArn", # required
    #     new_contact_ids: ["SsmContactsArn"], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rotation_override_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateRotationOverride AWS API Documentation
    #
    # @overload create_rotation_override(params = {})
    # @param [Hash] params ({})
    def create_rotation_override(params = {}, options = {})
      req = build_request(:create_rotation_override, params)
      req.send_request(options)
    end

    # To no longer receive Incident Manager engagements to a contact
    # channel, you can deactivate the channel.
    #
    # @option params [required, String] :contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel you're
    #   deactivating.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_contact_channel({
    #     contact_channel_id: "SsmContactsArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeactivateContactChannel AWS API Documentation
    #
    # @overload deactivate_contact_channel(params = {})
    # @param [Hash] params ({})
    def deactivate_contact_channel(params = {}, options = {})
      req = build_request(:deactivate_contact_channel, params)
      req.send_request(options)
    end

    # To remove a contact from Incident Manager, you can delete the contact.
    # Deleting a contact removes them from all escalation plans and related
    # response plans. Deleting an escalation plan removes it from all
    # related response plans. You will have to recreate the contact and its
    # contact channels before you can use it again.
    #
    # @option params [required, String] :contact_id
    #   The Amazon Resource Name (ARN) of the contact that you're deleting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact({
    #     contact_id: "SsmContactsArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteContact AWS API Documentation
    #
    # @overload delete_contact(params = {})
    # @param [Hash] params ({})
    def delete_contact(params = {}, options = {})
      req = build_request(:delete_contact, params)
      req.send_request(options)
    end

    # To no longer receive engagements on a contact channel, you can delete
    # the channel from a contact. Deleting the contact channel removes it
    # from the contact's engagement plan. If you delete the only contact
    # channel for a contact, you won't be able to engage that contact
    # during an incident.
    #
    # @option params [required, String] :contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_channel({
    #     contact_channel_id: "SsmContactsArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteContactChannel AWS API Documentation
    #
    # @overload delete_contact_channel(params = {})
    # @param [Hash] params ({})
    def delete_contact_channel(params = {}, options = {})
      req = build_request(:delete_contact_channel, params)
      req.send_request(options)
    end

    # Deletes a rotation from the system. If a rotation belongs to more than
    # one on-call schedule, this operation deletes it from all of them.
    #
    # @option params [required, String] :rotation_id
    #   The Amazon Resource Name (ARN) of the on-call rotation to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rotation({
    #     rotation_id: "SsmContactsArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteRotation AWS API Documentation
    #
    # @overload delete_rotation(params = {})
    # @param [Hash] params ({})
    def delete_rotation(params = {}, options = {})
      req = build_request(:delete_rotation, params)
      req.send_request(options)
    end

    # Deletes an existing override for an on-call rotation.
    #
    # @option params [required, String] :rotation_id
    #   The Amazon Resource Name (ARN) of the rotation that was overridden.
    #
    # @option params [required, String] :rotation_override_id
    #   The Amazon Resource Name (ARN) of the on-call rotation override to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rotation_override({
    #     rotation_id: "SsmContactsArn", # required
    #     rotation_override_id: "Uuid", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteRotationOverride AWS API Documentation
    #
    # @overload delete_rotation_override(params = {})
    # @param [Hash] params ({})
    def delete_rotation_override(params = {}, options = {})
      req = build_request(:delete_rotation_override, params)
      req.send_request(options)
    end

    # Incident Manager uses engagements to engage contacts and escalation
    # plans during an incident. Use this command to describe the engagement
    # that occurred during an incident.
    #
    # @option params [required, String] :engagement_id
    #   The Amazon Resource Name (ARN) of the engagement you want the details
    #   of.
    #
    # @return [Types::DescribeEngagementResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEngagementResult#contact_arn #contact_arn} => String
    #   * {Types::DescribeEngagementResult#engagement_arn #engagement_arn} => String
    #   * {Types::DescribeEngagementResult#sender #sender} => String
    #   * {Types::DescribeEngagementResult#subject #subject} => String
    #   * {Types::DescribeEngagementResult#content #content} => String
    #   * {Types::DescribeEngagementResult#public_subject #public_subject} => String
    #   * {Types::DescribeEngagementResult#public_content #public_content} => String
    #   * {Types::DescribeEngagementResult#incident_id #incident_id} => String
    #   * {Types::DescribeEngagementResult#start_time #start_time} => Time
    #   * {Types::DescribeEngagementResult#stop_time #stop_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engagement({
    #     engagement_id: "SsmContactsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_arn #=> String
    #   resp.engagement_arn #=> String
    #   resp.sender #=> String
    #   resp.subject #=> String
    #   resp.content #=> String
    #   resp.public_subject #=> String
    #   resp.public_content #=> String
    #   resp.incident_id #=> String
    #   resp.start_time #=> Time
    #   resp.stop_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DescribeEngagement AWS API Documentation
    #
    # @overload describe_engagement(params = {})
    # @param [Hash] params ({})
    def describe_engagement(params = {}, options = {})
      req = build_request(:describe_engagement, params)
      req.send_request(options)
    end

    # Lists details of the engagement to a contact channel.
    #
    # @option params [required, String] :page_id
    #   The ID of the engagement to a contact channel.
    #
    # @return [Types::DescribePageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePageResult#page_arn #page_arn} => String
    #   * {Types::DescribePageResult#engagement_arn #engagement_arn} => String
    #   * {Types::DescribePageResult#contact_arn #contact_arn} => String
    #   * {Types::DescribePageResult#sender #sender} => String
    #   * {Types::DescribePageResult#subject #subject} => String
    #   * {Types::DescribePageResult#content #content} => String
    #   * {Types::DescribePageResult#public_subject #public_subject} => String
    #   * {Types::DescribePageResult#public_content #public_content} => String
    #   * {Types::DescribePageResult#incident_id #incident_id} => String
    #   * {Types::DescribePageResult#sent_time #sent_time} => Time
    #   * {Types::DescribePageResult#read_time #read_time} => Time
    #   * {Types::DescribePageResult#delivery_time #delivery_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_page({
    #     page_id: "SsmContactsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.page_arn #=> String
    #   resp.engagement_arn #=> String
    #   resp.contact_arn #=> String
    #   resp.sender #=> String
    #   resp.subject #=> String
    #   resp.content #=> String
    #   resp.public_subject #=> String
    #   resp.public_content #=> String
    #   resp.incident_id #=> String
    #   resp.sent_time #=> Time
    #   resp.read_time #=> Time
    #   resp.delivery_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DescribePage AWS API Documentation
    #
    # @overload describe_page(params = {})
    # @param [Hash] params ({})
    def describe_page(params = {}, options = {})
      req = build_request(:describe_page, params)
      req.send_request(options)
    end

    # Retrieves information about the specified contact or escalation plan.
    #
    # @option params [required, String] :contact_id
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #
    # @return [Types::GetContactResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactResult#contact_arn #contact_arn} => String
    #   * {Types::GetContactResult#alias #alias} => String
    #   * {Types::GetContactResult#display_name #display_name} => String
    #   * {Types::GetContactResult#type #type} => String
    #   * {Types::GetContactResult#plan #plan} => Types::Plan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact({
    #     contact_id: "SsmContactsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_arn #=> String
    #   resp.alias #=> String
    #   resp.display_name #=> String
    #   resp.type #=> String, one of "PERSONAL", "ESCALATION", "ONCALL_SCHEDULE"
    #   resp.plan.stages #=> Array
    #   resp.plan.stages[0].duration_in_minutes #=> Integer
    #   resp.plan.stages[0].targets #=> Array
    #   resp.plan.stages[0].targets[0].channel_target_info.contact_channel_id #=> String
    #   resp.plan.stages[0].targets[0].channel_target_info.retry_interval_in_minutes #=> Integer
    #   resp.plan.stages[0].targets[0].contact_target_info.contact_id #=> String
    #   resp.plan.stages[0].targets[0].contact_target_info.is_essential #=> Boolean
    #   resp.plan.rotation_ids #=> Array
    #   resp.plan.rotation_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetContact AWS API Documentation
    #
    # @overload get_contact(params = {})
    # @param [Hash] params ({})
    def get_contact(params = {}, options = {})
      req = build_request(:get_contact, params)
      req.send_request(options)
    end

    # List details about a specific contact channel.
    #
    # @option params [required, String] :contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel you want
    #   information about.
    #
    # @return [Types::GetContactChannelResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactChannelResult#contact_arn #contact_arn} => String
    #   * {Types::GetContactChannelResult#contact_channel_arn #contact_channel_arn} => String
    #   * {Types::GetContactChannelResult#name #name} => String
    #   * {Types::GetContactChannelResult#type #type} => String
    #   * {Types::GetContactChannelResult#delivery_address #delivery_address} => Types::ContactChannelAddress
    #   * {Types::GetContactChannelResult#activation_status #activation_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_channel({
    #     contact_channel_id: "SsmContactsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_arn #=> String
    #   resp.contact_channel_arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "SMS", "VOICE", "EMAIL"
    #   resp.delivery_address.simple_address #=> String
    #   resp.activation_status #=> String, one of "ACTIVATED", "NOT_ACTIVATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetContactChannel AWS API Documentation
    #
    # @overload get_contact_channel(params = {})
    # @param [Hash] params ({})
    def get_contact_channel(params = {}, options = {})
      req = build_request(:get_contact_channel, params)
      req.send_request(options)
    end

    # Retrieves the resource policies attached to the specified contact or
    # escalation plan.
    #
    # @option params [required, String] :contact_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #
    # @return [Types::GetContactPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactPolicyResult#contact_arn #contact_arn} => String
    #   * {Types::GetContactPolicyResult#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_policy({
    #     contact_arn: "SsmContactsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_arn #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetContactPolicy AWS API Documentation
    #
    # @overload get_contact_policy(params = {})
    # @param [Hash] params ({})
    def get_contact_policy(params = {}, options = {})
      req = build_request(:get_contact_policy, params)
      req.send_request(options)
    end

    # Retrieves information about an on-call rotation.
    #
    # @option params [required, String] :rotation_id
    #   The Amazon Resource Name (ARN) of the on-call rotation to retrieve
    #   information about.
    #
    # @return [Types::GetRotationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRotationResult#rotation_arn #rotation_arn} => String
    #   * {Types::GetRotationResult#name #name} => String
    #   * {Types::GetRotationResult#contact_ids #contact_ids} => Array&lt;String&gt;
    #   * {Types::GetRotationResult#start_time #start_time} => Time
    #   * {Types::GetRotationResult#time_zone_id #time_zone_id} => String
    #   * {Types::GetRotationResult#recurrence #recurrence} => Types::RecurrenceSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rotation({
    #     rotation_id: "SsmContactsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rotation_arn #=> String
    #   resp.name #=> String
    #   resp.contact_ids #=> Array
    #   resp.contact_ids[0] #=> String
    #   resp.start_time #=> Time
    #   resp.time_zone_id #=> String
    #   resp.recurrence.monthly_settings #=> Array
    #   resp.recurrence.monthly_settings[0].day_of_month #=> Integer
    #   resp.recurrence.monthly_settings[0].hand_off_time.hour_of_day #=> Integer
    #   resp.recurrence.monthly_settings[0].hand_off_time.minute_of_hour #=> Integer
    #   resp.recurrence.weekly_settings #=> Array
    #   resp.recurrence.weekly_settings[0].day_of_week #=> String, one of "MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"
    #   resp.recurrence.weekly_settings[0].hand_off_time.hour_of_day #=> Integer
    #   resp.recurrence.weekly_settings[0].hand_off_time.minute_of_hour #=> Integer
    #   resp.recurrence.daily_settings #=> Array
    #   resp.recurrence.daily_settings[0].hour_of_day #=> Integer
    #   resp.recurrence.daily_settings[0].minute_of_hour #=> Integer
    #   resp.recurrence.number_of_on_calls #=> Integer
    #   resp.recurrence.shift_coverages #=> Hash
    #   resp.recurrence.shift_coverages["DayOfWeek"] #=> Array
    #   resp.recurrence.shift_coverages["DayOfWeek"][0].start.hour_of_day #=> Integer
    #   resp.recurrence.shift_coverages["DayOfWeek"][0].start.minute_of_hour #=> Integer
    #   resp.recurrence.shift_coverages["DayOfWeek"][0].end.hour_of_day #=> Integer
    #   resp.recurrence.shift_coverages["DayOfWeek"][0].end.minute_of_hour #=> Integer
    #   resp.recurrence.recurrence_multiplier #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetRotation AWS API Documentation
    #
    # @overload get_rotation(params = {})
    # @param [Hash] params ({})
    def get_rotation(params = {}, options = {})
      req = build_request(:get_rotation, params)
      req.send_request(options)
    end

    # Retrieves information about an override to an on-call rotation.
    #
    # @option params [required, String] :rotation_id
    #   The Amazon Resource Name (ARN) of the overridden rotation to retrieve
    #   information about.
    #
    # @option params [required, String] :rotation_override_id
    #   The Amazon Resource Name (ARN) of the on-call rotation override to
    #   retrieve information about.
    #
    # @return [Types::GetRotationOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRotationOverrideResult#rotation_override_id #rotation_override_id} => String
    #   * {Types::GetRotationOverrideResult#rotation_arn #rotation_arn} => String
    #   * {Types::GetRotationOverrideResult#new_contact_ids #new_contact_ids} => Array&lt;String&gt;
    #   * {Types::GetRotationOverrideResult#start_time #start_time} => Time
    #   * {Types::GetRotationOverrideResult#end_time #end_time} => Time
    #   * {Types::GetRotationOverrideResult#create_time #create_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rotation_override({
    #     rotation_id: "SsmContactsArn", # required
    #     rotation_override_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rotation_override_id #=> String
    #   resp.rotation_arn #=> String
    #   resp.new_contact_ids #=> Array
    #   resp.new_contact_ids[0] #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetRotationOverride AWS API Documentation
    #
    # @overload get_rotation_override(params = {})
    # @param [Hash] params ({})
    def get_rotation_override(params = {}, options = {})
      req = build_request(:get_rotation_override, params)
      req.send_request(options)
    end

    # Lists all contact channels for the specified contact.
    #
    # @option params [required, String] :contact_id
    #   The Amazon Resource Name (ARN) of the contact.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of contact channels per page.
    #
    # @return [Types::ListContactChannelsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactChannelsResult#next_token #next_token} => String
    #   * {Types::ListContactChannelsResult#contact_channels #contact_channels} => Array&lt;Types::ContactChannel&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_channels({
    #     contact_id: "SsmContactsArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.contact_channels #=> Array
    #   resp.contact_channels[0].contact_channel_arn #=> String
    #   resp.contact_channels[0].contact_arn #=> String
    #   resp.contact_channels[0].name #=> String
    #   resp.contact_channels[0].type #=> String, one of "SMS", "VOICE", "EMAIL"
    #   resp.contact_channels[0].delivery_address.simple_address #=> String
    #   resp.contact_channels[0].activation_status #=> String, one of "ACTIVATED", "NOT_ACTIVATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListContactChannels AWS API Documentation
    #
    # @overload list_contact_channels(params = {})
    # @param [Hash] params ({})
    def list_contact_channels(params = {}, options = {})
      req = build_request(:list_contact_channels, params)
      req.send_request(options)
    end

    # Lists all contacts and escalation plans in Incident Manager.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of contacts and escalation plans per page of
    #   results.
    #
    # @option params [String] :alias_prefix
    #   Used to list only contacts who's aliases start with the specified
    #   prefix.
    #
    # @option params [String] :type
    #   The type of contact. A contact is type `PERSONAL` and an escalation
    #   plan is type `ESCALATION`.
    #
    # @return [Types::ListContactsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactsResult#next_token #next_token} => String
    #   * {Types::ListContactsResult#contacts #contacts} => Array&lt;Types::Contact&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contacts({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     alias_prefix: "ContactAlias",
    #     type: "PERSONAL", # accepts PERSONAL, ESCALATION, ONCALL_SCHEDULE
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.contacts #=> Array
    #   resp.contacts[0].contact_arn #=> String
    #   resp.contacts[0].alias #=> String
    #   resp.contacts[0].display_name #=> String
    #   resp.contacts[0].type #=> String, one of "PERSONAL", "ESCALATION", "ONCALL_SCHEDULE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListContacts AWS API Documentation
    #
    # @overload list_contacts(params = {})
    # @param [Hash] params ({})
    def list_contacts(params = {}, options = {})
      req = build_request(:list_contacts, params)
      req.send_request(options)
    end

    # Lists all engagements that have happened in an incident.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of engagements per page of results.
    #
    # @option params [String] :incident_id
    #   The Amazon Resource Name (ARN) of the incident you're listing
    #   engagements for.
    #
    # @option params [Types::TimeRange] :time_range_value
    #   The time range to lists engagements for an incident.
    #
    # @return [Types::ListEngagementsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEngagementsResult#next_token #next_token} => String
    #   * {Types::ListEngagementsResult#engagements #engagements} => Array&lt;Types::Engagement&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engagements({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     incident_id: "IncidentId",
    #     time_range_value: {
    #       start_time: Time.now,
    #       end_time: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.engagements #=> Array
    #   resp.engagements[0].engagement_arn #=> String
    #   resp.engagements[0].contact_arn #=> String
    #   resp.engagements[0].sender #=> String
    #   resp.engagements[0].incident_id #=> String
    #   resp.engagements[0].start_time #=> Time
    #   resp.engagements[0].stop_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListEngagements AWS API Documentation
    #
    # @overload list_engagements(params = {})
    # @param [Hash] params ({})
    def list_engagements(params = {}, options = {})
      req = build_request(:list_engagements, params)
      req.send_request(options)
    end

    # Lists all of the engagements to contact channels that have been
    # acknowledged.
    #
    # @option params [required, String] :page_id
    #   The Amazon Resource Name (ARN) of the engagement to a specific contact
    #   channel.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of acknowledgements per page of results.
    #
    # @return [Types::ListPageReceiptsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPageReceiptsResult#next_token #next_token} => String
    #   * {Types::ListPageReceiptsResult#receipts #receipts} => Array&lt;Types::Receipt&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_page_receipts({
    #     page_id: "SsmContactsArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.receipts #=> Array
    #   resp.receipts[0].contact_channel_arn #=> String
    #   resp.receipts[0].receipt_type #=> String, one of "DELIVERED", "ERROR", "READ", "SENT", "STOP"
    #   resp.receipts[0].receipt_info #=> String
    #   resp.receipts[0].receipt_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPageReceipts AWS API Documentation
    #
    # @overload list_page_receipts(params = {})
    # @param [Hash] params ({})
    def list_page_receipts(params = {}, options = {})
      req = build_request(:list_page_receipts, params)
      req.send_request(options)
    end

    # Returns the resolution path of an engagement. For example, the
    # escalation plan engaged in an incident might target an on-call
    # schedule that includes several contacts in a rotation, but just one
    # contact on-call when the incident starts. The resolution path
    # indicates the hierarchy of *escalation plan &gt; on-call schedule &gt;
    # contact*.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [required, String] :page_id
    #   The Amazon Resource Name (ARN) of the contact engaged for the
    #   incident.
    #
    # @return [Types::ListPageResolutionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPageResolutionsResult#next_token #next_token} => String
    #   * {Types::ListPageResolutionsResult#page_resolutions #page_resolutions} => Array&lt;Types::ResolutionContact&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_page_resolutions({
    #     next_token: "PaginationToken",
    #     page_id: "SsmContactsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.page_resolutions #=> Array
    #   resp.page_resolutions[0].contact_arn #=> String
    #   resp.page_resolutions[0].type #=> String, one of "PERSONAL", "ESCALATION", "ONCALL_SCHEDULE"
    #   resp.page_resolutions[0].stage_index #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPageResolutions AWS API Documentation
    #
    # @overload list_page_resolutions(params = {})
    # @param [Hash] params ({})
    def list_page_resolutions(params = {}, options = {})
      req = build_request(:list_page_resolutions, params)
      req.send_request(options)
    end

    # Lists the engagements to a contact's contact channels.
    #
    # @option params [required, String] :contact_id
    #   The Amazon Resource Name (ARN) of the contact you are retrieving
    #   engagements for.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of engagements to contact channels to list per page
    #   of results.
    #
    # @return [Types::ListPagesByContactResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPagesByContactResult#next_token #next_token} => String
    #   * {Types::ListPagesByContactResult#pages #pages} => Array&lt;Types::Page&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pages_by_contact({
    #     contact_id: "SsmContactsArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.pages #=> Array
    #   resp.pages[0].page_arn #=> String
    #   resp.pages[0].engagement_arn #=> String
    #   resp.pages[0].contact_arn #=> String
    #   resp.pages[0].sender #=> String
    #   resp.pages[0].incident_id #=> String
    #   resp.pages[0].sent_time #=> Time
    #   resp.pages[0].delivery_time #=> Time
    #   resp.pages[0].read_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPagesByContact AWS API Documentation
    #
    # @overload list_pages_by_contact(params = {})
    # @param [Hash] params ({})
    def list_pages_by_contact(params = {}, options = {})
      req = build_request(:list_pages_by_contact, params)
      req.send_request(options)
    end

    # Lists the engagements to contact channels that occurred by engaging a
    # contact.
    #
    # @option params [required, String] :engagement_id
    #   The Amazon Resource Name (ARN) of the engagement.
    #
    # @option params [String] :next_token
    #   The pagination token to continue to the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of engagements to contact channels to list per page
    #   of results.
    #
    # @return [Types::ListPagesByEngagementResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPagesByEngagementResult#next_token #next_token} => String
    #   * {Types::ListPagesByEngagementResult#pages #pages} => Array&lt;Types::Page&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pages_by_engagement({
    #     engagement_id: "SsmContactsArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.pages #=> Array
    #   resp.pages[0].page_arn #=> String
    #   resp.pages[0].engagement_arn #=> String
    #   resp.pages[0].contact_arn #=> String
    #   resp.pages[0].sender #=> String
    #   resp.pages[0].incident_id #=> String
    #   resp.pages[0].sent_time #=> Time
    #   resp.pages[0].delivery_time #=> Time
    #   resp.pages[0].read_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPagesByEngagement AWS API Documentation
    #
    # @overload list_pages_by_engagement(params = {})
    # @param [Hash] params ({})
    def list_pages_by_engagement(params = {}, options = {})
      req = build_request(:list_pages_by_engagement, params)
      req.send_request(options)
    end

    # Returns a list of shifts based on rotation configuration parameters.
    #
    # <note markdown="1"> The Incident Manager primarily uses this operation to populate the
    # **Preview** calendar. It is not typically run by end users.
    #
    #  </note>
    #
    # @option params [Time,DateTime,Date,Integer,String] :rotation_start_time
    #   The date and time a rotation would begin. The first shift is
    #   calculated from this date and time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Used to filter the range of calculated shifts before sending the
    #   response back to the user.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The date and time a rotation shift would end.
    #
    # @option params [required, Array<String>] :members
    #   The contacts that would be assigned to a rotation.
    #
    # @option params [required, String] :time_zone_id
    #   The time zone the rotation’s activity would be based on, in Internet
    #   Assigned Numbers Authority (IANA) format. For example:
    #   "America/Los\_Angeles", "UTC", or "Asia/Seoul".
    #
    # @option params [required, Types::RecurrenceSettings] :recurrence
    #   Information about how long a rotation would last before restarting at
    #   the beginning of the shift order.
    #
    # @option params [Array<Types::PreviewOverride>] :overrides
    #   Information about changes that would be made in a rotation override.
    #
    # @option params [String] :next_token
    #   A token to start the list. This token is used to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that can be specified in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListPreviewRotationShiftsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPreviewRotationShiftsResult#rotation_shifts #rotation_shifts} => Array&lt;Types::RotationShift&gt;
    #   * {Types::ListPreviewRotationShiftsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_preview_rotation_shifts({
    #     rotation_start_time: Time.now,
    #     start_time: Time.now,
    #     end_time: Time.now, # required
    #     members: ["Member"], # required
    #     time_zone_id: "TimeZoneId", # required
    #     recurrence: { # required
    #       monthly_settings: [
    #         {
    #           day_of_month: 1, # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           },
    #         },
    #       ],
    #       weekly_settings: [
    #         {
    #           day_of_week: "MON", # required, accepts MON, TUE, WED, THU, FRI, SAT, SUN
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           },
    #         },
    #       ],
    #       daily_settings: [
    #         {
    #           hour_of_day: 1, # required
    #           minute_of_hour: 1, # required
    #         },
    #       ],
    #       number_of_on_calls: 1, # required
    #       shift_coverages: {
    #         "MON" => [
    #           {
    #             start: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #             end: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #           },
    #         ],
    #       },
    #       recurrence_multiplier: 1, # required
    #     },
    #     overrides: [
    #       {
    #         new_members: ["Member"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #       },
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rotation_shifts #=> Array
    #   resp.rotation_shifts[0].contact_ids #=> Array
    #   resp.rotation_shifts[0].contact_ids[0] #=> String
    #   resp.rotation_shifts[0].start_time #=> Time
    #   resp.rotation_shifts[0].end_time #=> Time
    #   resp.rotation_shifts[0].type #=> String, one of "REGULAR", "OVERRIDDEN"
    #   resp.rotation_shifts[0].shift_details.overridden_contact_ids #=> Array
    #   resp.rotation_shifts[0].shift_details.overridden_contact_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPreviewRotationShifts AWS API Documentation
    #
    # @overload list_preview_rotation_shifts(params = {})
    # @param [Hash] params ({})
    def list_preview_rotation_shifts(params = {}, options = {})
      req = build_request(:list_preview_rotation_shifts, params)
      req.send_request(options)
    end

    # Retrieves a list of overrides currently specified for an on-call
    # rotation.
    #
    # @option params [required, String] :rotation_id
    #   The Amazon Resource Name (ARN) of the rotation to retrieve information
    #   about.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The date and time for the beginning of a time range for listing
    #   overrides.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The date and time for the end of a time range for listing overrides.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListRotationOverridesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRotationOverridesResult#rotation_overrides #rotation_overrides} => Array&lt;Types::RotationOverride&gt;
    #   * {Types::ListRotationOverridesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rotation_overrides({
    #     rotation_id: "SsmContactsArn", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rotation_overrides #=> Array
    #   resp.rotation_overrides[0].rotation_override_id #=> String
    #   resp.rotation_overrides[0].new_contact_ids #=> Array
    #   resp.rotation_overrides[0].new_contact_ids[0] #=> String
    #   resp.rotation_overrides[0].start_time #=> Time
    #   resp.rotation_overrides[0].end_time #=> Time
    #   resp.rotation_overrides[0].create_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListRotationOverrides AWS API Documentation
    #
    # @overload list_rotation_overrides(params = {})
    # @param [Hash] params ({})
    def list_rotation_overrides(params = {}, options = {})
      req = build_request(:list_rotation_overrides, params)
      req.send_request(options)
    end

    # Returns a list of shifts generated by an existing rotation in the
    # system.
    #
    # @option params [required, String] :rotation_id
    #   The Amazon Resource Name (ARN) of the rotation to retrieve shift
    #   information about.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time for the beginning of the time range to list shifts
    #   for.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The date and time for the end of the time range to list shifts for.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListRotationShiftsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRotationShiftsResult#rotation_shifts #rotation_shifts} => Array&lt;Types::RotationShift&gt;
    #   * {Types::ListRotationShiftsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rotation_shifts({
    #     rotation_id: "SsmContactsArn", # required
    #     start_time: Time.now,
    #     end_time: Time.now, # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rotation_shifts #=> Array
    #   resp.rotation_shifts[0].contact_ids #=> Array
    #   resp.rotation_shifts[0].contact_ids[0] #=> String
    #   resp.rotation_shifts[0].start_time #=> Time
    #   resp.rotation_shifts[0].end_time #=> Time
    #   resp.rotation_shifts[0].type #=> String, one of "REGULAR", "OVERRIDDEN"
    #   resp.rotation_shifts[0].shift_details.overridden_contact_ids #=> Array
    #   resp.rotation_shifts[0].shift_details.overridden_contact_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListRotationShifts AWS API Documentation
    #
    # @overload list_rotation_shifts(params = {})
    # @param [Hash] params ({})
    def list_rotation_shifts(params = {}, options = {})
      req = build_request(:list_rotation_shifts, params)
      req.send_request(options)
    end

    # Retrieves a list of on-call rotations.
    #
    # @option params [String] :rotation_name_prefix
    #   A filter to include rotations in list results based on their common
    #   prefix. For example, entering prod returns a list of all rotation
    #   names that begin with `prod`, such as `production` and `prod-1`.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListRotationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRotationsResult#next_token #next_token} => String
    #   * {Types::ListRotationsResult#rotations #rotations} => Array&lt;Types::Rotation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rotations({
    #     rotation_name_prefix: "RotationName",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.rotations #=> Array
    #   resp.rotations[0].rotation_arn #=> String
    #   resp.rotations[0].name #=> String
    #   resp.rotations[0].contact_ids #=> Array
    #   resp.rotations[0].contact_ids[0] #=> String
    #   resp.rotations[0].start_time #=> Time
    #   resp.rotations[0].time_zone_id #=> String
    #   resp.rotations[0].recurrence.monthly_settings #=> Array
    #   resp.rotations[0].recurrence.monthly_settings[0].day_of_month #=> Integer
    #   resp.rotations[0].recurrence.monthly_settings[0].hand_off_time.hour_of_day #=> Integer
    #   resp.rotations[0].recurrence.monthly_settings[0].hand_off_time.minute_of_hour #=> Integer
    #   resp.rotations[0].recurrence.weekly_settings #=> Array
    #   resp.rotations[0].recurrence.weekly_settings[0].day_of_week #=> String, one of "MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"
    #   resp.rotations[0].recurrence.weekly_settings[0].hand_off_time.hour_of_day #=> Integer
    #   resp.rotations[0].recurrence.weekly_settings[0].hand_off_time.minute_of_hour #=> Integer
    #   resp.rotations[0].recurrence.daily_settings #=> Array
    #   resp.rotations[0].recurrence.daily_settings[0].hour_of_day #=> Integer
    #   resp.rotations[0].recurrence.daily_settings[0].minute_of_hour #=> Integer
    #   resp.rotations[0].recurrence.number_of_on_calls #=> Integer
    #   resp.rotations[0].recurrence.shift_coverages #=> Hash
    #   resp.rotations[0].recurrence.shift_coverages["DayOfWeek"] #=> Array
    #   resp.rotations[0].recurrence.shift_coverages["DayOfWeek"][0].start.hour_of_day #=> Integer
    #   resp.rotations[0].recurrence.shift_coverages["DayOfWeek"][0].start.minute_of_hour #=> Integer
    #   resp.rotations[0].recurrence.shift_coverages["DayOfWeek"][0].end.hour_of_day #=> Integer
    #   resp.rotations[0].recurrence.shift_coverages["DayOfWeek"][0].end.minute_of_hour #=> Integer
    #   resp.rotations[0].recurrence.recurrence_multiplier #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListRotations AWS API Documentation
    #
    # @overload list_rotations(params = {})
    # @param [Hash] params ({})
    def list_rotations(params = {}, options = {})
      req = build_request(:list_rotations, params)
      req.send_request(options)
    end

    # Lists the tags of an escalation plan or contact.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds a resource policy to the specified contact or escalation plan.
    # The resource policy is used to share the contact or escalation plan
    # using Resource Access Manager (RAM). For more information about
    # cross-account sharing, see [Setting up cross-account
    # functionality][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/incident-manager/latest/userguide/xa.html
    #
    # @option params [required, String] :contact_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #
    # @option params [required, String] :policy
    #   Details of the resource policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_contact_policy({
    #     contact_arn: "SsmContactsArn", # required
    #     policy: "Policy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/PutContactPolicy AWS API Documentation
    #
    # @overload put_contact_policy(params = {})
    # @param [Hash] params ({})
    def put_contact_policy(params = {}, options = {})
      req = build_request(:put_contact_policy, params)
      req.send_request(options)
    end

    # Sends an activation code to a contact channel. The contact can use
    # this code to activate the contact channel in the console or with the
    # `ActivateChannel` operation. Incident Manager can't engage a contact
    # channel until it has been activated.
    #
    # @option params [required, String] :contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_activation_code({
    #     contact_channel_id: "SsmContactsArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/SendActivationCode AWS API Documentation
    #
    # @overload send_activation_code(params = {})
    # @param [Hash] params ({})
    def send_activation_code(params = {}, options = {})
      req = build_request(:send_activation_code, params)
      req.send_request(options)
    end

    # Starts an engagement to a contact or escalation plan. The engagement
    # engages each contact specified in the incident.
    #
    # @option params [required, String] :contact_id
    #   The Amazon Resource Name (ARN) of the contact being engaged.
    #
    # @option params [required, String] :sender
    #   The user that started the engagement.
    #
    # @option params [required, String] :subject
    #   The secure subject of the message that was sent to the contact. Use
    #   this field for engagements to `VOICE` or `EMAIL`.
    #
    # @option params [required, String] :content
    #   The secure content of the message that was sent to the contact. Use
    #   this field for engagements to `VOICE` or `EMAIL`.
    #
    # @option params [String] :public_subject
    #   The insecure subject of the message that was sent to the contact. Use
    #   this field for engagements to `SMS`.
    #
    # @option params [String] :public_content
    #   The insecure content of the message that was sent to the contact. Use
    #   this field for engagements to `SMS`.
    #
    # @option params [String] :incident_id
    #   The ARN of the incident that the engagement is part of.
    #
    # @option params [String] :idempotency_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartEngagementResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEngagementResult#engagement_arn #engagement_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_engagement({
    #     contact_id: "SsmContactsArn", # required
    #     sender: "Sender", # required
    #     subject: "Subject", # required
    #     content: "Content", # required
    #     public_subject: "PublicSubject",
    #     public_content: "PublicContent",
    #     incident_id: "IncidentId",
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.engagement_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/StartEngagement AWS API Documentation
    #
    # @overload start_engagement(params = {})
    # @param [Hash] params ({})
    def start_engagement(params = {}, options = {})
      req = build_request(:start_engagement, params)
      req.send_request(options)
    end

    # Stops an engagement before it finishes the final stage of the
    # escalation plan or engagement plan. Further contacts aren't engaged.
    #
    # @option params [required, String] :engagement_id
    #   The Amazon Resource Name (ARN) of the engagement.
    #
    # @option params [String] :reason
    #   The reason that you're stopping the engagement.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_engagement({
    #     engagement_id: "SsmContactsArn", # required
    #     reason: "StopReason",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/StopEngagement AWS API Documentation
    #
    # @overload stop_engagement(params = {})
    # @param [Hash] params ({})
    def stop_engagement(params = {}, options = {})
      req = build_request(:stop_engagement, params)
      req.send_request(options)
    end

    # Tags a contact or escalation plan. You can tag only contacts and
    # escalation plans in the first region of your replication set.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags that you are adding to the contact or escalation plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key of the tag that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the contact or escalation plan specified.
    #
    # @option params [required, String] :contact_id
    #   The Amazon Resource Name (ARN) of the contact or escalation plan
    #   you're updating.
    #
    # @option params [String] :display_name
    #   The full name of the contact or escalation plan.
    #
    # @option params [Types::Plan] :plan
    #   A list of stages. A contact has an engagement plan with stages for
    #   specified contact channels. An escalation plan uses these stages to
    #   contact specified contacts.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact({
    #     contact_id: "SsmContactsArn", # required
    #     display_name: "ContactName",
    #     plan: {
    #       stages: [
    #         {
    #           duration_in_minutes: 1, # required
    #           targets: [ # required
    #             {
    #               channel_target_info: {
    #                 contact_channel_id: "SsmContactsArn", # required
    #                 retry_interval_in_minutes: 1,
    #               },
    #               contact_target_info: {
    #                 contact_id: "SsmContactsArn",
    #                 is_essential: false, # required
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #       rotation_ids: ["SsmContactsArn"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UpdateContact AWS API Documentation
    #
    # @overload update_contact(params = {})
    # @param [Hash] params ({})
    def update_contact(params = {}, options = {})
      req = build_request(:update_contact, params)
      req.send_request(options)
    end

    # Updates a contact's contact channel.
    #
    # @option params [required, String] :contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel you want to
    #   update.
    #
    # @option params [String] :name
    #   The name of the contact channel.
    #
    # @option params [Types::ContactChannelAddress] :delivery_address
    #   The details that Incident Manager uses when trying to engage the
    #   contact channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_channel({
    #     contact_channel_id: "SsmContactsArn", # required
    #     name: "ChannelName",
    #     delivery_address: {
    #       simple_address: "SimpleAddress",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UpdateContactChannel AWS API Documentation
    #
    # @overload update_contact_channel(params = {})
    # @param [Hash] params ({})
    def update_contact_channel(params = {}, options = {})
      req = build_request(:update_contact_channel, params)
      req.send_request(options)
    end

    # Updates the information specified for an on-call rotation.
    #
    # @option params [required, String] :rotation_id
    #   The Amazon Resource Name (ARN) of the rotation to update.
    #
    # @option params [Array<String>] :contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts to include in the
    #   updated rotation.
    #
    #   The order in which you list the contacts is their shift order in the
    #   rotation schedule.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time the rotation goes into effect.
    #
    # @option params [String] :time_zone_id
    #   The time zone to base the updated rotation’s activity on, in Internet
    #   Assigned Numbers Authority (IANA) format. For example:
    #   "America/Los\_Angeles", "UTC", or "Asia/Seoul". For more
    #   information, see the [Time Zone Database][1] on the IANA website.
    #
    #   <note markdown="1"> Designators for time zones that don’t support Daylight Savings Time
    #   Rules, such as Pacific Standard Time (PST) and Pacific Daylight Time
    #   (PDT), aren't supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #
    # @option params [required, Types::RecurrenceSettings] :recurrence
    #   Information about how long the updated rotation lasts before
    #   restarting at the beginning of the shift order.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rotation({
    #     rotation_id: "SsmContactsArn", # required
    #     contact_ids: ["SsmContactsArn"],
    #     start_time: Time.now,
    #     time_zone_id: "TimeZoneId",
    #     recurrence: { # required
    #       monthly_settings: [
    #         {
    #           day_of_month: 1, # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           },
    #         },
    #       ],
    #       weekly_settings: [
    #         {
    #           day_of_week: "MON", # required, accepts MON, TUE, WED, THU, FRI, SAT, SUN
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           },
    #         },
    #       ],
    #       daily_settings: [
    #         {
    #           hour_of_day: 1, # required
    #           minute_of_hour: 1, # required
    #         },
    #       ],
    #       number_of_on_calls: 1, # required
    #       shift_coverages: {
    #         "MON" => [
    #           {
    #             start: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #             end: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #           },
    #         ],
    #       },
    #       recurrence_multiplier: 1, # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UpdateRotation AWS API Documentation
    #
    # @overload update_rotation(params = {})
    # @param [Hash] params ({})
    def update_rotation(params = {}, options = {})
      req = build_request(:update_rotation, params)
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
      context[:gem_name] = 'aws-sdk-ssmcontacts'
      context[:gem_version] = '1.22.0'
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
