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
require 'aws-sdk-core/plugins/rest_json'

module Aws::SESv2
  # An API client for Aws::SESv2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SimpleEmailServiceV2

    add_plugin(::Aws::SESv2::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJson)

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
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::SESv2::EndpointProvider] :endpoint_provider
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

    # <p>Retrieves batches of metric data collected based on your sending activity.</p>
    #          <p>You can execute this operation no more than 16 times per second,
    #             and with at most 160 queries from the batches per second (cumulative).</p>
    # @param [Hash, Types::BatchGetMetricDataRequest] params
    # @option params [Array<Types::BatchGetMetricDataQuery>] :queries
    #   <p>A list of queries for metrics to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     queries: [ # required
    #       {
    #         id: "QueryIdentifier", # required
    #         namespace: "VDM" # One of: ["VDM"], # required
    #         metric: "SEND" # One of: ["SEND", "COMPLAINT", "PERMANENT_BOUNCE", "TRANSIENT_BOUNCE", "OPEN", "CLICK", "DELIVERY", "DELIVERY_OPEN", "DELIVERY_CLICK", "DELIVERY_COMPLAINT"], # required
    #         dimensions: {
    #           "MetricDimensionName" => "MetricDimensionValue"
    #         },
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         id: "QueryIdentifier",
    #         timestamps: [Time.now],
    #         values: [1]
    #       }
    #     ],
    #     errors: [
    #       {
    #         id: "QueryIdentifier",
    #         code: "INTERNAL_FAILURE" # One of: ["INTERNAL_FAILURE", "ACCESS_DENIED"],
    #         message: "QueryErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetMetricDataResponse]
    def batch_get_metric_data(params = {}, options = {})
      request = build_request(:batch_get_metric_data, params)
      request.send_request(options)
    end

    # <p>Cancels an export job.</p>
    # @param [Hash, Types::CancelExportJobRequest] params
    # @option params [String] :job_id
    #   <p>The export job ID.</p>
    # @example Cancel export job
    #   # Cancels the export job with ID ef28cf62-9d8e-4b60-9283-b09816c99a99
    #   params = {
    #     job_id: "ef28cf62-9d8e-4b60-9283-b09816c99a99"
    #   }
    #   options = {}
    #   response = client.cancel_export_job(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.cancel_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelExportJobResponse]
    def cancel_export_job(params = {}, options = {})
      request = build_request(:cancel_export_job, params)
      request.send_request(options)
    end

    # <p>Create a configuration set. <i>Configuration sets</i> are groups of
    #             rules that you can apply to the emails that you send. You apply a configuration set to
    #             an email by specifying the name of the configuration set when you call the Amazon SES API v2. When
    #             you apply a configuration set to an email, all of the rules in that configuration set
    #             are applied to the email. </p>
    # @param [Hash, Types::CreateConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set. The name can contain up to 64 alphanumeric
    #               characters, including letters, numbers, hyphens (-) and underscores (_) only.</p>
    # @option params [Types::TrackingOptions] :tracking_options
    #   <p>An object that defines the open and click tracking options for emails that you send
    #               using the configuration set.</p>
    # @option params [Types::DeliveryOptions] :delivery_options
    #   <p>An object that defines the dedicated IP pool that is used to send emails that you send
    #               using the configuration set.</p>
    # @option params [Types::ReputationOptions] :reputation_options
    #   <p>An object that defines whether or not Amazon SES collects reputation metrics for the emails
    #               that you send that use the configuration set.</p>
    # @option params [Types::SendingOptions] :sending_options
    #   <p>An object that defines whether or not Amazon SES can send email that you send using the
    #               configuration set.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) to associate with the
    #               configuration set.</p>
    # @option params [Types::SuppressionOptions] :suppression_options
    #   <p>An object that contains information about the suppression list preferences for your
    #               account.</p>
    # @option params [Types::VdmOptions] :vdm_options
    #   <p>An object that defines the VDM options for emails that you send using the
    #               configuration set.</p>
    # @option params [Types::ArchivingOptions] :archiving_options
    #   <p>An object that defines the MailManager archiving options for emails that you send
    #               using the configuration set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tracking_options: {
    #       custom_redirect_domain: "CustomRedirectDomain", # required
    #       https_policy: "REQUIRE" # One of: ["REQUIRE", "REQUIRE_OPEN_ONLY", "OPTIONAL"]
    #     },
    #     delivery_options: {
    #       tls_policy: "REQUIRE" # One of: ["REQUIRE", "OPTIONAL"],
    #       sending_pool_name: "PoolName",
    #       max_delivery_seconds: 1
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
    #     ],
    #     suppression_options: {
    #       suppressed_reasons: ["BOUNCE" # One of: ["BOUNCE", "COMPLAINT"]]
    #     },
    #     vdm_options: {
    #       dashboard_options: {
    #         engagement_metrics: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       guardian_options: {
    #         optimized_shared_delivery: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     archiving_options: {
    #       archive_arn: "ArchiveArn"
    #     }
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

    # <p>Create an event destination. <i>Events</i> include message sends,
    #             deliveries, opens, clicks, bounces, and complaints. <i>Event
    #                 destinations</i> are places that you can send information about these events
    #             to. For example, you can send event data to Amazon EventBridge and associate a rule to send the event
    #             to the specified target.</p>
    #          <p>A single configuration set can include more than one event destination.</p>
    # @param [Hash, Types::CreateConfigurationSetEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set .</p>
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
    #       matching_event_types: ["SEND" # One of: ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE", "DELIVERY_DELAY", "SUBSCRIPTION"]],
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
    #       event_bridge_destination: {
    #         event_bus_arn: "AmazonResourceName", # required
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

    # <p>Creates a contact, which is an end-user who is receiving the email, and adds them to a
    #             contact list.</p>
    # @param [Hash, Types::CreateContactRequest] params
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list to which the contact should be added.</p>
    # @option params [String] :email_address
    #   <p>The contact's email address.</p>
    # @option params [Array<Types::TopicPreference>] :topic_preferences
    #   <p>The contact's preferences for being opted-in to or opted-out of topics.</p>
    # @option params [Boolean] :unsubscribe_all
    #   <p>A boolean value status noting if the contact is unsubscribed from all contact list
    #               topics.</p>
    # @option params [String] :attributes_data
    #   <p>The attribute data attached to a contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_list_name: "ContactListName", # required
    #     email_address: "EmailAddress", # required
    #     topic_preferences: [
    #       {
    #         topic_name: "TopicName", # required
    #         subscription_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"], # required
    #       }
    #     ],
    #     unsubscribe_all: false,
    #     attributes_data: "AttributesData"
    #   }
    #   options = {}
    #   response = client.create_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateContactResponse]
    def create_contact(params = {}, options = {})
      request = build_request(:create_contact, params)
      request.send_request(options)
    end

    # <p>Creates a contact list.</p>
    # @param [Hash, Types::CreateContactListRequest] params
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    # @option params [Array<Types::Topic>] :topics
    #   <p>An interest group, theme, or label within a list. A contact list can have multiple
    #               topics.</p>
    # @option params [String] :description
    #   <p>A description of what the contact list is about.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with a contact list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_list_name: "ContactListName", # required
    #     topics: [
    #       {
    #         topic_name: "TopicName", # required
    #         display_name: "DisplayName", # required
    #         description: "Description",
    #         default_subscription_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"], # required
    #       }
    #     ],
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_contact_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateContactListResponse]
    def create_contact_list(params = {}, options = {})
      request = build_request(:create_contact_list, params)
      request.send_request(options)
    end

    # <p>Creates a new custom verification email template.</p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 custom verification email templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateCustomVerificationEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template.</p>
    # @option params [String] :from_email_address
    #   <p>The email address that the custom verification email is sent from.</p>
    # @option params [String] :template_subject
    #   <p>The subject line of the custom verification email.</p>
    # @option params [String] :template_content
    #   <p>The content of the custom verification email. The total size of the email must be less
    #               than 10 MB. The message body may contain HTML, with some limitations. For more
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom-faq">Custom verification email frequently asked questions</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    # @option params [String] :success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    # @option params [String] :failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "EmailTemplateName", # required
    #     from_email_address: "EmailAddress", # required
    #     template_subject: "EmailTemplateSubject", # required
    #     template_content: "TemplateContent", # required
    #     success_redirection_url: "SuccessRedirectionURL", # required
    #     failure_redirection_url: "FailureRedirectionURL", # required
    #   }
    #   options = {}
    #   response = client.create_custom_verification_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateCustomVerificationEmailTemplateResponse]
    def create_custom_verification_email_template(params = {}, options = {})
      request = build_request(:create_custom_verification_email_template, params)
      request.send_request(options)
    end

    # <p>Create a new pool of dedicated IP addresses. A pool can include one or more dedicated
    #             IP addresses that are associated with your Amazon Web Services account. You can associate a pool with
    #             a configuration set. When you send an email that uses that configuration set, the
    #             message is sent from one of the addresses in the associated pool.</p>
    # @param [Hash, Types::CreateDedicatedIpPoolRequest] params
    # @option params [String] :pool_name
    #   <p>The name of the dedicated IP pool.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An object that defines the tags (keys and values) that you want to associate with the
    #               pool.</p>
    # @option params [String] :scaling_mode
    #   <p>The type of scaling mode.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_name: "PoolName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     scaling_mode: "STANDARD" # One of: ["STANDARD", "MANAGED"]
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
    #             sample message that contains the content that you plan to send to your customers. Amazon SES
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
    #         },
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           }
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT" # One of: ["ATTACHMENT", "INLINE"],
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64" # One of: ["BASE64", "QUOTED_PRINTABLE", "SEVEN_BIT"],
    #             content_type: "AttachmentContentType"
    #           }
    #         ]
    #       },
    #       raw: {
    #         data: "data", # required
    #       },
    #       template: {
    #         template_name: "EmailTemplateName",
    #         template_arn: "AmazonResourceName",
    #         template_content: {
    #           subject: "EmailTemplateSubject",
    #           text: "EmailTemplateText",
    #           html: "EmailTemplateHtml"
    #         },
    #         template_data: "EmailTemplateData",
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           }
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT" # One of: ["ATTACHMENT", "INLINE"],
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64" # One of: ["BASE64", "QUOTED_PRINTABLE", "SEVEN_BIT"],
    #             content_type: "AttachmentContentType"
    #           }
    #         ]
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

    # <p>Starts the process of verifying an email identity. An <i>identity</i> is
    #             an email address or domain that you use when you send email. Before you can use an
    #             identity to send email, you first have to verify it. By verifying an identity, you
    #             demonstrate that you're the owner of the identity, and that you've given Amazon SES API v2
    #             permission to send email from the identity.</p>
    #          <p>When you verify an email address, Amazon SES sends an email to the address. Your email
    #             address is verified as soon as you follow the link in the verification email.
    #             
    #         </p>
    #          <p>When you verify a domain without specifying the <code>DkimSigningAttributes</code>
    #             object, this operation provides a set of DKIM tokens. You can convert these tokens into
    #             CNAME records, which you then add to the DNS configuration for your domain. Your domain
    #             is verified when Amazon SES detects these records in the DNS configuration for your domain.
    #             This verification method is known as <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a>.</p>
    #          <p>Alternatively, you can perform the verification process by providing your own
    #             public-private key pair. This verification method is known as Bring Your Own DKIM
    #             (BYODKIM). To use BYODKIM, your call to the <code>CreateEmailIdentity</code> operation
    #             has to include the <code>DkimSigningAttributes</code> object. When you specify this
    #             object, you provide a selector (a component of the DNS record name that identifies the
    #             public key to use for DKIM authentication) and a private key.</p>
    #          <p>When you verify a domain, this operation provides a set of DKIM tokens, which you can
    #             convert into CNAME tokens. You add these CNAME tokens to the DNS configuration for your
    #             domain. Your domain is verified when Amazon SES detects these records in the DNS
    #             configuration for your domain. For some DNS providers, it can take 72 hours or more to
    #             complete the domain verification process.</p>
    #          <p>Additionally, you can associate an existing configuration set with the email identity that you're verifying.</p>
    # @param [Hash, Types::CreateEmailIdentityRequest] params
    # @option params [String] :email_identity
    #   <p>The email address or domain to verify.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) to associate with the email
    #               identity.</p>
    # @option params [Types::DkimSigningAttributes] :dkim_signing_attributes
    #   <p>If your request includes this object, Amazon SES configures the identity to use Bring Your
    #               Own DKIM (BYODKIM) for DKIM authentication purposes, or, configures the key length to be
    #               used for <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy
    #                   DKIM</a>.</p>
    #            <p>You can only specify this object if the email identity is a domain, as opposed to an
    #               address.</p>
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to use by default when sending from this identity. Note that any
    #               configuration set defined in the email sending request takes precedence. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     dkim_signing_attributes: {
    #       domain_signing_selector: "Selector",
    #       domain_signing_private_key: "PrivateKey",
    #       next_signing_key_length: "RSA_1024_BIT" # One of: ["RSA_1024_BIT", "RSA_2048_BIT"],
    #       domain_signing_attributes_origin: "AWS_SES" # One of: ["AWS_SES", "EXTERNAL", "AWS_SES_AF_SOUTH_1", "AWS_SES_EU_NORTH_1", "AWS_SES_AP_SOUTH_1", "AWS_SES_EU_WEST_3", "AWS_SES_EU_WEST_2", "AWS_SES_EU_SOUTH_1", "AWS_SES_EU_WEST_1", "AWS_SES_AP_NORTHEAST_3", "AWS_SES_AP_NORTHEAST_2", "AWS_SES_ME_SOUTH_1", "AWS_SES_AP_NORTHEAST_1", "AWS_SES_IL_CENTRAL_1", "AWS_SES_SA_EAST_1", "AWS_SES_CA_CENTRAL_1", "AWS_SES_AP_SOUTHEAST_1", "AWS_SES_AP_SOUTHEAST_2", "AWS_SES_AP_SOUTHEAST_3", "AWS_SES_EU_CENTRAL_1", "AWS_SES_US_EAST_1", "AWS_SES_US_EAST_2", "AWS_SES_US_WEST_1", "AWS_SES_US_WEST_2", "AWS_SES_ME_CENTRAL_1", "AWS_SES_AP_SOUTH_2", "AWS_SES_EU_CENTRAL_2"]
    #     },
    #     configuration_set_name: "ConfigurationSetName"
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
    #       tokens: ["DnsToken"],
    #       signing_attributes_origin: "AWS_SES" # One of: ["AWS_SES", "EXTERNAL", "AWS_SES_AF_SOUTH_1", "AWS_SES_EU_NORTH_1", "AWS_SES_AP_SOUTH_1", "AWS_SES_EU_WEST_3", "AWS_SES_EU_WEST_2", "AWS_SES_EU_SOUTH_1", "AWS_SES_EU_WEST_1", "AWS_SES_AP_NORTHEAST_3", "AWS_SES_AP_NORTHEAST_2", "AWS_SES_ME_SOUTH_1", "AWS_SES_AP_NORTHEAST_1", "AWS_SES_IL_CENTRAL_1", "AWS_SES_SA_EAST_1", "AWS_SES_CA_CENTRAL_1", "AWS_SES_AP_SOUTHEAST_1", "AWS_SES_AP_SOUTHEAST_2", "AWS_SES_AP_SOUTHEAST_3", "AWS_SES_EU_CENTRAL_1", "AWS_SES_US_EAST_1", "AWS_SES_US_EAST_2", "AWS_SES_US_WEST_1", "AWS_SES_US_WEST_2", "AWS_SES_ME_CENTRAL_1", "AWS_SES_AP_SOUTH_2", "AWS_SES_EU_CENTRAL_2"],
    #       next_signing_key_length: "RSA_1024_BIT" # One of: ["RSA_1024_BIT", "RSA_2048_BIT"],
    #       current_signing_key_length: "RSA_1024_BIT" # One of: ["RSA_1024_BIT", "RSA_2048_BIT"],
    #       last_key_generation_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateEmailIdentityResponse]
    def create_email_identity(params = {}, options = {})
      request = build_request(:create_email_identity, params)
      request.send_request(options)
    end

    # <p>Creates the specified sending authorization policy for the given identity (an email
    #         address or a domain).</p>
    #          <note>
    #             <p>This API is for the identity owner only. If you have not verified the identity,
    #                 this API will return an error.</p>
    #          </note>
    #          <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateEmailIdentityPolicyRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #            <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    # @option params [String] :policy
    #   <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    #            <p>For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer
    #                   Guide</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #     policy: "Policy", # required
    #   }
    #   options = {}
    #   response = client.create_email_identity_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateEmailIdentityPolicyResponse]
    def create_email_identity_policy(params = {}, options = {})
      request = build_request(:create_email_identity_policy, params)
      request.send_request(options)
    end

    # <p>Creates an email template. Email templates enable you to send personalized email to
    #             one or more destinations in a single API operation. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the template.</p>
    # @option params [Types::EmailTemplateContent] :template_content
    #   <p>The content of the email template, composed of a subject line, an HTML part, and a
    #               text-only part.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "EmailTemplateName", # required
    #     template_content: { # required
    #       subject: "EmailTemplateSubject",
    #       text: "EmailTemplateText",
    #       html: "EmailTemplateHtml"
    #     }
    #   }
    #   options = {}
    #   response = client.create_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateEmailTemplateResponse]
    def create_email_template(params = {}, options = {})
      request = build_request(:create_email_template, params)
      request.send_request(options)
    end

    # <p>Creates an export job for a data source and destination.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateExportJobRequest] params
    # @option params [Types::ExportDataSource] :export_data_source
    #   <p>The data source for the export job.</p>
    # @option params [Types::ExportDestination] :export_destination
    #   <p>The destination for the export job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_data_source: { # required
    #       metrics_data_source: {
    #         dimensions: { # required
    #           "MetricDimensionName" => ["MetricDimensionValue"]
    #         },
    #         namespace: "VDM" # One of: ["VDM"], # required
    #         metrics: [ # required
    #           {
    #             name: "SEND" # One of: ["SEND", "COMPLAINT", "PERMANENT_BOUNCE", "TRANSIENT_BOUNCE", "OPEN", "CLICK", "DELIVERY", "DELIVERY_OPEN", "DELIVERY_CLICK", "DELIVERY_COMPLAINT"],
    #             aggregation: "RATE" # One of: ["RATE", "VOLUME"]
    #           }
    #         ],
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #       },
    #       message_insights_data_source: {
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #         include: {
    #           from_email_address: ["InsightsEmailAddress"],
    #           destination: ["InsightsEmailAddress"],
    #           subject: ["EmailSubject"],
    #           isp: ["Isp"],
    #           last_delivery_event: ["SEND" # One of: ["SEND", "DELIVERY", "TRANSIENT_BOUNCE", "PERMANENT_BOUNCE", "UNDETERMINED_BOUNCE", "COMPLAINT"]],
    #           last_engagement_event: ["OPEN" # One of: ["OPEN", "CLICK"]]
    #         },
    #         exclude: {
    #           from_email_address: ["InsightsEmailAddress"],
    #           destination: ["InsightsEmailAddress"],
    #           subject: ["EmailSubject"],
    #           isp: ["Isp"],
    #           last_delivery_event: ["SEND" # One of: ["SEND", "DELIVERY", "TRANSIENT_BOUNCE", "PERMANENT_BOUNCE", "UNDETERMINED_BOUNCE", "COMPLAINT"]],
    #           last_engagement_event: ["OPEN" # One of: ["OPEN", "CLICK"]]
    #         },
    #         max_results: 1
    #       }
    #     },
    #     export_destination: { # required
    #       data_format: "CSV" # One of: ["CSV", "JSON"], # required
    #       s3_url: "S3Url"
    #     }
    #   }
    #   options = {}
    #   response = client.create_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::CreateExportJobResponse]
    def create_export_job(params = {}, options = {})
      request = build_request(:create_export_job, params)
      request.send_request(options)
    end

    # <p>Creates an import job for a data destination.</p>
    # @param [Hash, Types::CreateImportJobRequest] params
    # @option params [Types::ImportDestination] :import_destination
    #   <p>The destination for the import job.</p>
    # @option params [Types::ImportDataSource] :import_data_source
    #   <p>The data source for the import job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_destination: { # required
    #       suppression_list_destination: {
    #         suppression_list_import_action: "DELETE" # One of: ["DELETE", "PUT"], # required
    #       },
    #       contact_list_destination: {
    #         contact_list_name: "ContactListName", # required
    #         contact_list_import_action: "DELETE" # One of: ["DELETE", "PUT"], # required
    #       }
    #     },
    #     import_data_source: { # required
    #       s3_url: "S3Url", # required
    #       data_format: "CSV" # One of: ["CSV", "JSON"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::CreateImportJobResponse]
    def create_import_job(params = {}, options = {})
      request = build_request(:create_import_job, params)
      request.send_request(options)
    end

    # <p>Creates a multi-region endpoint (global-endpoint).</p>
    #          <p>The primary region is going to be the AWS-Region where the operation is executed.
    #             The secondary region has to be provided in request's parameters.
    #             From the data flow standpoint there is no difference between primary
    #             and secondary regions - sending traffic will be split equally between the two.
    #             The primary region is the region where the resource has been created and where it can be managed.
    #         </p>
    # @param [Hash, Types::CreateMultiRegionEndpointRequest] params
    # @option params [String] :endpoint_name
    #   <p>The name of the multi-region endpoint (global-endpoint).</p>
    # @option params [Types::Details] :details
    #   <p>Contains details of a multi-region endpoint (global-endpoint) being created.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) to associate with the multi-region endpoint (global-endpoint).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "EndpointName", # required
    #     details: { # required
    #       routes_details: [ # required
    #         {
    #           region: "Region", # required
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_multi_region_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "READY", "FAILED", "DELETING"],
    #     endpoint_id: "EndpointId"
    #   }
    # @return [Types::CreateMultiRegionEndpointResponse]
    def create_multi_region_endpoint(params = {}, options = {})
      request = build_request(:create_multi_region_endpoint, params)
      request.send_request(options)
    end

    # <p>Create a tenant.</p>
    #          <p>
    #             <i>Tenants</i> are logical containers that group related SES resources together.
    #             Each tenant can have its own set of resources like email identities, configuration sets,
    #             and templates, along with reputation metrics and sending status. This helps isolate and manage
    #             email sending for different customers or business units within your Amazon SES API v2 account.</p>
    # @param [Hash, Types::CreateTenantRequest] params
    # @option params [String] :tenant_name
    #   <p>The name of the tenant to create. The name can contain up to 64 alphanumeric
    #               characters, including letters, numbers, hyphens (-) and underscores (_) only.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) to associate with the tenant</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tenant_name: "TenantName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tenant_name: "TenantName",
    #     tenant_id: "TenantId",
    #     tenant_arn: "AmazonResourceName",
    #     created_timestamp: Time.now,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     sending_status: "ENABLED" # One of: ["ENABLED", "REINSTATED", "DISABLED"]
    #   }
    # @return [Types::CreateTenantResponse]
    def create_tenant(params = {}, options = {})
      request = build_request(:create_tenant, params)
      request.send_request(options)
    end

    # <p>Associate a resource with a tenant.</p>
    #          <p>
    #             <i>Resources</i> can be email identities, configuration sets, or email templates.
    #             When you associate a resource with a tenant, you can use that resource when sending emails
    #             on behalf of that tenant.</p>
    #          <p>A single resource can be associated with multiple tenants, allowing for resource sharing
    #             across different tenants while maintaining isolation in email sending operations.</p>
    # @param [Hash, Types::CreateTenantResourceAssociationRequest] params
    # @option params [String] :tenant_name
    #   <p>The name of the tenant to associate the resource with.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to associate with the tenant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tenant_name: "TenantName", # required
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.create_tenant_resource_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateTenantResourceAssociationResponse]
    def create_tenant_resource_association(params = {}, options = {})
      request = build_request(:create_tenant_resource_association, params)
      request.send_request(options)
    end

    # <p>Delete an existing configuration set.</p>
    #          <p>
    #             <i>Configuration sets</i> are groups of rules that you can apply to the
    #             emails you send. You apply a configuration set to an email by including a reference to
    #             the configuration set in the headers of the email. When you apply a configuration set to
    #             an email, all of the rules in that configuration set are applied to the email.</p>
    # @param [Hash, Types::DeleteConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
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
    #          <p>
    #             <i>Events</i> include message sends, deliveries, opens, clicks, bounces,
    #             and complaints. <i>Event destinations</i> are places that you can send
    #             information about these events to. For example, you can send event data to Amazon EventBridge and
    #             associate a rule to send the event to the specified target.</p>
    # @param [Hash, Types::DeleteConfigurationSetEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination to
    #               delete.</p>
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination to delete.</p>
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

    # <p>Removes a contact from a contact list.</p>
    # @param [Hash, Types::DeleteContactRequest] params
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list from which the contact should be removed.</p>
    # @option params [String] :email_address
    #   <p>The contact's email address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_list_name: "ContactListName", # required
    #     email_address: "EmailAddress", # required
    #   }
    #   options = {}
    #   response = client.delete_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContactResponse]
    def delete_contact(params = {}, options = {})
      request = build_request(:delete_contact, params)
      request.send_request(options)
    end

    # <p>Deletes a contact list and all of the contacts on that list.</p>
    # @param [Hash, Types::DeleteContactListRequest] params
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_list_name: "ContactListName", # required
    #   }
    #   options = {}
    #   response = client.delete_contact_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContactListResponse]
    def delete_contact_list(params = {}, options = {})
      request = build_request(:delete_contact_list, params)
      request.send_request(options)
    end

    # <p>Deletes an existing custom verification email template.</p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 custom verification email templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteCustomVerificationEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "EmailTemplateName", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_verification_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomVerificationEmailTemplateResponse]
    def delete_custom_verification_email_template(params = {}, options = {})
      request = build_request(:delete_custom_verification_email_template, params)
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

    # <p>Deletes an email identity. An identity can be either an email address or a domain
    #             name.</p>
    # @param [Hash, Types::DeleteEmailIdentityRequest] params
    # @option params [String] :email_identity
    #   <p>The identity (that is, the email address or domain) to delete.</p>
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

    # <p>Deletes the specified sending authorization policy for the given identity (an email
    #             address or a domain). This API returns successfully even if a policy with the specified
    #             name does not exist.</p>
    #          <note>
    #             <p>This API is for the identity owner only. If you have not verified the identity,
    #                 this API will return an error.</p>
    #          </note>
    #          <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteEmailIdentityPolicyRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #            <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #   }
    #   options = {}
    #   response = client.delete_email_identity_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEmailIdentityPolicyResponse]
    def delete_email_identity_policy(params = {}, options = {})
      request = build_request(:delete_email_identity_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an email template.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the template to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "EmailTemplateName", # required
    #   }
    #   options = {}
    #   response = client.delete_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEmailTemplateResponse]
    def delete_email_template(params = {}, options = {})
      request = build_request(:delete_email_template, params)
      request.send_request(options)
    end

    # <p>Deletes a multi-region endpoint (global-endpoint).</p>
    #          <p>Only multi-region endpoints (global-endpoints) whose primary region is the AWS-Region
    #             where operation is executed can be deleted.</p>
    # @param [Hash, Types::DeleteMultiRegionEndpointRequest] params
    # @option params [String] :endpoint_name
    #   <p>The name of the multi-region endpoint (global-endpoint) to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "EndpointName", # required
    #   }
    #   options = {}
    #   response = client.delete_multi_region_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "READY", "FAILED", "DELETING"]
    #   }
    # @return [Types::DeleteMultiRegionEndpointResponse]
    def delete_multi_region_endpoint(params = {}, options = {})
      request = build_request(:delete_multi_region_endpoint, params)
      request.send_request(options)
    end

    # <p>Removes an email address from the suppression list for your account.</p>
    # @param [Hash, Types::DeleteSuppressedDestinationRequest] params
    # @option params [String] :email_address
    #   <p>The suppressed email destination to remove from the account suppression list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_address: "EmailAddress", # required
    #   }
    #   options = {}
    #   response = client.delete_suppressed_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSuppressedDestinationResponse]
    def delete_suppressed_destination(params = {}, options = {})
      request = build_request(:delete_suppressed_destination, params)
      request.send_request(options)
    end

    # <p>Delete an existing tenant.</p>
    #          <p>When you delete a tenant, its associations with resources
    #             are removed, but the resources themselves are not deleted.</p>
    # @param [Hash, Types::DeleteTenantRequest] params
    # @option params [String] :tenant_name
    #   <p>The name of the tenant to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tenant_name: "TenantName", # required
    #   }
    #   options = {}
    #   response = client.delete_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTenantResponse]
    def delete_tenant(params = {}, options = {})
      request = build_request(:delete_tenant, params)
      request.send_request(options)
    end

    # <p>Delete an association between a tenant and a resource.</p>
    #          <p>When you delete a tenant-resource association, the resource itself is not deleted,
    #             only its association with the specific tenant is removed. After removal, the resource
    #             will no longer be available for use with that tenant's email sending operations.</p>
    # @param [Hash, Types::DeleteTenantResourceAssociationRequest] params
    # @option params [String] :tenant_name
    #   <p>The name of the tenant to remove the resource association from.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove from the tenant association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tenant_name: "TenantName", # required
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_tenant_resource_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTenantResourceAssociationResponse]
    def delete_tenant_resource_association(params = {}, options = {})
      request = build_request(:delete_tenant_resource_association, params)
      request.send_request(options)
    end

    # <p>Obtain information about the email-sending status and capabilities of your Amazon SES
    #             account in the current Amazon Web Services Region.</p>
    # @param [Hash, Types::GetAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dedicated_ip_auto_warmup_enabled: false,
    #     enforcement_status: "GeneralEnforcementStatus",
    #     production_access_enabled: false,
    #     send_quota: {
    #       max24_hour_send: 1.0,
    #       max_send_rate: 1.0,
    #       sent_last24_hours: 1.0
    #     },
    #     sending_enabled: false,
    #     suppression_attributes: {
    #       suppressed_reasons: ["BOUNCE" # One of: ["BOUNCE", "COMPLAINT"]]
    #     },
    #     details: {
    #       mail_type: "MARKETING" # One of: ["MARKETING", "TRANSACTIONAL"],
    #       website_url: "WebsiteURL",
    #       contact_language: "EN" # One of: ["EN", "JA"],
    #       use_case_description: "UseCaseDescription",
    #       additional_contact_email_addresses: ["AdditionalContactEmailAddress"],
    #       review_details: {
    #         status: "PENDING" # One of: ["PENDING", "FAILED", "GRANTED", "DENIED"],
    #         case_id: "CaseId"
    #       }
    #     },
    #     vdm_attributes: {
    #       vdm_enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       dashboard_attributes: {
    #         engagement_metrics: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       guardian_attributes: {
    #         optimized_shared_delivery: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     }
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
    #               only specify the dedicated IP addresses that you use to send email using Amazon SES or
    #               Amazon Pinpoint.</p>
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
    #          <p>
    #             <i>Configuration sets</i> are groups of rules that you can apply to the
    #             emails you send. You apply a configuration set to an email by including a reference to
    #             the configuration set in the headers of the email. When you apply a configuration set to
    #             an email, all of the rules in that configuration set are applied to the email.</p>
    # @param [Hash, Types::GetConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
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
    #       https_policy: "REQUIRE" # One of: ["REQUIRE", "REQUIRE_OPEN_ONLY", "OPTIONAL"]
    #     },
    #     delivery_options: {
    #       tls_policy: "REQUIRE" # One of: ["REQUIRE", "OPTIONAL"],
    #       sending_pool_name: "PoolName",
    #       max_delivery_seconds: 1
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
    #     ],
    #     suppression_options: {
    #       suppressed_reasons: ["BOUNCE" # One of: ["BOUNCE", "COMPLAINT"]]
    #     },
    #     vdm_options: {
    #       dashboard_options: {
    #         engagement_metrics: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       guardian_options: {
    #         optimized_shared_delivery: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     archiving_options: {
    #       archive_arn: "ArchiveArn"
    #     }
    #   }
    # @return [Types::GetConfigurationSetResponse]
    def get_configuration_set(params = {}, options = {})
      request = build_request(:get_configuration_set, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of event destinations that are associated with a configuration
    #             set.</p>
    #          <p>
    #             <i>Events</i> include message sends, deliveries, opens, clicks, bounces,
    #             and complaints. <i>Event destinations</i> are places that you can send
    #             information about these events to. For example, you can send event data to Amazon EventBridge and
    #             associate a rule to send the event to the specified target.</p>
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
    #         matching_event_types: ["SEND" # One of: ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE", "DELIVERY_DELAY", "SUBSCRIPTION"]], # required
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
    #         event_bridge_destination: {
    #           event_bus_arn: "AmazonResourceName", # required
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

    # <p>Returns a contact from a contact list.</p>
    # @param [Hash, Types::GetContactRequest] params
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list to which the contact belongs.</p>
    # @option params [String] :email_address
    #   <p>The contact's email address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_list_name: "ContactListName", # required
    #     email_address: "EmailAddress", # required
    #   }
    #   options = {}
    #   response = client.get_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_list_name: "ContactListName",
    #     email_address: "EmailAddress",
    #     topic_preferences: [
    #       {
    #         topic_name: "TopicName", # required
    #         subscription_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"], # required
    #       }
    #     ],
    #     topic_default_preferences: [
    #       {
    #         topic_name: "TopicName", # required
    #         subscription_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"], # required
    #       }
    #     ],
    #     unsubscribe_all: false,
    #     attributes_data: "AttributesData",
    #     created_timestamp: Time.now,
    #     last_updated_timestamp: Time.now
    #   }
    # @return [Types::GetContactResponse]
    def get_contact(params = {}, options = {})
      request = build_request(:get_contact, params)
      request.send_request(options)
    end

    # <p>Returns contact list metadata. It does not return any information about the contacts
    #             present in the list.</p>
    # @param [Hash, Types::GetContactListRequest] params
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_list_name: "ContactListName", # required
    #   }
    #   options = {}
    #   response = client.get_contact_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_list_name: "ContactListName",
    #     topics: [
    #       {
    #         topic_name: "TopicName", # required
    #         display_name: "DisplayName", # required
    #         description: "Description",
    #         default_subscription_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"], # required
    #       }
    #     ],
    #     description: "Description",
    #     created_timestamp: Time.now,
    #     last_updated_timestamp: Time.now,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetContactListResponse]
    def get_contact_list(params = {}, options = {})
      request = build_request(:get_contact_list, params)
      request.send_request(options)
    end

    # <p>Returns the custom email verification template for the template name you
    #             specify.</p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 custom verification email templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::GetCustomVerificationEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "EmailTemplateName", # required
    #   }
    #   options = {}
    #   response = client.get_custom_verification_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_name: "EmailTemplateName",
    #     from_email_address: "EmailAddress",
    #     template_subject: "EmailTemplateSubject",
    #     template_content: "TemplateContent",
    #     success_redirection_url: "SuccessRedirectionURL",
    #     failure_redirection_url: "FailureRedirectionURL"
    #   }
    # @return [Types::GetCustomVerificationEmailTemplateResponse]
    def get_custom_verification_email_template(params = {}, options = {})
      request = build_request(:get_custom_verification_email_template, params)
      request.send_request(options)
    end

    # <p>Get information about a dedicated IP address, including the name of the dedicated IP
    #             pool that it's associated with, as well information about the automatic warm-up process
    #             for the address.</p>
    # @param [Hash, Types::GetDedicatedIpRequest] params
    # @option params [String] :ip
    #   <p>The IP address that you want to obtain more information about. The value you specify
    #               has to be a dedicated IP address that's assocaited with your Amazon Web Services account.</p>
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
    #       warmup_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "DONE", "NOT_APPLICABLE"], # required
    #       warmup_percentage: 1, # required
    #       pool_name: "PoolName"
    #     }
    #   }
    # @return [Types::GetDedicatedIpResponse]
    def get_dedicated_ip(params = {}, options = {})
      request = build_request(:get_dedicated_ip, params)
      request.send_request(options)
    end

    # <p>Retrieve information about the dedicated pool.</p>
    # @param [Hash, Types::GetDedicatedIpPoolRequest] params
    # @option params [String] :pool_name
    #   <p>The name of the dedicated IP pool to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_name: "PoolName", # required
    #   }
    #   options = {}
    #   response = client.get_dedicated_ip_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dedicated_ip_pool: {
    #       pool_name: "PoolName", # required
    #       scaling_mode: "STANDARD" # One of: ["STANDARD", "MANAGED"], # required
    #     }
    #   }
    # @return [Types::GetDedicatedIpPoolResponse]
    def get_dedicated_ip_pool(params = {}, options = {})
      request = build_request(:get_dedicated_ip_pool, params)
      request.send_request(options)
    end

    # <p>List the dedicated IP addresses that are associated with your Amazon Web Services
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
    #         warmup_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "DONE", "NOT_APPLICABLE"], # required
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

    # <p>Retrieve information about the status of the Deliverability dashboard for your account. When
    #             the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other
    #             metrics for the domains that you use to send email. You also gain the ability to perform
    #             predictive inbox placement tests.</p>
    #          <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon SES and other Amazon Web Services services. For more
    #             information about the features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/ses/pricing/">Amazon SES Pricing</a>.</p>
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
    #             Deliverability dashboard is enabled for.</p>
    # @param [Hash, Types::GetDomainDeliverabilityCampaignRequest] params
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign. The Deliverability dashboard automatically generates
    #               and assigns this identifier to a campaign.</p>
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

    # <p>Provides information about a specific identity, including the identity's verification
    #             status, sending authorization policies, its DKIM authentication status, and its custom
    #             Mail-From settings.</p>
    # @param [Hash, Types::GetEmailIdentityRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
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
    #       tokens: ["DnsToken"],
    #       signing_attributes_origin: "AWS_SES" # One of: ["AWS_SES", "EXTERNAL", "AWS_SES_AF_SOUTH_1", "AWS_SES_EU_NORTH_1", "AWS_SES_AP_SOUTH_1", "AWS_SES_EU_WEST_3", "AWS_SES_EU_WEST_2", "AWS_SES_EU_SOUTH_1", "AWS_SES_EU_WEST_1", "AWS_SES_AP_NORTHEAST_3", "AWS_SES_AP_NORTHEAST_2", "AWS_SES_ME_SOUTH_1", "AWS_SES_AP_NORTHEAST_1", "AWS_SES_IL_CENTRAL_1", "AWS_SES_SA_EAST_1", "AWS_SES_CA_CENTRAL_1", "AWS_SES_AP_SOUTHEAST_1", "AWS_SES_AP_SOUTHEAST_2", "AWS_SES_AP_SOUTHEAST_3", "AWS_SES_EU_CENTRAL_1", "AWS_SES_US_EAST_1", "AWS_SES_US_EAST_2", "AWS_SES_US_WEST_1", "AWS_SES_US_WEST_2", "AWS_SES_ME_CENTRAL_1", "AWS_SES_AP_SOUTH_2", "AWS_SES_EU_CENTRAL_2"],
    #       next_signing_key_length: "RSA_1024_BIT" # One of: ["RSA_1024_BIT", "RSA_2048_BIT"],
    #       current_signing_key_length: "RSA_1024_BIT" # One of: ["RSA_1024_BIT", "RSA_2048_BIT"],
    #       last_key_generation_timestamp: Time.now
    #     },
    #     mail_from_attributes: {
    #       mail_from_domain: "MailFromDomainName", # required
    #       mail_from_domain_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE"], # required
    #       behavior_on_mx_failure: "USE_DEFAULT_VALUE" # One of: ["USE_DEFAULT_VALUE", "REJECT_MESSAGE"], # required
    #     },
    #     policies: {
    #       "PolicyName" => "Policy"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #     verification_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"],
    #     verification_info: {
    #       last_checked_timestamp: Time.now,
    #       last_success_timestamp: Time.now,
    #       error_type: "SERVICE_ERROR" # One of: ["SERVICE_ERROR", "DNS_SERVER_ERROR", "HOST_NOT_FOUND", "TYPE_NOT_FOUND", "INVALID_VALUE", "REPLICATION_ACCESS_DENIED", "REPLICATION_PRIMARY_NOT_FOUND", "REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED", "REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED", "REPLICATION_PRIMARY_INVALID_REGION"],
    #       soa_record: {
    #         primary_name_server: "PrimaryNameServer",
    #         admin_email: "AdminEmail",
    #         serial_number: 1
    #       }
    #     }
    #   }
    # @return [Types::GetEmailIdentityResponse]
    def get_email_identity(params = {}, options = {})
      request = build_request(:get_email_identity, params)
      request.send_request(options)
    end

    # <p>Returns the requested sending authorization policies for the given identity (an email
    #             address or a domain). The policies are returned as a map of policy names to policy
    #             contents. You can retrieve a maximum of 20 policies at a time.</p>
    #          <note>
    #             <p>This API is for the identity owner only. If you have not verified the identity,
    #                 this API will return an error.</p>
    #          </note>
    #          <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::GetEmailIdentityPoliciesRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #   }
    #   options = {}
    #   response = client.get_email_identity_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: {
    #       "PolicyName" => "Policy"
    #     }
    #   }
    # @return [Types::GetEmailIdentityPoliciesResponse]
    def get_email_identity_policies(params = {}, options = {})
      request = build_request(:get_email_identity_policies, params)
      request.send_request(options)
    end

    # <p>Displays the template object (which includes the subject line, HTML part and text
    #             part) for the template you specify.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::GetEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "EmailTemplateName", # required
    #   }
    #   options = {}
    #   response = client.get_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_name: "EmailTemplateName", # required
    #     template_content: { # required
    #       subject: "EmailTemplateSubject",
    #       text: "EmailTemplateText",
    #       html: "EmailTemplateHtml"
    #     }
    #   }
    # @return [Types::GetEmailTemplateResponse]
    def get_email_template(params = {}, options = {})
      request = build_request(:get_email_template, params)
      request.send_request(options)
    end

    # <p>Provides information about an export job.</p>
    # @param [Hash, Types::GetExportJobRequest] params
    # @option params [String] :job_id
    #   <p>The export job ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     export_source_type: "METRICS_DATA" # One of: ["METRICS_DATA", "MESSAGE_INSIGHTS"],
    #     job_status: "CREATED" # One of: ["CREATED", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"],
    #     export_destination: {
    #       data_format: "CSV" # One of: ["CSV", "JSON"], # required
    #       s3_url: "S3Url"
    #     },
    #     export_data_source: {
    #       metrics_data_source: {
    #         dimensions: { # required
    #           "MetricDimensionName" => ["MetricDimensionValue"]
    #         },
    #         namespace: "VDM" # One of: ["VDM"], # required
    #         metrics: [ # required
    #           {
    #             name: "SEND" # One of: ["SEND", "COMPLAINT", "PERMANENT_BOUNCE", "TRANSIENT_BOUNCE", "OPEN", "CLICK", "DELIVERY", "DELIVERY_OPEN", "DELIVERY_CLICK", "DELIVERY_COMPLAINT"],
    #             aggregation: "RATE" # One of: ["RATE", "VOLUME"]
    #           }
    #         ],
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #       },
    #       message_insights_data_source: {
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #         include: {
    #           from_email_address: ["InsightsEmailAddress"],
    #           destination: ["InsightsEmailAddress"],
    #           subject: ["EmailSubject"],
    #           isp: ["Isp"],
    #           last_delivery_event: ["SEND" # One of: ["SEND", "DELIVERY", "TRANSIENT_BOUNCE", "PERMANENT_BOUNCE", "UNDETERMINED_BOUNCE", "COMPLAINT"]],
    #           last_engagement_event: ["OPEN" # One of: ["OPEN", "CLICK"]]
    #         },
    #         exclude: {
    #           from_email_address: ["InsightsEmailAddress"],
    #           destination: ["InsightsEmailAddress"],
    #           subject: ["EmailSubject"],
    #           isp: ["Isp"],
    #           last_delivery_event: ["SEND" # One of: ["SEND", "DELIVERY", "TRANSIENT_BOUNCE", "PERMANENT_BOUNCE", "UNDETERMINED_BOUNCE", "COMPLAINT"]],
    #           last_engagement_event: ["OPEN" # One of: ["OPEN", "CLICK"]]
    #         },
    #         max_results: 1
    #       }
    #     },
    #     created_timestamp: Time.now,
    #     completed_timestamp: Time.now,
    #     failure_info: {
    #       failed_records_s3_url: "FailedRecordsS3Url",
    #       error_message: "ErrorMessage"
    #     },
    #     statistics: {
    #       processed_records_count: 1,
    #       exported_records_count: 1
    #     }
    #   }
    # @return [Types::GetExportJobResponse]
    def get_export_job(params = {}, options = {})
      request = build_request(:get_export_job, params)
      request.send_request(options)
    end

    # <p>Provides information about an import job.</p>
    # @param [Hash, Types::GetImportJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the import job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     import_destination: {
    #       suppression_list_destination: {
    #         suppression_list_import_action: "DELETE" # One of: ["DELETE", "PUT"], # required
    #       },
    #       contact_list_destination: {
    #         contact_list_name: "ContactListName", # required
    #         contact_list_import_action: "DELETE" # One of: ["DELETE", "PUT"], # required
    #       }
    #     },
    #     import_data_source: {
    #       s3_url: "S3Url", # required
    #       data_format: "CSV" # One of: ["CSV", "JSON"], # required
    #     },
    #     failure_info: {
    #       failed_records_s3_url: "FailedRecordsS3Url",
    #       error_message: "ErrorMessage"
    #     },
    #     job_status: "CREATED" # One of: ["CREATED", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"],
    #     created_timestamp: Time.now,
    #     completed_timestamp: Time.now,
    #     processed_records_count: 1,
    #     failed_records_count: 1
    #   }
    # @return [Types::GetImportJobResponse]
    def get_import_job(params = {}, options = {})
      request = build_request(:get_import_job, params)
      request.send_request(options)
    end

    # <p>Provides information about a specific message, including the from address, the
    #             subject, the recipient address, email tags, as well as events associated with the message.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::GetMessageInsightsRequest] params
    # @option params [String] :message_id
    #   <p>
    #               A <code>MessageId</code> is a unique identifier for a message, and is
    #               returned when sending emails through Amazon SES.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     message_id: "OutboundMessageId", # required
    #   }
    #   options = {}
    #   response = client.get_message_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "OutboundMessageId",
    #     from_email_address: "InsightsEmailAddress",
    #     subject: "EmailSubject",
    #     email_tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       }
    #     ],
    #     insights: [
    #       {
    #         destination: "InsightsEmailAddress",
    #         isp: "Isp",
    #         events: [
    #           {
    #             timestamp: Time.now,
    #             type: "SEND" # One of: ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE", "DELIVERY_DELAY", "SUBSCRIPTION"],
    #             details: {
    #               bounce: {
    #                 bounce_type: "UNDETERMINED" # One of: ["UNDETERMINED", "TRANSIENT", "PERMANENT"],
    #                 bounce_sub_type: "BounceSubType",
    #                 diagnostic_code: "DiagnosticCode"
    #               },
    #               complaint: {
    #                 complaint_sub_type: "ComplaintSubType",
    #                 complaint_feedback_type: "ComplaintFeedbackType"
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetMessageInsightsResponse]
    def get_message_insights(params = {}, options = {})
      request = build_request(:get_message_insights, params)
      request.send_request(options)
    end

    # <p>Displays the multi-region endpoint (global-endpoint) configuration.</p>
    #          <p>Only multi-region endpoints (global-endpoints) whose primary region is the AWS-Region
    #             where operation is executed can be displayed.</p>
    # @param [Hash, Types::GetMultiRegionEndpointRequest] params
    # @option params [String] :endpoint_name
    #   <p>The name of the multi-region endpoint (global-endpoint).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "EndpointName", # required
    #   }
    #   options = {}
    #   response = client.get_multi_region_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_name: "EndpointName",
    #     endpoint_id: "EndpointId",
    #     routes: [
    #       {
    #         region: "Region", # required
    #       }
    #     ],
    #     status: "CREATING" # One of: ["CREATING", "READY", "FAILED", "DELETING"],
    #     created_timestamp: Time.now,
    #     last_updated_timestamp: Time.now
    #   }
    # @return [Types::GetMultiRegionEndpointResponse]
    def get_multi_region_endpoint(params = {}, options = {})
      request = build_request(:get_multi_region_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieve information about a specific reputation entity, including its reputation 
    #             management policy, customer-managed status, Amazon Web Services Amazon SES-managed status, and aggregate 
    #             sending status.</p>
    #          <p>
    #             <i>Reputation entities</i> represent resources in your Amazon SES account that have reputation 
    #             tracking and management capabilities. The reputation impact reflects the highest 
    #             impact reputation finding for the entity. Reputation findings can be retrieved 
    #             using the <code>ListRecommendations</code> operation.</p>
    # @param [Hash, Types::GetReputationEntityRequest] params
    # @option params [String] :reputation_entity_reference
    #   <p>The unique identifier for the reputation entity. For resource-type entities, 
    #               this is the Amazon Resource Name (ARN) of the resource.</p>
    # @option params [String] :reputation_entity_type
    #   <p>The type of reputation entity. Currently, only <code>RESOURCE</code> type entities are supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reputation_entity_reference: "ReputationEntityReference", # required
    #     reputation_entity_type: "RESOURCE" # One of: ["RESOURCE"], # required
    #   }
    #   options = {}
    #   response = client.get_reputation_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reputation_entity: {
    #       reputation_entity_reference: "ReputationEntityReference",
    #       reputation_entity_type: "RESOURCE" # One of: ["RESOURCE"],
    #       reputation_management_policy: "AmazonResourceName",
    #       customer_managed_status: {
    #         status: "ENABLED" # One of: ["ENABLED", "REINSTATED", "DISABLED"],
    #         cause: "StatusCause",
    #         last_updated_timestamp: Time.now
    #       },
    #       aws_ses_managed_status: {
    #         status: "ENABLED" # One of: ["ENABLED", "REINSTATED", "DISABLED"],
    #         cause: "StatusCause",
    #         last_updated_timestamp: Time.now
    #       },
    #       sending_status_aggregate: "ENABLED" # One of: ["ENABLED", "REINSTATED", "DISABLED"],
    #       reputation_impact: "LOW" # One of: ["LOW", "HIGH"]
    #     }
    #   }
    # @return [Types::GetReputationEntityResponse]
    def get_reputation_entity(params = {}, options = {})
      request = build_request(:get_reputation_entity, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific email address that's on the suppression list
    #             for your account.</p>
    # @param [Hash, Types::GetSuppressedDestinationRequest] params
    # @option params [String] :email_address
    #   <p>The email address that's on the account suppression list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_address: "EmailAddress", # required
    #   }
    #   options = {}
    #   response = client.get_suppressed_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suppressed_destination: { # required
    #       email_address: "EmailAddress", # required
    #       reason: "BOUNCE" # One of: ["BOUNCE", "COMPLAINT"], # required
    #       last_update_time: Time.now, # required
    #       attributes: {
    #         message_id: "OutboundMessageId",
    #         feedback_id: "FeedbackId"
    #       }
    #     }
    #   }
    # @return [Types::GetSuppressedDestinationResponse]
    def get_suppressed_destination(params = {}, options = {})
      request = build_request(:get_suppressed_destination, params)
      request.send_request(options)
    end

    # <p>Get information about a specific tenant, including the tenant's name, ID, ARN,
    #             creation timestamp, tags, and sending status.</p>
    # @param [Hash, Types::GetTenantRequest] params
    # @option params [String] :tenant_name
    #   <p>The name of the tenant to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tenant_name: "TenantName", # required
    #   }
    #   options = {}
    #   response = client.get_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tenant: {
    #       tenant_name: "TenantName",
    #       tenant_id: "TenantId",
    #       tenant_arn: "AmazonResourceName",
    #       created_timestamp: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       sending_status: "ENABLED" # One of: ["ENABLED", "REINSTATED", "DISABLED"]
    #     }
    #   }
    # @return [Types::GetTenantResponse]
    def get_tenant(params = {}, options = {})
      request = build_request(:get_tenant, params)
      request.send_request(options)
    end

    # <p>List all of the configuration sets associated with your account in the current
    #             region.</p>
    #          <p>
    #             <i>Configuration sets</i> are groups of rules that you can apply to the
    #             emails you send. You apply a configuration set to an email by including a reference to
    #             the configuration set in the headers of the email. When you apply a configuration set to
    #             an email, all of the rules in that configuration set are applied to the email.</p>
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

    # <p>Lists all of the contact lists available.</p>
    #          <p>If your output includes a "NextToken" field with a string value, this indicates there may be additional
    #             contacts on the filtered list - regardless of the number of contacts returned.</p>
    # @param [Hash, Types::ListContactListsRequest] params
    # @option params [Integer] :page_size
    #   <p>Maximum number of contact lists to return at once. Use this parameter to paginate
    #               results. If additional contact lists exist beyond the specified limit, the
    #                   <code>NextToken</code> element is sent in the response. Use the
    #                   <code>NextToken</code> value in subsequent requests to retrieve additional
    #               lists.</p>
    # @option params [String] :next_token
    #   <p>A string token indicating that there might be additional contact lists available to be
    #               listed. Use the token provided in the Response to use in the subsequent call to
    #               ListContactLists with the same parameters to retrieve the next page of contact
    #               lists.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_contact_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_lists: [
    #       {
    #         contact_list_name: "ContactListName",
    #         last_updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListContactListsResponse]
    def list_contact_lists(params = {}, options = {})
      request = build_request(:list_contact_lists, params)
      request.send_request(options)
    end

    # <p>Lists the contacts present in a specific contact list.</p>
    # @param [Hash, Types::ListContactsRequest] params
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    # @option params [Types::ListContactsFilter] :filter
    #   <p>A filter that can be applied to a list of contacts.</p>
    # @option params [Integer] :page_size
    #   <p>The number of contacts that may be returned at once, which is dependent on if there
    #               are more or less contacts than the value of the PageSize. Use this parameter to paginate
    #               results. If additional contacts exist beyond the specified limit, the
    #                   <code>NextToken</code> element is sent in the response. Use the
    #                   <code>NextToken</code> value in subsequent requests to retrieve additional
    #               contacts.</p>
    # @option params [String] :next_token
    #   <p>A string token indicating that there might be additional contacts available to be
    #               listed. Use the token provided in the Response to use in the subsequent call to
    #               ListContacts with the same parameters to retrieve the next page of contacts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_list_name: "ContactListName", # required
    #     filter: {
    #       filtered_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"],
    #       topic_filter: {
    #         topic_name: "TopicName",
    #         use_default_if_preference_unavailable: false
    #       }
    #     },
    #     page_size: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_contacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contacts: [
    #       {
    #         email_address: "EmailAddress",
    #         topic_preferences: [
    #           {
    #             topic_name: "TopicName", # required
    #             subscription_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"], # required
    #           }
    #         ],
    #         topic_default_preferences: [
    #           {
    #             topic_name: "TopicName", # required
    #             subscription_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"], # required
    #           }
    #         ],
    #         unsubscribe_all: false,
    #         last_updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListContactsResponse]
    def list_contacts(params = {}, options = {})
      request = build_request(:list_contacts, params)
      request.send_request(options)
    end

    # <p>Lists the existing custom verification email templates for your account in the current
    #                 Amazon Web Services Region.</p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 custom verification email templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::ListCustomVerificationEmailTemplatesRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to
    #                   <code>ListCustomVerificationEmailTemplates</code> to indicate the position in the
    #               list of custom verification email templates.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListCustomVerificationEmailTemplates</code>. If the number of results is
    #               larger than the number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #            <p>The value you specify has to be at least 1, and can be no more than 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_custom_verification_email_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_verification_email_templates: [
    #       {
    #         template_name: "EmailTemplateName",
    #         from_email_address: "EmailAddress",
    #         template_subject: "EmailTemplateSubject",
    #         success_redirection_url: "SuccessRedirectionURL",
    #         failure_redirection_url: "FailureRedirectionURL"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCustomVerificationEmailTemplatesResponse]
    def list_custom_verification_email_templates(params = {}, options = {})
      request = build_request(:list_custom_verification_email_templates, params)
      request.send_request(options)
    end

    # <p>List all of the dedicated IP pools that exist in your Amazon Web Services account in the current
    #             Region.</p>
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
    #            <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
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
    #             enabled the Deliverability dashboard for the domain.</p>
    # @param [Hash, Types::ListDomainDeliverabilityCampaignsRequest] params
    # @option params [Time] :start_date
    #   <p>The first day that you want to obtain deliverability data
    #               for.</p>
    # @option params [Time] :end_date
    #   <p>The last day that you want to obtain deliverability data for.
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

    # <p>Returns a list of all of the email identities that are associated with your Amazon Web Services
    #             account. An identity can be either an email address or a domain. This operation returns
    #             identities that are verified as well as those that aren't. This operation returns
    #             identities that are associated with Amazon SES and Amazon Pinpoint.</p>
    # @param [Hash, Types::ListEmailIdentitiesRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListEmailIdentities</code> to indicate
    #               the position in the list of identities.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListEmailIdentities</code>. If
    #               the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #            <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
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
    #         sending_enabled: false,
    #         verification_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEmailIdentitiesResponse]
    def list_email_identities(params = {}, options = {})
      request = build_request(:list_email_identities, params)
      request.send_request(options)
    end

    # <p>Lists the email templates present in your Amazon SES account in the current Amazon Web Services
    #             Region.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::ListEmailTemplatesRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListEmailTemplates</code> to indicate
    #               the position in the list of email templates.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListEmailTemplates</code>. If the number of
    #               results is larger than the number you specified in this parameter, then the response
    #               includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #            <p>The value you specify has to be at least 1, and can be no more than 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_email_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     templates_metadata: [
    #       {
    #         template_name: "EmailTemplateName",
    #         created_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEmailTemplatesResponse]
    def list_email_templates(params = {}, options = {})
      request = build_request(:list_email_templates, params)
      request.send_request(options)
    end

    # <p>Lists all of the export jobs.</p>
    # @param [Hash, Types::ListExportJobsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token returned from a previous call to <code>ListExportJobs</code> to
    #               indicate the position in the list of export jobs.</p>
    # @option params [Integer] :page_size
    #   <p>Maximum number of export jobs to return at once. Use this parameter to paginate
    #               results. If additional export jobs exist beyond the specified limit, the
    #               <code>NextToken</code> element is sent in the response. Use the
    #               <code>NextToken</code> value in subsequent calls to <code>ListExportJobs</code> to
    #               retrieve additional export jobs.</p>
    # @option params [String] :export_source_type
    #   <p>A value used to list export jobs that have a certain
    #               <code>ExportSourceType</code>.</p>
    # @option params [String] :job_status
    #   <p>A value used to list export jobs that have a certain <code>JobStatus</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     page_size: 1,
    #     export_source_type: "METRICS_DATA" # One of: ["METRICS_DATA", "MESSAGE_INSIGHTS"],
    #     job_status: "CREATED" # One of: ["CREATED", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"]
    #   }
    #   options = {}
    #   response = client.list_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_jobs: [
    #       {
    #         job_id: "JobId",
    #         export_source_type: "METRICS_DATA" # One of: ["METRICS_DATA", "MESSAGE_INSIGHTS"],
    #         job_status: "CREATED" # One of: ["CREATED", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"],
    #         created_timestamp: Time.now,
    #         completed_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExportJobsResponse]
    def list_export_jobs(params = {}, options = {})
      request = build_request(:list_export_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all of the import jobs.</p>
    # @param [Hash, Types::ListImportJobsRequest] params
    # @option params [String] :import_destination_type
    #   <p>The destination of the import job, which can be used to list import jobs that have a
    #               certain <code>ImportDestinationType</code>.</p>
    # @option params [String] :next_token
    #   <p>A string token indicating that there might be additional import jobs available to be
    #               listed. Copy this token to a subsequent call to <code>ListImportJobs</code> with the
    #               same parameters to retrieve the next page of import jobs.</p>
    # @option params [Integer] :page_size
    #   <p>Maximum number of import jobs to return at once. Use this parameter to paginate
    #               results. If additional import jobs exist beyond the specified limit, the
    #                   <code>NextToken</code> element is sent in the response. Use the
    #                   <code>NextToken</code> value in subsequent requests to retrieve additional
    #               addresses.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_destination_type: "SUPPRESSION_LIST" # One of: ["SUPPRESSION_LIST", "CONTACT_LIST"],
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_jobs: [
    #       {
    #         job_id: "JobId",
    #         import_destination: {
    #           suppression_list_destination: {
    #             suppression_list_import_action: "DELETE" # One of: ["DELETE", "PUT"], # required
    #           },
    #           contact_list_destination: {
    #             contact_list_name: "ContactListName", # required
    #             contact_list_import_action: "DELETE" # One of: ["DELETE", "PUT"], # required
    #           }
    #         },
    #         job_status: "CREATED" # One of: ["CREATED", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"],
    #         created_timestamp: Time.now,
    #         processed_records_count: 1,
    #         failed_records_count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListImportJobsResponse]
    def list_import_jobs(params = {}, options = {})
      request = build_request(:list_import_jobs, params)
      request.send_request(options)
    end

    # <p>List the multi-region endpoints (global-endpoints).</p>
    #          <p>Only multi-region endpoints (global-endpoints) whose primary region is the AWS-Region
    #             where operation is executed will be listed.</p>
    # @param [Hash, Types::ListMultiRegionEndpointsRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListMultiRegionEndpoints</code> to indicate
    #               the position in the list of multi-region endpoints (global-endpoints).</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListMultiRegionEndpoints</code>.
    #               If the number of results is larger than the number you specified in this parameter,
    #               the response includes a <code>NextToken</code> element
    #               that you can use to retrieve the next page of results.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextTokenV2",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_multi_region_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     multi_region_endpoints: [
    #       {
    #         endpoint_name: "EndpointName",
    #         status: "CREATING" # One of: ["CREATING", "READY", "FAILED", "DELETING"],
    #         endpoint_id: "EndpointId",
    #         regions: ["Region"],
    #         created_timestamp: Time.now,
    #         last_updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextTokenV2"
    #   }
    # @return [Types::ListMultiRegionEndpointsResponse]
    def list_multi_region_endpoints(params = {}, options = {})
      request = build_request(:list_multi_region_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists the recommendations present in your Amazon SES account in the current Amazon Web Services Region.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::ListRecommendationsRequest] params
    # @option params [Hash<String, String>] :filter
    #   <p>Filters applied when retrieving recommendations. Can eiter be an individual filter, or
    #                 combinations of <code>STATUS</code> and <code>IMPACT</code> or
    #                 <code>STATUS</code> and <code>TYPE</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListRecommendations</code> to
    #               indicate the position in the list of recommendations.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to
    #               <code>ListRecommendations</code>. If the number of results is larger than
    #               the number you specified in this parameter, then the response includes a
    #               <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #            <p>The value you specify has to be at least 1, and can be no more than 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       "ListRecommendationsFilterKey" => "ListRecommendationFilterValue"
    #     },
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendations: [
    #       {
    #         resource_arn: "AmazonResourceName",
    #         type: "DKIM" # One of: ["DKIM", "DMARC", "SPF", "BIMI", "COMPLAINT", "BOUNCE", "FEEDBACK_3P", "IP_LISTING"],
    #         description: "RecommendationDescription",
    #         status: "OPEN" # One of: ["OPEN", "FIXED"],
    #         created_timestamp: Time.now,
    #         last_updated_timestamp: Time.now,
    #         impact: "LOW" # One of: ["LOW", "HIGH"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRecommendationsResponse]
    def list_recommendations(params = {}, options = {})
      request = build_request(:list_recommendations, params)
      request.send_request(options)
    end

    # <p>List reputation entities in your Amazon SES account in the current Amazon Web Services Region. 
    #             You can filter the results by entity type, reputation impact, sending status, 
    #             or entity reference prefix.</p>
    #          <p>
    #             <i>Reputation entities</i> represent resources in your account that have reputation 
    #             tracking and management capabilities. Use this operation to get an overview of 
    #             all entities and their current reputation status.</p>
    # @param [Hash, Types::ListReputationEntitiesRequest] params
    # @option params [Hash<String, String>] :filter
    #   <p>An object that contains filters to apply when listing reputation entities. 
    #               You can filter by entity type, reputation impact, sending status, or entity 
    #               reference prefix.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListReputationEntities</code> to indicate 
    #               the position in the list of reputation entities.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListReputationEntities</code>. 
    #               If the number of results is larger than the number you specified in this parameter, 
    #               then the response includes a <code>NextToken</code> element, which you can use to obtain 
    #               additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       "ReputationEntityFilterKey" => "ReputationEntityFilterValue"
    #     },
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_reputation_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reputation_entities: [
    #       {
    #         reputation_entity_reference: "ReputationEntityReference",
    #         reputation_entity_type: "RESOURCE" # One of: ["RESOURCE"],
    #         reputation_management_policy: "AmazonResourceName",
    #         customer_managed_status: {
    #           status: "ENABLED" # One of: ["ENABLED", "REINSTATED", "DISABLED"],
    #           cause: "StatusCause",
    #           last_updated_timestamp: Time.now
    #         },
    #         aws_ses_managed_status: {
    #           status: "ENABLED" # One of: ["ENABLED", "REINSTATED", "DISABLED"],
    #           cause: "StatusCause",
    #           last_updated_timestamp: Time.now
    #         },
    #         sending_status_aggregate: "ENABLED" # One of: ["ENABLED", "REINSTATED", "DISABLED"],
    #         reputation_impact: "LOW" # One of: ["LOW", "HIGH"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListReputationEntitiesResponse]
    def list_reputation_entities(params = {}, options = {})
      request = build_request(:list_reputation_entities, params)
      request.send_request(options)
    end

    # <p>List all tenants associated with a specific resource.</p>
    #          <p>This operation returns a list of tenants that are associated with the specified
    #             resource. This is useful for understanding which tenants are currently using a particular
    #             resource such as an email identity, configuration set, or email template.</p>
    # @param [Hash, Types::ListResourceTenantsRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list associated tenants for.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListResourceTenants</code>.
    #               If the number of results is larger than the number you specified in this parameter,
    #               then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListResourceTenants</code> to indicate the position in the list of resource tenants.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     page_size: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_tenants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tenants: [
    #       {
    #         tenant_name: "TenantName",
    #         tenant_id: "TenantId",
    #         resource_arn: "AmazonResourceName",
    #         associated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceTenantsResponse]
    def list_resource_tenants(params = {}, options = {})
      request = build_request(:list_resource_tenants, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of email addresses that are on the suppression list for your
    #             account.</p>
    # @param [Hash, Types::ListSuppressedDestinationsRequest] params
    # @option params [Array<String>] :reasons
    #   <p>The factors that caused the email address to be added to .</p>
    # @option params [Time] :start_date
    #   <p>Used to filter the list of suppressed email destinations so that it only includes
    #               addresses that were added to the list after a specific date.</p>
    # @option params [Time] :end_date
    #   <p>Used to filter the list of suppressed email destinations so that it only includes
    #               addresses that were added to the list before a specific date.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListSuppressedDestinations</code> to
    #               indicate the position in the list of suppressed email addresses.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListSuppressedDestinations</code>. If the number of results is larger than the
    #               number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reasons: ["BOUNCE" # One of: ["BOUNCE", "COMPLAINT"]],
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_suppressed_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suppressed_destination_summaries: [
    #       {
    #         email_address: "EmailAddress", # required
    #         reason: "BOUNCE" # One of: ["BOUNCE", "COMPLAINT"], # required
    #         last_update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSuppressedDestinationsResponse]
    def list_suppressed_destinations(params = {}, options = {})
      request = build_request(:list_suppressed_destinations, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of the tags (keys and values) that are associated with a specified
    #             resource. A <i>tag</i> is a label that you optionally define and associate
    #             with a resource. Each tag consists of a required <i>tag key</i> and an
    #             optional associated <i>tag value</i>. A tag key is a general label that
    #             acts as a category for more specific tag values. A tag value acts as a descriptor within
    #             a tag key.</p>
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

    # <p>List all resources associated with a specific tenant.</p>
    #          <p>This operation returns a list of resources (email identities, configuration sets,
    #             or email templates) that are associated with the specified tenant. You can optionally
    #             filter the results by resource type.</p>
    # @param [Hash, Types::ListTenantResourcesRequest] params
    # @option params [String] :tenant_name
    #   <p>The name of the tenant to list resources for.</p>
    # @option params [Hash<String, String>] :filter
    #   <p>A map of filter keys and values for filtering the list of tenant resources. Currently,
    #               the only supported filter key is <code>RESOURCE_TYPE</code>.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListTenantResources</code>.
    #               If the number of results is larger than the number you specified in this parameter,
    #               then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListTenantResources</code> to indicate the position in the list of tenant resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tenant_name: "TenantName", # required
    #     filter: {
    #       "ListTenantResourcesFilterKey" => "ListTenantResourcesFilterValue"
    #     },
    #     page_size: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tenant_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tenant_resources: [
    #       {
    #         resource_type: "EMAIL_IDENTITY" # One of: ["EMAIL_IDENTITY", "CONFIGURATION_SET", "EMAIL_TEMPLATE"],
    #         resource_arn: "AmazonResourceName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTenantResourcesResponse]
    def list_tenant_resources(params = {}, options = {})
      request = build_request(:list_tenant_resources, params)
      request.send_request(options)
    end

    # <p>List all tenants associated with your account in the current Amazon Web Services Region.</p>
    #          <p>This operation returns basic information about each tenant,
    #             such as tenant name, ID, ARN, and creation timestamp.</p>
    # @param [Hash, Types::ListTenantsRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListTenants</code> to indicate the position in the list of tenants.</p>
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListTenants</code>.
    #               If the number of results is larger than the number you specified in this parameter,
    #               then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_tenants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tenants: [
    #       {
    #         tenant_name: "TenantName",
    #         tenant_id: "TenantId",
    #         tenant_arn: "AmazonResourceName",
    #         created_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTenantsResponse]
    def list_tenants(params = {}, options = {})
      request = build_request(:list_tenants, params)
      request.send_request(options)
    end

    # <p>Enable or disable the automatic warm-up feature for dedicated IP addresses.</p>
    # @param [Hash, Types::PutAccountDedicatedIpWarmupAttributesRequest] params
    # @option params [Boolean] :auto_warmup_enabled
    #   <p>Enables or disables the automatic warm-up feature for dedicated IP addresses that are
    #               associated with your Amazon SES account in the current Amazon Web Services Region. Set to <code>true</code>
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

    # <p>Update your Amazon SES account details.</p>
    # @param [Hash, Types::PutAccountDetailsRequest] params
    # @option params [String] :mail_type
    #   <p>The type of email your account will send.</p>
    # @option params [String] :website_url
    #   <p>The URL of your website. This information helps us better understand the type of
    #               content that you plan to send.</p>
    # @option params [String] :contact_language
    #   <p>The language you would prefer to be contacted with.</p>
    # @option params [String] :use_case_description
    #   <p>A description of the types of email that you plan to send.</p>
    # @option params [Array<String>] :additional_contact_email_addresses
    #   <p>Additional email addresses that you would like to be notified regarding Amazon SES
    #               matters.</p>
    # @option params [Boolean] :production_access_enabled
    #   <p>Indicates whether or not your account should have production access in the current
    #               Amazon Web Services Region.</p>
    #            <p>If the value is <code>false</code>, then your account is in the
    #                   <i>sandbox</i>. When your account is in the sandbox, you can only send
    #               email to verified identities.
    #               </p>
    #            <p>If the value is <code>true</code>, then your account has production access. When your
    #               account has production access, you can send email to any address. The sending quota and
    #               maximum sending rate for your account vary based on your specific use case.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mail_type: "MARKETING" # One of: ["MARKETING", "TRANSACTIONAL"], # required
    #     website_url: "WebsiteURL", # required
    #     contact_language: "EN" # One of: ["EN", "JA"],
    #     use_case_description: "UseCaseDescription",
    #     additional_contact_email_addresses: ["AdditionalContactEmailAddress"],
    #     production_access_enabled: false
    #   }
    #   options = {}
    #   response = client.put_account_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAccountDetailsResponse]
    def put_account_details(params = {}, options = {})
      request = build_request(:put_account_details, params)
      request.send_request(options)
    end

    # <p>Enable or disable the ability of your account to send email.</p>
    # @param [Hash, Types::PutAccountSendingAttributesRequest] params
    # @option params [Boolean] :sending_enabled
    #   <p>Enables or disables your account's ability to send email. Set to <code>true</code> to
    #               enable email sending, or set to <code>false</code> to disable email sending.</p>
    #            <note>
    #               <p>If Amazon Web Services paused your account's ability to send email, you can't use this operation
    #                   to resume your account's ability to send email.</p>
    #            </note>
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

    # <p>Change the settings for the account-level suppression list.</p>
    # @param [Hash, Types::PutAccountSuppressionAttributesRequest] params
    # @option params [Array<String>] :suppressed_reasons
    #   <p>A list that contains the reasons that email addresses will be automatically added to
    #               the suppression list for your account. This list can contain any or all of the
    #               following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a
    #                       complaint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BOUNCE</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a hard
    #                       bounce.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     suppressed_reasons: ["BOUNCE" # One of: ["BOUNCE", "COMPLAINT"]]
    #   }
    #   options = {}
    #   response = client.put_account_suppression_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAccountSuppressionAttributesResponse]
    def put_account_suppression_attributes(params = {}, options = {})
      request = build_request(:put_account_suppression_attributes, params)
      request.send_request(options)
    end

    # <p>Update your Amazon SES account VDM attributes.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::PutAccountVdmAttributesRequest] params
    # @option params [Types::VdmAttributes] :vdm_attributes
    #   <p>The VDM attributes that you wish to apply to your Amazon SES account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vdm_attributes: { # required
    #       vdm_enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       dashboard_attributes: {
    #         engagement_metrics: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       guardian_attributes: {
    #         optimized_shared_delivery: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_account_vdm_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAccountVdmAttributesResponse]
    def put_account_vdm_attributes(params = {}, options = {})
      request = build_request(:put_account_vdm_attributes, params)
      request.send_request(options)
    end

    # <p>Associate the configuration set with a MailManager archive. When you send email using the
    #         <code>SendEmail</code> or <code>SendBulkEmail</code> operations the message as it will be given
    #         to the receiving SMTP server will be archived, along with the recipient information.</p>
    # @param [Hash, Types::PutConfigurationSetArchivingOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to associate with a MailManager archive.</p>
    # @option params [String] :archive_arn
    #   <p>The Amazon Resource Name (ARN) of the MailManager archive that the Amazon SES API v2 sends email
    #               to.</p>
    # @example Used to associate an MailManager archive with a ConfigurationSet.
    #   # This example associates an archive arn with a configuration set.
    #   params = {
    #     configuration_set_name: "sample-configuration-name",
    #     archive_arn: "arn:aws:ses:us-west-2:123456789012:mailmanager-archive/a-abcdefghijklmnopqrstuvwxyz"
    #   }
    #   options = {}
    #   response = client.put_configuration_set_archiving_options(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     archive_arn: "ArchiveArn"
    #   }
    #   options = {}
    #   response = client.put_configuration_set_archiving_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutConfigurationSetArchivingOptionsResponse]
    def put_configuration_set_archiving_options(params = {}, options = {})
      request = build_request(:put_configuration_set_archiving_options, params)
      request.send_request(options)
    end

    # <p>Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools
    #             to create groups of dedicated IP addresses for sending specific types of email.</p>
    # @param [Hash, Types::PutConfigurationSetDeliveryOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to associate with a dedicated IP pool.</p>
    # @option params [String] :tls_policy
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
    #               delivered if a TLS connection can be established. If the value is <code>Optional</code>,
    #               messages can be delivered in plain text if a TLS connection can't be established.</p>
    # @option params [String] :sending_pool_name
    #   <p>The name of the dedicated IP pool to associate with the configuration set.</p>
    # @option params [Integer] :max_delivery_seconds
    #   <p>The maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email.
    #               If specified, the value must greater than or equal to 300 seconds (5 minutes)
    #               and less than or equal to 50400 seconds (840 minutes).
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tls_policy: "REQUIRE" # One of: ["REQUIRE", "OPTIONAL"],
    #     sending_pool_name: "SendingPoolName",
    #     max_delivery_seconds: 1
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
    #             particular configuration set in a specific Amazon Web Services Region.</p>
    # @param [Hash, Types::PutConfigurationSetReputationOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
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
    #             in a specific Amazon Web Services Region.</p>
    # @param [Hash, Types::PutConfigurationSetSendingOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to enable or disable email sending for.</p>
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

    # <p>Specify the account suppression list preferences for a configuration set.</p>
    # @param [Hash, Types::PutConfigurationSetSuppressionOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to change the suppression list preferences
    #               for.</p>
    # @option params [Array<String>] :suppressed_reasons
    #   <p>A list that contains the reasons that email addresses are automatically added to the
    #               suppression list for your account. This list can contain any or all of the
    #               following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a
    #                       complaint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BOUNCE</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a hard
    #                       bounce.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     suppressed_reasons: ["BOUNCE" # One of: ["BOUNCE", "COMPLAINT"]]
    #   }
    #   options = {}
    #   response = client.put_configuration_set_suppression_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutConfigurationSetSuppressionOptionsResponse]
    def put_configuration_set_suppression_options(params = {}, options = {})
      request = build_request(:put_configuration_set_suppression_options, params)
      request.send_request(options)
    end

    # <p>Specify a custom domain to use for open and click tracking elements in email that you
    #             send.</p>
    # @param [Hash, Types::PutConfigurationSetTrackingOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    # @option params [String] :custom_redirect_domain
    #   <p>The domain to use to track open and click events.</p>
    # @option params [String] :https_policy
    #   <p>The https policy to use for tracking open and click events. If the value is OPTIONAL or HttpsPolicy is not
    #           specified, the open trackers use HTTP and click tracker use the original protocol of the link.
    #           If the value is REQUIRE, both open and click tracker uses HTTPS and if the value is REQUIRE_OPEN_ONLY
    #               open tracker uses HTTPS and link tracker is same as original protocol of the link.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     custom_redirect_domain: "CustomRedirectDomain",
    #     https_policy: "REQUIRE" # One of: ["REQUIRE", "REQUIRE_OPEN_ONLY", "OPTIONAL"]
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

    # <p>Specify VDM preferences for email that you send using the configuration set.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::PutConfigurationSetVdmOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    # @option params [Types::VdmOptions] :vdm_options
    #   <p>The VDM options to apply to the configuration set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     vdm_options: {
    #       dashboard_options: {
    #         engagement_metrics: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       guardian_options: {
    #         optimized_shared_delivery: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_configuration_set_vdm_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutConfigurationSetVdmOptionsResponse]
    def put_configuration_set_vdm_options(params = {}, options = {})
      request = build_request(:put_configuration_set_vdm_options, params)
      request.send_request(options)
    end

    # <p>Move a dedicated IP address to an existing dedicated IP pool.</p>
    #          <note>
    #             <p>The dedicated IP address that you specify must already exist, and must be
    #                 associated with your Amazon Web Services account.
    #                 
    #             </p>
    #             <p>The dedicated IP pool you specify must already exist. You can create a new pool by
    #                 using the <code>CreateDedicatedIpPool</code> operation.</p>
    #          </note>
    # @param [Hash, Types::PutDedicatedIpInPoolRequest] params
    # @option params [String] :ip
    #   <p>The IP address that you want to move to the dedicated IP pool. The value you specify
    #               has to be a dedicated IP address that's associated with your Amazon Web Services account.</p>
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

    # <p>Used to convert a dedicated IP pool to a different scaling mode.</p>
    #          <note>
    #             <p>
    #                <code>MANAGED</code> pools cannot be converted to <code>STANDARD</code> scaling mode.</p>
    #          </note>
    # @param [Hash, Types::PutDedicatedIpPoolScalingAttributesRequest] params
    # @option params [String] :pool_name
    #   <p>The name of the dedicated IP pool.</p>
    # @option params [String] :scaling_mode
    #   <p>The scaling mode to apply to the dedicated IP pool.</p>
    #            <note>
    #               <p>Changing the scaling mode from <code>MANAGED</code> to <code>STANDARD</code> is not supported.</p>
    #            </note>
    # @example Used to convert a dedicated IP pool to a different scaling mode.
    #   # This example converts a dedicated IP pool from STANDARD to MANAGED.
    #   params = {
    #     pool_name: "sample-ses-pool",
    #     scaling_mode: MANAGED
    #   }
    #   options = {}
    #   response = client.put_dedicated_ip_pool_scaling_attributes(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_name: "PoolName", # required
    #     scaling_mode: "STANDARD" # One of: ["STANDARD", "MANAGED"], # required
    #   }
    #   options = {}
    #   response = client.put_dedicated_ip_pool_scaling_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutDedicatedIpPoolScalingAttributesResponse]
    def put_dedicated_ip_pool_scaling_attributes(params = {}, options = {})
      request = build_request(:put_dedicated_ip_pool_scaling_attributes, params)
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

    # <p>Enable or disable the Deliverability dashboard. When you enable the Deliverability dashboard, you gain
    #             access to reputation, deliverability, and other metrics for the domains that you use to
    #             send email. You also gain the ability to perform predictive inbox placement tests.</p>
    #          <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon SES and other Amazon Web Services services. For more
    #             information about the features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/ses/pricing/">Amazon SES Pricing</a>.</p>
    # @param [Hash, Types::PutDeliverabilityDashboardOptionRequest] params
    # @option params [Boolean] :dashboard_enabled
    #   <p>Specifies whether to enable the Deliverability dashboard. To enable the dashboard, set this
    #               value to <code>true</code>.</p>
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

    # <p>Used to associate a configuration set with an email identity.</p>
    # @param [Hash, Types::PutEmailIdentityConfigurationSetAttributesRequest] params
    # @option params [String] :email_identity
    #   <p>The email address or domain to associate with a configuration set.</p>
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to associate with an email identity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     configuration_set_name: "ConfigurationSetName"
    #   }
    #   options = {}
    #   response = client.put_email_identity_configuration_set_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutEmailIdentityConfigurationSetAttributesResponse]
    def put_email_identity_configuration_set_attributes(params = {}, options = {})
      request = build_request(:put_email_identity_configuration_set_attributes, params)
      request.send_request(options)
    end

    # <p>Used to enable or disable DKIM authentication for an email identity.</p>
    # @param [Hash, Types::PutEmailIdentityDkimAttributesRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    # @option params [Boolean] :signing_enabled
    #   <p>Sets the DKIM signing configuration for the identity.</p>
    #            <p>When you set this value <code>true</code>, then the messages that are sent from the
    #               identity are signed using DKIM. If you set this value to <code>false</code>, your
    #               messages are sent without DKIM signing.</p>
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

    # <p>Used to configure or change the DKIM authentication settings for an email domain
    #             identity. You can use this operation to do any of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Update the signing attributes for an identity that uses Bring Your Own DKIM
    #                     (BYODKIM).</p>
    #             </li>
    #             <li>
    #                <p>Update the key length that should be used for Easy DKIM.</p>
    #             </li>
    #             <li>
    #                <p>Change from using no DKIM authentication to using Easy DKIM.</p>
    #             </li>
    #             <li>
    #                <p>Change from using no DKIM authentication to using BYODKIM.</p>
    #             </li>
    #             <li>
    #                <p>Change from using Easy DKIM to using BYODKIM.</p>
    #             </li>
    #             <li>
    #                <p>Change from using BYODKIM to using Easy DKIM.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutEmailIdentityDkimSigningAttributesRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    # @option params [String] :signing_attributes_origin
    #   <p>The method to use to configure DKIM for the identity. There are the following possible
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_SES</code> – Configure DKIM for the identity by using <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy
    #                           DKIM</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXTERNAL</code> – Configure DKIM for the identity by using Bring
    #                       Your Own DKIM (BYODKIM).</p>
    #               </li>
    #            </ul>
    # @option params [Types::DkimSigningAttributes] :signing_attributes
    #   <p>An object that contains information about the private key and selector that you want
    #               to use to configure DKIM for the identity for Bring Your Own DKIM (BYODKIM) for the
    #               identity, or, configures the key length to be used for <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     signing_attributes_origin: "AWS_SES" # One of: ["AWS_SES", "EXTERNAL", "AWS_SES_AF_SOUTH_1", "AWS_SES_EU_NORTH_1", "AWS_SES_AP_SOUTH_1", "AWS_SES_EU_WEST_3", "AWS_SES_EU_WEST_2", "AWS_SES_EU_SOUTH_1", "AWS_SES_EU_WEST_1", "AWS_SES_AP_NORTHEAST_3", "AWS_SES_AP_NORTHEAST_2", "AWS_SES_ME_SOUTH_1", "AWS_SES_AP_NORTHEAST_1", "AWS_SES_IL_CENTRAL_1", "AWS_SES_SA_EAST_1", "AWS_SES_CA_CENTRAL_1", "AWS_SES_AP_SOUTHEAST_1", "AWS_SES_AP_SOUTHEAST_2", "AWS_SES_AP_SOUTHEAST_3", "AWS_SES_EU_CENTRAL_1", "AWS_SES_US_EAST_1", "AWS_SES_US_EAST_2", "AWS_SES_US_WEST_1", "AWS_SES_US_WEST_2", "AWS_SES_ME_CENTRAL_1", "AWS_SES_AP_SOUTH_2", "AWS_SES_EU_CENTRAL_2"], # required
    #     signing_attributes: {
    #       domain_signing_selector: "Selector",
    #       domain_signing_private_key: "PrivateKey",
    #       next_signing_key_length: "RSA_1024_BIT" # One of: ["RSA_1024_BIT", "RSA_2048_BIT"],
    #       domain_signing_attributes_origin: "AWS_SES" # One of: ["AWS_SES", "EXTERNAL", "AWS_SES_AF_SOUTH_1", "AWS_SES_EU_NORTH_1", "AWS_SES_AP_SOUTH_1", "AWS_SES_EU_WEST_3", "AWS_SES_EU_WEST_2", "AWS_SES_EU_SOUTH_1", "AWS_SES_EU_WEST_1", "AWS_SES_AP_NORTHEAST_3", "AWS_SES_AP_NORTHEAST_2", "AWS_SES_ME_SOUTH_1", "AWS_SES_AP_NORTHEAST_1", "AWS_SES_IL_CENTRAL_1", "AWS_SES_SA_EAST_1", "AWS_SES_CA_CENTRAL_1", "AWS_SES_AP_SOUTHEAST_1", "AWS_SES_AP_SOUTHEAST_2", "AWS_SES_AP_SOUTHEAST_3", "AWS_SES_EU_CENTRAL_1", "AWS_SES_US_EAST_1", "AWS_SES_US_EAST_2", "AWS_SES_US_WEST_1", "AWS_SES_US_WEST_2", "AWS_SES_ME_CENTRAL_1", "AWS_SES_AP_SOUTH_2", "AWS_SES_EU_CENTRAL_2"]
    #     }
    #   }
    #   options = {}
    #   response = client.put_email_identity_dkim_signing_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dkim_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"],
    #     dkim_tokens: ["DnsToken"]
    #   }
    # @return [Types::PutEmailIdentityDkimSigningAttributesResponse]
    def put_email_identity_dkim_signing_attributes(params = {}, options = {})
      request = build_request(:put_email_identity_dkim_signing_attributes, params)
      request.send_request(options)
    end

    # <p>Used to enable or disable feedback forwarding for an identity. This setting determines
    #             what happens when an identity is used to send an email that results in a bounce or
    #             complaint event.</p>
    #          <p>If the value is <code>true</code>, you receive email notifications when bounce or
    #             complaint events occur. These notifications are sent to the address that you specified
    #             in the <code>Return-Path</code> header of the original email.</p>
    #          <p>You're required to have a method of tracking bounces and complaints. If you haven't
    #             set up another mechanism for receiving bounce or complaint notifications (for example,
    #             by setting up an event destination), you receive an email notification when these events
    #             occur (even if this setting is disabled).</p>
    # @param [Hash, Types::PutEmailIdentityFeedbackAttributesRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    # @option params [Boolean] :email_forwarding_enabled
    #   <p>Sets the feedback forwarding configuration for the identity.</p>
    #            <p>If the value is <code>true</code>, you receive email notifications when bounce or
    #               complaint events occur. These notifications are sent to the address that you specified
    #               in the <code>Return-Path</code> header of the original email.</p>
    #            <p>You're required to have a method of tracking bounces and complaints. If you haven't
    #               set up another mechanism for receiving bounce or complaint notifications (for example,
    #               by setting up an event destination), you receive an email notification when these events
    #               occur (even if this setting is disabled).</p>
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
    #   <p>The verified email identity.</p>
    # @option params [String] :mail_from_domain
    #   <p> The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM
    #               domain must meet the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>It has to be a subdomain of the verified identity.</p>
    #               </li>
    #               <li>
    #                  <p>It can't be used to receive email.</p>
    #               </li>
    #               <li>
    #                  <p>It can't be used in a "From" address if the MAIL FROM domain is a destination
    #                       for feedback forwarding emails.</p>
    #               </li>
    #            </ul>
    # @option params [String] :behavior_on_mx_failure
    #   <p>The action to take if the required MX record isn't found when you send an email. When
    #               you set this value to <code>UseDefaultValue</code>, the mail is sent using
    #                   <i>amazonses.com</i> as the MAIL FROM domain. When you set this value
    #               to <code>RejectMessage</code>, the Amazon SES API v2 returns a
    #                   <code>MailFromDomainNotVerified</code> error, and doesn't attempt to deliver the
    #               email.</p>
    #            <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the
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

    # <p>Adds an email address to the suppression list for your account.</p>
    # @param [Hash, Types::PutSuppressedDestinationRequest] params
    # @option params [String] :email_address
    #   <p>The email address that should be added to the suppression list for your
    #               account.</p>
    # @option params [String] :reason
    #   <p>The factors that should cause the email address to be added to the suppression list
    #               for your account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_address: "EmailAddress", # required
    #     reason: "BOUNCE" # One of: ["BOUNCE", "COMPLAINT"], # required
    #   }
    #   options = {}
    #   response = client.put_suppressed_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutSuppressedDestinationResponse]
    def put_suppressed_destination(params = {}, options = {})
      request = build_request(:put_suppressed_destination, params)
      request.send_request(options)
    end

    # <p>Composes an email message to multiple destinations.</p>
    # @param [Hash, Types::SendBulkEmailRequest] params
    # @option params [String] :from_email_address
    #   <p>The email address to use as the "From" address for the email. The address that you
    #               specify has to be verified.</p>
    # @option params [String] :from_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FromEmailAddress</code> parameter.</p>
    #            <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use sender@example.com, then you would specify the
    #                   <code>FromEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FromEmailAddress</code> to be sender@example.com.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The "Reply-to" email addresses for the message. When the recipient replies to the
    #               message, each Reply-to address receives the reply.</p>
    # @option params [String] :feedback_forwarding_email_address
    #   <p>The address that you want bounce and complaint notifications to be sent to.</p>
    # @option params [String] :feedback_forwarding_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FeedbackForwardingEmailAddress</code>
    #               parameter.</p>
    #            <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use feedback@example.com, then you would specify the
    #                   <code>FeedbackForwardingEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    # @option params [Array<Types::MessageTag>] :default_email_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendEmail</code> operation. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events.</p>
    # @option params [Types::BulkEmailContent] :default_content
    #   <p>An object that contains the body of the message. You can specify a template
    #               message.</p>
    # @option params [Array<Types::BulkEmailEntry>] :bulk_email_entries
    #   <p>The list of bulk email entry objects.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when sending the email.</p>
    # @option params [String] :endpoint_id
    #   <p>The ID of the multi-region endpoint (global-endpoint).</p>
    # @option params [String] :tenant_name
    #   <p>The name of the tenant through which this bulk email will be sent.</p>
    #            <note>
    #               <p>
    #                   The email sending operation will only succeed if all referenced resources
    #                   (identities, configuration sets, and templates) are associated with this tenant.
    #               </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     from_email_address: "EmailAddress",
    #     from_email_address_identity_arn: "AmazonResourceName",
    #     reply_to_addresses: ["EmailAddress"],
    #     feedback_forwarding_email_address: "EmailAddress",
    #     feedback_forwarding_email_address_identity_arn: "AmazonResourceName",
    #     default_email_tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       }
    #     ],
    #     default_content: { # required
    #       template: {
    #         template_name: "EmailTemplateName",
    #         template_arn: "AmazonResourceName",
    #         template_content: {
    #           subject: "EmailTemplateSubject",
    #           text: "EmailTemplateText",
    #           html: "EmailTemplateHtml"
    #         },
    #         template_data: "EmailTemplateData",
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           }
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT" # One of: ["ATTACHMENT", "INLINE"],
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64" # One of: ["BASE64", "QUOTED_PRINTABLE", "SEVEN_BIT"],
    #             content_type: "AttachmentContentType"
    #           }
    #         ]
    #       }
    #     },
    #     bulk_email_entries: [ # required
    #       {
    #         destination: { # required
    #           to_addresses: ["EmailAddress"],
    #           cc_addresses: ["EmailAddress"],
    #           bcc_addresses: ["EmailAddress"]
    #         },
    #         replacement_tags: [
    #           {
    #             name: "MessageTagName", # required
    #             value: "MessageTagValue", # required
    #           }
    #         ],
    #         replacement_email_content: {
    #           replacement_template: {
    #             replacement_template_data: "EmailTemplateData"
    #           }
    #         },
    #         replacement_headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           }
    #         ]
    #       }
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #     endpoint_id: "EndpointId",
    #     tenant_name: "TenantName"
    #   }
    #   options = {}
    #   response = client.send_bulk_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bulk_email_entry_results: [ # required
    #       {
    #         status: "SUCCESS" # One of: ["SUCCESS", "MESSAGE_REJECTED", "MAIL_FROM_DOMAIN_NOT_VERIFIED", "CONFIGURATION_SET_NOT_FOUND", "TEMPLATE_NOT_FOUND", "ACCOUNT_SUSPENDED", "ACCOUNT_THROTTLED", "ACCOUNT_DAILY_QUOTA_EXCEEDED", "INVALID_SENDING_POOL_NAME", "ACCOUNT_SENDING_PAUSED", "CONFIGURATION_SET_SENDING_PAUSED", "INVALID_PARAMETER", "TRANSIENT_FAILURE", "FAILED"],
    #         error: "ErrorMessage",
    #         message_id: "OutboundMessageId"
    #       }
    #     ]
    #   }
    # @return [Types::SendBulkEmailResponse]
    def send_bulk_email(params = {}, options = {})
      request = build_request(:send_bulk_email, params)
      request.send_request(options)
    end

    # <p>Adds an email address to the list of identities for your Amazon SES account in the current
    #                 Amazon Web Services Region and attempts to verify it. As a result of executing this
    #             operation, a customized verification email is sent to the specified address.</p>
    #          <p>To use this operation, you must first create a custom verification email template. For
    #             more information about creating and using custom verification email templates, see
    #                 <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 custom verification email templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::SendCustomVerificationEmailRequest] params
    # @option params [String] :email_address
    #   <p>The email address to verify.</p>
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template to use when sending the
    #               verification email.</p>
    # @option params [String] :configuration_set_name
    #   <p>Name of a configuration set to use when sending the verification email.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_address: "EmailAddress", # required
    #     template_name: "EmailTemplateName", # required
    #     configuration_set_name: "ConfigurationSetName"
    #   }
    #   options = {}
    #   response = client.send_custom_verification_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "OutboundMessageId"
    #   }
    # @return [Types::SendCustomVerificationEmailResponse]
    def send_custom_verification_email(params = {}, options = {})
      request = build_request(:send_custom_verification_email, params)
      request.send_request(options)
    end

    # <p>Sends an email message. You can use the Amazon SES API v2 to send the following types of
    #             messages:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Simple</b> – A standard email message. When
    #                     you create this type of message, you specify the sender, the recipient, and the
    #                     message body, and Amazon SES assembles the message for you.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Raw</b> – A raw, MIME-formatted email
    #                     message. When you send this type of email, you have to specify all of the
    #                     message headers, as well as the message body. You can use this message type to
    #                     send messages that contain attachments. The message that you specify has to be a
    #                     valid MIME message.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Templated</b> – A message that contains
    #                     personalization tags. When you send this type of email, Amazon SES API v2 automatically
    #                     replaces the tags with values that you specify.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::SendEmailRequest] params
    # @option params [String] :from_email_address
    #   <p>The email address to use as the "From" address for the email. The address that you
    #               specify has to be verified.
    #               </p>
    # @option params [String] :from_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FromEmailAddress</code> parameter.</p>
    #            <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use sender@example.com, then you would specify the
    #                   <code>FromEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FromEmailAddress</code> to be sender@example.com.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #            <p>For Raw emails, the <code>FromEmailAddressIdentityArn</code> value overrides the
    #               X-SES-SOURCE-ARN and X-SES-FROM-ARN headers specified in raw email message
    #               content.</p>
    # @option params [Types::Destination] :destination
    #   <p>An object that contains the recipients of the email message.</p>
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The "Reply-to" email addresses for the message. When the recipient replies to the
    #               message, each Reply-to address receives the reply.</p>
    # @option params [String] :feedback_forwarding_email_address
    #   <p>The address that you want bounce and complaint notifications to be sent to.</p>
    # @option params [String] :feedback_forwarding_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FeedbackForwardingEmailAddress</code>
    #               parameter.</p>
    #            <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use feedback@example.com, then you would specify the
    #                   <code>FeedbackForwardingEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    # @option params [Types::EmailContent] :content
    #   <p>An object that contains the body of the message. You can send either a Simple message,
    #               Raw message, or a Templated message.</p>
    # @option params [Array<Types::MessageTag>] :email_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendEmail</code> operation. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events. </p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when sending the email.</p>
    # @option params [String] :endpoint_id
    #   <p>The ID of the multi-region endpoint (global-endpoint).</p>
    # @option params [String] :tenant_name
    #   <p>The name of the tenant through which this email will be sent.</p>
    #            <note>
    #               <p>The email sending operation will only succeed if all referenced resources
    #                   (identities, configuration sets, and templates) are associated with this tenant.
    #               </p>
    #            </note>
    # @option params [Types::ListManagementOptions] :list_management_options
    #   <p>An object used to specify a list or topic to which an email belongs, which will be
    #               used when a contact chooses to unsubscribe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     from_email_address: "EmailAddress",
    #     from_email_address_identity_arn: "AmazonResourceName",
    #     destination: {
    #       to_addresses: ["EmailAddress"],
    #       cc_addresses: ["EmailAddress"],
    #       bcc_addresses: ["EmailAddress"]
    #     },
    #     reply_to_addresses: ["EmailAddress"],
    #     feedback_forwarding_email_address: "EmailAddress",
    #     feedback_forwarding_email_address_identity_arn: "AmazonResourceName",
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
    #         },
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           }
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT" # One of: ["ATTACHMENT", "INLINE"],
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64" # One of: ["BASE64", "QUOTED_PRINTABLE", "SEVEN_BIT"],
    #             content_type: "AttachmentContentType"
    #           }
    #         ]
    #       },
    #       raw: {
    #         data: "data", # required
    #       },
    #       template: {
    #         template_name: "EmailTemplateName",
    #         template_arn: "AmazonResourceName",
    #         template_content: {
    #           subject: "EmailTemplateSubject",
    #           text: "EmailTemplateText",
    #           html: "EmailTemplateHtml"
    #         },
    #         template_data: "EmailTemplateData",
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           }
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT" # One of: ["ATTACHMENT", "INLINE"],
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64" # One of: ["BASE64", "QUOTED_PRINTABLE", "SEVEN_BIT"],
    #             content_type: "AttachmentContentType"
    #           }
    #         ]
    #       }
    #     },
    #     email_tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       }
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #     endpoint_id: "EndpointId",
    #     tenant_name: "TenantName",
    #     list_management_options: {
    #       contact_list_name: "ContactListName", # required
    #       topic_name: "TopicName"
    #     }
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
    #             resource. Tags can help you categorize and manage resources in different ways, such as
    #             by purpose, owner, environment, or other criteria. A resource can have as many as 50
    #             tags.</p>
    #          <p>Each tag consists of a required <i>tag key</i> and an
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

    # <p>Creates a preview of the MIME content of an email when provided with a template and a
    #             set of replacement data.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::TestRenderEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the template.</p>
    # @option params [String] :template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "EmailTemplateName", # required
    #     template_data: "EmailTemplateData", # required
    #   }
    #   options = {}
    #   response = client.test_render_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rendered_template: "RenderedEmailTemplate", # required
    #   }
    # @return [Types::TestRenderEmailTemplateResponse]
    def test_render_email_template(params = {}, options = {})
      request = build_request(:test_render_email_template, params)
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
    #            <p>To remove more than one tag from the resource, append the <code>TagKeys</code>
    #               parameter and argument for each additional tag to remove, separated by an ampersand. For
    #               example:
    #                   <code>/v2/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2</code>
    #            </p>
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
    #          <p>
    #             <i>Events</i> include message sends, deliveries, opens, clicks, bounces,
    #             and complaints. <i>Event destinations</i> are places that you can send
    #             information about these events to. For example, you can send event data to Amazon EventBridge and
    #             associate a rule to send the event to the specified target.</p>
    # @param [Hash, Types::UpdateConfigurationSetEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination to
    #               modify.</p>
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination.</p>
    # @option params [Types::EventDestinationDefinition] :event_destination
    #   <p>An object that defines the event destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #     event_destination: { # required
    #       enabled: false,
    #       matching_event_types: ["SEND" # One of: ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE", "DELIVERY_DELAY", "SUBSCRIPTION"]],
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
    #       event_bridge_destination: {
    #         event_bus_arn: "AmazonResourceName", # required
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

    # <p>Updates a contact's preferences for a list.</p>
    #          <note>
    #             <p>You must specify all existing topic preferences in the
    #                     <code>TopicPreferences</code> object, not just the ones that need updating;
    #                 otherwise, all your existing preferences will be removed.</p>
    #          </note>
    # @param [Hash, Types::UpdateContactRequest] params
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    # @option params [String] :email_address
    #   <p>The contact's email address.</p>
    # @option params [Array<Types::TopicPreference>] :topic_preferences
    #   <p>The contact's preference for being opted-in to or opted-out of a topic.</p>
    # @option params [Boolean] :unsubscribe_all
    #   <p>A boolean value status noting if the contact is unsubscribed from all contact list
    #               topics.</p>
    # @option params [String] :attributes_data
    #   <p>The attribute data attached to a contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_list_name: "ContactListName", # required
    #     email_address: "EmailAddress", # required
    #     topic_preferences: [
    #       {
    #         topic_name: "TopicName", # required
    #         subscription_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"], # required
    #       }
    #     ],
    #     unsubscribe_all: false,
    #     attributes_data: "AttributesData"
    #   }
    #   options = {}
    #   response = client.update_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactResponse]
    def update_contact(params = {}, options = {})
      request = build_request(:update_contact, params)
      request.send_request(options)
    end

    # <p>Updates contact list metadata. This operation does a complete replacement.</p>
    # @param [Hash, Types::UpdateContactListRequest] params
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    # @option params [Array<Types::Topic>] :topics
    #   <p>An interest group, theme, or label within a list. A contact list can have multiple
    #               topics.</p>
    # @option params [String] :description
    #   <p>A description of what the contact list is about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_list_name: "ContactListName", # required
    #     topics: [
    #       {
    #         topic_name: "TopicName", # required
    #         display_name: "DisplayName", # required
    #         description: "Description",
    #         default_subscription_status: "OPT_IN" # One of: ["OPT_IN", "OPT_OUT"], # required
    #       }
    #     ],
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_contact_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactListResponse]
    def update_contact_list(params = {}, options = {})
      request = build_request(:update_contact_list, params)
      request.send_request(options)
    end

    # <p>Updates an existing custom verification email template.</p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 custom verification email templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateCustomVerificationEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template that you want to update.</p>
    # @option params [String] :from_email_address
    #   <p>The email address that the custom verification email is sent from.</p>
    # @option params [String] :template_subject
    #   <p>The subject line of the custom verification email.</p>
    # @option params [String] :template_content
    #   <p>The content of the custom verification email. The total size of the email must be less
    #               than 10 MB. The message body may contain HTML, with some limitations. For more
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom-faq">Custom verification email frequently asked questions</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    # @option params [String] :success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    # @option params [String] :failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "EmailTemplateName", # required
    #     from_email_address: "EmailAddress", # required
    #     template_subject: "EmailTemplateSubject", # required
    #     template_content: "TemplateContent", # required
    #     success_redirection_url: "SuccessRedirectionURL", # required
    #     failure_redirection_url: "FailureRedirectionURL", # required
    #   }
    #   options = {}
    #   response = client.update_custom_verification_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateCustomVerificationEmailTemplateResponse]
    def update_custom_verification_email_template(params = {}, options = {})
      request = build_request(:update_custom_verification_email_template, params)
      request.send_request(options)
    end

    # <p>Updates the specified sending authorization policy for the given identity (an email
    #             address or a domain). This API returns successfully even if a policy with the specified
    #             name does not exist.</p>
    #          <note>
    #             <p>This API is for the identity owner only. If you have not verified the identity,
    #                 this API will return an error.</p>
    #          </note>
    #          <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateEmailIdentityPolicyRequest] params
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #            <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    # @option params [String] :policy
    #   <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    #            <p> For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer
    #                   Guide</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #     policy: "Policy", # required
    #   }
    #   options = {}
    #   response = client.update_email_identity_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEmailIdentityPolicyResponse]
    def update_email_identity_policy(params = {}, options = {})
      request = build_request(:update_email_identity_policy, params)
      request.send_request(options)
    end

    # <p>Updates an email template. Email templates enable you to send personalized email to
    #             one or more destinations in a single API operation. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the template.</p>
    # @option params [Types::EmailTemplateContent] :template_content
    #   <p>The content of the email template, composed of a subject line, an HTML part, and a
    #               text-only part.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "EmailTemplateName", # required
    #     template_content: { # required
    #       subject: "EmailTemplateSubject",
    #       text: "EmailTemplateText",
    #       html: "EmailTemplateHtml"
    #     }
    #   }
    #   options = {}
    #   response = client.update_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEmailTemplateResponse]
    def update_email_template(params = {}, options = {})
      request = build_request(:update_email_template, params)
      request.send_request(options)
    end

    # <p>Update the customer-managed sending status for a reputation entity. This allows 
    #             you to enable, disable, or reinstate sending for the entity.</p>
    #          <p>The customer-managed status works in conjunction with the Amazon Web Services Amazon SES-managed status
    #         to determine the overall sending capability. When you update the customer-managed status,
    #         the Amazon Web Services Amazon SES-managed status remains unchanged. If Amazon Web Services Amazon SES has disabled the entity,
    #         it will not be allowed to send regardless of the customer-managed status setting. When you
    #         reinstate an entity through the customer-managed status, it can continue sending only if
    #         the Amazon Web Services Amazon SES-managed status also permits sending, even if there are active reputation
    #         findings, until the findings are resolved or new violations occur.</p>
    # @param [Hash, Types::UpdateReputationEntityCustomerManagedStatusRequest] params
    # @option params [String] :reputation_entity_type
    #   <p>The type of reputation entity. Currently, only <code>RESOURCE</code> type entities are supported.</p>
    # @option params [String] :reputation_entity_reference
    #   <p>The unique identifier for the reputation entity. For resource-type entities, 
    #               this is the Amazon Resource Name (ARN) of the resource.</p>
    # @option params [String] :sending_status
    #   <p>The new customer-managed sending status for the reputation entity. This can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – Allow sending for this entity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – Prevent sending for this entity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REINSTATED</code> – Allow sending even if there are active reputation findings.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     reputation_entity_type: "RESOURCE" # One of: ["RESOURCE"], # required
    #     reputation_entity_reference: "ReputationEntityReference", # required
    #     sending_status: "ENABLED" # One of: ["ENABLED", "REINSTATED", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_reputation_entity_customer_managed_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateReputationEntityCustomerManagedStatusResponse]
    def update_reputation_entity_customer_managed_status(params = {}, options = {})
      request = build_request(:update_reputation_entity_customer_managed_status, params)
      request.send_request(options)
    end

    # <p>Update the reputation management policy for a reputation entity. The policy 
    #             determines how the entity responds to reputation findings, such as automatically 
    #             pausing sending when certain thresholds are exceeded.</p>
    #          <p>Reputation management policies are Amazon Web Services Amazon SES-managed (predefined policies).
    #         You can select from none, standard, and strict policies.</p>
    # @param [Hash, Types::UpdateReputationEntityPolicyRequest] params
    # @option params [String] :reputation_entity_type
    #   <p>The type of reputation entity. Currently, only <code>RESOURCE</code> type entities are supported.</p>
    # @option params [String] :reputation_entity_reference
    #   <p>The unique identifier for the reputation entity. For resource-type entities, 
    #               this is the Amazon Resource Name (ARN) of the resource.</p>
    # @option params [String] :reputation_entity_policy
    #   <p>The Amazon Resource Name (ARN) of the reputation management policy to apply 
    #               to this entity. This is an Amazon Web Services Amazon SES-managed policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reputation_entity_type: "RESOURCE" # One of: ["RESOURCE"], # required
    #     reputation_entity_reference: "ReputationEntityReference", # required
    #     reputation_entity_policy: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.update_reputation_entity_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateReputationEntityPolicyResponse]
    def update_reputation_entity_policy(params = {}, options = {})
      request = build_request(:update_reputation_entity_policy, params)
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
      context[:gem_name] = 'aws-sdk-sesv2'
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
