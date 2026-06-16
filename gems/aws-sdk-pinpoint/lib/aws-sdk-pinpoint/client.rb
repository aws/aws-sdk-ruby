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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:pinpoint)

module Aws::Pinpoint
  # An API client for Aws::Pinpoint.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Pinpoint
    @identifier = :pinpoint

    add_plugin(::Aws::Pinpoint::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Pinpoint::EndpointProvider)
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

    # <p>Creates an application.</p>
    # @param [Hash, Types::CreateAppRequest] params
    # @option params [Types::CreateApplicationRequest] :create_application_request
    #   <p>Specifies the display name of an application and the tags to associate with the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     create_application_request: { # required
    #       name: "__string", # required
    #       tags: {
    #         "__string" => "__string"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_response: { # required
    #       arn: "__string", # required
    #       id: "__string", # required
    #       name: "__string", # required
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       creation_date: "__string"
    #     }
    #   }
    # @return [Types::CreateAppResponse]
    def create_app(params = {}, options = {})
      request = build_request(:create_app, params)
      request.send_request(options)
    end

    # <p>Creates a new campaign for an application or updates the settings of an existing campaign for an application.</p>
    # @param [Hash, Types::CreateCampaignRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::WriteCampaignRequest] :write_campaign_request
    #   <p>Specifies the configuration and other settings for a campaign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     write_campaign_request: { # required
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             apns_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             custom_message: {
    #               data: "__string"
    #             },
    #             default_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               headers: [
    #                 {
    #                   name: "__string",
    #                   value: "__string"
    #                 }
    #               ],
    #               html_body: "__string",
    #               title: "__string"
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             in_app_message: {
    #               body: "__string",
    #               content: [
    #                 {
    #                   background_color: "__string",
    #                   body_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     body: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   header_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     header: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   image_url: "__string",
    #                   primary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   },
    #                   secondary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   }
    #                 }
    #               ],
    #               custom_config: {
    #                 "__string" => "__string"
    #               },
    #               layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string"
    #           },
    #           size_percent: 1, # required
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             in_app_template: {
    #               name: "__string",
    #               version: "__string"
    #             }
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string"
    #         }
    #       ],
    #       custom_delivery_configuration: {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #       },
    #       description: "__string",
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       is_paused: false,
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         apns_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         custom_message: {
    #           data: "__string"
    #         },
    #         default_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           headers: [
    #             {
    #               name: "__string",
    #               value: "__string"
    #             }
    #           ],
    #           html_body: "__string",
    #           title: "__string"
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           entity_id: "__string",
    #           template_id: "__string"
    #         },
    #         in_app_message: {
    #           body: "__string",
    #           content: [
    #             {
    #               background_color: "__string",
    #               body_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 body: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               header_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 header: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               image_url: "__string",
    #               primary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               },
    #               secondary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               }
    #             }
    #           ],
    #           custom_config: {
    #             "__string" => "__string"
    #           },
    #           layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #         }
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               }
    #             }
    #           },
    #           filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #         },
    #         frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string"
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string"
    #       },
    #       segment_id: "__string",
    #       segment_version: 1,
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         in_app_template: {
    #           name: "__string",
    #           version: "__string"
    #         }
    #       },
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #       priority: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign_response: { # required
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #           },
    #           id: "__string", # required
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             apns_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             custom_message: {
    #               data: "__string"
    #             },
    #             default_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               headers: [
    #                 {
    #                   name: "__string",
    #                   value: "__string"
    #                 }
    #               ],
    #               html_body: "__string",
    #               title: "__string"
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             in_app_message: {
    #               body: "__string",
    #               content: [
    #                 {
    #                   background_color: "__string",
    #                   body_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     body: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   header_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     header: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   image_url: "__string",
    #                   primary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   },
    #                   secondary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   }
    #                 }
    #               ],
    #               custom_config: {
    #                 "__string" => "__string"
    #               },
    #               layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string"
    #           },
    #           size_percent: 1, # required
    #           state: {
    #             campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             in_app_template: {
    #               name: "__string",
    #               version: "__string"
    #             }
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string"
    #         }
    #       ],
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       custom_delivery_configuration: {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #       },
    #       default_state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       description: "__string",
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       id: "__string", # required
    #       is_paused: false,
    #       last_modified_date: "__string", # required
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         apns_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         custom_message: {
    #           data: "__string"
    #         },
    #         default_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           headers: [
    #             {
    #               name: "__string",
    #               value: "__string"
    #             }
    #           ],
    #           html_body: "__string",
    #           title: "__string"
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           entity_id: "__string",
    #           template_id: "__string"
    #         },
    #         in_app_message: {
    #           body: "__string",
    #           content: [
    #             {
    #               background_color: "__string",
    #               body_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 body: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               header_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 header: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               image_url: "__string",
    #               primary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               },
    #               secondary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               }
    #             }
    #           ],
    #           custom_config: {
    #             "__string" => "__string"
    #           },
    #           layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #         }
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               }
    #             }
    #           },
    #           filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #         },
    #         frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string"
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string"
    #       },
    #       segment_id: "__string", # required
    #       segment_version: 1, # required
    #       state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         in_app_template: {
    #           name: "__string",
    #           version: "__string"
    #         }
    #       },
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #       version: 1,
    #       priority: 1
    #     }
    #   }
    # @return [Types::CreateCampaignResponse]
    def create_campaign(params = {}, options = {})
      request = build_request(:create_campaign, params)
      request.send_request(options)
    end

    # <p>Creates a message template for messages that are sent through the email channel.</p>
    # @param [Hash, Types::CreateEmailTemplateRequest] params
    # @option params [Types::EmailTemplateRequest] :email_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the email channel.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_template_request: { # required
    #       default_substitutions: "__string",
    #       html_part: "__string",
    #       recommender_id: "__string",
    #       subject: "__string",
    #       headers: [
    #         {
    #           name: "__string",
    #           value: "__string"
    #         }
    #       ],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string",
    #       text_part: "__string"
    #     },
    #     template_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_template_message_body: { # required
    #       arn: "__string",
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::CreateEmailTemplateResponse]
    def create_email_template(params = {}, options = {})
      request = build_request(:create_email_template, params)
      request.send_request(options)
    end

    # <p>Creates an export job for an application.</p>
    # @param [Hash, Types::CreateExportJobRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::ExportJobRequest] :export_job_request
    #   <p>Specifies the settings for a job that exports endpoint definitions to an Amazon Simple Storage Service (Amazon S3) bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     export_job_request: { # required
    #       role_arn: "__string", # required
    #       s3_url_prefix: "__string", # required
    #       segment_id: "__string",
    #       segment_version: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_job_response: { # required
    #       application_id: "__string", # required
    #       completed_pieces: 1,
    #       completion_date: "__string",
    #       creation_date: "__string", # required
    #       definition: { # required
    #         role_arn: "__string", # required
    #         s3_url_prefix: "__string", # required
    #         segment_id: "__string",
    #         segment_version: 1
    #       },
    #       failed_pieces: 1,
    #       failures: ["__string"],
    #       id: "__string", # required
    #       job_status: "CREATED" # One of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"], # required
    #       total_failures: 1,
    #       total_pieces: 1,
    #       total_processed: 1,
    #       type: "__string", # required
    #     }
    #   }
    # @return [Types::CreateExportJobResponse]
    def create_export_job(params = {}, options = {})
      request = build_request(:create_export_job, params)
      request.send_request(options)
    end

    # <p>Creates an import job for an application.</p>
    # @param [Hash, Types::CreateImportJobRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::ImportJobRequest] :import_job_request
    #   <p>Specifies the settings for a job that imports endpoint definitions from an Amazon Simple Storage Service (Amazon S3) bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     import_job_request: { # required
    #       define_segment: false,
    #       external_id: "__string",
    #       format: "CSV" # One of: ["CSV", "JSON"], # required
    #       register_endpoints: false,
    #       role_arn: "__string", # required
    #       s3_url: "__string", # required
    #       segment_id: "__string",
    #       segment_name: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_job_response: { # required
    #       application_id: "__string", # required
    #       completed_pieces: 1,
    #       completion_date: "__string",
    #       creation_date: "__string", # required
    #       definition: { # required
    #         define_segment: false,
    #         external_id: "__string",
    #         format: "CSV" # One of: ["CSV", "JSON"], # required
    #         register_endpoints: false,
    #         role_arn: "__string", # required
    #         s3_url: "__string", # required
    #         segment_id: "__string",
    #         segment_name: "__string"
    #       },
    #       failed_pieces: 1,
    #       failures: ["__string"],
    #       id: "__string", # required
    #       job_status: "CREATED" # One of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"], # required
    #       total_failures: 1,
    #       total_pieces: 1,
    #       total_processed: 1,
    #       type: "__string", # required
    #     }
    #   }
    # @return [Types::CreateImportJobResponse]
    def create_import_job(params = {}, options = {})
      request = build_request(:create_import_job, params)
      request.send_request(options)
    end

    # <p>Creates a new message template for messages using the in-app message channel.</p>
    # @param [Hash, Types::CreateInAppTemplateRequest] params
    # @option params [Types::InAppTemplateRequest] :in_app_template_request
    #   <p>InApp Template Request.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     in_app_template_request: { # required
    #       content: [
    #         {
    #           background_color: "__string",
    #           body_config: {
    #             alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #             body: "__string", # required
    #             text_color: "__string", # required
    #           },
    #           header_config: {
    #             alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #             header: "__string", # required
    #             text_color: "__string", # required
    #           },
    #           image_url: "__string",
    #           primary_btn: {
    #             android: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             default_config: {
    #               background_color: "__string",
    #               border_radius: 1,
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string",
    #               text: "__string", # required
    #               text_color: "__string"
    #             },
    #             ios: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             web: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             }
    #           },
    #           secondary_btn: {
    #             android: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             default_config: {
    #               background_color: "__string",
    #               border_radius: 1,
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string",
    #               text: "__string", # required
    #               text_color: "__string"
    #             },
    #             ios: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             web: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             }
    #           }
    #         }
    #       ],
    #       custom_config: {
    #         "__string" => "__string"
    #       },
    #       layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string"
    #     },
    #     template_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_in_app_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_create_message_body: { # required
    #       arn: "__string",
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::CreateInAppTemplateResponse]
    def create_in_app_template(params = {}, options = {})
      request = build_request(:create_in_app_template, params)
      request.send_request(options)
    end

    # <p>Creates a journey for an application.</p>
    # @param [Hash, Types::CreateJourneyRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::WriteJourneyRequest] :write_journey_request
    #   <p>Specifies the configuration and other settings for a journey.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     write_journey_request: { # required
    #       activities: {
    #         "__string" => {
    #           custom: {
    #             delivery_uri: "__string",
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]],
    #             message_config: {
    #               data: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               operator: "ALL" # One of: ["ALL", "ANY"]
    #             },
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             },
    #             false_activity: "__string",
    #             true_activity: "__string"
    #           },
    #           description: "__string",
    #           email: {
    #             message_config: {
    #               from_address: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           holdout: {
    #             next_activity: "__string",
    #             percentage: 1, # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 condition: {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 },
    #                 next_activity: "__string"
    #               }
    #             ],
    #             default_activity: "__string",
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: "__string",
    #                 percentage: 1
    #               }
    #             ]
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           wait: {
    #             next_activity: "__string",
    #             wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           contact_center: {
    #             next_activity: "__string"
    #           }
    #         }
    #       },
    #       creation_date: "__string",
    #       last_modified_date: "__string",
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #         endpoint_reentry_interval: "__string",
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       },
    #       local_time: false,
    #       name: "__string", # required
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       refresh_frequency: "__string",
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string"
    #       },
    #       start_activity: "__string",
    #       start_condition: {
    #         description: "__string",
    #         event_start_condition: {
    #           event_filter: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                   values: ["__string"], # required
    #                 }
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 }
    #               }
    #             },
    #             filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #           },
    #           segment_id: "__string"
    #         },
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         }
    #       },
    #       state: "DRAFT" # One of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"],
    #       wait_for_quiet_time: false,
    #       refresh_on_segment_update: false,
    #       journey_channel_settings: {
    #         connect_campaign_arn: "__string",
    #         connect_campaign_execution_role_arn: "__string"
    #       },
    #       sending_schedule: false,
    #       open_hours: {
    #         email: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         sms: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         push: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         voice: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         custom: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         }
    #       },
    #       closed_days: {
    #         email: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         sms: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         push: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         voice: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         custom: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ]
    #       },
    #       timezone_estimation_methods: ["PHONE_NUMBER" # One of: ["PHONE_NUMBER", "POSTAL_CODE"]]
    #     }
    #   }
    #   options = {}
    #   response = client.create_journey(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_response: { # required
    #       activities: {
    #         "__string" => {
    #           custom: {
    #             delivery_uri: "__string",
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]],
    #             message_config: {
    #               data: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               operator: "ALL" # One of: ["ALL", "ANY"]
    #             },
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             },
    #             false_activity: "__string",
    #             true_activity: "__string"
    #           },
    #           description: "__string",
    #           email: {
    #             message_config: {
    #               from_address: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           holdout: {
    #             next_activity: "__string",
    #             percentage: 1, # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 condition: {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 },
    #                 next_activity: "__string"
    #               }
    #             ],
    #             default_activity: "__string",
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: "__string",
    #                 percentage: 1
    #               }
    #             ]
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           wait: {
    #             next_activity: "__string",
    #             wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           contact_center: {
    #             next_activity: "__string"
    #           }
    #         }
    #       },
    #       application_id: "__string", # required
    #       creation_date: "__string",
    #       id: "__string", # required
    #       last_modified_date: "__string",
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #         endpoint_reentry_interval: "__string",
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       },
    #       local_time: false,
    #       name: "__string", # required
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       refresh_frequency: "__string",
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string"
    #       },
    #       start_activity: "__string",
    #       start_condition: {
    #         description: "__string",
    #         event_start_condition: {
    #           event_filter: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                   values: ["__string"], # required
    #                 }
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 }
    #               }
    #             },
    #             filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #           },
    #           segment_id: "__string"
    #         },
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         }
    #       },
    #       state: "DRAFT" # One of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       wait_for_quiet_time: false,
    #       refresh_on_segment_update: false,
    #       journey_channel_settings: {
    #         connect_campaign_arn: "__string",
    #         connect_campaign_execution_role_arn: "__string"
    #       },
    #       sending_schedule: false,
    #       open_hours: {
    #         email: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         sms: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         push: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         voice: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         custom: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         }
    #       },
    #       closed_days: {
    #         email: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         sms: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         push: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         voice: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         custom: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ]
    #       },
    #       timezone_estimation_methods: ["PHONE_NUMBER" # One of: ["PHONE_NUMBER", "POSTAL_CODE"]]
    #     }
    #   }
    # @return [Types::CreateJourneyResponse]
    def create_journey(params = {}, options = {})
      request = build_request(:create_journey, params)
      request.send_request(options)
    end

    # <p>Creates a message template for messages that are sent through a push notification channel.</p>
    # @param [Hash, Types::CreatePushTemplateRequest] params
    # @option params [Types::PushNotificationTemplateRequest] :push_notification_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     push_notification_template_request: { # required
    #       adm: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       apns: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         media_url: "__string",
    #         raw_content: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       baidu: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       default: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       default_substitutions: "__string",
    #       gcm: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string"
    #     },
    #     template_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_push_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_template_message_body: { # required
    #       arn: "__string",
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::CreatePushTemplateResponse]
    def create_push_template(params = {}, options = {})
      request = build_request(:create_push_template, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Pinpoint configuration for a recommender model.</p>
    # @param [Hash, Types::CreateRecommenderConfigurationRequest] params
    # @option params [Types::CreateRecommenderConfigurationShape] :create_recommender_configuration
    #   <p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     create_recommender_configuration: { # required
    #       attributes: {
    #         "__string" => "__string"
    #       },
    #       description: "__string",
    #       name: "__string",
    #       recommendation_provider_id_type: "__string",
    #       recommendation_provider_role_arn: "__string", # required
    #       recommendation_provider_uri: "__string", # required
    #       recommendation_transformer_uri: "__string",
    #       recommendations_display_name: "__string",
    #       recommendations_per_message: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_recommender_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommender_configuration_response: { # required
    #       attributes: {
    #         "__string" => "__string"
    #       },
    #       creation_date: "__string", # required
    #       description: "__string",
    #       id: "__string", # required
    #       last_modified_date: "__string", # required
    #       name: "__string",
    #       recommendation_provider_id_type: "__string",
    #       recommendation_provider_role_arn: "__string", # required
    #       recommendation_provider_uri: "__string", # required
    #       recommendation_transformer_uri: "__string",
    #       recommendations_display_name: "__string",
    #       recommendations_per_message: 1
    #     }
    #   }
    # @return [Types::CreateRecommenderConfigurationResponse]
    def create_recommender_configuration(params = {}, options = {})
      request = build_request(:create_recommender_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.</p>
    # @param [Hash, Types::CreateSegmentRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::WriteSegmentRequest] :write_segment_request
    #   <p>Specifies the configuration, dimension, and other settings for a segment. A WriteSegmentRequest object can include a Dimensions object or a SegmentGroups object, but not both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     write_segment_request: { # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #             recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #           }
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0
    #           }
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           }
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         }
    #       },
    #       name: "__string",
    #       segment_groups: {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                     recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                   }
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0
    #                   }
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 }
    #               }
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
    #                 version: 1
    #               }
    #             ],
    #             source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #             type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #           }
    #         ],
    #         include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #       },
    #       tags: {
    #         "__string" => "__string"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_segment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment_response: { # required
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #             recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #           }
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0
    #           }
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           }
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         }
    #       },
    #       id: "__string", # required
    #       import_definition: {
    #         channel_counts: {
    #           "__string" => 1
    #         },
    #         external_id: "__string", # required
    #         format: "CSV" # One of: ["CSV", "JSON"], # required
    #         role_arn: "__string", # required
    #         s3_url: "__string", # required
    #         size: 1, # required
    #       },
    #       last_modified_date: "__string",
    #       name: "__string",
    #       segment_groups: {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                     recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                   }
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0
    #                   }
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 }
    #               }
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
    #                 version: 1
    #               }
    #             ],
    #             source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #             type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #           }
    #         ],
    #         include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #       },
    #       segment_type: "DIMENSIONAL" # One of: ["DIMENSIONAL", "IMPORT"], # required
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       version: 1
    #     }
    #   }
    # @return [Types::CreateSegmentResponse]
    def create_segment(params = {}, options = {})
      request = build_request(:create_segment, params)
      request.send_request(options)
    end

    # <p>Creates a message template for messages that are sent through the SMS channel.</p>
    # @param [Hash, Types::CreateSmsTemplateRequest] params
    # @option params [Types::SMSTemplateRequest] :sms_template_request
    #   <p>Specifies the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sms_template_request: { # required
    #       body: "__string",
    #       default_substitutions: "__string",
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string"
    #     },
    #     template_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_sms_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_template_message_body: { # required
    #       arn: "__string",
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::CreateSmsTemplateResponse]
    def create_sms_template(params = {}, options = {})
      request = build_request(:create_sms_template, params)
      request.send_request(options)
    end

    # <p>Creates a message template for messages that are sent through the voice channel.</p>
    # @param [Hash, Types::CreateVoiceTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [Types::VoiceTemplateRequest] :voice_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     voice_template_request: { # required
    #       body: "__string",
    #       default_substitutions: "__string",
    #       language_code: "__string",
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string",
    #       voice_id: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_voice_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_template_message_body: { # required
    #       arn: "__string",
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::CreateVoiceTemplateResponse]
    def create_voice_template(params = {}, options = {})
      request = build_request(:create_voice_template, params)
      request.send_request(options)
    end

    # <p>Disables the ADM channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteAdmChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_adm_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adm_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteAdmChannelResponse]
    def delete_adm_channel(params = {}, options = {})
      request = build_request(:delete_adm_channel, params)
      request.send_request(options)
    end

    # <p>Disables the APNs channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteApnsChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_apns_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteApnsChannelResponse]
    def delete_apns_channel(params = {}, options = {})
      request = build_request(:delete_apns_channel, params)
      request.send_request(options)
    end

    # <p>Disables the APNs sandbox channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteApnsSandboxChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_apns_sandbox_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_sandbox_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteApnsSandboxChannelResponse]
    def delete_apns_sandbox_channel(params = {}, options = {})
      request = build_request(:delete_apns_sandbox_channel, params)
      request.send_request(options)
    end

    # <p>Disables the APNs VoIP channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteApnsVoipChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_apns_voip_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_voip_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteApnsVoipChannelResponse]
    def delete_apns_voip_channel(params = {}, options = {})
      request = build_request(:delete_apns_voip_channel, params)
      request.send_request(options)
    end

    # <p>Disables the APNs VoIP sandbox channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteApnsVoipSandboxChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_apns_voip_sandbox_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_voip_sandbox_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteApnsVoipSandboxChannelResponse]
    def delete_apns_voip_sandbox_channel(params = {}, options = {})
      request = build_request(:delete_apns_voip_sandbox_channel, params)
      request.send_request(options)
    end

    # <p>Deletes an application.</p>
    # @param [Hash, Types::DeleteAppRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_response: { # required
    #       arn: "__string", # required
    #       id: "__string", # required
    #       name: "__string", # required
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       creation_date: "__string"
    #     }
    #   }
    # @return [Types::DeleteAppResponse]
    def delete_app(params = {}, options = {})
      request = build_request(:delete_app, params)
      request.send_request(options)
    end

    # <p>Disables the Baidu channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteBaiduChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_baidu_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baidu_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       credential: "__string", # required
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteBaiduChannelResponse]
    def delete_baidu_channel(params = {}, options = {})
      request = build_request(:delete_baidu_channel, params)
      request.send_request(options)
    end

    # <p>Deletes a campaign from an application.</p>
    # @param [Hash, Types::DeleteCampaignRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign_response: { # required
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #           },
    #           id: "__string", # required
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             apns_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             custom_message: {
    #               data: "__string"
    #             },
    #             default_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               headers: [
    #                 {
    #                   name: "__string",
    #                   value: "__string"
    #                 }
    #               ],
    #               html_body: "__string",
    #               title: "__string"
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             in_app_message: {
    #               body: "__string",
    #               content: [
    #                 {
    #                   background_color: "__string",
    #                   body_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     body: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   header_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     header: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   image_url: "__string",
    #                   primary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   },
    #                   secondary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   }
    #                 }
    #               ],
    #               custom_config: {
    #                 "__string" => "__string"
    #               },
    #               layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string"
    #           },
    #           size_percent: 1, # required
    #           state: {
    #             campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             in_app_template: {
    #               name: "__string",
    #               version: "__string"
    #             }
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string"
    #         }
    #       ],
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       custom_delivery_configuration: {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #       },
    #       default_state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       description: "__string",
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       id: "__string", # required
    #       is_paused: false,
    #       last_modified_date: "__string", # required
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         apns_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         custom_message: {
    #           data: "__string"
    #         },
    #         default_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           headers: [
    #             {
    #               name: "__string",
    #               value: "__string"
    #             }
    #           ],
    #           html_body: "__string",
    #           title: "__string"
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           entity_id: "__string",
    #           template_id: "__string"
    #         },
    #         in_app_message: {
    #           body: "__string",
    #           content: [
    #             {
    #               background_color: "__string",
    #               body_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 body: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               header_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 header: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               image_url: "__string",
    #               primary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               },
    #               secondary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               }
    #             }
    #           ],
    #           custom_config: {
    #             "__string" => "__string"
    #           },
    #           layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #         }
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               }
    #             }
    #           },
    #           filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #         },
    #         frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string"
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string"
    #       },
    #       segment_id: "__string", # required
    #       segment_version: 1, # required
    #       state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         in_app_template: {
    #           name: "__string",
    #           version: "__string"
    #         }
    #       },
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #       version: 1,
    #       priority: 1
    #     }
    #   }
    # @return [Types::DeleteCampaignResponse]
    def delete_campaign(params = {}, options = {})
      request = build_request(:delete_campaign, params)
      request.send_request(options)
    end

    # <p>Disables the email channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteEmailChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_email_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     email_channel_response: { # required
    #       application_id: "__string",
    #       configuration_set: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       from_address: "__string",
    #       has_credential: false,
    #       id: "__string",
    #       identity: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       messages_per_second: 1,
    #       platform: "__string", # required
    #       role_arn: "__string",
    #       orchestration_sending_role_arn: "__string",
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteEmailChannelResponse]
    def delete_email_channel(params = {}, options = {})
      request = build_request(:delete_email_channel, params)
      request.send_request(options)
    end

    # <p>Deletes a message template for messages that were sent through the email channel.</p>
    # @param [Hash, Types::DeleteEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.delete_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::DeleteEmailTemplateResponse]
    def delete_email_template(params = {}, options = {})
      request = build_request(:delete_email_template, params)
      request.send_request(options)
    end

    # <p>Deletes an endpoint from an application.</p>
    # @param [Hash, Types::DeleteEndpointRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :endpoint_id
    #   <p>The case insensitive unique identifier for the endpoint. The identifier can't contain <code>$</code>, <code>{</code> or <code>}</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     endpoint_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_response: { # required
    #       address: "__string",
    #       application_id: "__string",
    #       attributes: {
    #         "__string" => ["__string"]
    #       },
    #       channel_type: "PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"],
    #       cohort_id: "__string",
    #       creation_date: "__string",
    #       demographic: {
    #         app_version: "__string",
    #         locale: "__string",
    #         make: "__string",
    #         model: "__string",
    #         model_version: "__string",
    #         platform: "__string",
    #         platform_version: "__string",
    #         timezone: "__string"
    #       },
    #       effective_date: "__string",
    #       endpoint_status: "__string",
    #       id: "__string",
    #       location: {
    #         city: "__string",
    #         country: "__string",
    #         latitude: 1.0,
    #         longitude: 1.0,
    #         postal_code: "__string",
    #         region: "__string"
    #       },
    #       metrics: {
    #         "__string" => 1.0
    #       },
    #       opt_out: "__string",
    #       request_id: "__string",
    #       user: {
    #         user_attributes: {
    #           "__string" => ["__string"]
    #         },
    #         user_id: "__string"
    #       }
    #     }
    #   }
    # @return [Types::DeleteEndpointResponse]
    def delete_endpoint(params = {}, options = {})
      request = build_request(:delete_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes the event stream for an application.</p>
    # @param [Hash, Types::DeleteEventStreamRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_event_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_stream: { # required
    #       application_id: "__string", # required
    #       destination_stream_arn: "__string", # required
    #       external_id: "__string",
    #       last_modified_date: "__string",
    #       last_updated_by: "__string",
    #       role_arn: "__string", # required
    #     }
    #   }
    # @return [Types::DeleteEventStreamResponse]
    def delete_event_stream(params = {}, options = {})
      request = build_request(:delete_event_stream, params)
      request.send_request(options)
    end

    # <p>Disables the GCM channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteGcmChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_gcm_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gcm_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       credential: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_fcm_service_credentials: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteGcmChannelResponse]
    def delete_gcm_channel(params = {}, options = {})
      request = build_request(:delete_gcm_channel, params)
      request.send_request(options)
    end

    # <p>Deletes a message template for messages sent using the in-app message channel.</p>
    # @param [Hash, Types::DeleteInAppTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.delete_in_app_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::DeleteInAppTemplateResponse]
    def delete_in_app_template(params = {}, options = {})
      request = build_request(:delete_in_app_template, params)
      request.send_request(options)
    end

    # <p>Deletes a journey from an application.</p>
    # @param [Hash, Types::DeleteJourneyRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_journey(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_response: { # required
    #       activities: {
    #         "__string" => {
    #           custom: {
    #             delivery_uri: "__string",
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]],
    #             message_config: {
    #               data: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               operator: "ALL" # One of: ["ALL", "ANY"]
    #             },
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             },
    #             false_activity: "__string",
    #             true_activity: "__string"
    #           },
    #           description: "__string",
    #           email: {
    #             message_config: {
    #               from_address: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           holdout: {
    #             next_activity: "__string",
    #             percentage: 1, # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 condition: {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 },
    #                 next_activity: "__string"
    #               }
    #             ],
    #             default_activity: "__string",
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: "__string",
    #                 percentage: 1
    #               }
    #             ]
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           wait: {
    #             next_activity: "__string",
    #             wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           contact_center: {
    #             next_activity: "__string"
    #           }
    #         }
    #       },
    #       application_id: "__string", # required
    #       creation_date: "__string",
    #       id: "__string", # required
    #       last_modified_date: "__string",
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #         endpoint_reentry_interval: "__string",
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       },
    #       local_time: false,
    #       name: "__string", # required
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       refresh_frequency: "__string",
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string"
    #       },
    #       start_activity: "__string",
    #       start_condition: {
    #         description: "__string",
    #         event_start_condition: {
    #           event_filter: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                   values: ["__string"], # required
    #                 }
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 }
    #               }
    #             },
    #             filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #           },
    #           segment_id: "__string"
    #         },
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         }
    #       },
    #       state: "DRAFT" # One of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       wait_for_quiet_time: false,
    #       refresh_on_segment_update: false,
    #       journey_channel_settings: {
    #         connect_campaign_arn: "__string",
    #         connect_campaign_execution_role_arn: "__string"
    #       },
    #       sending_schedule: false,
    #       open_hours: {
    #         email: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         sms: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         push: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         voice: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         custom: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         }
    #       },
    #       closed_days: {
    #         email: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         sms: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         push: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         voice: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         custom: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ]
    #       },
    #       timezone_estimation_methods: ["PHONE_NUMBER" # One of: ["PHONE_NUMBER", "POSTAL_CODE"]]
    #     }
    #   }
    # @return [Types::DeleteJourneyResponse]
    def delete_journey(params = {}, options = {})
      request = build_request(:delete_journey, params)
      request.send_request(options)
    end

    # <p>Deletes a message template for messages that were sent through a push notification channel.</p>
    # @param [Hash, Types::DeletePushTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.delete_push_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::DeletePushTemplateResponse]
    def delete_push_template(params = {}, options = {})
      request = build_request(:delete_push_template, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Pinpoint configuration for a recommender model.</p>
    # @param [Hash, Types::DeleteRecommenderConfigurationRequest] params
    # @option params [String] :recommender_id
    #   <p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommender_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_recommender_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommender_configuration_response: { # required
    #       attributes: {
    #         "__string" => "__string"
    #       },
    #       creation_date: "__string", # required
    #       description: "__string",
    #       id: "__string", # required
    #       last_modified_date: "__string", # required
    #       name: "__string",
    #       recommendation_provider_id_type: "__string",
    #       recommendation_provider_role_arn: "__string", # required
    #       recommendation_provider_uri: "__string", # required
    #       recommendation_transformer_uri: "__string",
    #       recommendations_display_name: "__string",
    #       recommendations_per_message: 1
    #     }
    #   }
    # @return [Types::DeleteRecommenderConfigurationResponse]
    def delete_recommender_configuration(params = {}, options = {})
      request = build_request(:delete_recommender_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a segment from an application.</p>
    # @param [Hash, Types::DeleteSegmentRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_segment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment_response: { # required
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #             recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #           }
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0
    #           }
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           }
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         }
    #       },
    #       id: "__string", # required
    #       import_definition: {
    #         channel_counts: {
    #           "__string" => 1
    #         },
    #         external_id: "__string", # required
    #         format: "CSV" # One of: ["CSV", "JSON"], # required
    #         role_arn: "__string", # required
    #         s3_url: "__string", # required
    #         size: 1, # required
    #       },
    #       last_modified_date: "__string",
    #       name: "__string",
    #       segment_groups: {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                     recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                   }
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0
    #                   }
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 }
    #               }
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
    #                 version: 1
    #               }
    #             ],
    #             source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #             type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #           }
    #         ],
    #         include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #       },
    #       segment_type: "DIMENSIONAL" # One of: ["DIMENSIONAL", "IMPORT"], # required
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteSegmentResponse]
    def delete_segment(params = {}, options = {})
      request = build_request(:delete_segment, params)
      request.send_request(options)
    end

    # <p>Disables the SMS channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteSmsChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_sms_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sms_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       promotional_messages_per_second: 1,
    #       sender_id: "__string",
    #       short_code: "__string",
    #       transactional_messages_per_second: 1,
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteSmsChannelResponse]
    def delete_sms_channel(params = {}, options = {})
      request = build_request(:delete_sms_channel, params)
      request.send_request(options)
    end

    # <p>Deletes a message template for messages that were sent through the SMS channel.</p>
    # @param [Hash, Types::DeleteSmsTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.delete_sms_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::DeleteSmsTemplateResponse]
    def delete_sms_template(params = {}, options = {})
      request = build_request(:delete_sms_template, params)
      request.send_request(options)
    end

    # <p>Deletes all the endpoints that are associated with a specific user ID.</p>
    # @param [Hash, Types::DeleteUserEndpointsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier for the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     user_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_user_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoints_response: { # required
    #       item: [ # required
    #         {
    #           address: "__string",
    #           application_id: "__string",
    #           attributes: {
    #             "__string" => ["__string"]
    #           },
    #           channel_type: "PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"],
    #           cohort_id: "__string",
    #           creation_date: "__string",
    #           demographic: {
    #             app_version: "__string",
    #             locale: "__string",
    #             make: "__string",
    #             model: "__string",
    #             model_version: "__string",
    #             platform: "__string",
    #             platform_version: "__string",
    #             timezone: "__string"
    #           },
    #           effective_date: "__string",
    #           endpoint_status: "__string",
    #           id: "__string",
    #           location: {
    #             city: "__string",
    #             country: "__string",
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             postal_code: "__string",
    #             region: "__string"
    #           },
    #           metrics: {
    #             "__string" => 1.0
    #           },
    #           opt_out: "__string",
    #           request_id: "__string",
    #           user: {
    #             user_attributes: {
    #               "__string" => ["__string"]
    #             },
    #             user_id: "__string"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteUserEndpointsResponse]
    def delete_user_endpoints(params = {}, options = {})
      request = build_request(:delete_user_endpoints, params)
      request.send_request(options)
    end

    # <p>Disables the voice channel for an application and deletes any existing settings for the channel.</p>
    # @param [Hash, Types::DeleteVoiceChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::DeleteVoiceChannelResponse]
    def delete_voice_channel(params = {}, options = {})
      request = build_request(:delete_voice_channel, params)
      request.send_request(options)
    end

    # <p>Deletes a message template for messages that were sent through the voice channel.</p>
    # @param [Hash, Types::DeleteVoiceTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.delete_voice_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::DeleteVoiceTemplateResponse]
    def delete_voice_template(params = {}, options = {})
      request = build_request(:delete_voice_template, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the ADM channel for an application.</p>
    # @param [Hash, Types::GetAdmChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_adm_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adm_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::GetAdmChannelResponse]
    def get_adm_channel(params = {}, options = {})
      request = build_request(:get_adm_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the APNs channel for an application.</p>
    # @param [Hash, Types::GetApnsChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_apns_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::GetApnsChannelResponse]
    def get_apns_channel(params = {}, options = {})
      request = build_request(:get_apns_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the APNs sandbox channel for an application.</p>
    # @param [Hash, Types::GetApnsSandboxChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_apns_sandbox_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_sandbox_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::GetApnsSandboxChannelResponse]
    def get_apns_sandbox_channel(params = {}, options = {})
      request = build_request(:get_apns_sandbox_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the APNs VoIP channel for an application.</p>
    # @param [Hash, Types::GetApnsVoipChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_apns_voip_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_voip_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::GetApnsVoipChannelResponse]
    def get_apns_voip_channel(params = {}, options = {})
      request = build_request(:get_apns_voip_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the APNs VoIP sandbox channel for an application.</p>
    # @param [Hash, Types::GetApnsVoipSandboxChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_apns_voip_sandbox_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_voip_sandbox_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::GetApnsVoipSandboxChannelResponse]
    def get_apns_voip_sandbox_channel(params = {}, options = {})
      request = build_request(:get_apns_voip_sandbox_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an application.</p>
    # @param [Hash, Types::GetAppRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_response: { # required
    #       arn: "__string", # required
    #       id: "__string", # required
    #       name: "__string", # required
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       creation_date: "__string"
    #     }
    #   }
    # @return [Types::GetAppResponse]
    def get_app(params = {}, options = {})
      request = build_request(:get_app, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard metric that applies to an application.</p>
    # @param [Hash, Types::GetApplicationDateRangeKpiRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Time] :end_time
    #   <p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>
    # @option params [String] :kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [Time] :start_time
    #   <p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     end_time: Time.now,
    #     kpi_name: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #     start_time: Time.now
    #   }
    #   options = {}
    #   response = client.get_application_date_range_kpi(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_date_range_kpi_response: { # required
    #       application_id: "__string", # required
    #       end_time: Time.now, # required
    #       kpi_name: "__string", # required
    #       kpi_result: { # required
    #         rows: [ # required
    #           {
    #             grouped_bys: [ # required
    #               {
    #                 key: "__string", # required
    #                 type: "__string", # required
    #                 value: "__string", # required
    #               }
    #             ],
    #             values: [ # required
    #               {
    #                 key: "__string", # required
    #                 type: "__string", # required
    #                 value: "__string", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       next_token: "__string",
    #       start_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetApplicationDateRangeKpiResponse]
    def get_application_date_range_kpi(params = {}, options = {})
      request = build_request(:get_application_date_range_kpi, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the settings for an application.</p>
    # @param [Hash, Types::GetApplicationSettingsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_application_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_settings_resource: { # required
    #       application_id: "__string", # required
    #       campaign_hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       last_modified_date: "__string",
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       journey_limits: {
    #         daily_cap: 1,
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       }
    #     }
    #   }
    # @return [Types::GetApplicationSettingsResponse]
    def get_application_settings(params = {}, options = {})
      request = build_request(:get_application_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves information about all the applications that are associated with your Amazon Pinpoint account.</p>
    # @param [Hash, Types::GetAppsRequest] params
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_apps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications_response: { # required
    #       item: [
    #         {
    #           arn: "__string", # required
    #           id: "__string", # required
    #           name: "__string", # required
    #           tags: {
    #             "__string" => "__string"
    #           },
    #           creation_date: "__string"
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetAppsResponse]
    def get_apps(params = {}, options = {})
      request = build_request(:get_apps, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the Baidu channel for an application.</p>
    # @param [Hash, Types::GetBaiduChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_baidu_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baidu_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       credential: "__string", # required
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::GetBaiduChannelResponse]
    def get_baidu_channel(params = {}, options = {})
      request = build_request(:get_baidu_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status, configuration, and other settings for a campaign.</p>
    # @param [Hash, Types::GetCampaignRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign_response: { # required
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #           },
    #           id: "__string", # required
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             apns_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             custom_message: {
    #               data: "__string"
    #             },
    #             default_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               headers: [
    #                 {
    #                   name: "__string",
    #                   value: "__string"
    #                 }
    #               ],
    #               html_body: "__string",
    #               title: "__string"
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             in_app_message: {
    #               body: "__string",
    #               content: [
    #                 {
    #                   background_color: "__string",
    #                   body_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     body: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   header_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     header: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   image_url: "__string",
    #                   primary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   },
    #                   secondary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   }
    #                 }
    #               ],
    #               custom_config: {
    #                 "__string" => "__string"
    #               },
    #               layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string"
    #           },
    #           size_percent: 1, # required
    #           state: {
    #             campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             in_app_template: {
    #               name: "__string",
    #               version: "__string"
    #             }
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string"
    #         }
    #       ],
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       custom_delivery_configuration: {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #       },
    #       default_state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       description: "__string",
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       id: "__string", # required
    #       is_paused: false,
    #       last_modified_date: "__string", # required
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         apns_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         custom_message: {
    #           data: "__string"
    #         },
    #         default_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           headers: [
    #             {
    #               name: "__string",
    #               value: "__string"
    #             }
    #           ],
    #           html_body: "__string",
    #           title: "__string"
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           entity_id: "__string",
    #           template_id: "__string"
    #         },
    #         in_app_message: {
    #           body: "__string",
    #           content: [
    #             {
    #               background_color: "__string",
    #               body_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 body: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               header_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 header: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               image_url: "__string",
    #               primary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               },
    #               secondary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               }
    #             }
    #           ],
    #           custom_config: {
    #             "__string" => "__string"
    #           },
    #           layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #         }
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               }
    #             }
    #           },
    #           filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #         },
    #         frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string"
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string"
    #       },
    #       segment_id: "__string", # required
    #       segment_version: 1, # required
    #       state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         in_app_template: {
    #           name: "__string",
    #           version: "__string"
    #         }
    #       },
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #       version: 1,
    #       priority: 1
    #     }
    #   }
    # @return [Types::GetCampaignResponse]
    def get_campaign(params = {}, options = {})
      request = build_request(:get_campaign, params)
      request.send_request(options)
    end

    # <p>Retrieves information about all the activities for a campaign.</p>
    # @param [Hash, Types::GetCampaignActivitiesRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_campaign_activities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activities_response: { # required
    #       item: [ # required
    #         {
    #           application_id: "__string", # required
    #           campaign_id: "__string", # required
    #           end: "__string",
    #           id: "__string", # required
    #           result: "__string",
    #           scheduled_start: "__string",
    #           start: "__string",
    #           state: "__string",
    #           successful_endpoint_count: 1,
    #           timezones_completed_count: 1,
    #           timezones_total_count: 1,
    #           total_endpoint_count: 1,
    #           treatment_id: "__string",
    #           execution_metrics: {
    #             "__string" => "__string"
    #           }
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetCampaignActivitiesResponse]
    def get_campaign_activities(params = {}, options = {})
      request = build_request(:get_campaign_activities, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard metric that applies to a campaign.</p>
    # @param [Hash, Types::GetCampaignDateRangeKpiRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    # @option params [Time] :end_time
    #   <p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>
    # @option params [String] :kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [Time] :start_time
    #   <p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     end_time: Time.now,
    #     kpi_name: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #     start_time: Time.now
    #   }
    #   options = {}
    #   response = client.get_campaign_date_range_kpi(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign_date_range_kpi_response: { # required
    #       application_id: "__string", # required
    #       campaign_id: "__string", # required
    #       end_time: Time.now, # required
    #       kpi_name: "__string", # required
    #       kpi_result: { # required
    #         rows: [ # required
    #           {
    #             grouped_bys: [ # required
    #               {
    #                 key: "__string", # required
    #                 type: "__string", # required
    #                 value: "__string", # required
    #               }
    #             ],
    #             values: [ # required
    #               {
    #                 key: "__string", # required
    #                 type: "__string", # required
    #                 value: "__string", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       next_token: "__string",
    #       start_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetCampaignDateRangeKpiResponse]
    def get_campaign_date_range_kpi(params = {}, options = {})
      request = build_request(:get_campaign_date_range_kpi, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status, configuration, and other settings for a specific version of a campaign.</p>
    # @param [Hash, Types::GetCampaignVersionRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    # @option params [String] :version
    #   <p>The unique version number (Version property) for the campaign version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     version: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_campaign_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign_response: { # required
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #           },
    #           id: "__string", # required
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             apns_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             custom_message: {
    #               data: "__string"
    #             },
    #             default_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               headers: [
    #                 {
    #                   name: "__string",
    #                   value: "__string"
    #                 }
    #               ],
    #               html_body: "__string",
    #               title: "__string"
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             in_app_message: {
    #               body: "__string",
    #               content: [
    #                 {
    #                   background_color: "__string",
    #                   body_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     body: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   header_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     header: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   image_url: "__string",
    #                   primary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   },
    #                   secondary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   }
    #                 }
    #               ],
    #               custom_config: {
    #                 "__string" => "__string"
    #               },
    #               layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string"
    #           },
    #           size_percent: 1, # required
    #           state: {
    #             campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             in_app_template: {
    #               name: "__string",
    #               version: "__string"
    #             }
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string"
    #         }
    #       ],
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       custom_delivery_configuration: {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #       },
    #       default_state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       description: "__string",
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       id: "__string", # required
    #       is_paused: false,
    #       last_modified_date: "__string", # required
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         apns_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         custom_message: {
    #           data: "__string"
    #         },
    #         default_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           headers: [
    #             {
    #               name: "__string",
    #               value: "__string"
    #             }
    #           ],
    #           html_body: "__string",
    #           title: "__string"
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           entity_id: "__string",
    #           template_id: "__string"
    #         },
    #         in_app_message: {
    #           body: "__string",
    #           content: [
    #             {
    #               background_color: "__string",
    #               body_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 body: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               header_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 header: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               image_url: "__string",
    #               primary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               },
    #               secondary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               }
    #             }
    #           ],
    #           custom_config: {
    #             "__string" => "__string"
    #           },
    #           layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #         }
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               }
    #             }
    #           },
    #           filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #         },
    #         frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string"
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string"
    #       },
    #       segment_id: "__string", # required
    #       segment_version: 1, # required
    #       state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         in_app_template: {
    #           name: "__string",
    #           version: "__string"
    #         }
    #       },
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #       version: 1,
    #       priority: 1
    #     }
    #   }
    # @return [Types::GetCampaignVersionResponse]
    def get_campaign_version(params = {}, options = {})
      request = build_request(:get_campaign_version, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status, configuration, and other settings for all versions of a campaign.</p>
    # @param [Hash, Types::GetCampaignVersionsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_campaign_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaigns_response: { # required
    #       item: [ # required
    #         {
    #           additional_treatments: [
    #             {
    #               custom_delivery_configuration: {
    #                 delivery_uri: "__string", # required
    #                 endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #               },
    #               id: "__string", # required
    #               message_configuration: {
    #                 adm_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 apns_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 baidu_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 custom_message: {
    #                   data: "__string"
    #                 },
    #                 default_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 email_message: {
    #                   body: "__string",
    #                   from_address: "__string",
    #                   headers: [
    #                     {
    #                       name: "__string",
    #                       value: "__string"
    #                     }
    #                   ],
    #                   html_body: "__string",
    #                   title: "__string"
    #                 },
    #                 gcm_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 sms_message: {
    #                   body: "__string",
    #                   message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #                   origination_number: "__string",
    #                   sender_id: "__string",
    #                   entity_id: "__string",
    #                   template_id: "__string"
    #                 },
    #                 in_app_message: {
    #                   body: "__string",
    #                   content: [
    #                     {
    #                       background_color: "__string",
    #                       body_config: {
    #                         alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                         body: "__string", # required
    #                         text_color: "__string", # required
    #                       },
    #                       header_config: {
    #                         alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                         header: "__string", # required
    #                         text_color: "__string", # required
    #                       },
    #                       image_url: "__string",
    #                       primary_btn: {
    #                         android: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         },
    #                         default_config: {
    #                           background_color: "__string",
    #                           border_radius: 1,
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string",
    #                           text: "__string", # required
    #                           text_color: "__string"
    #                         },
    #                         ios: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         },
    #                         web: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         }
    #                       },
    #                       secondary_btn: {
    #                         android: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         },
    #                         default_config: {
    #                           background_color: "__string",
    #                           border_radius: 1,
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string",
    #                           text: "__string", # required
    #                           text_color: "__string"
    #                         },
    #                         ios: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         },
    #                         web: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   custom_config: {
    #                     "__string" => "__string"
    #                   },
    #                   layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #                 }
    #               },
    #               schedule: {
    #                 end_time: "__string",
    #                 event_filter: {
    #                   dimensions: { # required
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     event_type: {
    #                       dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                       values: ["__string"], # required
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     }
    #                   },
    #                   filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #                 },
    #                 frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #                 is_local_time: false,
    #                 quiet_time: {
    #                   end: "__string",
    #                   start: "__string"
    #                 },
    #                 start_time: "__string", # required
    #                 timezone: "__string"
    #               },
    #               size_percent: 1, # required
    #               state: {
    #                 campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #               },
    #               template_configuration: {
    #                 email_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 },
    #                 push_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 },
    #                 sms_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 },
    #                 voice_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 },
    #                 in_app_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 }
    #               },
    #               treatment_description: "__string",
    #               treatment_name: "__string"
    #             }
    #           ],
    #           application_id: "__string", # required
    #           arn: "__string", # required
    #           creation_date: "__string", # required
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #           },
    #           default_state: {
    #             campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #           },
    #           description: "__string",
    #           holdout_percent: 1,
    #           hook: {
    #             lambda_function_name: "__string",
    #             mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #             web_url: "__string"
    #           },
    #           id: "__string", # required
    #           is_paused: false,
    #           last_modified_date: "__string", # required
    #           limits: {
    #             daily: 1,
    #             maximum_duration: 1,
    #             messages_per_second: 1,
    #             total: 1,
    #             session: 1
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             apns_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             custom_message: {
    #               data: "__string"
    #             },
    #             default_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               headers: [
    #                 {
    #                   name: "__string",
    #                   value: "__string"
    #                 }
    #               ],
    #               html_body: "__string",
    #               title: "__string"
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             in_app_message: {
    #               body: "__string",
    #               content: [
    #                 {
    #                   background_color: "__string",
    #                   body_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     body: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   header_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     header: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   image_url: "__string",
    #                   primary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   },
    #                   secondary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   }
    #                 }
    #               ],
    #               custom_config: {
    #                 "__string" => "__string"
    #               },
    #               layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           name: "__string",
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string"
    #           },
    #           segment_id: "__string", # required
    #           segment_version: 1, # required
    #           state: {
    #             campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #           },
    #           tags: {
    #             "__string" => "__string"
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             in_app_template: {
    #               name: "__string",
    #               version: "__string"
    #             }
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #           version: 1,
    #           priority: 1
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetCampaignVersionsResponse]
    def get_campaign_versions(params = {}, options = {})
      request = build_request(:get_campaign_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status, configuration, and other settings for all the campaigns that are associated with an application.</p>
    # @param [Hash, Types::GetCampaignsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_campaigns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaigns_response: { # required
    #       item: [ # required
    #         {
    #           additional_treatments: [
    #             {
    #               custom_delivery_configuration: {
    #                 delivery_uri: "__string", # required
    #                 endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #               },
    #               id: "__string", # required
    #               message_configuration: {
    #                 adm_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 apns_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 baidu_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 custom_message: {
    #                   data: "__string"
    #                 },
    #                 default_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 email_message: {
    #                   body: "__string",
    #                   from_address: "__string",
    #                   headers: [
    #                     {
    #                       name: "__string",
    #                       value: "__string"
    #                     }
    #                   ],
    #                   html_body: "__string",
    #                   title: "__string"
    #                 },
    #                 gcm_message: {
    #                   action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string"
    #                 },
    #                 sms_message: {
    #                   body: "__string",
    #                   message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #                   origination_number: "__string",
    #                   sender_id: "__string",
    #                   entity_id: "__string",
    #                   template_id: "__string"
    #                 },
    #                 in_app_message: {
    #                   body: "__string",
    #                   content: [
    #                     {
    #                       background_color: "__string",
    #                       body_config: {
    #                         alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                         body: "__string", # required
    #                         text_color: "__string", # required
    #                       },
    #                       header_config: {
    #                         alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                         header: "__string", # required
    #                         text_color: "__string", # required
    #                       },
    #                       image_url: "__string",
    #                       primary_btn: {
    #                         android: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         },
    #                         default_config: {
    #                           background_color: "__string",
    #                           border_radius: 1,
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string",
    #                           text: "__string", # required
    #                           text_color: "__string"
    #                         },
    #                         ios: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         },
    #                         web: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         }
    #                       },
    #                       secondary_btn: {
    #                         android: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         },
    #                         default_config: {
    #                           background_color: "__string",
    #                           border_radius: 1,
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string",
    #                           text: "__string", # required
    #                           text_color: "__string"
    #                         },
    #                         ios: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         },
    #                         web: {
    #                           button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                           link: "__string"
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   custom_config: {
    #                     "__string" => "__string"
    #                   },
    #                   layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #                 }
    #               },
    #               schedule: {
    #                 end_time: "__string",
    #                 event_filter: {
    #                   dimensions: { # required
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     event_type: {
    #                       dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                       values: ["__string"], # required
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     }
    #                   },
    #                   filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #                 },
    #                 frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #                 is_local_time: false,
    #                 quiet_time: {
    #                   end: "__string",
    #                   start: "__string"
    #                 },
    #                 start_time: "__string", # required
    #                 timezone: "__string"
    #               },
    #               size_percent: 1, # required
    #               state: {
    #                 campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #               },
    #               template_configuration: {
    #                 email_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 },
    #                 push_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 },
    #                 sms_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 },
    #                 voice_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 },
    #                 in_app_template: {
    #                   name: "__string",
    #                   version: "__string"
    #                 }
    #               },
    #               treatment_description: "__string",
    #               treatment_name: "__string"
    #             }
    #           ],
    #           application_id: "__string", # required
    #           arn: "__string", # required
    #           creation_date: "__string", # required
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #           },
    #           default_state: {
    #             campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #           },
    #           description: "__string",
    #           holdout_percent: 1,
    #           hook: {
    #             lambda_function_name: "__string",
    #             mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #             web_url: "__string"
    #           },
    #           id: "__string", # required
    #           is_paused: false,
    #           last_modified_date: "__string", # required
    #           limits: {
    #             daily: 1,
    #             maximum_duration: 1,
    #             messages_per_second: 1,
    #             total: 1,
    #             session: 1
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             apns_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             custom_message: {
    #               data: "__string"
    #             },
    #             default_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               headers: [
    #                 {
    #                   name: "__string",
    #                   value: "__string"
    #                 }
    #               ],
    #               html_body: "__string",
    #               title: "__string"
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             in_app_message: {
    #               body: "__string",
    #               content: [
    #                 {
    #                   background_color: "__string",
    #                   body_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     body: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   header_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     header: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   image_url: "__string",
    #                   primary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   },
    #                   secondary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   }
    #                 }
    #               ],
    #               custom_config: {
    #                 "__string" => "__string"
    #               },
    #               layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           name: "__string",
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string"
    #           },
    #           segment_id: "__string", # required
    #           segment_version: 1, # required
    #           state: {
    #             campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #           },
    #           tags: {
    #             "__string" => "__string"
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             in_app_template: {
    #               name: "__string",
    #               version: "__string"
    #             }
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #           version: 1,
    #           priority: 1
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetCampaignsResponse]
    def get_campaigns(params = {}, options = {})
      request = build_request(:get_campaigns, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the history and status of each channel for an application.</p>
    # @param [Hash, Types::GetChannelsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels_response: { # required
    #       channels: { # required
    #         "__string" => {
    #           application_id: "__string",
    #           creation_date: "__string",
    #           enabled: false,
    #           has_credential: false,
    #           id: "__string",
    #           is_archived: false,
    #           last_modified_by: "__string",
    #           last_modified_date: "__string",
    #           version: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetChannelsResponse]
    def get_channels(params = {}, options = {})
      request = build_request(:get_channels, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the email channel for an application.</p>
    # @param [Hash, Types::GetEmailChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_email_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     email_channel_response: { # required
    #       application_id: "__string",
    #       configuration_set: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       from_address: "__string",
    #       has_credential: false,
    #       id: "__string",
    #       identity: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       messages_per_second: 1,
    #       platform: "__string", # required
    #       role_arn: "__string",
    #       orchestration_sending_role_arn: "__string",
    #       version: 1
    #     }
    #   }
    # @return [Types::GetEmailChannelResponse]
    def get_email_channel(params = {}, options = {})
      request = build_request(:get_email_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves the content and settings of a message template for messages that are sent through the email channel.</p>
    # @param [Hash, Types::GetEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.get_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     email_template_response: { # required
    #       arn: "__string",
    #       creation_date: "__string", # required
    #       default_substitutions: "__string",
    #       html_part: "__string",
    #       last_modified_date: "__string", # required
    #       recommender_id: "__string",
    #       subject: "__string",
    #       headers: [
    #         {
    #           name: "__string",
    #           value: "__string"
    #         }
    #       ],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string",
    #       template_name: "__string", # required
    #       template_type: "EMAIL" # One of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"], # required
    #       text_part: "__string",
    #       version: "__string"
    #     }
    #   }
    # @return [Types::GetEmailTemplateResponse]
    def get_email_template(params = {}, options = {})
      request = build_request(:get_email_template, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the settings and attributes of a specific endpoint for an application.</p>
    # @param [Hash, Types::GetEndpointRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :endpoint_id
    #   <p>The case insensitive unique identifier for the endpoint. The identifier can't contain <code>$</code>, <code>{</code> or <code>}</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     endpoint_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_response: { # required
    #       address: "__string",
    #       application_id: "__string",
    #       attributes: {
    #         "__string" => ["__string"]
    #       },
    #       channel_type: "PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"],
    #       cohort_id: "__string",
    #       creation_date: "__string",
    #       demographic: {
    #         app_version: "__string",
    #         locale: "__string",
    #         make: "__string",
    #         model: "__string",
    #         model_version: "__string",
    #         platform: "__string",
    #         platform_version: "__string",
    #         timezone: "__string"
    #       },
    #       effective_date: "__string",
    #       endpoint_status: "__string",
    #       id: "__string",
    #       location: {
    #         city: "__string",
    #         country: "__string",
    #         latitude: 1.0,
    #         longitude: 1.0,
    #         postal_code: "__string",
    #         region: "__string"
    #       },
    #       metrics: {
    #         "__string" => 1.0
    #       },
    #       opt_out: "__string",
    #       request_id: "__string",
    #       user: {
    #         user_attributes: {
    #           "__string" => ["__string"]
    #         },
    #         user_id: "__string"
    #       }
    #     }
    #   }
    # @return [Types::GetEndpointResponse]
    def get_endpoint(params = {}, options = {})
      request = build_request(:get_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the event stream settings for an application.</p>
    # @param [Hash, Types::GetEventStreamRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_event_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_stream: { # required
    #       application_id: "__string", # required
    #       destination_stream_arn: "__string", # required
    #       external_id: "__string",
    #       last_modified_date: "__string",
    #       last_updated_by: "__string",
    #       role_arn: "__string", # required
    #     }
    #   }
    # @return [Types::GetEventStreamResponse]
    def get_event_stream(params = {}, options = {})
      request = build_request(:get_event_stream, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of a specific export job for an application.</p>
    # @param [Hash, Types::GetExportJobRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :job_id
    #   <p>The unique identifier for the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     job_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_job_response: { # required
    #       application_id: "__string", # required
    #       completed_pieces: 1,
    #       completion_date: "__string",
    #       creation_date: "__string", # required
    #       definition: { # required
    #         role_arn: "__string", # required
    #         s3_url_prefix: "__string", # required
    #         segment_id: "__string",
    #         segment_version: 1
    #       },
    #       failed_pieces: 1,
    #       failures: ["__string"],
    #       id: "__string", # required
    #       job_status: "CREATED" # One of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"], # required
    #       total_failures: 1,
    #       total_pieces: 1,
    #       total_processed: 1,
    #       type: "__string", # required
    #     }
    #   }
    # @return [Types::GetExportJobResponse]
    def get_export_job(params = {}, options = {})
      request = build_request(:get_export_job, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of all the export jobs for an application.</p>
    # @param [Hash, Types::GetExportJobsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_jobs_response: { # required
    #       item: [ # required
    #         {
    #           application_id: "__string", # required
    #           completed_pieces: 1,
    #           completion_date: "__string",
    #           creation_date: "__string", # required
    #           definition: { # required
    #             role_arn: "__string", # required
    #             s3_url_prefix: "__string", # required
    #             segment_id: "__string",
    #             segment_version: 1
    #           },
    #           failed_pieces: 1,
    #           failures: ["__string"],
    #           id: "__string", # required
    #           job_status: "CREATED" # One of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"], # required
    #           total_failures: 1,
    #           total_pieces: 1,
    #           total_processed: 1,
    #           type: "__string", # required
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetExportJobsResponse]
    def get_export_jobs(params = {}, options = {})
      request = build_request(:get_export_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the GCM channel for an application.</p>
    # @param [Hash, Types::GetGcmChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_gcm_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gcm_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       credential: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_fcm_service_credentials: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::GetGcmChannelResponse]
    def get_gcm_channel(params = {}, options = {})
      request = build_request(:get_gcm_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of a specific import job for an application.</p>
    # @param [Hash, Types::GetImportJobRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :job_id
    #   <p>The unique identifier for the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     job_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_job_response: { # required
    #       application_id: "__string", # required
    #       completed_pieces: 1,
    #       completion_date: "__string",
    #       creation_date: "__string", # required
    #       definition: { # required
    #         define_segment: false,
    #         external_id: "__string",
    #         format: "CSV" # One of: ["CSV", "JSON"], # required
    #         register_endpoints: false,
    #         role_arn: "__string", # required
    #         s3_url: "__string", # required
    #         segment_id: "__string",
    #         segment_name: "__string"
    #       },
    #       failed_pieces: 1,
    #       failures: ["__string"],
    #       id: "__string", # required
    #       job_status: "CREATED" # One of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"], # required
    #       total_failures: 1,
    #       total_pieces: 1,
    #       total_processed: 1,
    #       type: "__string", # required
    #     }
    #   }
    # @return [Types::GetImportJobResponse]
    def get_import_job(params = {}, options = {})
      request = build_request(:get_import_job, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of all the import jobs for an application.</p>
    # @param [Hash, Types::GetImportJobsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_jobs_response: { # required
    #       item: [ # required
    #         {
    #           application_id: "__string", # required
    #           completed_pieces: 1,
    #           completion_date: "__string",
    #           creation_date: "__string", # required
    #           definition: { # required
    #             define_segment: false,
    #             external_id: "__string",
    #             format: "CSV" # One of: ["CSV", "JSON"], # required
    #             register_endpoints: false,
    #             role_arn: "__string", # required
    #             s3_url: "__string", # required
    #             segment_id: "__string",
    #             segment_name: "__string"
    #           },
    #           failed_pieces: 1,
    #           failures: ["__string"],
    #           id: "__string", # required
    #           job_status: "CREATED" # One of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"], # required
    #           total_failures: 1,
    #           total_pieces: 1,
    #           total_processed: 1,
    #           type: "__string", # required
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetImportJobsResponse]
    def get_import_jobs(params = {}, options = {})
      request = build_request(:get_import_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves the in-app messages targeted for the provided endpoint ID.</p>
    # @param [Hash, Types::GetInAppMessagesRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :endpoint_id
    #   <p>The unique identifier for the endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     endpoint_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_in_app_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     in_app_messages_response: { # required
    #       in_app_message_campaigns: [
    #         {
    #           campaign_id: "__string",
    #           daily_cap: 1,
    #           in_app_message: {
    #             content: [
    #               {
    #                 background_color: "__string",
    #                 body_config: {
    #                   alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                   body: "__string", # required
    #                   text_color: "__string", # required
    #                 },
    #                 header_config: {
    #                   alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                   header: "__string", # required
    #                   text_color: "__string", # required
    #                 },
    #                 image_url: "__string",
    #                 primary_btn: {
    #                   android: {
    #                     button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                     link: "__string"
    #                   },
    #                   default_config: {
    #                     background_color: "__string",
    #                     border_radius: 1,
    #                     button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                     link: "__string",
    #                     text: "__string", # required
    #                     text_color: "__string"
    #                   },
    #                   ios: {
    #                     button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                     link: "__string"
    #                   },
    #                   web: {
    #                     button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                     link: "__string"
    #                   }
    #                 },
    #                 secondary_btn: {
    #                   android: {
    #                     button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                     link: "__string"
    #                   },
    #                   default_config: {
    #                     background_color: "__string",
    #                     border_radius: 1,
    #                     button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                     link: "__string",
    #                     text: "__string", # required
    #                     text_color: "__string"
    #                   },
    #                   ios: {
    #                     button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                     link: "__string"
    #                   },
    #                   web: {
    #                     button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                     link: "__string"
    #                   }
    #                 }
    #               }
    #             ],
    #             custom_config: {
    #               "__string" => "__string"
    #             },
    #             layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #           },
    #           priority: 1,
    #           schedule: {
    #             end_date: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             }
    #           },
    #           session_cap: 1,
    #           total_cap: 1,
    #           treatment_id: "__string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetInAppMessagesResponse]
    def get_in_app_messages(params = {}, options = {})
      request = build_request(:get_in_app_messages, params)
      request.send_request(options)
    end

    # <p>Retrieves the content and settings of a message template for messages sent through the in-app channel.</p>
    # @param [Hash, Types::GetInAppTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.get_in_app_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     in_app_template_response: { # required
    #       arn: "__string",
    #       content: [
    #         {
    #           background_color: "__string",
    #           body_config: {
    #             alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #             body: "__string", # required
    #             text_color: "__string", # required
    #           },
    #           header_config: {
    #             alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #             header: "__string", # required
    #             text_color: "__string", # required
    #           },
    #           image_url: "__string",
    #           primary_btn: {
    #             android: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             default_config: {
    #               background_color: "__string",
    #               border_radius: 1,
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string",
    #               text: "__string", # required
    #               text_color: "__string"
    #             },
    #             ios: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             web: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             }
    #           },
    #           secondary_btn: {
    #             android: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             default_config: {
    #               background_color: "__string",
    #               border_radius: 1,
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string",
    #               text: "__string", # required
    #               text_color: "__string"
    #             },
    #             ios: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             web: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             }
    #           }
    #         }
    #       ],
    #       creation_date: "__string", # required
    #       custom_config: {
    #         "__string" => "__string"
    #       },
    #       last_modified_date: "__string", # required
    #       layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string",
    #       template_name: "__string", # required
    #       template_type: "EMAIL" # One of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"], # required
    #       version: "__string"
    #     }
    #   }
    # @return [Types::GetInAppTemplateResponse]
    def get_in_app_template(params = {}, options = {})
      request = build_request(:get_in_app_template, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status, configuration, and other settings for a journey.</p>
    # @param [Hash, Types::GetJourneyRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_journey(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_response: { # required
    #       activities: {
    #         "__string" => {
    #           custom: {
    #             delivery_uri: "__string",
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]],
    #             message_config: {
    #               data: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               operator: "ALL" # One of: ["ALL", "ANY"]
    #             },
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             },
    #             false_activity: "__string",
    #             true_activity: "__string"
    #           },
    #           description: "__string",
    #           email: {
    #             message_config: {
    #               from_address: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           holdout: {
    #             next_activity: "__string",
    #             percentage: 1, # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 condition: {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 },
    #                 next_activity: "__string"
    #               }
    #             ],
    #             default_activity: "__string",
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: "__string",
    #                 percentage: 1
    #               }
    #             ]
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           wait: {
    #             next_activity: "__string",
    #             wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           contact_center: {
    #             next_activity: "__string"
    #           }
    #         }
    #       },
    #       application_id: "__string", # required
    #       creation_date: "__string",
    #       id: "__string", # required
    #       last_modified_date: "__string",
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #         endpoint_reentry_interval: "__string",
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       },
    #       local_time: false,
    #       name: "__string", # required
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       refresh_frequency: "__string",
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string"
    #       },
    #       start_activity: "__string",
    #       start_condition: {
    #         description: "__string",
    #         event_start_condition: {
    #           event_filter: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                   values: ["__string"], # required
    #                 }
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 }
    #               }
    #             },
    #             filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #           },
    #           segment_id: "__string"
    #         },
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         }
    #       },
    #       state: "DRAFT" # One of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       wait_for_quiet_time: false,
    #       refresh_on_segment_update: false,
    #       journey_channel_settings: {
    #         connect_campaign_arn: "__string",
    #         connect_campaign_execution_role_arn: "__string"
    #       },
    #       sending_schedule: false,
    #       open_hours: {
    #         email: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         sms: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         push: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         voice: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         custom: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         }
    #       },
    #       closed_days: {
    #         email: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         sms: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         push: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         voice: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         custom: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ]
    #       },
    #       timezone_estimation_methods: ["PHONE_NUMBER" # One of: ["PHONE_NUMBER", "POSTAL_CODE"]]
    #     }
    #   }
    # @return [Types::GetJourneyResponse]
    def get_journey(params = {}, options = {})
      request = build_request(:get_journey, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard engagement metric that applies to a journey.</p>
    # @param [Hash, Types::GetJourneyDateRangeKpiRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Time] :end_time
    #   <p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @option params [String] :kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [Time] :start_time
    #   <p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     end_time: Time.now,
    #     journey_id: "__string", # required
    #     kpi_name: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #     start_time: Time.now
    #   }
    #   options = {}
    #   response = client.get_journey_date_range_kpi(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_date_range_kpi_response: { # required
    #       application_id: "__string", # required
    #       end_time: Time.now, # required
    #       journey_id: "__string", # required
    #       kpi_name: "__string", # required
    #       kpi_result: { # required
    #         rows: [ # required
    #           {
    #             grouped_bys: [ # required
    #               {
    #                 key: "__string", # required
    #                 type: "__string", # required
    #                 value: "__string", # required
    #               }
    #             ],
    #             values: [ # required
    #               {
    #                 key: "__string", # required
    #                 type: "__string", # required
    #                 value: "__string", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       next_token: "__string",
    #       start_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetJourneyDateRangeKpiResponse]
    def get_journey_date_range_kpi(params = {}, options = {})
      request = build_request(:get_journey_date_range_kpi, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey activity.</p>
    # @param [Hash, Types::GetJourneyExecutionActivityMetricsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :journey_activity_id
    #   <p>The unique identifier for the journey activity.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @option params [String] :next_token
    #   <p>The <code/> string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     journey_activity_id: "__string", # required
    #     journey_id: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string"
    #   }
    #   options = {}
    #   response = client.get_journey_execution_activity_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_execution_activity_metrics_response: { # required
    #       activity_type: "__string", # required
    #       application_id: "__string", # required
    #       journey_activity_id: "__string", # required
    #       journey_id: "__string", # required
    #       last_evaluated_time: "__string", # required
    #       metrics: { # required
    #         "__string" => "__string"
    #       }
    #     }
    #   }
    # @return [Types::GetJourneyExecutionActivityMetricsResponse]
    def get_journey_execution_activity_metrics(params = {}, options = {})
      request = build_request(:get_journey_execution_activity_metrics, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey.</p>
    # @param [Hash, Types::GetJourneyExecutionMetricsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @option params [String] :next_token
    #   <p>The <code/> string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string"
    #   }
    #   options = {}
    #   response = client.get_journey_execution_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_execution_metrics_response: { # required
    #       application_id: "__string", # required
    #       journey_id: "__string", # required
    #       last_evaluated_time: "__string", # required
    #       metrics: { # required
    #         "__string" => "__string"
    #       }
    #     }
    #   }
    # @return [Types::GetJourneyExecutionMetricsResponse]
    def get_journey_execution_metrics(params = {}, options = {})
      request = build_request(:get_journey_execution_metrics, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard run execution metric that applies to a journey activity.</p>
    # @param [Hash, Types::GetJourneyRunExecutionActivityMetricsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :journey_activity_id
    #   <p>The unique identifier for the journey activity.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @option params [String] :next_token
    #   <p>The <code/> string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :run_id
    #   <p>The unique identifier for the journey run.</p>
    # @example To get the activity execution metrics for a journey run
    #   # The following example gets activity execution metrics for a single run of a journey.
    #   params = {
    #     application_id: "11111111112222222222333333333344",
    #     journey_id: "aaaaaaaaaabbbbbbbbbbccccccccccdd",
    #     run_id: "99999999998888888888777777777766",
    #     journey_activity_id: "AAAAAAAAAA"
    #   }
    #   options = {}
    #   response = client.get_journey_run_execution_activity_metrics(params, options)
    #   response.to_h #=>
    #   {
    #     journey_run_execution_activity_metrics_response: {
    #       application_id: "11111111112222222222333333333344",
    #       journey_id: "aaaaaaaaaabbbbbbbbbbccccccccccdd",
    #       run_id: "99999999998888888888777777777766",
    #       journey_activity_id: "AAAAAAAAAA",
    #       activity_type: "EMAIL",
    #       last_evaluated_time: "2000-01-01T00:00:05.000Z",
    #       metrics: {
    #         "SUCCESS" => "1"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     journey_activity_id: "__string", # required
    #     journey_id: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #     run_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_journey_run_execution_activity_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_run_execution_activity_metrics_response: { # required
    #       activity_type: "__string", # required
    #       application_id: "__string", # required
    #       journey_activity_id: "__string", # required
    #       journey_id: "__string", # required
    #       last_evaluated_time: "__string", # required
    #       metrics: { # required
    #         "__string" => "__string"
    #       },
    #       run_id: "__string", # required
    #     }
    #   }
    # @return [Types::GetJourneyRunExecutionActivityMetricsResponse]
    def get_journey_run_execution_activity_metrics(params = {}, options = {})
      request = build_request(:get_journey_run_execution_activity_metrics, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard run execution metric that applies to a journey.</p>
    # @param [Hash, Types::GetJourneyRunExecutionMetricsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @option params [String] :next_token
    #   <p>The <code/> string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :run_id
    #   <p>The unique identifier for the journey run.</p>
    # @example To get the execution metrics for a journey run
    #   # The following example gets execution metrics for a single run of a journey.
    #   params = {
    #     application_id: "11111111112222222222333333333344",
    #     journey_id: "aaaaaaaaaabbbbbbbbbbccccccccccdd",
    #     run_id: "99999999998888888888777777777766"
    #   }
    #   options = {}
    #   response = client.get_journey_run_execution_metrics(params, options)
    #   response.to_h #=>
    #   {
    #     journey_run_execution_metrics_response: {
    #       application_id: "11111111112222222222333333333344",
    #       journey_id: "aaaaaaaaaabbbbbbbbbbccccccccccdd",
    #       run_id: "99999999998888888888777777777766",
    #       last_evaluated_time: "2000-01-01T00:00:05.000Z",
    #       metrics: {
    #         "ENDPOINT_PRODUCED" => "1",
    #         "ENDPOINT_ENTERED" => "1",
    #         "ENDPOINT_LEFT" => "1"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #     run_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_journey_run_execution_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_run_execution_metrics_response: { # required
    #       application_id: "__string", # required
    #       journey_id: "__string", # required
    #       last_evaluated_time: "__string", # required
    #       metrics: { # required
    #         "__string" => "__string"
    #       },
    #       run_id: "__string", # required
    #     }
    #   }
    # @return [Types::GetJourneyRunExecutionMetricsResponse]
    def get_journey_run_execution_metrics(params = {}, options = {})
      request = build_request(:get_journey_run_execution_metrics, params)
      request.send_request(options)
    end

    # <p>Provides information about the runs of a journey.</p>
    # @param [Hash, Types::GetJourneyRunsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example To get the runs of a journey
    #   # The following example gets the runs of a journey.
    #   params = {
    #     application_id: "11111111112222222222333333333344",
    #     journey_id: "aaaaaaaaaabbbbbbbbbbccccccccccdd"
    #   }
    #   options = {}
    #   response = client.get_journey_runs(params, options)
    #   response.to_h #=>
    #   {
    #     journey_runs_response: {
    #       item: [
    #         {
    #           run_id: "99999999998888888888777777777766",
    #           creation_time: "2000-01-01T00:00:00.000Z",
    #           last_update_time: "2000-01-01T00:00:05.000Z",
    #           status: COMPLETED
    #         },
    #         {
    #           run_id: "ffffffffffeeeeeeeeeeddddddddddcc",
    #           creation_time: "2000-01-01T00:00:10.000Z",
    #           last_update_time: "2000-01-01T00:00:10.000Z",
    #           status: SCHEDULED
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_journey_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_runs_response: { # required
    #       item: [ # required
    #         {
    #           creation_time: "__string", # required
    #           last_update_time: "__string", # required
    #           run_id: "__string", # required
    #           status: "SCHEDULED" # One of: ["SCHEDULED", "RUNNING", "COMPLETED", "CANCELLED"], # required
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetJourneyRunsResponse]
    def get_journey_runs(params = {}, options = {})
      request = build_request(:get_journey_runs, params)
      request.send_request(options)
    end

    # <p>Retrieves the content and settings of a message template for messages that are sent through a push notification channel.</p>
    # @param [Hash, Types::GetPushTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.get_push_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     push_notification_template_response: { # required
    #       adm: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       apns: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         media_url: "__string",
    #         raw_content: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       arn: "__string",
    #       baidu: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       creation_date: "__string", # required
    #       default: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       default_substitutions: "__string",
    #       gcm: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       last_modified_date: "__string", # required
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string",
    #       template_name: "__string", # required
    #       template_type: "EMAIL" # One of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"], # required
    #       version: "__string"
    #     }
    #   }
    # @return [Types::GetPushTemplateResponse]
    def get_push_template(params = {}, options = {})
      request = build_request(:get_push_template, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an Amazon Pinpoint configuration for a recommender model.</p>
    # @param [Hash, Types::GetRecommenderConfigurationRequest] params
    # @option params [String] :recommender_id
    #   <p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommender_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_recommender_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommender_configuration_response: { # required
    #       attributes: {
    #         "__string" => "__string"
    #       },
    #       creation_date: "__string", # required
    #       description: "__string",
    #       id: "__string", # required
    #       last_modified_date: "__string", # required
    #       name: "__string",
    #       recommendation_provider_id_type: "__string",
    #       recommendation_provider_role_arn: "__string", # required
    #       recommendation_provider_uri: "__string", # required
    #       recommendation_transformer_uri: "__string",
    #       recommendations_display_name: "__string",
    #       recommendations_per_message: 1
    #     }
    #   }
    # @return [Types::GetRecommenderConfigurationResponse]
    def get_recommender_configuration(params = {}, options = {})
      request = build_request(:get_recommender_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about all the recommender model configurations that are associated with your Amazon Pinpoint account.</p>
    # @param [Hash, Types::GetRecommenderConfigurationsRequest] params
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_recommender_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     list_recommender_configurations_response: { # required
    #       item: [ # required
    #         {
    #           attributes: {
    #             "__string" => "__string"
    #           },
    #           creation_date: "__string", # required
    #           description: "__string",
    #           id: "__string", # required
    #           last_modified_date: "__string", # required
    #           name: "__string",
    #           recommendation_provider_id_type: "__string",
    #           recommendation_provider_role_arn: "__string", # required
    #           recommendation_provider_uri: "__string", # required
    #           recommendation_transformer_uri: "__string",
    #           recommendations_display_name: "__string",
    #           recommendations_per_message: 1
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetRecommenderConfigurationsResponse]
    def get_recommender_configurations(params = {}, options = {})
      request = build_request(:get_recommender_configurations, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the configuration, dimension, and other settings for a specific segment that's associated with an application.</p>
    # @param [Hash, Types::GetSegmentRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_segment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment_response: { # required
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #             recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #           }
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0
    #           }
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           }
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         }
    #       },
    #       id: "__string", # required
    #       import_definition: {
    #         channel_counts: {
    #           "__string" => 1
    #         },
    #         external_id: "__string", # required
    #         format: "CSV" # One of: ["CSV", "JSON"], # required
    #         role_arn: "__string", # required
    #         s3_url: "__string", # required
    #         size: 1, # required
    #       },
    #       last_modified_date: "__string",
    #       name: "__string",
    #       segment_groups: {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                     recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                   }
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0
    #                   }
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 }
    #               }
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
    #                 version: 1
    #               }
    #             ],
    #             source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #             type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #           }
    #         ],
    #         include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #       },
    #       segment_type: "DIMENSIONAL" # One of: ["DIMENSIONAL", "IMPORT"], # required
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       version: 1
    #     }
    #   }
    # @return [Types::GetSegmentResponse]
    def get_segment(params = {}, options = {})
      request = build_request(:get_segment, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the export jobs for a segment.</p>
    # @param [Hash, Types::GetSegmentExportJobsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     segment_id: "__string", # required
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_segment_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_jobs_response: { # required
    #       item: [ # required
    #         {
    #           application_id: "__string", # required
    #           completed_pieces: 1,
    #           completion_date: "__string",
    #           creation_date: "__string", # required
    #           definition: { # required
    #             role_arn: "__string", # required
    #             s3_url_prefix: "__string", # required
    #             segment_id: "__string",
    #             segment_version: 1
    #           },
    #           failed_pieces: 1,
    #           failures: ["__string"],
    #           id: "__string", # required
    #           job_status: "CREATED" # One of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"], # required
    #           total_failures: 1,
    #           total_pieces: 1,
    #           total_processed: 1,
    #           type: "__string", # required
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetSegmentExportJobsResponse]
    def get_segment_export_jobs(params = {}, options = {})
      request = build_request(:get_segment_export_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the import jobs for a segment.</p>
    # @param [Hash, Types::GetSegmentImportJobsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     segment_id: "__string", # required
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_segment_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_jobs_response: { # required
    #       item: [ # required
    #         {
    #           application_id: "__string", # required
    #           completed_pieces: 1,
    #           completion_date: "__string",
    #           creation_date: "__string", # required
    #           definition: { # required
    #             define_segment: false,
    #             external_id: "__string",
    #             format: "CSV" # One of: ["CSV", "JSON"], # required
    #             register_endpoints: false,
    #             role_arn: "__string", # required
    #             s3_url: "__string", # required
    #             segment_id: "__string",
    #             segment_name: "__string"
    #           },
    #           failed_pieces: 1,
    #           failures: ["__string"],
    #           id: "__string", # required
    #           job_status: "CREATED" # One of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"], # required
    #           total_failures: 1,
    #           total_pieces: 1,
    #           total_processed: 1,
    #           type: "__string", # required
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetSegmentImportJobsResponse]
    def get_segment_import_jobs(params = {}, options = {})
      request = build_request(:get_segment_import_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the configuration, dimension, and other settings for a specific version of a segment that's associated with an application.</p>
    # @param [Hash, Types::GetSegmentVersionRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    # @option params [String] :version
    #   <p>The unique version number (Version property) for the campaign version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #     version: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_segment_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment_response: { # required
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #             recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #           }
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0
    #           }
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           }
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         }
    #       },
    #       id: "__string", # required
    #       import_definition: {
    #         channel_counts: {
    #           "__string" => 1
    #         },
    #         external_id: "__string", # required
    #         format: "CSV" # One of: ["CSV", "JSON"], # required
    #         role_arn: "__string", # required
    #         s3_url: "__string", # required
    #         size: 1, # required
    #       },
    #       last_modified_date: "__string",
    #       name: "__string",
    #       segment_groups: {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                     recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                   }
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0
    #                   }
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 }
    #               }
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
    #                 version: 1
    #               }
    #             ],
    #             source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #             type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #           }
    #         ],
    #         include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #       },
    #       segment_type: "DIMENSIONAL" # One of: ["DIMENSIONAL", "IMPORT"], # required
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       version: 1
    #     }
    #   }
    # @return [Types::GetSegmentVersionResponse]
    def get_segment_version(params = {}, options = {})
      request = build_request(:get_segment_version, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the configuration, dimension, and other settings for all the versions of a specific segment that's associated with an application.</p>
    # @param [Hash, Types::GetSegmentVersionsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     segment_id: "__string", # required
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_segment_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segments_response: { # required
    #       item: [ # required
    #         {
    #           application_id: "__string", # required
    #           arn: "__string", # required
    #           creation_date: "__string", # required
    #           dimensions: {
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                 recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #               }
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               channel: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               gps_point: {
    #                 coordinates: { # required
    #                   latitude: 1.0, # required
    #                   longitude: 1.0, # required
    #                 },
    #                 range_in_kilometers: 1.0
    #               }
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               }
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             }
    #           },
    #           id: "__string", # required
    #           import_definition: {
    #             channel_counts: {
    #               "__string" => 1
    #             },
    #             external_id: "__string", # required
    #             format: "CSV" # One of: ["CSV", "JSON"], # required
    #             role_arn: "__string", # required
    #             s3_url: "__string", # required
    #             size: 1, # required
    #           },
    #           last_modified_date: "__string",
    #           name: "__string",
    #           segment_groups: {
    #             groups: [
    #               {
    #                 dimensions: [
    #                   {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 source_segments: [
    #                   {
    #                     id: "__string", # required
    #                     version: 1
    #                   }
    #                 ],
    #                 source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #                 type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #               }
    #             ],
    #             include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #           },
    #           segment_type: "DIMENSIONAL" # One of: ["DIMENSIONAL", "IMPORT"], # required
    #           tags: {
    #             "__string" => "__string"
    #           },
    #           version: 1
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetSegmentVersionsResponse]
    def get_segment_versions(params = {}, options = {})
      request = build_request(:get_segment_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the configuration, dimension, and other settings for all the segments that are associated with an application.</p>
    # @param [Hash, Types::GetSegmentsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.get_segments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segments_response: { # required
    #       item: [ # required
    #         {
    #           application_id: "__string", # required
    #           arn: "__string", # required
    #           creation_date: "__string", # required
    #           dimensions: {
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                 recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #               }
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               channel: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               gps_point: {
    #                 coordinates: { # required
    #                   latitude: 1.0, # required
    #                   longitude: 1.0, # required
    #                 },
    #                 range_in_kilometers: 1.0
    #               }
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               }
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             }
    #           },
    #           id: "__string", # required
    #           import_definition: {
    #             channel_counts: {
    #               "__string" => 1
    #             },
    #             external_id: "__string", # required
    #             format: "CSV" # One of: ["CSV", "JSON"], # required
    #             role_arn: "__string", # required
    #             s3_url: "__string", # required
    #             size: 1, # required
    #           },
    #           last_modified_date: "__string",
    #           name: "__string",
    #           segment_groups: {
    #             groups: [
    #               {
    #                 dimensions: [
    #                   {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 source_segments: [
    #                   {
    #                     id: "__string", # required
    #                     version: 1
    #                   }
    #                 ],
    #                 source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #                 type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #               }
    #             ],
    #             include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #           },
    #           segment_type: "DIMENSIONAL" # One of: ["DIMENSIONAL", "IMPORT"], # required
    #           tags: {
    #             "__string" => "__string"
    #           },
    #           version: 1
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::GetSegmentsResponse]
    def get_segments(params = {}, options = {})
      request = build_request(:get_segments, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the SMS channel for an application.</p>
    # @param [Hash, Types::GetSmsChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_sms_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sms_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       promotional_messages_per_second: 1,
    #       sender_id: "__string",
    #       short_code: "__string",
    #       transactional_messages_per_second: 1,
    #       version: 1
    #     }
    #   }
    # @return [Types::GetSmsChannelResponse]
    def get_sms_channel(params = {}, options = {})
      request = build_request(:get_sms_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves the content and settings of a message template for messages that are sent through the SMS channel.</p>
    # @param [Hash, Types::GetSmsTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.get_sms_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sms_template_response: { # required
    #       arn: "__string",
    #       body: "__string",
    #       creation_date: "__string", # required
    #       default_substitutions: "__string",
    #       last_modified_date: "__string", # required
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string",
    #       template_name: "__string", # required
    #       template_type: "EMAIL" # One of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"], # required
    #       version: "__string"
    #     }
    #   }
    # @return [Types::GetSmsTemplateResponse]
    def get_sms_template(params = {}, options = {})
      request = build_request(:get_sms_template, params)
      request.send_request(options)
    end

    # <p>Retrieves information about all the endpoints that are associated with a specific user ID.</p>
    # @param [Hash, Types::GetUserEndpointsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier for the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     user_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_user_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoints_response: { # required
    #       item: [ # required
    #         {
    #           address: "__string",
    #           application_id: "__string",
    #           attributes: {
    #             "__string" => ["__string"]
    #           },
    #           channel_type: "PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"],
    #           cohort_id: "__string",
    #           creation_date: "__string",
    #           demographic: {
    #             app_version: "__string",
    #             locale: "__string",
    #             make: "__string",
    #             model: "__string",
    #             model_version: "__string",
    #             platform: "__string",
    #             platform_version: "__string",
    #             timezone: "__string"
    #           },
    #           effective_date: "__string",
    #           endpoint_status: "__string",
    #           id: "__string",
    #           location: {
    #             city: "__string",
    #             country: "__string",
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             postal_code: "__string",
    #             region: "__string"
    #           },
    #           metrics: {
    #             "__string" => 1.0
    #           },
    #           opt_out: "__string",
    #           request_id: "__string",
    #           user: {
    #             user_attributes: {
    #               "__string" => ["__string"]
    #             },
    #             user_id: "__string"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetUserEndpointsResponse]
    def get_user_endpoints(params = {}, options = {})
      request = build_request(:get_user_endpoints, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status and settings of the voice channel for an application.</p>
    # @param [Hash, Types::GetVoiceChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_voice_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::GetVoiceChannelResponse]
    def get_voice_channel(params = {}, options = {})
      request = build_request(:get_voice_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves the content and settings of a message template for messages that are sent through the voice channel.</p>
    # @param [Hash, Types::GetVoiceTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.get_voice_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_template_response: { # required
    #       arn: "__string",
    #       body: "__string",
    #       creation_date: "__string", # required
    #       default_substitutions: "__string",
    #       language_code: "__string",
    #       last_modified_date: "__string", # required
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string",
    #       template_name: "__string", # required
    #       template_type: "EMAIL" # One of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"], # required
    #       version: "__string",
    #       voice_id: "__string"
    #     }
    #   }
    # @return [Types::GetVoiceTemplateResponse]
    def get_voice_template(params = {}, options = {})
      request = build_request(:get_voice_template, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the status, configuration, and other settings for all the journeys that are associated with an application.</p>
    # @param [Hash, Types::ListJourneysRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string"
    #   }
    #   options = {}
    #   response = client.list_journeys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journeys_response: { # required
    #       item: [ # required
    #         {
    #           activities: {
    #             "__string" => {
    #               custom: {
    #                 delivery_uri: "__string",
    #                 endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]],
    #                 message_config: {
    #                   data: "__string"
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string"
    #               },
    #               conditional_split: {
    #                 condition: {
    #                   conditions: [
    #                     {
    #                       event_condition: {
    #                         dimensions: {
    #                           attributes: {
    #                             "__string" => {
    #                               attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                               values: ["__string"], # required
    #                             }
    #                           },
    #                           event_type: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           metrics: {
    #                             "__string" => {
    #                               comparison_operator: "__string", # required
    #                               value: 1.0, # required
    #                             }
    #                           }
    #                         },
    #                         message_activity: "__string"
    #                       },
    #                       segment_condition: {
    #                         segment_id: "__string", # required
    #                       },
    #                       segment_dimensions: {
    #                         attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                             values: ["__string"], # required
    #                           }
    #                         },
    #                         behavior: {
    #                           recency: {
    #                             duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                             recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                           }
    #                         },
    #                         demographic: {
    #                           app_version: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           channel: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           device_type: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           make: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           model: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           platform: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           }
    #                         },
    #                         location: {
    #                           country: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           gps_point: {
    #                             coordinates: { # required
    #                               latitude: 1.0, # required
    #                               longitude: 1.0, # required
    #                             },
    #                             range_in_kilometers: 1.0
    #                           }
    #                         },
    #                         metrics: {
    #                           "__string" => {
    #                             comparison_operator: "__string", # required
    #                             value: 1.0, # required
    #                           }
    #                         },
    #                         user_attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                             values: ["__string"], # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   operator: "ALL" # One of: ["ALL", "ANY"]
    #                 },
    #                 evaluation_wait_time: {
    #                   wait_for: "__string",
    #                   wait_until: "__string"
    #                 },
    #                 false_activity: "__string",
    #                 true_activity: "__string"
    #               },
    #               description: "__string",
    #               email: {
    #                 message_config: {
    #                   from_address: "__string"
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string"
    #               },
    #               holdout: {
    #                 next_activity: "__string",
    #                 percentage: 1, # required
    #               },
    #               multi_condition: {
    #                 branches: [
    #                   {
    #                     condition: {
    #                       event_condition: {
    #                         dimensions: {
    #                           attributes: {
    #                             "__string" => {
    #                               attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                               values: ["__string"], # required
    #                             }
    #                           },
    #                           event_type: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           metrics: {
    #                             "__string" => {
    #                               comparison_operator: "__string", # required
    #                               value: 1.0, # required
    #                             }
    #                           }
    #                         },
    #                         message_activity: "__string"
    #                       },
    #                       segment_condition: {
    #                         segment_id: "__string", # required
    #                       },
    #                       segment_dimensions: {
    #                         attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                             values: ["__string"], # required
    #                           }
    #                         },
    #                         behavior: {
    #                           recency: {
    #                             duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                             recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                           }
    #                         },
    #                         demographic: {
    #                           app_version: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           channel: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           device_type: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           make: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           model: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           platform: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           }
    #                         },
    #                         location: {
    #                           country: {
    #                             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                             values: ["__string"], # required
    #                           },
    #                           gps_point: {
    #                             coordinates: { # required
    #                               latitude: 1.0, # required
    #                               longitude: 1.0, # required
    #                             },
    #                             range_in_kilometers: 1.0
    #                           }
    #                         },
    #                         metrics: {
    #                           "__string" => {
    #                             comparison_operator: "__string", # required
    #                             value: 1.0, # required
    #                           }
    #                         },
    #                         user_attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                             values: ["__string"], # required
    #                           }
    #                         }
    #                       }
    #                     },
    #                     next_activity: "__string"
    #                   }
    #                 ],
    #                 default_activity: "__string",
    #                 evaluation_wait_time: {
    #                   wait_for: "__string",
    #                   wait_until: "__string"
    #                 }
    #               },
    #               push: {
    #                 message_config: {
    #                   time_to_live: "__string"
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string"
    #               },
    #               random_split: {
    #                 branches: [
    #                   {
    #                     next_activity: "__string",
    #                     percentage: 1
    #                   }
    #                 ]
    #               },
    #               sms: {
    #                 message_config: {
    #                   message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #                   origination_number: "__string",
    #                   sender_id: "__string",
    #                   entity_id: "__string",
    #                   template_id: "__string"
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string"
    #               },
    #               wait: {
    #                 next_activity: "__string",
    #                 wait_time: {
    #                   wait_for: "__string",
    #                   wait_until: "__string"
    #                 }
    #               },
    #               contact_center: {
    #                 next_activity: "__string"
    #               }
    #             }
    #           },
    #           application_id: "__string", # required
    #           creation_date: "__string",
    #           id: "__string", # required
    #           last_modified_date: "__string",
    #           limits: {
    #             daily_cap: 1,
    #             endpoint_reentry_cap: 1,
    #             messages_per_second: 1,
    #             endpoint_reentry_interval: "__string",
    #             timeframe_cap: {
    #               cap: 1,
    #               days: 1
    #             },
    #             total_cap: 1
    #           },
    #           local_time: false,
    #           name: "__string", # required
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string"
    #           },
    #           refresh_frequency: "__string",
    #           schedule: {
    #             end_time: Time.now,
    #             start_time: Time.now,
    #             timezone: "__string"
    #           },
    #           start_activity: "__string",
    #           start_condition: {
    #             description: "__string",
    #             event_start_condition: {
    #               event_filter: {
    #                 dimensions: { # required
    #                   attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                       values: ["__string"], # required
    #                     }
    #                   },
    #                   event_type: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   metrics: {
    #                     "__string" => {
    #                       comparison_operator: "__string", # required
    #                       value: 1.0, # required
    #                     }
    #                   }
    #                 },
    #                 filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #               },
    #               segment_id: "__string"
    #             },
    #             segment_start_condition: {
    #               segment_id: "__string", # required
    #             }
    #           },
    #           state: "DRAFT" # One of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"],
    #           tags: {
    #             "__string" => "__string"
    #           },
    #           wait_for_quiet_time: false,
    #           refresh_on_segment_update: false,
    #           journey_channel_settings: {
    #             connect_campaign_arn: "__string",
    #             connect_campaign_execution_role_arn: "__string"
    #           },
    #           sending_schedule: false,
    #           open_hours: {
    #             email: {
    #               "DayOfWeek" => [
    #                 {
    #                   start_time: "__string",
    #                   end_time: "__string"
    #                 }
    #               ]
    #             },
    #             sms: {
    #               "DayOfWeek" => [
    #                 {
    #                   start_time: "__string",
    #                   end_time: "__string"
    #                 }
    #               ]
    #             },
    #             push: {
    #               "DayOfWeek" => [
    #                 {
    #                   start_time: "__string",
    #                   end_time: "__string"
    #                 }
    #               ]
    #             },
    #             voice: {
    #               "DayOfWeek" => [
    #                 {
    #                   start_time: "__string",
    #                   end_time: "__string"
    #                 }
    #               ]
    #             },
    #             custom: {
    #               "DayOfWeek" => [
    #                 {
    #                   start_time: "__string",
    #                   end_time: "__string"
    #                 }
    #               ]
    #             }
    #           },
    #           closed_days: {
    #             email: [
    #               {
    #                 name: "__string",
    #                 start_date_time: "__string",
    #                 end_date_time: "__string"
    #               }
    #             ],
    #             sms: [
    #               {
    #                 name: "__string",
    #                 start_date_time: "__string",
    #                 end_date_time: "__string"
    #               }
    #             ],
    #             push: [
    #               {
    #                 name: "__string",
    #                 start_date_time: "__string",
    #                 end_date_time: "__string"
    #               }
    #             ],
    #             voice: [
    #               {
    #                 name: "__string",
    #                 start_date_time: "__string",
    #                 end_date_time: "__string"
    #               }
    #             ],
    #             custom: [
    #               {
    #                 name: "__string",
    #                 start_date_time: "__string",
    #                 end_date_time: "__string"
    #               }
    #             ]
    #           },
    #           timezone_estimation_methods: ["PHONE_NUMBER" # One of: ["PHONE_NUMBER", "POSTAL_CODE"]]
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::ListJourneysResponse]
    def list_journeys(params = {}, options = {})
      request = build_request(:list_journeys, params)
      request.send_request(options)
    end

    # <p>Retrieves all the tags (keys and values) that are associated with an application, campaign, message template, or segment.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags_model: { # required
    #       tags: { # required
    #         "__string" => "__string"
    #       }
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves information about all the versions of a specific message template.</p>
    # @param [Hash, Types::ListTemplateVersionsRequest] params
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :template_type
    #   <p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "__string",
    #     page_size: "__string",
    #     template_name: "__string", # required
    #     template_type: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_template_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_versions_response: { # required
    #       item: [ # required
    #         {
    #           creation_date: "__string", # required
    #           default_substitutions: "__string",
    #           last_modified_date: "__string", # required
    #           template_description: "__string",
    #           template_name: "__string", # required
    #           template_type: "__string", # required
    #           version: "__string"
    #         }
    #       ],
    #       message: "__string",
    #       next_token: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::ListTemplateVersionsResponse]
    def list_template_versions(params = {}, options = {})
      request = build_request(:list_template_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves information about all the message templates that are associated with your Amazon Pinpoint account.</p>
    # @param [Hash, Types::ListTemplatesRequest] params
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    # @option params [String] :prefix
    #   <p>The substring to match in the names of the message templates to include in the results. If you specify this value, Amazon Pinpoint returns only those templates whose names begin with the value that you specify.</p>
    # @option params [String] :template_type
    #   <p>The type of message template to include in the results. Valid values are: EMAIL, PUSH, SMS, and VOICE. To include all types of templates in the results, don't include this parameter in your request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "__string",
    #     page_size: "__string",
    #     prefix: "__string",
    #     template_type: "__string"
    #   }
    #   options = {}
    #   response = client.list_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     templates_response: { # required
    #       item: [ # required
    #         {
    #           arn: "__string",
    #           creation_date: "__string", # required
    #           default_substitutions: "__string",
    #           last_modified_date: "__string", # required
    #           tags: {
    #             "__string" => "__string"
    #           },
    #           template_description: "__string",
    #           template_name: "__string", # required
    #           template_type: "EMAIL" # One of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"], # required
    #           version: "__string"
    #         }
    #       ],
    #       next_token: "__string"
    #     }
    #   }
    # @return [Types::ListTemplatesResponse]
    def list_templates(params = {}, options = {})
      request = build_request(:list_templates, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a phone number.</p>
    # @param [Hash, Types::PhoneNumberValidateRequest] params
    # @option params [Types::NumberValidateRequest] :number_validate_request
    #   <p>Specifies a phone number to validate and retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     number_validate_request: { # required
    #       iso_country_code: "__string",
    #       phone_number: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.phone_number_validate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     number_validate_response: { # required
    #       carrier: "__string",
    #       city: "__string",
    #       cleansed_phone_number_e164: "__string",
    #       cleansed_phone_number_national: "__string",
    #       country: "__string",
    #       country_code_iso2: "__string",
    #       country_code_numeric: "__string",
    #       county: "__string",
    #       original_country_code_iso2: "__string",
    #       original_phone_number: "__string",
    #       phone_type: "__string",
    #       phone_type_code: 1,
    #       timezone: "__string",
    #       zip_code: "__string"
    #     }
    #   }
    # @return [Types::PhoneNumberValidateResponse]
    def phone_number_validate(params = {}, options = {})
      request = build_request(:phone_number_validate, params)
      request.send_request(options)
    end

    # <p>Creates a new event stream for an application or updates the settings of an existing event stream for an application.</p>
    # @param [Hash, Types::PutEventStreamRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::WriteEventStream] :write_event_stream
    #   <p>Specifies the Amazon Resource Name (ARN) of an event stream to publish events to and the AWS Identity and Access Management (IAM) role to use when publishing those events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     write_event_stream: { # required
    #       destination_stream_arn: "__string", # required
    #       role_arn: "__string", # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_event_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_stream: { # required
    #       application_id: "__string", # required
    #       destination_stream_arn: "__string", # required
    #       external_id: "__string",
    #       last_modified_date: "__string",
    #       last_updated_by: "__string",
    #       role_arn: "__string", # required
    #     }
    #   }
    # @return [Types::PutEventStreamResponse]
    def put_event_stream(params = {}, options = {})
      request = build_request(:put_event_stream, params)
      request.send_request(options)
    end

    # <p>Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.</p>
    # @param [Hash, Types::PutEventsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::EventsRequest] :events_request
    #   <p>Specifies a batch of events to process.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     events_request: { # required
    #       batch_item: { # required
    #         "__string" => {
    #           endpoint: { # required
    #             address: "__string",
    #             attributes: {
    #               "__string" => ["__string"]
    #             },
    #             channel_type: "PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"],
    #             demographic: {
    #               app_version: "__string",
    #               locale: "__string",
    #               make: "__string",
    #               model: "__string",
    #               model_version: "__string",
    #               platform: "__string",
    #               platform_version: "__string",
    #               timezone: "__string"
    #             },
    #             effective_date: "__string",
    #             endpoint_status: "__string",
    #             location: {
    #               city: "__string",
    #               country: "__string",
    #               latitude: 1.0,
    #               longitude: 1.0,
    #               postal_code: "__string",
    #               region: "__string"
    #             },
    #             metrics: {
    #               "__string" => 1.0
    #             },
    #             opt_out: "__string",
    #             request_id: "__string",
    #             user: {
    #               user_attributes: {
    #                 "__string" => ["__string"]
    #               },
    #               user_id: "__string"
    #             }
    #           },
    #           events: { # required
    #             "__string" => {
    #               app_package_name: "__string",
    #               app_title: "__string",
    #               app_version_code: "__string",
    #               attributes: {
    #                 "__string" => "__string"
    #               },
    #               client_sdk_version: "__string",
    #               event_type: "__string", # required
    #               metrics: {
    #                 "__string" => 1.0
    #               },
    #               sdk_name: "__string",
    #               session: {
    #                 duration: 1,
    #                 id: "__string", # required
    #                 start_timestamp: "__string", # required
    #                 stop_timestamp: "__string"
    #               },
    #               timestamp: "__string", # required
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events_response: { # required
    #       results: {
    #         "__string" => {
    #           endpoint_item_response: {
    #             message: "__string",
    #             status_code: 1
    #           },
    #           events_item_response: {
    #             "__string" => {
    #               message: "__string",
    #               status_code: 1
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::PutEventsResponse]
    def put_events(params = {}, options = {})
      request = build_request(:put_events, params)
      request.send_request(options)
    end

    # <p>Removes one or more custom attributes, of the same attribute type, from the application. Existing endpoints still have the attributes but Amazon Pinpoint will stop capturing new or changed values for these attributes.</p>
    # @param [Hash, Types::RemoveAttributesRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :attribute_type
    #   <p>The type of attribute or attributes to remove. Valid values are:</p> <ul><li><p>endpoint-custom-attributes - Custom attributes that describe endpoints, such as the date when an associated user opted in or out of receiving communications from you through a specific type of channel.</p></li> <li><p>endpoint-metric-attributes - Custom metrics that your app reports to Amazon Pinpoint for endpoints, such as the number of app sessions or the number of items left in a cart.</p></li> <li><p>endpoint-user-attributes - Custom attributes that describe users, such as first name, last name, and age.</p></li></ul>
    # @option params [Types::UpdateAttributesRequest] :update_attributes_request
    #   <p>Specifies one or more attributes to remove from all the endpoints that are associated with an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     attribute_type: "__string", # required
    #     update_attributes_request: { # required
    #       blacklist: ["__string"]
    #     }
    #   }
    #   options = {}
    #   response = client.remove_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes_resource: { # required
    #       application_id: "__string", # required
    #       attribute_type: "__string", # required
    #       attributes: ["__string"]
    #     }
    #   }
    # @return [Types::RemoveAttributesResponse]
    def remove_attributes(params = {}, options = {})
      request = build_request(:remove_attributes, params)
      request.send_request(options)
    end

    # <p>Creates and sends a direct message.</p>
    # @param [Hash, Types::SendMessagesRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::MessageRequest] :message_request
    #   <p>Specifies the configuration and other settings for a message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     message_request: { # required
    #       addresses: {
    #         "__string" => {
    #           body_override: "__string",
    #           channel_type: "PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"],
    #           context: {
    #             "__string" => "__string"
    #           },
    #           raw_content: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           title_override: "__string"
    #         }
    #       },
    #       context: {
    #         "__string" => "__string"
    #       },
    #       endpoints: {
    #         "__string" => {
    #           body_override: "__string",
    #           context: {
    #             "__string" => "__string"
    #           },
    #           raw_content: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           title_override: "__string"
    #         }
    #       },
    #       message_configuration: { # required
    #         adm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           consolidation_key: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           expires_after: "__string",
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           md5: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           title: "__string",
    #           url: "__string"
    #         },
    #         apns_message: {
    #           apns_push_type: "__string",
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           badge: 1,
    #           body: "__string",
    #           category: "__string",
    #           collapse_id: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           media_url: "__string",
    #           preferred_authentication_method: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           thread_id: "__string",
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         default_message: {
    #           body: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           }
    #         },
    #         default_push_notification_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           silent_push: false,
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           title: "__string",
    #           url: "__string"
    #         },
    #         email_message: {
    #           body: "__string",
    #           feedback_forwarding_address: "__string",
    #           from_address: "__string",
    #           raw_email: {
    #             data: "data"
    #           },
    #           reply_to_addresses: ["__string"],
    #           simple_email: {
    #             html_part: {
    #               charset: "__string",
    #               data: "__string"
    #             },
    #             subject: {
    #               charset: "__string",
    #               data: "__string"
    #             },
    #             text_part: {
    #               charset: "__string",
    #               data: "__string"
    #             },
    #             headers: [
    #               {
    #                 name: "__string",
    #                 value: "__string"
    #               }
    #             ]
    #           },
    #           substitutions: {
    #             "__string" => ["__string"]
    #           }
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           collapse_key: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           preferred_authentication_method: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           restricted_package_name: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         sms_message: {
    #           body: "__string",
    #           keyword: "__string",
    #           media_url: "__string",
    #           message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           entity_id: "__string",
    #           template_id: "__string"
    #         },
    #         voice_message: {
    #           body: "__string",
    #           language_code: "__string",
    #           origination_number: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           voice_id: "__string"
    #         }
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         in_app_template: {
    #           name: "__string",
    #           version: "__string"
    #         }
    #       },
    #       trace_id: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.send_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_response: { # required
    #       application_id: "__string", # required
    #       endpoint_result: {
    #         "__string" => {
    #           address: "__string",
    #           delivery_status: "SUCCESSFUL" # One of: ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"], # required
    #           message_id: "__string",
    #           status_code: 1, # required
    #           status_message: "__string",
    #           updated_token: "__string"
    #         }
    #       },
    #       request_id: "__string",
    #       result: {
    #         "__string" => {
    #           delivery_status: "SUCCESSFUL" # One of: ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"], # required
    #           message_id: "__string",
    #           status_code: 1, # required
    #           status_message: "__string",
    #           updated_token: "__string"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::SendMessagesResponse]
    def send_messages(params = {}, options = {})
      request = build_request(:send_messages, params)
      request.send_request(options)
    end

    # <p>Send an OTP message</p>
    # @param [Hash, Types::SendOTPMessageRequest] params
    # @option params [String] :application_id
    #   <p>The unique ID of your Amazon Pinpoint application.</p>
    # @option params [Types::SendOTPMessageRequestParameters] :send_otp_message_request_parameters
    #   <p>Send OTP message request parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     send_otp_message_request_parameters: { # required
    #       allowed_attempts: 1,
    #       brand_name: "__string", # required
    #       channel: "__string", # required
    #       code_length: 1,
    #       destination_identity: "__string", # required
    #       entity_id: "__string",
    #       language: "__string",
    #       origination_identity: "__string", # required
    #       reference_id: "__string", # required
    #       template_id: "__string",
    #       validity_period: 1
    #     }
    #   }
    #   options = {}
    #   response = client.send_otp_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_response: { # required
    #       application_id: "__string", # required
    #       endpoint_result: {
    #         "__string" => {
    #           address: "__string",
    #           delivery_status: "SUCCESSFUL" # One of: ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"], # required
    #           message_id: "__string",
    #           status_code: 1, # required
    #           status_message: "__string",
    #           updated_token: "__string"
    #         }
    #       },
    #       request_id: "__string",
    #       result: {
    #         "__string" => {
    #           delivery_status: "SUCCESSFUL" # One of: ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"], # required
    #           message_id: "__string",
    #           status_code: 1, # required
    #           status_message: "__string",
    #           updated_token: "__string"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::SendOTPMessageResponse]
    def send_otp_message(params = {}, options = {})
      request = build_request(:send_otp_message, params)
      request.send_request(options)
    end

    # <p>Creates and sends a message to a list of users.</p>
    # @param [Hash, Types::SendUsersMessagesRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::SendUsersMessageRequest] :send_users_message_request
    #   <p>Specifies the configuration and other settings for a message to send to all the endpoints that are associated with a list of users.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     send_users_message_request: { # required
    #       context: {
    #         "__string" => "__string"
    #       },
    #       message_configuration: { # required
    #         adm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           consolidation_key: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           expires_after: "__string",
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           md5: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           title: "__string",
    #           url: "__string"
    #         },
    #         apns_message: {
    #           apns_push_type: "__string",
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           badge: 1,
    #           body: "__string",
    #           category: "__string",
    #           collapse_id: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           media_url: "__string",
    #           preferred_authentication_method: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           thread_id: "__string",
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         default_message: {
    #           body: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           }
    #         },
    #         default_push_notification_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           silent_push: false,
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           title: "__string",
    #           url: "__string"
    #         },
    #         email_message: {
    #           body: "__string",
    #           feedback_forwarding_address: "__string",
    #           from_address: "__string",
    #           raw_email: {
    #             data: "data"
    #           },
    #           reply_to_addresses: ["__string"],
    #           simple_email: {
    #             html_part: {
    #               charset: "__string",
    #               data: "__string"
    #             },
    #             subject: {
    #               charset: "__string",
    #               data: "__string"
    #             },
    #             text_part: {
    #               charset: "__string",
    #               data: "__string"
    #             },
    #             headers: [
    #               {
    #                 name: "__string",
    #                 value: "__string"
    #               }
    #             ]
    #           },
    #           substitutions: {
    #             "__string" => ["__string"]
    #           }
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           collapse_key: "__string",
    #           data: {
    #             "__string" => "__string"
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           preferred_authentication_method: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           restricted_package_name: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         sms_message: {
    #           body: "__string",
    #           keyword: "__string",
    #           media_url: "__string",
    #           message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           entity_id: "__string",
    #           template_id: "__string"
    #         },
    #         voice_message: {
    #           body: "__string",
    #           language_code: "__string",
    #           origination_number: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           voice_id: "__string"
    #         }
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         in_app_template: {
    #           name: "__string",
    #           version: "__string"
    #         }
    #       },
    #       trace_id: "__string",
    #       users: { # required
    #         "__string" => {
    #           body_override: "__string",
    #           context: {
    #             "__string" => "__string"
    #           },
    #           raw_content: "__string",
    #           substitutions: {
    #             "__string" => ["__string"]
    #           },
    #           title_override: "__string"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.send_users_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     send_users_message_response: { # required
    #       application_id: "__string", # required
    #       request_id: "__string",
    #       result: {
    #         "__string" => {
    #           "__string" => {
    #             address: "__string",
    #             delivery_status: "SUCCESSFUL" # One of: ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"], # required
    #             message_id: "__string",
    #             status_code: 1, # required
    #             status_message: "__string",
    #             updated_token: "__string"
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::SendUsersMessagesResponse]
    def send_users_messages(params = {}, options = {})
      request = build_request(:send_users_messages, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags (keys and values) to an application, campaign, message template, or segment.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Types::TagsModel] :tags_model
    #   <p>Specifies the tags (keys and values) for an application, campaign, message template, or segment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags_model: { # required
    #       tags: { # required
    #         "__string" => "__string"
    #       }
    #     }
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

    # <p>Removes one or more tags (keys and values) from an application, campaign, message template, or segment.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key of the tag to remove from the resource. To remove multiple tags, append the tagKeys parameter and argument for each additional tag to remove, separated by an ampersand (&amp;).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
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

    # <p>Enables the ADM channel for an application or updates the status and settings of the ADM channel for an application.</p>
    # @param [Hash, Types::UpdateAdmChannelRequest] params
    # @option params [Types::ADMChannelRequest] :adm_channel_request
    #   <p>Specifies the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     adm_channel_request: { # required
    #       client_id: "__string", # required
    #       client_secret: "__string", # required
    #       enabled: false
    #     },
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_adm_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adm_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateAdmChannelResponse]
    def update_adm_channel(params = {}, options = {})
      request = build_request(:update_adm_channel, params)
      request.send_request(options)
    end

    # <p>Enables the APNs channel for an application or updates the status and settings of the APNs channel for an application.</p>
    # @param [Hash, Types::UpdateApnsChannelRequest] params
    # @option params [Types::APNSChannelRequest] :apns_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     apns_channel_request: { # required
    #       bundle_id: "__string",
    #       certificate: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #       team_id: "__string",
    #       token_key: "__string",
    #       token_key_id: "__string"
    #     },
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_apns_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateApnsChannelResponse]
    def update_apns_channel(params = {}, options = {})
      request = build_request(:update_apns_channel, params)
      request.send_request(options)
    end

    # <p>Enables the APNs sandbox channel for an application or updates the status and settings of the APNs sandbox channel for an application.</p>
    # @param [Hash, Types::UpdateApnsSandboxChannelRequest] params
    # @option params [Types::APNSSandboxChannelRequest] :apns_sandbox_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     apns_sandbox_channel_request: { # required
    #       bundle_id: "__string",
    #       certificate: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #       team_id: "__string",
    #       token_key: "__string",
    #       token_key_id: "__string"
    #     },
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_apns_sandbox_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_sandbox_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateApnsSandboxChannelResponse]
    def update_apns_sandbox_channel(params = {}, options = {})
      request = build_request(:update_apns_sandbox_channel, params)
      request.send_request(options)
    end

    # <p>Enables the APNs VoIP channel for an application or updates the status and settings of the APNs VoIP channel for an application.</p>
    # @param [Hash, Types::UpdateApnsVoipChannelRequest] params
    # @option params [Types::APNSVoipChannelRequest] :apns_voip_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     apns_voip_channel_request: { # required
    #       bundle_id: "__string",
    #       certificate: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #       team_id: "__string",
    #       token_key: "__string",
    #       token_key_id: "__string"
    #     },
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_apns_voip_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_voip_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateApnsVoipChannelResponse]
    def update_apns_voip_channel(params = {}, options = {})
      request = build_request(:update_apns_voip_channel, params)
      request.send_request(options)
    end

    # <p>Enables the APNs VoIP sandbox channel for an application or updates the status and settings of the APNs VoIP sandbox channel for an application.</p>
    # @param [Hash, Types::UpdateApnsVoipSandboxChannelRequest] params
    # @option params [Types::APNSVoipSandboxChannelRequest] :apns_voip_sandbox_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     apns_voip_sandbox_channel_request: { # required
    #       bundle_id: "__string",
    #       certificate: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #       team_id: "__string",
    #       token_key: "__string",
    #       token_key_id: "__string"
    #     },
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_apns_voip_sandbox_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apns_voip_sandbox_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_token_key: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateApnsVoipSandboxChannelResponse]
    def update_apns_voip_sandbox_channel(params = {}, options = {})
      request = build_request(:update_apns_voip_sandbox_channel, params)
      request.send_request(options)
    end

    # <p>Updates the settings for an application.</p>
    # @param [Hash, Types::UpdateApplicationSettingsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::WriteApplicationSettingsRequest] :write_application_settings_request
    #   <p>Specifies the default settings for an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     write_application_settings_request: { # required
    #       campaign_hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       cloud_watch_metrics_enabled: false,
    #       event_tagging_enabled: false,
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       journey_limits: {
    #         daily_cap: 1,
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_application_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_settings_resource: { # required
    #       application_id: "__string", # required
    #       campaign_hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       last_modified_date: "__string",
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       journey_limits: {
    #         daily_cap: 1,
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       }
    #     }
    #   }
    # @return [Types::UpdateApplicationSettingsResponse]
    def update_application_settings(params = {}, options = {})
      request = build_request(:update_application_settings, params)
      request.send_request(options)
    end

    # <p>Enables the Baidu channel for an application or updates the status and settings of the Baidu channel for an application.</p>
    # @param [Hash, Types::UpdateBaiduChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::BaiduChannelRequest] :baidu_channel_request
    #   <p>Specifies the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     baidu_channel_request: { # required
    #       api_key: "__string", # required
    #       enabled: false,
    #       secret_key: "__string", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_baidu_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baidu_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       credential: "__string", # required
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateBaiduChannelResponse]
    def update_baidu_channel(params = {}, options = {})
      request = build_request(:update_baidu_channel, params)
      request.send_request(options)
    end

    # <p>Updates the configuration and other settings for a campaign.</p>
    # @param [Hash, Types::UpdateCampaignRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    # @option params [Types::WriteCampaignRequest] :write_campaign_request
    #   <p>Specifies the configuration and other settings for a campaign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     write_campaign_request: { # required
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             apns_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             custom_message: {
    #               data: "__string"
    #             },
    #             default_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               headers: [
    #                 {
    #                   name: "__string",
    #                   value: "__string"
    #                 }
    #               ],
    #               html_body: "__string",
    #               title: "__string"
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             in_app_message: {
    #               body: "__string",
    #               content: [
    #                 {
    #                   background_color: "__string",
    #                   body_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     body: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   header_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     header: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   image_url: "__string",
    #                   primary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   },
    #                   secondary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   }
    #                 }
    #               ],
    #               custom_config: {
    #                 "__string" => "__string"
    #               },
    #               layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string"
    #           },
    #           size_percent: 1, # required
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             in_app_template: {
    #               name: "__string",
    #               version: "__string"
    #             }
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string"
    #         }
    #       ],
    #       custom_delivery_configuration: {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #       },
    #       description: "__string",
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       is_paused: false,
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         apns_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         custom_message: {
    #           data: "__string"
    #         },
    #         default_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           headers: [
    #             {
    #               name: "__string",
    #               value: "__string"
    #             }
    #           ],
    #           html_body: "__string",
    #           title: "__string"
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           entity_id: "__string",
    #           template_id: "__string"
    #         },
    #         in_app_message: {
    #           body: "__string",
    #           content: [
    #             {
    #               background_color: "__string",
    #               body_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 body: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               header_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 header: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               image_url: "__string",
    #               primary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               },
    #               secondary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               }
    #             }
    #           ],
    #           custom_config: {
    #             "__string" => "__string"
    #           },
    #           layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #         }
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               }
    #             }
    #           },
    #           filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #         },
    #         frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string"
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string"
    #       },
    #       segment_id: "__string",
    #       segment_version: 1,
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         in_app_template: {
    #           name: "__string",
    #           version: "__string"
    #         }
    #       },
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #       priority: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign_response: { # required
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #           },
    #           id: "__string", # required
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             apns_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             custom_message: {
    #               data: "__string"
    #             },
    #             default_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               headers: [
    #                 {
    #                   name: "__string",
    #                   value: "__string"
    #                 }
    #               ],
    #               html_body: "__string",
    #               title: "__string"
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string"
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             in_app_message: {
    #               body: "__string",
    #               content: [
    #                 {
    #                   background_color: "__string",
    #                   body_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     body: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   header_config: {
    #                     alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                     header: "__string", # required
    #                     text_color: "__string", # required
    #                   },
    #                   image_url: "__string",
    #                   primary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   },
    #                   secondary_btn: {
    #                     android: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     default_config: {
    #                       background_color: "__string",
    #                       border_radius: 1,
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string",
    #                       text: "__string", # required
    #                       text_color: "__string"
    #                     },
    #                     ios: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     },
    #                     web: {
    #                       button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                       link: "__string"
    #                     }
    #                   }
    #                 }
    #               ],
    #               custom_config: {
    #                 "__string" => "__string"
    #               },
    #               layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 }
    #               },
    #               filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #             },
    #             frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string"
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string"
    #           },
    #           size_percent: 1, # required
    #           state: {
    #             campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string"
    #             },
    #             in_app_template: {
    #               name: "__string",
    #               version: "__string"
    #             }
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string"
    #         }
    #       ],
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       custom_delivery_configuration: {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]]
    #       },
    #       default_state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       description: "__string",
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY" # One of: ["DELIVERY", "FILTER"],
    #         web_url: "__string"
    #       },
    #       id: "__string", # required
    #       is_paused: false,
    #       last_modified_date: "__string", # required
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         apns_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         custom_message: {
    #           data: "__string"
    #         },
    #         default_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           headers: [
    #             {
    #               name: "__string",
    #               value: "__string"
    #             }
    #           ],
    #           html_body: "__string",
    #           title: "__string"
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string"
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           entity_id: "__string",
    #           template_id: "__string"
    #         },
    #         in_app_message: {
    #           body: "__string",
    #           content: [
    #             {
    #               background_color: "__string",
    #               body_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 body: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               header_config: {
    #                 alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #                 header: "__string", # required
    #                 text_color: "__string", # required
    #               },
    #               image_url: "__string",
    #               primary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               },
    #               secondary_btn: {
    #                 android: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 default_config: {
    #                   background_color: "__string",
    #                   border_radius: 1,
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string",
    #                   text: "__string", # required
    #                   text_color: "__string"
    #                 },
    #                 ios: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 },
    #                 web: {
    #                   button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #                   link: "__string"
    #                 }
    #               }
    #             }
    #           ],
    #           custom_config: {
    #             "__string" => "__string"
    #           },
    #           layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #         }
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                 values: ["__string"], # required
    #               }
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               }
    #             }
    #           },
    #           filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #         },
    #         frequency: "ONCE" # One of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"],
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string"
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string"
    #       },
    #       segment_id: "__string", # required
    #       segment_version: 1, # required
    #       state: {
    #         campaign_status: "SCHEDULED" # One of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #       },
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string"
    #         },
    #         in_app_template: {
    #           name: "__string",
    #           version: "__string"
    #         }
    #       },
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #       version: 1,
    #       priority: 1
    #     }
    #   }
    # @return [Types::UpdateCampaignResponse]
    def update_campaign(params = {}, options = {})
      request = build_request(:update_campaign, params)
      request.send_request(options)
    end

    # <p>Enables the email channel for an application or updates the status and settings of the email channel for an application.</p>
    # @param [Hash, Types::UpdateEmailChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::EmailChannelRequest] :email_channel_request
    #   <p>Specifies the status and settings of the email channel for an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     email_channel_request: { # required
    #       configuration_set: "__string",
    #       enabled: false,
    #       from_address: "__string", # required
    #       identity: "__string", # required
    #       role_arn: "__string",
    #       orchestration_sending_role_arn: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.update_email_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     email_channel_response: { # required
    #       application_id: "__string",
    #       configuration_set: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       from_address: "__string",
    #       has_credential: false,
    #       id: "__string",
    #       identity: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       messages_per_second: 1,
    #       platform: "__string", # required
    #       role_arn: "__string",
    #       orchestration_sending_role_arn: "__string",
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateEmailChannelResponse]
    def update_email_channel(params = {}, options = {})
      request = build_request(:update_email_channel, params)
      request.send_request(options)
    end

    # <p>Updates an existing message template for messages that are sent through the email channel.</p>
    # @param [Hash, Types::UpdateEmailTemplateRequest] params
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    # @option params [Types::EmailTemplateRequest] :email_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the email channel.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     create_new_version: false,
    #     email_template_request: { # required
    #       default_substitutions: "__string",
    #       html_part: "__string",
    #       recommender_id: "__string",
    #       subject: "__string",
    #       headers: [
    #         {
    #           name: "__string",
    #           value: "__string"
    #         }
    #       ],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string",
    #       text_part: "__string"
    #     },
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.update_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::UpdateEmailTemplateResponse]
    def update_email_template(params = {}, options = {})
      request = build_request(:update_email_template, params)
      request.send_request(options)
    end

    # <p>Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes for an endpoint. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.</p>
    # @param [Hash, Types::UpdateEndpointRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :endpoint_id
    #   <p>The case insensitive unique identifier for the endpoint. The identifier can't contain <code>$</code>, <code>{</code> or <code>}</code>.</p>
    # @option params [Types::EndpointRequest] :endpoint_request
    #   <p>Specifies the channel type and other settings for an endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     endpoint_id: "__string", # required
    #     endpoint_request: { # required
    #       address: "__string",
    #       attributes: {
    #         "__string" => ["__string"]
    #       },
    #       channel_type: "PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"],
    #       demographic: {
    #         app_version: "__string",
    #         locale: "__string",
    #         make: "__string",
    #         model: "__string",
    #         model_version: "__string",
    #         platform: "__string",
    #         platform_version: "__string",
    #         timezone: "__string"
    #       },
    #       effective_date: "__string",
    #       endpoint_status: "__string",
    #       location: {
    #         city: "__string",
    #         country: "__string",
    #         latitude: 1.0,
    #         longitude: 1.0,
    #         postal_code: "__string",
    #         region: "__string"
    #       },
    #       metrics: {
    #         "__string" => 1.0
    #       },
    #       opt_out: "__string",
    #       request_id: "__string",
    #       user: {
    #         user_attributes: {
    #           "__string" => ["__string"]
    #         },
    #         user_id: "__string"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::UpdateEndpointResponse]
    def update_endpoint(params = {}, options = {})
      request = build_request(:update_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes for a batch of endpoints. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.</p>
    # @param [Hash, Types::UpdateEndpointsBatchRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::EndpointBatchRequest] :endpoint_batch_request
    #   <p>Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     endpoint_batch_request: { # required
    #       item: [ # required
    #         {
    #           address: "__string",
    #           attributes: {
    #             "__string" => ["__string"]
    #           },
    #           channel_type: "PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"],
    #           demographic: {
    #             app_version: "__string",
    #             locale: "__string",
    #             make: "__string",
    #             model: "__string",
    #             model_version: "__string",
    #             platform: "__string",
    #             platform_version: "__string",
    #             timezone: "__string"
    #           },
    #           effective_date: "__string",
    #           endpoint_status: "__string",
    #           id: "__string",
    #           location: {
    #             city: "__string",
    #             country: "__string",
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             postal_code: "__string",
    #             region: "__string"
    #           },
    #           metrics: {
    #             "__string" => 1.0
    #           },
    #           opt_out: "__string",
    #           request_id: "__string",
    #           user: {
    #             user_attributes: {
    #               "__string" => ["__string"]
    #             },
    #             user_id: "__string"
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_endpoints_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::UpdateEndpointsBatchResponse]
    def update_endpoints_batch(params = {}, options = {})
      request = build_request(:update_endpoints_batch, params)
      request.send_request(options)
    end

    # <p>Enables the GCM channel for an application or updates the status and settings of the GCM channel for an application.</p>
    # @param [Hash, Types::UpdateGcmChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::GCMChannelRequest] :gcm_channel_request
    #   <p>Specifies the status and settings of the GCM channel for an application. This channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     gcm_channel_request: { # required
    #       api_key: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       service_json: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.update_gcm_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gcm_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       credential: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       has_fcm_service_credentials: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateGcmChannelResponse]
    def update_gcm_channel(params = {}, options = {})
      request = build_request(:update_gcm_channel, params)
      request.send_request(options)
    end

    # <p>Updates an existing message template for messages sent through the in-app message channel.</p>
    # @param [Hash, Types::UpdateInAppTemplateRequest] params
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    # @option params [Types::InAppTemplateRequest] :in_app_template_request
    #   <p>InApp Template Request.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     create_new_version: false,
    #     in_app_template_request: { # required
    #       content: [
    #         {
    #           background_color: "__string",
    #           body_config: {
    #             alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #             body: "__string", # required
    #             text_color: "__string", # required
    #           },
    #           header_config: {
    #             alignment: "LEFT" # One of: ["LEFT", "CENTER", "RIGHT"], # required
    #             header: "__string", # required
    #             text_color: "__string", # required
    #           },
    #           image_url: "__string",
    #           primary_btn: {
    #             android: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             default_config: {
    #               background_color: "__string",
    #               border_radius: 1,
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string",
    #               text: "__string", # required
    #               text_color: "__string"
    #             },
    #             ios: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             web: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             }
    #           },
    #           secondary_btn: {
    #             android: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             default_config: {
    #               background_color: "__string",
    #               border_radius: 1,
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string",
    #               text: "__string", # required
    #               text_color: "__string"
    #             },
    #             ios: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             },
    #             web: {
    #               button_action: "LINK" # One of: ["LINK", "DEEP_LINK", "CLOSE"], # required
    #               link: "__string"
    #             }
    #           }
    #         }
    #       ],
    #       custom_config: {
    #         "__string" => "__string"
    #       },
    #       layout: "BOTTOM_BANNER" # One of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string"
    #     },
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.update_in_app_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::UpdateInAppTemplateResponse]
    def update_in_app_template(params = {}, options = {})
      request = build_request(:update_in_app_template, params)
      request.send_request(options)
    end

    # <p>Updates the configuration and other settings for a journey.</p>
    # @param [Hash, Types::UpdateJourneyRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @option params [Types::WriteJourneyRequest] :write_journey_request
    #   <p>Specifies the configuration and other settings for a journey.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #     write_journey_request: { # required
    #       activities: {
    #         "__string" => {
    #           custom: {
    #             delivery_uri: "__string",
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]],
    #             message_config: {
    #               data: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               operator: "ALL" # One of: ["ALL", "ANY"]
    #             },
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             },
    #             false_activity: "__string",
    #             true_activity: "__string"
    #           },
    #           description: "__string",
    #           email: {
    #             message_config: {
    #               from_address: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           holdout: {
    #             next_activity: "__string",
    #             percentage: 1, # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 condition: {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 },
    #                 next_activity: "__string"
    #               }
    #             ],
    #             default_activity: "__string",
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: "__string",
    #                 percentage: 1
    #               }
    #             ]
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           wait: {
    #             next_activity: "__string",
    #             wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           contact_center: {
    #             next_activity: "__string"
    #           }
    #         }
    #       },
    #       creation_date: "__string",
    #       last_modified_date: "__string",
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #         endpoint_reentry_interval: "__string",
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       },
    #       local_time: false,
    #       name: "__string", # required
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       refresh_frequency: "__string",
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string"
    #       },
    #       start_activity: "__string",
    #       start_condition: {
    #         description: "__string",
    #         event_start_condition: {
    #           event_filter: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                   values: ["__string"], # required
    #                 }
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 }
    #               }
    #             },
    #             filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #           },
    #           segment_id: "__string"
    #         },
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         }
    #       },
    #       state: "DRAFT" # One of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"],
    #       wait_for_quiet_time: false,
    #       refresh_on_segment_update: false,
    #       journey_channel_settings: {
    #         connect_campaign_arn: "__string",
    #         connect_campaign_execution_role_arn: "__string"
    #       },
    #       sending_schedule: false,
    #       open_hours: {
    #         email: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         sms: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         push: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         voice: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         custom: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         }
    #       },
    #       closed_days: {
    #         email: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         sms: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         push: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         voice: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         custom: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ]
    #       },
    #       timezone_estimation_methods: ["PHONE_NUMBER" # One of: ["PHONE_NUMBER", "POSTAL_CODE"]]
    #     }
    #   }
    #   options = {}
    #   response = client.update_journey(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_response: { # required
    #       activities: {
    #         "__string" => {
    #           custom: {
    #             delivery_uri: "__string",
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]],
    #             message_config: {
    #               data: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               operator: "ALL" # One of: ["ALL", "ANY"]
    #             },
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             },
    #             false_activity: "__string",
    #             true_activity: "__string"
    #           },
    #           description: "__string",
    #           email: {
    #             message_config: {
    #               from_address: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           holdout: {
    #             next_activity: "__string",
    #             percentage: 1, # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 condition: {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 },
    #                 next_activity: "__string"
    #               }
    #             ],
    #             default_activity: "__string",
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: "__string",
    #                 percentage: 1
    #               }
    #             ]
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           wait: {
    #             next_activity: "__string",
    #             wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           contact_center: {
    #             next_activity: "__string"
    #           }
    #         }
    #       },
    #       application_id: "__string", # required
    #       creation_date: "__string",
    #       id: "__string", # required
    #       last_modified_date: "__string",
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #         endpoint_reentry_interval: "__string",
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       },
    #       local_time: false,
    #       name: "__string", # required
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       refresh_frequency: "__string",
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string"
    #       },
    #       start_activity: "__string",
    #       start_condition: {
    #         description: "__string",
    #         event_start_condition: {
    #           event_filter: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                   values: ["__string"], # required
    #                 }
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 }
    #               }
    #             },
    #             filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #           },
    #           segment_id: "__string"
    #         },
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         }
    #       },
    #       state: "DRAFT" # One of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       wait_for_quiet_time: false,
    #       refresh_on_segment_update: false,
    #       journey_channel_settings: {
    #         connect_campaign_arn: "__string",
    #         connect_campaign_execution_role_arn: "__string"
    #       },
    #       sending_schedule: false,
    #       open_hours: {
    #         email: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         sms: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         push: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         voice: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         custom: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         }
    #       },
    #       closed_days: {
    #         email: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         sms: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         push: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         voice: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         custom: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ]
    #       },
    #       timezone_estimation_methods: ["PHONE_NUMBER" # One of: ["PHONE_NUMBER", "POSTAL_CODE"]]
    #     }
    #   }
    # @return [Types::UpdateJourneyResponse]
    def update_journey(params = {}, options = {})
      request = build_request(:update_journey, params)
      request.send_request(options)
    end

    # <p>Cancels (stops) an active journey.</p>
    # @param [Hash, Types::UpdateJourneyStateRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    # @option params [Types::JourneyStateRequest] :journey_state_request
    #   <p>Changes the status of a journey.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #     journey_state_request: { # required
    #       state: "DRAFT" # One of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_journey_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journey_response: { # required
    #       activities: {
    #         "__string" => {
    #           custom: {
    #             delivery_uri: "__string",
    #             endpoint_types: ["PUSH" # One of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]],
    #             message_config: {
    #               data: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               operator: "ALL" # One of: ["ALL", "ANY"]
    #             },
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             },
    #             false_activity: "__string",
    #             true_activity: "__string"
    #           },
    #           description: "__string",
    #           email: {
    #             message_config: {
    #               from_address: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           holdout: {
    #             next_activity: "__string",
    #             percentage: 1, # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 condition: {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                           values: ["__string"], # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: "__string"
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                         recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                       }
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       }
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       }
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                         values: ["__string"], # required
    #                       }
    #                     }
    #                   }
    #                 },
    #                 next_activity: "__string"
    #               }
    #             ],
    #             default_activity: "__string",
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: "__string",
    #                 percentage: 1
    #               }
    #             ]
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: "TRANSACTIONAL" # One of: ["TRANSACTIONAL", "PROMOTIONAL"],
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               entity_id: "__string",
    #               template_id: "__string"
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string"
    #           },
    #           wait: {
    #             next_activity: "__string",
    #             wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string"
    #             }
    #           },
    #           contact_center: {
    #             next_activity: "__string"
    #           }
    #         }
    #       },
    #       application_id: "__string", # required
    #       creation_date: "__string",
    #       id: "__string", # required
    #       last_modified_date: "__string",
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #         endpoint_reentry_interval: "__string",
    #         timeframe_cap: {
    #           cap: 1,
    #           days: 1
    #         },
    #         total_cap: 1
    #       },
    #       local_time: false,
    #       name: "__string", # required
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string"
    #       },
    #       refresh_frequency: "__string",
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string"
    #       },
    #       start_activity: "__string",
    #       start_condition: {
    #         description: "__string",
    #         event_start_condition: {
    #           event_filter: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                   values: ["__string"], # required
    #                 }
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 }
    #               }
    #             },
    #             filter_type: "SYSTEM" # One of: ["SYSTEM", "ENDPOINT"], # required
    #           },
    #           segment_id: "__string"
    #         },
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         }
    #       },
    #       state: "DRAFT" # One of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"],
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       wait_for_quiet_time: false,
    #       refresh_on_segment_update: false,
    #       journey_channel_settings: {
    #         connect_campaign_arn: "__string",
    #         connect_campaign_execution_role_arn: "__string"
    #       },
    #       sending_schedule: false,
    #       open_hours: {
    #         email: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         sms: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         push: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         voice: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         },
    #         custom: {
    #           "DayOfWeek" => [
    #             {
    #               start_time: "__string",
    #               end_time: "__string"
    #             }
    #           ]
    #         }
    #       },
    #       closed_days: {
    #         email: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         sms: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         push: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         voice: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ],
    #         custom: [
    #           {
    #             name: "__string",
    #             start_date_time: "__string",
    #             end_date_time: "__string"
    #           }
    #         ]
    #       },
    #       timezone_estimation_methods: ["PHONE_NUMBER" # One of: ["PHONE_NUMBER", "POSTAL_CODE"]]
    #     }
    #   }
    # @return [Types::UpdateJourneyStateResponse]
    def update_journey_state(params = {}, options = {})
      request = build_request(:update_journey_state, params)
      request.send_request(options)
    end

    # <p>Updates an existing message template for messages that are sent through a push notification channel.</p>
    # @param [Hash, Types::UpdatePushTemplateRequest] params
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    # @option params [Types::PushNotificationTemplateRequest] :push_notification_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     create_new_version: false,
    #     push_notification_template_request: { # required
    #       adm: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       apns: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         media_url: "__string",
    #         raw_content: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       baidu: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       default: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       default_substitutions: "__string",
    #       gcm: {
    #         action: "OPEN_APP" # One of: ["OPEN_APP", "DEEP_LINK", "URL"],
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string"
    #       },
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string"
    #     },
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.update_push_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::UpdatePushTemplateResponse]
    def update_push_template(params = {}, options = {})
      request = build_request(:update_push_template, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Pinpoint configuration for a recommender model.</p>
    # @param [Hash, Types::UpdateRecommenderConfigurationRequest] params
    # @option params [String] :recommender_id
    #   <p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::UpdateRecommenderConfigurationShape] :update_recommender_configuration
    #   <p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommender_id: "__string", # required
    #     update_recommender_configuration: { # required
    #       attributes: {
    #         "__string" => "__string"
    #       },
    #       description: "__string",
    #       name: "__string",
    #       recommendation_provider_id_type: "__string",
    #       recommendation_provider_role_arn: "__string", # required
    #       recommendation_provider_uri: "__string", # required
    #       recommendation_transformer_uri: "__string",
    #       recommendations_display_name: "__string",
    #       recommendations_per_message: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_recommender_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommender_configuration_response: { # required
    #       attributes: {
    #         "__string" => "__string"
    #       },
    #       creation_date: "__string", # required
    #       description: "__string",
    #       id: "__string", # required
    #       last_modified_date: "__string", # required
    #       name: "__string",
    #       recommendation_provider_id_type: "__string",
    #       recommendation_provider_role_arn: "__string", # required
    #       recommendation_provider_uri: "__string", # required
    #       recommendation_transformer_uri: "__string",
    #       recommendations_display_name: "__string",
    #       recommendations_per_message: 1
    #     }
    #   }
    # @return [Types::UpdateRecommenderConfigurationResponse]
    def update_recommender_configuration(params = {}, options = {})
      request = build_request(:update_recommender_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.</p>
    # @param [Hash, Types::UpdateSegmentRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    # @option params [Types::WriteSegmentRequest] :write_segment_request
    #   <p>Specifies the configuration, dimension, and other settings for a segment. A WriteSegmentRequest object can include a Dimensions object or a SegmentGroups object, but not both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #     write_segment_request: { # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #             recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #           }
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0
    #           }
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           }
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         }
    #       },
    #       name: "__string",
    #       segment_groups: {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                     recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                   }
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0
    #                   }
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 }
    #               }
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
    #                 version: 1
    #               }
    #             ],
    #             source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #             type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #           }
    #         ],
    #         include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #       },
    #       tags: {
    #         "__string" => "__string"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_segment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment_response: { # required
    #       application_id: "__string", # required
    #       arn: "__string", # required
    #       creation_date: "__string", # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #             recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #           }
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           }
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0
    #           }
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           }
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #             values: ["__string"], # required
    #           }
    #         }
    #       },
    #       id: "__string", # required
    #       import_definition: {
    #         channel_counts: {
    #           "__string" => 1
    #         },
    #         external_id: "__string", # required
    #         format: "CSV" # One of: ["CSV", "JSON"], # required
    #         role_arn: "__string", # required
    #         s3_url: "__string", # required
    #         size: 1, # required
    #       },
    #       last_modified_date: "__string",
    #       name: "__string",
    #       segment_groups: {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24" # One of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"], # required
    #                     recency_type: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #                   }
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   }
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"],
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0
    #                   }
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   }
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"],
    #                     values: ["__string"], # required
    #                   }
    #                 }
    #               }
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
    #                 version: 1
    #               }
    #             ],
    #             source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #             type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #           }
    #         ],
    #         include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #       },
    #       segment_type: "DIMENSIONAL" # One of: ["DIMENSIONAL", "IMPORT"], # required
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateSegmentResponse]
    def update_segment(params = {}, options = {})
      request = build_request(:update_segment, params)
      request.send_request(options)
    end

    # <p>Enables the SMS channel for an application or updates the status and settings of the SMS channel for an application.</p>
    # @param [Hash, Types::UpdateSmsChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::SMSChannelRequest] :sms_channel_request
    #   <p>Specifies the status and settings of the SMS channel for an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     sms_channel_request: { # required
    #       enabled: false,
    #       sender_id: "__string",
    #       short_code: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.update_sms_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sms_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       promotional_messages_per_second: 1,
    #       sender_id: "__string",
    #       short_code: "__string",
    #       transactional_messages_per_second: 1,
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateSmsChannelResponse]
    def update_sms_channel(params = {}, options = {})
      request = build_request(:update_sms_channel, params)
      request.send_request(options)
    end

    # <p>Updates an existing message template for messages that are sent through the SMS channel.</p>
    # @param [Hash, Types::UpdateSmsTemplateRequest] params
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    # @option params [Types::SMSTemplateRequest] :sms_template_request
    #   <p>Specifies the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     create_new_version: false,
    #     sms_template_request: { # required
    #       body: "__string",
    #       default_substitutions: "__string",
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string"
    #     },
    #     template_name: "__string", # required
    #     version: "__string"
    #   }
    #   options = {}
    #   response = client.update_sms_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::UpdateSmsTemplateResponse]
    def update_sms_template(params = {}, options = {})
      request = build_request(:update_sms_template, params)
      request.send_request(options)
    end

    # <p>Changes the status of a specific version of a message template to <i>active</i>.</p>
    # @param [Hash, Types::UpdateTemplateActiveVersionRequest] params
    # @option params [Types::TemplateActiveVersionRequest] :template_active_version_request
    #   <p>Specifies which version of a message template to use as the active version of the template.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :template_type
    #   <p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_active_version_request: { # required
    #       version: "__string"
    #     },
    #     template_name: "__string", # required
    #     template_type: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_template_active_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::UpdateTemplateActiveVersionResponse]
    def update_template_active_version(params = {}, options = {})
      request = build_request(:update_template_active_version, params)
      request.send_request(options)
    end

    # <p>Enables the voice channel for an application or updates the status and settings of the voice channel for an application.</p>
    # @param [Hash, Types::UpdateVoiceChannelRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    # @option params [Types::VoiceChannelRequest] :voice_channel_request
    #   <p>Specifies the status and settings of the voice channel for an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     voice_channel_request: { # required
    #       enabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_voice_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_channel_response: { # required
    #       application_id: "__string",
    #       creation_date: "__string",
    #       enabled: false,
    #       has_credential: false,
    #       id: "__string",
    #       is_archived: false,
    #       last_modified_by: "__string",
    #       last_modified_date: "__string",
    #       platform: "__string", # required
    #       version: 1
    #     }
    #   }
    # @return [Types::UpdateVoiceChannelResponse]
    def update_voice_channel(params = {}, options = {})
      request = build_request(:update_voice_channel, params)
      request.send_request(options)
    end

    # <p>Updates an existing message template for messages that are sent through the voice channel.</p>
    # @param [Hash, Types::UpdateVoiceTemplateRequest] params
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    # @option params [Types::VoiceTemplateRequest] :voice_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     create_new_version: false,
    #     template_name: "__string", # required
    #     version: "__string",
    #     voice_template_request: { # required
    #       body: "__string",
    #       default_substitutions: "__string",
    #       language_code: "__string",
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       template_description: "__string",
    #       voice_id: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.update_voice_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_body: { # required
    #       message: "__string",
    #       request_id: "__string"
    #     }
    #   }
    # @return [Types::UpdateVoiceTemplateResponse]
    def update_voice_template(params = {}, options = {})
      request = build_request(:update_voice_template, params)
      request.send_request(options)
    end

    # <p>Verify an OTP</p>
    # @param [Hash, Types::VerifyOTPMessageRequest] params
    # @option params [String] :application_id
    #   <p>The unique ID of your Amazon Pinpoint application.</p>
    # @option params [Types::VerifyOTPMessageRequestParameters] :verify_otp_message_request_parameters
    #   <p>Verify OTP message request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     verify_otp_message_request_parameters: { # required
    #       destination_identity: "__string", # required
    #       otp: "__string", # required
    #       reference_id: "__string", # required
    #     }
    #   }
    #   options = {}
    #   response = client.verify_otp_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verification_response: { # required
    #       valid: false
    #     }
    #   }
    # @return [Types::VerifyOTPMessageResponse]
    def verify_otp_message(params = {}, options = {})
      request = build_request(:verify_otp_message, params)
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
      context[:gem_name] = 'aws-sdk-pinpoint'
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
