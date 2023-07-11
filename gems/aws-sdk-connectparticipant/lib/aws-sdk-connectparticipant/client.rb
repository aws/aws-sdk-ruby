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

Aws::Plugins::GlobalConfiguration.add_identifier(:connectparticipant)

module Aws::ConnectParticipant
  # An API client for ConnectParticipant.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ConnectParticipant::Client.new(
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

    @identifier = :connectparticipant

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
    add_plugin(Aws::ConnectParticipant::Plugins::Endpoints)

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
    #   @option options [Aws::ConnectParticipant::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ConnectParticipant::EndpointParameters`
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

    # Allows you to confirm that the attachment has been uploaded using the
    # pre-signed URL provided in StartAttachmentUpload API.
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, Array<String>] :attachment_ids
    #   A list of unique identifiers for the attachments.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_attachment_upload({
    #     attachment_ids: ["ArtifactId"], # required
    #     client_token: "NonEmptyClientToken", # required
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CompleteAttachmentUpload AWS API Documentation
    #
    # @overload complete_attachment_upload(params = {})
    # @param [Hash] params ({})
    def complete_attachment_upload(params = {}, options = {})
      req = build_request(:complete_attachment_upload, params)
      req.send_request(options)
    end

    # Creates the participant's connection.
    #
    # <note markdown="1"> `ParticipantToken` is used for invoking this API instead of
    # `ConnectionToken`.
    #
    #  </note>
    #
    # The participant token is valid for the lifetime of the participant –
    # until they are part of a contact.
    #
    # The response URL for `WEBSOCKET` Type has a connect expiry timeout of
    # 100s. Clients must manually connect to the returned websocket URL and
    # subscribe to the desired topic.
    #
    # For chat, you need to publish the following on the established
    # websocket connection:
    #
    # `\{"topic":"aws/subscribe","content":\{"topics":["aws/chat"]\}\}`
    #
    # Upon websocket URL expiry, as specified in the response
    # ConnectionExpiry parameter, clients need to call this API again to
    # obtain a new websocket URL and perform the same steps as before.
    #
    # **Message streaming support**: This API can also be used together with
    # the [StartContactStreaming][1] API to create a participant connection
    # for chat contacts that are not using a websocket. For more information
    # about message streaming, [Enable real-time chat message streaming][2]
    # in the *Amazon Connect Administrator Guide*.
    #
    # **Feature specifications**: For information about feature
    # specifications, such as the allowed number of open websocket
    # connections per participant, see [Feature specifications][3] in the
    # *Amazon Connect Administrator Guide*.
    #
    # <note markdown="1"> The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][4].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits
    # [4]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [Array<String>] :type
    #   Type of connection information required. This can be omitted if
    #   `ConnectParticipant` is `true`.
    #
    # @option params [required, String] :participant_token
    #   This is a header parameter.
    #
    #   The ParticipantToken as obtained from [StartChatContact][1] API
    #   response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html
    #
    # @option params [Boolean] :connect_participant
    #   Amazon Connect Participant is used to mark the participant as
    #   connected for customer participant in message streaming, as well as
    #   for agent or manager participant in non-streaming chats.
    #
    # @return [Types::CreateParticipantConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateParticipantConnectionResponse#websocket #websocket} => Types::Websocket
    #   * {Types::CreateParticipantConnectionResponse#connection_credentials #connection_credentials} => Types::ConnectionCredentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_participant_connection({
    #     type: ["WEBSOCKET"], # accepts WEBSOCKET, CONNECTION_CREDENTIALS
    #     participant_token: "ParticipantToken", # required
    #     connect_participant: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.websocket.url #=> String
    #   resp.websocket.connection_expiry #=> String
    #   resp.connection_credentials.connection_token #=> String
    #   resp.connection_credentials.expiry #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CreateParticipantConnection AWS API Documentation
    #
    # @overload create_participant_connection(params = {})
    # @param [Hash] params ({})
    def create_participant_connection(params = {}, options = {})
      req = build_request(:create_participant_connection, params)
      req.send_request(options)
    end

    # Disconnects a participant.
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_participant({
    #     client_token: "ClientToken",
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/DisconnectParticipant AWS API Documentation
    #
    # @overload disconnect_participant(params = {})
    # @param [Hash] params ({})
    def disconnect_participant(params = {}, options = {})
      req = build_request(:disconnect_participant, params)
      req.send_request(options)
    end

    # Provides a pre-signed URL for download of a completed attachment. This
    # is an asynchronous API for use with active contacts.
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :attachment_id
    #   A unique identifier for the attachment.
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Types::GetAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAttachmentResponse#url #url} => String
    #   * {Types::GetAttachmentResponse#url_expiry #url_expiry} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attachment({
    #     attachment_id: "ArtifactId", # required
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #   resp.url_expiry #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetAttachment AWS API Documentation
    #
    # @overload get_attachment(params = {})
    # @param [Hash] params ({})
    def get_attachment(params = {}, options = {})
      req = build_request(:get_attachment, params)
      req.send_request(options)
    end

    # Retrieves a transcript of the session, including details about any
    # attachments. For information about accessing past chat contact
    # transcripts for a persistent chat, see [Enable persistent chat][1].
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html
    # [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [String] :contact_id
    #   The contactId from the current contact chain for which transcript is
    #   needed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the page. Default: 10.
    #
    # @option params [String] :next_token
    #   The pagination token. Use the value returned previously in the next
    #   subsequent request to retrieve the next set of results.
    #
    # @option params [String] :scan_direction
    #   The direction from StartPosition from which to retrieve message.
    #   Default: BACKWARD when no StartPosition is provided, FORWARD with
    #   StartPosition.
    #
    # @option params [String] :sort_order
    #   The sort order for the records. Default: DESCENDING.
    #
    # @option params [Types::StartPosition] :start_position
    #   A filtering option for where to start.
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Types::GetTranscriptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTranscriptResponse#initial_contact_id #initial_contact_id} => String
    #   * {Types::GetTranscriptResponse#transcript #transcript} => Array&lt;Types::Item&gt;
    #   * {Types::GetTranscriptResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transcript({
    #     contact_id: "ContactId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     scan_direction: "FORWARD", # accepts FORWARD, BACKWARD
    #     sort_order: "DESCENDING", # accepts DESCENDING, ASCENDING
    #     start_position: {
    #       id: "ChatItemId",
    #       absolute_time: "Instant",
    #       most_recent: 1,
    #     },
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.initial_contact_id #=> String
    #   resp.transcript #=> Array
    #   resp.transcript[0].absolute_time #=> String
    #   resp.transcript[0].content #=> String
    #   resp.transcript[0].content_type #=> String
    #   resp.transcript[0].id #=> String
    #   resp.transcript[0].type #=> String, one of "TYPING", "PARTICIPANT_JOINED", "PARTICIPANT_LEFT", "CHAT_ENDED", "TRANSFER_SUCCEEDED", "TRANSFER_FAILED", "MESSAGE", "EVENT", "ATTACHMENT", "CONNECTION_ACK", "MESSAGE_DELIVERED", "MESSAGE_READ"
    #   resp.transcript[0].participant_id #=> String
    #   resp.transcript[0].display_name #=> String
    #   resp.transcript[0].participant_role #=> String, one of "AGENT", "CUSTOMER", "SYSTEM"
    #   resp.transcript[0].attachments #=> Array
    #   resp.transcript[0].attachments[0].content_type #=> String
    #   resp.transcript[0].attachments[0].attachment_id #=> String
    #   resp.transcript[0].attachments[0].attachment_name #=> String
    #   resp.transcript[0].attachments[0].status #=> String, one of "APPROVED", "REJECTED", "IN_PROGRESS"
    #   resp.transcript[0].message_metadata.message_id #=> String
    #   resp.transcript[0].message_metadata.receipts #=> Array
    #   resp.transcript[0].message_metadata.receipts[0].delivered_timestamp #=> String
    #   resp.transcript[0].message_metadata.receipts[0].read_timestamp #=> String
    #   resp.transcript[0].message_metadata.receipts[0].recipient_participant_id #=> String
    #   resp.transcript[0].related_contact_id #=> String
    #   resp.transcript[0].contact_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetTranscript AWS API Documentation
    #
    # @overload get_transcript(params = {})
    # @param [Hash] params ({})
    def get_transcript(params = {}, options = {})
      req = build_request(:get_transcript, params)
      req.send_request(options)
    end

    # Sends an event.
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :content_type
    #   The content type of the request. Supported types are:
    #
    #   * application/vnd.amazonaws.connect.event.typing
    #
    #   * application/vnd.amazonaws.connect.event.connection.acknowledged
    #
    #   * application/vnd.amazonaws.connect.event.message.delivered
    #
    #   * application/vnd.amazonaws.connect.event.message.read
    #
    # @option params [String] :content
    #   The content of the event to be sent (for example, message text). For
    #   content related to message receipts, this is supported in the form of
    #   a JSON string.
    #
    #   Sample Content:
    #   "\\\{\\"messageId\\":\\"11111111-aaaa-bbbb-cccc-EXAMPLE01234\\"\\}"
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Types::SendEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendEventResponse#id #id} => String
    #   * {Types::SendEventResponse#absolute_time #absolute_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_event({
    #     content_type: "ChatContentType", # required
    #     content: "ChatContent",
    #     client_token: "ClientToken",
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.absolute_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/SendEvent AWS API Documentation
    #
    # @overload send_event(params = {})
    # @param [Hash] params ({})
    def send_event(params = {}, options = {})
      req = build_request(:send_event, params)
      req.send_request(options)
    end

    # Sends a message.
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :content_type
    #   The type of the content. Supported types are `text/plain`,
    #   `text/markdown`, `application/json`, and
    #   `application/vnd.amazonaws.connect.message.interactive.response`.
    #
    # @option params [required, String] :content
    #   The content of the message.
    #
    #   * For `text/plain` and `text/markdown`, the Length Constraints are
    #     Minimum of 1, Maximum of 1024.
    #
    #   * For `application/json`, the Length Constraints are Minimum of 1,
    #     Maximum of 12000.
    #
    #   * For
    #     `application/vnd.amazonaws.connect.message.interactive.response`,
    #     the Length Constraints are Minimum of 1, Maximum of 12288.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the connection.
    #
    # @return [Types::SendMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendMessageResponse#id #id} => String
    #   * {Types::SendMessageResponse#absolute_time #absolute_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_message({
    #     content_type: "ChatContentType", # required
    #     content: "ChatContent", # required
    #     client_token: "ClientToken",
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.absolute_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/SendMessage AWS API Documentation
    #
    # @overload send_message(params = {})
    # @param [Hash] params ({})
    def send_message(params = {}, options = {})
      req = build_request(:send_message, params)
      req.send_request(options)
    end

    # Provides a pre-signed Amazon S3 URL in response for uploading the file
    # directly to S3.
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :content_type
    #   Describes the MIME file type of the attachment. For a list of
    #   supported file types, see [Feature specifications][1] in the *Amazon
    #   Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html
    #
    # @option params [required, Integer] :attachment_size_in_bytes
    #   The size of the attachment in bytes.
    #
    # @option params [required, String] :attachment_name
    #   A case-sensitive name of the attachment being uploaded.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Types::StartAttachmentUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAttachmentUploadResponse#attachment_id #attachment_id} => String
    #   * {Types::StartAttachmentUploadResponse#upload_metadata #upload_metadata} => Types::UploadMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_attachment_upload({
    #     content_type: "ContentType", # required
    #     attachment_size_in_bytes: 1, # required
    #     attachment_name: "AttachmentName", # required
    #     client_token: "NonEmptyClientToken", # required
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment_id #=> String
    #   resp.upload_metadata.url #=> String
    #   resp.upload_metadata.url_expiry #=> String
    #   resp.upload_metadata.headers_to_include #=> Hash
    #   resp.upload_metadata.headers_to_include["UploadMetadataSignedHeadersKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/StartAttachmentUpload AWS API Documentation
    #
    # @overload start_attachment_upload(params = {})
    # @param [Hash] params ({})
    def start_attachment_upload(params = {}, options = {})
      req = build_request(:start_attachment_upload, params)
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
      context[:gem_name] = 'aws-sdk-connectparticipant'
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
