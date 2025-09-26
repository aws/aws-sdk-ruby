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

module Aws::Artifact
  # An API client for Aws::Artifact.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Artifact

    add_plugin(::Aws::Artifact::Plugins::Endpoint)
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
    # @option options [Aws::Artifact::EndpointProvider] :endpoint_provider
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

    # <p>Get the account settings for Artifact.</p>
    # @param [Hash, Types::GetAccountSettingsRequest] params
    # @example Invoke GetAccountSettings operation
    #   # Get the current account settings.
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       notification_subscription_status: SUBSCRIBED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       notification_subscription_status: "SUBSCRIBED" # One of: ["SUBSCRIBED", "NOT_SUBSCRIBED"]
    #     }
    #   }
    # @return [Types::GetAccountSettingsResponse]
    def get_account_settings(params = {}, options = {})
      request = build_request(:get_account_settings, params)
      request.send_request(options)
    end

    # <p>Get the content for a single report.</p>
    # @param [Hash, Types::GetReportRequest] params
    # @option params [String] :report_id
    #   <p>Unique resource ID for the report resource.</p>
    # @option params [Integer] :report_version
    #   <p>Version for the report resource.</p>
    # @option params [String] :term_token
    #   <p>Unique download token provided by GetTermForReport API.</p>
    # @example Invoke GetReport operation on the latest version of a specific report
    #   # The GetReport operation is invoked on a reportId and on a optional version.
    # #                         Callers must provide a termToken, which is provided by the GetTermForReport
    # #                         operation. If callers do not provide a version, it will default to the
    # #                         report's latest version
    #   params = {
    #     report_id: "report-abcdef0123456789",
    #     term_token: "term-token-abcdefghijklm01234567890"
    #   }
    #   options = {}
    #   response = client.get_report(params, options)
    #   response.to_h #=>
    #   {
    #     document_presigned_url: "<Presigned S3 URL>"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     report_id: "ReportId", # required
    #     report_version: 1,
    #     term_token: "ShortStringAttribute", # required
    #   }
    #   options = {}
    #   response = client.get_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_presigned_url: "String"
    #   }
    # @return [Types::GetReportResponse]
    def get_report(params = {}, options = {})
      request = build_request(:get_report, params)
      request.send_request(options)
    end

    # <p>Get the metadata for a single report.</p>
    # @param [Hash, Types::GetReportMetadataRequest] params
    # @option params [String] :report_id
    #   <p>Unique resource ID for the report resource.</p>
    # @option params [Integer] :report_version
    #   <p>Version for the report resource.</p>
    # @example Invoke GetReportMetadata operation on the latest version of a specific report
    #   # The GetReportMetadata operation is invoked on a reportId and on a optional version.
    # #                         If callers do not provide a version, it will default to the report's latest version.
    #   params = {
    #     report_id: "report-bqhUJF3FrQZsMJpb"
    #   }
    #   options = {}
    #   response = client.get_report_metadata(params, options)
    #   response.to_h #=>
    #   {
    #     report_details: {
    #       arn: "arn:aws:artifact:us-east-1::report/report-abcdef0123456789:1",
    #       category: "Artifact Category",
    #       company_name: "AWS",
    #       created_at: Time.parse("2022-05-27T23:17:00.343940Z"),
    #       description: "Description of report",
    #       id: "report-abcdef0123456789",
    #       name: "Name of report",
    #       period_end: Time.parse("2022-04-01T20:32:04Z"),
    #       period_start: Time.parse("2022-04-01T20:32:04Z"),
    #       product_name: "Product of report",
    #       series: "Artifact Series",
    #       state: PUBLISHED,
    #       term_arn: "arn:aws:artifact:us-east-1::term/term-abcdef0123456789:1",
    #       version: 1
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     report_id: "ReportId", # required
    #     report_version: 1
    #   }
    #   options = {}
    #   response = client.get_report_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_details: {
    #       id: "ReportId",
    #       name: "ShortStringAttribute",
    #       description: "LongStringAttribute",
    #       period_start: Time.now,
    #       period_end: Time.now,
    #       created_at: Time.now,
    #       last_modified_at: Time.now,
    #       deleted_at: Time.now,
    #       state: "PUBLISHED" # One of: ["PUBLISHED", "UNPUBLISHED"],
    #       arn: "LongStringAttribute",
    #       series: "ShortStringAttribute",
    #       category: "ShortStringAttribute",
    #       company_name: "ShortStringAttribute",
    #       product_name: "ShortStringAttribute",
    #       term_arn: "LongStringAttribute",
    #       version: 1,
    #       acceptance_type: "PASSTHROUGH" # One of: ["PASSTHROUGH", "EXPLICIT"],
    #       sequence_number: 1,
    #       upload_state: "PROCESSING" # One of: ["PROCESSING", "COMPLETE", "FAILED", "FAULT"],
    #       status_message: "StatusMessage"
    #     }
    #   }
    # @return [Types::GetReportMetadataResponse]
    def get_report_metadata(params = {}, options = {})
      request = build_request(:get_report_metadata, params)
      request.send_request(options)
    end

    # <p>Get the Term content associated with a single report.</p>
    # @param [Hash, Types::GetTermForReportRequest] params
    # @option params [String] :report_id
    #   <p>Unique resource ID for the report resource.</p>
    # @option params [Integer] :report_version
    #   <p>Version for the report resource.</p>
    # @example Invoke GetTermForReport operation on the latest version of a specific report
    #   # The GetTermForReport operation is invoked on a reportId and on a optional version.
    # #                         If callers do not provide a version, it will default to the report's latest version.
    #   params = {
    #     report_id: "report-abcdef0123456789"
    #   }
    #   options = {}
    #   response = client.get_term_for_report(params, options)
    #   response.to_h #=>
    #   {
    #     term_token: "term-token-abcdefghijklm01234567890",
    #     document_presigned_url: "<Presigned S3 URL>"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     report_id: "ReportId", # required
    #     report_version: 1
    #   }
    #   options = {}
    #   response = client.get_term_for_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_presigned_url: "String",
    #     term_token: "String"
    #   }
    # @return [Types::GetTermForReportResponse]
    def get_term_for_report(params = {}, options = {})
      request = build_request(:get_term_for_report, params)
      request.send_request(options)
    end

    # <p>List active customer-agreements applicable to calling identity.</p>
    # @param [Hash, Types::ListCustomerAgreementsRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of resources to return in the paginated response.</p>
    # @option params [String] :next_token
    #   <p>Pagination token to request the next page of resources.</p>
    # @example Invoke ListCustomerAgreements operation
    #   # The ListCustomerAgreements operation returns a collection of customer-agreement resources in the ACTIVE state for the calling credential.
    #   params = {}
    #   options = {}
    #   response = client.list_customer_agreements(params, options)
    #   response.to_h #=>
    #   {
    #     customer_agreements: [
    #       {
    #         name: "Name of agreement",
    #         arn: "arn:aws:artifact::111111111111:customer-agreement/customer-agreement-abcdef0123456789",
    #         id: "customer-agreement-abcdef0123456789",
    #         agreement_arn: "arn:aws:artifact:::agreement/agreement-abcdef0123456789",
    #         aws_account_id: "111111111111",
    #         description: "Description of agreement",
    #         effective_start: Time.parse("2022-04-01T20:32:04Z"),
    #         type: DEFAULT,
    #         state: ACTIVE,
    #         acceptance_terms: [
    #           "terms acknowledged when agreement was accepted"
    #         ],
    #         terminate_terms: [
    #           "terms that must be acknowledged to terminate this agreement"
    #         ]
    #       }
    #     ],
    #     next_token: "gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextTokenAttribute"
    #   }
    #   options = {}
    #   response = client.list_customer_agreements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     customer_agreements: [ # required
    #       {
    #         name: "LongStringAttribute",
    #         arn: "LongStringAttribute",
    #         id: "CustomerAgreementIdAttribute",
    #         agreement_arn: "LongStringAttribute",
    #         aws_account_id: "ShortStringAttribute",
    #         organization_arn: "LongStringAttribute",
    #         effective_start: Time.now,
    #         effective_end: Time.now,
    #         state: "ACTIVE" # One of: ["ACTIVE", "CUSTOMER_TERMINATED", "AWS_TERMINATED"],
    #         description: "LongStringAttribute",
    #         acceptance_terms: ["LongStringAttribute"],
    #         terminate_terms: ["LongStringAttribute"],
    #         type: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "MODIFIED"]
    #       }
    #     ],
    #     next_token: "NextTokenAttribute"
    #   }
    # @return [Types::ListCustomerAgreementsResponse]
    def list_customer_agreements(params = {}, options = {})
      request = build_request(:list_customer_agreements, params)
      request.send_request(options)
    end

    # <p>List available reports.</p>
    # @param [Hash, Types::ListReportsRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of resources to return in the paginated response.</p>
    # @option params [String] :next_token
    #   <p>Pagination token to request the next page of resources.</p>
    # @example Invoke ListReports operation
    #   # The ListReports operation returns a collection of report resources.
    #   params = {}
    #   options = {}
    #   response = client.list_reports(params, options)
    #   response.to_h #=>
    #   {
    #     reports: [
    #       {
    #         arn: "arn:aws:artifact:us-east-1::report/report-abcdef0123456789",
    #         category: "Artifact Category",
    #         company_name: "AWS",
    #         description: "Description of report",
    #         id: "report-abcdef0123456789",
    #         name: "Name of report",
    #         period_end: Time.parse("2022-04-01T20:32:04Z"),
    #         period_start: Time.parse("2022-04-01T20:32:04Z"),
    #         product_name: "Product of report",
    #         series: "Artifact Series",
    #         state: PUBLISHED,
    #         version: 1
    #       }
    #     ],
    #     next_token: "gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextTokenAttribute"
    #   }
    #   options = {}
    #   response = client.list_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reports: [
    #       {
    #         id: "ReportId",
    #         name: "ShortStringAttribute",
    #         state: "PUBLISHED" # One of: ["PUBLISHED", "UNPUBLISHED"],
    #         arn: "LongStringAttribute",
    #         version: 1,
    #         upload_state: "PROCESSING" # One of: ["PROCESSING", "COMPLETE", "FAILED", "FAULT"],
    #         description: "LongStringAttribute",
    #         period_start: Time.now,
    #         period_end: Time.now,
    #         series: "ShortStringAttribute",
    #         category: "ShortStringAttribute",
    #         company_name: "ShortStringAttribute",
    #         product_name: "ShortStringAttribute",
    #         status_message: "StatusMessage",
    #         acceptance_type: "PASSTHROUGH" # One of: ["PASSTHROUGH", "EXPLICIT"]
    #       }
    #     ],
    #     next_token: "NextTokenAttribute"
    #   }
    # @return [Types::ListReportsResponse]
    def list_reports(params = {}, options = {})
      request = build_request(:list_reports, params)
      request.send_request(options)
    end

    # <p>Put the account settings for Artifact.</p>
    # @param [Hash, Types::PutAccountSettingsRequest] params
    # @option params [String] :notification_subscription_status
    #   <p>Desired notification subscription status.</p>
    # @example Invoke PutAccountSettings operation
    #   # Set the account settings.
    #   params = {
    #     notification_subscription_status: SUBSCRIBED
    #   }
    #   options = {}
    #   response = client.put_account_settings(params, options)
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       notification_subscription_status: SUBSCRIBED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     notification_subscription_status: "SUBSCRIBED" # One of: ["SUBSCRIBED", "NOT_SUBSCRIBED"]
    #   }
    #   options = {}
    #   response = client.put_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       notification_subscription_status: "SUBSCRIBED" # One of: ["SUBSCRIBED", "NOT_SUBSCRIBED"]
    #     }
    #   }
    # @return [Types::PutAccountSettingsResponse]
    def put_account_settings(params = {}, options = {})
      request = build_request(:put_account_settings, params)
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
      context[:gem_name] = 'aws-sdk-artifact'
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
