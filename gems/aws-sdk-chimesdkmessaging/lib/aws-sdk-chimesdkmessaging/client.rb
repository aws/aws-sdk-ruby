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

Aws::Plugins::GlobalConfiguration.add_identifier(:chimesdkmessaging)

module Aws::ChimeSDKMessaging
  # An API client for ChimeSDKMessaging.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ChimeSDKMessaging::Client.new(
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

    @identifier = :chimesdkmessaging

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
    add_plugin(Aws::ChimeSDKMessaging::Plugins::Endpoints)

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
    #   @option options [Aws::ChimeSDKMessaging::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ChimeSDKMessaging::EndpointParameters`
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

    # Associates a channel flow with a channel. Once associated, all
    # messages to that channel go through channel flow processors. To stop
    # processing, use the `DisassociateChannelFlow` API.
    #
    # <note markdown="1"> Only administrators or channel moderators can associate a channel
    # flow. The `x-amz-chime-bearer` request header is mandatory. Use the
    # ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the API
    # call as the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :channel_flow_arn
    #   The ARN of the channel flow.
    #
    # @option params [required, String] :chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_channel_flow({
    #     channel_arn: "ChimeArn", # required
    #     channel_flow_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/AssociateChannelFlow AWS API Documentation
    #
    # @overload associate_channel_flow(params = {})
    # @param [Hash] params ({})
    def associate_channel_flow(params = {}, options = {})
      req = build_request(:associate_channel_flow, params)
      req.send_request(options)
    end

    # Adds a specified number of users and bots to a channel.
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel to which you're adding users or bots.
    #
    # @option params [String] :type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default members
    #   are always returned as part of `ListChannelMemberships`. Hidden
    #   members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`. Otherwise hidden members are
    #   not returned. This is only supported by moderators.
    #
    # @option params [required, Array<String>] :member_arns
    #   The ARNs of the members you want to add to the channel. Only
    #   `AppInstanceUsers` and `AppInstanceBots` can be added as a channel
    #   member.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when creating membership in a SubChannel for a moderator
    #   in an elastic channel.
    #
    #    </note>
    #
    # @return [Types::BatchCreateChannelMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateChannelMembershipResponse#batch_channel_memberships #batch_channel_memberships} => Types::BatchChannelMemberships
    #   * {Types::BatchCreateChannelMembershipResponse#errors #errors} => Array&lt;Types::BatchCreateChannelMembershipError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_channel_membership({
    #     channel_arn: "ChimeArn", # required
    #     type: "DEFAULT", # accepts DEFAULT, HIDDEN
    #     member_arns: ["ChimeArn"], # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_channel_memberships.invited_by.arn #=> String
    #   resp.batch_channel_memberships.invited_by.name #=> String
    #   resp.batch_channel_memberships.type #=> String, one of "DEFAULT", "HIDDEN"
    #   resp.batch_channel_memberships.members #=> Array
    #   resp.batch_channel_memberships.members[0].arn #=> String
    #   resp.batch_channel_memberships.members[0].name #=> String
    #   resp.batch_channel_memberships.channel_arn #=> String
    #   resp.batch_channel_memberships.sub_channel_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].member_arn #=> String
    #   resp.errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/BatchCreateChannelMembership AWS API Documentation
    #
    # @overload batch_create_channel_membership(params = {})
    # @param [Hash] params ({})
    def batch_create_channel_membership(params = {}, options = {})
      req = build_request(:batch_create_channel_membership, params)
      req.send_request(options)
    end

    # Calls back Amazon Chime SDK messaging with a processing response
    # message. This should be invoked from the processor Lambda. This is a
    # developer API.
    #
    # You can return one of the following processing responses:
    #
    # * Update message content or metadata
    #
    # * Deny a message
    #
    # * Make no changes to the message
    #
    # @option params [required, String] :callback_id
    #   The identifier passed to the processor by the service when invoked.
    #   Use the identifier to call back the service.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [Boolean] :delete_resource
    #   When a processor determines that a message needs to be `DENIED`, pass
    #   this parameter with a value of true.
    #
    # @option params [required, Types::ChannelMessageCallback] :channel_message
    #   Stores information about the processed message.
    #
    # @return [Types::ChannelFlowCallbackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ChannelFlowCallbackResponse#channel_arn #channel_arn} => String
    #   * {Types::ChannelFlowCallbackResponse#callback_id #callback_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.channel_flow_callback({
    #     callback_id: "CallbackIdType", # required
    #     channel_arn: "ChimeArn", # required
    #     delete_resource: false,
    #     channel_message: { # required
    #       message_id: "MessageId", # required
    #       content: "NonEmptyContent",
    #       metadata: "Metadata",
    #       push_notification: {
    #         title: "PushNotificationTitle",
    #         body: "PushNotificationBody",
    #         type: "DEFAULT", # accepts DEFAULT, VOIP
    #       },
    #       message_attributes: {
    #         "MessageAttributeName" => {
    #           string_values: ["MessageAttributeStringValue"],
    #         },
    #       },
    #       sub_channel_id: "SubChannelId",
    #       content_type: "ContentType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.callback_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelFlowCallback AWS API Documentation
    #
    # @overload channel_flow_callback(params = {})
    # @param [Hash] params ({})
    def channel_flow_callback(params = {}, options = {})
      req = build_request(:channel_flow_callback, params)
      req.send_request(options)
    end

    # Creates a channel to which you can add users and send messages.
    #
    # **Restriction**: You can't change a channel's privacy.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the channel request.
    #
    # @option params [required, String] :name
    #   The name of the channel.
    #
    # @option params [String] :mode
    #   The channel mode: `UNRESTRICTED` or `RESTRICTED`. Administrators,
    #   moderators, and channel members can add themselves and other members
    #   to unrestricted channels. Only administrators and moderators can add
    #   members to restricted channels.
    #
    # @option params [String] :privacy
    #   The channel's privacy level: `PUBLIC` or `PRIVATE`. Private channels
    #   aren't discoverable by users outside the channel. Public channels are
    #   discoverable by anyone in the `AppInstance`.
    #
    # @option params [String] :metadata
    #   The metadata of the creation request. Limited to 1KB and UTF-8.
    #
    # @option params [required, String] :client_request_token
    #   The client token for the request. An `Idempotency` token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the creation request.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :channel_id
    #   The ID of the channel in the request.
    #
    # @option params [Array<String>] :member_arns
    #   The ARNs of the channel members in the request.
    #
    # @option params [Array<String>] :moderator_arns
    #   The ARNs of the channel moderators in the request.
    #
    # @option params [Types::ElasticChannelConfiguration] :elastic_channel_configuration
    #   The attributes required to configure and create an elastic channel. An
    #   elastic channel can support a maximum of 1-million users, excluding
    #   moderators.
    #
    # @option params [Types::ExpirationSettings] :expiration_settings
    #   Settings that control the interval after which the channel is
    #   automatically deleted.
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#channel_arn #channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     app_instance_arn: "ChimeArn", # required
    #     name: "NonEmptyResourceName", # required
    #     mode: "UNRESTRICTED", # accepts UNRESTRICTED, RESTRICTED
    #     privacy: "PUBLIC", # accepts PUBLIC, PRIVATE
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     chime_bearer: "ChimeArn", # required
    #     channel_id: "ChannelId",
    #     member_arns: ["ChimeArn"],
    #     moderator_arns: ["ChimeArn"],
    #     elastic_channel_configuration: {
    #       maximum_sub_channels: 1, # required
    #       target_memberships_per_sub_channel: 1, # required
    #       minimum_membership_percentage: 1, # required
    #     },
    #     expiration_settings: {
    #       expiration_days: 1, # required
    #       expiration_criterion: "CREATED_TIMESTAMP", # required, accepts CREATED_TIMESTAMP, LAST_MESSAGE_TIMESTAMP
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Permanently bans a member from a channel. Moderators can't add banned
    # members to a channel. To undo a ban, you first have to
    # `DeleteChannelBan`, and then `CreateChannelMembership`. Bans are
    # cleaned up when you delete users or channels.
    #
    # If you ban a user who is already part of a channel, that user is
    # automatically kicked from the channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the ban request.
    #
    # @option params [required, String] :member_arn
    #   The `AppInstanceUserArn` of the member being banned.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::CreateChannelBanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelBanResponse#channel_arn #channel_arn} => String
    #   * {Types::CreateChannelBanResponse#member #member} => Types::Identity
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_ban({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.member.arn #=> String
    #   resp.member.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelBan AWS API Documentation
    #
    # @overload create_channel_ban(params = {})
    # @param [Hash] params ({})
    def create_channel_ban(params = {}, options = {})
      req = build_request(:create_channel_ban, params)
      req.send_request(options)
    end

    # Creates a channel flow, a container for processors. Processors are AWS
    # Lambda functions that perform actions on chat messages, such as
    # stripping out profanity. You can associate channel flows with
    # channels, and the processors in the channel flow then take action on
    # all messages sent to that channel. This is a developer API.
    #
    # Channel flows process the following items:
    #
    # 1.  New and updated messages
    #
    # 2.  Persistent and non-persistent messages
    #
    # 3.  The Standard message type
    #
    # <note markdown="1"> Channel flows don't process Control or System messages. For more
    # information about the message types provided by Chime SDK messaging,
    # refer to [Message types][1] in the *Amazon Chime developer guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/using-the-messaging-sdk.html#msg-types
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the channel flow request.
    #
    # @option params [required, Array<Types::Processor>] :processors
    #   Information about the processor Lambda functions.
    #
    # @option params [required, String] :name
    #   The name of the channel flow.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the creation request.
    #
    # @option params [required, String] :client_request_token
    #   The client token for the request. An Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateChannelFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelFlowResponse#channel_flow_arn #channel_flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_flow({
    #     app_instance_arn: "ChimeArn", # required
    #     processors: [ # required
    #       {
    #         name: "NonEmptyResourceName", # required
    #         configuration: { # required
    #           lambda: { # required
    #             resource_arn: "LambdaFunctionArn", # required
    #             invocation_type: "ASYNC", # required, accepts ASYNC
    #           },
    #         },
    #         execution_order: 1, # required
    #         fallback_action: "CONTINUE", # required, accepts CONTINUE, ABORT
    #       },
    #     ],
    #     name: "NonEmptyResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelFlow AWS API Documentation
    #
    # @overload create_channel_flow(params = {})
    # @param [Hash] params ({})
    def create_channel_flow(params = {}, options = {})
      req = build_request(:create_channel_flow, params)
      req.send_request(options)
    end

    # Adds a member to a channel. The `InvitedBy` field in
    # `ChannelMembership` is derived from the request header. A channel
    # member can:
    #
    # * List messages
    #
    # * Send messages
    #
    # * Receive messages
    #
    # * Edit their own messages
    #
    # * Leave the channel
    #
    # Privacy settings impact this action as follows:
    #
    # * Public Channels: You do not need to be a member to list messages,
    #   but you must be a member to send messages.
    #
    # * Private Channels: You must be a member to list or send messages.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUserArn` or `AppInstanceBot` that makes the API call
    # as the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel to which you're adding users.
    #
    # @option params [required, String] :member_arn
    #   The `AppInstanceUserArn` of the member you want to add to the channel.
    #
    # @option params [required, String] :type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default members
    #   are always returned as part of `ListChannelMemberships`. Hidden
    #   members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`. Otherwise hidden members are
    #   not returned. This is only supported by moderators.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when creating membership in a SubChannel for a moderator
    #   in an elastic channel.
    #
    #    </note>
    #
    # @return [Types::CreateChannelMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelMembershipResponse#channel_arn #channel_arn} => String
    #   * {Types::CreateChannelMembershipResponse#member #member} => Types::Identity
    #   * {Types::CreateChannelMembershipResponse#sub_channel_id #sub_channel_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_membership({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     type: "DEFAULT", # required, accepts DEFAULT, HIDDEN
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.member.arn #=> String
    #   resp.member.name #=> String
    #   resp.sub_channel_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelMembership AWS API Documentation
    #
    # @overload create_channel_membership(params = {})
    # @param [Hash] params ({})
    def create_channel_membership(params = {}, options = {})
      req = build_request(:create_channel_membership, params)
      req.send_request(options)
    end

    # Creates a new `ChannelModerator`. A channel moderator can:
    #
    # * Add and remove other members of the channel.
    #
    # * Add and remove other moderators of the channel.
    #
    # * Add and remove user bans for the channel.
    #
    # * Redact messages in the channel.
    #
    # * List messages in the channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot`of the user that makes the
    # API call as the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :channel_moderator_arn
    #   The `AppInstanceUserArn` of the moderator.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::CreateChannelModeratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelModeratorResponse#channel_arn #channel_arn} => String
    #   * {Types::CreateChannelModeratorResponse#channel_moderator #channel_moderator} => Types::Identity
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_moderator({
    #     channel_arn: "ChimeArn", # required
    #     channel_moderator_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.channel_moderator.arn #=> String
    #   resp.channel_moderator.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelModerator AWS API Documentation
    #
    # @overload create_channel_moderator(params = {})
    # @param [Hash] params ({})
    def create_channel_moderator(params = {}, options = {})
      req = build_request(:create_channel_moderator, params)
      req.send_request(options)
    end

    # Immediately makes a channel and its memberships inaccessible and marks
    # them for deletion. This is an irreversible process.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUserArn` or `AppInstanceBot` that makes the API call
    # as the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel being deleted.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Removes a member from a channel's ban list.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel from which the `AppInstanceUser` was banned.
    #
    # @option params [required, String] :member_arn
    #   The ARN of the `AppInstanceUser` that you want to reinstate.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_ban({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelBan AWS API Documentation
    #
    # @overload delete_channel_ban(params = {})
    # @param [Hash] params ({})
    def delete_channel_ban(params = {}, options = {})
      req = build_request(:delete_channel_ban, params)
      req.send_request(options)
    end

    # Deletes a channel flow, an irreversible process. This is a developer
    # API.
    #
    # <note markdown="1"> This API works only when the channel flow is not associated with any
    # channel. To get a list of all channels that a channel flow is
    # associated with, use the `ListChannelsAssociatedWithChannelFlow` API.
    # Use the `DisassociateChannelFlow` API to disassociate a channel flow
    # from all channels.
    #
    #  </note>
    #
    # @option params [required, String] :channel_flow_arn
    #   The ARN of the channel flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_flow({
    #     channel_flow_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelFlow AWS API Documentation
    #
    # @overload delete_channel_flow(params = {})
    # @param [Hash] params ({})
    def delete_channel_flow(params = {}, options = {})
      req = build_request(:delete_channel_flow, params)
      req.send_request(options)
    end

    # Removes a member from a channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel from which you want to remove the user.
    #
    # @option params [required, String] :member_arn
    #   The `AppInstanceUserArn` of the member that you're removing from the
    #   channel.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only for use by moderators.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_membership({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelMembership AWS API Documentation
    #
    # @overload delete_channel_membership(params = {})
    # @param [Hash] params ({})
    def delete_channel_membership(params = {}, options = {})
      req = build_request(:delete_channel_membership, params)
      req.send_request(options)
    end

    # Deletes a channel message. Only admins can perform this action.
    # Deletion makes messages inaccessible immediately. A background process
    # deletes any revisions created by `UpdateChannelMessage`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :message_id
    #   The ID of the message being deleted.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when deleting messages in a SubChannel that the user
    #   belongs to.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelMessage AWS API Documentation
    #
    # @overload delete_channel_message(params = {})
    # @param [Hash] params ({})
    def delete_channel_message(params = {}, options = {})
      req = build_request(:delete_channel_message, params)
      req.send_request(options)
    end

    # Deletes a channel moderator.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :channel_moderator_arn
    #   The `AppInstanceUserArn` of the moderator being deleted.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_moderator({
    #     channel_arn: "ChimeArn", # required
    #     channel_moderator_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelModerator AWS API Documentation
    #
    # @overload delete_channel_moderator(params = {})
    # @param [Hash] params ({})
    def delete_channel_moderator(params = {}, options = {})
      req = build_request(:delete_channel_moderator, params)
      req.send_request(options)
    end

    # Deletes the streaming configurations for an `AppInstance`. For more
    # information, see [Streaming messaging data][1] in the *Amazon Chime
    # SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the streaming configurations being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_messaging_streaming_configurations({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteMessagingStreamingConfigurations AWS API Documentation
    #
    # @overload delete_messaging_streaming_configurations(params = {})
    # @param [Hash] params ({})
    def delete_messaging_streaming_configurations(params = {}, options = {})
      req = build_request(:delete_messaging_streaming_configurations, params)
      req.send_request(options)
    end

    # Returns the full details of a channel in an Amazon Chime
    # `AppInstance`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::DescribeChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelResponse#channel #channel} => Types::Channel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel({
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.name #=> String
    #   resp.channel.channel_arn #=> String
    #   resp.channel.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channel.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channel.metadata #=> String
    #   resp.channel.created_by.arn #=> String
    #   resp.channel.created_by.name #=> String
    #   resp.channel.created_timestamp #=> Time
    #   resp.channel.last_message_timestamp #=> Time
    #   resp.channel.last_updated_timestamp #=> Time
    #   resp.channel.channel_flow_arn #=> String
    #   resp.channel.elastic_channel_configuration.maximum_sub_channels #=> Integer
    #   resp.channel.elastic_channel_configuration.target_memberships_per_sub_channel #=> Integer
    #   resp.channel.elastic_channel_configuration.minimum_membership_percentage #=> Integer
    #   resp.channel.expiration_settings.expiration_days #=> Integer
    #   resp.channel.expiration_settings.expiration_criterion #=> String, one of "CREATED_TIMESTAMP", "LAST_MESSAGE_TIMESTAMP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannel AWS API Documentation
    #
    # @overload describe_channel(params = {})
    # @param [Hash] params ({})
    def describe_channel(params = {}, options = {})
      req = build_request(:describe_channel, params)
      req.send_request(options)
    end

    # Returns the full details of a channel ban.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel from which the user is banned.
    #
    # @option params [required, String] :member_arn
    #   The `AppInstanceUserArn` of the member being banned.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::DescribeChannelBanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelBanResponse#channel_ban #channel_ban} => Types::ChannelBan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_ban({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_ban.member.arn #=> String
    #   resp.channel_ban.member.name #=> String
    #   resp.channel_ban.channel_arn #=> String
    #   resp.channel_ban.created_timestamp #=> Time
    #   resp.channel_ban.created_by.arn #=> String
    #   resp.channel_ban.created_by.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelBan AWS API Documentation
    #
    # @overload describe_channel_ban(params = {})
    # @param [Hash] params ({})
    def describe_channel_ban(params = {}, options = {})
      req = build_request(:describe_channel_ban, params)
      req.send_request(options)
    end

    # Returns the full details of a channel flow in an Amazon Chime
    # `AppInstance`. This is a developer API.
    #
    # @option params [required, String] :channel_flow_arn
    #   The ARN of the channel flow.
    #
    # @return [Types::DescribeChannelFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelFlowResponse#channel_flow #channel_flow} => Types::ChannelFlow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_flow({
    #     channel_flow_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_flow.channel_flow_arn #=> String
    #   resp.channel_flow.processors #=> Array
    #   resp.channel_flow.processors[0].name #=> String
    #   resp.channel_flow.processors[0].configuration.lambda.resource_arn #=> String
    #   resp.channel_flow.processors[0].configuration.lambda.invocation_type #=> String, one of "ASYNC"
    #   resp.channel_flow.processors[0].execution_order #=> Integer
    #   resp.channel_flow.processors[0].fallback_action #=> String, one of "CONTINUE", "ABORT"
    #   resp.channel_flow.name #=> String
    #   resp.channel_flow.created_timestamp #=> Time
    #   resp.channel_flow.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelFlow AWS API Documentation
    #
    # @overload describe_channel_flow(params = {})
    # @param [Hash] params ({})
    def describe_channel_flow(params = {}, options = {})
      req = build_request(:describe_channel_flow, params)
      req.send_request(options)
    end

    # Returns the full details of a user's channel membership.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :member_arn
    #   The `AppInstanceUserArn` of the member.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request. The response contains an
    #   `ElasticChannelConfiguration` object.
    #
    #   <note markdown="1"> Only required to get a user’s SubChannel membership details.
    #
    #    </note>
    #
    # @return [Types::DescribeChannelMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelMembershipResponse#channel_membership #channel_membership} => Types::ChannelMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_membership({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_membership.invited_by.arn #=> String
    #   resp.channel_membership.invited_by.name #=> String
    #   resp.channel_membership.type #=> String, one of "DEFAULT", "HIDDEN"
    #   resp.channel_membership.member.arn #=> String
    #   resp.channel_membership.member.name #=> String
    #   resp.channel_membership.channel_arn #=> String
    #   resp.channel_membership.created_timestamp #=> Time
    #   resp.channel_membership.last_updated_timestamp #=> Time
    #   resp.channel_membership.sub_channel_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelMembership AWS API Documentation
    #
    # @overload describe_channel_membership(params = {})
    # @param [Hash] params ({})
    def describe_channel_membership(params = {}, options = {})
      req = build_request(:describe_channel_membership, params)
      req.send_request(options)
    end

    # Returns the details of a channel based on the membership of the
    # specified `AppInstanceUser` or `AppInstanceBot`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel to which the user belongs.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the user or bot in a channel.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::DescribeChannelMembershipForAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelMembershipForAppInstanceUserResponse#channel_membership #channel_membership} => Types::ChannelMembershipForAppInstanceUserSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_membership_for_app_instance_user({
    #     channel_arn: "ChimeArn", # required
    #     app_instance_user_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_membership.channel_summary.name #=> String
    #   resp.channel_membership.channel_summary.channel_arn #=> String
    #   resp.channel_membership.channel_summary.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channel_membership.channel_summary.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channel_membership.channel_summary.metadata #=> String
    #   resp.channel_membership.channel_summary.last_message_timestamp #=> Time
    #   resp.channel_membership.app_instance_user_membership_summary.type #=> String, one of "DEFAULT", "HIDDEN"
    #   resp.channel_membership.app_instance_user_membership_summary.read_marker_timestamp #=> Time
    #   resp.channel_membership.app_instance_user_membership_summary.sub_channel_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelMembershipForAppInstanceUser AWS API Documentation
    #
    # @overload describe_channel_membership_for_app_instance_user(params = {})
    # @param [Hash] params ({})
    def describe_channel_membership_for_app_instance_user(params = {}, options = {})
      req = build_request(:describe_channel_membership_for_app_instance_user, params)
      req.send_request(options)
    end

    # Returns the full details of a channel moderated by the specified
    # `AppInstanceUser` or `AppInstanceBot`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the moderated channel.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the user or bot in the moderated channel.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::DescribeChannelModeratedByAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelModeratedByAppInstanceUserResponse#channel #channel} => Types::ChannelModeratedByAppInstanceUserSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_moderated_by_app_instance_user({
    #     channel_arn: "ChimeArn", # required
    #     app_instance_user_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.channel_summary.name #=> String
    #   resp.channel.channel_summary.channel_arn #=> String
    #   resp.channel.channel_summary.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channel.channel_summary.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channel.channel_summary.metadata #=> String
    #   resp.channel.channel_summary.last_message_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelModeratedByAppInstanceUser AWS API Documentation
    #
    # @overload describe_channel_moderated_by_app_instance_user(params = {})
    # @param [Hash] params ({})
    def describe_channel_moderated_by_app_instance_user(params = {}, options = {})
      req = build_request(:describe_channel_moderated_by_app_instance_user, params)
      req.send_request(options)
    end

    # Returns the full details of a single ChannelModerator.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :channel_moderator_arn
    #   The `AppInstanceUserArn` of the channel moderator.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::DescribeChannelModeratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelModeratorResponse#channel_moderator #channel_moderator} => Types::ChannelModerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_moderator({
    #     channel_arn: "ChimeArn", # required
    #     channel_moderator_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_moderator.moderator.arn #=> String
    #   resp.channel_moderator.moderator.name #=> String
    #   resp.channel_moderator.channel_arn #=> String
    #   resp.channel_moderator.created_timestamp #=> Time
    #   resp.channel_moderator.created_by.arn #=> String
    #   resp.channel_moderator.created_by.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelModerator AWS API Documentation
    #
    # @overload describe_channel_moderator(params = {})
    # @param [Hash] params ({})
    def describe_channel_moderator(params = {}, options = {})
      req = build_request(:describe_channel_moderator, params)
      req.send_request(options)
    end

    # Disassociates a channel flow from all its channels. Once
    # disassociated, all messages to that channel stop going through the
    # channel flow processor.
    #
    # <note markdown="1"> Only administrators or channel moderators can disassociate a channel
    # flow.
    #
    #  The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :channel_flow_arn
    #   The ARN of the channel flow.
    #
    # @option params [required, String] :chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_channel_flow({
    #     channel_arn: "ChimeArn", # required
    #     channel_flow_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DisassociateChannelFlow AWS API Documentation
    #
    # @overload disassociate_channel_flow(params = {})
    # @param [Hash] params ({})
    def disassociate_channel_flow(params = {}, options = {})
      req = build_request(:disassociate_channel_flow, params)
      req.send_request(options)
    end

    # Gets the membership preferences of an `AppInstanceUser` or
    # `AppInstanceBot` for the specified channel. A user or a bot must be a
    # member of the channel and own the membership in order to retrieve
    # membership preferences. Users or bots in the `AppInstanceAdmin` and
    # channel moderator roles can't retrieve preferences for other users or
    # bots. Banned users or bots can't retrieve membership preferences for
    # the channel from which they are banned.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :member_arn
    #   The `AppInstanceUserArn` of the member retrieving the preferences.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::GetChannelMembershipPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelMembershipPreferencesResponse#channel_arn #channel_arn} => String
    #   * {Types::GetChannelMembershipPreferencesResponse#member #member} => Types::Identity
    #   * {Types::GetChannelMembershipPreferencesResponse#preferences #preferences} => Types::ChannelMembershipPreferences
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_membership_preferences({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.member.arn #=> String
    #   resp.member.name #=> String
    #   resp.preferences.push_notifications.allow_notifications #=> String, one of "ALL", "NONE", "FILTERED"
    #   resp.preferences.push_notifications.filter_rule #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMembershipPreferences AWS API Documentation
    #
    # @overload get_channel_membership_preferences(params = {})
    # @param [Hash] params ({})
    def get_channel_membership_preferences(params = {}, options = {})
      req = build_request(:get_channel_membership_preferences, params)
      req.send_request(options)
    end

    # Gets the full details of a channel message.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :message_id
    #   The ID of the message.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when getting messages in a SubChannel that the user
    #   belongs to.
    #
    #    </note>
    #
    # @return [Types::GetChannelMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelMessageResponse#channel_message #channel_message} => Types::ChannelMessage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_message.channel_arn #=> String
    #   resp.channel_message.message_id #=> String
    #   resp.channel_message.content #=> String
    #   resp.channel_message.metadata #=> String
    #   resp.channel_message.type #=> String, one of "STANDARD", "CONTROL"
    #   resp.channel_message.created_timestamp #=> Time
    #   resp.channel_message.last_edited_timestamp #=> Time
    #   resp.channel_message.last_updated_timestamp #=> Time
    #   resp.channel_message.sender.arn #=> String
    #   resp.channel_message.sender.name #=> String
    #   resp.channel_message.redacted #=> Boolean
    #   resp.channel_message.persistence #=> String, one of "PERSISTENT", "NON_PERSISTENT"
    #   resp.channel_message.status.value #=> String, one of "SENT", "PENDING", "FAILED", "DENIED"
    #   resp.channel_message.status.detail #=> String
    #   resp.channel_message.message_attributes #=> Hash
    #   resp.channel_message.message_attributes["MessageAttributeName"].string_values #=> Array
    #   resp.channel_message.message_attributes["MessageAttributeName"].string_values[0] #=> String
    #   resp.channel_message.sub_channel_id #=> String
    #   resp.channel_message.content_type #=> String
    #   resp.channel_message.target #=> Array
    #   resp.channel_message.target[0].member_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMessage AWS API Documentation
    #
    # @overload get_channel_message(params = {})
    # @param [Hash] params ({})
    def get_channel_message(params = {}, options = {})
      req = build_request(:get_channel_message, params)
      req.send_request(options)
    end

    # Gets message status for a specified `messageId`. Use this API to
    # determine the intermediate status of messages going through channel
    # flow processing. The API provides an alternative to retrieving message
    # status if the event was not received because a client wasn't
    # connected to a websocket.
    #
    # Messages can have any one of these statuses.
    #
    # SENT
    #
    # : Message processed successfully
    #
    # PENDING
    #
    # : Ongoing processing
    #
    # FAILED
    #
    # : Processing failed
    #
    # DENIED
    #
    # : Message denied by the processor
    #
    # <note markdown="1"> * This API does not return statuses for denied messages, because we
    #   don't store them once the processor denies them.
    #
    # * Only the message sender can invoke this API.
    #
    # * The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    #   the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    #   the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel
    #
    # @option params [required, String] :message_id
    #   The ID of the message.
    #
    # @option params [required, String] :chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when getting message status in a SubChannel that the
    #   user belongs to.
    #
    #    </note>
    #
    # @return [Types::GetChannelMessageStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelMessageStatusResponse#status #status} => Types::ChannelMessageStatusStructure
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_message_status({
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @example Response structure
    #
    #   resp.status.value #=> String, one of "SENT", "PENDING", "FAILED", "DENIED"
    #   resp.status.detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMessageStatus AWS API Documentation
    #
    # @overload get_channel_message_status(params = {})
    # @param [Hash] params ({})
    def get_channel_message_status(params = {}, options = {})
      req = build_request(:get_channel_message_status, params)
      req.send_request(options)
    end

    # The details of the endpoint for the messaging session.
    #
    # @return [Types::GetMessagingSessionEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMessagingSessionEndpointResponse#endpoint #endpoint} => Types::MessagingSessionEndpoint
    #
    # @example Response structure
    #
    #   resp.endpoint.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetMessagingSessionEndpoint AWS API Documentation
    #
    # @overload get_messaging_session_endpoint(params = {})
    # @param [Hash] params ({})
    def get_messaging_session_endpoint(params = {}, options = {})
      req = build_request(:get_messaging_session_endpoint, params)
      req.send_request(options)
    end

    # Retrieves the data streaming configuration for an `AppInstance`. For
    # more information, see [Streaming messaging data][1] in the *Amazon
    # Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the streaming configurations.
    #
    # @return [Types::GetMessagingStreamingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMessagingStreamingConfigurationsResponse#streaming_configurations #streaming_configurations} => Array&lt;Types::StreamingConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_messaging_streaming_configurations({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_configurations #=> Array
    #   resp.streaming_configurations[0].data_type #=> String, one of "Channel", "ChannelMessage"
    #   resp.streaming_configurations[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetMessagingStreamingConfigurations AWS API Documentation
    #
    # @overload get_messaging_streaming_configurations(params = {})
    # @param [Hash] params ({})
    def get_messaging_streaming_configurations(params = {}, options = {})
      req = build_request(:get_messaging_streaming_configurations, params)
      req.send_request(options)
    end

    # Lists all the users and bots banned from a particular channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [Integer] :max_results
    #   The maximum number of bans that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested bans are
    #   returned.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::ListChannelBansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelBansResponse#channel_arn #channel_arn} => String
    #   * {Types::ListChannelBansResponse#next_token #next_token} => String
    #   * {Types::ListChannelBansResponse#channel_bans #channel_bans} => Array&lt;Types::ChannelBanSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_bans({
    #     channel_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.next_token #=> String
    #   resp.channel_bans #=> Array
    #   resp.channel_bans[0].member.arn #=> String
    #   resp.channel_bans[0].member.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelBans AWS API Documentation
    #
    # @overload list_channel_bans(params = {})
    # @param [Hash] params ({})
    def list_channel_bans(params = {}, options = {})
      req = build_request(:list_channel_bans, params)
      req.send_request(options)
    end

    # Returns a paginated lists of all the channel flows created under a
    # single Chime. This is a developer API.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the app instance.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channel flows that you want to return.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested channel
    #   flows are returned.
    #
    # @return [Types::ListChannelFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelFlowsResponse#channel_flows #channel_flows} => Array&lt;Types::ChannelFlowSummary&gt;
    #   * {Types::ListChannelFlowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_flows({
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_flows #=> Array
    #   resp.channel_flows[0].channel_flow_arn #=> String
    #   resp.channel_flows[0].name #=> String
    #   resp.channel_flows[0].processors #=> Array
    #   resp.channel_flows[0].processors[0].name #=> String
    #   resp.channel_flows[0].processors[0].configuration.lambda.resource_arn #=> String
    #   resp.channel_flows[0].processors[0].configuration.lambda.invocation_type #=> String, one of "ASYNC"
    #   resp.channel_flows[0].processors[0].execution_order #=> Integer
    #   resp.channel_flows[0].processors[0].fallback_action #=> String, one of "CONTINUE", "ABORT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelFlows AWS API Documentation
    #
    # @overload list_channel_flows(params = {})
    # @param [Hash] params ({})
    def list_channel_flows(params = {}, options = {})
      req = build_request(:list_channel_flows, params)
      req.send_request(options)
    end

    # Lists all channel memberships in a channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # If you want to list the channels to which a specific app instance user
    # belongs, see the [ListChannelMembershipsForAppInstanceUser][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html
    #
    # @option params [required, String] :channel_arn
    #   The maximum number of channel memberships that you want returned.
    #
    # @option params [String] :type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default members
    #   are returned as part of `ListChannelMemberships` if no type is
    #   specified. Hidden members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channel memberships that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested channel
    #   memberships are returned.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when listing a user's memberships in a particular
    #   sub-channel of an elastic channel.
    #
    #    </note>
    #
    # @return [Types::ListChannelMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelMembershipsResponse#channel_arn #channel_arn} => String
    #   * {Types::ListChannelMembershipsResponse#channel_memberships #channel_memberships} => Array&lt;Types::ChannelMembershipSummary&gt;
    #   * {Types::ListChannelMembershipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_memberships({
    #     channel_arn: "ChimeArn", # required
    #     type: "DEFAULT", # accepts DEFAULT, HIDDEN
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.channel_memberships #=> Array
    #   resp.channel_memberships[0].member.arn #=> String
    #   resp.channel_memberships[0].member.name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMemberships AWS API Documentation
    #
    # @overload list_channel_memberships(params = {})
    # @param [Hash] params ({})
    def list_channel_memberships(params = {}, options = {})
      req = build_request(:list_channel_memberships, params)
      req.send_request(options)
    end

    # Lists all channels that an `AppInstanceUser` or `AppInstanceBot` is a
    # part of. Only an `AppInstanceAdmin` can call the API with a user ARN
    # that is not their own.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [String] :app_instance_user_arn
    #   The ARN of the user or bot.
    #
    # @option params [Integer] :max_results
    #   The maximum number of users that you want returned.
    #
    # @option params [String] :next_token
    #   The token returned from previous API requests until the number of
    #   channel memberships is reached.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::ListChannelMembershipsForAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelMembershipsForAppInstanceUserResponse#channel_memberships #channel_memberships} => Array&lt;Types::ChannelMembershipForAppInstanceUserSummary&gt;
    #   * {Types::ListChannelMembershipsForAppInstanceUserResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_memberships_for_app_instance_user({
    #     app_instance_user_arn: "ChimeArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_memberships #=> Array
    #   resp.channel_memberships[0].channel_summary.name #=> String
    #   resp.channel_memberships[0].channel_summary.channel_arn #=> String
    #   resp.channel_memberships[0].channel_summary.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channel_memberships[0].channel_summary.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channel_memberships[0].channel_summary.metadata #=> String
    #   resp.channel_memberships[0].channel_summary.last_message_timestamp #=> Time
    #   resp.channel_memberships[0].app_instance_user_membership_summary.type #=> String, one of "DEFAULT", "HIDDEN"
    #   resp.channel_memberships[0].app_instance_user_membership_summary.read_marker_timestamp #=> Time
    #   resp.channel_memberships[0].app_instance_user_membership_summary.sub_channel_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMembershipsForAppInstanceUser AWS API Documentation
    #
    # @overload list_channel_memberships_for_app_instance_user(params = {})
    # @param [Hash] params ({})
    def list_channel_memberships_for_app_instance_user(params = {}, options = {})
      req = build_request(:list_channel_memberships_for_app_instance_user, params)
      req.send_request(options)
    end

    # List all the messages in a channel. Returns a paginated list of
    # `ChannelMessages`. By default, sorted by creation timestamp in
    # descending order.
    #
    # <note markdown="1"> Redacted messages appear in the results as empty, since they are only
    # redacted, not deleted. Deleted messages do not appear in the results.
    # This action always returns the latest version of an edited message.
    #
    #  Also, the `x-amz-chime-bearer` request header is mandatory. Use the
    # ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the API
    # call as the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [String] :sort_order
    #   The order in which you want messages sorted. Default is Descending,
    #   based on time created.
    #
    # @option params [Time,DateTime,Date,Integer,String] :not_before
    #   The initial or starting time stamp for your requested messages.
    #
    # @option params [Time,DateTime,Date,Integer,String] :not_after
    #   The final or ending time stamp for your requested messages.
    #
    # @option params [Integer] :max_results
    #   The maximum number of messages that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested messages
    #   are returned.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when listing the messages in a SubChannel that the user
    #   belongs to.
    #
    #    </note>
    #
    # @return [Types::ListChannelMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelMessagesResponse#channel_arn #channel_arn} => String
    #   * {Types::ListChannelMessagesResponse#next_token #next_token} => String
    #   * {Types::ListChannelMessagesResponse#channel_messages #channel_messages} => Array&lt;Types::ChannelMessageSummary&gt;
    #   * {Types::ListChannelMessagesResponse#sub_channel_id #sub_channel_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_messages({
    #     channel_arn: "ChimeArn", # required
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     not_before: Time.now,
    #     not_after: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.next_token #=> String
    #   resp.channel_messages #=> Array
    #   resp.channel_messages[0].message_id #=> String
    #   resp.channel_messages[0].content #=> String
    #   resp.channel_messages[0].metadata #=> String
    #   resp.channel_messages[0].type #=> String, one of "STANDARD", "CONTROL"
    #   resp.channel_messages[0].created_timestamp #=> Time
    #   resp.channel_messages[0].last_updated_timestamp #=> Time
    #   resp.channel_messages[0].last_edited_timestamp #=> Time
    #   resp.channel_messages[0].sender.arn #=> String
    #   resp.channel_messages[0].sender.name #=> String
    #   resp.channel_messages[0].redacted #=> Boolean
    #   resp.channel_messages[0].status.value #=> String, one of "SENT", "PENDING", "FAILED", "DENIED"
    #   resp.channel_messages[0].status.detail #=> String
    #   resp.channel_messages[0].message_attributes #=> Hash
    #   resp.channel_messages[0].message_attributes["MessageAttributeName"].string_values #=> Array
    #   resp.channel_messages[0].message_attributes["MessageAttributeName"].string_values[0] #=> String
    #   resp.channel_messages[0].content_type #=> String
    #   resp.channel_messages[0].target #=> Array
    #   resp.channel_messages[0].target[0].member_arn #=> String
    #   resp.sub_channel_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMessages AWS API Documentation
    #
    # @overload list_channel_messages(params = {})
    # @param [Hash] params ({})
    def list_channel_messages(params = {}, options = {})
      req = build_request(:list_channel_messages, params)
      req.send_request(options)
    end

    # Lists all the moderators for a channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [Integer] :max_results
    #   The maximum number of moderators that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested moderators
    #   are returned.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::ListChannelModeratorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelModeratorsResponse#channel_arn #channel_arn} => String
    #   * {Types::ListChannelModeratorsResponse#next_token #next_token} => String
    #   * {Types::ListChannelModeratorsResponse#channel_moderators #channel_moderators} => Array&lt;Types::ChannelModeratorSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_moderators({
    #     channel_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.next_token #=> String
    #   resp.channel_moderators #=> Array
    #   resp.channel_moderators[0].moderator.arn #=> String
    #   resp.channel_moderators[0].moderator.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelModerators AWS API Documentation
    #
    # @overload list_channel_moderators(params = {})
    # @param [Hash] params ({})
    def list_channel_moderators(params = {}, options = {})
      req = build_request(:list_channel_moderators, params)
      req.send_request(options)
    end

    # Lists all Channels created under a single Chime App as a paginated
    # list. You can specify filters to narrow results.
    #
    # **Functionality &amp; restrictions**
    #
    # * Use privacy = `PUBLIC` to retrieve all public channels in the
    #   account.
    #
    # * Only an `AppInstanceAdmin` can set privacy = `PRIVATE` to list the
    #   private channels in an account.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [String] :privacy
    #   The privacy setting. `PUBLIC` retrieves all the public channels.
    #   `PRIVATE` retrieves private channels. Only an `AppInstanceAdmin` can
    #   retrieve private channels.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels that you want to return.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested channels
    #   are returned.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#channels #channels} => Array&lt;Types::ChannelSummary&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     app_instance_arn: "ChimeArn", # required
    #     privacy: "PUBLIC", # accepts PUBLIC, PRIVATE
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].name #=> String
    #   resp.channels[0].channel_arn #=> String
    #   resp.channels[0].mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channels[0].privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channels[0].metadata #=> String
    #   resp.channels[0].last_message_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Lists all channels associated with a specified channel flow. You can
    # associate a channel flow with multiple channels, but you can only
    # associate a channel with one channel flow. This is a developer API.
    #
    # @option params [required, String] :channel_flow_arn
    #   The ARN of the channel flow.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels that you want to return.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested channels
    #   are returned.
    #
    # @return [Types::ListChannelsAssociatedWithChannelFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsAssociatedWithChannelFlowResponse#channels #channels} => Array&lt;Types::ChannelAssociatedWithFlowSummary&gt;
    #   * {Types::ListChannelsAssociatedWithChannelFlowResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels_associated_with_channel_flow({
    #     channel_flow_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].name #=> String
    #   resp.channels[0].channel_arn #=> String
    #   resp.channels[0].mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channels[0].privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channels[0].metadata #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelsAssociatedWithChannelFlow AWS API Documentation
    #
    # @overload list_channels_associated_with_channel_flow(params = {})
    # @param [Hash] params ({})
    def list_channels_associated_with_channel_flow(params = {}, options = {})
      req = build_request(:list_channels_associated_with_channel_flow, params)
      req.send_request(options)
    end

    # A list of the channels moderated by an `AppInstanceUser`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [String] :app_instance_user_arn
    #   The ARN of the user or bot in the moderated channel.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels in the request.
    #
    # @option params [String] :next_token
    #   The token returned from previous API requests until the number of
    #   channels moderated by the user is reached.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::ListChannelsModeratedByAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsModeratedByAppInstanceUserResponse#channels #channels} => Array&lt;Types::ChannelModeratedByAppInstanceUserSummary&gt;
    #   * {Types::ListChannelsModeratedByAppInstanceUserResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels_moderated_by_app_instance_user({
    #     app_instance_user_arn: "ChimeArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].channel_summary.name #=> String
    #   resp.channels[0].channel_summary.channel_arn #=> String
    #   resp.channels[0].channel_summary.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channels[0].channel_summary.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channels[0].channel_summary.metadata #=> String
    #   resp.channels[0].channel_summary.last_message_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelsModeratedByAppInstanceUser AWS API Documentation
    #
    # @overload list_channels_moderated_by_app_instance_user(params = {})
    # @param [Hash] params ({})
    def list_channels_moderated_by_app_instance_user(params = {}, options = {})
      req = build_request(:list_channels_moderated_by_app_instance_user, params)
      req.send_request(options)
    end

    # Lists all the SubChannels in an elastic channel when given a channel
    # ID. Available only to the app instance admins and channel moderators
    # of elastic channels.
    #
    # @option params [required, String] :channel_arn
    #   The ARN of elastic channel.
    #
    # @option params [required, String] :chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of sub-channels that you want to return.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested
    #   sub-channels are returned.
    #
    # @return [Types::ListSubChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubChannelsResponse#channel_arn #channel_arn} => String
    #   * {Types::ListSubChannelsResponse#sub_channels #sub_channels} => Array&lt;Types::SubChannelSummary&gt;
    #   * {Types::ListSubChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sub_channels({
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.sub_channels #=> Array
    #   resp.sub_channels[0].sub_channel_id #=> String
    #   resp.sub_channels[0].membership_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListSubChannels AWS API Documentation
    #
    # @overload list_sub_channels(params = {})
    # @param [Hash] params ({})
    def list_sub_channels(params = {}, options = {})
      req = build_request(:list_sub_channels, params)
      req.send_request(options)
    end

    # Lists the tags applied to an Amazon Chime SDK messaging resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Sets the number of days before the channel is automatically deleted.
    #
    # <note markdown="1"> * A background process deletes expired channels within 6 hours of
    #   expiration. Actual deletion times may vary.
    #
    # * Expired channels that have not yet been deleted appear as active,
    #   and you can update their expiration settings. The system honors the
    #   new settings.
    #
    # * The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    #   the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    #   the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [Types::ExpirationSettings] :expiration_settings
    #   Settings that control the interval after which a channel is deleted.
    #
    # @return [Types::PutChannelExpirationSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutChannelExpirationSettingsResponse#channel_arn #channel_arn} => String
    #   * {Types::PutChannelExpirationSettingsResponse#expiration_settings #expiration_settings} => Types::ExpirationSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_channel_expiration_settings({
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #     expiration_settings: {
    #       expiration_days: 1, # required
    #       expiration_criterion: "CREATED_TIMESTAMP", # required, accepts CREATED_TIMESTAMP, LAST_MESSAGE_TIMESTAMP
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.expiration_settings.expiration_days #=> Integer
    #   resp.expiration_settings.expiration_criterion #=> String, one of "CREATED_TIMESTAMP", "LAST_MESSAGE_TIMESTAMP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PutChannelExpirationSettings AWS API Documentation
    #
    # @overload put_channel_expiration_settings(params = {})
    # @param [Hash] params ({})
    def put_channel_expiration_settings(params = {}, options = {})
      req = build_request(:put_channel_expiration_settings, params)
      req.send_request(options)
    end

    # Sets the membership preferences of an `AppInstanceUser` or
    # `AppInstanceBot` for the specified channel. The user or bot must be a
    # member of the channel. Only the user or bot who owns the membership
    # can set preferences. Users or bots in the `AppInstanceAdmin` and
    # channel moderator roles can't set preferences for other users. Banned
    # users or bots can't set membership preferences for the channel from
    # which they are banned.
    #
    # <note markdown="1"> The x-amz-chime-bearer request header is mandatory. Use the ARN of an
    # `AppInstanceUser` or `AppInstanceBot` that makes the API call as the
    # value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :member_arn
    #   The ARN of the member setting the preferences.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [required, Types::ChannelMembershipPreferences] :preferences
    #   The channel membership preferences of an `AppInstanceUser` .
    #
    # @return [Types::PutChannelMembershipPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutChannelMembershipPreferencesResponse#channel_arn #channel_arn} => String
    #   * {Types::PutChannelMembershipPreferencesResponse#member #member} => Types::Identity
    #   * {Types::PutChannelMembershipPreferencesResponse#preferences #preferences} => Types::ChannelMembershipPreferences
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_channel_membership_preferences({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #     preferences: { # required
    #       push_notifications: {
    #         allow_notifications: "ALL", # required, accepts ALL, NONE, FILTERED
    #         filter_rule: "FilterRule",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.member.arn #=> String
    #   resp.member.name #=> String
    #   resp.preferences.push_notifications.allow_notifications #=> String, one of "ALL", "NONE", "FILTERED"
    #   resp.preferences.push_notifications.filter_rule #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PutChannelMembershipPreferences AWS API Documentation
    #
    # @overload put_channel_membership_preferences(params = {})
    # @param [Hash] params ({})
    def put_channel_membership_preferences(params = {}, options = {})
      req = build_request(:put_channel_membership_preferences, params)
      req.send_request(options)
    end

    # Sets the data streaming configuration for an `AppInstance`. For more
    # information, see [Streaming messaging data][1] in the *Amazon Chime
    # SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the streaming configuration.
    #
    # @option params [required, Array<Types::StreamingConfiguration>] :streaming_configurations
    #   The streaming configurations.
    #
    # @return [Types::PutMessagingStreamingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutMessagingStreamingConfigurationsResponse#streaming_configurations #streaming_configurations} => Array&lt;Types::StreamingConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_messaging_streaming_configurations({
    #     app_instance_arn: "ChimeArn", # required
    #     streaming_configurations: [ # required
    #       {
    #         data_type: "Channel", # required, accepts Channel, ChannelMessage
    #         resource_arn: "ChimeArn", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_configurations #=> Array
    #   resp.streaming_configurations[0].data_type #=> String, one of "Channel", "ChannelMessage"
    #   resp.streaming_configurations[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PutMessagingStreamingConfigurations AWS API Documentation
    #
    # @overload put_messaging_streaming_configurations(params = {})
    # @param [Hash] params ({})
    def put_messaging_streaming_configurations(params = {}, options = {})
      req = build_request(:put_messaging_streaming_configurations, params)
      req.send_request(options)
    end

    # Redacts message content, but not metadata. The message exists in the
    # back end, but the action returns null content, and the state shows as
    # redacted.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel containing the messages that you want to
    #   redact.
    #
    # @option params [required, String] :message_id
    #   The ID of the message being redacted.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    # @return [Types::RedactChannelMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RedactChannelMessageResponse#channel_arn #channel_arn} => String
    #   * {Types::RedactChannelMessageResponse#message_id #message_id} => String
    #   * {Types::RedactChannelMessageResponse#sub_channel_id #sub_channel_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.message_id #=> String
    #   resp.sub_channel_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/RedactChannelMessage AWS API Documentation
    #
    # @overload redact_channel_message(params = {})
    # @param [Hash] params ({})
    def redact_channel_message(params = {}, options = {})
      req = build_request(:redact_channel_message, params)
      req.send_request(options)
    end

    # Allows the `ChimeBearer` to search channels by channel members. Users
    # or bots can search across the channels that they belong to. Users in
    # the `AppInstanceAdmin` role can search across all channels.
    #
    # The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #
    # @option params [required, Array<Types::SearchField>] :fields
    #   A list of the `Field` objects in the channel being searched.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels that you want returned.
    #
    # @option params [String] :next_token
    #   The token returned from previous API requests until the number of
    #   channels is reached.
    #
    # @return [Types::SearchChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchChannelsResponse#channels #channels} => Array&lt;Types::ChannelSummary&gt;
    #   * {Types::SearchChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_channels({
    #     chime_bearer: "ChimeArn",
    #     fields: [ # required
    #       {
    #         key: "MEMBERS", # required, accepts MEMBERS
    #         values: ["SearchFieldValue"], # required
    #         operator: "EQUALS", # required, accepts EQUALS, INCLUDES
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].name #=> String
    #   resp.channels[0].channel_arn #=> String
    #   resp.channels[0].mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channels[0].privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channels[0].metadata #=> String
    #   resp.channels[0].last_message_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/SearchChannels AWS API Documentation
    #
    # @overload search_channels(params = {})
    # @param [Hash] params ({})
    def search_channels(params = {}, options = {})
      req = build_request(:search_channels, params)
      req.send_request(options)
    end

    # Sends a message to a particular channel that the member is a part of.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  Also, `STANDARD` messages can be up to 4KB in size and contain
    # metadata. Metadata is arbitrary, and you can use it in a variety of
    # ways, such as containing a link to an attachment.
    #
    #  `CONTROL` messages are limited to 30 bytes and do not contain
    # metadata.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :content
    #   The content of the channel message.
    #
    # @option params [required, String] :type
    #   The type of message, `STANDARD` or `CONTROL`.
    #
    #   `STANDARD` messages can be up to 4KB in size and contain metadata.
    #   Metadata is arbitrary, and you can use it in a variety of ways, such
    #   as containing a link to an attachment.
    #
    #   `CONTROL` messages are limited to 30 bytes and do not contain
    #   metadata.
    #
    # @option params [required, String] :persistence
    #   Boolean that controls whether the message is persisted on the back
    #   end. Required.
    #
    # @option params [String] :metadata
    #   The optional metadata for each message.
    #
    # @option params [required, String] :client_request_token
    #   The `Idempotency` token for each client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [Types::PushNotificationConfiguration] :push_notification
    #   The push notification configuration of the message.
    #
    # @option params [Hash<String,Types::MessageAttributeValue>] :message_attributes
    #   The attributes for the message, used for message filtering along with
    #   a `FilterRule` defined in the `PushNotificationPreferences`.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    # @option params [String] :content_type
    #   The content type of the channel message.
    #
    # @option params [Array<Types::Target>] :target
    #   The target of a message. Must be a member of the channel, such as
    #   another user, a bot, or the sender. Only the target and the sender can
    #   view targeted messages. Only users who can see targeted messages can
    #   take actions on them. However, administrators can delete targeted
    #   messages that they can’t see.
    #
    # @return [Types::SendChannelMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendChannelMessageResponse#channel_arn #channel_arn} => String
    #   * {Types::SendChannelMessageResponse#message_id #message_id} => String
    #   * {Types::SendChannelMessageResponse#status #status} => Types::ChannelMessageStatusStructure
    #   * {Types::SendChannelMessageResponse#sub_channel_id #sub_channel_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     content: "NonEmptyContent", # required
    #     type: "STANDARD", # required, accepts STANDARD, CONTROL
    #     persistence: "PERSISTENT", # required, accepts PERSISTENT, NON_PERSISTENT
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     chime_bearer: "ChimeArn", # required
    #     push_notification: {
    #       title: "PushNotificationTitle",
    #       body: "PushNotificationBody",
    #       type: "DEFAULT", # accepts DEFAULT, VOIP
    #     },
    #     message_attributes: {
    #       "MessageAttributeName" => {
    #         string_values: ["MessageAttributeStringValue"],
    #       },
    #     },
    #     sub_channel_id: "SubChannelId",
    #     content_type: "ContentType",
    #     target: [
    #       {
    #         member_arn: "ChimeArn",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.message_id #=> String
    #   resp.status.value #=> String, one of "SENT", "PENDING", "FAILED", "DENIED"
    #   resp.status.detail #=> String
    #   resp.sub_channel_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/SendChannelMessage AWS API Documentation
    #
    # @overload send_channel_message(params = {})
    # @param [Hash] params ({})
    def send_channel_message(params = {}, options = {})
      req = build_request(:send_channel_message, params)
      req.send_request(options)
    end

    # Applies the specified tags to the specified Amazon Chime SDK messaging
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ChimeArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified Amazon Chime SDK
    # messaging resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ChimeArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update a channel's attributes.
    #
    # **Restriction**: You can't change a channel's privacy.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [String] :name
    #   The name of the channel.
    #
    # @option params [String] :mode
    #   The mode of the update request.
    #
    # @option params [String] :metadata
    #   The metadata for the update request.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#channel_arn #channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     channel_arn: "ChimeArn", # required
    #     name: "NonEmptyResourceName",
    #     mode: "UNRESTRICTED", # accepts UNRESTRICTED, RESTRICTED
    #     metadata: "Metadata",
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Updates channel flow attributes. This is a developer API.
    #
    # @option params [required, String] :channel_flow_arn
    #   The ARN of the channel flow.
    #
    # @option params [required, Array<Types::Processor>] :processors
    #   Information about the processor Lambda functions
    #
    # @option params [required, String] :name
    #   The name of the channel flow.
    #
    # @return [Types::UpdateChannelFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelFlowResponse#channel_flow_arn #channel_flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_flow({
    #     channel_flow_arn: "ChimeArn", # required
    #     processors: [ # required
    #       {
    #         name: "NonEmptyResourceName", # required
    #         configuration: { # required
    #           lambda: { # required
    #             resource_arn: "LambdaFunctionArn", # required
    #             invocation_type: "ASYNC", # required, accepts ASYNC
    #           },
    #         },
    #         execution_order: 1, # required
    #         fallback_action: "CONTINUE", # required, accepts CONTINUE, ABORT
    #       },
    #     ],
    #     name: "NonEmptyResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelFlow AWS API Documentation
    #
    # @overload update_channel_flow(params = {})
    # @param [Hash] params ({})
    def update_channel_flow(params = {}, options = {})
      req = build_request(:update_channel_flow, params)
      req.send_request(options)
    end

    # Updates the content of a message.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :message_id
    #   The ID string of the message being updated.
    #
    # @option params [required, String] :content
    #   The content of the channel message.
    #
    # @option params [String] :metadata
    #   The metadata of the message being updated.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @option params [String] :sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when updating messages in a SubChannel that the user
    #   belongs to.
    #
    #    </note>
    #
    # @option params [String] :content_type
    #   The content type of the channel message.
    #
    # @return [Types::UpdateChannelMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelMessageResponse#channel_arn #channel_arn} => String
    #   * {Types::UpdateChannelMessageResponse#message_id #message_id} => String
    #   * {Types::UpdateChannelMessageResponse#status #status} => Types::ChannelMessageStatusStructure
    #   * {Types::UpdateChannelMessageResponse#sub_channel_id #sub_channel_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     content: "NonEmptyContent", # required
    #     metadata: "Metadata",
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #     content_type: "ContentType",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.message_id #=> String
    #   resp.status.value #=> String, one of "SENT", "PENDING", "FAILED", "DENIED"
    #   resp.status.detail #=> String
    #   resp.sub_channel_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelMessage AWS API Documentation
    #
    # @overload update_channel_message(params = {})
    # @param [Hash] params ({})
    def update_channel_message(params = {}, options = {})
      req = build_request(:update_channel_message, params)
      req.send_request(options)
    end

    # The details of the time when a user last read messages in a channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the ARN of
    # the `AppInstanceUser` or `AppInstanceBot` that makes the API call as
    # the value in the header.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #
    # @return [Types::UpdateChannelReadMarkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelReadMarkerResponse#channel_arn #channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_read_marker({
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelReadMarker AWS API Documentation
    #
    # @overload update_channel_read_marker(params = {})
    # @param [Hash] params ({})
    def update_channel_read_marker(params = {}, options = {})
      req = build_request(:update_channel_read_marker, params)
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
      context[:gem_name] = 'aws-sdk-chimesdkmessaging'
      context[:gem_version] = '1.24.0'
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
