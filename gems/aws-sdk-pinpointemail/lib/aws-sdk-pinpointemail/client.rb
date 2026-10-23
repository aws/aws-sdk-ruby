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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:pinpointemail)

module Aws::PinpointEmail
  # An API client for Aws::PinpointEmail.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonPinpointEmailService
    @identifier = :pinpointemail

    add_plugin(::Aws::PinpointEmail::Plugins::Endpoint)
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
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PinpointEmail::EndpointProvider)
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
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Create a configuration set. <i>Configuration sets</i> are groups of
    #             rules that you can apply to the emails you send using Amazon Pinpoint. You apply a configuration
    #             set to an email by including a reference to the configuration set in the headers of the
    #             email. When you apply a configuration set to an email, all of the rules in that
    #             configuration set are applied to the email. </p>
    # @param [Hash, Types::CreateConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    # @option params [Types::TrackingOptions] :tracking_options
    #   <p>An object that defines the open and click tracking options for emails that you send
    #               using the configuration set.</p>
    # @option params [Types::DeliveryOptions] :delivery_options
    #   <p>An object that defines the dedicated IP pool that is used to send emails that you send
    #               using the configuration set.</p>
    # @option params [Types::ReputationOptions] :reputation_options
    #   <p>An object that defines whether or not Amazon Pinpoint collects reputation metrics for the emails
    #               that you send that use the configuration set.</p>
    # @option params [Types::SendingOptions] :sending_options
    #   <p>An object that defines whether or not Amazon Pinpoint can send email that you send using the
    #               configuration set.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the configuration set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tracking_options: {
    #       custom_redirect_domain: "CustomRedirectDomain", # required
    #     },
    #     delivery_options: {
    #       tls_policy: "REQUIRE" # One of: ["REQUIRE", "OPTIONAL"],
    #       sending_pool_name: "PoolName"
    #     },
    #     reputation_options: {
    #       reputation_metrics_enabled: false,
    #       last_fresh_start: Time.now
    #     },
    #     sending_options: {
    #       sending_enabled: false
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_configuration_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateConfigurationSetResponse]
    def create_configuration_set(params = {}, options = {})
      request = build_request(:create_configuration_set, params)
      request.send_request(options)
    end

    # <p>Create an event destination. In Amazon Pinpoint, <i>events</i> include message
    #             sends, deliveries, opens, clicks, bounces, and complaints. <i>Event
    #                 destinations</i> are places that you can send information about these events
    #             to. For example, you can send event data to Amazon SNS to receive notifications when you
    #             receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term
    #             storage.</p>
    #         <p>A single configuration set can include more than one event destination.</p>
    # @param [Hash, Types::CreateConfigurationSetEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to add an event destination to.</p>
    # @option params [String] :event_destination_name
    #   <p>A name that identifies the event destination within the configuration set.</p>
    # @option params [Types::EventDestinationDefinition] :event_destination
    #   <p>An object that defines the event destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #     event_destination: { # required
    #       enabled: false,
    #       matching_event_types: ["SEND" # One of: ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE"]],
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "MESSAGE_TAG" # One of: ["MESSAGE_TAG", "EMAIL_HEADER", "LINK_TAG"], # required
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           }
    #         ]
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
    #       },
    #       pinpoint_destination: {
    #         application_arn: "AmazonResourceName"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_configuration_set_event_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateConfigurationSetEventDestinationResponse]
    def create_configuration_set_event_destination(params = {}, options = {})
      request = build_request(:create_configuration_set_event_destination, params)
      request.send_request(options)
    end

    # <p>Create a new pool of dedicated IP addresses. A pool can include one or more dedicated
    #             IP addresses that are associated with your Amazon Pinpoint account. You can associate a pool with
    #             a configuration set. When you send an email that uses that configuration set, Amazon Pinpoint
    #             sends it using only the IP addresses in the associated pool.</p>
    # @param [Hash, Types::CreateDedicatedIpPoolRequest] params
    # @option params [String] :pool_name
    #   <p>The name of the dedicated IP pool.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An object that defines the tags (keys and values) that you want to associate with the
    #               pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_name: "PoolName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dedicated_ip_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateDedicatedIpPoolResponse]
    def create_dedicated_ip_pool(params = {}, options = {})
      request = build_request(:create_dedicated_ip_pool, params)
      request.send_request(options)
    end

    # <p>Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled
    #             by various email providers around the world. When you perform a predictive inbox placement test, you provide a
    #             sample message that contains the content that you plan to send to your customers. Amazon Pinpoint
    #             then sends that message to special email addresses spread across several major email
    #             providers. After about 24 hours, the test is complete, and you can use the
    #                 <code>GetDeliverabilityTestReport</code> operation to view the results of the
    #             test.</p>
    # @param [Hash, Types::CreateDeliverabilityTestReportRequest] params
    # @option params [String] :report_name
    #   <p>A unique name that helps you to identify the predictive inbox placement test when you retrieve the
    #               results.</p>
    # @option params [String] :from_email_address
    #   <p>The email address that the predictive inbox placement test email was sent from.</p>
    # @option params [Types::EmailContent] :content
    #   <p>The HTML body of the message that you sent when you performed the predictive inbox placement test.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the predictive inbox placement test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_name: "ReportName",
    #     from_email_address: "EmailAddress", # required
    #     content: { # required
    #       simple: {
    #         subject: { # required
    #           data: "MessageData", # required
    #           charset: "Charset"
    #         },
    #         body: { # required
    #           text: {
    #             data: "MessageData", # required
    #             charset: "Charset"
    #           },
    #           html: {
    #             data: "MessageData", # required
    #             charset: "Charset"
    #           }
    #         }
    #       },
    #       raw: {
    #         data: "data", # required
    #       },
    #       template: {
    #         template_arn: "TemplateArn",
    #         template_data: "TemplateData"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_deliverability_test_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_id: "ReportId", # required
    #     deliverability_test_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED"], # required
    #   }
    # @return [Types::CreateDeliverabilityTestReportResponse]
    def create_deliverability_test_report(params = {}, options = {})
      request = build_request(:create_deliverability_test_report, params)
      request.send_request(options)
    end

    # <p>Verifies an email identity for use with Amazon Pinpoint. In Amazon Pinpoint, an identity is an email
    #             address or domain that you use when you send email. Before you can use an identity to
    #             send email with Amazon Pinpoint, you first have to verify it. By verifying an address, you
    #             demonstrate that you're the owner of the address, and that you've given Amazon Pinpoint permission
    #             to send email from the address.</p>
    #         <p>When you verify an email address, Amazon Pinpoint sends an email to the address. Your email
    #             address is verified as soon as you follow the link in the verification email.
    #             
    #         </p>
    #         <p>When you verify a domain, this operation provides a set of DKIM tokens, which you can
    #             convert into CNAME tokens. You add these CNAME tokens to the DNS configuration for your
    #             domain. Your domain is verified when Amazon Pinpoint detects these records in the DNS
    #             configuration for your domain. It usually takes around 72 hours to complete the domain
    #             verification process.</p>
    # @param [Hash, Types::CreateEmailIdentityRequest] params
    # @option params [String] :email_identity
    #   <p>The email address or domain that you want to verify.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the email identity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_email_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_type: "EMAIL_ADDRESS" # One of: ["EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"],
    #     verified_for_sending_status: false,
    #     dkim_attributes: {
    #       signing_enabled: false,
    #       status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"],
    #       tokens: ["DnsToken"]
    #     }
    #   }
    # @return [Types::CreateEmailIdentityResponse]
    def create_email_identity(params = {}, options = {})
      request = build_request(:create_email_identity, params)
      request.send_request(options)
    end

    # <p>Delete an existing configuration set.</p>
    #         <p>In Amazon Pinpoint, <i>configuration sets</i> are groups of rules that you can
    #             apply to the emails you send. You apply a configuration set to an email by including a
    #             reference to the configuration set in the headers of the email. When you apply a
    #             configuration set to an email, all of the rules in that configuration set are applied to
    #             the email.</p>
    # @param [Hash, Types::DeleteConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConfigurationSetResponse]
    def delete_configuration_set(params = {}, options = {})
      request = build_request(:delete_configuration_set, params)
      request.send_request(options)
    end

    # <p>Delete an event destination.</p>
    #         <p>In Amazon Pinpoint, <i>events</i> include message sends, deliveries, opens,
    #             clicks, bounces, and complaints. <i>Event destinations</i> are places that
    #             you can send information about these events to. For example, you can send event data to
    #             Amazon SNS to receive notifications when you receive bounces or complaints, or you can use
    #             Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>
    # @param [Hash, Types::DeleteConfigurationSetEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination that you want to
    #               delete.</p>
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration_set_event_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConfigurationSetEventDestinationResponse]
    def delete_configuration_set_event_destination(params = {}, options = {})
      request = build_request(:delete_configuration_set_event_destination, params)
      request.send_request(options)
    end

    # <p>Delete a dedicated IP pool.</p>
    # @param [Hash, Types::DeleteDedicatedIpPoolRequest] params
    # @option params [String] :pool_name
    #   <p>The name of the dedicated IP pool that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_name: "PoolName", # required
    #   }
    #   options = {}
    #   response = client.delete_dedicated_ip_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDedicatedIpPoolResponse]
    def delete_dedicated_ip_pool(params = {}, options = {})
      request = build_request(:delete_dedicated_ip_pool, params)
      request.send_request(options)
    end

    # <p>Deletes an email identity that you previously verified for use with Amazon Pinpoint. An identity
    #             can be either an email address or a domain name.</p>
    # @param [Hash, Types::DeleteEmailIdentityRequest] params
    # @option params [String] :email_identity
    #   <p>The identity (that is, the email address or domain) that you want to delete from your
    #               Amazon Pinpoint account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #   }
    #   options = {}
    #   response = client.delete_email_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEmailIdentityResponse]
    def delete_email_identity(params = {}, options = {})
      request = build_request(:delete_email_identity, params)
      request.send_request(options)
    end

    # <p>Obtain information about the email-sending status and capabilities of your Amazon Pinpoint
    #             account in the current AWS Region.</p>
    # @param [Hash, Types::GetAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     send_quota: {
    #       max24_hour_send: 1.0,
    #       max_send_rate: 1.0,
    #       sent_last24_hours: 1.0
    #     },
    #     sending_enabled: false,
    #     dedicated_ip_auto_warmup_enabled: false,
    #     enforcement_status: "GeneralEnforcementStatus",
    #     production_access_enabled: false
    #   }
    # @return [Types::GetAccountResponse]
    def get_account(params = {}, options = {})
      request = build_request(:get_account, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of the blacklists that your dedicated IP addresses appear on.</p>
    # @param [Hash, Types::GetBlacklistReportsRequest] params
    # @option params [Array<String>] :blacklist_item_names
    #   <p>A list of IP addresses that you want to retrieve blacklist information about. You can
    #               only specify the dedicated IP addresses that you use to send email using Amazon Pinpoint or
    #               Amazon SES.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     blacklist_item_names: ["BlacklistItemName"], # required
    #   }
    #   options = {}
    #   response = client.get_blacklist_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blacklist_report: { # required
    #       "BlacklistItemName" => [
    #         {
    #           rbl_name: "RblName",
    #           listing_time: Time.now,
    #           description: "BlacklistingDescription"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetBlacklistReportsResponse]
    def get_blacklist_reports(params = {}, options = {})
      request = build_request(:get_blacklist_reports, params)
      request.send_request(options)
    end

    # <p>Get information about an existing configuration set, including the dedicated IP pool
    #             that it's associated with, whether or not it's enabled for sending email, and
    #             more.</p>
    #         <p>In Amazon Pinpoint, <i>configuration sets</i> are groups of rules that you can
    #             apply to the emails you send. You apply a configuration set to an email by including a
    #             reference to the configuration set in the headers of the email. When you apply a
    #             configuration set to an email, all of the rules in that configuration set are applied to
    #             the email.</p>
    # @param [Hash, Types::GetConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to obtain more information
    #               about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #   }
    #   options = {}
    #   response = client.get_configuration_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_name: "ConfigurationSetName",
    #     tracking_options: {
    #       custom_redirect_domain: "CustomRedirectDomain", # required
    #     },
    #     delivery_options: {
    #       tls_policy: "REQUIRE" # One of: ["REQUIRE", "OPTIONAL"],
    #       sending_pool_name: "PoolName"
    #     },
    #     reputation_options: {
    #       reputation_metrics_enabled: false,
    #       last_fresh_start: Time.now
    #     },
    #     sending_options: {
    #       sending_enabled: false
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetConfigurationSetResponse]
    def get_configuration_set(params = {}, options = {})
      request = build_request(:get_configuration_set, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of event destinations that are associated with a configuration
    #             set.</p>
    #         <p>In Amazon Pinpoint, <i>events</i> include message sends, deliveries, opens,
    #             clicks, bounces, and complaints. <i>Event destinations</i> are places that
    #             you can send information about these events to. For example, you can send event data to
    #             Amazon SNS to receive notifications when you receive bounces or complaints, or you can use
    #             Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>
    # @param [Hash, Types::GetConfigurationSetEventDestinationsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #   }
    #   options = {}
    #   response = client.get_configuration_set_event_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_destinations: [
    #       {
    #         name: "EventDestinationName", # required
    #         enabled: false,
    #         matching_event_types: ["SEND" # One of: ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE"]], # required
    #         kinesis_firehose_destination: {
    #           iam_role_arn: "AmazonResourceName", # required
    #           delivery_stream_arn: "AmazonResourceName", # required
    #         },
    #         cloud_watch_destination: {
    #           dimension_configurations: [ # required
    #             {
    #               dimension_name: "DimensionName", # required
    #               dimension_value_source: "MESSAGE_TAG" # One of: ["MESSAGE_TAG", "EMAIL_HEADER", "LINK_TAG"], # required
    #               default_dimension_value: "DefaultDimensionValue", # required
    #             }
    #           ]
    #         },
    #         sns_destination: {
    #           topic_arn: "AmazonResourceName", # required
    #         },
    #         pinpoint_destination: {
    #           application_arn: "AmazonResourceName"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetConfigurationSetEventDestinationsResponse]
    def get_configuration_set_event_destinations(params = {}, options = {})
      request = build_request(:get_configuration_set_event_destinations, params)
      request.send_request(options)
    end

    # <p>Get information about a dedicated IP address, including the name of the dedicated IP
    #             pool that it's associated with, as well information about the automatic warm-up process
    #             for the address.</p>
    # @param [Hash, Types::GetDedicatedIpRequest] params
    # @option params [String] :ip
    #   <p>The IP address that you want to obtain more information about. The value you specify
    #               has to be a dedicated IP address that's assocaited with your Amazon Pinpoint account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ip: "Ip", # required
    #   }
    #   options = {}
    #   response = client.get_dedicated_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dedicated_ip: {
    #       ip: "Ip", # required
    #       warmup_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "DONE"], # required
    #       warmup_percentage: 1, # required
    #       pool_name: "PoolName"
    #     }
    #   }
    # @return [Types::GetDedicatedIpResponse]
    def get_dedicated_ip(params = {}, options = {})
      request = build_request(:get_dedicated_ip, params)
      request.send_request(options)
    end

    # <p>List the dedicated IP addresses that are associated with your Amazon Pinpoint
    #             account.</p>
    # @param [Hash, Types::GetDedicatedIpsRequest] params
    # @option params [String] :pool_name
    #   <p>The name of the IP pool that the dedicated IP address is associated with.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>GetDedicatedIps</code> to indicate the
    #               position of the dedicated IP pool in the list of IP pools.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>GetDedicatedIpsRequest</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_name: "PoolName",
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.get_dedicated_ips(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dedicated_ips: [
    #       {
    #         ip: "Ip", # required
    #         warmup_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "DONE"], # required
    #         warmup_percentage: 1, # required
    #         pool_name: "PoolName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetDedicatedIpsResponse]
    def get_dedicated_ips(params = {}, options = {})
      request = build_request(:get_dedicated_ips, params)
      request.send_request(options)
    end

    # <p>Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account.
    #             When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and
    #             other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the
    #             ability to perform predictive inbox placement tests.</p>
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon Pinpoint. For more information about the
    #             features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/pinpoint/pricing/">Amazon Pinpoint Pricing</a>.</p>
    # @param [Hash, Types::GetDeliverabilityDashboardOptionsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_deliverability_dashboard_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_enabled: false, # required
    #     subscription_expiry_date: Time.now,
    #     account_status: "ACTIVE" # One of: ["ACTIVE", "PENDING_EXPIRATION", "DISABLED"],
    #     active_subscribed_domains: [
    #       {
    #         domain: "Domain",
    #         subscription_start_date: Time.now,
    #         inbox_placement_tracking_option: {
    #           global: false,
    #           tracked_isps: ["IspName"]
    #         }
    #       }
    #     ],
    #     pending_expiration_subscribed_domains: [
    #       {
    #         domain: "Domain",
    #         subscription_start_date: Time.now,
    #         inbox_placement_tracking_option: {
    #           global: false,
    #           tracked_isps: ["IspName"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetDeliverabilityDashboardOptionsResponse]
    def get_deliverability_dashboard_options(params = {}, options = {})
      request = build_request(:get_deliverability_dashboard_options, params)
      request.send_request(options)
    end

    # <p>Retrieve the results of a predictive inbox placement test.</p>
    # @param [Hash, Types::GetDeliverabilityTestReportRequest] params
    # @option params [String] :report_id
    #   <p>A unique string that identifies the predictive inbox placement test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_id: "ReportId", # required
    #   }
    #   options = {}
    #   response = client.get_deliverability_test_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deliverability_test_report: { # required
    #       report_id: "ReportId",
    #       report_name: "ReportName",
    #       subject: "DeliverabilityTestSubject",
    #       from_email_address: "EmailAddress",
    #       create_date: Time.now,
    #       deliverability_test_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED"]
    #     },
    #     overall_placement: { # required
    #       inbox_percentage: 1.0,
    #       spam_percentage: 1.0,
    #       missing_percentage: 1.0,
    #       spf_percentage: 1.0,
    #       dkim_percentage: 1.0
    #     },
    #     isp_placements: [ # required
    #       {
    #         isp_name: "IspName",
    #         placement_statistics: {
    #           inbox_percentage: 1.0,
    #           spam_percentage: 1.0,
    #           missing_percentage: 1.0,
    #           spf_percentage: 1.0,
    #           dkim_percentage: 1.0
    #         }
    #       }
    #     ],
    #     message: "MessageContent",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetDeliverabilityTestReportResponse]
    def get_deliverability_test_report(params = {}, options = {})
      request = build_request(:get_deliverability_test_report, params)
      request.send_request(options)
    end

    # <p>Retrieve all the deliverability data for a specific campaign. This data is available
    #             for a campaign only if the campaign sent email by using a domain that the
    #             Deliverability dashboard is enabled for (<code>PutDeliverabilityDashboardOption</code>
    #             operation).</p>
    # @param [Hash, Types::GetDomainDeliverabilityCampaignRequest] params
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign. Amazon Pinpoint automatically generates and assigns this
    #               identifier to a campaign. This value is not the same as the campaign identifier that
    #               Amazon Pinpoint assigns to campaigns that you create and manage by using the Amazon Pinpoint API or the
    #               Amazon Pinpoint console.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     campaign_id: "CampaignId", # required
    #   }
    #   options = {}
    #   response = client.get_domain_deliverability_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_deliverability_campaign: { # required
    #       campaign_id: "CampaignId",
    #       image_url: "ImageUrl",
    #       subject: "Subject",
    #       from_address: "Identity",
    #       sending_ips: ["Ip"],
    #       first_seen_date_time: Time.now,
    #       last_seen_date_time: Time.now,
    #       inbox_count: 1,
    #       spam_count: 1,
    #       read_rate: 1.0,
    #       delete_rate: 1.0,
    #       read_delete_rate: 1.0,
    #       projected_volume: 1,
    #       esps: ["Esp"]
    #     }
    #   }
    # @return [Types::GetDomainDeliverabilityCampaignResponse]
    def get_domain_deliverability_campaign(params = {}, options = {})
      request = build_request(:get_domain_deliverability_campaign, params)
      request.send_request(options)
    end

    # <p>Retrieve inbox placement and engagement rates for the domains that you use to send
    #             email.</p>
    # @param [Hash, Types::GetDomainStatisticsReportRequest] params
    # @option params [String] :domain
    #   <p>The domain that you want to obtain deliverability metrics for.</p>
    # @option params [Time] :start_date
    #   <p>The first day (in Unix time) that you want to obtain domain deliverability metrics
    #               for.</p>
    # @option params [Time] :end_date
    #   <p>The last day (in Unix time) that you want to obtain domain deliverability metrics for.
    #               The <code>EndDate</code> that you specify has to be less than or equal to 30 days after
    #               the <code>StartDate</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "Identity", # required
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #   }
    #   options = {}
    #   response = client.get_domain_statistics_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     overall_volume: { # required
    #       volume_statistics: {
    #         inbox_raw_count: 1,
    #         spam_raw_count: 1,
    #         projected_inbox: 1,
    #         projected_spam: 1
    #       },
    #       read_rate_percent: 1.0,
    #       domain_isp_placements: [
    #         {
    #           isp_name: "IspName",
    #           inbox_raw_count: 1,
    #           spam_raw_count: 1,
    #           inbox_percentage: 1.0,
    #           spam_percentage: 1.0
    #         }
    #       ]
    #     },
    #     daily_volumes: [ # required
    #       {
    #         start_date: Time.now,
    #         volume_statistics: {
    #           inbox_raw_count: 1,
    #           spam_raw_count: 1,
    #           projected_inbox: 1,
    #           projected_spam: 1
    #         },
    #         domain_isp_placements: [
    #           {
    #             isp_name: "IspName",
    #             inbox_raw_count: 1,
    #             spam_raw_count: 1,
    #             inbox_percentage: 1.0,
    #             spam_percentage: 1.0
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetDomainStatisticsReportResponse]
    def get_domain_statistics_report(params = {}, options = {})
      request = build_request(:get_domain_statistics_report, params)
      request.send_request(options)
    end

    # <p>Provides information about a specific identity associated with your Amazon Pinpoint account,
    #             including the identity's verification status, its DKIM authentication status, and its
    #             custom Mail-From settings.</p>
    # @param [Hash, Types::GetEmailIdentityRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity that you want to retrieve details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #   }
    #   options = {}
    #   response = client.get_email_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_type: "EMAIL_ADDRESS" # One of: ["EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"],
    #     feedback_forwarding_status: false,
    #     verified_for_sending_status: false,
    #     dkim_attributes: {
    #       signing_enabled: false,
    #       status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"],
    #       tokens: ["DnsToken"]
    #     },
    #     mail_from_attributes: {
    #       mail_from_domain: "MailFromDomainName", # required
    #       mail_from_domain_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE"], # required
    #       behavior_on_mx_failure: "USE_DEFAULT_VALUE" # One of: ["USE_DEFAULT_VALUE", "REJECT_MESSAGE"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetEmailIdentityResponse]
    def get_email_identity(params = {}, options = {})
      request = build_request(:get_email_identity, params)
      request.send_request(options)
    end

    # <p>List all of the configuration sets associated with your Amazon Pinpoint account in the current
    #             region.</p>
    #         <p>In Amazon Pinpoint, <i>configuration sets</i> are groups of rules that you can
    #             apply to the emails you send. You apply a configuration set to an email by including a
    #             reference to the configuration set in the headers of the email. When you apply a
    #             configuration set to an email, all of the rules in that configuration set are applied to
    #             the email.</p>
    # @param [Hash, Types::ListConfigurationSetsRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListConfigurationSets</code> to
    #               indicate the position in the list of configuration sets.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListConfigurationSets</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_configuration_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_sets: ["ConfigurationSetName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConfigurationSetsResponse]
    def list_configuration_sets(params = {}, options = {})
      request = build_request(:list_configuration_sets, params)
      request.send_request(options)
    end

    # <p>List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current
    #             AWS Region.</p>
    # @param [Hash, Types::ListDedicatedIpPoolsRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListDedicatedIpPools</code> to indicate
    #               the position in the list of dedicated IP pools.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListDedicatedIpPools</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_dedicated_ip_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dedicated_ip_pools: ["PoolName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDedicatedIpPoolsResponse]
    def list_dedicated_ip_pools(params = {}, options = {})
      request = build_request(:list_dedicated_ip_pools, params)
      request.send_request(options)
    end

    # <p>Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For
    #             predictive inbox placement tests that are complete, you can use the <code>GetDeliverabilityTestReport</code>
    #             operation to view the results.</p>
    # @param [Hash, Types::ListDeliverabilityTestReportsRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListDeliverabilityTestReports</code> to
    #               indicate the position in the list of predictive inbox placement tests.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListDeliverabilityTestReports</code>. If the number of results is larger than
    #               the number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #           <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_deliverability_test_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deliverability_test_reports: [ # required
    #       {
    #         report_id: "ReportId",
    #         report_name: "ReportName",
    #         subject: "DeliverabilityTestSubject",
    #         from_email_address: "EmailAddress",
    #         create_date: Time.now,
    #         deliverability_test_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeliverabilityTestReportsResponse]
    def list_deliverability_test_reports(params = {}, options = {})
      request = build_request(:list_deliverability_test_reports, params)
      request.send_request(options)
    end

    # <p>Retrieve deliverability data for all the campaigns that used a specific domain to send
    #             email during a specified time range. This data is available for a domain only if you
    #             enabled the Deliverability dashboard (<code>PutDeliverabilityDashboardOption</code> operation)
    #             for the domain.</p>
    # @param [Hash, Types::ListDomainDeliverabilityCampaignsRequest] params
    # @option params [Time] :start_date
    #   <p>The first day, in Unix time format, that you want to obtain deliverability data
    #               for.</p>
    # @option params [Time] :end_date
    #   <p>The last day, in Unix time format, that you want to obtain deliverability data for.
    #               This value has to be less than or equal to 30 days after the value of the
    #                   <code>StartDate</code> parameter.</p>
    # @option params [String] :subscribed_domain
    #   <p>The domain to obtain deliverability data for.</p>
    # @option params [String] :next_token
    #   <p>A token that’s returned from a previous call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the
    #               position of a campaign in the list of campaigns.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to include in response to a single call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. If the number of results
    #               is larger than the number that you specify in this parameter, the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #     subscribed_domain: "Domain", # required
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_domain_deliverability_campaigns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_deliverability_campaigns: [ # required
    #       {
    #         campaign_id: "CampaignId",
    #         image_url: "ImageUrl",
    #         subject: "Subject",
    #         from_address: "Identity",
    #         sending_ips: ["Ip"],
    #         first_seen_date_time: Time.now,
    #         last_seen_date_time: Time.now,
    #         inbox_count: 1,
    #         spam_count: 1,
    #         read_rate: 1.0,
    #         delete_rate: 1.0,
    #         read_delete_rate: 1.0,
    #         projected_volume: 1,
    #         esps: ["Esp"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDomainDeliverabilityCampaignsResponse]
    def list_domain_deliverability_campaigns(params = {}, options = {})
      request = build_request(:list_domain_deliverability_campaigns, params)
      request.send_request(options)
    end

    # <p>Returns a list of all of the email identities that are associated with your Amazon Pinpoint
    #             account. An identity can be either an email address or a domain. This operation returns
    #             identities that are verified as well as those that aren't.</p>
    # @param [Hash, Types::ListEmailIdentitiesRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListEmailIdentities</code> to indicate
    #               the position in the list of identities.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListEmailIdentities</code>. If
    #               the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #           <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_email_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     email_identities: [
    #       {
    #         identity_type: "EMAIL_ADDRESS" # One of: ["EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"],
    #         identity_name: "Identity",
    #         sending_enabled: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEmailIdentitiesResponse]
    def list_email_identities(params = {}, options = {})
      request = build_request(:list_email_identities, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of the tags (keys and values) that are associated with a specified
    #             resource. A <i>tag</i> is a label that you optionally define and associate
    #             with a resource in Amazon Pinpoint. Each tag consists of a required <i>tag
    #                 key</i> and an optional associated <i>tag value</i>. A tag key
    #             is a general label that acts as a category for more specific tag values. A tag value
    #             acts as a descriptor within a tag key.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tag
    #               information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
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

    # <p>Enable or disable the automatic warm-up feature for dedicated IP addresses.</p>
    # @param [Hash, Types::PutAccountDedicatedIpWarmupAttributesRequest] params
    # @option params [Boolean] :auto_warmup_enabled
    #   <p>Enables or disables the automatic warm-up feature for dedicated IP addresses that are
    #               associated with your Amazon Pinpoint account in the current AWS Region. Set to <code>true</code>
    #               to enable the automatic warm-up feature, or set to <code>false</code> to disable
    #               it.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_warmup_enabled: false
    #   }
    #   options = {}
    #   response = client.put_account_dedicated_ip_warmup_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAccountDedicatedIpWarmupAttributesResponse]
    def put_account_dedicated_ip_warmup_attributes(params = {}, options = {})
      request = build_request(:put_account_dedicated_ip_warmup_attributes, params)
      request.send_request(options)
    end

    # <p>Enable or disable the ability of your account to send email.</p>
    # @param [Hash, Types::PutAccountSendingAttributesRequest] params
    # @option params [Boolean] :sending_enabled
    #   <p>Enables or disables your account's ability to send email. Set to <code>true</code> to
    #               enable email sending, or set to <code>false</code> to disable email sending.</p>
    #           <note>
    #               <p>If AWS paused your account's ability to send email, you can't use this operation
    #                   to resume your account's ability to send email.</p>
    #           </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     sending_enabled: false
    #   }
    #   options = {}
    #   response = client.put_account_sending_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAccountSendingAttributesResponse]
    def put_account_sending_attributes(params = {}, options = {})
      request = build_request(:put_account_sending_attributes, params)
      request.send_request(options)
    end

    # <p>Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools
    #             to create groups of dedicated IP addresses for sending specific types of email.</p>
    # @param [Hash, Types::PutConfigurationSetDeliveryOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to associate with a dedicated IP
    #               pool.</p>
    # @option params [String] :tls_policy
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
    #               delivered if a TLS connection can be established. If the value is <code>Optional</code>,
    #               messages can be delivered in plain text if a TLS connection can't be established.</p>
    # @option params [String] :sending_pool_name
    #   <p>The name of the dedicated IP pool that you want to associate with the configuration
    #               set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tls_policy: "REQUIRE" # One of: ["REQUIRE", "OPTIONAL"],
    #     sending_pool_name: "SendingPoolName"
    #   }
    #   options = {}
    #   response = client.put_configuration_set_delivery_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutConfigurationSetDeliveryOptionsResponse]
    def put_configuration_set_delivery_options(params = {}, options = {})
      request = build_request(:put_configuration_set_delivery_options, params)
      request.send_request(options)
    end

    # <p>Enable or disable collection of reputation metrics for emails that you send using a
    #             particular configuration set in a specific AWS Region.</p>
    # @param [Hash, Types::PutConfigurationSetReputationOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to enable or disable reputation metric
    #               tracking for.</p>
    # @option params [Boolean] :reputation_metrics_enabled
    #   <p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration
    #               set. If <code>false</code>, tracking of reputation metrics is disabled for the
    #               configuration set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     reputation_metrics_enabled: false
    #   }
    #   options = {}
    #   response = client.put_configuration_set_reputation_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutConfigurationSetReputationOptionsResponse]
    def put_configuration_set_reputation_options(params = {}, options = {})
      request = build_request(:put_configuration_set_reputation_options, params)
      request.send_request(options)
    end

    # <p>Enable or disable email sending for messages that use a particular configuration set
    #             in a specific AWS Region.</p>
    # @param [Hash, Types::PutConfigurationSetSendingOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to enable or disable email sending
    #               for.</p>
    # @option params [Boolean] :sending_enabled
    #   <p>If <code>true</code>, email sending is enabled for the configuration set. If
    #                   <code>false</code>, email sending is disabled for the configuration set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     sending_enabled: false
    #   }
    #   options = {}
    #   response = client.put_configuration_set_sending_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutConfigurationSetSendingOptionsResponse]
    def put_configuration_set_sending_options(params = {}, options = {})
      request = build_request(:put_configuration_set_sending_options, params)
      request.send_request(options)
    end

    # <p>Specify a custom domain to use for open and click tracking elements in email that you
    #             send using Amazon Pinpoint.</p>
    # @param [Hash, Types::PutConfigurationSetTrackingOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to add a custom tracking domain
    #               to.</p>
    # @option params [String] :custom_redirect_domain
    #   <p>The domain that you want to use to track open and click events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     custom_redirect_domain: "CustomRedirectDomain"
    #   }
    #   options = {}
    #   response = client.put_configuration_set_tracking_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutConfigurationSetTrackingOptionsResponse]
    def put_configuration_set_tracking_options(params = {}, options = {})
      request = build_request(:put_configuration_set_tracking_options, params)
      request.send_request(options)
    end

    # <p>Move a dedicated IP address to an existing dedicated IP pool.</p>
    #         <note>
    #             <p>The dedicated IP address that you specify must already exist, and must be
    #                 associated with your Amazon Pinpoint account.
    #                 
    #             </p>
    #             <p>The dedicated IP pool you specify must already exist. You can create a new pool by
    #                 using the <code>CreateDedicatedIpPool</code> operation.</p>
    # 
    #         </note>
    # @param [Hash, Types::PutDedicatedIpInPoolRequest] params
    # @option params [String] :ip
    #   <p>The IP address that you want to move to the dedicated IP pool. The value you specify
    #               has to be a dedicated IP address that's associated with your Amazon Pinpoint account.</p>
    # @option params [String] :destination_pool_name
    #   <p>The name of the IP pool that you want to add the dedicated IP address to. You have to
    #               specify an IP pool that already exists.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ip: "Ip", # required
    #     destination_pool_name: "PoolName", # required
    #   }
    #   options = {}
    #   response = client.put_dedicated_ip_in_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutDedicatedIpInPoolResponse]
    def put_dedicated_ip_in_pool(params = {}, options = {})
      request = build_request(:put_dedicated_ip_in_pool, params)
      request.send_request(options)
    end

    # <p></p>
    # @param [Hash, Types::PutDedicatedIpWarmupAttributesRequest] params
    # @option params [String] :ip
    #   <p>The dedicated IP address that you want to update the warm-up attributes for.</p>
    # @option params [Integer] :warmup_percentage
    #   <p>The warm-up percentage that you want to associate with the dedicated IP
    #               address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ip: "Ip", # required
    #     warmup_percentage: 1, # required
    #   }
    #   options = {}
    #   response = client.put_dedicated_ip_warmup_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutDedicatedIpWarmupAttributesResponse]
    def put_dedicated_ip_warmup_attributes(params = {}, options = {})
      request = build_request(:put_dedicated_ip_warmup_attributes, params)
      request.send_request(options)
    end

    # <p>Enable or disable the Deliverability dashboard for your Amazon Pinpoint account. When you enable the
    #             Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for
    #             the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform
    #             predictive inbox placement tests.</p>
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon Pinpoint. For more information about the
    #             features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/pinpoint/pricing/">Amazon Pinpoint Pricing</a>.</p>
    # @param [Hash, Types::PutDeliverabilityDashboardOptionRequest] params
    # @option params [Boolean] :dashboard_enabled
    #   <p>Specifies whether to enable the Deliverability dashboard for your Amazon Pinpoint account. To enable the
    #               dashboard, set this value to <code>true</code>.</p>
    # @option params [Array<Types::DomainDeliverabilityTrackingOption>] :subscribed_domains
    #   <p>An array of objects, one for each verified domain that you use to send email and
    #               enabled the Deliverability dashboard for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_enabled: false, # required
    #     subscribed_domains: [
    #       {
    #         domain: "Domain",
    #         subscription_start_date: Time.now,
    #         inbox_placement_tracking_option: {
    #           global: false,
    #           tracked_isps: ["IspName"]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_deliverability_dashboard_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutDeliverabilityDashboardOptionResponse]
    def put_deliverability_dashboard_option(params = {}, options = {})
      request = build_request(:put_deliverability_dashboard_option, params)
      request.send_request(options)
    end

    # <p>Used to enable or disable DKIM authentication for an email identity.</p>
    # @param [Hash, Types::PutEmailIdentityDkimAttributesRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity that you want to change the DKIM settings for.</p>
    # @option params [Boolean] :signing_enabled
    #   <p>Sets the DKIM signing configuration for the identity.</p>
    #           <p>When you set this value <code>true</code>, then the messages that Amazon Pinpoint sends from the
    #               identity are DKIM-signed. When you set this value to <code>false</code>, then the
    #               messages that Amazon Pinpoint sends from the identity aren't DKIM-signed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     signing_enabled: false
    #   }
    #   options = {}
    #   response = client.put_email_identity_dkim_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutEmailIdentityDkimAttributesResponse]
    def put_email_identity_dkim_attributes(params = {}, options = {})
      request = build_request(:put_email_identity_dkim_attributes, params)
      request.send_request(options)
    end

    # <p>Used to enable or disable feedback forwarding for an identity. This setting determines
    #             what happens when an identity is used to send an email that results in a bounce or
    #             complaint event.</p>
    #         <p>When you enable feedback forwarding, Amazon Pinpoint sends you email notifications when bounce
    #             or complaint events occur. Amazon Pinpoint sends this notification to the address that you
    #             specified in the Return-Path header of the original email.</p>
    #         <p>When you disable feedback forwarding, Amazon Pinpoint sends notifications through other
    #             mechanisms, such as by notifying an Amazon SNS topic. You're required to have a method of
    #             tracking bounces and complaints. If you haven't set up another mechanism for receiving
    #             bounce or complaint notifications, Amazon Pinpoint sends an email notification when these events
    #             occur (even if this setting is disabled).</p>
    # @param [Hash, Types::PutEmailIdentityFeedbackAttributesRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity that you want to configure bounce and complaint feedback forwarding
    #               for.</p>
    # @option params [Boolean] :email_forwarding_enabled
    #   <p>Sets the feedback forwarding configuration for the identity.</p>
    #           <p>If the value is <code>true</code>, Amazon Pinpoint sends you email notifications when bounce or
    #               complaint events occur. Amazon Pinpoint sends this notification to the address that you specified
    #               in the Return-Path header of the original email.</p>
    #           <p>When you set this value to <code>false</code>, Amazon Pinpoint sends notifications through other
    #               mechanisms, such as by notifying an Amazon SNS topic or another event destination. You're
    #               required to have a method of tracking bounces and complaints. If you haven't set up
    #               another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email
    #               notification when these events occur (even if this setting is disabled).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     email_forwarding_enabled: false
    #   }
    #   options = {}
    #   response = client.put_email_identity_feedback_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutEmailIdentityFeedbackAttributesResponse]
    def put_email_identity_feedback_attributes(params = {}, options = {})
      request = build_request(:put_email_identity_feedback_attributes, params)
      request.send_request(options)
    end

    # <p>Used to enable or disable the custom Mail-From domain configuration for an email
    #             identity.</p>
    # @param [Hash, Types::PutEmailIdentityMailFromAttributesRequest] params
    # @option params [String] :email_identity
    #   <p>The verified email identity that you want to set up the custom MAIL FROM domain
    #               for.</p>
    # @option params [String] :mail_from_domain
    #   <p> The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM
    #               domain must meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It has to be a subdomain of the verified identity.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be used to receive email.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be used in a "From" address if the MAIL FROM domain is a destination
    #                       for feedback forwarding emails.</p>
    #               </li>
    #            </ul>
    # @option params [String] :behavior_on_mx_failure
    #   <p>The action that you want Amazon Pinpoint to take if it can't read the required MX record when
    #               you send an email. When you set this value to <code>UseDefaultValue</code>, Amazon Pinpoint uses
    #                   <i>amazonses.com</i> as the MAIL FROM domain. When you set this value
    #               to <code>RejectMessage</code>, Amazon Pinpoint returns a <code>MailFromDomainNotVerified</code>
    #               error, and doesn't attempt to deliver the email.</p>
    #           <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the
    #                   <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>
    #               states.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     mail_from_domain: "MailFromDomainName",
    #     behavior_on_mx_failure: "USE_DEFAULT_VALUE" # One of: ["USE_DEFAULT_VALUE", "REJECT_MESSAGE"]
    #   }
    #   options = {}
    #   response = client.put_email_identity_mail_from_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutEmailIdentityMailFromAttributesResponse]
    def put_email_identity_mail_from_attributes(params = {}, options = {})
      request = build_request(:put_email_identity_mail_from_attributes, params)
      request.send_request(options)
    end

    # <p>Sends an email message. You can use the Amazon Pinpoint Email API to send two types of
    #             messages:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Simple</b> – A standard email message. When
    #                     you create this type of message, you specify the sender, the recipient, and the
    #                     message body, and Amazon Pinpoint assembles the message for you.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Raw</b> –  A raw, MIME-formatted email
    #                     message. When you send this type of email, you have to specify all of the
    #                     message headers, as well as the message body. You can use this message type to
    #                     send messages that contain attachments. The message that you specify has to be a
    #                     valid MIME message.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::SendEmailRequest] params
    # @option params [String] :from_email_address
    #   <p>The email address that you want to use as the "From" address for the email. The
    #               address that you specify has to be verified.
    #               </p>
    # @option params [Types::Destination] :destination
    #   <p>An object that contains the recipients of the email message.</p>
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The "Reply-to" email addresses for the message. When the recipient replies to the
    #               message, each Reply-to address receives the reply.</p>
    # @option params [String] :feedback_forwarding_email_address
    #   <p>The address that Amazon Pinpoint should send bounce and complaint notifications to.</p>
    # @option params [Types::EmailContent] :content
    #   <p>An object that contains the body of the message. You can send either a Simple message
    #               or a Raw message.</p>
    # @option params [Array<Types::MessageTag>] :email_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendEmail</code> operation. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events. </p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to use when sending the email.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     from_email_address: "EmailAddress",
    #     destination: { # required
    #       to_addresses: ["EmailAddress"],
    #       cc_addresses: ["EmailAddress"],
    #       bcc_addresses: ["EmailAddress"]
    #     },
    #     reply_to_addresses: ["EmailAddress"],
    #     feedback_forwarding_email_address: "EmailAddress",
    #     content: { # required
    #       simple: {
    #         subject: { # required
    #           data: "MessageData", # required
    #           charset: "Charset"
    #         },
    #         body: { # required
    #           text: {
    #             data: "MessageData", # required
    #             charset: "Charset"
    #           },
    #           html: {
    #             data: "MessageData", # required
    #             charset: "Charset"
    #           }
    #         }
    #       },
    #       raw: {
    #         data: "data", # required
    #       },
    #       template: {
    #         template_arn: "TemplateArn",
    #         template_data: "TemplateData"
    #       }
    #     },
    #     email_tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       }
    #     ],
    #     configuration_set_name: "ConfigurationSetName"
    #   }
    #   options = {}
    #   response = client.send_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "OutboundMessageId"
    #   }
    # @return [Types::SendEmailResponse]
    def send_email(params = {}, options = {})
      request = build_request(:send_email, params)
      request.send_request(options)
    end

    # <p>Add one or more tags (keys and values) to a specified resource. A
    #                 <i>tag</i> is a label that you optionally define and associate with a
    #             resource in Amazon Pinpoint. Tags can help you categorize and manage resources in different ways,
    #             such as by purpose, owner, environment, or other criteria. A resource can have as many
    #             as 50 tags.</p>
    #         <p>Each tag consists of a required <i>tag key</i> and an
    #                 associated <i>tag value</i>, both of which you define. A tag key is a
    #             general label that acts as a category for more specific tag values. A tag value acts as
    #             a descriptor within a tag key.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add one or more tags
    #               to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of the tags that you want to add to the resource. A tag consists of a required
    #               tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum
    #               length of a tag key is 128 characters. The maximum length of a tag value is 256
    #               characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Remove one or more tags (keys and values) from a specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove one or more
    #               tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tags (tag keys) that you want to remove from the resource. When you specify a tag
    #               key, the action removes both that key and its associated tag value.</p>
    #           <p>To remove more than one tag from the resource, append the <code>TagKeys</code>
    #               parameter and argument for each additional tag to remove, separated by an ampersand. For
    #               example:
    #                   <code>/v1/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2</code>
    #           </p>
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

    # <p>Update the configuration of an event destination for a configuration set.</p>
    #         <p>In Amazon Pinpoint, <i>events</i> include message sends, deliveries, opens,
    #             clicks, bounces, and complaints. <i>Event destinations</i> are places that
    #             you can send information about these events to. For example, you can send event data to
    #             Amazon SNS to receive notifications when you receive bounces or complaints, or you can use
    #             Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>
    # @param [Hash, Types::UpdateConfigurationSetEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination that you want to
    #               modify.</p>
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination that you want to modify.</p>
    # @option params [Types::EventDestinationDefinition] :event_destination
    #   <p>An object that defines the event destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #     event_destination: { # required
    #       enabled: false,
    #       matching_event_types: ["SEND" # One of: ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE"]],
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "MESSAGE_TAG" # One of: ["MESSAGE_TAG", "EMAIL_HEADER", "LINK_TAG"], # required
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           }
    #         ]
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
    #       },
    #       pinpoint_destination: {
    #         application_arn: "AmazonResourceName"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_configuration_set_event_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateConfigurationSetEventDestinationResponse]
    def update_configuration_set_event_destination(params = {}, options = {})
      request = build_request(:update_configuration_set_event_destination, params)
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
      context[:gem_name] = 'aws-sdk-pinpointemail'
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
