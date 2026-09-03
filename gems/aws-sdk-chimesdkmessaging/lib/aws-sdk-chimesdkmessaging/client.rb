# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:chimesdkmessaging)

module Aws::ChimeSDKMessaging
  # An API client for Aws::ChimeSDKMessaging.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ChimeMessagingService
    @identifier = :chimesdkmessaging

    add_plugin(::Aws::ChimeSDKMessaging::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ChimeSDKMessaging::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Associates a channel flow with a channel. Once associated, all messages to that channel go through channel flow processors. To stop processing, use the 
    #          <code>DisassociateChannelFlow</code> API.</p>
    #          <note>
    #             <p>Only administrators or channel moderators can associate a channel flow. The 
    #          <code>x-amz-chime-bearer</code> request header is mandatory. Use the ARN of the 
    #          <code>AppInstanceUser</code> or <code>AppInstanceBot</code>
    #          that makes the API call as the value in the header.</p>
    #          </note>
    # @param [Hash, Types::AssociateChannelFlowRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     channel_flow_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.associate_channel_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_channel_flow(params = {}, options = {})
      request = build_request(:associate_channel_flow, params)
      request.send_request(options)
    end

    # <p>Adds a specified number of users and bots to a channel. </p>
    # @param [Hash, Types::BatchCreateChannelMembershipRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel to which you're adding users or bots.</p>
    # @option params [String] :type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    # @option params [Array<String>] :member_arns
    #   <p>The ARNs of the members you want to add to the channel. Only <code>AppInstanceUsers</code> and 
    #            <code>AppInstanceBots</code> can be added as a channel member.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request. </p>
    #            <note>
    #               <p>Only required when creating membership in a SubChannel for a moderator in an elastic channel.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     type: "DEFAULT" # One of: ["DEFAULT", "HIDDEN"],
    #     member_arns: ["ChimeArn"], # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.batch_create_channel_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_channel_memberships: {
    #       invited_by: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       },
    #       type: "DEFAULT" # One of: ["DEFAULT", "HIDDEN"],
    #       members: [
    #         {
    #           arn: "ChimeArn",
    #           name: "ResourceName"
    #         }
    #       ],
    #       channel_arn: "ChimeArn",
    #       sub_channel_id: "SubChannelId"
    #     },
    #     errors: [
    #       {
    #         member_arn: "ChimeArn",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateChannelMembershipResponse]
    def batch_create_channel_membership(params = {}, options = {})
      request = build_request(:batch_create_channel_membership, params)
      request.send_request(options)
    end

    # <p>Calls back Amazon Chime SDK messaging with a processing response message. This should be invoked from the processor Lambda. This is a developer API.</p>
    #          <p>You can return one of the following processing responses:</p>
    #          <ul>
    #             <li>
    #                <p>Update message content or metadata</p>
    #             </li>
    #             <li>
    #                <p>Deny a message</p>
    #             </li>
    #             <li>
    #                <p>Make no changes to the message</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ChannelFlowCallbackRequest] params
    # @option params [String] :callback_id
    #   <p>The identifier passed to the processor by the service when invoked. Use the identifier to call back the service.</p>
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [Boolean] :delete_resource
    #   <p>When a processor determines that a message needs to be <code>DENIED</code>, pass this parameter with a value of true.</p>
    # @option params [Types::ChannelMessageCallback] :channel_message
    #   <p>Stores information about the processed message.</p>
    # @example Request syntax with placeholder values
    #   params = {
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
    #         type: "DEFAULT" # One of: ["DEFAULT", "VOIP"]
    #       },
    #       message_attributes: {
    #         "MessageAttributeName" => {
    #           string_values: ["MessageAttributeStringValue"]
    #         }
    #       },
    #       sub_channel_id: "SubChannelId",
    #       content_type: "ContentType"
    #     }
    #   }
    #   options = {}
    #   response = client.channel_flow_callback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     callback_id: "CallbackIdType"
    #   }
    # @return [Types::ChannelFlowCallbackResponse]
    def channel_flow_callback(params = {}, options = {})
      request = build_request(:channel_flow_callback, params)
      request.send_request(options)
    end

    # <p>Creates a channel to which you can add users and send messages.</p>
    #          <p>
    #             <b>Restriction</b>: You can't change a channel's
    #          privacy.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #               ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::CreateChannelRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the channel request.</p>
    # @option params [String] :name
    #   <p>The name of the channel.</p>
    # @option params [String] :mode
    #   <p>The channel mode: <code>UNRESTRICTED</code> or <code>RESTRICTED</code>. Administrators,
    #            moderators, and channel members can add themselves and other members to unrestricted
    #            channels. Only administrators and moderators can add members to restricted channels.</p>
    # @option params [String] :privacy
    #   <p>The channel's privacy level: <code>PUBLIC</code> or <code>PRIVATE</code>. Private
    #            channels aren't discoverable by users outside the channel. Public channels are discoverable
    #            by anyone in the <code>AppInstance</code>.</p>
    # @option params [String] :metadata
    #   <p>The metadata of the creation request. Limited to 1KB and UTF-8.</p>
    # @option params [String] :client_request_token
    #   <p>The client token for the request. An <code>Idempotency</code> token.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the creation request.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    # @option params [String] :channel_id
    #   <p>An ID for the channel being created. If you do not specify an ID, a UUID will be created for the channel.</p>
    # @option params [Array<String>] :member_arns
    #   <p>The ARNs of the channel members in the request.</p>
    # @option params [Array<String>] :moderator_arns
    #   <p>The ARNs of the channel moderators in the request.</p>
    # @option params [Types::ElasticChannelConfiguration] :elastic_channel_configuration
    #   <p>The attributes required to configure and create an elastic channel. An elastic channel can support a maximum of 1-million users, excluding moderators.</p>
    # @option params [Types::ExpirationSettings] :expiration_settings
    #   <p>Settings that control the interval after which the channel is automatically deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     name: "NonEmptyResourceName", # required
    #     mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #     privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
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
    #       expiration_criterion: "CREATED_TIMESTAMP" # One of: ["CREATED_TIMESTAMP", "LAST_MESSAGE_TIMESTAMP"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn"
    #   }
    # @return [Types::CreateChannelResponse]
    def create_channel(params = {}, options = {})
      request = build_request(:create_channel, params)
      request.send_request(options)
    end

    # <p>Permanently bans a member from a channel. Moderators can't add banned members to a
    #          channel. To undo a ban, you first have to <code>DeleteChannelBan</code>, and then
    #             <code>CreateChannelMembership</code>. Bans are cleaned up when you delete users or
    #          channels.</p>
    #          <p>If you ban a user who is already part of a channel, that user is automatically kicked
    #          from the channel.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::CreateChannelBanRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the ban request.</p>
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member being banned.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.create_channel_ban(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     member: {
    #       arn: "ChimeArn",
    #       name: "ResourceName"
    #     }
    #   }
    # @return [Types::CreateChannelBanResponse]
    def create_channel_ban(params = {}, options = {})
      request = build_request(:create_channel_ban, params)
      request.send_request(options)
    end

    # <p>Creates a channel flow, a container for processors. Processors are AWS Lambda functions
    #          that perform actions on chat messages, such as stripping out profanity. You can associate
    #          channel flows with channels, and the processors in the channel flow then take action on all
    #          messages sent to that channel. This is a developer API.</p>
    #          <p>Channel flows process the following items:</p>
    #          <ol>
    #             <li>
    #                <p>New and updated messages</p>
    #             </li>
    #             <li>
    #                <p>Persistent and non-persistent messages</p>
    #             </li>
    #             <li>
    #                <p>The Standard message type</p>
    #             </li>
    #          </ol>
    #          <note>
    #             <p>Channel flows don't process Control or System messages. For more information about the message types provided by Chime SDK messaging, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/using-the-messaging-sdk.html#msg-types">Message types</a> in the <i>Amazon Chime developer guide</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateChannelFlowRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the channel flow request.</p>
    # @option params [Array<Types::Processor>] :processors
    #   <p>Information about the processor Lambda functions.</p>
    # @option params [String] :name
    #   <p>The name of the channel flow.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the creation request.</p>
    # @option params [String] :client_request_token
    #   <p>The client token for the request. An Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     processors: [ # required
    #       {
    #         name: "NonEmptyResourceName", # required
    #         configuration: { # required
    #           lambda: { # required
    #             resource_arn: "LambdaFunctionArn", # required
    #             invocation_type: "ASYNC" # One of: ["ASYNC"], # required
    #           }
    #         },
    #         execution_order: 1, # required
    #         fallback_action: "CONTINUE" # One of: ["CONTINUE", "ABORT"], # required
    #       }
    #     ],
    #     name: "NonEmptyResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_channel_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_flow_arn: "ChimeArn"
    #   }
    # @return [Types::CreateChannelFlowResponse]
    def create_channel_flow(params = {}, options = {})
      request = build_request(:create_channel_flow, params)
      request.send_request(options)
    end

    # <p>Adds a member to a channel. The <code>InvitedBy</code> field in <code>ChannelMembership</code> 
    #          is derived from the request header. A channel member can:</p>
    #          <ul>
    #             <li>
    #                <p>List messages</p>
    #             </li>
    #             <li>
    #                <p>Send messages</p>
    #             </li>
    #             <li>
    #                <p>Receive messages</p>
    #             </li>
    #             <li>
    #                <p>Edit their own messages</p>
    #             </li>
    #             <li>
    #                <p>Leave the channel</p>
    #             </li>
    #          </ul>
    #          <p>Privacy settings impact this action as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Public Channels: You do not need to be a member to list messages, but you must be
    #                a member to send messages.</p>
    #             </li>
    #             <li>
    #                <p>Private Channels: You must be a member to list or send messages.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                ARN of the <code>AppInstanceUserArn</code> or <code>AppInstanceBot</code> that makes the API call 
    #             as the value in the header.</p>
    #          </note>
    # @param [Hash, Types::CreateChannelMembershipRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member you want to add to the channel.</p>
    # @option params [String] :type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when creating membership in a SubChannel for a moderator in an elastic channel.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     type: "DEFAULT" # One of: ["DEFAULT", "HIDDEN"], # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.create_channel_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     member: {
    #       arn: "ChimeArn",
    #       name: "ResourceName"
    #     },
    #     sub_channel_id: "SubChannelId"
    #   }
    # @return [Types::CreateChannelMembershipResponse]
    def create_channel_membership(params = {}, options = {})
      request = build_request(:create_channel_membership, params)
      request.send_request(options)
    end

    # <p>Creates a new <code>ChannelModerator</code>. A channel moderator can:</p>
    #          <ul>
    #             <li>
    #                <p>Add and remove other members of the channel.</p>
    #             </li>
    #             <li>
    #                <p>Add and remove other moderators of the channel.</p>
    #             </li>
    #             <li>
    #                <p>Add and remove user bans for the channel.</p>
    #             </li>
    #             <li>
    #                <p>Redact messages in the channel.</p>
    #             </li>
    #             <li>
    #                <p>List messages in the channel.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code>of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::CreateChannelModeratorRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the moderator.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     channel_moderator_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.create_channel_moderator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     channel_moderator: {
    #       arn: "ChimeArn",
    #       name: "ResourceName"
    #     }
    #   }
    # @return [Types::CreateChannelModeratorResponse]
    def create_channel_moderator(params = {}, options = {})
      request = build_request(:create_channel_moderator, params)
      request.send_request(options)
    end

    # <p>Immediately makes a channel and its memberships inaccessible and marks them for
    #          deletion. This is an irreversible process.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                ARN of the <code>AppInstanceUserArn</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DeleteChannelRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel being deleted.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_channel(params = {}, options = {})
      request = build_request(:delete_channel, params)
      request.send_request(options)
    end

    # <p>Removes a member from a channel's ban list.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DeleteChannelBanRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel from which the <code>AppInstanceUser</code> was banned.</p>
    # @option params [String] :member_arn
    #   <p>The ARN of the <code>AppInstanceUser</code> that you want to reinstate.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_channel_ban(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_channel_ban(params = {}, options = {})
      request = build_request(:delete_channel_ban, params)
      request.send_request(options)
    end

    # <p>Deletes a channel flow, an irreversible process. This is a developer API.</p>
    #          <note>
    #             <p> This API works only when the channel flow is not associated with any channel. To get a list of all channels that a channel flow is associated with, use the 
    #            <code>ListChannelsAssociatedWithChannelFlow</code> API. Use the <code>DisassociateChannelFlow</code> API to disassociate a channel flow from all channels. </p>
    #          </note>
    # @param [Hash, Types::DeleteChannelFlowRequest] params
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_flow_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_channel_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_channel_flow(params = {}, options = {})
      request = build_request(:delete_channel_flow, params)
      request.send_request(options)
    end

    # <p>Removes a member from a channel.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DeleteChannelMembershipRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel from which you want to remove the user.</p>
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member that you're removing from the channel.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only for use by moderators.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.delete_channel_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_channel_membership(params = {}, options = {})
      request = build_request(:delete_channel_membership, params)
      request.send_request(options)
    end

    # <p>Deletes a channel message. Only admins can perform this action. Deletion makes messages
    #          inaccessible immediately. A background process deletes any revisions created by
    #             <code>UpdateChannelMessage</code>.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DeleteChannelMessageRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :message_id
    #   <p>The ID of the message being deleted.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when deleting messages in a SubChannel that the user belongs to.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.delete_channel_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_channel_message(params = {}, options = {})
      request = build_request(:delete_channel_message, params)
      request.send_request(options)
    end

    # <p>Deletes a channel moderator.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DeleteChannelModeratorRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the moderator being deleted.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     channel_moderator_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_channel_moderator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_channel_moderator(params = {}, options = {})
      request = build_request(:delete_channel_moderator, params)
      request.send_request(options)
    end

    # <p>Deletes the streaming configurations for an <code>AppInstance</code>. For more information, see 
    #          <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html">Streaming messaging data</a> in the <i>Amazon Chime SDK Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteMessagingStreamingConfigurationsRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the streaming configurations being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_messaging_streaming_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_messaging_streaming_configurations(params = {}, options = {})
      request = build_request(:delete_messaging_streaming_configurations, params)
      request.send_request(options)
    end

    # <p>Returns the full details of a channel in an Amazon Chime
    #          <code>AppInstance</code>.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DescribeChannelRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel: {
    #       name: "NonEmptyResourceName",
    #       channel_arn: "ChimeArn",
    #       mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #       privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #       metadata: "Metadata",
    #       created_by: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       },
    #       created_timestamp: Time.now,
    #       last_message_timestamp: Time.now,
    #       last_updated_timestamp: Time.now,
    #       channel_flow_arn: "ChimeArn",
    #       elastic_channel_configuration: {
    #         maximum_sub_channels: 1, # required
    #         target_memberships_per_sub_channel: 1, # required
    #         minimum_membership_percentage: 1, # required
    #       },
    #       expiration_settings: {
    #         expiration_days: 1, # required
    #         expiration_criterion: "CREATED_TIMESTAMP" # One of: ["CREATED_TIMESTAMP", "LAST_MESSAGE_TIMESTAMP"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeChannelResponse]
    def describe_channel(params = {}, options = {})
      request = build_request(:describe_channel, params)
      request.send_request(options)
    end

    # <p>Returns the full details of a channel ban.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DescribeChannelBanRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel from which the user is banned.</p>
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member being banned.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_channel_ban(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_ban: {
    #       member: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       },
    #       channel_arn: "ChimeArn",
    #       created_timestamp: Time.now,
    #       created_by: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       }
    #     }
    #   }
    # @return [Types::DescribeChannelBanResponse]
    def describe_channel_ban(params = {}, options = {})
      request = build_request(:describe_channel_ban, params)
      request.send_request(options)
    end

    # <p>Returns the full details of a channel flow in an Amazon Chime <code>AppInstance</code>. This is a developer API.</p>
    # @param [Hash, Types::DescribeChannelFlowRequest] params
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_flow_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_channel_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_flow: {
    #       channel_flow_arn: "ChimeArn",
    #       processors: [
    #         {
    #           name: "NonEmptyResourceName", # required
    #           configuration: { # required
    #             lambda: { # required
    #               resource_arn: "LambdaFunctionArn", # required
    #               invocation_type: "ASYNC" # One of: ["ASYNC"], # required
    #             }
    #           },
    #           execution_order: 1, # required
    #           fallback_action: "CONTINUE" # One of: ["CONTINUE", "ABORT"], # required
    #         }
    #       ],
    #       name: "NonEmptyResourceName",
    #       created_timestamp: Time.now,
    #       last_updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::DescribeChannelFlowResponse]
    def describe_channel_flow(params = {}, options = {})
      request = build_request(:describe_channel_flow, params)
      request.send_request(options)
    end

    # <p>Returns the full details of a user's channel membership.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DescribeChannelMembershipRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request. The response contains an <code>ElasticChannelConfiguration</code> object.</p>
    #            <note>
    #               <p>Only required to get a user’s SubChannel membership details.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.describe_channel_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_membership: {
    #       invited_by: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       },
    #       type: "DEFAULT" # One of: ["DEFAULT", "HIDDEN"],
    #       member: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       },
    #       channel_arn: "ChimeArn",
    #       created_timestamp: Time.now,
    #       last_updated_timestamp: Time.now,
    #       sub_channel_id: "SubChannelId"
    #     }
    #   }
    # @return [Types::DescribeChannelMembershipResponse]
    def describe_channel_membership(params = {}, options = {})
      request = build_request(:describe_channel_membership, params)
      request.send_request(options)
    end

    # <p> Returns the details of a channel based on the membership of the specified
    #             <code>AppInstanceUser</code> or <code>AppInstanceBot</code>.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DescribeChannelMembershipForAppInstanceUserRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel to which the user belongs.</p>
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user or bot in a channel.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     app_instance_user_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_channel_membership_for_app_instance_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_membership: {
    #       channel_summary: {
    #         name: "NonEmptyResourceName",
    #         channel_arn: "ChimeArn",
    #         mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #         privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #         metadata: "Metadata",
    #         last_message_timestamp: Time.now
    #       },
    #       app_instance_user_membership_summary: {
    #         type: "DEFAULT" # One of: ["DEFAULT", "HIDDEN"],
    #         read_marker_timestamp: Time.now,
    #         sub_channel_id: "SubChannelId"
    #       }
    #     }
    #   }
    # @return [Types::DescribeChannelMembershipForAppInstanceUserResponse]
    def describe_channel_membership_for_app_instance_user(params = {}, options = {})
      request = build_request(:describe_channel_membership_for_app_instance_user, params)
      request.send_request(options)
    end

    # <p>Returns the full details of a channel moderated by the specified
    #             <code>AppInstanceUser</code> or <code>AppInstanceBot</code>.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DescribeChannelModeratedByAppInstanceUserRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the moderated channel.</p>
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user or bot in the moderated channel.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     app_instance_user_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_channel_moderated_by_app_instance_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel: {
    #       channel_summary: {
    #         name: "NonEmptyResourceName",
    #         channel_arn: "ChimeArn",
    #         mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #         privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #         metadata: "Metadata",
    #         last_message_timestamp: Time.now
    #       }
    #     }
    #   }
    # @return [Types::DescribeChannelModeratedByAppInstanceUserResponse]
    def describe_channel_moderated_by_app_instance_user(params = {}, options = {})
      request = build_request(:describe_channel_moderated_by_app_instance_user, params)
      request.send_request(options)
    end

    # <p>Returns the full details of a single ChannelModerator.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::DescribeChannelModeratorRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the channel moderator.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     channel_moderator_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_channel_moderator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_moderator: {
    #       moderator: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       },
    #       channel_arn: "ChimeArn",
    #       created_timestamp: Time.now,
    #       created_by: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       }
    #     }
    #   }
    # @return [Types::DescribeChannelModeratorResponse]
    def describe_channel_moderator(params = {}, options = {})
      request = build_request(:describe_channel_moderator, params)
      request.send_request(options)
    end

    # <p>Disassociates a channel flow from all its channels. Once disassociated, all messages to
    #          that channel stop going through the channel flow processor.</p>
    #          <note>
    #             <p>Only administrators or channel moderators can disassociate a channel flow.</p>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #              ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #              the header.</p>
    #          </note>
    # @param [Hash, Types::DisassociateChannelFlowRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     channel_flow_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_channel_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_channel_flow(params = {}, options = {})
      request = build_request(:disassociate_channel_flow, params)
      request.send_request(options)
    end

    # <p>Gets the membership preferences of an <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #          for the specified channel. A user or a bot must be a member of the channel and own the membership in order to retrieve membership preferences. 
    #          Users or bots in the <code>AppInstanceAdmin</code> and channel moderator roles can't 
    #          retrieve preferences for other users or bots. Banned users or bots can't retrieve membership preferences for the 
    #          channel from which they are banned.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #          ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #          the header.</p>
    #          </note>
    # @param [Hash, Types::GetChannelMembershipPreferencesRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member retrieving the preferences.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.get_channel_membership_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     member: {
    #       arn: "ChimeArn",
    #       name: "ResourceName"
    #     },
    #     preferences: {
    #       push_notifications: {
    #         allow_notifications: "ALL" # One of: ["ALL", "NONE", "FILTERED"], # required
    #         filter_rule: "FilterRule"
    #       }
    #     }
    #   }
    # @return [Types::GetChannelMembershipPreferencesResponse]
    def get_channel_membership_preferences(params = {}, options = {})
      request = build_request(:get_channel_membership_preferences, params)
      request.send_request(options)
    end

    # <p>Gets the full details of a channel message.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::GetChannelMessageRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :message_id
    #   <p>The ID of the message.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when getting messages in a SubChannel that the user belongs to.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.get_channel_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_message: {
    #       channel_arn: "ChimeArn",
    #       message_id: "MessageId",
    #       content: "Content",
    #       metadata: "Metadata",
    #       type: "STANDARD" # One of: ["STANDARD", "CONTROL"],
    #       created_timestamp: Time.now,
    #       last_edited_timestamp: Time.now,
    #       last_updated_timestamp: Time.now,
    #       sender: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       },
    #       redacted: false,
    #       persistence: "PERSISTENT" # One of: ["PERSISTENT", "NON_PERSISTENT"],
    #       status: {
    #         value: "SENT" # One of: ["SENT", "PENDING", "FAILED", "DENIED"],
    #         detail: "StatusDetail"
    #       },
    #       message_attributes: {
    #         "MessageAttributeName" => {
    #           string_values: ["MessageAttributeStringValue"]
    #         }
    #       },
    #       sub_channel_id: "SubChannelId",
    #       content_type: "ContentType",
    #       target: [
    #         {
    #           member_arn: "ChimeArn"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetChannelMessageResponse]
    def get_channel_message(params = {}, options = {})
      request = build_request(:get_channel_message, params)
      request.send_request(options)
    end

    # <p>Gets message status for a specified <code>messageId</code>. Use this API to determine the intermediate status of messages going through channel flow processing. The API provides an alternative to 
    #          retrieving message status if the event was not received because a client wasn't connected to a websocket. </p>
    #          <p>Messages can have any one of these statuses.</p>
    #          <dl>
    #             <dt>SENT</dt>
    #             <dd>
    #                <p>Message processed successfully</p>
    #             </dd>
    #             <dt>PENDING</dt>
    #             <dd>
    #                <p>Ongoing processing</p>
    #             </dd>
    #             <dt>FAILED</dt>
    #             <dd>
    #                <p>Processing failed</p>
    #             </dd>
    #             <dt>DENIED</dt>
    #             <dd>
    #                <p>Message denied by the processor</p>
    #             </dd>
    #          </dl>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This API does not return statuses for denied messages, because we don't store them once the processor denies them. </p>
    #                </li>
    #                <li>
    #                   <p>Only the message sender can invoke this API.</p>
    #                </li>
    #                <li>
    #                   <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetChannelMessageStatusRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel</p>
    # @option params [String] :message_id
    #   <p>The ID of the message.</p>
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when getting message status in a SubChannel that the user belongs to.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.get_channel_message_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: {
    #       value: "SENT" # One of: ["SENT", "PENDING", "FAILED", "DENIED"],
    #       detail: "StatusDetail"
    #     }
    #   }
    # @return [Types::GetChannelMessageStatusResponse]
    def get_channel_message_status(params = {}, options = {})
      request = build_request(:get_channel_message_status, params)
      request.send_request(options)
    end

    # <p>The details of the endpoint for the messaging session.</p>
    # @param [Hash, Types::GetMessagingSessionEndpointRequest] params
    # @option params [String] :network_type
    #   <p>The type of network for the messaging session endpoint. Either IPv4 only or dual-stack (IPv4 and IPv6).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_type: "IPV4_ONLY" # One of: ["IPV4_ONLY", "DUAL_STACK"]
    #   }
    #   options = {}
    #   response = client.get_messaging_session_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       url: "UrlType"
    #     }
    #   }
    # @return [Types::GetMessagingSessionEndpointResponse]
    def get_messaging_session_endpoint(params = {}, options = {})
      request = build_request(:get_messaging_session_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieves the data streaming configuration for an <code>AppInstance</code>. For more information, see 
    #          <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html">Streaming messaging data</a> in the <i>Amazon Chime SDK Developer Guide</i>.</p>
    # @param [Hash, Types::GetMessagingStreamingConfigurationsRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the streaming configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.get_messaging_streaming_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_configurations: [
    #       {
    #         data_type: "Channel" # One of: ["Channel", "ChannelMessage"], # required
    #         resource_arn: "ChimeArn", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetMessagingStreamingConfigurationsResponse]
    def get_messaging_streaming_configurations(params = {}, options = {})
      request = build_request(:get_messaging_streaming_configurations, params)
      request.send_request(options)
    end

    # <p>Lists all the users and bots banned from a particular channel.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::ListChannelBansRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of bans that you want returned.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested bans are returned.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.list_channel_bans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     next_token: "NextToken",
    #     channel_bans: [
    #       {
    #         member: {
    #           arn: "ChimeArn",
    #           name: "ResourceName"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListChannelBansResponse]
    def list_channel_bans(params = {}, options = {})
      request = build_request(:list_channel_bans, params)
      request.send_request(options)
    end

    # <p>Returns a paginated lists of all the channel flows created under a single Chime. This is a developer API.</p>
    # @param [Hash, Types::ListChannelFlowsRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the app instance.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of channel flows that you want to return.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channel flows are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_channel_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_flows: [
    #       {
    #         channel_flow_arn: "ChimeArn",
    #         name: "NonEmptyResourceName",
    #         processors: [
    #           {
    #             name: "NonEmptyResourceName", # required
    #             configuration: { # required
    #               lambda: { # required
    #                 resource_arn: "LambdaFunctionArn", # required
    #                 invocation_type: "ASYNC" # One of: ["ASYNC"], # required
    #               }
    #             },
    #             execution_order: 1, # required
    #             fallback_action: "CONTINUE" # One of: ["CONTINUE", "ABORT"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChannelFlowsResponse]
    def list_channel_flows(params = {}, options = {})
      request = build_request(:list_channel_flows, params)
      request.send_request(options)
    end

    # <p>Lists all channel memberships in a channel.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #          <p>If you want to list the channels to which a specific app instance user belongs, see the 
    #          <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html">ListChannelMembershipsForAppInstanceUser</a> API.</p>
    # @param [Hash, Types::ListChannelMembershipsRequest] params
    # @option params [String] :channel_arn
    #   <p>The maximum number of channel memberships that you want returned.</p>
    # @option params [String] :type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are returned as part of <code>ListChannelMemberships</code> if no type is specified. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of channel memberships that you want returned.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channel memberships are
    #            returned.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when listing a user's memberships in a particular sub-channel of an elastic channel.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     type: "DEFAULT" # One of: ["DEFAULT", "HIDDEN"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.list_channel_memberships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     channel_memberships: [
    #       {
    #         member: {
    #           arn: "ChimeArn",
    #           name: "ResourceName"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChannelMembershipsResponse]
    def list_channel_memberships(params = {}, options = {})
      request = build_request(:list_channel_memberships, params)
      request.send_request(options)
    end

    # <p> Lists all channels that an <code>AppInstanceUser</code> or <code>AppInstanceBot</code> is a part of. 
    #          Only an <code>AppInstanceAdmin</code> can call the API with a user ARN that is not their own. </p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::ListChannelMembershipsForAppInstanceUserRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user or bot.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of users that you want returned.</p>
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of channel memberships is
    #            reached.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "ChimeArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.list_channel_memberships_for_app_instance_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_memberships: [
    #       {
    #         channel_summary: {
    #           name: "NonEmptyResourceName",
    #           channel_arn: "ChimeArn",
    #           mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #           privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #           metadata: "Metadata",
    #           last_message_timestamp: Time.now
    #         },
    #         app_instance_user_membership_summary: {
    #           type: "DEFAULT" # One of: ["DEFAULT", "HIDDEN"],
    #           read_marker_timestamp: Time.now,
    #           sub_channel_id: "SubChannelId"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChannelMembershipsForAppInstanceUserResponse]
    def list_channel_memberships_for_app_instance_user(params = {}, options = {})
      request = build_request(:list_channel_memberships_for_app_instance_user, params)
      request.send_request(options)
    end

    # <p>List all the messages in a channel. Returns a paginated list of
    #             <code>ChannelMessages</code>. By default, sorted by creation timestamp in descending
    #          order.</p>
    #          <note>
    #             <p>Redacted messages appear in the results as empty, since they are only redacted, not
    #             deleted. Deleted messages do not appear in the results. This action always returns the
    #             latest version of an edited message.</p>
    #             <p>Also, the <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::ListChannelMessagesRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :sort_order
    #   <p>The order in which you want messages sorted. Default is Descending, based on time
    #            created.</p>
    # @option params [Time] :not_before
    #   <p>The initial or starting time stamp for your requested messages.</p>
    # @option params [Time] :not_after
    #   <p>The final or ending time stamp for your requested messages.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of messages that you want returned.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested messages are returned.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when listing the messages in a SubChannel that the user belongs to.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     not_before: Time.now,
    #     not_after: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.list_channel_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     next_token: "NextToken",
    #     channel_messages: [
    #       {
    #         message_id: "MessageId",
    #         content: "Content",
    #         metadata: "Metadata",
    #         type: "STANDARD" # One of: ["STANDARD", "CONTROL"],
    #         created_timestamp: Time.now,
    #         last_updated_timestamp: Time.now,
    #         last_edited_timestamp: Time.now,
    #         sender: {
    #           arn: "ChimeArn",
    #           name: "ResourceName"
    #         },
    #         redacted: false,
    #         status: {
    #           value: "SENT" # One of: ["SENT", "PENDING", "FAILED", "DENIED"],
    #           detail: "StatusDetail"
    #         },
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             string_values: ["MessageAttributeStringValue"]
    #           }
    #         },
    #         content_type: "ContentType",
    #         target: [
    #           {
    #             member_arn: "ChimeArn"
    #           }
    #         ]
    #       }
    #     ],
    #     sub_channel_id: "SubChannelId"
    #   }
    # @return [Types::ListChannelMessagesResponse]
    def list_channel_messages(params = {}, options = {})
      request = build_request(:list_channel_messages, params)
      request.send_request(options)
    end

    # <p>Lists all the moderators for a channel.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::ListChannelModeratorsRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of moderators that you want returned.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested moderators are
    #            returned.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.list_channel_moderators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     next_token: "NextToken",
    #     channel_moderators: [
    #       {
    #         moderator: {
    #           arn: "ChimeArn",
    #           name: "ResourceName"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListChannelModeratorsResponse]
    def list_channel_moderators(params = {}, options = {})
      request = build_request(:list_channel_moderators, params)
      request.send_request(options)
    end

    # <p>Lists all Channels created under a single Chime App as a paginated list. You can specify
    #          filters to narrow results.</p>
    #          <p class="title">
    #             <b>Functionality & restrictions</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Use privacy = <code>PUBLIC</code> to retrieve all public channels in the
    #                account.</p>
    #             </li>
    #             <li>
    #                <p>Only an <code>AppInstanceAdmin</code> can set privacy = <code>PRIVATE</code> to
    #                list the private channels in an account.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::ListChannelsRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @option params [String] :privacy
    #   <p>The privacy setting. <code>PUBLIC</code> retrieves all the public channels.
    #               <code>PRIVATE</code> retrieves private channels. Only an <code>AppInstanceAdmin</code>
    #            can retrieve private channels. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels that you want to return.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [
    #       {
    #         name: "NonEmptyResourceName",
    #         channel_arn: "ChimeArn",
    #         mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #         privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #         metadata: "Metadata",
    #         last_message_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChannelsResponse]
    def list_channels(params = {}, options = {})
      request = build_request(:list_channels, params)
      request.send_request(options)
    end

    # <p>Lists all channels associated with a specified channel flow. You can associate a channel flow with multiple channels, but you can only associate a channel with one channel flow. This is a developer API.</p>
    # @param [Hash, Types::ListChannelsAssociatedWithChannelFlowRequest] params
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels that you want to return.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_flow_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_channels_associated_with_channel_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [
    #       {
    #         name: "NonEmptyResourceName",
    #         channel_arn: "ChimeArn",
    #         mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #         privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #         metadata: "Metadata"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChannelsAssociatedWithChannelFlowResponse]
    def list_channels_associated_with_channel_flow(params = {}, options = {})
      request = build_request(:list_channels_associated_with_channel_flow, params)
      request.send_request(options)
    end

    # <p>A list of the channels moderated by an <code>AppInstanceUser</code>.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::ListChannelsModeratedByAppInstanceUserRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user or bot in the moderated channel.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels in the request.</p>
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of channels moderated by
    #            the user is reached.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "ChimeArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.list_channels_moderated_by_app_instance_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [
    #       {
    #         channel_summary: {
    #           name: "NonEmptyResourceName",
    #           channel_arn: "ChimeArn",
    #           mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #           privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #           metadata: "Metadata",
    #           last_message_timestamp: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChannelsModeratedByAppInstanceUserResponse]
    def list_channels_moderated_by_app_instance_user(params = {}, options = {})
      request = build_request(:list_channels_moderated_by_app_instance_user, params)
      request.send_request(options)
    end

    # <p>Lists all the SubChannels in an elastic channel when given a channel ID. Available only to the app instance admins and channel moderators of elastic channels.</p>
    # @param [Hash, Types::ListSubChannelsRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of elastic channel.</p>
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of sub-channels that you want to return.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested sub-channels are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_sub_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     sub_channels: [
    #       {
    #         sub_channel_id: "SubChannelId",
    #         membership_count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSubChannelsResponse]
    def list_sub_channels(params = {}, options = {})
      request = build_request(:list_sub_channels, params)
      request.send_request(options)
    end

    # <p>Lists the tags applied to an Amazon Chime SDK messaging resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Sets the number of days before the channel is automatically deleted.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>A background process deletes expired channels within 6 hours of expiration. 
    #             Actual deletion times may vary.</p>
    #                </li>
    #                <li>
    #                   <p>Expired channels that have not yet been deleted appear as active, and you can update 
    #             their expiration settings. The system honors the new settings.</p>
    #                </li>
    #                <li>
    #                   <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::PutChannelExpirationSettingsRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    # @option params [Types::ExpirationSettings] :expiration_settings
    #   <p>Settings that control the interval after which a channel is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #     expiration_settings: {
    #       expiration_days: 1, # required
    #       expiration_criterion: "CREATED_TIMESTAMP" # One of: ["CREATED_TIMESTAMP", "LAST_MESSAGE_TIMESTAMP"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_channel_expiration_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     expiration_settings: {
    #       expiration_days: 1, # required
    #       expiration_criterion: "CREATED_TIMESTAMP" # One of: ["CREATED_TIMESTAMP", "LAST_MESSAGE_TIMESTAMP"], # required
    #     }
    #   }
    # @return [Types::PutChannelExpirationSettingsResponse]
    def put_channel_expiration_settings(params = {}, options = {})
      request = build_request(:put_channel_expiration_settings, params)
      request.send_request(options)
    end

    # <p>Sets the membership preferences of an <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #          for the specified channel. The user or bot must be a member of the channel. Only the user or bot who owns the 
    #          membership can set preferences. Users or bots in the <code>AppInstanceAdmin</code> and channel moderator roles can't set 
    #          preferences for other users. Banned users or bots can't set membership preferences for the channel from 
    #          which they are banned.</p>
    #          <note>
    #             <p>The x-amz-chime-bearer request header is mandatory. Use the ARN of an 
    #          <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in the 
    #          header.</p>
    #          </note>
    # @param [Hash, Types::PutChannelMembershipPreferencesRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :member_arn
    #   <p>The ARN of the member setting the preferences.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    # @option params [Types::ChannelMembershipPreferences] :preferences
    #   <p>The channel membership preferences of an <code>AppInstanceUser</code> .</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #     preferences: { # required
    #       push_notifications: {
    #         allow_notifications: "ALL" # One of: ["ALL", "NONE", "FILTERED"], # required
    #         filter_rule: "FilterRule"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_channel_membership_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     member: {
    #       arn: "ChimeArn",
    #       name: "ResourceName"
    #     },
    #     preferences: {
    #       push_notifications: {
    #         allow_notifications: "ALL" # One of: ["ALL", "NONE", "FILTERED"], # required
    #         filter_rule: "FilterRule"
    #       }
    #     }
    #   }
    # @return [Types::PutChannelMembershipPreferencesResponse]
    def put_channel_membership_preferences(params = {}, options = {})
      request = build_request(:put_channel_membership_preferences, params)
      request.send_request(options)
    end

    # <p>Sets the data streaming configuration for an <code>AppInstance</code>. For more information, see 
    #          <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html">Streaming messaging data</a> in the <i>Amazon Chime SDK Developer Guide</i>.</p>
    # @param [Hash, Types::PutMessagingStreamingConfigurationsRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the streaming configuration.</p>
    # @option params [Array<Types::StreamingConfiguration>] :streaming_configurations
    #   <p>The streaming configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     streaming_configurations: [ # required
    #       {
    #         data_type: "Channel" # One of: ["Channel", "ChannelMessage"], # required
    #         resource_arn: "ChimeArn", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_messaging_streaming_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_configurations: [
    #       {
    #         data_type: "Channel" # One of: ["Channel", "ChannelMessage"], # required
    #         resource_arn: "ChimeArn", # required
    #       }
    #     ]
    #   }
    # @return [Types::PutMessagingStreamingConfigurationsResponse]
    def put_messaging_streaming_configurations(params = {}, options = {})
      request = build_request(:put_messaging_streaming_configurations, params)
      request.send_request(options)
    end

    # <p>Redacts message content and metadata. The message exists in the back end, but the
    #          action returns null content, and the state shows as redacted.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::RedactChannelMessageRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel containing the messages that you want to redact.</p>
    # @option params [String] :message_id
    #   <p>The ID of the message being redacted.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId"
    #   }
    #   options = {}
    #   response = client.redact_channel_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     message_id: "MessageId",
    #     sub_channel_id: "SubChannelId"
    #   }
    # @return [Types::RedactChannelMessageResponse]
    def redact_channel_message(params = {}, options = {})
      request = build_request(:redact_channel_message, params)
      request.send_request(options)
    end

    # <p>Allows the <code>ChimeBearer</code> to search channels by channel members. Users or bots can search 
    #          across the channels that they belong to. Users in the <code>AppInstanceAdmin</code> role can search across 
    #          all channels.</p>
    #          <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #          ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #          the header.</p>
    #          <note>
    #             <p>This operation isn't supported for <code>AppInstanceUsers</code> with a large number of memberships.</p>
    #          </note>
    # @param [Hash, Types::SearchChannelsRequest] params
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    # @option params [Array<Types::SearchField>] :fields
    #   <p>A list of the <code>Field</code> objects in the channel being searched.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels that you want returned.</p>
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of channels is reached.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chime_bearer: "ChimeArn",
    #     fields: [ # required
    #       {
    #         key: "MEMBERS" # One of: ["MEMBERS"], # required
    #         values: ["SearchFieldValue"], # required
    #         operator: "EQUALS" # One of: ["EQUALS", "INCLUDES"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.search_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [
    #       {
    #         name: "NonEmptyResourceName",
    #         channel_arn: "ChimeArn",
    #         mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #         privacy: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #         metadata: "Metadata",
    #         last_message_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchChannelsResponse]
    def search_channels(params = {}, options = {})
      request = build_request(:search_channels, params)
      request.send_request(options)
    end

    # <p>Sends a message to a particular channel that the member is a part of.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #             <p>Also, <code>STANDARD</code> messages can be up to 4KB in size and contain metadata. Metadata is arbitrary, 
    #             and you can use it in a variety of ways, such as containing a link to an attachment.</p>
    #             <p>
    #                <code>CONTROL</code> messages are limited to 30 bytes and do not contain metadata.</p>
    #          </note>
    # @param [Hash, Types::SendChannelMessageRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :content
    #   <p>The content of the channel message.</p>
    # @option params [String] :type
    #   <p>The type of message, <code>STANDARD</code> or <code>CONTROL</code>.</p>
    #            <p>
    #               <code>STANDARD</code> messages can be up to 4KB in size and contain metadata. Metadata is arbitrary, 
    #            and you can use it in a variety of ways, such as containing a link to an attachment.</p>
    #            <p>
    #               <code>CONTROL</code> messages are limited to 30 bytes and do not contain metadata.</p>
    # @option params [String] :persistence
    #   <p>Boolean that controls whether the message is persisted on the back end. Required.</p>
    # @option params [String] :metadata
    #   <p>The optional metadata for each message.</p>
    # @option params [String] :client_request_token
    #   <p>The <code>Idempotency</code> token for each client request.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @option params [Types::PushNotificationConfiguration] :push_notification
    #   <p>The push notification configuration of the message.</p>
    # @option params [Hash<String, Types::MessageAttributeValue>] :message_attributes
    #   <p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    # @option params [String] :content_type
    #   <p>The content type of the channel message.</p>
    # @option params [Array<Types::Target>] :target
    #   <p>The target of a message. Must be a member of the channel, such as another user, a bot, or the sender. Only the target and the sender can view targeted messages.
    #            Only users who can see targeted messages can take actions on them. However, administrators can delete targeted messages that they can’t see.         
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     content: "NonEmptyContent", # required
    #     type: "STANDARD" # One of: ["STANDARD", "CONTROL"], # required
    #     persistence: "PERSISTENT" # One of: ["PERSISTENT", "NON_PERSISTENT"], # required
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     chime_bearer: "ChimeArn", # required
    #     push_notification: {
    #       title: "PushNotificationTitle",
    #       body: "PushNotificationBody",
    #       type: "DEFAULT" # One of: ["DEFAULT", "VOIP"]
    #     },
    #     message_attributes: {
    #       "MessageAttributeName" => {
    #         string_values: ["MessageAttributeStringValue"]
    #       }
    #     },
    #     sub_channel_id: "SubChannelId",
    #     content_type: "ContentType",
    #     target: [
    #       {
    #         member_arn: "ChimeArn"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.send_channel_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     message_id: "MessageId",
    #     status: {
    #       value: "SENT" # One of: ["SENT", "PENDING", "FAILED", "DENIED"],
    #       detail: "StatusDetail"
    #     },
    #     sub_channel_id: "SubChannelId"
    #   }
    # @return [Types::SendChannelMessageResponse]
    def send_channel_message(params = {}, options = {})
      request = build_request(:send_channel_message, params)
      request.send_request(options)
    end

    # <p>Applies the specified tags to the specified Amazon Chime SDK messaging resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ChimeArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified Amazon Chime SDK messaging resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ChimeArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Update a channel's attributes.</p>
    #          <p>
    #             <b>Restriction</b>: You can't change a channel's privacy. </p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::UpdateChannelRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :name
    #   <p>The name of the channel.</p>
    # @option params [String] :mode
    #   <p>The mode of the update request.</p>
    # @option params [String] :metadata
    #   <p>The metadata for the update request.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     name: "NonEmptyResourceName",
    #     mode: "UNRESTRICTED" # One of: ["UNRESTRICTED", "RESTRICTED"],
    #     metadata: "Metadata",
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn"
    #   }
    # @return [Types::UpdateChannelResponse]
    def update_channel(params = {}, options = {})
      request = build_request(:update_channel, params)
      request.send_request(options)
    end

    # <p>Updates channel flow attributes. This is a developer API.</p>
    # @param [Hash, Types::UpdateChannelFlowRequest] params
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    # @option params [Array<Types::Processor>] :processors
    #   <p>Information about the processor Lambda functions </p>
    # @option params [String] :name
    #   <p>The name of the channel flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_flow_arn: "ChimeArn", # required
    #     processors: [ # required
    #       {
    #         name: "NonEmptyResourceName", # required
    #         configuration: { # required
    #           lambda: { # required
    #             resource_arn: "LambdaFunctionArn", # required
    #             invocation_type: "ASYNC" # One of: ["ASYNC"], # required
    #           }
    #         },
    #         execution_order: 1, # required
    #         fallback_action: "CONTINUE" # One of: ["CONTINUE", "ABORT"], # required
    #       }
    #     ],
    #     name: "NonEmptyResourceName", # required
    #   }
    #   options = {}
    #   response = client.update_channel_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_flow_arn: "ChimeArn"
    #   }
    # @return [Types::UpdateChannelFlowResponse]
    def update_channel_flow(params = {}, options = {})
      request = build_request(:update_channel_flow, params)
      request.send_request(options)
    end

    # <p>Updates the content of a message.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::UpdateChannelMessageRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :message_id
    #   <p>The ID string of the message being updated.</p>
    # @option params [String] :content
    #   <p>The content of the channel message. </p>
    # @option params [String] :metadata
    #   <p>The metadata of the message being updated.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @option params [String] :sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when updating messages in a SubChannel that the user belongs to.</p>
    #            </note>
    # @option params [String] :content_type
    #   <p>The content type of the channel message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     content: "NonEmptyContent", # required
    #     metadata: "Metadata",
    #     chime_bearer: "ChimeArn", # required
    #     sub_channel_id: "SubChannelId",
    #     content_type: "ContentType"
    #   }
    #   options = {}
    #   response = client.update_channel_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn",
    #     message_id: "MessageId",
    #     status: {
    #       value: "SENT" # One of: ["SENT", "PENDING", "FAILED", "DENIED"],
    #       detail: "StatusDetail"
    #     },
    #     sub_channel_id: "SubChannelId"
    #   }
    # @return [Types::UpdateChannelMessageResponse]
    def update_channel_message(params = {}, options = {})
      request = build_request(:update_channel_message, params)
      request.send_request(options)
    end

    # <p>The details of the time when a user last read messages in a channel.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #             ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call as the value in
    #             the header.</p>
    #          </note>
    # @param [Hash, Types::UpdateChannelReadMarkerRequest] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    # @option params [String] :chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.update_channel_read_marker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChimeArn"
    #   }
    # @return [Types::UpdateChannelReadMarkerResponse]
    def update_channel_read_marker(params = {}, options = {})
      request = build_request(:update_channel_read_marker, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-chimesdkmessaging'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
