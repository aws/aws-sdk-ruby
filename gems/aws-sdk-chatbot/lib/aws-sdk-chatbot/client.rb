# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:chatbot)

module Aws::Chatbot
  # An API client for Aws::Chatbot.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::WheatleyOrchestration20171011
    @identifier = :chatbot

    add_plugin(::Aws::Chatbot::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Chatbot::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
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
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Links a resource (for example, a custom action) to a channel configuration.</p>
    # @param [Hash, Types::AssociateToConfigurationRequest] params
    # @option params [String] :resource
    #   <p>The resource Amazon Resource Name (ARN) to link.</p>
    # @option params [String] :chat_configuration
    #   <p>The channel configuration to associate with the resource.</p>
    # @example Associate a custom action to a configuration
    #   # Associate a custom action to a channel configuration, allowing it to be used in that channel
    #   params = {
    #     resource: "arn:aws:chatbot::1234567890:custom-action/my-custom-action",
    #     chat_configuration: "arn:aws:chatbot::1234567890:chat-configuration/slack-channel/my-channel"
    #   }
    #   options = {}
    #   response = client.associate_to_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ResourceIdentifier", # required
    #     chat_configuration: "ChatConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.associate_to_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateToConfigurationResult]
    def associate_to_configuration(params = {}, options = {})
      request = build_request(:associate_to_configuration, params)
      request.send_request(options)
    end

    # <p>Creates an AWS Chatbot configuration for Amazon Chime.</p>
    # @param [Hash, Types::CreateChimeWebhookConfigurationRequest] params
    # @option params [String] :webhook_description
    #   <p>A description of the webhook. We recommend using the convention <code>RoomName/WebhookName</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html">Tutorial: Get started with Amazon Chime</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #    </p>
    # @option params [String] :webhook_url
    #   <p>The URL for the Amazon Chime webhook.</p>
    # @option params [Array<String>] :sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    # @option params [String] :iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    # @option params [String] :configuration_name
    #   <p>The name of the configuration.</p>
    # @option params [String] :logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     webhook_description: "ChimeWebhookDescription", # required
    #     webhook_url: "ChimeWebhookUrl", # required
    #     sns_topic_arns: ["Arn"], # required
    #     iam_role_arn: "Arn", # required
    #     configuration_name: "ConfigurationName", # required
    #     logging_level: "CustomerCwLogLevel",
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_chime_webhook_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhook_configuration: {
    #       webhook_description: "ChimeWebhookDescription", # required
    #       chat_configuration_arn: "ChatConfigurationArn", # required
    #       iam_role_arn: "Arn", # required
    #       sns_topic_arns: ["Arn"], # required
    #       configuration_name: "ConfigurationName",
    #       logging_level: "CustomerCwLogLevel",
    #       tags: [
    #         {
    #           tag_key: "TagKey", # required
    #           tag_value: "TagValue", # required
    #         }
    #       ],
    #       state: "ResourceState",
    #       state_reason: "String"
    #     }
    #   }
    # @return [Types::CreateChimeWebhookConfigurationResult]
    def create_chime_webhook_configuration(params = {}, options = {})
      request = build_request(:create_chime_webhook_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a custom action that can be invoked as an alias or as a button on a notification.</p>
    # @param [Hash, Types::CreateCustomActionRequest] params
    # @option params [Types::CustomActionDefinition] :definition
    #   <p>The definition of the command to run when invoked as an alias or as an action button.</p>
    # @option params [String] :alias_name
    #   <p>The name used to invoke this action in a chat channel. For example, <code>@aws run my-alias</code>.</p>
    # @option params [Array<Types::CustomActionAttachment>] :attachments
    #   <p>Defines when this custom action button should be attached to a notification.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, subsequent retries with the same client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the SDK.</p>
    # @option params [String] :action_name
    #   <p>The name of the custom action. This name is included in the Amazon Resource Name (ARN).</p>
    # @example Create an alias that invokes a Lambda function
    #   # Creates an alias that invokes a Lambda function from chat channels. You can use this alias by entering 'run invoke', after which you're prompted for the function name.
    #   params = {
    #     action_name: "my-custom-action",
    #     definition: {
    #       command_text: "lambda invoke $functionName"
    #     },
    #     alias_name: "invoke"
    #   }
    #   options = {}
    #   response = client.create_custom_action(params, options)
    #   response.to_h #=>
    #   {
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action"
    #   }
    # @example Create a custom action to list alarms
    #   # Creates a button on all Cloudwatch notifications that lists alarms in the ‘ALARM’ state.
    #   params = {
    #     action_name: "describe-alarms",
    #     definition: {
    #       command_text: "cloudwatch describe-alarms --state-value ALARM"
    #     },
    #     attachments: [
    #       {
    #         notification_type: "CloudWatch",
    #         button_text: "List alarms"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_custom_action(params, options)
    #   response.to_h #=>
    #   {
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/describe-alarms"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     definition: { # required
    #       command_text: "String", # required
    #     },
    #     alias_name: "CustomActionAliasName",
    #     attachments: [
    #       {
    #         notification_type: "CustomActionAttachmentNotificationType",
    #         button_text: "CustomActionButtonText",
    #         criteria: [
    #           {
    #             operator: "HAS_VALUE" # One of: ["HAS_VALUE", "EQUALS"], # required
    #             variable_name: "String", # required
    #             value: "String"
    #           }
    #         ],
    #         variables: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     action_name: "CustomActionName", # required
    #   }
    #   options = {}
    #   response = client.create_custom_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_action_arn: "CustomActionArn", # required
    #   }
    # @return [Types::CreateCustomActionResult]
    def create_custom_action(params = {}, options = {})
      request = build_request(:create_custom_action, params)
      request.send_request(options)
    end

    # <p>Creates an AWS Chatbot configuration for Microsoft Teams.</p>
    # @param [Hash, Types::CreateTeamsChannelConfigurationRequest] params
    # @option params [String] :channel_id
    #   <p>The ID of the Microsoft Teams channel.</p>
    # @option params [String] :channel_name
    #   <p>The name of the Microsoft Teams channel.</p>
    # @option params [String] :team_id
    #   <p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>
    #            <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #   </p>
    # @option params [String] :team_name
    #   <p>The name of the Microsoft Teams Team.</p>
    # @option params [String] :tenant_id
    #   <p>The ID of the Microsoft Teams tenant.</p>
    # @option params [Array<String>] :sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    # @option params [String] :iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    # @option params [String] :configuration_name
    #   <p>The name of the configuration.</p>
    # @option params [String] :logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    # @option params [Array<String>] :guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    # @option params [Boolean] :user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_id: "TeamsChannelId", # required
    #     channel_name: "TeamsChannelName",
    #     team_id: "UUID", # required
    #     team_name: "TeamName",
    #     tenant_id: "UUID", # required
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn", # required
    #     configuration_name: "ConfigurationName", # required
    #     logging_level: "CustomerCwLogLevel",
    #     guardrail_policy_arns: ["GuardrailPolicyArn"],
    #     user_authorization_required: false,
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_microsoft_teams_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_configuration: {
    #       channel_id: "TeamsChannelId", # required
    #       channel_name: "TeamsChannelName",
    #       team_id: "UUID", # required
    #       team_name: "TeamName",
    #       tenant_id: "UUID", # required
    #       chat_configuration_arn: "ChatConfigurationArn", # required
    #       iam_role_arn: "Arn", # required
    #       sns_topic_arns: ["Arn"], # required
    #       configuration_name: "ConfigurationName",
    #       logging_level: "CustomerCwLogLevel",
    #       guardrail_policy_arns: ["GuardrailPolicyArn"],
    #       user_authorization_required: false,
    #       tags: [
    #         {
    #           tag_key: "TagKey", # required
    #           tag_value: "TagValue", # required
    #         }
    #       ],
    #       state: "ResourceState",
    #       state_reason: "String"
    #     }
    #   }
    # @return [Types::CreateTeamsChannelConfigurationResult]
    def create_microsoft_teams_channel_configuration(params = {}, options = {})
      request = build_request(:create_microsoft_teams_channel_configuration, params)
      request.send_request(options)
    end

    # <p>Creates an AWS Chatbot confugration for Slack.</p>
    # @param [Hash, Types::CreateSlackChannelConfigurationRequest] params
    # @option params [String] :slack_team_id
    #   <p>The ID of the Slack workspace authorized with AWS Chatbot.</p>
    # @option params [String] :slack_channel_id
    #   <p>The ID of the Slack channel.</p>
    #            <p>To get this ID, open Slack, right click on the channel name in the left pane, then choose Copy Link. The channel ID is the 9-character string at the end of the URL. For example, ABCBBLZZZ.
    #     </p>
    # @option params [String] :slack_channel_name
    #   <p>The name of the Slack channel.</p>
    # @option params [Array<String>] :sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    # @option params [String] :iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    # @option params [String] :configuration_name
    #   <p>The name of the configuration.</p>
    # @option params [String] :logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    # @option params [Array<String>] :guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    # @option params [Boolean] :user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     slack_team_id: "SlackTeamId", # required
    #     slack_channel_id: "SlackChannelId", # required
    #     slack_channel_name: "SlackChannelDisplayName",
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn", # required
    #     configuration_name: "ConfigurationName", # required
    #     logging_level: "CustomerCwLogLevel",
    #     guardrail_policy_arns: ["GuardrailPolicyArn"],
    #     user_authorization_required: false,
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_slack_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_configuration: {
    #       slack_team_name: "SlackTeamName", # required
    #       slack_team_id: "SlackTeamId", # required
    #       slack_channel_id: "SlackChannelId", # required
    #       slack_channel_name: "SlackChannelDisplayName", # required
    #       chat_configuration_arn: "ChatConfigurationArn", # required
    #       iam_role_arn: "Arn", # required
    #       sns_topic_arns: ["Arn"], # required
    #       configuration_name: "ConfigurationName",
    #       logging_level: "CustomerCwLogLevel",
    #       guardrail_policy_arns: ["GuardrailPolicyArn"],
    #       user_authorization_required: false,
    #       tags: [
    #         {
    #           tag_key: "TagKey", # required
    #           tag_value: "TagValue", # required
    #         }
    #       ],
    #       state: "ResourceState",
    #       state_reason: "String"
    #     }
    #   }
    # @return [Types::CreateSlackChannelConfigurationResult]
    def create_slack_channel_configuration(params = {}, options = {})
      request = build_request(:create_slack_channel_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a Amazon Chime webhook configuration for AWS Chatbot.</p>
    # @param [Hash, Types::DeleteChimeWebhookConfigurationRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_chime_webhook_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChimeWebhookConfigurationResult]
    def delete_chime_webhook_configuration(params = {}, options = {})
      request = build_request(:delete_chime_webhook_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a custom action.</p>
    # @param [Hash, Types::DeleteCustomActionRequest] params
    # @option params [String] :custom_action_arn
    #   <p>The fully defined ARN of the custom action.</p>
    # @example Delete a custom action
    #   # Example operation for delete_custom_action
    #   params = {
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action"
    #   }
    #   options = {}
    #   response = client.delete_custom_action(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_action_arn: "CustomActionArn", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomActionResult]
    def delete_custom_action(params = {}, options = {})
      request = build_request(:delete_custom_action, params)
      request.send_request(options)
    end

    # <p>Deletes a Microsoft Teams channel configuration for AWS Chatbot</p>
    # @param [Hash, Types::DeleteTeamsChannelConfigurationRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_microsoft_teams_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTeamsChannelConfigurationResult]
    def delete_microsoft_teams_channel_configuration(params = {}, options = {})
      request = build_request(:delete_microsoft_teams_channel_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the Microsoft Teams team authorization allowing for channels to be configured in that Microsoft Teams team. Note that the Microsoft Teams team must have no channels configured to remove it.
    #  </p>
    # @param [Hash, Types::DeleteTeamsConfiguredTeamRequest] params
    # @option params [String] :team_id
    #   <p>The ID of the Microsoft Teams team authorized with AWS Chatbot.</p>
    #            <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     team_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_microsoft_teams_configured_team(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTeamsConfiguredTeamResult]
    def delete_microsoft_teams_configured_team(params = {}, options = {})
      request = build_request(:delete_microsoft_teams_configured_team, params)
      request.send_request(options)
    end

    # <p>Identifes a user level permission for a channel configuration.</p>
    # @param [Hash, Types::DeleteMicrosoftTeamsUserIdentityRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The ARN of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>
    # @option params [String] :user_id
    #   <p>The Microsoft Teams user ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     user_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_microsoft_teams_user_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMicrosoftTeamsUserIdentityResult]
    def delete_microsoft_teams_user_identity(params = {}, options = {})
      request = build_request(:delete_microsoft_teams_user_identity, params)
      request.send_request(options)
    end

    # <p>Deletes a Slack channel configuration for AWS Chatbot</p>
    # @param [Hash, Types::DeleteSlackChannelConfigurationRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_slack_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSlackChannelConfigurationResult]
    def delete_slack_channel_configuration(params = {}, options = {})
      request = build_request(:delete_slack_channel_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a user level permission for a Slack channel configuration.</p>
    # @param [Hash, Types::DeleteSlackUserIdentityRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The ARN of the SlackChannelConfiguration associated with the user identity to delete.</p>
    # @option params [String] :slack_team_id
    #   <p>The ID of the Slack workspace authorized with AWS Chatbot.</p>
    # @option params [String] :slack_user_id
    #   <p>The ID of the user in Slack</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     slack_team_id: "SlackTeamId", # required
    #     slack_user_id: "SlackUserId", # required
    #   }
    #   options = {}
    #   response = client.delete_slack_user_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSlackUserIdentityResult]
    def delete_slack_user_identity(params = {}, options = {})
      request = build_request(:delete_slack_user_identity, params)
      request.send_request(options)
    end

    # <p>Deletes the Slack workspace authorization that allows channels to be configured in that workspace. This requires all configured channels in the workspace to be deleted.
    #   </p>
    # @param [Hash, Types::DeleteSlackWorkspaceAuthorizationRequest] params
    # @option params [String] :slack_team_id
    #   <p>The ID of the Slack workspace authorized with AWS Chatbot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     slack_team_id: "SlackTeamId", # required
    #   }
    #   options = {}
    #   response = client.delete_slack_workspace_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSlackWorkspaceAuthorizationResult]
    def delete_slack_workspace_authorization(params = {}, options = {})
      request = build_request(:delete_slack_workspace_authorization, params)
      request.send_request(options)
    end

    # <p>Lists Amazon Chime webhook configurations optionally filtered by ChatConfigurationArn</p>
    # @param [Hash, Types::DescribeChimeWebhookConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    # @option params [String] :chat_configuration_arn
    #   <p>An optional Amazon Resource Name (ARN) of a ChimeWebhookConfiguration to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     chat_configuration_arn: "ChatConfigurationArn"
    #   }
    #   options = {}
    #   response = client.describe_chime_webhook_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     webhook_configurations: [
    #       {
    #         webhook_description: "ChimeWebhookDescription", # required
    #         chat_configuration_arn: "ChatConfigurationArn", # required
    #         iam_role_arn: "Arn", # required
    #         sns_topic_arns: ["Arn"], # required
    #         configuration_name: "ConfigurationName",
    #         logging_level: "CustomerCwLogLevel",
    #         tags: [
    #           {
    #             tag_key: "TagKey", # required
    #             tag_value: "TagValue", # required
    #           }
    #         ],
    #         state: "ResourceState",
    #         state_reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeChimeWebhookConfigurationsResult]
    def describe_chime_webhook_configurations(params = {}, options = {})
      request = build_request(:describe_chime_webhook_configurations, params)
      request.send_request(options)
    end

    # <p>Lists Slack channel configurations optionally filtered by ChatConfigurationArn</p>
    # @param [Hash, Types::DescribeSlackChannelConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    # @option params [String] :next_token
    #   <p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    # @option params [String] :chat_configuration_arn
    #   <p>An optional Amazon Resource Name (ARN) of a SlackChannelConfiguration to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     chat_configuration_arn: "ChatConfigurationArn"
    #   }
    #   options = {}
    #   response = client.describe_slack_channel_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     slack_channel_configurations: [
    #       {
    #         slack_team_name: "SlackTeamName", # required
    #         slack_team_id: "SlackTeamId", # required
    #         slack_channel_id: "SlackChannelId", # required
    #         slack_channel_name: "SlackChannelDisplayName", # required
    #         chat_configuration_arn: "ChatConfigurationArn", # required
    #         iam_role_arn: "Arn", # required
    #         sns_topic_arns: ["Arn"], # required
    #         configuration_name: "ConfigurationName",
    #         logging_level: "CustomerCwLogLevel",
    #         guardrail_policy_arns: ["GuardrailPolicyArn"],
    #         user_authorization_required: false,
    #         tags: [
    #           {
    #             tag_key: "TagKey", # required
    #             tag_value: "TagValue", # required
    #           }
    #         ],
    #         state: "ResourceState",
    #         state_reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSlackChannelConfigurationsResult]
    def describe_slack_channel_configurations(params = {}, options = {})
      request = build_request(:describe_slack_channel_configurations, params)
      request.send_request(options)
    end

    # <p>Lists all Slack user identities with a mapped role.</p>
    # @param [Hash, Types::DescribeSlackUserIdentitiesRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration associated with the user identities to describe.</p>
    # @option params [String] :next_token
    #   <p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_slack_user_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slack_user_identities: [
    #       {
    #         iam_role_arn: "Arn", # required
    #         chat_configuration_arn: "ChatConfigurationArn", # required
    #         slack_team_id: "SlackTeamId", # required
    #         slack_user_id: "SlackUserId", # required
    #         aws_user_identity: "AwsUserIdentity"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeSlackUserIdentitiesResult]
    def describe_slack_user_identities(params = {}, options = {})
      request = build_request(:describe_slack_user_identities, params)
      request.send_request(options)
    end

    # <p>List all authorized Slack workspaces connected to the AWS Account onboarded with AWS Chatbot.</p>
    # @param [Hash, Types::DescribeSlackWorkspacesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    # @option params [String] :next_token
    #   <p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_slack_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slack_workspaces: [
    #       {
    #         slack_team_id: "SlackTeamId", # required
    #         slack_team_name: "SlackTeamName", # required
    #         state: "ResourceState",
    #         state_reason: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeSlackWorkspacesResult]
    def describe_slack_workspaces(params = {}, options = {})
      request = build_request(:describe_slack_workspaces, params)
      request.send_request(options)
    end

    # <p>Unlink a resource, for example a custom action, from a channel configuration.</p>
    # @param [Hash, Types::DisassociateFromConfigurationRequest] params
    # @option params [String] :resource
    #   <p>The resource (for example, a custom action) Amazon Resource Name (ARN) to unlink.</p>
    # @option params [String] :chat_configuration
    #   <p>The channel configuration the resource is being disassociated from.</p>
    # @example Disassociate a custom action from a configuration
    #   # Example operation for disassociate_from_configuration
    #   params = {
    #     resource: "arn:aws:chatbot::1234567890:custom-action/my-custom-action",
    #     chat_configuration: "arn:aws:chatbot::1234567890:chat-configuration/slack-channel/my-channel"
    #   }
    #   options = {}
    #   response = client.disassociate_from_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ResourceIdentifier", # required
    #     chat_configuration: "ChatConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_from_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateFromConfigurationResult]
    def disassociate_from_configuration(params = {}, options = {})
      request = build_request(:disassociate_from_configuration, params)
      request.send_request(options)
    end

    # <p>Returns AWS Chatbot account preferences.</p>
    # @param [Hash, Types::GetAccountPreferencesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_preferences: {
    #       user_authorization_required: false,
    #       training_data_collection_enabled: false
    #     }
    #   }
    # @return [Types::GetAccountPreferencesResult]
    def get_account_preferences(params = {}, options = {})
      request = build_request(:get_account_preferences, params)
      request.send_request(options)
    end

    # <p>Returns a custom action.</p>
    # @param [Hash, Types::GetCustomActionRequest] params
    # @option params [String] :custom_action_arn
    #   <p>Returns the fully defined Amazon Resource Name (ARN) of the custom action.</p>
    # @example Get a custom action
    #   # Example operation for get_custom_action
    #   params = {
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action"
    #   }
    #   options = {}
    #   response = client.get_custom_action(params, options)
    #   response.to_h #=>
    #   {
    #     custom_action: {
    #       custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action",
    #       action_name: "my-custom-action",
    #       definition: {
    #         command_text: "lambda invoke $functionName"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_action_arn: "CustomActionArn", # required
    #   }
    #   options = {}
    #   response = client.get_custom_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_action: {
    #       custom_action_arn: "CustomActionArn", # required
    #       definition: { # required
    #         command_text: "String", # required
    #       },
    #       alias_name: "CustomActionAliasName",
    #       attachments: [
    #         {
    #           notification_type: "CustomActionAttachmentNotificationType",
    #           button_text: "CustomActionButtonText",
    #           criteria: [
    #             {
    #               operator: "HAS_VALUE" # One of: ["HAS_VALUE", "EQUALS"], # required
    #               variable_name: "String", # required
    #               value: "String"
    #             }
    #           ],
    #           variables: {
    #             "String" => "String"
    #           }
    #         }
    #       ],
    #       action_name: "CustomActionName"
    #     }
    #   }
    # @return [Types::GetCustomActionResult]
    def get_custom_action(params = {}, options = {})
      request = build_request(:get_custom_action, params)
      request.send_request(options)
    end

    # <p>Returns a Microsoft Teams channel configuration in an AWS account.</p>
    # @param [Hash, Types::GetTeamsChannelConfigurationRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.get_microsoft_teams_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_configuration: {
    #       channel_id: "TeamsChannelId", # required
    #       channel_name: "TeamsChannelName",
    #       team_id: "UUID", # required
    #       team_name: "TeamName",
    #       tenant_id: "UUID", # required
    #       chat_configuration_arn: "ChatConfigurationArn", # required
    #       iam_role_arn: "Arn", # required
    #       sns_topic_arns: ["Arn"], # required
    #       configuration_name: "ConfigurationName",
    #       logging_level: "CustomerCwLogLevel",
    #       guardrail_policy_arns: ["GuardrailPolicyArn"],
    #       user_authorization_required: false,
    #       tags: [
    #         {
    #           tag_key: "TagKey", # required
    #           tag_value: "TagValue", # required
    #         }
    #       ],
    #       state: "ResourceState",
    #       state_reason: "String"
    #     }
    #   }
    # @return [Types::GetTeamsChannelConfigurationResult]
    def get_microsoft_teams_channel_configuration(params = {}, options = {})
      request = build_request(:get_microsoft_teams_channel_configuration, params)
      request.send_request(options)
    end

    # <p>Lists resources associated with a channel configuration.</p>
    # @param [Hash, Types::ListAssociationsRequest] params
    # @option params [String] :chat_configuration
    #   <p>The channel configuration to list associations for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    # @example List custom actions associated with a configuration
    #   # Example operation for list_associations
    #   params = {
    #     chat_configuration: "arn:aws:chatbot::1234567890:chat-configuration/slack-channel/my-channel"
    #   }
    #   options = {}
    #   response = client.list_associations(params, options)
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         resource: "arn:aws:chatbot::1234567890:custom-action/my-custom-action"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration: "ChatConfigurationArn", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [ # required
    #       {
    #         resource: "Arn", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAssociationsResult]
    def list_associations(params = {}, options = {})
      request = build_request(:list_associations, params)
      request.send_request(options)
    end

    # <p>Lists custom actions defined in this account.</p>
    # @param [Hash, Types::ListCustomActionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    # @example List custom actions
    #   # Example operation for list_custom_actions
    #   params = {}
    #   options = {}
    #   response = client.list_custom_actions(params, options)
    #   response.to_h #=>
    #   {
    #     custom_actions: [
    #       "arn:aws:chatbot::1234567890:custom-action/my-custom-action"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_custom_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_actions: ["CustomActionArn"], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListCustomActionsResult]
    def list_custom_actions(params = {}, options = {})
      request = build_request(:list_custom_actions, params)
      request.send_request(options)
    end

    # <p>Lists all AWS Chatbot Microsoft Teams channel configurations in an AWS account.</p>
    # @param [Hash, Types::ListTeamsChannelConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    # @option params [String] :team_id
    #   <p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>
    #            <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     team_id: "UUID"
    #   }
    #   options = {}
    #   response = client.list_microsoft_teams_channel_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     team_channel_configurations: [
    #       {
    #         channel_id: "TeamsChannelId", # required
    #         channel_name: "TeamsChannelName",
    #         team_id: "UUID", # required
    #         team_name: "TeamName",
    #         tenant_id: "UUID", # required
    #         chat_configuration_arn: "ChatConfigurationArn", # required
    #         iam_role_arn: "Arn", # required
    #         sns_topic_arns: ["Arn"], # required
    #         configuration_name: "ConfigurationName",
    #         logging_level: "CustomerCwLogLevel",
    #         guardrail_policy_arns: ["GuardrailPolicyArn"],
    #         user_authorization_required: false,
    #         tags: [
    #           {
    #             tag_key: "TagKey", # required
    #             tag_value: "TagValue", # required
    #           }
    #         ],
    #         state: "ResourceState",
    #         state_reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListTeamsChannelConfigurationsResult]
    def list_microsoft_teams_channel_configurations(params = {}, options = {})
      request = build_request(:list_microsoft_teams_channel_configurations, params)
      request.send_request(options)
    end

    # <p>Lists all authorized Microsoft Teams for an AWS Account</p>
    # @param [Hash, Types::ListMicrosoftTeamsConfiguredTeamsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_microsoft_teams_configured_teams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_teams: [
    #       {
    #         tenant_id: "UUID", # required
    #         team_id: "UUID", # required
    #         team_name: "UUID",
    #         state: "ResourceState",
    #         state_reason: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMicrosoftTeamsConfiguredTeamsResult]
    def list_microsoft_teams_configured_teams(params = {}, options = {})
      request = build_request(:list_microsoft_teams_configured_teams, params)
      request.send_request(options)
    end

    # <p>A list all Microsoft Teams user identities with a mapped role.</p>
    # @param [Hash, Types::ListMicrosoftTeamsUserIdentitiesRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identities to list.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_microsoft_teams_user_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     teams_user_identities: [
    #       {
    #         iam_role_arn: "Arn", # required
    #         chat_configuration_arn: "ChatConfigurationArn", # required
    #         team_id: "UUID", # required
    #         user_id: "UUID",
    #         aws_user_identity: "AwsUserIdentity",
    #         teams_channel_id: "TeamsChannelId",
    #         teams_tenant_id: "UUID"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMicrosoftTeamsUserIdentitiesResult]
    def list_microsoft_teams_user_identities(params = {}, options = {})
      request = build_request(:list_microsoft_teams_user_identities, params)
      request.send_request(options)
    end

    # <p>Lists all of the tags associated with the Amazon Resource Name (ARN) that you specify. The resource can be a user, server, or role.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the configuration.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to apply to the configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Detaches a key-value pair from a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is an identifier for a specific AWS resource, such as a server, user, or role.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>TagKeys are key-value pairs assigned to ARNs that can be used to group and search for resources by type. This metadata can be attached to resources for any purpose.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates AWS Chatbot account preferences.</p>
    # @param [Hash, Types::UpdateAccountPreferencesRequest] params
    # @option params [Boolean] :user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    # @option params [Boolean] :training_data_collection_enabled
    #   <p>Turns on training data collection.</p>
    #            <p>This helps improve the AWS Chatbot experience by allowing AWS Chatbot to store and use your customer information, such as AWS Chatbot configurations, notifications, user inputs, AWS Chatbot generated responses, and interaction data. This data helps us to continuously improve and develop Artificial Intelligence (AI) technologies. Your data is not shared with any third parties and is protected using sophisticated controls to prevent unauthorized access and misuse. AWS Chatbot does not store or use interactions in chat channels with Amazon Q for training AI technologies for AWS Chatbot.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_authorization_required: false,
    #     training_data_collection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_account_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_preferences: {
    #       user_authorization_required: false,
    #       training_data_collection_enabled: false
    #     }
    #   }
    # @return [Types::UpdateAccountPreferencesResult]
    def update_account_preferences(params = {}, options = {})
      request = build_request(:update_account_preferences, params)
      request.send_request(options)
    end

    # <p>Updates a Amazon Chime webhook configuration.</p>
    # @param [Hash, Types::UpdateChimeWebhookConfigurationRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to update.</p>
    # @option params [String] :webhook_description
    #   <p>A description of the webhook. We recommend using the convention <code>RoomName/WebhookName</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html">Tutorial: Get started with Amazon Chime</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #    </p>
    # @option params [String] :webhook_url
    #   <p>The URL for the Amazon Chime webhook.</p>
    # @option params [Array<String>] :sns_topic_arns
    #   <p>The ARNs of the SNS topics that deliver notifications to AWS Chatbot.</p>
    # @option params [String] :iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    # @option params [String] :logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     webhook_description: "ChimeWebhookDescription",
    #     webhook_url: "ChimeWebhookUrl",
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn",
    #     logging_level: "CustomerCwLogLevel"
    #   }
    #   options = {}
    #   response = client.update_chime_webhook_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhook_configuration: {
    #       webhook_description: "ChimeWebhookDescription", # required
    #       chat_configuration_arn: "ChatConfigurationArn", # required
    #       iam_role_arn: "Arn", # required
    #       sns_topic_arns: ["Arn"], # required
    #       configuration_name: "ConfigurationName",
    #       logging_level: "CustomerCwLogLevel",
    #       tags: [
    #         {
    #           tag_key: "TagKey", # required
    #           tag_value: "TagValue", # required
    #         }
    #       ],
    #       state: "ResourceState",
    #       state_reason: "String"
    #     }
    #   }
    # @return [Types::UpdateChimeWebhookConfigurationResult]
    def update_chime_webhook_configuration(params = {}, options = {})
      request = build_request(:update_chime_webhook_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a custom action.</p>
    # @param [Hash, Types::UpdateCustomActionRequest] params
    # @option params [String] :custom_action_arn
    #   <p>The fully defined Amazon Resource Name (ARN) of the custom action.</p>
    # @option params [Types::CustomActionDefinition] :definition
    #   <p>The definition of the command to run when invoked as an alias or as an action button.</p>
    # @option params [String] :alias_name
    #   <p>The name used to invoke this action in the chat channel. For example, <code>@aws run my-alias</code>.</p>
    # @option params [Array<Types::CustomActionAttachment>] :attachments
    #   <p>Defines when this custom action button should be attached to a notification.</p>
    # @example Update the command definition of an existing action
    #   # Updates the command text of a custom action without altering the existing alias name or attachment criteria
    #   params = {
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action",
    #     definition: {
    #       command_text: "lambda invoke MyNewFunction"
    #     }
    #   }
    #   options = {}
    #   response = client.update_custom_action(params, options)
    #   response.to_h #=>
    #   {
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_action_arn: "CustomActionArn", # required
    #     definition: { # required
    #       command_text: "String", # required
    #     },
    #     alias_name: "CustomActionAliasName",
    #     attachments: [
    #       {
    #         notification_type: "CustomActionAttachmentNotificationType",
    #         button_text: "CustomActionButtonText",
    #         criteria: [
    #           {
    #             operator: "HAS_VALUE" # One of: ["HAS_VALUE", "EQUALS"], # required
    #             variable_name: "String", # required
    #             value: "String"
    #           }
    #         ],
    #         variables: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_custom_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_action_arn: "CustomActionArn", # required
    #   }
    # @return [Types::UpdateCustomActionResult]
    def update_custom_action(params = {}, options = {})
      request = build_request(:update_custom_action, params)
      request.send_request(options)
    end

    # <p>Updates an Microsoft Teams channel configuration.</p>
    # @param [Hash, Types::UpdateTeamsChannelConfigurationRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TeamsChannelConfiguration to update.</p>
    # @option params [String] :channel_id
    #   <p>The ID of the Microsoft Teams channel.</p>
    # @option params [String] :channel_name
    #   <p>The name of the Microsoft Teams channel.</p>
    # @option params [Array<String>] :sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    # @option params [String] :iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    # @option params [String] :logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    # @option params [Array<String>] :guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    # @option params [Boolean] :user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     channel_id: "TeamsChannelId", # required
    #     channel_name: "TeamsChannelName",
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn",
    #     logging_level: "CustomerCwLogLevel",
    #     guardrail_policy_arns: ["GuardrailPolicyArn"],
    #     user_authorization_required: false
    #   }
    #   options = {}
    #   response = client.update_microsoft_teams_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_configuration: {
    #       channel_id: "TeamsChannelId", # required
    #       channel_name: "TeamsChannelName",
    #       team_id: "UUID", # required
    #       team_name: "TeamName",
    #       tenant_id: "UUID", # required
    #       chat_configuration_arn: "ChatConfigurationArn", # required
    #       iam_role_arn: "Arn", # required
    #       sns_topic_arns: ["Arn"], # required
    #       configuration_name: "ConfigurationName",
    #       logging_level: "CustomerCwLogLevel",
    #       guardrail_policy_arns: ["GuardrailPolicyArn"],
    #       user_authorization_required: false,
    #       tags: [
    #         {
    #           tag_key: "TagKey", # required
    #           tag_value: "TagValue", # required
    #         }
    #       ],
    #       state: "ResourceState",
    #       state_reason: "String"
    #     }
    #   }
    # @return [Types::UpdateTeamsChannelConfigurationResult]
    def update_microsoft_teams_channel_configuration(params = {}, options = {})
      request = build_request(:update_microsoft_teams_channel_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a Slack channel configuration.</p>
    # @param [Hash, Types::UpdateSlackChannelConfigurationRequest] params
    # @option params [String] :chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration to update.</p>
    # @option params [String] :slack_channel_id
    #   <p>The ID of the Slack channel.</p>
    #            <p>To get this ID, open Slack, right click on the channel name in the left pane, then choose Copy Link. The channel ID is the 9-character string at the end of the URL. For example, ABCBBLZZZ.
    #     </p>
    # @option params [String] :slack_channel_name
    #   <p>The name of the Slack channel.</p>
    # @option params [Array<String>] :sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    # @option params [String] :iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    # @option params [String] :logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    # @option params [Array<String>] :guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    # @option params [Boolean] :user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     slack_channel_id: "SlackChannelId", # required
    #     slack_channel_name: "SlackChannelDisplayName",
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn",
    #     logging_level: "CustomerCwLogLevel",
    #     guardrail_policy_arns: ["GuardrailPolicyArn"],
    #     user_authorization_required: false
    #   }
    #   options = {}
    #   response = client.update_slack_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_configuration: {
    #       slack_team_name: "SlackTeamName", # required
    #       slack_team_id: "SlackTeamId", # required
    #       slack_channel_id: "SlackChannelId", # required
    #       slack_channel_name: "SlackChannelDisplayName", # required
    #       chat_configuration_arn: "ChatConfigurationArn", # required
    #       iam_role_arn: "Arn", # required
    #       sns_topic_arns: ["Arn"], # required
    #       configuration_name: "ConfigurationName",
    #       logging_level: "CustomerCwLogLevel",
    #       guardrail_policy_arns: ["GuardrailPolicyArn"],
    #       user_authorization_required: false,
    #       tags: [
    #         {
    #           tag_key: "TagKey", # required
    #           tag_value: "TagValue", # required
    #         }
    #       ],
    #       state: "ResourceState",
    #       state_reason: "String"
    #     }
    #   }
    # @return [Types::UpdateSlackChannelConfigurationResult]
    def update_slack_channel_configuration(params = {}, options = {})
      request = build_request(:update_slack_channel_configuration, params)
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
      context[:gem_name] = 'aws-sdk-chatbot'
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
    end
  end
end
