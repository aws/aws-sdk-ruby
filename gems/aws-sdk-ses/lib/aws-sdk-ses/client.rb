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
require 'aws-sdk-core/plugins/query_protocol'

module Aws::SES
  # An API client for Aws::SES.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SimpleEmailService

    add_plugin(::Aws::SES::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::QueryProtocol)

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
    # @option options [Aws::SES::EndpointProvider] :endpoint_provider
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

    # <p>Creates a receipt rule set by cloning an existing one. All receipt rules and
    #             configurations are copied to the new receipt rule set and are completely independent of
    #             the source rule set.</p>
    #          <p>For information about setting up rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules">Amazon SES Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CloneReceiptRuleSetRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the rule set to create. The name must meet the following
    #               requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or
    #                       dashes (-).</p>
    #               </li>
    #               <li>
    #                  <p>Start and end with a letter or number.</p>
    #               </li>
    #               <li>
    #                  <p>Contain 64 characters or fewer.</p>
    #               </li>
    #            </ul>
    # @option params [String] :original_rule_set_name
    #   <p>The name of the rule set to clone.</p>
    # @example CloneReceiptRuleSet
    #   # The following example creates a receipt rule set by cloning an existing one:
    #   params = {
    #     rule_set_name: "RuleSetToCreate",
    #     original_rule_set_name: "RuleSetToClone"
    #   }
    #   options = {}
    #   response = client.clone_receipt_rule_set(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     original_rule_set_name: "ReceiptRuleSetName", # required
    #   }
    #   options = {}
    #   response = client.clone_receipt_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CloneReceiptRuleSetResponse]
    def clone_receipt_rule_set(params = {}, options = {})
      request = build_request(:clone_receipt_rule_set, params)
      request.send_request(options)
    end

    # <p>Creates a configuration set.</p>
    #          <p>Configuration sets enable you to publish email sending events. For information about
    #             using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html">Amazon SES Developer
    #             Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateConfigurationSetRequest] params
    # @option params [Types::ConfigurationSet] :configuration_set
    #   <p>A data structure that contains the name of the configuration set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set: { # required
    #       name: "ConfigurationSetName", # required
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

    # <p>Creates a configuration set event destination.</p>
    #          <note>
    #             <p>When you create or update an event destination, you must provide one, and only
    #                 one, destination. The destination can be CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).</p>
    #          </note>
    #          <p>An event destination is the Amazon Web Services service to which Amazon SES publishes the email sending
    #             events associated with a configuration set. For information about using configuration
    #             sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html">Amazon SES Developer
    #             Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateConfigurationSetEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that the event destination should be associated
    #               with.</p>
    # @option params [Types::EventDestination] :event_destination
    #   <p>An object that describes the Amazon Web Services service that email sending event where information
    #               is published.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination: { # required
    #       name: "EventDestinationName", # required
    #       enabled: false,
    #       matching_event_types: ["send" # One of: ["send", "reject", "bounce", "complaint", "delivery", "open", "click", "renderingFailure"]], # required
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "messageTag" # One of: ["messageTag", "emailHeader", "linkTag"], # required
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           }
    #         ]
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
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

    # <p>Creates an association between a configuration set and a custom domain for open and
    #             click event tracking. </p>
    #          <p>By default, images and links used for tracking open and click events are hosted on
    #             domains operated by Amazon SES. You can configure a subdomain of your own to handle these
    #             events. For information about using custom domains, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html">Amazon SES Developer Guide</a>.</p>
    # @param [Hash, Types::CreateConfigurationSetTrackingOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that the tracking options should be associated
    #               with.</p>
    # @option params [Types::TrackingOptions] :tracking_options
    #   <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This
    #               domain captures open and click events generated by Amazon SES emails.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html">Configuring Custom
    #                   Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES Developer
    #                   Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tracking_options: { # required
    #       custom_redirect_domain: "CustomRedirectDomain"
    #     }
    #   }
    #   options = {}
    #   response = client.create_configuration_set_tracking_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateConfigurationSetTrackingOptionsResponse]
    def create_configuration_set_tracking_options(params = {}, options = {})
      request = build_request(:create_configuration_set_tracking_options, params)
      request.send_request(options)
    end

    # <p>Creates a new custom verification email template.</p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 Custom Verification Email Templates</a> in the <i>Amazon SES Developer
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
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Custom
    #                   Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    # @option params [String] :success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    # @option params [String] :failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     from_email_address: "FromAddress", # required
    #     template_subject: "Subject", # required
    #     template_content: "TemplateContent", # required
    #     success_redirection_url: "SuccessRedirectionURL", # required
    #     failure_redirection_url: "FailureRedirectionURL", # required
    #   }
    #   options = {}
    #   response = client.create_custom_verification_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_custom_verification_email_template(params = {}, options = {})
      request = build_request(:create_custom_verification_email_template, params)
      request.send_request(options)
    end

    # <p>Creates a new IP address filter.</p>
    #          <p>For information about setting up IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateReceiptFilterRequest] params
    # @option params [Types::ReceiptFilter] :filter
    #   <p>A data structure that describes the IP address filter to create, which consists of a
    #               name, an IP address range, and whether to allow or block mail from it.</p>
    # @example CreateReceiptFilter
    #   # The following example creates a new IP address filter:
    #   params = {
    #     filter: {
    #       name: "MyFilter",
    #       ip_filter: {
    #         policy: Allow,
    #         cidr: "1.2.3.4/24"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_receipt_filter(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: { # required
    #       name: "ReceiptFilterName", # required
    #       ip_filter: { # required
    #         policy: "Block" # One of: ["Block", "Allow"], # required
    #         cidr: "Cidr", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_receipt_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateReceiptFilterResponse]
    def create_receipt_filter(params = {}, options = {})
      request = build_request(:create_receipt_filter, params)
      request.send_request(options)
    end

    # <p>Creates a receipt rule.</p>
    #          <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateReceiptRuleRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the rule set where the receipt rule is added.</p>
    # @option params [String] :after
    #   <p>The name of an existing rule after which the new rule is placed. If this parameter is
    #               null, the new rule is inserted at the beginning of the rule list.</p>
    # @option params [Types::ReceiptRule] :rule
    #   <p>A data structure that contains the specified rule's name, actions, recipients,
    #               domains, enabled status, scan status, and TLS policy.</p>
    # @example CreateReceiptRule
    #   # The following example creates a new receipt rule:
    #   params = {
    #     rule_set_name: "MyRuleSet",
    #     after: "",
    #     rule: {
    #       tls_policy: Optional,
    #       enabled: true,
    #       name: "MyRule",
    #       actions: [
    #         {
    #           s3_action: {
    #             object_key_prefix: "email",
    #             bucket_name: "MyBucket"
    #           }
    #         }
    #       ],
    #       scan_enabled: true
    #     }
    #   }
    #   options = {}
    #   response = client.create_receipt_rule(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     after: "ReceiptRuleName",
    #     rule: { # required
    #       name: "ReceiptRuleName", # required
    #       enabled: false,
    #       tls_policy: "Require" # One of: ["Require", "Optional"],
    #       recipients: ["Recipient"],
    #       actions: [
    #         {
    #           s3_action: {
    #             topic_arn: "AmazonResourceName",
    #             bucket_name: "S3BucketName", # required
    #             object_key_prefix: "S3KeyPrefix",
    #             kms_key_arn: "AmazonResourceName",
    #             iam_role_arn: "IAMRoleARN"
    #           },
    #           bounce_action: {
    #             topic_arn: "AmazonResourceName",
    #             smtp_reply_code: "BounceSmtpReplyCode", # required
    #             status_code: "BounceStatusCode",
    #             message: "BounceMessage", # required
    #             sender: "Address", # required
    #           },
    #           workmail_action: {
    #             topic_arn: "AmazonResourceName",
    #             organization_arn: "AmazonResourceName", # required
    #           },
    #           lambda_action: {
    #             topic_arn: "AmazonResourceName",
    #             function_arn: "AmazonResourceName", # required
    #             invocation_type: "Event" # One of: ["Event", "RequestResponse"]
    #           },
    #           stop_action: {
    #             scope: "RuleSet" # One of: ["RuleSet"], # required
    #             topic_arn: "AmazonResourceName"
    #           },
    #           add_header_action: {
    #             header_name: "HeaderName", # required
    #             header_value: "HeaderValue", # required
    #           },
    #           sns_action: {
    #             topic_arn: "AmazonResourceName", # required
    #             encoding: "UTF-8" # One of: ["UTF-8", "Base64"]
    #           },
    #           connect_action: {
    #             instance_arn: "ConnectInstanceArn", # required
    #             iam_role_arn: "IAMRoleARN", # required
    #           }
    #         }
    #       ],
    #       scan_enabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_receipt_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateReceiptRuleResponse]
    def create_receipt_rule(params = {}, options = {})
      request = build_request(:create_receipt_rule, params)
      request.send_request(options)
    end

    # <p>Creates an empty receipt rule set.</p>
    #          <p>For information about setting up receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules">Amazon SES Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateReceiptRuleSetRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the rule set to create. The name must meet the following
    #               requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or
    #                       dashes (-).</p>
    #               </li>
    #               <li>
    #                  <p>Start and end with a letter or number.</p>
    #               </li>
    #               <li>
    #                  <p>Contain 64 characters or fewer.</p>
    #               </li>
    #            </ul>
    # @example CreateReceiptRuleSet
    #   # The following example creates an empty receipt rule set:
    #   params = {
    #     rule_set_name: "MyRuleSet"
    #   }
    #   options = {}
    #   response = client.create_receipt_rule_set(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #   }
    #   options = {}
    #   response = client.create_receipt_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateReceiptRuleSetResponse]
    def create_receipt_rule_set(params = {}, options = {})
      request = build_request(:create_receipt_rule_set, params)
      request.send_request(options)
    end

    # <p>Creates an email template. Email templates enable you to send personalized email to
    #             one or more destinations in a single operation. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::CreateTemplateRequest] params
    # @option params [Types::Template] :template
    #   <p>The content of the email, composed of a subject line and either an HTML part or a
    #               text-only part.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template: { # required
    #       template_name: "TemplateName", # required
    #       subject_part: "SubjectPart",
    #       text_part: "TextPart",
    #       html_part: "HtmlPart"
    #     }
    #   }
    #   options = {}
    #   response = client.create_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateTemplateResponse]
    def create_template(params = {}, options = {})
      request = build_request(:create_template, params)
      request.send_request(options)
    end

    # <p>Deletes a configuration set. Configuration sets enable you to publish email sending
    #             events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to delete.</p>
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

    # <p>Deletes a configuration set event destination. Configuration set event destinations
    #             are associated with configuration sets, which enable you to publish email sending
    #             events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteConfigurationSetEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set from which to delete the event destination.</p>
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

    # <p>Deletes an association between a configuration set and a custom domain for open and
    #             click event tracking.</p>
    #          <p>By default, images and links used for tracking open and click events are hosted on
    #             domains operated by Amazon SES. You can configure a subdomain of your own to handle these
    #             events. For information about using custom domains, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html">Amazon SES Developer Guide</a>.</p>
    #          <note>
    #             <p>Deleting this kind of association results in emails sent using the specified
    #                 configuration set to capture open and click events using the standard,
    #                 Amazon SES-operated domains.</p>
    #          </note>
    # @param [Hash, Types::DeleteConfigurationSetTrackingOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration_set_tracking_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConfigurationSetTrackingOptionsResponse]
    def delete_configuration_set_tracking_options(params = {}, options = {})
      request = build_request(:delete_configuration_set_tracking_options, params)
      request.send_request(options)
    end

    # <p>Deletes an existing custom verification email template. </p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteCustomVerificationEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_verification_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_custom_verification_email_template(params = {}, options = {})
      request = build_request(:delete_custom_verification_email_template, params)
      request.send_request(options)
    end

    # <p>Deletes the specified identity (an email address or a domain) from the list of
    #             verified identities.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteIdentityRequest] params
    # @option params [String] :identity
    #   <p>The identity to be removed from the list of identities for the Amazon Web Services account.</p>
    # @example DeleteIdentity
    #   # The following example deletes an identity from the list of identities that have been submitted for verification with Amazon SES:
    #   params = {
    #     identity: "user@example.com"
    #   }
    #   options = {}
    #   response = client.delete_identity(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #   }
    #   options = {}
    #   response = client.delete_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIdentityResponse]
    def delete_identity(params = {}, options = {})
      request = build_request(:delete_identity, params)
      request.send_request(options)
    end

    # <p>Deletes the specified sending authorization policy for the given identity (an email
    #             address or a domain). This operation returns successfully even if a policy with the
    #             specified name does not exist.</p>
    #          <note>
    #             <p>This operation is for the identity owner only. If you have not verified the
    #                 identity, it returns an error.</p>
    #          </note>
    #          <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteIdentityPolicyRequest] params
    # @option params [String] :identity
    #   <p>The identity that is associated with the policy to delete. You can specify the
    #               identity by using its name or by using its Amazon Resource Name (ARN). Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #            <p>To successfully call this operation, you must own the identity.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy to be deleted.</p>
    # @example DeleteIdentityPolicy
    #   # The following example deletes a sending authorization policy for an identity:
    #   params = {
    #     identity: "user@example.com",
    #     policy_name: "MyPolicy"
    #   }
    #   options = {}
    #   response = client.delete_identity_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #   }
    #   options = {}
    #   response = client.delete_identity_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIdentityPolicyResponse]
    def delete_identity_policy(params = {}, options = {})
      request = build_request(:delete_identity_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified IP address filter.</p>
    #          <p>For information about managing IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteReceiptFilterRequest] params
    # @option params [String] :filter_name
    #   <p>The name of the IP address filter to delete.</p>
    # @example DeleteReceiptFilter
    #   # The following example deletes an IP address filter:
    #   params = {
    #     filter_name: "MyFilter"
    #   }
    #   options = {}
    #   response = client.delete_receipt_filter(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_name: "ReceiptFilterName", # required
    #   }
    #   options = {}
    #   response = client.delete_receipt_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReceiptFilterResponse]
    def delete_receipt_filter(params = {}, options = {})
      request = build_request(:delete_receipt_filter, params)
      request.send_request(options)
    end

    # <p>Deletes the specified receipt rule.</p>
    #          <p>For information about managing receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteReceiptRuleRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set that contains the receipt rule to delete.</p>
    # @option params [String] :rule_name
    #   <p>The name of the receipt rule to delete.</p>
    # @example DeleteReceiptRule
    #   # The following example deletes a receipt rule:
    #   params = {
    #     rule_set_name: "MyRuleSet",
    #     rule_name: "MyRule"
    #   }
    #   options = {}
    #   response = client.delete_receipt_rule(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule_name: "ReceiptRuleName", # required
    #   }
    #   options = {}
    #   response = client.delete_receipt_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReceiptRuleResponse]
    def delete_receipt_rule(params = {}, options = {})
      request = build_request(:delete_receipt_rule, params)
      request.send_request(options)
    end

    # <p>Deletes the specified receipt rule set and all of the receipt rules it
    #             contains.</p>
    #          <note>
    #             <p>The currently active rule set cannot be deleted.</p>
    #          </note>
    #          <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteReceiptRuleSetRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set to delete.</p>
    # @example DeleteReceiptRuleSet
    #   # The following example deletes a receipt rule set:
    #   params = {
    #     rule_set_name: "MyRuleSet"
    #   }
    #   options = {}
    #   response = client.delete_receipt_rule_set(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #   }
    #   options = {}
    #   response = client.delete_receipt_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReceiptRuleSetResponse]
    def delete_receipt_rule_set(params = {}, options = {})
      request = build_request(:delete_receipt_rule_set, params)
      request.send_request(options)
    end

    # <p>Deletes an email template.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DeleteTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the template to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #   }
    #   options = {}
    #   response = client.delete_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTemplateResponse]
    def delete_template(params = {}, options = {})
      request = build_request(:delete_template, params)
      request.send_request(options)
    end

    # <p>Deprecated. Use the <code>DeleteIdentity</code> operation to delete email addresses
    #             and domains.</p>
    # @param [Hash, Types::DeleteVerifiedEmailAddressRequest] params
    # @option params [String] :email_address
    #   <p>An email address to be removed from the list of verified addresses.</p>
    # @example DeleteVerifiedEmailAddress
    #   # The following example deletes an email address from the list of identities that have been submitted for verification with Amazon SES:
    #   params = {
    #     email_address: "user@example.com"
    #   }
    #   options = {}
    #   response = client.delete_verified_email_address(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     email_address: "Address", # required
    #   }
    #   options = {}
    #   response = client.delete_verified_email_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_verified_email_address(params = {}, options = {})
      request = build_request(:delete_verified_email_address, params)
      request.send_request(options)
    end

    # <p>Returns the metadata and receipt rules for the receipt rule set that is currently
    #             active.</p>
    #          <p>For information about setting up receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules">Amazon SES Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DescribeActiveReceiptRuleSetRequest] params
    # @example DescribeActiveReceiptRuleSet
    #   # The following example returns the metadata and receipt rules for the receipt rule set that is currently active:
    #   params = {}
    #   options = {}
    #   response = client.describe_active_receipt_rule_set(params, options)
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       created_timestamp: Time.parse("2016-07-15T16:25:59.607Z"),
    #       name: "default-rule-set"
    #     },
    #     rules: [
    #       {
    #         tls_policy: Optional,
    #         enabled: true,
    #         name: "MyRule",
    #         actions: [
    #           {
    #             s3_action: {
    #               object_key_prefix: "email",
    #               bucket_name: "MyBucket"
    #             }
    #           }
    #         ],
    #         scan_enabled: true
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_active_receipt_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       name: "ReceiptRuleSetName",
    #       created_timestamp: Time.now
    #     },
    #     rules: [
    #       {
    #         name: "ReceiptRuleName", # required
    #         enabled: false,
    #         tls_policy: "Require" # One of: ["Require", "Optional"],
    #         recipients: ["Recipient"],
    #         actions: [
    #           {
    #             s3_action: {
    #               topic_arn: "AmazonResourceName",
    #               bucket_name: "S3BucketName", # required
    #               object_key_prefix: "S3KeyPrefix",
    #               kms_key_arn: "AmazonResourceName",
    #               iam_role_arn: "IAMRoleARN"
    #             },
    #             bounce_action: {
    #               topic_arn: "AmazonResourceName",
    #               smtp_reply_code: "BounceSmtpReplyCode", # required
    #               status_code: "BounceStatusCode",
    #               message: "BounceMessage", # required
    #               sender: "Address", # required
    #             },
    #             workmail_action: {
    #               topic_arn: "AmazonResourceName",
    #               organization_arn: "AmazonResourceName", # required
    #             },
    #             lambda_action: {
    #               topic_arn: "AmazonResourceName",
    #               function_arn: "AmazonResourceName", # required
    #               invocation_type: "Event" # One of: ["Event", "RequestResponse"]
    #             },
    #             stop_action: {
    #               scope: "RuleSet" # One of: ["RuleSet"], # required
    #               topic_arn: "AmazonResourceName"
    #             },
    #             add_header_action: {
    #               header_name: "HeaderName", # required
    #               header_value: "HeaderValue", # required
    #             },
    #             sns_action: {
    #               topic_arn: "AmazonResourceName", # required
    #               encoding: "UTF-8" # One of: ["UTF-8", "Base64"]
    #             },
    #             connect_action: {
    #               instance_arn: "ConnectInstanceArn", # required
    #               iam_role_arn: "IAMRoleARN", # required
    #             }
    #           }
    #         ],
    #         scan_enabled: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeActiveReceiptRuleSetResponse]
    def describe_active_receipt_rule_set(params = {}, options = {})
      request = build_request(:describe_active_receipt_rule_set, params)
      request.send_request(options)
    end

    # <p>Returns the details of the specified configuration set. For information about using
    #             configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html">Amazon SES Developer
    #             Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DescribeConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to describe.</p>
    # @option params [Array<String>] :configuration_set_attribute_names
    #   <p>A list of configuration set attributes to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     configuration_set_attribute_names: ["eventDestinations" # One of: ["eventDestinations", "trackingOptions", "deliveryOptions", "reputationOptions"]]
    #   }
    #   options = {}
    #   response = client.describe_configuration_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set: {
    #       name: "ConfigurationSetName", # required
    #     },
    #     event_destinations: [
    #       {
    #         name: "EventDestinationName", # required
    #         enabled: false,
    #         matching_event_types: ["send" # One of: ["send", "reject", "bounce", "complaint", "delivery", "open", "click", "renderingFailure"]], # required
    #         kinesis_firehose_destination: {
    #           iam_role_arn: "AmazonResourceName", # required
    #           delivery_stream_arn: "AmazonResourceName", # required
    #         },
    #         cloud_watch_destination: {
    #           dimension_configurations: [ # required
    #             {
    #               dimension_name: "DimensionName", # required
    #               dimension_value_source: "messageTag" # One of: ["messageTag", "emailHeader", "linkTag"], # required
    #               default_dimension_value: "DefaultDimensionValue", # required
    #             }
    #           ]
    #         },
    #         sns_destination: {
    #           topic_arn: "AmazonResourceName", # required
    #         }
    #       }
    #     ],
    #     tracking_options: {
    #       custom_redirect_domain: "CustomRedirectDomain"
    #     },
    #     delivery_options: {
    #       tls_policy: "Require" # One of: ["Require", "Optional"]
    #     },
    #     reputation_options: {
    #       sending_enabled: false,
    #       reputation_metrics_enabled: false,
    #       last_fresh_start: Time.now
    #     }
    #   }
    # @return [Types::DescribeConfigurationSetResponse]
    def describe_configuration_set(params = {}, options = {})
      request = build_request(:describe_configuration_set, params)
      request.send_request(options)
    end

    # <p>Returns the details of the specified receipt rule.</p>
    #          <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DescribeReceiptRuleRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set that the receipt rule belongs to.</p>
    # @option params [String] :rule_name
    #   <p>The name of the receipt rule.</p>
    # @example DescribeReceiptRule
    #   # The following example returns the details of a receipt rule:
    #   params = {
    #     rule_set_name: "MyRuleSet",
    #     rule_name: "MyRule"
    #   }
    #   options = {}
    #   response = client.describe_receipt_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule: {
    #       tls_policy: Optional,
    #       enabled: true,
    #       name: "MyRule",
    #       actions: [
    #         {
    #           s3_action: {
    #             object_key_prefix: "email",
    #             bucket_name: "MyBucket"
    #           }
    #         }
    #       ],
    #       scan_enabled: true
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule_name: "ReceiptRuleName", # required
    #   }
    #   options = {}
    #   response = client.describe_receipt_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule: {
    #       name: "ReceiptRuleName", # required
    #       enabled: false,
    #       tls_policy: "Require" # One of: ["Require", "Optional"],
    #       recipients: ["Recipient"],
    #       actions: [
    #         {
    #           s3_action: {
    #             topic_arn: "AmazonResourceName",
    #             bucket_name: "S3BucketName", # required
    #             object_key_prefix: "S3KeyPrefix",
    #             kms_key_arn: "AmazonResourceName",
    #             iam_role_arn: "IAMRoleARN"
    #           },
    #           bounce_action: {
    #             topic_arn: "AmazonResourceName",
    #             smtp_reply_code: "BounceSmtpReplyCode", # required
    #             status_code: "BounceStatusCode",
    #             message: "BounceMessage", # required
    #             sender: "Address", # required
    #           },
    #           workmail_action: {
    #             topic_arn: "AmazonResourceName",
    #             organization_arn: "AmazonResourceName", # required
    #           },
    #           lambda_action: {
    #             topic_arn: "AmazonResourceName",
    #             function_arn: "AmazonResourceName", # required
    #             invocation_type: "Event" # One of: ["Event", "RequestResponse"]
    #           },
    #           stop_action: {
    #             scope: "RuleSet" # One of: ["RuleSet"], # required
    #             topic_arn: "AmazonResourceName"
    #           },
    #           add_header_action: {
    #             header_name: "HeaderName", # required
    #             header_value: "HeaderValue", # required
    #           },
    #           sns_action: {
    #             topic_arn: "AmazonResourceName", # required
    #             encoding: "UTF-8" # One of: ["UTF-8", "Base64"]
    #           },
    #           connect_action: {
    #             instance_arn: "ConnectInstanceArn", # required
    #             iam_role_arn: "IAMRoleARN", # required
    #           }
    #         }
    #       ],
    #       scan_enabled: false
    #     }
    #   }
    # @return [Types::DescribeReceiptRuleResponse]
    def describe_receipt_rule(params = {}, options = {})
      request = build_request(:describe_receipt_rule, params)
      request.send_request(options)
    end

    # <p>Returns the details of the specified receipt rule set.</p>
    #          <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::DescribeReceiptRuleSetRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set to describe.</p>
    # @example DescribeReceiptRuleSet
    #   # The following example returns the metadata and receipt rules of a receipt rule set:
    #   params = {
    #     rule_set_name: "MyRuleSet"
    #   }
    #   options = {}
    #   response = client.describe_receipt_rule_set(params, options)
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       created_timestamp: Time.parse("2016-07-15T16:25:59.607Z"),
    #       name: "MyRuleSet"
    #     },
    #     rules: [
    #       {
    #         tls_policy: Optional,
    #         enabled: true,
    #         name: "MyRule",
    #         actions: [
    #           {
    #             s3_action: {
    #               object_key_prefix: "email",
    #               bucket_name: "MyBucket"
    #             }
    #           }
    #         ],
    #         scan_enabled: true
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #   }
    #   options = {}
    #   response = client.describe_receipt_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       name: "ReceiptRuleSetName",
    #       created_timestamp: Time.now
    #     },
    #     rules: [
    #       {
    #         name: "ReceiptRuleName", # required
    #         enabled: false,
    #         tls_policy: "Require" # One of: ["Require", "Optional"],
    #         recipients: ["Recipient"],
    #         actions: [
    #           {
    #             s3_action: {
    #               topic_arn: "AmazonResourceName",
    #               bucket_name: "S3BucketName", # required
    #               object_key_prefix: "S3KeyPrefix",
    #               kms_key_arn: "AmazonResourceName",
    #               iam_role_arn: "IAMRoleARN"
    #             },
    #             bounce_action: {
    #               topic_arn: "AmazonResourceName",
    #               smtp_reply_code: "BounceSmtpReplyCode", # required
    #               status_code: "BounceStatusCode",
    #               message: "BounceMessage", # required
    #               sender: "Address", # required
    #             },
    #             workmail_action: {
    #               topic_arn: "AmazonResourceName",
    #               organization_arn: "AmazonResourceName", # required
    #             },
    #             lambda_action: {
    #               topic_arn: "AmazonResourceName",
    #               function_arn: "AmazonResourceName", # required
    #               invocation_type: "Event" # One of: ["Event", "RequestResponse"]
    #             },
    #             stop_action: {
    #               scope: "RuleSet" # One of: ["RuleSet"], # required
    #               topic_arn: "AmazonResourceName"
    #             },
    #             add_header_action: {
    #               header_name: "HeaderName", # required
    #               header_value: "HeaderValue", # required
    #             },
    #             sns_action: {
    #               topic_arn: "AmazonResourceName", # required
    #               encoding: "UTF-8" # One of: ["UTF-8", "Base64"]
    #             },
    #             connect_action: {
    #               instance_arn: "ConnectInstanceArn", # required
    #               iam_role_arn: "IAMRoleARN", # required
    #             }
    #           }
    #         ],
    #         scan_enabled: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReceiptRuleSetResponse]
    def describe_receipt_rule_set(params = {}, options = {})
      request = build_request(:describe_receipt_rule_set, params)
      request.send_request(options)
    end

    # <p>Returns the email sending status of the Amazon SES account for the current Region.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example GetAccountSendingEnabled
    #   # The following example returns if sending status for an account is enabled. (true / false):
    #   params = {}
    #   options = {}
    #   response = client.get_account_sending_enabled(params, options)
    #   response.to_h #=>
    #   {
    #     enabled: true
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_sending_enabled(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enabled: false
    #   }
    # @return [Types::GetAccountSendingEnabledResponse]
    def get_account_sending_enabled(params = {}, options = {})
      request = build_request(:get_account_sending_enabled, params)
      request.send_request(options)
    end

    # <p>Returns the custom email verification template for the template name you
    #             specify.</p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::GetCustomVerificationEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #   }
    #   options = {}
    #   response = client.get_custom_verification_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_name: "TemplateName",
    #     from_email_address: "FromAddress",
    #     template_subject: "Subject",
    #     template_content: "TemplateContent",
    #     success_redirection_url: "SuccessRedirectionURL",
    #     failure_redirection_url: "FailureRedirectionURL"
    #   }
    # @return [Types::GetCustomVerificationEmailTemplateResponse]
    def get_custom_verification_email_template(params = {}, options = {})
      request = build_request(:get_custom_verification_email_template, params)
      request.send_request(options)
    end

    # <p>Returns the current status of Easy DKIM signing for an entity. For domain name
    #             identities, this operation also returns the DKIM tokens that are required for Easy DKIM
    #             signing, and whether Amazon SES has successfully verified that these tokens have been
    #             published.</p>
    #          <p>This operation takes a list of identities as input and returns the following
    #             information for each:</p>
    #          <ul>
    #             <li>
    #                <p>Whether Easy DKIM signing is enabled or disabled.</p>
    #             </li>
    #             <li>
    #                <p>A set of DKIM tokens that represent the identity. If the identity is an email
    #                     address, the tokens represent the domain of that address.</p>
    #             </li>
    #             <li>
    #                <p>Whether Amazon SES has successfully verified the DKIM tokens published in the
    #                     domain's DNS. This information is only returned for domain name identities, not
    #                     for email addresses.</p>
    #             </li>
    #          </ul>
    #          <p>This operation is throttled at one request per second and can only get DKIM attributes
    #             for up to 100 identities at a time.</p>
    #          <p>For more information about creating DNS records using DKIM tokens, go to the <a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy-managing.html">Amazon SES
    #                 Developer Guide</a>.</p>
    # @param [Hash, Types::GetIdentityDkimAttributesRequest] params
    # @option params [Array<String>] :identities
    #   <p>A list of one or more verified identities - email addresses, domains, or both.</p>
    # @example GetIdentityDkimAttributes
    #   # The following example retrieves the Amazon SES Easy DKIM attributes for a list of identities:
    #   params = {
    #     identities: [
    #       "example.com",
    #       "user@example.com"
    #     ]
    #   }
    #   options = {}
    #   response = client.get_identity_dkim_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     dkim_attributes: {
    #       "example.com" => {
    #         dkim_tokens: [
    #           "EXAMPLEjcs5xoyqytjsotsijas7236gr",
    #           "EXAMPLEjr76cvoc6mysspnioorxsn6ep",
    #           "EXAMPLEkbmkqkhlm2lyz77ppkulerm4k"
    #         ],
    #         dkim_enabled: true,
    #         dkim_verification_status: Success
    #       },
    #       "user@example.com" => {
    #         dkim_enabled: false,
    #         dkim_verification_status: NotStarted
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identities: ["Identity"], # required
    #   }
    #   options = {}
    #   response = client.get_identity_dkim_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dkim_attributes: { # required
    #       "Identity" => {
    #         dkim_enabled: false, # required
    #         dkim_verification_status: "Pending" # One of: ["Pending", "Success", "Failed", "TemporaryFailure", "NotStarted"], # required
    #         dkim_tokens: ["VerificationToken"]
    #       }
    #     }
    #   }
    # @return [Types::GetIdentityDkimAttributesResponse]
    def get_identity_dkim_attributes(params = {}, options = {})
      request = build_request(:get_identity_dkim_attributes, params)
      request.send_request(options)
    end

    # <p>Returns the custom MAIL FROM attributes for a list of identities (email addresses :
    #             domains).</p>
    #          <p>This operation is throttled at one request per second and can only get custom MAIL
    #             FROM attributes for up to 100 identities at a time.</p>
    # @param [Hash, Types::GetIdentityMailFromDomainAttributesRequest] params
    # @option params [Array<String>] :identities
    #   <p>A list of one or more identities.</p>
    # @example GetIdentityMailFromDomainAttributes
    #   # The following example returns the custom MAIL FROM attributes for an identity:
    #   params = {
    #     identities: [
    #       "example.com"
    #     ]
    #   }
    #   options = {}
    #   response = client.get_identity_mail_from_domain_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     mail_from_domain_attributes: {
    #       "example.com" => {
    #         mail_from_domain: "bounces.example.com",
    #         behavior_on_mx_failure: UseDefaultValue,
    #         mail_from_domain_status: Success
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identities: ["Identity"], # required
    #   }
    #   options = {}
    #   response = client.get_identity_mail_from_domain_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mail_from_domain_attributes: { # required
    #       "Identity" => {
    #         mail_from_domain: "MailFromDomainName", # required
    #         mail_from_domain_status: "Pending" # One of: ["Pending", "Success", "Failed", "TemporaryFailure"], # required
    #         behavior_on_mx_failure: "UseDefaultValue" # One of: ["UseDefaultValue", "RejectMessage"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetIdentityMailFromDomainAttributesResponse]
    def get_identity_mail_from_domain_attributes(params = {}, options = {})
      request = build_request(:get_identity_mail_from_domain_attributes, params)
      request.send_request(options)
    end

    # <p>Given a list of verified identities (email addresses and/or domains), returns a
    #             structure describing identity notification attributes.</p>
    #          <p>This operation is throttled at one request per second and can only get notification
    #             attributes for up to 100 identities at a time.</p>
    #          <p>For more information about using notifications with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html">Amazon SES
    #                 Developer Guide</a>.</p>
    # @param [Hash, Types::GetIdentityNotificationAttributesRequest] params
    # @option params [Array<String>] :identities
    #   <p>A list of one or more identities. You can specify an identity by using its name or by
    #               using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>,
    #                   <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    # @example GetIdentityNotificationAttributes
    #   # The following example returns the notification attributes for an identity:
    #   params = {
    #     identities: [
    #       "example.com"
    #     ]
    #   }
    #   options = {}
    #   response = client.get_identity_notification_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     notification_attributes: {
    #       "example.com" => {
    #         forwarding_enabled: true,
    #         headers_in_delivery_notifications_enabled: false,
    #         headers_in_complaint_notifications_enabled: false,
    #         bounce_topic: "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic",
    #         complaint_topic: "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic",
    #         delivery_topic: "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic",
    #         headers_in_bounce_notifications_enabled: false
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identities: ["Identity"], # required
    #   }
    #   options = {}
    #   response = client.get_identity_notification_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_attributes: { # required
    #       "Identity" => {
    #         bounce_topic: "NotificationTopic", # required
    #         complaint_topic: "NotificationTopic", # required
    #         delivery_topic: "NotificationTopic", # required
    #         forwarding_enabled: false, # required
    #         headers_in_bounce_notifications_enabled: false,
    #         headers_in_complaint_notifications_enabled: false,
    #         headers_in_delivery_notifications_enabled: false
    #       }
    #     }
    #   }
    # @return [Types::GetIdentityNotificationAttributesResponse]
    def get_identity_notification_attributes(params = {}, options = {})
      request = build_request(:get_identity_notification_attributes, params)
      request.send_request(options)
    end

    # <p>Returns the requested sending authorization policies for the given identity (an email
    #             address or a domain). The policies are returned as a map of policy names to policy
    #             contents. You can retrieve a maximum of 20 policies at a time.</p>
    #          <note>
    #             <p>This operation is for the identity owner only. If you have not verified the
    #                 identity, it returns an error.</p>
    #          </note>
    #          <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::GetIdentityPoliciesRequest] params
    # @option params [String] :identity
    #   <p>The identity for which the policies are retrieved. You can specify an identity by
    #               using its name or by using its Amazon Resource Name (ARN). Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #            <p>To successfully call this operation, you must own the identity.</p>
    # @option params [Array<String>] :policy_names
    #   <p>A list of the names of policies to be retrieved. You can retrieve a maximum of 20
    #               policies at a time. If you do not know the names of the policies that are attached to
    #               the identity, you can use <code>ListIdentityPolicies</code>.</p>
    # @example GetIdentityPolicies
    #   # The following example returns a sending authorization policy for an identity:
    #   params = {
    #     identity: "example.com",
    #     policy_names: [
    #       "MyPolicy"
    #     ]
    #   }
    #   options = {}
    #   response = client.get_identity_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policies: {
    #       "MyPolicy" => "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Sid\":\"stmt1469123904194\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:root\"},\"Action\":[\"ses:SendEmail\",\"ses:SendRawEmail\"],\"Resource\":\"arn:aws:ses:us-east-1:EXAMPLE65304:identity/example.com\"}]}"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #     policy_names: ["PolicyName"], # required
    #   }
    #   options = {}
    #   response = client.get_identity_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: { # required
    #       "PolicyName" => "Policy"
    #     }
    #   }
    # @return [Types::GetIdentityPoliciesResponse]
    def get_identity_policies(params = {}, options = {})
      request = build_request(:get_identity_policies, params)
      request.send_request(options)
    end

    # <p>Given a list of identities (email addresses and/or domains), returns the verification
    #             status and (for domain identities) the verification token for each identity.</p>
    #          <p>The verification status of an email address is "Pending" until the email address owner
    #             clicks the link within the verification email that Amazon SES sent to that address. If the
    #             email address owner clicks the link within 24 hours, the verification status of the
    #             email address changes to "Success". If the link is not clicked within 24 hours, the
    #             verification status changes to "Failed." In that case, to verify the email address, you
    #             must restart the verification process from the beginning.</p>
    #          <p>For domain identities, the domain's verification status is "Pending" as Amazon SES searches
    #             for the required TXT record in the DNS settings of the domain. When Amazon SES detects the
    #             record, the domain's verification status changes to "Success". If Amazon SES is unable to
    #             detect the record within 72 hours, the domain's verification status changes to "Failed."
    #             In that case, to verify the domain, you must restart the verification process from the
    #             beginning.</p>
    #          <p>This operation is throttled at one request per second and can only get verification
    #             attributes for up to 100 identities at a time.</p>
    # @param [Hash, Types::GetIdentityVerificationAttributesRequest] params
    # @option params [Array<String>] :identities
    #   <p>A list of identities.</p>
    # @example GetIdentityVerificationAttributes
    #   # The following example returns the verification status and the verification token for a domain identity:
    #   params = {
    #     identities: [
    #       "example.com"
    #     ]
    #   }
    #   options = {}
    #   response = client.get_identity_verification_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     verification_attributes: {
    #       "example.com" => {
    #         verification_token: "EXAMPLE3VYb9EDI2nTOQRi/Tf6MI/6bD6THIGiP1MVY=",
    #         verification_status: Success
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identities: ["Identity"], # required
    #   }
    #   options = {}
    #   response = client.get_identity_verification_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verification_attributes: { # required
    #       "Identity" => {
    #         verification_status: "Pending" # One of: ["Pending", "Success", "Failed", "TemporaryFailure", "NotStarted"], # required
    #         verification_token: "VerificationToken"
    #       }
    #     }
    #   }
    # @return [Types::GetIdentityVerificationAttributesResponse]
    def get_identity_verification_attributes(params = {}, options = {})
      request = build_request(:get_identity_verification_attributes, params)
      request.send_request(options)
    end

    # <p>Provides the sending limits for the Amazon SES account. </p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example GetSendQuota
    #   # The following example returns the Amazon SES sending limits for an AWS account:
    #   params = {}
    #   options = {}
    #   response = client.get_send_quota(params, options)
    #   response.to_h #=>
    #   {
    #     max24_hour_send: 200,
    #     max_send_rate: 1,
    #     sent_last24_hours: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_send_quota(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     max24_hour_send: 1.0,
    #     max_send_rate: 1.0,
    #     sent_last24_hours: 1.0
    #   }
    # @return [Types::GetSendQuotaResponse]
    def get_send_quota(params = {}, options = {})
      request = build_request(:get_send_quota, params)
      request.send_request(options)
    end

    # <p>Provides sending statistics for the current Amazon Web Services Region. The result is a list of data
    #             points, representing the last two weeks of sending activity. Each data point in the list
    #             contains statistics for a 15-minute period of time.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example GetSendStatistics
    #   # The following example returns Amazon SES sending statistics:
    #   params = {}
    #   options = {}
    #   response = client.get_send_statistics(params, options)
    #   response.to_h #=>
    #   {
    #     send_data_points: [
    #       {
    #         complaints: 0,
    #         timestamp: Time.parse("2016-07-13T22:43:00Z"),
    #         delivery_attempts: 5,
    #         bounces: 0,
    #         rejects: 0
    #       },
    #       {
    #         complaints: 0,
    #         timestamp: Time.parse("2016-07-13T23:13:00Z"),
    #         delivery_attempts: 3,
    #         bounces: 0,
    #         rejects: 0
    #       },
    #       {
    #         complaints: 0,
    #         timestamp: Time.parse("2016-07-13T21:13:00Z"),
    #         delivery_attempts: 1,
    #         bounces: 0,
    #         rejects: 0
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_send_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     send_data_points: [
    #       {
    #         timestamp: Time.now,
    #         delivery_attempts: 1,
    #         bounces: 1,
    #         complaints: 1,
    #         rejects: 1
    #       }
    #     ]
    #   }
    # @return [Types::GetSendStatisticsResponse]
    def get_send_statistics(params = {}, options = {})
      request = build_request(:get_send_statistics, params)
      request.send_request(options)
    end

    # <p>Displays the template object (which includes the Subject line, HTML part and text
    #             part) for the template you specify.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::GetTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the template to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #   }
    #   options = {}
    #   response = client.get_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template: {
    #       template_name: "TemplateName", # required
    #       subject_part: "SubjectPart",
    #       text_part: "TextPart",
    #       html_part: "HtmlPart"
    #     }
    #   }
    # @return [Types::GetTemplateResponse]
    def get_template(params = {}, options = {})
      request = build_request(:get_template, params)
      request.send_request(options)
    end

    # <p>Provides a list of the configuration sets associated with your Amazon SES account in the
    #             current Amazon Web Services Region. For information about using configuration sets, see <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html">Monitoring
    #                 Your Amazon SES Sending Activity</a> in the <i>Amazon SES Developer
    #                 Guide.</i>
    #          </p>
    #          <p>You can execute this operation no more than once per second. This operation returns up
    #             to 1,000 configuration sets each time it is run. If your Amazon SES account has more than
    #             1,000 configuration sets, this operation also returns <code>NextToken</code>. You can
    #             then execute the <code>ListConfigurationSets</code> operation again, passing the
    #                 <code>NextToken</code> parameter and the value of the NextToken element to retrieve
    #             additional results.</p>
    # @param [Hash, Types::ListConfigurationSetsRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListConfigurationSets</code> to
    #               indicate the position of the configuration set in the configuration set list.</p>
    # @option params [Integer] :max_items
    #   <p>The number of configuration sets to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_configuration_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_sets: [
    #       {
    #         name: "ConfigurationSetName", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConfigurationSetsResponse]
    def list_configuration_sets(params = {}, options = {})
      request = build_request(:list_configuration_sets, params)
      request.send_request(options)
    end

    # <p>Lists the existing custom verification email templates for your account in the current
    #             Amazon Web Services Region.</p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::ListCustomVerificationEmailTemplatesRequest] params
    # @option params [String] :next_token
    #   <p>An array the contains the name and creation time stamp for each template in your Amazon SES
    #               account.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom verification email templates to return. This value must
    #               be at least 1 and less than or equal to 50. If you do not specify a value, or if you
    #               specify a value less than 1 or greater than 50, the operation returns up to 50
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_custom_verification_email_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_verification_email_templates: [
    #       {
    #         template_name: "TemplateName",
    #         from_email_address: "FromAddress",
    #         template_subject: "Subject",
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

    # <p>Returns a list containing all of the identities (email addresses and domains) for your
    #             Amazon Web Services account in the current Amazon Web Services Region, regardless of verification status.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    #          <note>
    #             <p>It's recommended that for successive pagination calls of this API, you continue to
    #                 the use the same parameter/value pairs as used in the original call, e.g., if you
    #                 used <code>IdentityType=Domain</code> in the the original call and received a
    #                     <code>NextToken</code> in the response, you should continue providing the
    #                     <code>IdentityType=Domain</code> parameter for further <code>NextToken</code>
    #                 calls; however, if you didn't provide the <code>IdentityType</code> parameter in the
    #                 original call, then continue to not provide it for successive pagination calls.
    #                 Using this protocol will ensure consistent results.</p>
    #          </note>
    # @param [Hash, Types::ListIdentitiesRequest] params
    # @option params [String] :identity_type
    #   <p>The type of the identities to list. Possible values are "EmailAddress" and "Domain".
    #               If this parameter is omitted, then all identities are listed.</p>
    # @option params [String] :next_token
    #   <p>The token to use for pagination.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of identities per page. Possible values are 1-1000
    #               inclusive.</p>
    # @example ListIdentities
    #   # The following example lists the email address identities that have been submitted for verification with Amazon SES:
    #   params = {
    #     identity_type: EmailAddress,
    #     next_token: "",
    #     max_items: 123
    #   }
    #   options = {}
    #   response = client.list_identities(params, options)
    #   response.to_h #=>
    #   {
    #     identities: [
    #       "user@example.com"
    #     ],
    #     next_token: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_type: "EmailAddress" # One of: ["EmailAddress", "Domain"],
    #     next_token: "NextToken",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identities: ["Identity"], # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIdentitiesResponse]
    def list_identities(params = {}, options = {})
      request = build_request(:list_identities, params)
      request.send_request(options)
    end

    # <p>Returns a list of sending authorization policies that are attached to the given
    #             identity (an email address or a domain). This operation returns only a list. To get the
    #             actual policy content, use <code>GetIdentityPolicies</code>.</p>
    #          <note>
    #             <p>This operation is for the identity owner only. If you have not verified the
    #                 identity, it returns an error.</p>
    #          </note>
    #          <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::ListIdentityPoliciesRequest] params
    # @option params [String] :identity
    #   <p>The identity that is associated with the policy for which the policies are listed. You
    #               can specify an identity by using its name or by using its Amazon Resource Name (ARN).
    #               Examples: <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #            <p>To successfully call this operation, you must own the identity.</p>
    # @example ListIdentityPolicies
    #   # The following example returns a list of sending authorization policies that are attached to an identity:
    #   params = {
    #     identity: "example.com"
    #   }
    #   options = {}
    #   response = client.list_identity_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policy_names: [
    #       "MyPolicy"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #   }
    #   options = {}
    #   response = client.list_identity_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_names: ["PolicyName"], # required
    #   }
    # @return [Types::ListIdentityPoliciesResponse]
    def list_identity_policies(params = {}, options = {})
      request = build_request(:list_identity_policies, params)
      request.send_request(options)
    end

    # <p>Lists the IP address filters associated with your Amazon Web Services account in the current
    #             Amazon Web Services Region.</p>
    #          <p>For information about managing IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::ListReceiptFiltersRequest] params
    # @example ListReceiptFilters
    #   # The following example lists the IP address filters that are associated with an AWS account:
    #   params = {}
    #   options = {}
    #   response = client.list_receipt_filters(params, options)
    #   response.to_h #=>
    #   {
    #     filters: [
    #       {
    #         ip_filter: {
    #           policy: Block,
    #           cidr: "1.2.3.4/24"
    #         },
    #         name: "MyFilter"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_receipt_filters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     filters: [
    #       {
    #         name: "ReceiptFilterName", # required
    #         ip_filter: { # required
    #           policy: "Block" # One of: ["Block", "Allow"], # required
    #           cidr: "Cidr", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListReceiptFiltersResponse]
    def list_receipt_filters(params = {}, options = {})
      request = build_request(:list_receipt_filters, params)
      request.send_request(options)
    end

    # <p>Lists the receipt rule sets that exist under your Amazon Web Services account in the current
    #             Amazon Web Services Region. If there are additional receipt rule sets to be retrieved, you receive a
    #                 <code>NextToken</code> that you can provide to the next call to
    #                 <code>ListReceiptRuleSets</code> to retrieve the additional entries.</p>
    #          <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::ListReceiptRuleSetsRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListReceiptRuleSets</code> to indicate
    #               the position in the receipt rule set list.</p>
    # @example ListReceiptRuleSets
    #   # The following example lists the receipt rule sets that exist under an AWS account:
    #   params = {
    #     next_token: ""
    #   }
    #   options = {}
    #   response = client.list_receipt_rule_sets(params, options)
    #   response.to_h #=>
    #   {
    #     rule_sets: [
    #       {
    #         created_timestamp: Time.parse("2016-07-15T16:25:59.607Z"),
    #         name: "MyRuleSet"
    #       }
    #     ],
    #     next_token: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_receipt_rule_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_sets: [
    #       {
    #         name: "ReceiptRuleSetName",
    #         created_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListReceiptRuleSetsResponse]
    def list_receipt_rule_sets(params = {}, options = {})
      request = build_request(:list_receipt_rule_sets, params)
      request.send_request(options)
    end

    # <p>Lists the email templates present in your Amazon SES account in the current
    #             Amazon Web Services Region.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::ListTemplatesRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListTemplates</code> to indicate the
    #               position in the list of email templates.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of templates to return. This value must be at least 1 and less than
    #               or equal to 100. If more than 100 items are requested, the page size will automatically
    #               set to 100. If you do not specify a value, 10 is the default page size. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     templates_metadata: [
    #       {
    #         name: "TemplateName",
    #         created_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTemplatesResponse]
    def list_templates(params = {}, options = {})
      request = build_request(:list_templates, params)
      request.send_request(options)
    end

    # <p>Deprecated. Use the <code>ListIdentities</code> operation to list the email addresses
    #             and domains associated with your account.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example ListVerifiedEmailAddresses
    #   # The following example lists all email addresses that have been submitted for verification with Amazon SES:
    #   params = {}
    #   options = {}
    #   response = client.list_verified_email_addresses(params, options)
    #   response.to_h #=>
    #   {
    #     verified_email_addresses: [
    #       "user1@example.com",
    #       "user2@example.com"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_verified_email_addresses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verified_email_addresses: ["Address"]
    #   }
    # @return [Types::ListVerifiedEmailAddressesResponse]
    def list_verified_email_addresses(params = {}, options = {})
      request = build_request(:list_verified_email_addresses, params)
      request.send_request(options)
    end

    # <p>Adds or updates the delivery options for a configuration set.</p>
    # @param [Hash, Types::PutConfigurationSetDeliveryOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    # @option params [Types::DeliveryOptions] :delivery_options
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     delivery_options: {
    #       tls_policy: "Require" # One of: ["Require", "Optional"]
    #     }
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

    # <p>Adds or updates a sending authorization policy for the specified identity (an email
    #             address or a domain).</p>
    #          <note>
    #             <p>This operation is for the identity owner only. If you have not verified the
    #                 identity, it returns an error.</p>
    #          </note>
    #          <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::PutIdentityPolicyRequest] params
    # @option params [String] :identity
    #   <p>The identity to which that the policy applies. You can specify an identity by using
    #               its name or by using its Amazon Resource Name (ARN). Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #            <p>To successfully call this operation, you must own the identity.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #            <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    # @option params [String] :policy
    #   <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    #            <p>For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-policies.html">Amazon SES
    #                   Developer Guide</a>. </p>
    # @example PutIdentityPolicy
    #   # The following example adds a sending authorization policy to an identity:
    #   params = {
    #     identity: "example.com",
    #     policy_name: "MyPolicy",
    #     policy: "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Sid\":\"stmt1469123904194\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:root\"},\"Action\":[\"ses:SendEmail\",\"ses:SendRawEmail\"],\"Resource\":\"arn:aws:ses:us-east-1:EXAMPLE65304:identity/example.com\"}]}"
    #   }
    #   options = {}
    #   response = client.put_identity_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #     policy: "Policy", # required
    #   }
    #   options = {}
    #   response = client.put_identity_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutIdentityPolicyResponse]
    def put_identity_policy(params = {}, options = {})
      request = build_request(:put_identity_policy, params)
      request.send_request(options)
    end

    # <p>Reorders the receipt rules within a receipt rule set.</p>
    #          <note>
    #             <p>All of the rules in the rule set must be represented in this request. That is, it
    #                 is error if the reorder request doesn't explicitly position all of the rules.</p>
    #          </note>
    #          <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::ReorderReceiptRuleSetRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set to reorder.</p>
    # @option params [Array<String>] :rule_names
    #   <p>The specified receipt rule set's receipt rules, in order.</p>
    # @example ReorderReceiptRuleSet
    #   # The following example reorders the receipt rules within a receipt rule set:
    #   params = {
    #     rule_set_name: "MyRuleSet",
    #     rule_names: [
    #       "MyRule",
    #       "MyOtherRule"
    #     ]
    #   }
    #   options = {}
    #   response = client.reorder_receipt_rule_set(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule_names: ["ReceiptRuleName"], # required
    #   }
    #   options = {}
    #   response = client.reorder_receipt_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ReorderReceiptRuleSetResponse]
    def reorder_receipt_rule_set(params = {}, options = {})
      request = build_request(:reorder_receipt_rule_set, params)
      request.send_request(options)
    end

    # <p>Generates and sends a bounce message to the sender of an email you received through
    #             Amazon SES. You can only use this operation on an email up to 24 hours after you receive
    #             it.</p>
    #          <note>
    #             <p>You cannot use this operation to send generic bounces for mail that was not
    #                 received by Amazon SES.</p>
    #          </note>
    #          <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::SendBounceRequest] params
    # @option params [String] :original_message_id
    #   <p>The message ID of the message to be bounced.</p>
    # @option params [String] :bounce_sender
    #   <p>The address to use in the "From" header of the bounce message. This must be an
    #               identity that you have verified with Amazon SES.</p>
    # @option params [String] :explanation
    #   <p>Human-readable text for the bounce message to explain the failure. If not specified,
    #               the text is auto-generated based on the bounced recipient information.</p>
    # @option params [Types::MessageDsn] :message_dsn
    #   <p>Message-related DSN fields. If not specified, Amazon SES chooses the values.</p>
    # @option params [Array<Types::BouncedRecipientInfo>] :bounced_recipient_info_list
    #   <p>A list of recipients of the bounced message, including the information required to
    #               create the Delivery Status Notifications (DSNs) for the recipients. You must specify at
    #               least one <code>BouncedRecipientInfo</code> in the list.</p>
    # @option params [String] :bounce_sender_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               address in the "From" header of the bounce. For more information about sending
    #               authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     original_message_id: "MessageId", # required
    #     bounce_sender: "Address", # required
    #     explanation: "Explanation",
    #     message_dsn: {
    #       reporting_mta: "ReportingMta", # required
    #       arrival_date: Time.now,
    #       extension_fields: [
    #         {
    #           name: "ExtensionFieldName", # required
    #           value: "ExtensionFieldValue", # required
    #         }
    #       ]
    #     },
    #     bounced_recipient_info_list: [ # required
    #       {
    #         recipient: "Address", # required
    #         recipient_arn: "AmazonResourceName",
    #         bounce_type: "DoesNotExist" # One of: ["DoesNotExist", "MessageTooLarge", "ExceededQuota", "ContentRejected", "Undefined", "TemporaryFailure"],
    #         recipient_dsn_fields: {
    #           final_recipient: "Address",
    #           action: "failed" # One of: ["failed", "delayed", "delivered", "relayed", "expanded"], # required
    #           remote_mta: "RemoteMta",
    #           status: "DsnStatus", # required
    #           diagnostic_code: "DiagnosticCode",
    #           last_attempt_date: Time.now,
    #           extension_fields: [
    #             {
    #               name: "ExtensionFieldName", # required
    #               value: "ExtensionFieldValue", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     bounce_sender_arn: "AmazonResourceName"
    #   }
    #   options = {}
    #   response = client.send_bounce(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "MessageId"
    #   }
    # @return [Types::SendBounceResponse]
    def send_bounce(params = {}, options = {})
      request = build_request(:send_bounce, params)
      request.send_request(options)
    end

    # <p>Composes an email message to multiple destinations. The message body is created using
    #             an email template.</p>
    #          <p>To send email using this operation, your call must meet the following
    #             requirements:</p>
    #          <ul>
    #             <li>
    #                <p>The call must refer to an existing email template. You can create email
    #                     templates using <a>CreateTemplate</a>.</p>
    #             </li>
    #             <li>
    #                <p>The message must be sent from a verified email address or domain.</p>
    #             </li>
    #             <li>
    #                <p>If your account is still in the Amazon SES sandbox, you may send only to verified
    #                     addresses or domains, or to email addresses associated with the Amazon SES Mailbox
    #                     Simulator. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html">Verifying Email
    #                         Addresses and Domains</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>The maximum message size is 10 MB.</p>
    #             </li>
    #             <li>
    #                <p>Each <code>Destination</code> parameter must include at least one recipient
    #                     email address. The recipient address can be a To: address, a CC: address, or a
    #                     BCC: address. If a recipient email address is invalid (that is, it is not in the
    #                     format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the
    #                     entire message is rejected, even if the message contains other recipients that
    #                     are valid.</p>
    #             </li>
    #             <li>
    #                <p>The message may not include more than 50 recipients, across the To:, CC: and
    #                     BCC: fields. If you need to send an email message to a larger audience, you can
    #                     divide your recipient list into groups of 50 or fewer, and then call the
    #                         <code>SendBulkTemplatedEmail</code> operation several times to send the
    #                     message to each group.</p>
    #             </li>
    #             <li>
    #                <p>The number of destinations you can contact in a single call can be limited by
    #                     your account's maximum sending rate.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::SendBulkTemplatedEmailRequest] params
    # @option params [String] :source
    #   <p>The email address that is sending the email. This email address must be either
    #               individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
    #               For information about verifying identities, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html">Amazon SES Developer Guide</a>.</p>
    #            <p>If you are sending on behalf of another user and have been permitted to do so by a
    #               sending authorization policy, then you must also specify the <code>SourceArn</code>
    #               parameter. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #            <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                   email address string must be 7-bit ASCII. If you want to send to or from email
    #                   addresses that contain Unicode characters in the domain part of an address, you must
    #                   encode the domain using Punycode. Punycode is not permitted in the local part of the
    #                   email address (the part before the @ sign) nor in the "friendly from" name. If you
    #                   want to use Unicode characters in the "friendly from" name, you must encode the
    #                   "friendly from" name using MIME encoded-word syntax, as described in <a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html">Sending raw email
    #                       using the Amazon SES API</a>. For more information about Punycode, see <a href="http://tools.ietf.org/html/rfc3492">RFC 3492</a>.</p>
    #            </note>
    # @option params [String] :source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #            <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The reply-to email address(es) for the message. If the recipient replies to the
    #               message, each reply-to address receives the reply.</p>
    # @option params [String] :return_path
    #   <p>The email address that bounces and complaints are forwarded to when feedback
    #               forwarding is enabled. If the message cannot be delivered to the recipient, then an
    #               error message is returned from the recipient's ISP; this message is forwarded to the
    #               email address specified by the <code>ReturnPath</code> parameter. The
    #                   <code>ReturnPath</code> parameter is never overwritten. This email address must be
    #               either individually verified with Amazon SES, or from a domain that has been verified with
    #               Amazon SES. </p>
    # @option params [String] :return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #            <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendBulkTemplatedEmail</code>.</p>
    # @option params [Array<Types::MessageTag>] :default_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send to
    #               a destination using <code>SendBulkTemplatedEmail</code>.</p>
    # @option params [String] :template
    #   <p>The template to use when sending this email.</p>
    # @option params [String] :template_arn
    #   <p>The ARN of the template to use when sending this email.</p>
    # @option params [String] :default_template_data
    #   <p>A list of replacement values to apply to the template when replacement data is not
    #               specified in a Destination object. These values act as a default or fallback option when
    #               no other data is available.</p>
    #            <p>The template data is a JSON object, typically consisting of key-value pairs in which
    #               the keys correspond to replacement tags in the email template.</p>
    # @option params [Array<Types::BulkEmailDestination>] :destinations
    #   <p>One or more <code>Destination</code> objects. All of the recipients in a
    #                   <code>Destination</code> receive the same version of the email. You can specify up
    #               to 50 <code>Destination</code> objects within a <code>Destinations</code> array.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source: "Address", # required
    #     source_arn: "AmazonResourceName",
    #     reply_to_addresses: ["Address"],
    #     return_path: "Address",
    #     return_path_arn: "AmazonResourceName",
    #     configuration_set_name: "ConfigurationSetName",
    #     default_tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       }
    #     ],
    #     template: "TemplateName", # required
    #     template_arn: "AmazonResourceName",
    #     default_template_data: "TemplateData", # required
    #     destinations: [ # required
    #       {
    #         destination: { # required
    #           to_addresses: ["Address"],
    #           cc_addresses: ["Address"],
    #           bcc_addresses: ["Address"]
    #         },
    #         replacement_tags: [
    #           {
    #             name: "MessageTagName", # required
    #             value: "MessageTagValue", # required
    #           }
    #         ],
    #         replacement_template_data: "TemplateData"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.send_bulk_templated_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: [ # required
    #       {
    #         status: "Success" # One of: ["Success", "MessageRejected", "MailFromDomainNotVerified", "ConfigurationSetDoesNotExist", "TemplateDoesNotExist", "AccountSuspended", "AccountThrottled", "AccountDailyQuotaExceeded", "InvalidSendingPoolName", "AccountSendingPaused", "ConfigurationSetSendingPaused", "InvalidParameterValue", "TransientFailure", "Failed"],
    #         error: "Error",
    #         message_id: "MessageId"
    #       }
    #     ]
    #   }
    # @return [Types::SendBulkTemplatedEmailResponse]
    def send_bulk_templated_email(params = {}, options = {})
      request = build_request(:send_bulk_templated_email, params)
      request.send_request(options)
    end

    # <p>Adds an email address to the list of identities for your Amazon SES account in the current
    #             Amazon Web Services Region and attempts to verify it. As a result of executing this operation, a
    #             customized verification email is sent to the specified address.</p>
    #          <p>To use this operation, you must first create a custom verification email template. For
    #             more information about creating and using custom verification email templates, see
    #                 <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 Custom Verification Email Templates</a> in the <i>Amazon SES Developer
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
    #     email_address: "Address", # required
    #     template_name: "TemplateName", # required
    #     configuration_set_name: "ConfigurationSetName"
    #   }
    #   options = {}
    #   response = client.send_custom_verification_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "MessageId"
    #   }
    # @return [Types::SendCustomVerificationEmailResponse]
    def send_custom_verification_email(params = {}, options = {})
      request = build_request(:send_custom_verification_email, params)
      request.send_request(options)
    end

    # <p>Composes an email message and immediately queues it for sending. To send email using
    #             this operation, your message must meet the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>The message must be sent from a verified email address or domain. If you
    #                     attempt to send email using a non-verified address or domain, the operation
    #                     results in an "Email address not verified" error. </p>
    #             </li>
    #             <li>
    #                <p>If your account is still in the Amazon SES sandbox, you may only send to verified
    #                     addresses or domains, or to email addresses associated with the Amazon SES Mailbox
    #                     Simulator. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html">Verifying Email
    #                         Addresses and Domains</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>The maximum message size is 10 MB.</p>
    #             </li>
    #             <li>
    #                <p>The message must include at least one recipient email address. The recipient
    #                     address can be a To: address, a CC: address, or a BCC: address. If a recipient
    #                     email address is invalid (that is, it is not in the format
    #                         <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire
    #                     message is rejected, even if the message contains other recipients that are
    #                     valid.</p>
    #             </li>
    #             <li>
    #                <p>The message may not include more than 50 recipients, across the To:, CC: and
    #                     BCC: fields. If you need to send an email message to a larger audience, you can
    #                     divide your recipient list into groups of 50 or fewer, and then call the
    #                         <code>SendEmail</code> operation several times to send the message to each
    #                     group.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>For every message that you send, the total number of recipients (including each
    #                 recipient in the To:, CC: and BCC: fields) is counted against the maximum number of
    #                 emails you can send in a 24-hour period (your <i>sending quota</i>).
    #                 For more information about sending quotas in Amazon SES, see <a href="https://docs.aws.amazon.com/ses/latest/dg/manage-sending-quotas.html">Managing Your Amazon SES Sending
    #                     Limits</a> in the <i>Amazon SES Developer Guide.</i>
    #             </p>
    #          </important>
    # @param [Hash, Types::SendEmailRequest] params
    # @option params [String] :source
    #   <p>The email address that is sending the email. This email address must be either
    #               individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
    #               For information about verifying identities, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html">Amazon SES Developer Guide</a>.</p>
    #            <p>If you are sending on behalf of another user and have been permitted to do so by a
    #               sending authorization policy, then you must also specify the <code>SourceArn</code>
    #               parameter. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #            <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                   email address string must be 7-bit ASCII. If you want to send to or from email
    #                   addresses that contain Unicode characters in the domain part of an address, you must
    #                   encode the domain using Punycode. Punycode is not permitted in the local part of the
    #                   email address (the part before the @ sign) nor in the "friendly from" name. If you
    #                   want to use Unicode characters in the "friendly from" name, you must encode the
    #                   "friendly from" name using MIME encoded-word syntax, as described in <a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html">Sending raw email
    #                       using the Amazon SES API</a>. For more information about Punycode, see <a href="http://tools.ietf.org/html/rfc3492">RFC 3492</a>.</p>
    #            </note>
    # @option params [Types::Destination] :destination
    #   <p>The destination for this email, composed of To:, CC:, and BCC: fields.</p>
    # @option params [Types::Message] :message
    #   <p>The message to be sent.</p>
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The reply-to email address(es) for the message. If the recipient replies to the
    #               message, each reply-to address receives the reply.</p>
    # @option params [String] :return_path
    #   <p>The email address that bounces and complaints are forwarded to when feedback
    #               forwarding is enabled. If the message cannot be delivered to the recipient, then an
    #               error message is returned from the recipient's ISP; this message is forwarded to the
    #               email address specified by the <code>ReturnPath</code> parameter. The
    #                   <code>ReturnPath</code> parameter is never overwritten. This email address must be
    #               either individually verified with Amazon SES, or from a domain that has been verified with
    #               Amazon SES. </p>
    # @option params [String] :source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #            <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    # @option params [String] :return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #            <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    # @option params [Array<Types::MessageTag>] :tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendEmail</code>. Tags correspond to characteristics of the email that you
    #               define, so that you can publish email sending events.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendEmail</code>.</p>
    # @example SendEmail
    #   # The following example sends a formatted email:
    #   params = {
    #     source: "sender@example.com",
    #     destination: {
    #       to_addresses: [
    #         "recipient1@example.com",
    #         "recipient2@example.com"
    #       ],
    #       cc_addresses: [
    #         "recipient3@example.com"
    #       ],
    #       bcc_addresses: [
    #       ]
    #     },
    #     message: {
    #       subject: {
    #         data: "Test email",
    #         charset: "UTF-8"
    #       },
    #       body: {
    #         text: {
    #           data: "This is the message body in text format.",
    #           charset: "UTF-8"
    #         },
    #         html: {
    #           data: "This message body contains HTML formatting. It can, for example, contain links like this one: <a class=\"ulink\" href=\"http://docs.aws.amazon.com/ses/latest/DeveloperGuide\" target=\"_blank\">Amazon SES Developer Guide</a>.",
    #           charset: "UTF-8"
    #         }
    #       }
    #     },
    #     reply_to_addresses: [
    #     ],
    #     return_path: "",
    #     source_arn: "",
    #     return_path_arn: ""
    #   }
    #   options = {}
    #   response = client.send_email(params, options)
    #   response.to_h #=>
    #   {
    #     message_id: "EXAMPLE78603177f-7a5433e7-8edb-42ae-af10-f0181f34d6ee-000000"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     source: "Address", # required
    #     destination: { # required
    #       to_addresses: ["Address"],
    #       cc_addresses: ["Address"],
    #       bcc_addresses: ["Address"]
    #     },
    #     message: { # required
    #       subject: { # required
    #         data: "MessageData", # required
    #         charset: "Charset"
    #       },
    #       body: { # required
    #         text: {
    #           data: "MessageData", # required
    #           charset: "Charset"
    #         },
    #         html: {
    #           data: "MessageData", # required
    #           charset: "Charset"
    #         }
    #       }
    #     },
    #     reply_to_addresses: ["Address"],
    #     return_path: "Address",
    #     source_arn: "AmazonResourceName",
    #     return_path_arn: "AmazonResourceName",
    #     tags: [
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
    #     message_id: "MessageId", # required
    #   }
    # @return [Types::SendEmailResponse]
    def send_email(params = {}, options = {})
      request = build_request(:send_email, params)
      request.send_request(options)
    end

    # <p>Composes an email message and immediately queues it for sending.</p>
    #          <p>This operation is more flexible than the <code>SendEmail</code> operation. When you
    #             use the <code>SendRawEmail</code> operation, you can specify the headers of the message
    #             as well as its content. This flexibility is useful, for example, when you need to send a
    #             multipart MIME email (such a message that contains both a text and an HTML version). You
    #             can also use this operation to send messages that include attachments.</p>
    #          <p>The <code>SendRawEmail</code> operation has the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>You can only send email from <a href="https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html">verified email addresses or domains</a>. If you try to send email from
    #                     an address that isn't verified, the operation results in an "Email address not
    #                     verified" error.</p>
    #             </li>
    #             <li>
    #                <p>If your account is still in the <a href="https://docs.aws.amazon.com/ses/latest/dg/request-production-access.html">Amazon SES sandbox</a>, you can only send email to other verified addresses
    #                     in your account, or to addresses that are associated with the <a href="https://docs.aws.amazon.com/ses/latest/dg/send-an-email-from-console.html">Amazon SES mailbox simulator</a>.</p>
    #             </li>
    #             <li>
    #                <p>The maximum message size, including attachments, is 10 MB.</p>
    #             </li>
    #             <li>
    #                <p>Each message has to include at least one recipient address. A recipient
    #                     address includes any address on the To:, CC:, or BCC: lines.</p>
    #             </li>
    #             <li>
    #                <p>If you send a single message to more than one recipient address, and one of
    #                     the recipient addresses isn't in a valid format (that is, it's not in the format
    #                         <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), Amazon SES
    #                     rejects the entire message, even if the other addresses are valid.</p>
    #             </li>
    #             <li>
    #                <p>Each message can include up to 50 recipient addresses across the To:, CC:, or
    #                     BCC: lines. If you need to send a single message to more than 50 recipients, you
    #                     have to split the list of recipient addresses into groups of less than 50
    #                     recipients, and send separate messages to each group.</p>
    #             </li>
    #             <li>
    #                <p>Amazon SES allows you to specify 8-bit Content-Transfer-Encoding for MIME message
    #                     parts. However, if Amazon SES has to modify the contents of your message (for
    #                     example, if you use open and click tracking), 8-bit content isn't preserved. For
    #                     this reason, we highly recommend that you encode all content that isn't 7-bit
    #                     ASCII. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html#send-email-mime-encoding">MIME Encoding</a> in the <i>Amazon SES Developer
    #                         Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <p>Additionally, keep the following considerations in mind when using the
    #                 <code>SendRawEmail</code> operation:</p>
    #          <ul>
    #             <li>
    #                <p>Although you can customize the message headers when using the
    #                         <code>SendRawEmail</code> operation, Amazon SES automatically applies its own
    #                         <code>Message-ID</code> and <code>Date</code> headers; if you passed these
    #                     headers when creating the message, they are overwritten by the values that Amazon SES
    #                     provides.</p>
    #             </li>
    #             <li>
    #                <p>If you are using sending authorization to send on behalf of another user,
    #                         <code>SendRawEmail</code> enables you to specify the cross-account identity
    #                     for the email's Source, From, and Return-Path parameters in one of two ways: you
    #                     can pass optional parameters <code>SourceArn</code>, <code>FromArn</code>,
    #                     and/or <code>ReturnPathArn</code>, or you can include the following X-headers in
    #                     the header of your raw email:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>X-SES-SOURCE-ARN</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>X-SES-FROM-ARN</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>X-SES-RETURN-PATH-ARN</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <important>
    #                   <p>Don't include these X-headers in the DKIM signature. Amazon SES removes these
    #                         before it sends the email.</p>
    #                </important>
    #                <p>If you only specify the <code>SourceIdentityArn</code> parameter, Amazon SES sets
    #                     the From and Return-Path addresses to the same identity that you
    #                     specified.</p>
    #                <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Using
    #                         Sending Authorization with Amazon SES</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>For every message that you send, the total number of recipients (including
    #                     each recipient in the To:, CC: and BCC: fields) is counted against the maximum
    #                     number of emails you can send in a 24-hour period (your <i>sending
    #                         quota</i>). For more information about sending quotas in Amazon SES, see
    #                         <a href="https://docs.aws.amazon.com/ses/latest/dg/manage-sending-quotas.html">Managing Your Amazon SES Sending Limits</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::SendRawEmailRequest] params
    # @option params [String] :source
    #   <p>The identity's email address. If you do not provide a value for this parameter, you
    #               must specify a "From" address in the raw text of the message. (You can also specify
    #               both.)</p>
    #            <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in<a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                   email address string must be 7-bit ASCII. If you want to send to or from email
    #                   addresses that contain Unicode characters in the domain part of an address, you must
    #                   encode the domain using Punycode. Punycode is not permitted in the local part of the
    #                   email address (the part before the @ sign) nor in the "friendly from" name. If you
    #                   want to use Unicode characters in the "friendly from" name, you must encode the
    #                   "friendly from" name using MIME encoded-word syntax, as described in <a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html">Sending raw email
    #                       using the Amazon SES API</a>. For more information about Punycode, see <a href="http://tools.ietf.org/html/rfc3492">RFC 3492</a>.</p>
    #            </note>
    #            <p>If you specify the <code>Source</code> parameter and have feedback forwarding enabled,
    #               then bounces and complaints are sent to this email address. This takes precedence over
    #               any Return-Path header that you might include in the raw text of the message.</p>
    # @option params [Array<String>] :destinations
    #   <p>A list of destinations for the message, consisting of To:, CC:, and BCC:
    #               addresses.</p>
    # @option params [Types::RawMessage] :raw_message
    #   <p>The raw email message itself. The message has to meet the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>The message has to contain a header and a body, separated by a blank
    #                       line.</p>
    #               </li>
    #               <li>
    #                  <p>All of the required header fields must be present in the message.</p>
    #               </li>
    #               <li>
    #                  <p>Each part of a multipart MIME message must be formatted properly.</p>
    #               </li>
    #               <li>
    #                  <p>Attachments must be of a content type that Amazon SES supports. For a list on
    #                       unsupported content types, see <a href="https://docs.aws.amazon.com/ses/latest/dg/mime-types.html">Unsupported Attachment Types</a> in
    #                       the <i>Amazon SES Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>The entire message must be base64-encoded.</p>
    #               </li>
    #               <li>
    #                  <p>If any of the MIME parts in your message contain content that is outside of
    #                       the 7-bit ASCII character range, we highly recommend that you encode that
    #                       content. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html">Sending Raw
    #                           Email</a> in the <i>Amazon SES Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>Per <a href="https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6">RFC
    #                           5321</a>, the maximum length of each line of text, including the
    #                       <CRLF>, must not exceed 1,000 characters.</p>
    #               </li>
    #            </ul>
    # @option params [String] :from_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to specify a
    #               particular "From" address in the header of the raw email.</p>
    #            <p>Instead of using this parameter, you can use the X-header <code>X-SES-FROM-ARN</code>
    #               in the raw message of the email. If you use both the <code>FromArn</code> parameter and
    #               the corresponding X-header, Amazon SES uses the value of the <code>FromArn</code>
    #               parameter.</p>
    #            <note>
    #               <p>For information about when to use this parameter, see the description of
    #                       <code>SendRawEmail</code> in this guide, or see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html">Amazon SES
    #                       Developer Guide</a>.</p>
    #            </note>
    # @option params [String] :source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #            <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #            <p>Instead of using this parameter, you can use the X-header
    #                   <code>X-SES-SOURCE-ARN</code> in the raw message of the email. If you use both the
    #                   <code>SourceArn</code> parameter and the corresponding X-header, Amazon SES uses the
    #               value of the <code>SourceArn</code> parameter.</p>
    #            <note>
    #               <p>For information about when to use this parameter, see the description of
    #                       <code>SendRawEmail</code> in this guide, or see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html">Amazon SES
    #                       Developer Guide</a>.</p>
    #            </note>
    # @option params [String] :return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #            <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #            <p>Instead of using this parameter, you can use the X-header
    #                   <code>X-SES-RETURN-PATH-ARN</code> in the raw message of the email. If you use both
    #               the <code>ReturnPathArn</code> parameter and the corresponding X-header, Amazon SES uses the
    #               value of the <code>ReturnPathArn</code> parameter.</p>
    #            <note>
    #               <p>For information about when to use this parameter, see the description of
    #                       <code>SendRawEmail</code> in this guide, or see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html">Amazon SES
    #                       Developer Guide</a>.</p>
    #            </note>
    # @option params [Array<Types::MessageTag>] :tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendRawEmail</code>. Tags correspond to characteristics of the email that
    #               you define, so that you can publish email sending events.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendRawEmail</code>.</p>
    # @example SendRawEmail
    #   # The following example sends an email with an attachment:
    #   params = {
    #     source: "",
    #     destinations: [
    #     ],
    #     raw_message: {
    #       data: "From: sender@example.com\\nTo: recipient@example.com\\nSubject: Test email (contains an attachment)\\nMIME-Version: 1.0\\nContent-type: Multipart/Mixed; boundary=\"NextPart\"\\n\\n--NextPart\\nContent-Type: text/plain\\n\\nThis is the message body.\\n\\n--NextPart\\nContent-Type: text/plain;\\nContent-Disposition: attachment; filename=\"attachment.txt\"\\n\\nThis is the text in the attachment.\\n\\n--NextPart--"
    #     },
    #     from_arn: "",
    #     source_arn: "",
    #     return_path_arn: ""
    #   }
    #   options = {}
    #   response = client.send_raw_email(params, options)
    #   response.to_h #=>
    #   {
    #     message_id: "EXAMPLEf3f73d99b-c63fb06f-d263-41f8-a0fb-d0dc67d56c07-000000"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     source: "Address",
    #     destinations: ["Address"],
    #     raw_message: { # required
    #       data: "data", # required
    #     },
    #     from_arn: "AmazonResourceName",
    #     source_arn: "AmazonResourceName",
    #     return_path_arn: "AmazonResourceName",
    #     tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       }
    #     ],
    #     configuration_set_name: "ConfigurationSetName"
    #   }
    #   options = {}
    #   response = client.send_raw_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "MessageId", # required
    #   }
    # @return [Types::SendRawEmailResponse]
    def send_raw_email(params = {}, options = {})
      request = build_request(:send_raw_email, params)
      request.send_request(options)
    end

    # <p>Composes an email message using an email template and immediately queues it for
    #             sending.</p>
    #          <p>To send email using this operation, your call must meet the following
    #             requirements:</p>
    #          <ul>
    #             <li>
    #                <p>The call must refer to an existing email template. You can create email
    #                     templates using the <a>CreateTemplate</a> operation.</p>
    #             </li>
    #             <li>
    #                <p>The message must be sent from a verified email address or domain.</p>
    #             </li>
    #             <li>
    #                <p>If your account is still in the Amazon SES sandbox, you may only send to verified
    #                     addresses or domains, or to email addresses associated with the Amazon SES Mailbox
    #                     Simulator. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html">Verifying Email
    #                         Addresses and Domains</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>The maximum message size is 10 MB.</p>
    #             </li>
    #             <li>
    #                <p>Calls to the <code>SendTemplatedEmail</code> operation may only include one
    #                         <code>Destination</code> parameter. A destination is a set of recipients
    #                     that receives the same version of the email. The <code>Destination</code>
    #                     parameter can include up to 50 recipients, across the To:, CC: and BCC:
    #                     fields.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Destination</code> parameter must include at least one recipient
    #                     email address. The recipient address can be a To: address, a CC: address, or a
    #                     BCC: address. If a recipient email address is invalid (that is, it is not in the
    #                     format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the
    #                     entire message is rejected, even if the message contains other recipients that
    #                     are valid.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>If your call to the <code>SendTemplatedEmail</code> operation includes all of the
    #                 required parameters, Amazon SES accepts it and returns a Message ID. However, if Amazon SES
    #                 can't render the email because the template contains errors, it doesn't send the
    #                 email. Additionally, because it already accepted the message, Amazon SES doesn't return a
    #                 message stating that it was unable to send the email.</p>
    #             <p>For these reasons, we highly recommend that you set up Amazon SES to send you
    #                 notifications when Rendering Failure events occur. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html">Sending Personalized Email Using the Amazon SES API</a> in the
    #                     <i>Amazon Simple Email Service Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::SendTemplatedEmailRequest] params
    # @option params [String] :source
    #   <p>The email address that is sending the email. This email address must be either
    #               individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
    #               For information about verifying identities, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html">Amazon SES Developer Guide</a>.</p>
    #            <p>If you are sending on behalf of another user and have been permitted to do so by a
    #               sending authorization policy, then you must also specify the <code>SourceArn</code>
    #               parameter. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #            <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. for this reason, The
    #                   email address string must be 7-bit ASCII. If you want to send to or from email
    #                   addresses that contain Unicode characters in the domain part of an address, you must
    #                   encode the domain using Punycode. Punycode is not permitted in the local part of the
    #                   email address (the part before the @ sign) nor in the "friendly from" name. If you
    #                   want to use Unicode characters in the "friendly from" name, you must encode the
    #                   "friendly from" name using MIME encoded-word syntax, as described in <a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html">Sending raw email
    #                       using the Amazon SES API</a>. For more information about Punycode, see <a href="http://tools.ietf.org/html/rfc3492">RFC 3492</a>.</p>
    #            </note>
    # @option params [Types::Destination] :destination
    #   <p>The destination for this email, composed of To:, CC:, and BCC: fields. A Destination
    #               can include up to 50 recipients across these three fields.</p>
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The reply-to email address(es) for the message. If the recipient replies to the
    #               message, each reply-to address receives the reply.</p>
    # @option params [String] :return_path
    #   <p>The email address that bounces and complaints are forwarded to when feedback
    #               forwarding is enabled. If the message cannot be delivered to the recipient, then an
    #               error message is returned from the recipient's ISP; this message is forwarded to the
    #               email address specified by the <code>ReturnPath</code> parameter. The
    #                   <code>ReturnPath</code> parameter is never overwritten. This email address must be
    #               either individually verified with Amazon SES, or from a domain that has been verified with
    #               Amazon SES. </p>
    # @option params [String] :source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #            <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    # @option params [String] :return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #            <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #            <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    # @option params [Array<Types::MessageTag>] :tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendTemplatedEmail</code>. Tags correspond to characteristics of the email
    #               that you define, so that you can publish email sending events.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendTemplatedEmail</code>.</p>
    # @option params [String] :template
    #   <p>The template to use when sending this email.</p>
    # @option params [String] :template_arn
    #   <p>The ARN of the template to use when sending this email.</p>
    # @option params [String] :template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source: "Address", # required
    #     destination: { # required
    #       to_addresses: ["Address"],
    #       cc_addresses: ["Address"],
    #       bcc_addresses: ["Address"]
    #     },
    #     reply_to_addresses: ["Address"],
    #     return_path: "Address",
    #     source_arn: "AmazonResourceName",
    #     return_path_arn: "AmazonResourceName",
    #     tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       }
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #     template: "TemplateName", # required
    #     template_arn: "AmazonResourceName",
    #     template_data: "TemplateData", # required
    #   }
    #   options = {}
    #   response = client.send_templated_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "MessageId", # required
    #   }
    # @return [Types::SendTemplatedEmailResponse]
    def send_templated_email(params = {}, options = {})
      request = build_request(:send_templated_email, params)
      request.send_request(options)
    end

    # <p>Sets the specified receipt rule set as the active receipt rule set.</p>
    #          <note>
    #             <p>To disable your email-receiving through Amazon SES completely, you can call this
    #                 operation with <code>RuleSetName</code> set to null.</p>
    #          </note>
    #          <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::SetActiveReceiptRuleSetRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set to make active. Setting this value to null disables
    #               all email receiving.</p>
    # @example SetActiveReceiptRuleSet
    #   # The following example sets the active receipt rule set:
    #   params = {
    #     rule_set_name: "RuleSetToActivate"
    #   }
    #   options = {}
    #   response = client.set_active_receipt_rule_set(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName"
    #   }
    #   options = {}
    #   response = client.set_active_receipt_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetActiveReceiptRuleSetResponse]
    def set_active_receipt_rule_set(params = {}, options = {})
      request = build_request(:set_active_receipt_rule_set, params)
      request.send_request(options)
    end

    # <p>Enables or disables Easy DKIM signing of email sent from an identity. If Easy DKIM
    #             signing is enabled for a domain, then Amazon SES uses DKIM to sign all email that it sends
    #             from addresses on that domain. If Easy DKIM signing is enabled for an email address,
    #             then Amazon SES uses DKIM to sign all email it sends from that address.</p>
    #          <note>
    #             <p>For email addresses (for example, <code>user@example.com</code>), you can only
    #                 enable DKIM signing if the corresponding domain (in this case,
    #                     <code>example.com</code>) has been set up to use Easy DKIM.</p>
    #          </note>
    #          <p>You can enable DKIM signing for an identity at any time after you start the
    #             verification process for the identity, even if the verification process isn't complete. </p>
    #          <p>You can execute this operation no more than once per second.</p>
    #          <p>For more information about Easy DKIM signing, go to the <a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html">Amazon SES Developer
    #                 Guide</a>.</p>
    # @param [Hash, Types::SetIdentityDkimEnabledRequest] params
    # @option params [String] :identity
    #   <p>The identity for which DKIM signing should be enabled or disabled.</p>
    # @option params [Boolean] :dkim_enabled
    #   <p>Sets whether DKIM signing is enabled for an identity. Set to <code>true</code> to
    #               enable DKIM signing for this identity; <code>false</code> to disable it. </p>
    # @example SetIdentityDkimEnabled
    #   # The following example configures Amazon SES to Easy DKIM-sign the email sent from an identity:
    #   params = {
    #     identity: "user@example.com",
    #     dkim_enabled: true
    #   }
    #   options = {}
    #   response = client.set_identity_dkim_enabled(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #     dkim_enabled: false, # required
    #   }
    #   options = {}
    #   response = client.set_identity_dkim_enabled(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetIdentityDkimEnabledResponse]
    def set_identity_dkim_enabled(params = {}, options = {})
      request = build_request(:set_identity_dkim_enabled, params)
      request.send_request(options)
    end

    # <p>Given an identity (an email address or a domain), enables or disables whether Amazon SES
    #             forwards bounce and complaint notifications as email. Feedback forwarding can only be
    #             disabled when Amazon Simple Notification Service (Amazon SNS) topics are specified for both bounces and
    #             complaints.</p>
    #          <note>
    #             <p>Feedback forwarding does not apply to delivery notifications. Delivery
    #                 notifications are only available through Amazon SNS.</p>
    #          </note>
    #          <p>You can execute this operation no more than once per second.</p>
    #          <p>For more information about using notifications with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html">Amazon SES
    #                 Developer Guide</a>.</p>
    # @param [Hash, Types::SetIdentityFeedbackForwardingEnabledRequest] params
    # @option params [String] :identity
    #   <p>The identity for which to set bounce and complaint notification forwarding. Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>.</p>
    # @option params [Boolean] :forwarding_enabled
    #   <p>Sets whether Amazon SES forwards bounce and complaint notifications as email.
    #                   <code>true</code> specifies that Amazon SES forwards bounce and complaint notifications
    #               as email, in addition to any Amazon SNS topic publishing otherwise specified.
    #                   <code>false</code> specifies that Amazon SES publishes bounce and complaint notifications
    #               only through Amazon SNS. This value can only be set to <code>false</code> when Amazon SNS topics
    #               are set for both <code>Bounce</code> and <code>Complaint</code> notification
    #               types.</p>
    # @example SetIdentityFeedbackForwardingEnabled
    #   # The following example configures Amazon SES to forward an identity's bounces and complaints via email:
    #   params = {
    #     identity: "user@example.com",
    #     forwarding_enabled: true
    #   }
    #   options = {}
    #   response = client.set_identity_feedback_forwarding_enabled(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #     forwarding_enabled: false, # required
    #   }
    #   options = {}
    #   response = client.set_identity_feedback_forwarding_enabled(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetIdentityFeedbackForwardingEnabledResponse]
    def set_identity_feedback_forwarding_enabled(params = {}, options = {})
      request = build_request(:set_identity_feedback_forwarding_enabled, params)
      request.send_request(options)
    end

    # <p>Given an identity (an email address or a domain), sets whether Amazon SES includes the
    #             original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified
    #             type.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    #          <p>For more information about using notifications with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html">Amazon SES
    #                 Developer Guide</a>.</p>
    # @param [Hash, Types::SetIdentityHeadersInNotificationsEnabledRequest] params
    # @option params [String] :identity
    #   <p>The identity for which to enable or disable headers in notifications. Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>.</p>
    # @option params [String] :notification_type
    #   <p>The notification type for which to enable or disable headers in notifications. </p>
    # @option params [Boolean] :enabled
    #   <p>Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the
    #               specified notification type. A value of <code>true</code> specifies that Amazon SES includes
    #               headers in notifications, and a value of <code>false</code> specifies that Amazon SES does
    #               not include headers in notifications.</p>
    #            <p>This value can only be set when <code>NotificationType</code> is already set to use a
    #               particular Amazon SNS topic.</p>
    # @example SetIdentityHeadersInNotificationsEnabled
    #   # The following example configures Amazon SES to include the original email headers in the Amazon SNS bounce notifications for an identity:
    #   params = {
    #     identity: "user@example.com",
    #     notification_type: Bounce,
    #     enabled: true
    #   }
    #   options = {}
    #   response = client.set_identity_headers_in_notifications_enabled(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #     notification_type: "Bounce" # One of: ["Bounce", "Complaint", "Delivery"], # required
    #     enabled: false, # required
    #   }
    #   options = {}
    #   response = client.set_identity_headers_in_notifications_enabled(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetIdentityHeadersInNotificationsEnabledResponse]
    def set_identity_headers_in_notifications_enabled(params = {}, options = {})
      request = build_request(:set_identity_headers_in_notifications_enabled, params)
      request.send_request(options)
    end

    # <p>Enables or disables the custom MAIL FROM domain setup for a verified identity (an
    #             email address or a domain).</p>
    #          <important>
    #             <p>To send emails using the specified MAIL FROM domain, you must add an MX record to
    #                 your MAIL FROM domain's DNS settings. To ensure that your emails pass Sender Policy
    #                 Framework (SPF) checks, you must also add or update an SPF record. For more
    #                 information, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/mail-from.html">Amazon SES Developer Guide</a>.</p>
    #          </important>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::SetIdentityMailFromDomainRequest] params
    # @option params [String] :identity
    #   <p>The verified identity.</p>
    # @option params [String] :mail_from_domain
    #   <p>The custom MAIL FROM domain for the verified identity to use. The MAIL FROM domain
    #               must 1) be a subdomain of the verified identity, 2) not be used in a "From" address if
    #               the MAIL FROM domain is the destination of email feedback forwarding (for more
    #               information, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/mail-from.html">Amazon SES Developer Guide</a>), and 3) not be used to receive emails. A value of
    #                   <code>null</code> disables the custom MAIL FROM setting for the identity.</p>
    # @option params [String] :behavior_on_mx_failure
    #   <p>The action for Amazon SES to take if it cannot successfully read the required MX record
    #               when you send an email. If you choose <code>UseDefaultValue</code>, Amazon SES uses
    #               amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose
    #                   <code>RejectMessage</code>, Amazon SES returns a <code>MailFromDomainNotVerified</code>
    #               error and not send the email.</p>
    #            <p>The action specified in <code>BehaviorOnMXFailure</code> is taken when the custom MAIL
    #               FROM domain setup is in the <code>Pending</code>, <code>Failed</code>, and
    #                   <code>TemporaryFailure</code> states.</p>
    # @example SetIdentityMailFromDomain
    #   # The following example configures Amazon SES to use a custom MAIL FROM domain for an identity:
    #   params = {
    #     identity: "user@example.com",
    #     mail_from_domain: "bounces.example.com",
    #     behavior_on_mx_failure: UseDefaultValue
    #   }
    #   options = {}
    #   response = client.set_identity_mail_from_domain(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #     mail_from_domain: "MailFromDomainName",
    #     behavior_on_mx_failure: "UseDefaultValue" # One of: ["UseDefaultValue", "RejectMessage"]
    #   }
    #   options = {}
    #   response = client.set_identity_mail_from_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetIdentityMailFromDomainResponse]
    def set_identity_mail_from_domain(params = {}, options = {})
      request = build_request(:set_identity_mail_from_domain, params)
      request.send_request(options)
    end

    # <p>Sets an Amazon Simple Notification Service (Amazon SNS) topic to use when delivering notifications. When you use
    #             this operation, you specify a verified identity, such as an email address or domain.
    #             When you send an email that uses the chosen identity in the Source field, Amazon SES sends
    #             notifications to the topic you specified. You can send bounce, complaint, or delivery
    #             notifications (or any combination of the three) to the Amazon SNS topic that you
    #             specify.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    #          <p>For more information about feedback notification, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html">Amazon SES
    #                 Developer Guide</a>.</p>
    # @param [Hash, Types::SetIdentityNotificationTopicRequest] params
    # @option params [String] :identity
    #   <p>The identity (email address or domain) for the Amazon SNS topic.</p>
    #            <important>
    #               <p>You can only specify a verified identity for this parameter.</p>
    #            </important>
    #            <p>You can specify an identity by using its name or by using its Amazon Resource Name
    #               (ARN). The following examples are all valid identities: <code>sender@example.com</code>,
    #                   <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    # @option params [String] :notification_type
    #   <p>The type of notifications that are published to the specified Amazon SNS topic.</p>
    # @option params [String] :sns_topic
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from
    #               the request or a null value is passed, <code>SnsTopic</code> is cleared and publishing
    #               is disabled.</p>
    # @example SetIdentityNotificationTopic
    #   # The following example sets the Amazon SNS topic to which Amazon SES will publish bounce, complaint, and/or delivery notifications for emails sent with the specified identity as the Source:
    #   params = {
    #     identity: "user@example.com",
    #     notification_type: Bounce,
    #     sns_topic: "arn:aws:sns:us-west-2:111122223333:MyTopic"
    #   }
    #   options = {}
    #   response = client.set_identity_notification_topic(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identity: "Identity", # required
    #     notification_type: "Bounce" # One of: ["Bounce", "Complaint", "Delivery"], # required
    #     sns_topic: "NotificationTopic"
    #   }
    #   options = {}
    #   response = client.set_identity_notification_topic(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetIdentityNotificationTopicResponse]
    def set_identity_notification_topic(params = {}, options = {})
      request = build_request(:set_identity_notification_topic, params)
      request.send_request(options)
    end

    # <p>Sets the position of the specified receipt rule in the receipt rule set.</p>
    #          <p>For information about managing receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::SetReceiptRulePositionRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set that contains the receipt rule to reposition.</p>
    # @option params [String] :rule_name
    #   <p>The name of the receipt rule to reposition.</p>
    # @option params [String] :after
    #   <p>The name of the receipt rule after which to place the specified receipt rule.</p>
    # @example SetReceiptRulePosition
    #   # The following example sets the position of a receipt rule in a receipt rule set:
    #   params = {
    #     rule_set_name: "MyRuleSet",
    #     rule_name: "RuleToReposition",
    #     after: "PutRuleAfterThisRule"
    #   }
    #   options = {}
    #   response = client.set_receipt_rule_position(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule_name: "ReceiptRuleName", # required
    #     after: "ReceiptRuleName"
    #   }
    #   options = {}
    #   response = client.set_receipt_rule_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetReceiptRulePositionResponse]
    def set_receipt_rule_position(params = {}, options = {})
      request = build_request(:set_receipt_rule_position, params)
      request.send_request(options)
    end

    # <p>Creates a preview of the MIME content of an email when provided with a template and a
    #             set of replacement data.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::TestRenderTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the template to render.</p>
    # @option params [String] :template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     template_data: "TemplateData", # required
    #   }
    #   options = {}
    #   response = client.test_render_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rendered_template: "RenderedTemplate"
    #   }
    # @return [Types::TestRenderTemplateResponse]
    def test_render_template(params = {}, options = {})
      request = build_request(:test_render_template, params)
      request.send_request(options)
    end

    # <p>Enables or disables email sending across your entire Amazon SES account in the current
    #             Amazon Web Services Region. You can use this operation in conjunction with Amazon CloudWatch alarms to
    #             temporarily pause email sending across your Amazon SES account in a given Amazon Web Services Region when
    #             reputation metrics (such as your bounce or complaint rates) reach certain
    #             thresholds.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateAccountSendingEnabledRequest] params
    # @option params [Boolean] :enabled
    #   <p>Describes whether email sending is enabled or disabled for your Amazon SES account in the
    #               current Amazon Web Services Region.</p>
    # @example UpdateAccountSendingEnabled
    #   # The following example updated the sending status for this account.
    #   params = {
    #     enabled: true
    #   }
    #   options = {}
    #   response = client.update_account_sending_enabled(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.update_account_sending_enabled(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_account_sending_enabled(params = {}, options = {})
      request = build_request(:update_account_sending_enabled, params)
      request.send_request(options)
    end

    # <p>Updates the event destination of a configuration set. Event destinations are
    #             associated with configuration sets, which enable you to publish email sending events to
    #             Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets,
    #             see <a href="https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html">Monitoring Your Amazon SES Sending Activity</a> in the <i>Amazon SES Developer
    #                 Guide.</i>
    #          </p>
    #          <note>
    #             <p>When you create or update an event destination, you must provide one, and only
    #                 one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service
    #                 (Amazon SNS).</p>
    #          </note>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateConfigurationSetEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination.</p>
    # @option params [Types::EventDestination] :event_destination
    #   <p>The event destination object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination: { # required
    #       name: "EventDestinationName", # required
    #       enabled: false,
    #       matching_event_types: ["send" # One of: ["send", "reject", "bounce", "complaint", "delivery", "open", "click", "renderingFailure"]], # required
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "messageTag" # One of: ["messageTag", "emailHeader", "linkTag"], # required
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           }
    #         ]
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
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

    # <p>Enables or disables the publishing of reputation metrics for emails sent using a
    #             specific configuration set in a given Amazon Web Services Region. Reputation metrics include bounce
    #             and complaint rates. These metrics are published to Amazon CloudWatch. By using CloudWatch, you can
    #             create alarms when bounce or complaint rates exceed certain thresholds.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateConfigurationSetReputationMetricsEnabledRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to update.</p>
    # @option params [Boolean] :enabled
    #   <p>Describes whether or not Amazon SES publishes reputation metrics for the configuration set,
    #               such as bounce and complaint rates, to Amazon CloudWatch.</p>
    # @example UpdateConfigurationSetReputationMetricsEnabled
    #   # Set the reputationMetricsEnabled flag for a specific configuration set.
    #   params = {
    #     configuration_set_name: "foo",
    #     enabled: true
    #   }
    #   options = {}
    #   response = client.update_configuration_set_reputation_metrics_enabled(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     enabled: false, # required
    #   }
    #   options = {}
    #   response = client.update_configuration_set_reputation_metrics_enabled(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_configuration_set_reputation_metrics_enabled(params = {}, options = {})
      request = build_request(:update_configuration_set_reputation_metrics_enabled, params)
      request.send_request(options)
    end

    # <p>Enables or disables email sending for messages sent using a specific configuration set
    #             in a given Amazon Web Services Region. You can use this operation in conjunction with Amazon CloudWatch alarms
    #             to temporarily pause email sending for a configuration set when the reputation metrics
    #             for that configuration set (such as your bounce on complaint rate) exceed certain
    #             thresholds.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateConfigurationSetSendingEnabledRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to update.</p>
    # @option params [Boolean] :enabled
    #   <p>Describes whether email sending is enabled or disabled for the configuration set.
    #           </p>
    # @example UpdateConfigurationSetReputationMetricsEnabled
    #   # Set the sending enabled flag for a specific configuration set.
    #   params = {
    #     configuration_set_name: "foo",
    #     enabled: true
    #   }
    #   options = {}
    #   response = client.update_configuration_set_sending_enabled(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     enabled: false, # required
    #   }
    #   options = {}
    #   response = client.update_configuration_set_sending_enabled(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_configuration_set_sending_enabled(params = {}, options = {})
      request = build_request(:update_configuration_set_sending_enabled, params)
      request.send_request(options)
    end

    # <p>Modifies an association between a configuration set and a custom domain for open and
    #             click event tracking. </p>
    #          <p>By default, images and links used for tracking open and click events are hosted on
    #             domains operated by Amazon SES. You can configure a subdomain of your own to handle these
    #             events. For information about using custom domains, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html">Amazon SES Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateConfigurationSetTrackingOptionsRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    # @option params [Types::TrackingOptions] :tracking_options
    #   <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This
    #               domain captures open and click events generated by Amazon SES emails.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html">Configuring Custom
    #                   Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES Developer
    #                   Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tracking_options: { # required
    #       custom_redirect_domain: "CustomRedirectDomain"
    #     }
    #   }
    #   options = {}
    #   response = client.update_configuration_set_tracking_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateConfigurationSetTrackingOptionsResponse]
    def update_configuration_set_tracking_options(params = {}, options = {})
      request = build_request(:update_configuration_set_tracking_options, params)
      request.send_request(options)
    end

    # <p>Updates an existing custom verification email template.</p>
    #          <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Using
    #                 Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateCustomVerificationEmailTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template to update.</p>
    # @option params [String] :from_email_address
    #   <p>The email address that the custom verification email is sent from.</p>
    # @option params [String] :template_subject
    #   <p>The subject line of the custom verification email.</p>
    # @option params [String] :template_content
    #   <p>The content of the custom verification email. The total size of the email must be less
    #               than 10 MB. The message body may contain HTML, with some limitations. For more
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom">Custom
    #                   Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    # @option params [String] :success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    # @option params [String] :failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     from_email_address: "FromAddress",
    #     template_subject: "Subject",
    #     template_content: "TemplateContent",
    #     success_redirection_url: "SuccessRedirectionURL",
    #     failure_redirection_url: "FailureRedirectionURL"
    #   }
    #   options = {}
    #   response = client.update_custom_verification_email_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_custom_verification_email_template(params = {}, options = {})
      request = build_request(:update_custom_verification_email_template, params)
      request.send_request(options)
    end

    # <p>Updates a receipt rule.</p>
    #          <p>For information about managing receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateReceiptRuleRequest] params
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set that the receipt rule belongs to.</p>
    # @option params [Types::ReceiptRule] :rule
    #   <p>A data structure that contains the updated receipt rule information.</p>
    # @example UpdateReceiptRule
    #   # The following example updates a receipt rule to use an Amazon S3 action:
    #   params = {
    #     rule_set_name: "MyRuleSet",
    #     rule: {
    #       tls_policy: Optional,
    #       enabled: true,
    #       name: "MyRule",
    #       actions: [
    #         {
    #           s3_action: {
    #             object_key_prefix: "email",
    #             bucket_name: "MyBucket"
    #           }
    #         }
    #       ],
    #       scan_enabled: true
    #     }
    #   }
    #   options = {}
    #   response = client.update_receipt_rule(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule: { # required
    #       name: "ReceiptRuleName", # required
    #       enabled: false,
    #       tls_policy: "Require" # One of: ["Require", "Optional"],
    #       recipients: ["Recipient"],
    #       actions: [
    #         {
    #           s3_action: {
    #             topic_arn: "AmazonResourceName",
    #             bucket_name: "S3BucketName", # required
    #             object_key_prefix: "S3KeyPrefix",
    #             kms_key_arn: "AmazonResourceName",
    #             iam_role_arn: "IAMRoleARN"
    #           },
    #           bounce_action: {
    #             topic_arn: "AmazonResourceName",
    #             smtp_reply_code: "BounceSmtpReplyCode", # required
    #             status_code: "BounceStatusCode",
    #             message: "BounceMessage", # required
    #             sender: "Address", # required
    #           },
    #           workmail_action: {
    #             topic_arn: "AmazonResourceName",
    #             organization_arn: "AmazonResourceName", # required
    #           },
    #           lambda_action: {
    #             topic_arn: "AmazonResourceName",
    #             function_arn: "AmazonResourceName", # required
    #             invocation_type: "Event" # One of: ["Event", "RequestResponse"]
    #           },
    #           stop_action: {
    #             scope: "RuleSet" # One of: ["RuleSet"], # required
    #             topic_arn: "AmazonResourceName"
    #           },
    #           add_header_action: {
    #             header_name: "HeaderName", # required
    #             header_value: "HeaderValue", # required
    #           },
    #           sns_action: {
    #             topic_arn: "AmazonResourceName", # required
    #             encoding: "UTF-8" # One of: ["UTF-8", "Base64"]
    #           },
    #           connect_action: {
    #             instance_arn: "ConnectInstanceArn", # required
    #             iam_role_arn: "IAMRoleARN", # required
    #           }
    #         }
    #       ],
    #       scan_enabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_receipt_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateReceiptRuleResponse]
    def update_receipt_rule(params = {}, options = {})
      request = build_request(:update_receipt_rule, params)
      request.send_request(options)
    end

    # <p>Updates an email template. Email templates enable you to send personalized email to
    #             one or more destinations in a single operation. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::UpdateTemplateRequest] params
    # @option params [Types::Template] :template
    #   <p>The content of the email, composed of a subject line and either an HTML part or a
    #               text-only part.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template: { # required
    #       template_name: "TemplateName", # required
    #       subject_part: "SubjectPart",
    #       text_part: "TextPart",
    #       html_part: "HtmlPart"
    #     }
    #   }
    #   options = {}
    #   response = client.update_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTemplateResponse]
    def update_template(params = {}, options = {})
      request = build_request(:update_template, params)
      request.send_request(options)
    end

    # <p>Returns a set of DKIM tokens for a domain identity.</p>
    #          <important>
    #             <p>When you execute the <code>VerifyDomainDkim</code> operation, the domain that you
    #                 specify is added to the list of identities that are associated with your account.
    #                 This is true even if you haven't already associated the domain with your account by
    #                 using the <code>VerifyDomainIdentity</code> operation. However, you can't send email
    #                 from the domain until you either successfully <a href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#verify-domain-procedure">verify
    #                     it</a> or you successfully <a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html">set up DKIM for
    #                     it</a>.</p>
    #          </important>
    #          <p>You use the tokens that are generated by this operation to create CNAME records. When
    #             Amazon SES detects that you've added these records to the DNS configuration for a domain, you
    #             can start sending email from that domain. You can start sending email even if you
    #             haven't added the TXT record provided by the VerifyDomainIdentity operation to the DNS
    #             configuration for your domain. All email that you send from the domain is authenticated
    #             using DKIM.</p>
    #          <p>To create the CNAME records for DKIM authentication, use the following values:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Name</b>:
    #                         <i>token</i>._domainkey.<i>example.com</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Type</b>: CNAME</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Value</b>:
    #                     <i>token</i>.dkim.amazonses.com</p>
    #             </li>
    #          </ul>
    #          <p>In the preceding example, replace <i>token</i> with one of the tokens
    #             that are generated when you execute this operation. Replace
    #                 <i>example.com</i> with your domain. Repeat this process for each
    #             token that's generated by this operation.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::VerifyDomainDkimRequest] params
    # @option params [String] :domain
    #   <p>The name of the domain to be verified for Easy DKIM signing.</p>
    # @example VerifyDomainDkim
    #   # The following example generates DKIM tokens for a domain that has been verified with Amazon SES:
    #   params = {
    #     domain: "example.com"
    #   }
    #   options = {}
    #   response = client.verify_domain_dkim(params, options)
    #   response.to_h #=>
    #   {
    #     dkim_tokens: [
    #       "EXAMPLEq76owjnks3lnluwg65scbemvw",
    #       "EXAMPLEi3dnsj67hstzaj673klariwx2",
    #       "EXAMPLEwfbtcukvimehexktmdtaz6naj"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "Domain", # required
    #   }
    #   options = {}
    #   response = client.verify_domain_dkim(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dkim_tokens: ["VerificationToken"], # required
    #   }
    # @return [Types::VerifyDomainDkimResponse]
    def verify_domain_dkim(params = {}, options = {})
      request = build_request(:verify_domain_dkim, params)
      request.send_request(options)
    end

    # <p>Adds a domain to the list of identities for your Amazon SES account in the current
    #             Amazon Web Services Region and attempts to verify it. For more information about verifying domains,
    #             see <a href="https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer
    #                 Guide.</i>
    #          </p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::VerifyDomainIdentityRequest] params
    # @option params [String] :domain
    #   <p>The domain to be verified.</p>
    # @example VerifyDomainIdentity
    #   # The following example starts the domain verification process with Amazon SES:
    #   params = {
    #     domain: "example.com"
    #   }
    #   options = {}
    #   response = client.verify_domain_identity(params, options)
    #   response.to_h #=>
    #   {
    #     verification_token: "eoEmxw+YaYhb3h3iVJHuXMJXqeu1q1/wwmvjuEXAMPLE"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "Domain", # required
    #   }
    #   options = {}
    #   response = client.verify_domain_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verification_token: "VerificationToken", # required
    #   }
    # @return [Types::VerifyDomainIdentityResponse]
    def verify_domain_identity(params = {}, options = {})
      request = build_request(:verify_domain_identity, params)
      request.send_request(options)
    end

    # <p>Deprecated. Use the <code>VerifyEmailIdentity</code> operation to verify a new email
    #             address.</p>
    # @param [Hash, Types::VerifyEmailAddressRequest] params
    # @option params [String] :email_address
    #   <p>The email address to be verified.</p>
    # @example VerifyEmailAddress
    #   # The following example starts the email address verification process with Amazon SES:
    #   params = {
    #     email_address: "user@example.com"
    #   }
    #   options = {}
    #   response = client.verify_email_address(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     email_address: "Address", # required
    #   }
    #   options = {}
    #   response = client.verify_email_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def verify_email_address(params = {}, options = {})
      request = build_request(:verify_email_address, params)
      request.send_request(options)
    end

    # <p>Adds an email address to the list of identities for your Amazon SES account in the current
    #             Amazon Web Services Region and attempts to verify it. As a result of executing this operation, a
    #             verification email is sent to the specified address.</p>
    #          <p>You can execute this operation no more than once per second.</p>
    # @param [Hash, Types::VerifyEmailIdentityRequest] params
    # @option params [String] :email_address
    #   <p>The email address to be verified.</p>
    # @example VerifyEmailIdentity
    #   # The following example starts the email address verification process with Amazon SES:
    #   params = {
    #     email_address: "user@example.com"
    #   }
    #   options = {}
    #   response = client.verify_email_identity(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     email_address: "Address", # required
    #   }
    #   options = {}
    #   response = client.verify_email_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::VerifyEmailIdentityResponse]
    def verify_email_identity(params = {}, options = {})
      request = build_request(:verify_email_identity, params)
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
      context[:gem_name] = 'aws-sdk-ses'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        identity_exists: Waiters::IdentityExists
      }
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
