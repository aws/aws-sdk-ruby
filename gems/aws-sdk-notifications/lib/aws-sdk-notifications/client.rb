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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:notifications)

module Aws::Notifications
  # An API client for Aws::Notifications.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Notifications
    @identifier = :notifications

    add_plugin(::Aws::Notifications::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Notifications::EndpointProvider)
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Associates a delivery <a href="https://docs.aws.amazon.com/notifications/latest/userguide/managing-delivery-channels.html">Channel</a> with a particular <code>NotificationConfiguration</code>. Supported Channels include Amazon Q Developer in chat applications, the Console Mobile Application, and emails (notifications-contacts).</p>
    # @param [Hash, Types::AssociateChannelRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to associate with the <code>NotificationConfiguration</code>.</p> <p>Supported ARNs include Amazon Q Developer in chat applications, the Console Mobile Application, and notifications-contacts.</p>
    # @option params [String] :notification_configuration_arn
    #   <p>The ARN of the <code>NotificationConfiguration</code> to associate with the Channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ChannelArn", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.associate_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateChannelResponse]
    def associate_channel(params = {}, options = {})
      request = build_request(:associate_channel, params)
      request.send_request(options)
    end

    # <p>Associates an Account Contact with a particular <code>ManagedNotificationConfiguration</code>.</p>
    # @param [Hash, Types::AssociateManagedNotificationAccountContactRequest] params
    # @option params [String] :contact_identifier
    #   <p>A unique value of an Account Contact Type to associate with the <code>ManagedNotificationConfiguration</code>.</p>
    # @option params [String] :managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to associate with the Account Contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_identifier: "AccountContactType", # required
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #   }
    #   options = {}
    #   response = client.associate_managed_notification_account_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateManagedNotificationAccountContactResponse]
    def associate_managed_notification_account_contact(params = {}, options = {})
      request = build_request(:associate_managed_notification_account_contact, params)
      request.send_request(options)
    end

    # <p>Associates an additional Channel with a particular <code>ManagedNotificationConfiguration</code>.</p> <p>Supported Channels include Amazon Q Developer in chat applications, the Console Mobile Application, and emails (notifications-contacts).</p>
    # @param [Hash, Types::AssociateManagedNotificationAdditionalChannelRequest] params
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to associate with the <code>ManagedNotificationConfiguration</code>.</p> <p>Supported ARNs include Amazon Q Developer in chat applications, the Console Mobile Application, and email (notifications-contacts).</p>
    # @option params [String] :managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to associate with the additional Channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #   }
    #   options = {}
    #   response = client.associate_managed_notification_additional_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateManagedNotificationAdditionalChannelResponse]
    def associate_managed_notification_additional_channel(params = {}, options = {})
      request = build_request(:associate_managed_notification_additional_channel, params)
      request.send_request(options)
    end

    # <p>Associates an organizational unit with a notification configuration.</p>
    # @param [Hash, Types::AssociateOrganizationalUnitRequest] params
    # @option params [String] :organizational_unit_id
    #   <p>The unique identifier of the organizational unit to associate.</p>
    # @option params [String] :notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notification configuration to associate with the organizational unit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organizational_unit_id: "OrganizationalUnitId", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.associate_organizational_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateOrganizationalUnitResponse]
    def associate_organizational_unit(params = {}, options = {})
      request = build_request(:associate_organizational_unit, params)
      request.send_request(options)
    end

    # <p>Creates an <a href="https://docs.aws.amazon.com/notifications/latest/userguide/glossary.html"> <code>EventRule</code> </a> that is associated with a specified <code>NotificationConfiguration</code>.</p>
    # @param [Hash, Types::CreateEventRuleRequest] params
    # @option params [String] :notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code> associated with this <code>EventRule</code>.</p>
    # @option params [String] :source
    #   <p>The matched event source.</p> <p>Must match one of the valid EventBridge sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @option params [String] :event_type
    #   <p>The event type to match.</p> <p>Must match one of the valid Amazon EventBridge event types. For example, EC2 Instance State-change Notification and Amazon CloudWatch Alarm State Change. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @option params [String] :event_pattern
    #   <p>An additional event pattern used to further filter the events this <code>EventRule</code> receives.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a> in the <i>Amazon EventBridge User Guide.</i> </p>
    # @option params [Array<String>] :regions
    #   <p>A list of Amazon Web Services Regions that send events to this <code>EventRule</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     source: "Source", # required
    #     event_type: "EventType", # required
    #     event_pattern: "EventRuleEventPattern",
    #     regions: ["Region"], # required
    #   }
    #   options = {}
    #   response = client.create_event_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "EventRuleArn", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     status_summary_by_region: { # required
    #       "Region" => {
    #         status: "EventRuleStatus", # required
    #         reason: "EventRuleStatusReason", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateEventRuleResponse]
    def create_event_rule(params = {}, options = {})
      request = build_request(:create_event_rule, params)
      request.send_request(options)
    end

    # <p>Creates a new <code>NotificationConfiguration</code>.</p>
    # @param [Hash, Types::CreateNotificationConfigurationRequest] params
    # @option params [String] :name
    #   <p>The name of the <code>NotificationConfiguration</code>. Supports RFC 3986's unreserved characters.</p>
    # @option params [String] :description
    #   <p>The description of the <code>NotificationConfiguration</code>.</p>
    # @option params [String] :aggregation_duration
    #   <p>The aggregation preference of the <code>NotificationConfiguration</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>LONG</code> </p> <ul> <li> <p>Aggregate notifications for long periods of time (12 hours).</p> </li> </ul> </li> <li> <p> <code>SHORT</code> </p> <ul> <li> <p>Aggregate notifications for short periods of time (5 minutes).</p> </li> </ul> </li> <li> <p> <code>NONE</code> </p> <ul> <li> <p>Don't aggregate notifications.</p> </li> </ul> </li> </ul> </li> </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NotificationConfigurationName", # required
    #     description: "NotificationConfigurationDescription", # required
    #     aggregation_duration: "AggregationDuration",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NotificationConfigurationArn", # required
    #     status: "NotificationConfigurationStatus", # required
    #   }
    # @return [Types::CreateNotificationConfigurationResponse]
    def create_notification_configuration(params = {}, options = {})
      request = build_request(:create_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an <code>EventRule</code>.</p>
    # @param [Hash, Types::DeleteEventRuleRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the <code>EventRule</code> to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "EventRuleArn", # required
    #   }
    #   options = {}
    #   response = client.delete_event_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEventRuleResponse]
    def delete_event_rule(params = {}, options = {})
      request = build_request(:delete_event_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>NotificationConfiguration</code>.</p>
    # @param [Hash, Types::DeleteNotificationConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code> to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteNotificationConfigurationResponse]
    def delete_notification_configuration(params = {}, options = {})
      request = build_request(:delete_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Deregisters a <code>NotificationConfiguration</code> in the specified Region.</p> <note> <p>You can't deregister the last <code>NotificationHub</code> in the account. <code>NotificationEvents</code> stored in the deregistered <code>NotificationConfiguration</code> are no longer be visible. Recreating a new <code>NotificationConfiguration</code> in the same Region restores access to those <code>NotificationEvents</code>.</p> </note>
    # @param [Hash, Types::DeregisterNotificationHubRequest] params
    # @option params [String] :notification_hub_region
    #   <p>The <code>NotificationConfiguration</code> Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notification_hub_region: "Region", # required
    #   }
    #   options = {}
    #   response = client.deregister_notification_hub(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_hub_region: "Region", # required
    #     status_summary: { # required
    #       status: "NotificationHubStatus", # required
    #       reason: "NotificationHubStatusReason", # required
    #     }
    #   }
    # @return [Types::DeregisterNotificationHubResponse]
    def deregister_notification_hub(params = {}, options = {})
      request = build_request(:deregister_notification_hub, params)
      request.send_request(options)
    end

    # <p>Disables service trust between User Notifications and Amazon Web Services Organizations.</p>
    # @param [Hash, Types::DisableNotificationsAccessForOrganizationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_notifications_access_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableNotificationsAccessForOrganizationResponse]
    def disable_notifications_access_for_organization(params = {}, options = {})
      request = build_request(:disable_notifications_access_for_organization, params)
      request.send_request(options)
    end

    # <p>Disassociates a Channel from a specified <code>NotificationConfiguration</code>. Supported Channels include Amazon Q Developer in chat applications, the Console Mobile Application, and emails (notifications-contacts).</p>
    # @param [Hash, Types::DisassociateChannelRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to disassociate.</p>
    # @option params [String] :notification_configuration_arn
    #   <p>The ARN of the <code>NotificationConfiguration</code> to disassociate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ChannelArn", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateChannelResponse]
    def disassociate_channel(params = {}, options = {})
      request = build_request(:disassociate_channel, params)
      request.send_request(options)
    end

    # <p>Disassociates an Account Contact with a particular <code>ManagedNotificationConfiguration</code>.</p>
    # @param [Hash, Types::DisassociateManagedNotificationAccountContactRequest] params
    # @option params [String] :contact_identifier
    #   <p>The unique value of an Account Contact Type to associate with the <code>ManagedNotificationConfiguration</code>.</p>
    # @option params [String] :managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to associate with the Account Contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_identifier: "AccountContactType", # required
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_managed_notification_account_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateManagedNotificationAccountContactResponse]
    def disassociate_managed_notification_account_contact(params = {}, options = {})
      request = build_request(:disassociate_managed_notification_account_contact, params)
      request.send_request(options)
    end

    # <p>Disassociates an additional Channel from a particular <code>ManagedNotificationConfiguration</code>.</p> <p>Supported Channels include Amazon Q Developer in chat applications, the Console Mobile Application, and emails (notifications-contacts).</p>
    # @param [Hash, Types::DisassociateManagedNotificationAdditionalChannelRequest] params
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to associate with the <code>ManagedNotificationConfiguration</code>.</p>
    # @option params [String] :managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the Managed Notification Configuration to associate with the additional Channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_managed_notification_additional_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateManagedNotificationAdditionalChannelResponse]
    def disassociate_managed_notification_additional_channel(params = {}, options = {})
      request = build_request(:disassociate_managed_notification_additional_channel, params)
      request.send_request(options)
    end

    # <p>Removes the association between an organizational unit and a notification configuration.</p>
    # @param [Hash, Types::DisassociateOrganizationalUnitRequest] params
    # @option params [String] :organizational_unit_id
    #   <p>The unique identifier of the organizational unit to disassociate.</p>
    # @option params [String] :notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notification configuration to disassociate from the organizational unit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organizational_unit_id: "OrganizationalUnitId", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_organizational_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateOrganizationalUnitResponse]
    def disassociate_organizational_unit(params = {}, options = {})
      request = build_request(:disassociate_organizational_unit, params)
      request.send_request(options)
    end

    # <p>Enables service trust between User Notifications and Amazon Web Services Organizations.</p>
    # @param [Hash, Types::EnableNotificationsAccessForOrganizationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.enable_notifications_access_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableNotificationsAccessForOrganizationResponse]
    def enable_notifications_access_for_organization(params = {}, options = {})
      request = build_request(:enable_notifications_access_for_organization, params)
      request.send_request(options)
    end

    # <p>Returns a specified <code>EventRule</code>.</p>
    # @param [Hash, Types::GetEventRuleRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the <code>EventRule</code> to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "EventRuleArn", # required
    #   }
    #   options = {}
    #   response = client.get_event_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "EventRuleArn", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     creation_time: Time.now, # required
    #     source: "Source", # required
    #     event_type: "EventType", # required
    #     event_pattern: "EventRuleEventPattern", # required
    #     regions: ["Region"], # required
    #     managed_rules: ["ManagedRuleArn"], # required
    #     status_summary_by_region: { # required
    #       "Region" => {
    #         status: "EventRuleStatus", # required
    #         reason: "EventRuleStatusReason", # required
    #       }
    #     }
    #   }
    # @return [Types::GetEventRuleResponse]
    def get_event_rule(params = {}, options = {})
      request = build_request(:get_event_rule, params)
      request.send_request(options)
    end

    # <p>Returns the child event of a specific given <code>ManagedNotificationEvent</code>.</p>
    # @param [Hash, Types::GetManagedNotificationChildEventRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationChildEvent</code> to return.</p>
    # @option params [String] :locale
    #   <p>The locale code of the language used for the retrieved <code>ManagedNotificationChildEvent</code>. The default locale is English <code>en_US</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ManagedNotificationChildEventArn", # required
    #     locale: "LocaleCode"
    #   }
    #   options = {}
    #   response = client.get_managed_notification_child_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ManagedNotificationChildEventArn", # required
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #     creation_time: Time.now, # required
    #     content: { # required
    #       schema_version: "SchemaVersion", # required
    #       id: "NotificationEventId", # required
    #       message_components: { # required
    #         headline: "TextPartReference",
    #         paragraph_summary: "TextPartReference",
    #         complete_description: "TextPartReference",
    #         dimensions: [
    #           {
    #             name: "TextPartReference", # required
    #             value: "TextPartReference", # required
    #           }
    #         ]
    #       },
    #       source_event_detail_url: "Url",
    #       source_event_detail_url_display_text: "String",
    #       notification_type: "NotificationType", # required
    #       event_status: "EventStatus",
    #       aggregate_managed_notification_event_arn: "ManagedNotificationEventArn", # required
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       text_parts: { # required
    #         "TextPartId" => {
    #           type: "TextPartType", # required
    #           display_text: "String",
    #           text_by_locale: {
    #             "LocaleCode" => "String"
    #           },
    #           url: "Url"
    #         }
    #       },
    #       organizational_unit_id: "OrganizationalUnitId",
    #       aggregation_detail: {
    #         summarization_dimensions: [
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetManagedNotificationChildEventResponse]
    def get_managed_notification_child_event(params = {}, options = {})
      request = build_request(:get_managed_notification_child_event, params)
      request.send_request(options)
    end

    # <p>Returns a specified <code>ManagedNotificationConfiguration</code>.</p>
    # @param [Hash, Types::GetManagedNotificationConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ManagedNotificationConfigurationOsArn", # required
    #   }
    #   options = {}
    #   response = client.get_managed_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ManagedNotificationConfigurationOsArn", # required
    #     name: "ManagedNotificationConfigurationName", # required
    #     description: "ManagedNotificationConfigurationDescription", # required
    #     category: "String", # required
    #     sub_category: "String", # required
    #   }
    # @return [Types::GetManagedNotificationConfigurationResponse]
    def get_managed_notification_configuration(params = {}, options = {})
      request = build_request(:get_managed_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Returns a specified <code>ManagedNotificationEvent</code>.</p>
    # @param [Hash, Types::GetManagedNotificationEventRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationEvent</code> to return.</p>
    # @option params [String] :locale
    #   <p>The locale code of the language used for the retrieved <code>ManagedNotificationEvent</code>. The default locale is English <code>(en_US)</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ManagedNotificationEventArn", # required
    #     locale: "LocaleCode"
    #   }
    #   options = {}
    #   response = client.get_managed_notification_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ManagedNotificationEventArn", # required
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #     creation_time: Time.now, # required
    #     content: { # required
    #       schema_version: "SchemaVersion", # required
    #       id: "NotificationEventId", # required
    #       message_components: { # required
    #         headline: "TextPartReference",
    #         paragraph_summary: "TextPartReference",
    #         complete_description: "TextPartReference",
    #         dimensions: [
    #           {
    #             name: "TextPartReference", # required
    #             value: "TextPartReference", # required
    #           }
    #         ]
    #       },
    #       source_event_detail_url: "Url",
    #       source_event_detail_url_display_text: "String",
    #       notification_type: "NotificationType", # required
    #       event_status: "EventStatus",
    #       aggregation_event_type: "AggregationEventType",
    #       aggregation_summary: {
    #         event_count: 1, # required
    #         aggregated_by: [ # required
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #           }
    #         ],
    #         aggregated_accounts: { # required
    #           name: "String", # required
    #           count: 1, # required
    #           sample_values: ["String"]
    #         },
    #         aggregated_regions: { # required
    #           name: "String", # required
    #           count: 1, # required
    #           sample_values: ["String"]
    #         },
    #         aggregated_organizational_units: {
    #           name: "String", # required
    #           count: 1, # required
    #           sample_values: ["String"]
    #         },
    #         additional_summarization_dimensions: [
    #           {
    #             name: "String", # required
    #             count: 1, # required
    #             sample_values: ["String"]
    #           }
    #         ]
    #       },
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       text_parts: { # required
    #         "TextPartId" => {
    #           type: "TextPartType", # required
    #           display_text: "String",
    #           text_by_locale: {
    #             "LocaleCode" => "String"
    #           },
    #           url: "Url"
    #         }
    #       },
    #       organizational_unit_id: "OrganizationalUnitId"
    #     }
    #   }
    # @return [Types::GetManagedNotificationEventResponse]
    def get_managed_notification_event(params = {}, options = {})
      request = build_request(:get_managed_notification_event, params)
      request.send_request(options)
    end

    # <p>Returns a specified <code>NotificationConfiguration</code>.</p>
    # @param [Hash, Types::GetNotificationConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code> to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.get_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NotificationConfigurationArn", # required
    #     name: "NotificationConfigurationName", # required
    #     description: "NotificationConfigurationDescription", # required
    #     status: "NotificationConfigurationStatus", # required
    #     creation_time: Time.now, # required
    #     aggregation_duration: "AggregationDuration",
    #     subtype: "NotificationConfigurationSubtype"
    #   }
    # @return [Types::GetNotificationConfigurationResponse]
    def get_notification_configuration(params = {}, options = {})
      request = build_request(:get_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Returns a specified <code>NotificationEvent</code>.</p> <important> <p>User Notifications stores notifications in the individual Regions you register as notification hubs and the Region of the source event rule. <code>GetNotificationEvent</code> only returns notifications stored in the same Region in which the action is called. User Notifications doesn't backfill notifications to new Regions selected as notification hubs. For this reason, we recommend that you make calls in your oldest registered notification hub. For more information, see <a href="https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html">Notification hubs</a> in the <i>Amazon Web Services User Notifications User Guide</i>.</p> </important>
    # @param [Hash, Types::GetNotificationEventRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationEvent</code> to return.</p>
    # @option params [String] :locale
    #   <p>The locale code of the language used for the retrieved <code>NotificationEvent</code>. The default locale is English <code>en_US</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationEventArn", # required
    #     locale: "LocaleCode"
    #   }
    #   options = {}
    #   response = client.get_notification_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NotificationEventArn", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     creation_time: Time.now, # required
    #     content: { # required
    #       schema_version: "SchemaVersion", # required
    #       id: "NotificationEventId", # required
    #       source_event_metadata: { # required
    #         event_type_version: "String", # required
    #         source_event_id: "String", # required
    #         event_origin_region: "Region",
    #         related_account: "AccountId", # required
    #         source: "Source", # required
    #         event_occurrence_time: Time.now, # required
    #         event_type: "String", # required
    #         related_resources: [ # required
    #           {
    #             id: "String",
    #             arn: "Arn",
    #             detail_url: "Url",
    #             tags: ["String"]
    #           }
    #         ]
    #       },
    #       message_components: { # required
    #         headline: "TextPartReference",
    #         paragraph_summary: "TextPartReference",
    #         complete_description: "TextPartReference",
    #         dimensions: [
    #           {
    #             name: "TextPartReference", # required
    #             value: "TextPartReference", # required
    #           }
    #         ]
    #       },
    #       source_event_detail_url: "Url",
    #       source_event_detail_url_display_text: "String",
    #       notification_type: "NotificationType", # required
    #       event_status: "EventStatus",
    #       aggregation_event_type: "AggregationEventType",
    #       aggregate_notification_event_arn: "NotificationEventArn",
    #       aggregation_summary: {
    #         event_count: 1, # required
    #         aggregated_by: [ # required
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #           }
    #         ],
    #         aggregated_accounts: { # required
    #           name: "String", # required
    #           count: 1, # required
    #           sample_values: ["String"]
    #         },
    #         aggregated_regions: { # required
    #           name: "String", # required
    #           count: 1, # required
    #           sample_values: ["String"]
    #         },
    #         aggregated_organizational_units: {
    #           name: "String", # required
    #           count: 1, # required
    #           sample_values: ["String"]
    #         },
    #         additional_summarization_dimensions: [
    #           {
    #             name: "String", # required
    #             count: 1, # required
    #             sample_values: ["String"]
    #           }
    #         ]
    #       },
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       text_parts: { # required
    #         "TextPartId" => {
    #           type: "TextPartType", # required
    #           display_text: "String",
    #           text_by_locale: {
    #             "LocaleCode" => "String"
    #           },
    #           url: "Url"
    #         }
    #       },
    #       media: [ # required
    #         {
    #           media_id: "MediaId", # required
    #           type: "MediaElementType", # required
    #           url: "Url", # required
    #           caption: "TextPartReference", # required
    #         }
    #       ],
    #       organizational_unit_id: "OrganizationalUnitId"
    #     }
    #   }
    # @return [Types::GetNotificationEventResponse]
    def get_notification_event(params = {}, options = {})
      request = build_request(:get_notification_event, params)
      request.send_request(options)
    end

    # <p>Returns the AccessStatus of Service Trust Enablement for User Notifications and Amazon Web Services Organizations.</p>
    # @param [Hash, Types::GetNotificationsAccessForOrganizationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_notifications_access_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notifications_access_for_organization: { # required
    #       access_status: "ENABLED" # One of: ["ENABLED", "DISABLED", "PENDING", "FAILED"], # required
    #     }
    #   }
    # @return [Types::GetNotificationsAccessForOrganizationResponse]
    def get_notifications_access_for_organization(params = {}, options = {})
      request = build_request(:get_notifications_access_for_organization, params)
      request.send_request(options)
    end

    # <p>Returns a list of Channels for a <code>NotificationConfiguration</code>.</p>
    # @param [Hash, Types::ListChannelsRequest] params
    # @option params [String] :notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in this call. The default value is 20.</p>
    # @option params [String] :next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous ListNotificationEvents call. <code>NextToken</code> uses Base64 encoding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     channels: ["ChannelArn"], # required
    #   }
    # @return [Types::ListChannelsResponse]
    def list_channels(params = {}, options = {})
      request = build_request(:list_channels, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>EventRules</code> according to specified filters, in reverse chronological order (newest first).</p>
    # @param [Hash, Types::ListEventRulesRequest] params
    # @option params [String] :notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in this call. The default value is 20.</p>
    # @option params [String] :next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListEventRules</code> call. Next token uses Base64 encoding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_event_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     event_rules: [ # required
    #       {
    #         arn: "EventRuleArn", # required
    #         notification_configuration_arn: "NotificationConfigurationArn", # required
    #         creation_time: Time.now, # required
    #         source: "Source", # required
    #         event_type: "EventType", # required
    #         event_pattern: "EventRuleEventPattern", # required
    #         regions: ["Region"], # required
    #         managed_rules: ["ManagedRuleArn"], # required
    #         status_summary_by_region: { # required
    #           "Region" => {
    #             status: "EventRuleStatus", # required
    #             reason: "EventRuleStatusReason", # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListEventRulesResponse]
    def list_event_rules(params = {}, options = {})
      request = build_request(:list_event_rules, params)
      request.send_request(options)
    end

    # <p>Returns a list of Account contacts and Channels associated with a <code>ManagedNotificationConfiguration</code>, in paginated format.</p>
    # @param [Hash, Types::ListManagedNotificationChannelAssociationsRequest] params
    # @option params [String] :managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to match.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    # @option params [String] :next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListManagedNotificationChannelAssociations</code> call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_managed_notification_channel_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     channel_associations: [ # required
    #       {
    #         channel_identifier: "String", # required
    #         channel_type: "ChannelType", # required
    #         override_option: "ChannelAssociationOverrideOption"
    #       }
    #     ]
    #   }
    # @return [Types::ListManagedNotificationChannelAssociationsResponse]
    def list_managed_notification_channel_associations(params = {}, options = {})
      request = build_request(:list_managed_notification_channel_associations, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>ManagedNotificationChildEvents</code> for a specified aggregate <code>ManagedNotificationEvent</code>, ordered by creation time in reverse chronological order (newest first).</p>
    # @param [Hash, Types::ListManagedNotificationChildEventsRequest] params
    # @option params [String] :aggregate_managed_notification_event_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationEvent</code>.</p>
    # @option params [Time] :start_time
    #   <p>The earliest time of events to return from this call.</p>
    # @option params [Time] :end_time
    #   <p>Latest time of events to return from this call.</p>
    # @option params [String] :locale
    #   <p>The locale code of the language used for the retrieved <code>NotificationEvent</code>. The default locale is English.<code>en_US</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    # @option params [String] :related_account
    #   <p>The Amazon Web Services account ID associated with the Managed Notification Child Events.</p>
    # @option params [String] :organizational_unit_id
    #   <p>The identifier of the Amazon Web Services Organizations organizational unit (OU) associated with the Managed Notification Child Events.</p>
    # @option params [String] :next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous ListManagedNotificationChannelAssociations call. Next token uses Base64 encoding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     aggregate_managed_notification_event_arn: "ManagedNotificationEventArn", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     locale: "LocaleCode",
    #     max_results: 1,
    #     related_account: "AccountId",
    #     organizational_unit_id: "OrganizationalUnitId",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_managed_notification_child_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     managed_notification_child_events: [ # required
    #       {
    #         arn: "ManagedNotificationEventArn", # required
    #         managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #         related_account: "AccountId", # required
    #         creation_time: Time.now, # required
    #         child_event: { # required
    #           schema_version: "SchemaVersion", # required
    #           source_event_metadata: { # required
    #             event_origin_region: "Region",
    #             source: "Source", # required
    #             event_type: "EventType", # required
    #           },
    #           message_components: { # required
    #             headline: "String", # required
    #           },
    #           aggregation_detail: { # required
    #             summarization_dimensions: [
    #               {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             ]
    #           },
    #           event_status: "EventStatus", # required
    #           notification_type: "NotificationType", # required
    #         },
    #         aggregate_managed_notification_event_arn: "ManagedNotificationEventArn", # required
    #         organizational_unit_id: "OrganizationalUnitId"
    #       }
    #     ]
    #   }
    # @return [Types::ListManagedNotificationChildEventsResponse]
    def list_managed_notification_child_events(params = {}, options = {})
      request = build_request(:list_managed_notification_child_events, params)
      request.send_request(options)
    end

    # <p>Returns a list of Managed Notification Configurations according to specified filters, ordered by creation time in reverse chronological order (newest first).</p>
    # @param [Hash, Types::ListManagedNotificationConfigurationsRequest] params
    # @option params [String] :channel_identifier
    #   <p>The identifier or ARN of the notification channel to filter configurations by.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    # @option params [String] :next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous ListManagedNotificationChannelAssociations call. Next token uses Base64 encoding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_identifier: "ChannelIdentifier",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_managed_notification_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     managed_notification_configurations: [ # required
    #       {
    #         arn: "ManagedNotificationConfigurationOsArn", # required
    #         name: "ManagedNotificationConfigurationName", # required
    #         description: "ManagedNotificationConfigurationDescription", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListManagedNotificationConfigurationsResponse]
    def list_managed_notification_configurations(params = {}, options = {})
      request = build_request(:list_managed_notification_configurations, params)
      request.send_request(options)
    end

    # <p>Returns a list of Managed Notification Events according to specified filters, ordered by creation time in reverse chronological order (newest first).</p>
    # @param [Hash, Types::ListManagedNotificationEventsRequest] params
    # @option params [Time] :start_time
    #   <p>The earliest time of events to return from this call.</p>
    # @option params [Time] :end_time
    #   <p>Latest time of events to return from this call.</p>
    # @option params [String] :locale
    #   <p>The locale code of the language used for the retrieved NotificationEvent. The default locale is English (en_US).</p>
    # @option params [String] :source
    #   <p>The Amazon Web Services service the event originates from. For example aws.cloudwatch.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    # @option params [String] :next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListManagedNotificationChannelAssociations</code> call. Next token uses Base64 encoding.</p>
    # @option params [String] :organizational_unit_id
    #   <p>The Organizational Unit Id that an Amazon Web Services account belongs to.</p>
    # @option params [String] :related_account
    #   <p>The Amazon Web Services account ID associated with the Managed Notification Events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     locale: "LocaleCode",
    #     source: "Source",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     organizational_unit_id: "OrganizationalUnitId",
    #     related_account: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_managed_notification_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     managed_notification_events: [ # required
    #       {
    #         arn: "ManagedNotificationEventArn", # required
    #         managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #         related_account: "AccountId", # required
    #         creation_time: Time.now, # required
    #         notification_event: { # required
    #           schema_version: "SchemaVersion", # required
    #           source_event_metadata: { # required
    #             event_origin_region: "Region",
    #             source: "Source", # required
    #             event_type: "EventType", # required
    #           },
    #           message_components: { # required
    #             headline: "String", # required
    #           },
    #           event_status: "EventStatus", # required
    #           notification_type: "NotificationType", # required
    #         },
    #         aggregation_event_type: "AggregationEventType",
    #         organizational_unit_id: "OrganizationalUnitId",
    #         aggregation_summary: {
    #           event_count: 1, # required
    #           aggregated_by: [ # required
    #             {
    #               name: "String", # required
    #               value: "String", # required
    #             }
    #           ],
    #           aggregated_accounts: { # required
    #             name: "String", # required
    #             count: 1, # required
    #             sample_values: ["String"]
    #           },
    #           aggregated_regions: { # required
    #             name: "String", # required
    #             count: 1, # required
    #             sample_values: ["String"]
    #           },
    #           aggregated_organizational_units: {
    #             name: "String", # required
    #             count: 1, # required
    #             sample_values: ["String"]
    #           },
    #           additional_summarization_dimensions: [
    #             {
    #               name: "String", # required
    #               count: 1, # required
    #               sample_values: ["String"]
    #             }
    #           ]
    #         },
    #         aggregated_notification_regions: ["Region"]
    #       }
    #     ]
    #   }
    # @return [Types::ListManagedNotificationEventsResponse]
    def list_managed_notification_events(params = {}, options = {})
      request = build_request(:list_managed_notification_events, params)
      request.send_request(options)
    end

    # <p>Returns a list of member accounts associated with a notification configuration.</p>
    # @param [Hash, Types::ListMemberAccountsRequest] params
    # @option params [String] :notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notification configuration used to filter the member accounts.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid values are 1-100.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. Use the value returned in the previous response.</p>
    # @option params [String] :member_account
    #   <p>The member account identifier used to filter the results.</p>
    # @option params [String] :status
    #   <p>The status used to filter the member accounts.</p>
    # @option params [String] :organizational_unit_id
    #   <p>The organizational unit ID used to filter the member accounts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     member_account: "AccountId",
    #     status: "MemberAccountNotificationConfigurationStatus",
    #     organizational_unit_id: "OrganizationalUnitId"
    #   }
    #   options = {}
    #   response = client.list_member_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     member_accounts: [ # required
    #       {
    #         notification_configuration_arn: "NotificationConfigurationArn",
    #         account_id: "AccountId", # required
    #         status: "MemberAccountNotificationConfigurationStatus", # required
    #         status_reason: "String", # required
    #         organizational_unit_id: "OrganizationalUnitId", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMemberAccountsResponse]
    def list_member_accounts(params = {}, options = {})
      request = build_request(:list_member_accounts, params)
      request.send_request(options)
    end

    # <p>Returns a list of abbreviated <code>NotificationConfigurations</code> according to specified filters, in reverse chronological order (newest first).</p>
    # @param [Hash, Types::ListNotificationConfigurationsRequest] params
    # @option params [String] :event_rule_source
    #   <p>The matched event source.</p> <p>Must match one of the valid EventBridge sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to match.</p>
    # @option params [String] :status
    #   <p>The <code>NotificationConfiguration</code> status to match.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ACTIVE</code> </p> <ul> <li> <p>All <code>EventRules</code> are <code>ACTIVE</code> and any call can be run.</p> </li> </ul> </li> <li> <p> <code>PARTIALLY_ACTIVE</code> </p> <ul> <li> <p>Some <code>EventRules</code> are <code>ACTIVE</code> and some are <code>INACTIVE</code>. Any call can be run.</p> </li> <li> <p>Any call can be run.</p> </li> </ul> </li> <li> <p> <code>INACTIVE</code> </p> <ul> <li> <p>All <code>EventRules</code> are <code>INACTIVE</code> and any call can be run.</p> </li> </ul> </li> <li> <p> <code>DELETING</code> </p> <ul> <li> <p>This <code>NotificationConfiguration</code> is being deleted.</p> </li> <li> <p>Only <code>GET</code> and <code>LIST</code> calls can be run.</p> </li> </ul> </li> </ul> </li> </ul>
    # @option params [String] :subtype
    #   <p>The subtype used to filter the notification configurations in the request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    # @option params [String] :next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListEventRules</code> call. Next token uses Base64 encoding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_rule_source: "Source",
    #     channel_arn: "ChannelArn",
    #     status: "NotificationConfigurationStatus",
    #     subtype: "NotificationConfigurationSubtype",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_notification_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     notification_configurations: [ # required
    #       {
    #         arn: "NotificationConfigurationArn", # required
    #         name: "NotificationConfigurationName", # required
    #         description: "NotificationConfigurationDescription", # required
    #         status: "NotificationConfigurationStatus", # required
    #         creation_time: Time.now, # required
    #         aggregation_duration: "AggregationDuration",
    #         subtype: "NotificationConfigurationSubtype"
    #       }
    #     ]
    #   }
    # @return [Types::ListNotificationConfigurationsResponse]
    def list_notification_configurations(params = {}, options = {})
      request = build_request(:list_notification_configurations, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>NotificationEvents</code> according to specified filters, in reverse chronological order (newest first).</p> <important> <p>User Notifications stores notifications in the individual Regions you register as notification hubs and the Region of the source event rule. ListNotificationEvents only returns notifications stored in the same Region in which the action is called. User Notifications doesn't backfill notifications to new Regions selected as notification hubs. For this reason, we recommend that you make calls in your oldest registered notification hub. For more information, see <a href="https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html">Notification hubs</a> in the <i>Amazon Web Services User Notifications User Guide</i>.</p> </important>
    # @param [Hash, Types::ListNotificationEventsRequest] params
    # @option params [Time] :start_time
    #   <p>The earliest time of events to return from this call.</p>
    # @option params [Time] :end_time
    #   <p>Latest time of events to return from this call.</p>
    # @option params [String] :locale
    #   <p>The locale code of the language used for the retrieved <code>NotificationEvent</code>. The default locale is English <code>(en_US)</code>.</p>
    # @option params [String] :source
    #   <p>The matched event source.</p> <p>Must match one of the valid EventBridge sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @option params [Boolean] :include_child_events
    #   <p>Include aggregated child events in the result.</p>
    # @option params [String] :aggregate_notification_event_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>aggregatedNotificationEventArn</code> to match.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    # @option params [String] :next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListEventRules</code> call. Next token uses Base64 encoding.</p>
    # @option params [String] :organizational_unit_id
    #   <p>The unique identifier of the organizational unit used to filter notification events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     locale: "LocaleCode",
    #     source: "Source",
    #     include_child_events: false,
    #     aggregate_notification_event_arn: "NotificationEventArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     organizational_unit_id: "OrganizationalUnitId"
    #   }
    #   options = {}
    #   response = client.list_notification_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     notification_events: [ # required
    #       {
    #         arn: "NotificationEventArn", # required
    #         notification_configuration_arn: "NotificationConfigurationArn", # required
    #         related_account: "AccountId", # required
    #         creation_time: Time.now, # required
    #         notification_event: { # required
    #           schema_version: "SchemaVersion", # required
    #           source_event_metadata: { # required
    #             event_origin_region: "String",
    #             source: "String", # required
    #             event_type: "String", # required
    #           },
    #           message_components: { # required
    #             headline: "String", # required
    #           },
    #           event_status: "EventStatus", # required
    #           notification_type: "NotificationType", # required
    #         },
    #         aggregation_event_type: "AggregationEventType",
    #         aggregate_notification_event_arn: "NotificationEventArn",
    #         aggregation_summary: {
    #           event_count: 1, # required
    #           aggregated_by: [ # required
    #             {
    #               name: "String", # required
    #               value: "String", # required
    #             }
    #           ],
    #           aggregated_accounts: { # required
    #             name: "String", # required
    #             count: 1, # required
    #             sample_values: ["String"]
    #           },
    #           aggregated_regions: { # required
    #             name: "String", # required
    #             count: 1, # required
    #             sample_values: ["String"]
    #           },
    #           aggregated_organizational_units: {
    #             name: "String", # required
    #             count: 1, # required
    #             sample_values: ["String"]
    #           },
    #           additional_summarization_dimensions: [
    #             {
    #               name: "String", # required
    #               count: 1, # required
    #               sample_values: ["String"]
    #             }
    #           ]
    #         },
    #         organizational_unit_id: "OrganizationalUnitId"
    #       }
    #     ]
    #   }
    # @return [Types::ListNotificationEventsResponse]
    def list_notification_events(params = {}, options = {})
      request = build_request(:list_notification_events, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>NotificationHubs</code>.</p>
    # @param [Hash, Types::ListNotificationHubsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to list in a single response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token. Set to null to start listing notification hubs from the start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_notification_hubs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_hubs: [ # required
    #       {
    #         notification_hub_region: "Region", # required
    #         status_summary: { # required
    #           status: "NotificationHubStatus", # required
    #           reason: "NotificationHubStatusReason", # required
    #         },
    #         creation_time: Time.now, # required
    #         last_activation_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListNotificationHubsResponse]
    def list_notification_hubs(params = {}, options = {})
      request = build_request(:list_notification_hubs, params)
      request.send_request(options)
    end

    # <p>Returns a list of organizational units associated with a notification configuration.</p>
    # @param [Hash, Types::ListOrganizationalUnitsRequest] params
    # @option params [String] :notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notification configuration used to filter the organizational units.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of organizational units to return in a single call. Valid values are 1-100.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. Use the value returned in the previous response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_organizational_units(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organizational_units: ["OrganizationalUnitId"], # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOrganizationalUnitsResponse]
    def list_organizational_units(params = {}, options = {})
      request = build_request(:list_organizational_units, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for a specified Amazon Resource Name (ARN).</p> <p>For more information, see <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging your Amazon Web Services resources</a> in the <i>Tagging Amazon Web Services Resources User Guide</i>.</p> <note> <p>This is only supported for <code>NotificationConfigurations</code>.</p> </note>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) to use to list tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Registers a <code>NotificationConfiguration</code> in the specified Region.</p> <p>There is a maximum of one <code>NotificationConfiguration</code> per Region. You can have a maximum of 3 <code>NotificationHub</code> resources at a time.</p>
    # @param [Hash, Types::RegisterNotificationHubRequest] params
    # @option params [String] :notification_hub_region
    #   <p>The Region of the <code>NotificationHub</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notification_hub_region: "Region", # required
    #   }
    #   options = {}
    #   response = client.register_notification_hub(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_hub_region: "Region", # required
    #     status_summary: { # required
    #       status: "NotificationHubStatus", # required
    #       reason: "NotificationHubStatusReason", # required
    #     },
    #     creation_time: Time.now, # required
    #     last_activation_time: Time.now
    #   }
    # @return [Types::RegisterNotificationHubResponse]
    def register_notification_hub(params = {}, options = {})
      request = build_request(:register_notification_hub, params)
      request.send_request(options)
    end

    # <p>Tags the resource with a tag key and value.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging your Amazon Web Services resources</a> in the <i>Tagging Amazon Web Services Resources User Guide</i>.</p> <note> <p>This is only supported for <code>NotificationConfigurations</code>.</p> </note>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) to use to tag a resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationConfigurationArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Untags a resource with a specified Amazon Resource Name (ARN).</p> <p>For more information, see <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging your Amazon Web Services resources</a> in the <i>Tagging Amazon Web Services Resources User Guide</i>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) to use to untag a resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to use to untag a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationConfigurationArn", # required
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

    # <p>Updates an existing <code>EventRule</code>.</p>
    # @param [Hash, Types::UpdateEventRuleRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) to use to update the <code>EventRule</code>.</p>
    # @option params [String] :event_pattern
    #   <p>An additional event pattern used to further filter the events this <code>EventRule</code> receives.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a> in the <i>Amazon EventBridge User Guide.</i> </p>
    # @option params [Array<String>] :regions
    #   <p>A list of Amazon Web Services Regions that sends events to this <code>EventRule</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "EventRuleArn", # required
    #     event_pattern: "EventRuleEventPattern",
    #     regions: ["Region"]
    #   }
    #   options = {}
    #   response = client.update_event_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "EventRuleArn", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     status_summary_by_region: { # required
    #       "Region" => {
    #         status: "EventRuleStatus", # required
    #         reason: "EventRuleStatusReason", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateEventRuleResponse]
    def update_event_rule(params = {}, options = {})
      request = build_request(:update_event_rule, params)
      request.send_request(options)
    end

    # <p>Updates a <code>NotificationConfiguration</code>.</p>
    # @param [Hash, Types::UpdateNotificationConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) used to update the <code>NotificationConfiguration</code>.</p>
    # @option params [String] :name
    #   <p>The name of the <code>NotificationConfiguration</code>.</p>
    # @option params [String] :description
    #   <p>The description of the <code>NotificationConfiguration</code>.</p>
    # @option params [String] :aggregation_duration
    #   <p>The aggregation preference of the <code>NotificationConfiguration</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>LONG</code> </p> <ul> <li> <p>Aggregate notifications for long periods of time (12 hours).</p> </li> </ul> </li> <li> <p> <code>SHORT</code> </p> <ul> <li> <p>Aggregate notifications for short periods of time (5 minutes).</p> </li> </ul> </li> <li> <p> <code>NONE</code> </p> <ul> <li> <p>Don't aggregate notifications.</p> </li> </ul> </li> </ul> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationConfigurationArn", # required
    #     name: "NotificationConfigurationName",
    #     description: "NotificationConfigurationDescription",
    #     aggregation_duration: "AggregationDuration"
    #   }
    #   options = {}
    #   response = client.update_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NotificationConfigurationArn", # required
    #   }
    # @return [Types::UpdateNotificationConfigurationResponse]
    def update_notification_configuration(params = {}, options = {})
      request = build_request(:update_notification_configuration, params)
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
      context[:gem_name] = 'aws-sdk-notifications'
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
