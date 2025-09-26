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
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::Codestarnotifications
  # An API client for Aws::Codestarnotifications.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CodeStarNotifications20191015

    add_plugin(::Aws::Codestarnotifications::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
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
    #  Custom Endpoint
    # @option options [Aws::Codestarnotifications::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates a notification rule for a resource. The rule specifies the events you want
    #             notifications about and the targets (such as Amazon Q Developer in chat applications topics or Amazon Q Developer in chat applications clients configured for Slack) where you want to receive
    #             them.</p>
    # @param [Hash, Types::CreateNotificationRuleRequest] params
    # @option params [String] :name
    #   <p>The name for the notification rule. Notification rule names must be unique in your Amazon Web Services account.</p>
    # @option params [Array<String>] :event_type_ids
    #   <p>A list of event types associated with this notification rule. For a list of allowed
    #               events, see <a>EventTypeSummary</a>.</p>
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) of the resource to associate with the notification rule. Supported resources include pipelines in CodePipeline,
    #         repositories in CodeCommit, and build projects in CodeBuild.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>A list of Amazon Resource Names (ARNs) of Amazon Simple Notification Service topics and Amazon Q Developer in chat applications clients to associate with the
    #         notification rule.</p>
    # @option params [String] :detail_type
    #   <p>The level of detail to include in the notifications for this resource. <code>BASIC</code> will include only the 
    #           contents of the event as it would appear in Amazon CloudWatch. <code>FULL</code> will include any supplemental information
    #           provided by CodeStar Notifications and/or the service for the resource for which the notification is created.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request with the same
    #               parameters is received and a token is included, the request returns information about
    #               the initial request that used that token.</p>
    #            <note>
    #               <p>The Amazon Web Services SDKs prepopulate client request tokens. If you are using an Amazon Web Services SDK, an
    #                   idempotency token is created for you.</p>
    #            </note>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to apply to this notification rule. Key names cannot start with "<code>aws</code>". </p>
    # @option params [String] :status
    #   <p>The status of the notification rule. The default value is <code>ENABLED</code>. If the status is
    #               set to <code>DISABLED</code>, notifications aren't sent for the notification rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NotificationRuleName", # required
    #     event_type_ids: ["EventTypeId"], # required
    #     resource: "NotificationRuleResource", # required
    #     targets: [ # required
    #       {
    #         target_type: "TargetType",
    #         target_address: "TargetAddress"
    #       }
    #     ],
    #     detail_type: "BASIC" # One of: ["BASIC", "FULL"], # required
    #     client_request_token: "ClientRequestToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.create_notification_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NotificationRuleArn"
    #   }
    # @return [Types::CreateNotificationRuleResult]
    def create_notification_rule(params = {}, options = {})
      request = build_request(:create_notification_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a notification rule for a resource.</p>
    # @param [Hash, Types::DeleteNotificationRuleRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationRuleArn", # required
    #   }
    #   options = {}
    #   response = client.delete_notification_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NotificationRuleArn"
    #   }
    # @return [Types::DeleteNotificationRuleResult]
    def delete_notification_rule(params = {}, options = {})
      request = build_request(:delete_notification_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a specified target for notifications.</p>
    # @param [Hash, Types::DeleteTargetRequest] params
    # @option params [String] :target_address
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Developer in chat applications topic or Amazon Q Developer in chat applications client to delete.</p>
    # @option params [Boolean] :force_unsubscribe_all
    #   <p>A Boolean value that can be used to delete all associations with this Amazon Q Developer in chat applications topic. The
    #               default value is FALSE. If set to TRUE, all associations between that target and every
    #               notification rule in your Amazon Web Services account are deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_address: "TargetAddress", # required
    #     force_unsubscribe_all: false
    #   }
    #   options = {}
    #   response = client.delete_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTargetResult]
    def delete_target(params = {}, options = {})
      request = build_request(:delete_target, params)
      request.send_request(options)
    end

    # <p>Returns information about a specified notification rule.</p>
    # @param [Hash, Types::DescribeNotificationRuleRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationRuleArn", # required
    #   }
    #   options = {}
    #   response = client.describe_notification_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NotificationRuleArn", # required
    #     name: "NotificationRuleName",
    #     event_types: [
    #       {
    #         event_type_id: "EventTypeId",
    #         service_name: "ServiceName",
    #         event_type_name: "EventTypeName",
    #         resource_type: "ResourceType"
    #       }
    #     ],
    #     resource: "NotificationRuleResource",
    #     targets: [
    #       {
    #         target_address: "TargetAddress",
    #         target_type: "TargetType",
    #         target_status: "PENDING" # One of: ["PENDING", "ACTIVE", "UNREACHABLE", "INACTIVE", "DEACTIVATED"]
    #       }
    #     ],
    #     detail_type: "BASIC" # One of: ["BASIC", "FULL"],
    #     created_by: "NotificationRuleCreatedBy",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     created_timestamp: Time.now,
    #     last_modified_timestamp: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeNotificationRuleResult]
    def describe_notification_rule(params = {}, options = {})
      request = build_request(:describe_notification_rule, params)
      request.send_request(options)
    end

    # <p>Returns information about the event types available for configuring notifications.</p>
    # @param [Hash, Types::ListEventTypesRequest] params
    # @option params [Array<Types::ListEventTypesFilter>] :filters
    #   <p>The filters to use to return information by service or resource type.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>A non-negative integer used to limit the number of returned results. The default number is 50. The maximum number of
    #         results that can be returned is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "RESOURCE_TYPE" # One of: ["RESOURCE_TYPE", "SERVICE_NAME"], # required
    #         value: "ListEventTypesFilterValue", # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_types: [
    #       {
    #         event_type_id: "EventTypeId",
    #         service_name: "ServiceName",
    #         event_type_name: "EventTypeName",
    #         resource_type: "ResourceType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventTypesResult]
    def list_event_types(params = {}, options = {})
      request = build_request(:list_event_types, params)
      request.send_request(options)
    end

    # <p>Returns a list of the notification rules for an Amazon Web Services account.</p>
    # @param [Hash, Types::ListNotificationRulesRequest] params
    # @option params [Array<Types::ListNotificationRulesFilter>] :filters
    #   <p>The filters to use to return information by service or resource type. For valid values,
    #               see <a>ListNotificationRulesFilter</a>.</p>
    #            <note>
    #               <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>
    #            </note>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>A non-negative integer used to limit the number of returned results. The maximum number of
    #         results that can be returned is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "EVENT_TYPE_ID" # One of: ["EVENT_TYPE_ID", "CREATED_BY", "RESOURCE", "TARGET_ADDRESS"], # required
    #         value: "ListNotificationRulesFilterValue", # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_notification_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     notification_rules: [
    #       {
    #         id: "NotificationRuleId",
    #         arn: "NotificationRuleArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListNotificationRulesResult]
    def list_notification_rules(params = {}, options = {})
      request = build_request(:list_notification_rules, params)
      request.send_request(options)
    end

    # <p>Returns a list of the tags associated with a notification rule.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for the notification rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationRuleArn", # required
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
    # @return [Types::ListTagsForResourceResult]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of the notification rule targets for an Amazon Web Services account.</p>
    # @param [Hash, Types::ListTargetsRequest] params
    # @option params [Array<Types::ListTargetsFilter>] :filters
    #   <p>The filters to use to return information by service or resource type. Valid filters
    #               include target type, target address, and target status.</p>
    #            <note>
    #               <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>
    #            </note>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>A non-negative integer used to limit the number of returned results. The maximum number of
    #         results that can be returned is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "TARGET_TYPE" # One of: ["TARGET_TYPE", "TARGET_ADDRESS", "TARGET_STATUS"], # required
    #         value: "ListTargetsFilterValue", # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     targets: [
    #       {
    #         target_address: "TargetAddress",
    #         target_type: "TargetType",
    #         target_status: "PENDING" # One of: ["PENDING", "ACTIVE", "UNREACHABLE", "INACTIVE", "DEACTIVATED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTargetsResult]
    def list_targets(params = {}, options = {})
      request = build_request(:list_targets, params)
      request.send_request(options)
    end

    # <p>Creates an association between a notification rule and an Amazon Q Developer in chat applications topic or Amazon Q Developer in chat applications client so that the
    #             associated target can receive notifications when the events described in the rule are
    #             triggered.</p>
    # @param [Hash, Types::SubscribeRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule for which you want to create the association.</p>
    # @option params [Types::Target] :target
    #   <p>Information about the Amazon Q Developer in chat applications topics or Amazon Q Developer in chat applications clients associated with a  notification rule.</p>
    # @option params [String] :client_request_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationRuleArn", # required
    #     target: { # required
    #       target_type: "TargetType",
    #       target_address: "TargetAddress"
    #     },
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.subscribe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NotificationRuleArn"
    #   }
    # @return [Types::SubscribeResult]
    def subscribe(params = {}, options = {})
      request = build_request(:subscribe, params)
      request.send_request(options)
    end

    # <p>Associates a set of provided tags with a notification rule.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tags to associate with the resource. Tag key names cannot start with "<code>aws</code>".</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationRuleArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::TagResourceResult]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes an association between a notification rule and an Amazon Q Developer in chat applications topic so that
    #             subscribers to that topic stop receiving notifications when the events described in the
    #             rule are triggered.</p>
    # @param [Hash, Types::UnsubscribeRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    # @option params [String] :target_address
    #   <p>The ARN of the Amazon Q Developer in chat applications topic to unsubscribe from the notification rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationRuleArn", # required
    #     target_address: "TargetAddress", # required
    #   }
    #   options = {}
    #   response = client.unsubscribe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NotificationRuleArn", # required
    #   }
    # @return [Types::UnsubscribeResult]
    def unsubscribe(params = {}, options = {})
      request = build_request(:unsubscribe, params)
      request.send_request(options)
    end

    # <p>Removes the association between one or more provided tags and a notification
    #             rule.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule from which to remove the
    #         tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key names of the tags to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationRuleArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResult]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a notification rule for a resource. You can change the events that trigger the
    #             notification rule, the status of the rule, and the targets that receive the
    #             notifications.</p>
    #          <note>
    #             <p>To add or remove tags for a notification rule, you must use <a>TagResource</a> and <a>UntagResource</a>.</p>
    #          </note>
    # @param [Hash, Types::UpdateNotificationRuleRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    # @option params [String] :name
    #   <p>The name of the notification rule.</p>
    # @option params [String] :status
    #   <p>The status of the notification rule. Valid statuses include enabled (sending notifications) or
    #         disabled (not sending notifications).</p>
    # @option params [Array<String>] :event_type_ids
    #   <p>A list of event types associated with this notification rule. For a complete list of event types and IDs, see 
    #             <a href="https://docs.aws.amazon.com/codestar-notifications/latest/userguide/concepts.html#concepts-api">Notification concepts</a>
    #          in the <i>Developer Tools Console User Guide</i>.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The address and type of the targets to receive notifications from this notification
    #         rule.</p>
    # @option params [String] :detail_type
    #   <p>The level of detail to include in the notifications for this resource. BASIC will include only the 
    #               contents of the event as it would appear in Amazon CloudWatch. FULL will include any supplemental information
    #               provided by CodeStar Notifications and/or the service for the resource for which the notification is created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NotificationRuleArn", # required
    #     name: "NotificationRuleName",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     event_type_ids: ["EventTypeId"],
    #     targets: [
    #       {
    #         target_type: "TargetType",
    #         target_address: "TargetAddress"
    #       }
    #     ],
    #     detail_type: "BASIC" # One of: ["BASIC", "FULL"]
    #   }
    #   options = {}
    #   response = client.update_notification_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNotificationRuleResult]
    def update_notification_rule(params = {}, options = {})
      request = build_request(:update_notification_rule, params)
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
      context[:gem_name] = 'aws-sdk-codestarnotifications'
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
