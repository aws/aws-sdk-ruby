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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:support)

module Aws::Support
  # An API client for Aws::Support.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSSupport20130415
    @identifier = :support

    add_plugin(::Aws::Support::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Support::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Adds one or more attachments to an attachment set. </p>
    #          <p>An attachment set is a temporary container for attachments that you add to a case or
    #             case communication. The set is available for 1 hour after it's created. The
    #                 <code>expiryTime</code> returned in the response is when the set expires. </p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AddAttachmentsToSetRequest] params
    # @option params [String] :attachment_set_id
    #   <p>The ID of the attachment set. If an <code>attachmentSetId</code> is not specified, a
    #               new attachment set is created, and the ID of the set is returned in the response. If an
    #                   <code>attachmentSetId</code> is specified, the attachments are added to the
    #               specified set, if it exists.</p>
    # @option params [Array<Types::Attachment>] :attachments
    #   <p>One or more attachments to add to the set. You can add up to three attachments per
    #               set. The size limit is 5 MB per attachment.</p>
    #            <p>In the <code>Attachment</code> object, use the <code>data</code> parameter to specify
    #               the contents of the attachment file. In the previous request syntax, the value for
    #                   <code>data</code> appear as <code>blob</code>, which is represented as a
    #               base64-encoded string. The value for <code>fileName</code> is the name of the
    #               attachment, such as <code>troubleshoot-screenshot.png</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_set_id: "AttachmentSetId",
    #     attachments: [ # required
    #       {
    #         file_name: "FileName",
    #         data: "data"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_attachments_to_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachment_set_id: "AttachmentSetId",
    #     expiry_time: "ExpiryTime"
    #   }
    # @return [Types::AddAttachmentsToSetResponse]
    def add_attachments_to_set(params = {}, options = {})
      request = build_request(:add_attachments_to_set, params)
      request.send_request(options)
    end

    # <p>Adds additional customer communication to an Amazon Web Services Support case. Use the <code>caseId</code>
    #             parameter to identify the case to which to add communication. You can list a set of
    #             email addresses to copy on the communication by using the <code>ccEmailAddresses</code>
    #             parameter. The <code>communicationBody</code> value contains the text of the
    #             communication.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AddCommunicationToCaseRequest] params
    # @option params [String] :case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an alphanumeric
    #               string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #            </p>
    # @option params [String] :communication_body
    #   <p>The body of an email communication to add to the support case.</p>
    # @option params [Array<String>] :cc_email_addresses
    #   <p>The email addresses in the CC line of an email to be added to the support case.</p>
    # @option params [String] :attachment_set_id
    #   <p>The ID of a set of one or more attachments for the communication to add to the case.
    #               Create the set by calling <a>AddAttachmentsToSet</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId",
    #     communication_body: "CommunicationBody", # required
    #     cc_email_addresses: ["CcEmailAddress"],
    #     attachment_set_id: "AttachmentSetId"
    #   }
    #   options = {}
    #   response = client.add_communication_to_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: false
    #   }
    # @return [Types::AddCommunicationToCaseResponse]
    def add_communication_to_case(params = {}, options = {})
      request = build_request(:add_communication_to_case, params)
      request.send_request(options)
    end

    # <p>Creates a case in the Amazon Web Services Support Center. This operation is similar to how you create a case
    #             in the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create
    #                 Case</a> page.</p>
    #          <p>The Amazon Web Services Support API doesn't support requesting service limit increases. You can submit a
    #             service limit increase in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>Submit a request from the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p>
    #             </li>
    #             <li>
    #                <p>Use the Service Quotas <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html">RequestServiceQuotaIncrease</a> operation.</p>
    #             </li>
    #          </ul>
    #          <p>A successful <code>CreateCase</code> request returns an Amazon Web Services Support case number. You can use
    #             the <a>DescribeCases</a> operation and specify the case number to get
    #             existing Amazon Web Services Support cases. After you create a case, use the <a>AddCommunicationToCase</a> operation to add additional communication or
    #             attachments to an existing case.</p>
    #          <p>The <code>caseId</code> is separate from the <code>displayId</code> that appears in
    #             the <a href="https://console.aws.amazon.com/support">Amazon Web Services Support Center</a>. Use the <a>DescribeCases</a> operation to get the <code>displayId</code>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateCaseRequest] params
    # @option params [String] :subject
    #   <p>The title of the support case. The title appears in the <b>Subject</b> field on the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p>
    # @option params [String] :service_code
    #   <p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>
    #               operation to get the possible <code>serviceCode</code> values.</p>
    # @option params [String] :severity_code
    #   <p>A value that indicates the urgency of the case. This value determines the response
    #               time according to your service level agreement with Amazon Web Services Support. You can use the <a>DescribeSeverityLevels</a> operation to get the possible values for
    #                   <code>severityCode</code>. </p>
    #            <p>For more information, see <a>SeverityLevel</a> and <a href="https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity">Choosing a
    #                   Severity</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    #            <note>
    #               <p>The availability of severity levels depends on the support plan for the
    #                   Amazon Web Services account.</p>
    #            </note>
    # @option params [String] :category_code
    #   <p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each
    #               Amazon Web Services service defines its own set of category codes.</p>
    # @option params [String] :communication_body
    #   <p>The communication body text that describes the issue. This text appears in the
    #                   <b>Description</b> field on the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p>
    # @option params [Array<String>] :cc_email_addresses
    #   <p>A list of email addresses that Amazon Web Services Support copies on case correspondence. Amazon Web Services Support
    #               identifies the account that creates the case when you specify your Amazon Web Services credentials in
    #               an HTTP POST method or use the <a href="http://aws.amazon.com/tools/">Amazon Web Services SDKs</a>.
    #           </p>
    # @option params [String] :language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    # @option params [String] :issue_type
    #   <p>The type of issue for the case. You can specify <code>customer-service</code> or
    #                   <code>technical</code>. If you don't specify a value, the default is
    #                   <code>technical</code>.</p>
    # @option params [String] :attachment_set_id
    #   <p>The ID of a set of one or more attachments for the case. Create the set by using the
    #                   <a>AddAttachmentsToSet</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subject: "Subject", # required
    #     service_code: "ServiceCode2",
    #     severity_code: "SeverityCode",
    #     category_code: "CategoryCode",
    #     communication_body: "CommunicationBody", # required
    #     cc_email_addresses: ["CcEmailAddress"],
    #     language: "Language",
    #     issue_type: "IssueType",
    #     attachment_set_id: "AttachmentSetId"
    #   }
    #   options = {}
    #   response = client.create_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_id: "CaseId"
    #   }
    # @return [Types::CreateCaseResponse]
    def create_case(params = {}, options = {})
      request = build_request(:create_case, params)
      request.send_request(options)
    end

    # <p>Returns the attachment that has the specified ID. Attachments can include screenshots,
    #             error logs, or other files that describe your issue. Attachment IDs are generated by the
    #             case management system when you add an attachment to a case or case communication.
    #             Attachment IDs are returned in the <a>AttachmentDetails</a> objects that are
    #             returned by the <a>DescribeCommunications</a> operation.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.describe_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachment: {
    #       file_name: "FileName",
    #       data: "data"
    #     }
    #   }
    # @return [Types::DescribeAttachmentResponse]
    def describe_attachment(params = {}, options = {})
      request = build_request(:describe_attachment, params)
      request.send_request(options)
    end

    # <p>Returns a list of cases that you specify by passing one or more case IDs. You can use
    #             the <code>afterTime</code> and <code>beforeTime</code> parameters to filter the cases by
    #             date. You can set values for the <code>includeResolvedCases</code> and
    #                 <code>includeCommunications</code> parameters to specify how much information to
    #             return.</p>
    #          <p>The response returns the following in JSON format:</p>
    #          <ul>
    #             <li>
    #                <p>One or more <a href="https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html">CaseDetails</a> data types.</p>
    #             </li>
    #             <li>
    #                <p>One or more <code>nextToken</code> values, which specify where to paginate the
    #                     returned records represented by the <code>CaseDetails</code> objects.</p>
    #             </li>
    #          </ul>
    #          <p>Case data is available for 12 months after creation. If a case was created more than
    #             12 months ago, a request might return an error.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeCasesRequest] params
    # @option params [Array<String>] :case_id_list
    #   <p>A list of ID numbers of the support cases you want returned. The maximum number of
    #               cases is 100.</p>
    # @option params [String] :display_id
    #   <p>The ID displayed for a case in the Amazon Web Services Support Center user interface.</p>
    # @option params [String] :after_time
    #   <p>The start date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    # @option params [String] :before_time
    #   <p>The end date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    # @option params [Boolean] :include_resolved_cases
    #   <p>Specifies whether to include resolved support cases in the <code>DescribeCases</code>
    #               response. By default, resolved cases aren't included.</p>
    # @option params [String] :next_token
    #   <p>A resumption point for pagination.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return before paginating.</p>
    # @option params [String] :language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    # @option params [Boolean] :include_communications
    #   <p>Specifies whether to include communications in the <code>DescribeCases</code>
    #               response. By default, communications are included.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id_list: ["CaseId"],
    #     display_id: "DisplayId",
    #     after_time: "AfterTime",
    #     before_time: "BeforeTime",
    #     include_resolved_cases: false,
    #     next_token: "NextToken",
    #     max_results: 1,
    #     language: "Language",
    #     include_communications: false
    #   }
    #   options = {}
    #   response = client.describe_cases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cases: [
    #       {
    #         case_id: "CaseId",
    #         display_id: "DisplayId",
    #         subject: "Subject",
    #         status: "Status",
    #         service_code: "ServiceCode",
    #         category_code: "CategoryCode",
    #         severity_code: "SeverityCode",
    #         submitted_by: "SubmittedBy",
    #         time_created: "TimeCreated",
    #         recent_communications: {
    #           communications: [
    #             {
    #               case_id: "CaseId",
    #               body: "ValidatedCommunicationBody",
    #               submitted_by: "SubmittedBy",
    #               time_created: "TimeCreated",
    #               attachment_set: [
    #                 {
    #                   attachment_id: "AttachmentId",
    #                   file_name: "FileName"
    #                 }
    #               ]
    #             }
    #           ],
    #           next_token: "NextToken"
    #         },
    #         cc_email_addresses: ["CcEmailAddress"],
    #         language: "Language"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeCasesResponse]
    def describe_cases(params = {}, options = {})
      request = build_request(:describe_cases, params)
      request.send_request(options)
    end

    # <p>Returns communications and attachments for one or more support cases. Use the
    #                 <code>afterTime</code> and <code>beforeTime</code> parameters to filter by date. You
    #             can use the <code>caseId</code> parameter to restrict the results to a specific
    #             case.</p>
    #          <p>Case data is available for 12 months after creation. If a case was created more than
    #             12 months ago, a request for data might cause an error.</p>
    #          <p>You can use the <code>maxResults</code> and <code>nextToken</code> parameters to
    #             control the pagination of the results. Set <code>maxResults</code> to the number of
    #             cases that you want to display on each page, and use <code>nextToken</code> to specify
    #             the resumption of pagination.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeCommunicationsRequest] params
    # @option params [String] :case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an alphanumeric
    #               string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #            </p>
    # @option params [String] :before_time
    #   <p>The end date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    # @option params [String] :after_time
    #   <p>The start date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    # @option params [String] :next_token
    #   <p>A resumption point for pagination.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return before paginating.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     before_time: "BeforeTime",
    #     after_time: "AfterTime",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_communications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     communications: [
    #       {
    #         case_id: "CaseId",
    #         body: "ValidatedCommunicationBody",
    #         submitted_by: "SubmittedBy",
    #         time_created: "TimeCreated",
    #         attachment_set: [
    #           {
    #             attachment_id: "AttachmentId",
    #             file_name: "FileName"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeCommunicationsResponse]
    def describe_communications(params = {}, options = {})
      request = build_request(:describe_communications, params)
      request.send_request(options)
    end

    # <p>Returns a list of CreateCaseOption types along with the 
    #         corresponding supported hours and language availability. You can specify the <code>language</code>
    #             <code>categoryCode</code>, 
    #         <code>issueType</code> and <code>serviceCode</code> used to retrieve the CreateCaseOptions.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeCreateCaseOptionsRequest] params
    # @option params [String] :issue_type
    #   <p>The type of issue for the case. You can specify <code>customer-service</code> or
    #                   <code>technical</code>. If you don't specify a value, the default is
    #                   <code>technical</code>.</p>
    # @option params [String] :service_code
    #   <p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>
    #               operation to get the possible <code>serviceCode</code> values.</p>
    # @option params [String] :language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    # @option params [String] :category_code
    #   <p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each
    #               Amazon Web Services service defines its own set of category codes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     issue_type: "IssueType", # required
    #     service_code: "ServiceCode2", # required
    #     language: "Language", # required
    #     category_code: "CategoryCode", # required
    #   }
    #   options = {}
    #   response = client.describe_create_case_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     language_availability: "ValidatedLanguageAvailability",
    #     communication_types: [
    #       {
    #         type: "Type",
    #         supported_hours: [
    #           {
    #             start_time: "StartTime",
    #             end_time: "EndTime"
    #           }
    #         ],
    #         dates_without_support: [
    #           {
    #             start_date_time: "ValidatedDateTime",
    #             end_date_time: "ValidatedDateTime"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeCreateCaseOptionsResponse]
    def describe_create_case_options(params = {}, options = {})
      request = build_request(:describe_create_case_options, params)
      request.send_request(options)
    end

    # <p>Returns the current list of Amazon Web Services services and a list of service categories for each
    #             service. You then use service names and categories in your <a>CreateCase</a>
    #             requests. Each Amazon Web Services service has its own set of categories.</p>
    #          <p>The service codes and category codes correspond to the values that appear in the
    #                 <b>Service</b> and <b>Category</b> lists on the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page. The values in those fields
    #             don't necessarily match the service codes and categories returned by the
    #                 <code>DescribeServices</code> operation. Always use the service codes and categories
    #             that the <code>DescribeServices</code> operation returns, so that you have the most
    #             recent set of service and category codes.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeServicesRequest] params
    # @option params [Array<String>] :service_code_list
    #   <p>A JSON-formatted list of service codes available for Amazon Web Services services.</p>
    # @option params [String] :language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code_list: ["ServiceCode2"],
    #     language: "Language"
    #   }
    #   options = {}
    #   response = client.describe_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     services: [
    #       {
    #         code: "ServiceCode",
    #         name: "ServiceName",
    #         categories: [
    #           {
    #             code: "CategoryCode",
    #             name: "CategoryName"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeServicesResponse]
    def describe_services(params = {}, options = {})
      request = build_request(:describe_services, params)
      request.send_request(options)
    end

    # <p>Returns the list of severity levels that you can assign to a support case. The
    #             severity level for a case is also a field in the <a>CaseDetails</a> data type
    #             that you include for a <a>CreateCase</a> request.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeSeverityLevelsRequest] params
    # @option params [String] :language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     language: "Language"
    #   }
    #   options = {}
    #   response = client.describe_severity_levels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     severity_levels: [
    #       {
    #         code: "SeverityLevelCode",
    #         name: "SeverityLevelName"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSeverityLevelsResponse]
    def describe_severity_levels(params = {}, options = {})
      request = build_request(:describe_severity_levels, params)
      request.send_request(options)
    end

    # <p>Returns a list of supported languages for a specified <code>categoryCode</code>, 
    #         <code>issueType</code> and <code>serviceCode</code>. The returned supported languages will 
    #         include a ISO 639-1 code for the <code>language</code>, and the language display name.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeSupportedLanguagesRequest] params
    # @option params [String] :issue_type
    #   <p>The type of issue for the case. You can specify <code>customer-service</code> or
    #                   <code>technical</code>.</p>
    # @option params [String] :service_code
    #   <p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>
    #               operation to get the possible <code>serviceCode</code> values.</p>
    # @option params [String] :category_code
    #   <p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each
    #               Amazon Web Services service defines its own set of category codes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     issue_type: "ValidatedIssueTypeString", # required
    #     service_code: "ValidatedServiceCode", # required
    #     category_code: "ValidatedCategoryCode", # required
    #   }
    #   options = {}
    #   response = client.describe_supported_languages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     supported_languages: [
    #       {
    #         code: "Code",
    #         language: "Language",
    #         display: "Display"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSupportedLanguagesResponse]
    def describe_supported_languages(params = {}, options = {})
      request = build_request(:describe_supported_languages, params)
      request.send_request(options)
    end

    # <p>Returns the refresh status of the Trusted Advisor checks that have the specified check
    #             IDs. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p>
    #          <p>Some checks are refreshed automatically, and you can't return their refresh statuses
    #             by using the <code>DescribeTrustedAdvisorCheckRefreshStatuses</code> operation. If you
    #             call this operation for these checks, you might see an
    #                 <code>InvalidParameterValue</code> error.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>To call the Trusted Advisor operations in
    # the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) 
    # endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support
    # API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    # @param [Hash, Types::DescribeTrustedAdvisorCheckRefreshStatusesRequest] params
    # @option params [Array<String>] :check_ids
    #   <p>The IDs of the Trusted Advisor checks to get the status.</p>
    #            <note>
    #               <p>If you specify the check ID of a check that is automatically refreshed, you might
    #                   see an <code>InvalidParameterValue</code> error.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     check_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.describe_trusted_advisor_check_refresh_statuses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statuses: [ # required
    #       {
    #         check_id: "String", # required
    #         status: "String", # required
    #         millis_until_next_refreshable: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTrustedAdvisorCheckRefreshStatusesResponse]
    def describe_trusted_advisor_check_refresh_statuses(params = {}, options = {})
      request = build_request(:describe_trusted_advisor_check_refresh_statuses, params)
      request.send_request(options)
    end

    # <p>Returns the results of the Trusted Advisor check that has the specified check ID. You
    #             can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a>
    #             operation.</p>
    #          <p>The response contains a <a>TrustedAdvisorCheckResult</a> object, which
    #             contains these three objects:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>TrustedAdvisorCategorySpecificSummary</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>TrustedAdvisorResourceDetail</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>TrustedAdvisorResourcesSummary</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>In addition, the response contains these fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>status</b> - The alert status of the check
    #                     can be <code>ok</code> (green), <code>warning</code> (yellow),
    #                         <code>error</code> (red), or <code>not_available</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>timestamp</b> - The time of the last refresh
    #                     of the check.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>checkId</b> - The unique identifier for the
    #                     check.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>To call the Trusted Advisor operations in
    # the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) 
    # endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support
    # API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    # @param [Hash, Types::DescribeTrustedAdvisorCheckResultRequest] params
    # @option params [String] :check_id
    #   <p>The unique identifier for the Trusted Advisor check.</p>
    # @option params [String] :language
    #   <p>The ISO 639-1 code for the language that you want your check results to appear
    #               in.</p>
    #            <p>The Amazon Web Services Support API currently supports the following languages for Trusted Advisor:</p>
    #            <ul>
    #               <li>
    #                  <p>Chinese, Simplified - <code>zh</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Chinese, Traditional - <code>zh_TW</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>English - <code>en</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>French - <code>fr</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>German - <code>de</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Indonesian - <code>id</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Italian - <code>it</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Japanese - <code>ja</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Korean - <code>ko</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Portuguese, Brazilian - <code>pt_BR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Spanish - <code>es</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     check_id: "String", # required
    #     language: "String"
    #   }
    #   options = {}
    #   response = client.describe_trusted_advisor_check_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: {
    #       check_id: "String", # required
    #       timestamp: "String", # required
    #       status: "String", # required
    #       resources_summary: { # required
    #         resources_processed: 1, # required
    #         resources_flagged: 1, # required
    #         resources_ignored: 1, # required
    #         resources_suppressed: 1, # required
    #       },
    #       category_specific_summary: { # required
    #         cost_optimizing: {
    #           estimated_monthly_savings: 1.0, # required
    #           estimated_percent_monthly_savings: 1.0, # required
    #         }
    #       },
    #       flagged_resources: [ # required
    #         {
    #           status: "String", # required
    #           region: "String",
    #           resource_id: "String", # required
    #           is_suppressed: false,
    #           metadata: ["String"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeTrustedAdvisorCheckResultResponse]
    def describe_trusted_advisor_check_result(params = {}, options = {})
      request = build_request(:describe_trusted_advisor_check_result, params)
      request.send_request(options)
    end

    # <p>Returns the results for the Trusted Advisor check summaries for the check IDs that you
    #             specified. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p>
    #          <p>The response contains an array of <a>TrustedAdvisorCheckSummary</a>
    #             objects.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>To call the Trusted Advisor operations in
    # the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) 
    # endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support
    # API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    # @param [Hash, Types::DescribeTrustedAdvisorCheckSummariesRequest] params
    # @option params [Array<String>] :check_ids
    #   <p>The IDs of the Trusted Advisor checks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     check_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.describe_trusted_advisor_check_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [ # required
    #       {
    #         check_id: "String", # required
    #         timestamp: "String", # required
    #         status: "String", # required
    #         has_flagged_resources: false,
    #         resources_summary: { # required
    #           resources_processed: 1, # required
    #           resources_flagged: 1, # required
    #           resources_ignored: 1, # required
    #           resources_suppressed: 1, # required
    #         },
    #         category_specific_summary: { # required
    #           cost_optimizing: {
    #             estimated_monthly_savings: 1.0, # required
    #             estimated_percent_monthly_savings: 1.0, # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTrustedAdvisorCheckSummariesResponse]
    def describe_trusted_advisor_check_summaries(params = {}, options = {})
      request = build_request(:describe_trusted_advisor_check_summaries, params)
      request.send_request(options)
    end

    # <p>Returns information about all available Trusted Advisor checks, including the name, ID,
    #             category, description, and metadata. You must specify a language code.</p>
    #          <p>The response contains a <a>TrustedAdvisorCheckDescription</a> object for
    #             each check. You must set the Amazon Web Services Region to us-east-1.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error
    #                         message appears. For information about changing your support plan, see
    #                             <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #                <li>
    #                   <p>The names and descriptions for Trusted Advisor checks are subject to change. We
    #                         recommend that you specify the check ID in your code to uniquely identify a
    #                         check.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>To call the Trusted Advisor operations in
    # the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) 
    # endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support
    # API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    # @param [Hash, Types::DescribeTrustedAdvisorChecksRequest] params
    # @option params [String] :language
    #   <p>The ISO 639-1 code for the language that you want your checks to appear in.</p>
    #            <p>The Amazon Web Services Support API currently supports the following languages for Trusted Advisor:</p>
    #            <ul>
    #               <li>
    #                  <p>Chinese, Simplified - <code>zh</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Chinese, Traditional - <code>zh_TW</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>English - <code>en</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>French - <code>fr</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>German - <code>de</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Indonesian - <code>id</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Italian - <code>it</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Japanese - <code>ja</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Korean - <code>ko</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Portuguese, Brazilian - <code>pt_BR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Spanish - <code>es</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     language: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_trusted_advisor_checks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     checks: [ # required
    #       {
    #         id: "String", # required
    #         name: "String", # required
    #         description: "String", # required
    #         category: "String", # required
    #         metadata: ["String"], # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTrustedAdvisorChecksResponse]
    def describe_trusted_advisor_checks(params = {}, options = {})
      request = build_request(:describe_trusted_advisor_checks, params)
      request.send_request(options)
    end

    # <p>Refreshes the Trusted Advisor check that you specify using the check ID. You can get the
    #             check IDs by calling the <a>DescribeTrustedAdvisorChecks</a>
    #             operation.</p>
    #          <p>Some checks are refreshed automatically. If you call the
    #             <code>RefreshTrustedAdvisorCheck</code> operation to refresh them, you might see
    #             the <code>InvalidParameterValue</code> error.</p>
    #          <p>The response contains a <a>TrustedAdvisorCheckRefreshStatus</a>
    #             object.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>To call the Trusted Advisor operations in
    # the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) 
    # endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support
    # API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    # @param [Hash, Types::RefreshTrustedAdvisorCheckRequest] params
    # @option params [String] :check_id
    #   <p>The unique identifier for the Trusted Advisor check to refresh.</p>
    #            <note>
    #               <p>Specifying the check ID of a check that is automatically refreshed causes an
    #                       <code>InvalidParameterValue</code> error.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     check_id: "String", # required
    #   }
    #   options = {}
    #   response = client.refresh_trusted_advisor_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       check_id: "String", # required
    #       status: "String", # required
    #       millis_until_next_refreshable: 1, # required
    #     }
    #   }
    # @return [Types::RefreshTrustedAdvisorCheckResponse]
    def refresh_trusted_advisor_check(params = {}, options = {})
      request = build_request(:refresh_trusted_advisor_check, params)
      request.send_request(options)
    end

    # <p>Resolves a support case. This operation takes a <code>caseId</code> and returns the
    #             initial and final state of the case.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                </li>
    #                <li>
    #                   <p>If you call the Amazon Web Services Support API from an account that doesn't have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ResolveCaseRequest] params
    # @option params [String] :case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an alphanumeric
    #               string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId"
    #   }
    #   options = {}
    #   response = client.resolve_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     initial_case_status: "CaseStatus",
    #     final_case_status: "CaseStatus"
    #   }
    # @return [Types::ResolveCaseResponse]
    def resolve_case(params = {}, options = {})
      request = build_request(:resolve_case, params)
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
      context[:gem_name] = 'aws-sdk-support'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
