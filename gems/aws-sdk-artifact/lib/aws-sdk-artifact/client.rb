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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:artifact)

module Aws::Artifact
  # An API client for Aws::Artifact.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Artifact
    @identifier = :artifact

    add_plugin(::Aws::Artifact::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Artifact::EndpointProvider)
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

    # <p>Create a new compliance inquiry.</p>
    # @param [Hash, Types::CreateComplianceInquiryRequest] params
    # @option params [String] :name
    #   <p>Title of the inquiry.</p>
    # @option params [Types::InquiryContent] :inquiry_content
    #   <p>Content for creating a compliance inquiry - either a single query or file content.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token for the request.</p>
    # @option params [String] :support_mode
    #   <p>Support mode for inquiry processing. Only supported for file upload mode. Defaults to AI_ONLY if not specified.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate with the compliance inquiry resource.</p>
    # @example Invoke CreateComplianceInquiry operation
    #   # Creates a compliance inquiry with a single text query.
    #   params = {
    #     name: "My Compliance Inquiry",
    #     inquiry_content: {
    #     "query" => Is my workload compliant with SOC 2?
    #   },
    #     client_token: "unique-client-token-1234",
    #     support_mode: AI_ONLY
    #   }
    #   options = {}
    #   response = client.create_compliance_inquiry(params, options)
    #   response.to_h #=>
    #   {
    #     compliance_inquiry_summary: {
    #       arn: "arn:aws:artifact:us-east-1:123456789012:compliance-inquiry/compliance-inquiry-abcdef0123456789",
    #       name: "My Compliance Inquiry",
    #       id: "compliance-inquiry-abcdef0123456789",
    #       status: PROCESSING,
    #       status_message: Compliance inquiry processing is in-progress.,
    #       input_source: TEXT,
    #       created_at: Time.parse("2026-03-24T12:00:00Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "InquiryName", # required
    #     inquiry_content: { # required
    #       # One of:
    #       query: "LongStringAttribute",
    #       file_content: {
    #         file_sections: ["ShortStringAttribute"],
    #         content: "data", # required
    #       }
    #     },
    #     client_token: "IdempotentClientToken",
    #     support_mode: "AI_ONLY" # One of: ["AI_ONLY", "FULL_SUPPORT"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_compliance_inquiry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_inquiry_summary: {
    #       arn: "String", # required
    #       name: "String", # required
    #       id: "InquiryId", # required
    #       status: "PROCESSING" # One of: ["PROCESSING", "HUMAN_REVIEW", "COMPLETED", "FAILED"], # required
    #       status_message: "Compliance inquiry processing is complete." # One of: ["Compliance inquiry processing is complete.", "Malware was detected on the file. Provide a new file and try again.", "Compliance inquiry processing is in-progress.", "An internal error occurred while processing the inquiry. Try again at a later time.", "Human review is in progress.", "Compliance inquiry processing is complete. One or more queries encountered errors during processing."], # required
    #       input_source: "TEXT" # One of: ["TEXT", "FILE"], # required
    #       created_at: Time.now, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateComplianceInquiryResponse]
    def create_compliance_inquiry(params = {}, options = {})
      request = build_request(:create_compliance_inquiry, params)
      request.send_request(options)
    end

    # <p>Export a compliance inquiry report.</p>
    # @param [Hash, Types::ExportComplianceInquiryRequest] params
    # @option params [String] :compliance_inquiry_id
    #   <p>Unique resource ID for the compliance inquiry.</p>
    # @option params [Array<Integer>] :query_identifiers
    #   <p>List of query identifiers to include in the export.</p>
    # @option params [Boolean] :include_citations
    #   <p>When true, include citations in the exported document.</p>
    # @example Invoke ExportComplianceInquiry operation
    #   # Exports a compliance inquiry report.
    #   params = {
    #     compliance_inquiry_id: "compliance-inquiry-abcdef0123456789",
    #     query_identifiers: [
    #       1,
    #       2
    #     ],
    #     include_citations: true
    #   }
    #   options = {}
    #   response = client.export_compliance_inquiry(params, options)
    #   response.to_h #=>
    #   {
    #     document_presigned_url: "https://s3.us-east-1.amazonaws.com/artifact-bucket/export.pdf?X-Amz-Signature=example"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compliance_inquiry_id: "InquiryId", # required
    #     query_identifiers: [1],
    #     include_citations: false
    #   }
    #   options = {}
    #   response = client.export_compliance_inquiry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_presigned_url: "PresignedUrl",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ExportComplianceInquiryResponse]
    def export_compliance_inquiry(params = {}, options = {})
      request = build_request(:export_compliance_inquiry, params)
      request.send_request(options)
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

    # <p>Get the metadata for a single compliance inquiry.</p>
    # @param [Hash, Types::GetComplianceInquiryMetadataRequest] params
    # @option params [String] :compliance_inquiry_id
    #   <p>Unique resource ID for the compliance inquiry.</p>
    # @example Invoke GetComplianceInquiryMetadata operation
    #   # Gets metadata for a compliance inquiry.
    #   params = {
    #     compliance_inquiry_id: "compliance-inquiry-abcdef0123456789"
    #   }
    #   options = {}
    #   response = client.get_compliance_inquiry_metadata(params, options)
    #   response.to_h #=>
    #   {
    #     compliance_inquiry_detail: {
    #       arn: "arn:aws:artifact:us-east-1:123456789012:compliance-inquiry/compliance-inquiry-abcdef0123456789",
    #       name: "My Compliance Inquiry",
    #       id: "compliance-inquiry-abcdef0123456789",
    #       status: COMPLETED,
    #       status_message: Compliance inquiry processing is complete.,
    #       input_source: TEXT,
    #       created_at: Time.parse("2026-03-24T12:00:00Z"),
    #       updated_at: Time.parse("2026-03-24T12:05:00Z"),
    #       support_mode: AI_ONLY
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compliance_inquiry_id: "InquiryId", # required
    #   }
    #   options = {}
    #   response = client.get_compliance_inquiry_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_inquiry_detail: {
    #       arn: "String", # required
    #       name: "String", # required
    #       id: "InquiryId", # required
    #       status: "PROCESSING" # One of: ["PROCESSING", "HUMAN_REVIEW", "COMPLETED", "FAILED"], # required
    #       status_message: "Compliance inquiry processing is complete." # One of: ["Compliance inquiry processing is complete.", "Malware was detected on the file. Provide a new file and try again.", "Compliance inquiry processing is in-progress.", "An internal error occurred while processing the inquiry. Try again at a later time.", "Human review is in progress.", "Compliance inquiry processing is complete. One or more queries encountered errors during processing."], # required
    #       input_source: "TEXT" # One of: ["TEXT", "FILE"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now,
    #       support_mode: "AI_ONLY" # One of: ["AI_ONLY", "FULL_SUPPORT"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetComplianceInquiryMetadataResponse]
    def get_compliance_inquiry_metadata(params = {}, options = {})
      request = build_request(:get_compliance_inquiry_metadata, params)
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

    # <p>List available compliance inquiries.</p>
    # @param [Hash, Types::ListComplianceInquiriesRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of resources to return in the paginated response.</p>
    # @option params [String] :next_token
    #   <p>Pagination token to request the next page of resources.</p>
    # @example Invoke ListComplianceInquiries operation
    #   # Lists all compliance inquiries.
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_compliance_inquiries(params, options)
    #   response.to_h #=>
    #   {
    #     compliance_inquiries: [
    #       {
    #         arn: "arn:aws:artifact:us-east-1:123456789012:compliance-inquiry/compliance-inquiry-abcdef0123456789",
    #         name: "My Compliance Inquiry",
    #         id: "compliance-inquiry-abcdef0123456789",
    #         status: COMPLETED,
    #         status_message: Compliance inquiry processing is complete.,
    #         input_source: TEXT,
    #         created_at: Time.parse("2026-03-24T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextTokenAttribute"
    #   }
    #   options = {}
    #   response = client.list_compliance_inquiries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_inquiries: [
    #       {
    #         arn: "String", # required
    #         name: "String", # required
    #         id: "InquiryId", # required
    #         status: "PROCESSING" # One of: ["PROCESSING", "HUMAN_REVIEW", "COMPLETED", "FAILED"], # required
    #         status_message: "Compliance inquiry processing is complete." # One of: ["Compliance inquiry processing is complete.", "Malware was detected on the file. Provide a new file and try again.", "Compliance inquiry processing is in-progress.", "An internal error occurred while processing the inquiry. Try again at a later time.", "Human review is in progress.", "Compliance inquiry processing is complete. One or more queries encountered errors during processing."], # required
    #         input_source: "TEXT" # One of: ["TEXT", "FILE"], # required
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextTokenAttribute"
    #   }
    # @return [Types::ListComplianceInquiriesResponse]
    def list_compliance_inquiries(params = {}, options = {})
      request = build_request(:list_compliance_inquiries, params)
      request.send_request(options)
    end

    # <p>List queries within a compliance inquiry.</p>
    # @param [Hash, Types::ListComplianceInquiryQueriesRequest] params
    # @option params [String] :compliance_inquiry_id
    #   <p>Unique resource ID for the compliance inquiry.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of resources to return in the paginated response.</p>
    # @option params [String] :next_token
    #   <p>Pagination token to request the next page of resources.</p>
    # @example Invoke ListComplianceInquiryQueries operation
    #   # Lists queries within a compliance inquiry.
    #   params = {
    #     compliance_inquiry_id: "compliance-inquiry-abcdef0123456789",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_compliance_inquiry_queries(params, options)
    #   response.to_h #=>
    #   {
    #     queries: [
    #       {
    #         query_identifier: 1,
    #         query: "Is my workload compliant with SOC 2?",
    #         response: "Based on the available compliance documentation...",
    #         review_type: AI,
    #         citations: [
    #           {
    #             source_label: "SOC 2 Type II Report",
    #             source_content: "Relevant compliance content...",
    #             source_link: "https://example.com/soc2"
    #           }
    #         ],
    #         status: COMPLETED,
    #         status_message: Query processing is complete.,
    #         created_at: Time.parse("2026-03-24T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compliance_inquiry_id: "InquiryId", # required
    #     max_results: 1,
    #     next_token: "NextTokenAttribute"
    #   }
    #   options = {}
    #   response = client.list_compliance_inquiry_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queries: [
    #       {
    #         query_identifier: 1, # required
    #         query: "LongStringAttribute", # required
    #         response: "LongStringAttribute",
    #         review_type: "HUMAN" # One of: ["HUMAN", "AI"],
    #         citations: [
    #           {
    #             source_label: "ShortStringAttribute",
    #             source_content: "LongStringAttribute",
    #             source_link: "LongStringAttribute"
    #           }
    #         ],
    #         status: "PROCESSING" # One of: ["PROCESSING", "COMPLETED", "FAILED"], # required
    #         status_message: "Query processing is complete." # One of: ["Query processing is complete.", "Query processing is in-progress.", "An internal error occurred while processing the query. Try again at a later time.", "Query is pending human review.", "Query contains restricted or unsupported content."], # required
    #         created_at: Time.now, # required
    #         updated_response_versions: [
    #           {
    #             response_text: "LongStringAttribute", # required
    #             timestamp: Time.now, # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextTokenAttribute"
    #   }
    # @return [Types::ListComplianceInquiryQueriesResponse]
    def list_compliance_inquiry_queries(params = {}, options = {})
      request = build_request(:list_compliance_inquiry_queries, params)
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

    # <p>List available report versions for a given report.</p>
    # @param [Hash, Types::ListReportVersionsRequest] params
    # @option params [String] :report_id
    #   <p>Unique resource ID for the report resource.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of resources to return in the paginated response.</p>
    # @option params [String] :next_token
    #   <p>Pagination token to request the next page of resources.</p>
    # @example Invoke ListReportVersions operation
    #   # The ListReportVersions operation returns a collection of report versions
    # #                         for a given resource.
    #   params = {
    #     report_id: "report-abcdef0123456789"
    #   }
    #   options = {}
    #   response = client.list_report_versions(params, options)
    #   response.to_h #=>
    #   {
    #     reports: [
    #       {
    #         arn: "arn:aws:artifact:us-east-1::report:report-abcdef0123456789:1",
    #         category: "category",
    #         company_name: "companyName",
    #         description: "description",
    #         id: "report-abcdef0123456789",
    #         name: "name",
    #         period_end: Time.parse("2022-04-01T20:32:04Z"),
    #         period_start: Time.parse("2022-04-01T20:32:04Z"),
    #         product_name: "productName",
    #         series: "series",
    #         state: PUBLISHED,
    #         version: 1
    #       }
    #     ],
    #     next_token: "gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     report_id: "ReportId", # required
    #     max_results: 1,
    #     next_token: "NextTokenAttribute"
    #   }
    #   options = {}
    #   response = client.list_report_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reports: [ # required
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
    # @return [Types::ListReportVersionsResponse]
    def list_report_versions(params = {}, options = {})
      request = build_request(:list_report_versions, params)
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

    # <p>List tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "LongStringAttribute", # required
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

    # <p>Submits feedback on a compliance inquiry response.</p>
    # @param [Hash, Types::PutComplianceInquiryFeedbackRequest] params
    # @option params [String] :compliance_inquiry_id
    #   <p>The unique identifier for the compliance inquiry.</p>
    # @option params [Integer] :query_identifier
    #   <p>The sequential identifier of the query to provide feedback on.</p>
    # @option params [String] :rating
    #   <p>The rating for the feedback. Valid values are THUMBS_UP and THUMBS_DOWN.</p>
    # @option params [Integer] :response_revision_id
    #   <p>The response revision ID. Use this value to prevent submitting feedback on a stale response.</p>
    # @option params [Array<String>] :reason_codes
    #   <p>The reason codes that describe why you rated the response. Valid values are OTHER, PARTIAL_RESPONSE, and IRRELEVANT_RESPONSE.</p>
    # @option params [String] :comment
    #   <p>An optional comment for the feedback.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     compliance_inquiry_id: "InquiryId", # required
    #     query_identifier: 1,
    #     rating: "THUMBS_UP" # One of: ["THUMBS_UP", "THUMBS_DOWN"], # required
    #     response_revision_id: 1,
    #     reason_codes: ["OTHER" # One of: ["OTHER", "PARTIAL_RESPONSE", "IRRELEVANT_RESPONSE"]],
    #     comment: "FeedbackCommentAttribute",
    #     client_token: "IdempotentClientToken"
    #   }
    #   options = {}
    #   response = client.put_compliance_inquiry_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     submitted_at: Time.now, # required
    #   }
    # @return [Types::PutComplianceInquiryFeedbackResponse]
    def put_compliance_inquiry_feedback(params = {}, options = {})
      request = build_request(:put_compliance_inquiry_feedback, params)
      request.send_request(options)
    end

    # <p>Add tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "LongStringAttribute", # required
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

    # <p>Remove tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "LongStringAttribute", # required
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
