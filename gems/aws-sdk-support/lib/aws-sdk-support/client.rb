# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:support)

module Aws::Support
  # An API client for Support.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Support::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :support

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds one or more attachments to an attachment set.
    #
    # An attachment set is a temporary container for attachments that you
    # add to a case or case communication. The set is available for 1 hour
    # after it's created. The `expiryTime` returned in the response is when
    # the set expires.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [String] :attachment_set_id
    #   The ID of the attachment set. If an `attachmentSetId` is not
    #   specified, a new attachment set is created, and the ID of the set is
    #   returned in the response. If an `attachmentSetId` is specified, the
    #   attachments are added to the specified set, if it exists.
    #
    # @option params [required, Array<Types::Attachment>] :attachments
    #   One or more attachments to add to the set. You can add up to three
    #   attachments per set. The size limit is 5 MB per attachment.
    #
    #   In the `Attachment` object, use the `data` parameter to specify the
    #   contents of the attachment file. In the previous request syntax, the
    #   value for `data` appear as `blob`, which is represented as a
    #   base64-encoded string. The value for `fileName` is the name of the
    #   attachment, such as `troubleshoot-screenshot.png`.
    #
    # @return [Types::AddAttachmentsToSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddAttachmentsToSetResponse#attachment_set_id #attachment_set_id} => String
    #   * {Types::AddAttachmentsToSetResponse#expiry_time #expiry_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_attachments_to_set({
    #     attachment_set_id: "AttachmentSetId",
    #     attachments: [ # required
    #       {
    #         file_name: "FileName",
    #         data: "data",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment_set_id #=> String
    #   resp.expiry_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/AddAttachmentsToSet AWS API Documentation
    #
    # @overload add_attachments_to_set(params = {})
    # @param [Hash] params ({})
    def add_attachments_to_set(params = {}, options = {})
      req = build_request(:add_attachments_to_set, params)
      req.send_request(options)
    end

    # Adds additional customer communication to an AWS Support case. Use the
    # `caseId` parameter to identify the case to which to add communication.
    # You can list a set of email addresses to copy on the communication by
    # using the `ccEmailAddresses` parameter. The `communicationBody` value
    # contains the text of the communication.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [String] :case_id
    #   The AWS Support case ID requested or returned in the call. The case ID
    #   is an alphanumeric string formatted as shown in this example:
    #   case-*12345678910-2013-c4c1d2bf33c5cf47*
    #
    # @option params [required, String] :communication_body
    #   The body of an email communication to add to the support case.
    #
    # @option params [Array<String>] :cc_email_addresses
    #   The email addresses in the CC line of an email to be added to the
    #   support case.
    #
    # @option params [String] :attachment_set_id
    #   The ID of a set of one or more attachments for the communication to
    #   add to the case. Create the set by calling AddAttachmentsToSet
    #
    # @return [Types::AddCommunicationToCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddCommunicationToCaseResponse#result #result} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_communication_to_case({
    #     case_id: "CaseId",
    #     communication_body: "CommunicationBody", # required
    #     cc_email_addresses: ["CcEmailAddress"],
    #     attachment_set_id: "AttachmentSetId",
    #   })
    #
    # @example Response structure
    #
    #   resp.result #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/AddCommunicationToCase AWS API Documentation
    #
    # @overload add_communication_to_case(params = {})
    # @param [Hash] params ({})
    def add_communication_to_case(params = {}, options = {})
      req = build_request(:add_communication_to_case, params)
      req.send_request(options)
    end

    # Creates a case in the AWS Support Center. This operation is similar to
    # how you create a case in the AWS Support Center [Create Case][1] page.
    #
    # The AWS Support API doesn't support requesting service limit
    # increases. You can submit a service limit increase in the following
    # ways:
    #
    # * Submit a request from the AWS Support Center [Create Case][1] page.
    #
    # * Use the Service Quotas [RequestServiceQuotaIncrease][2] operation.
    #
    # A successful `CreateCase` request returns an AWS Support case number.
    # You can use the DescribeCases operation and specify the case number to
    # get existing AWS Support cases. After you create a case, use the
    # AddCommunicationToCase operation to add additional communication or
    # attachments to an existing case.
    #
    # The `caseId` is separate from the `displayId` that appears in the [AWS
    # Support Center][3]. Use the DescribeCases operation to get the
    # `displayId`.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][4].
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/support/home#/case/create
    # [2]: https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html
    # [3]: https://console.aws.amazon.com/support
    # [4]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [required, String] :subject
    #   The title of the AWS Support case. The title appears in the
    #   **Subject** field on the AWS Support Center [Create Case][1] page.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/support/home#/case/create
    #
    # @option params [String] :service_code
    #   The code for the AWS service. You can use the DescribeServices
    #   operation to get the possible `serviceCode` values.
    #
    # @option params [String] :severity_code
    #   A value that indicates the urgency of the case. This value determines
    #   the response time according to your service level agreement with AWS
    #   Support. You can use the DescribeSeverityLevels operation to get the
    #   possible values for `severityCode`.
    #
    #   For more information, see SeverityLevel and [Choosing a Severity][1]
    #   in the *AWS Support User Guide*.
    #
    #   <note markdown="1"> The availability of severity levels depends on the support plan for
    #   the AWS account.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity
    #
    # @option params [String] :category_code
    #   The category of problem for the AWS Support case. You also use the
    #   DescribeServices operation to get the category code for a service.
    #   Each AWS service defines its own set of category codes.
    #
    # @option params [required, String] :communication_body
    #   The communication body text that describes the issue. This text
    #   appears in the **Description** field on the AWS Support Center [Create
    #   Case][1] page.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/support/home#/case/create
    #
    # @option params [Array<String>] :cc_email_addresses
    #   A list of email addresses that AWS Support copies on case
    #   correspondence. AWS Support identifies the account that creates the
    #   case when you specify your AWS credentials in an HTTP POST method or
    #   use the [AWS SDKs][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/tools/
    #
    # @option params [String] :language
    #   The language in which AWS Support handles the case. You must specify
    #   the ISO 639-1 code for the `language` parameter if you want support in
    #   that language. Currently, English ("en") and Japanese ("ja") are
    #   supported.
    #
    # @option params [String] :issue_type
    #   The type of issue for the case. You can specify `customer-service` or
    #   `technical`. If you don't specify a value, the default is
    #   `technical`.
    #
    # @option params [String] :attachment_set_id
    #   The ID of a set of one or more attachments for the case. Create the
    #   set by using the AddAttachmentsToSet operation.
    #
    # @return [Types::CreateCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCaseResponse#case_id #case_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_case({
    #     subject: "Subject", # required
    #     service_code: "ServiceCode",
    #     severity_code: "SeverityCode",
    #     category_code: "CategoryCode",
    #     communication_body: "CommunicationBody", # required
    #     cc_email_addresses: ["CcEmailAddress"],
    #     language: "Language",
    #     issue_type: "IssueType",
    #     attachment_set_id: "AttachmentSetId",
    #   })
    #
    # @example Response structure
    #
    #   resp.case_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/CreateCase AWS API Documentation
    #
    # @overload create_case(params = {})
    # @param [Hash] params ({})
    def create_case(params = {}, options = {})
      req = build_request(:create_case, params)
      req.send_request(options)
    end

    # Returns the attachment that has the specified ID. Attachments can
    # include screenshots, error logs, or other files that describe your
    # issue. Attachment IDs are generated by the case management system when
    # you add an attachment to a case or case communication. Attachment IDs
    # are returned in the AttachmentDetails objects that are returned by the
    # DescribeCommunications operation.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [required, String] :attachment_id
    #   The ID of the attachment to return. Attachment IDs are returned by the
    #   DescribeCommunications operation.
    #
    # @return [Types::DescribeAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAttachmentResponse#attachment #attachment} => Types::Attachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_attachment({
    #     attachment_id: "AttachmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment.file_name #=> String
    #   resp.attachment.data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeAttachment AWS API Documentation
    #
    # @overload describe_attachment(params = {})
    # @param [Hash] params ({})
    def describe_attachment(params = {}, options = {})
      req = build_request(:describe_attachment, params)
      req.send_request(options)
    end

    # Returns a list of cases that you specify by passing one or more case
    # IDs. You can use the `afterTime` and `beforeTime` parameters to filter
    # the cases by date. You can set values for the `includeResolvedCases`
    # and `includeCommunications` parameters to specify how much information
    # to return.
    #
    # The response returns the following in JSON format:
    #
    # * One or more [CaseDetails][1] data types.
    #
    # * One or more `nextToken` values, which specify where to paginate the
    #   returned records represented by the `CaseDetails` objects.
    #
    # Case data is available for 12 months after creation. If a case was
    # created more than 12 months ago, a request might return an error.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html
    # [2]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [Array<String>] :case_id_list
    #   A list of ID numbers of the support cases you want returned. The
    #   maximum number of cases is 100.
    #
    # @option params [String] :display_id
    #   The ID displayed for a case in the AWS Support Center user interface.
    #
    # @option params [String] :after_time
    #   The start date for a filtered date search on support case
    #   communications. Case communications are available for 12 months after
    #   creation.
    #
    # @option params [String] :before_time
    #   The end date for a filtered date search on support case
    #   communications. Case communications are available for 12 months after
    #   creation.
    #
    # @option params [Boolean] :include_resolved_cases
    #   Specifies whether to include resolved support cases in the
    #   `DescribeCases` response. By default, resolved cases aren't included.
    #
    # @option params [String] :next_token
    #   A resumption point for pagination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return before paginating.
    #
    # @option params [String] :language
    #   The ISO 639-1 code for the language in which AWS provides support. AWS
    #   Support currently supports English ("en") and Japanese ("ja").
    #   Language parameters must be passed explicitly for operations that take
    #   them.
    #
    # @option params [Boolean] :include_communications
    #   Specifies whether to include communications in the `DescribeCases`
    #   response. By default, communications are incuded.
    #
    # @return [Types::DescribeCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCasesResponse#cases #cases} => Array&lt;Types::CaseDetails&gt;
    #   * {Types::DescribeCasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cases({
    #     case_id_list: ["CaseId"],
    #     display_id: "DisplayId",
    #     after_time: "AfterTime",
    #     before_time: "BeforeTime",
    #     include_resolved_cases: false,
    #     next_token: "NextToken",
    #     max_results: 1,
    #     language: "Language",
    #     include_communications: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.cases #=> Array
    #   resp.cases[0].case_id #=> String
    #   resp.cases[0].display_id #=> String
    #   resp.cases[0].subject #=> String
    #   resp.cases[0].status #=> String
    #   resp.cases[0].service_code #=> String
    #   resp.cases[0].category_code #=> String
    #   resp.cases[0].severity_code #=> String
    #   resp.cases[0].submitted_by #=> String
    #   resp.cases[0].time_created #=> String
    #   resp.cases[0].recent_communications.communications #=> Array
    #   resp.cases[0].recent_communications.communications[0].case_id #=> String
    #   resp.cases[0].recent_communications.communications[0].body #=> String
    #   resp.cases[0].recent_communications.communications[0].submitted_by #=> String
    #   resp.cases[0].recent_communications.communications[0].time_created #=> String
    #   resp.cases[0].recent_communications.communications[0].attachment_set #=> Array
    #   resp.cases[0].recent_communications.communications[0].attachment_set[0].attachment_id #=> String
    #   resp.cases[0].recent_communications.communications[0].attachment_set[0].file_name #=> String
    #   resp.cases[0].recent_communications.next_token #=> String
    #   resp.cases[0].cc_email_addresses #=> Array
    #   resp.cases[0].cc_email_addresses[0] #=> String
    #   resp.cases[0].language #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeCases AWS API Documentation
    #
    # @overload describe_cases(params = {})
    # @param [Hash] params ({})
    def describe_cases(params = {}, options = {})
      req = build_request(:describe_cases, params)
      req.send_request(options)
    end

    # Returns communications and attachments for one or more support cases.
    # Use the `afterTime` and `beforeTime` parameters to filter by date. You
    # can use the `caseId` parameter to restrict the results to a specific
    # case.
    #
    # Case data is available for 12 months after creation. If a case was
    # created more than 12 months ago, a request for data might cause an
    # error.
    #
    # You can use the `maxResults` and `nextToken` parameters to control the
    # pagination of the results. Set `maxResults` to the number of cases
    # that you want to display on each page, and use `nextToken` to specify
    # the resumption of pagination.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [required, String] :case_id
    #   The AWS Support case ID requested or returned in the call. The case ID
    #   is an alphanumeric string formatted as shown in this example:
    #   case-*12345678910-2013-c4c1d2bf33c5cf47*
    #
    # @option params [String] :before_time
    #   The end date for a filtered date search on support case
    #   communications. Case communications are available for 12 months after
    #   creation.
    #
    # @option params [String] :after_time
    #   The start date for a filtered date search on support case
    #   communications. Case communications are available for 12 months after
    #   creation.
    #
    # @option params [String] :next_token
    #   A resumption point for pagination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return before paginating.
    #
    # @return [Types::DescribeCommunicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCommunicationsResponse#communications #communications} => Array&lt;Types::Communication&gt;
    #   * {Types::DescribeCommunicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_communications({
    #     case_id: "CaseId", # required
    #     before_time: "BeforeTime",
    #     after_time: "AfterTime",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.communications #=> Array
    #   resp.communications[0].case_id #=> String
    #   resp.communications[0].body #=> String
    #   resp.communications[0].submitted_by #=> String
    #   resp.communications[0].time_created #=> String
    #   resp.communications[0].attachment_set #=> Array
    #   resp.communications[0].attachment_set[0].attachment_id #=> String
    #   resp.communications[0].attachment_set[0].file_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeCommunications AWS API Documentation
    #
    # @overload describe_communications(params = {})
    # @param [Hash] params ({})
    def describe_communications(params = {}, options = {})
      req = build_request(:describe_communications, params)
      req.send_request(options)
    end

    # Returns the current list of AWS services and a list of service
    # categories for each service. You then use service names and categories
    # in your CreateCase requests. Each AWS service has its own set of
    # categories.
    #
    # The service codes and category codes correspond to the values that
    # appear in the **Service** and **Category** lists on the AWS Support
    # Center [Create Case][1] page. The values in those fields don't
    # necessarily match the service codes and categories returned by the
    # `DescribeServices` operation. Always use the service codes and
    # categories that the `DescribeServices` operation returns, so that you
    # have the most recent set of service and category codes.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/support/home#/case/create
    # [2]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [Array<String>] :service_code_list
    #   A JSON-formatted list of service codes available for AWS services.
    #
    # @option params [String] :language
    #   The ISO 639-1 code for the language in which AWS provides support. AWS
    #   Support currently supports English ("en") and Japanese ("ja").
    #   Language parameters must be passed explicitly for operations that take
    #   them.
    #
    # @return [Types::DescribeServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServicesResponse#services #services} => Array&lt;Types::Service&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_services({
    #     service_code_list: ["ServiceCode"],
    #     language: "Language",
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].code #=> String
    #   resp.services[0].name #=> String
    #   resp.services[0].categories #=> Array
    #   resp.services[0].categories[0].code #=> String
    #   resp.services[0].categories[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeServices AWS API Documentation
    #
    # @overload describe_services(params = {})
    # @param [Hash] params ({})
    def describe_services(params = {}, options = {})
      req = build_request(:describe_services, params)
      req.send_request(options)
    end

    # Returns the list of severity levels that you can assign to an AWS
    # Support case. The severity level for a case is also a field in the
    # CaseDetails data type that you include for a CreateCase request.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [String] :language
    #   The ISO 639-1 code for the language in which AWS provides support. AWS
    #   Support currently supports English ("en") and Japanese ("ja").
    #   Language parameters must be passed explicitly for operations that take
    #   them.
    #
    # @return [Types::DescribeSeverityLevelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSeverityLevelsResponse#severity_levels #severity_levels} => Array&lt;Types::SeverityLevel&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_severity_levels({
    #     language: "Language",
    #   })
    #
    # @example Response structure
    #
    #   resp.severity_levels #=> Array
    #   resp.severity_levels[0].code #=> String
    #   resp.severity_levels[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeSeverityLevels AWS API Documentation
    #
    # @overload describe_severity_levels(params = {})
    # @param [Hash] params ({})
    def describe_severity_levels(params = {}, options = {})
      req = build_request(:describe_severity_levels, params)
      req.send_request(options)
    end

    # Returns the refresh status of the AWS Trusted Advisor checks that have
    # the specified check IDs. You can get the check IDs by calling the
    # DescribeTrustedAdvisorChecks operation.
    #
    # Some checks are refreshed automatically, and you can't return their
    # refresh statuses by using the
    # `DescribeTrustedAdvisorCheckRefreshStatuses` operation. If you call
    # this operation for these checks, you might see an
    # `InvalidParameterValue` error.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [required, Array<String>] :check_ids
    #   The IDs of the Trusted Advisor checks to get the status of.
    #
    #   <note markdown="1"> If you specify the check ID of a check that is automatically
    #   refreshed, you might see an `InvalidParameterValue` error.
    #
    #    </note>
    #
    # @return [Types::DescribeTrustedAdvisorCheckRefreshStatusesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrustedAdvisorCheckRefreshStatusesResponse#statuses #statuses} => Array&lt;Types::TrustedAdvisorCheckRefreshStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusted_advisor_check_refresh_statuses({
    #     check_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.statuses #=> Array
    #   resp.statuses[0].check_id #=> String
    #   resp.statuses[0].status #=> String
    #   resp.statuses[0].millis_until_next_refreshable #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckRefreshStatuses AWS API Documentation
    #
    # @overload describe_trusted_advisor_check_refresh_statuses(params = {})
    # @param [Hash] params ({})
    def describe_trusted_advisor_check_refresh_statuses(params = {}, options = {})
      req = build_request(:describe_trusted_advisor_check_refresh_statuses, params)
      req.send_request(options)
    end

    # Returns the results of the AWS Trusted Advisor check that has the
    # specified check ID. You can get the check IDs by calling the
    # DescribeTrustedAdvisorChecks operation.
    #
    # The response contains a TrustedAdvisorCheckResult object, which
    # contains these three objects:
    #
    # * TrustedAdvisorCategorySpecificSummary
    #
    # * TrustedAdvisorResourceDetail
    #
    # * TrustedAdvisorResourcesSummary
    #
    # In addition, the response contains these fields:
    #
    # * **status** - The alert status of the check: "ok" (green),
    #   "warning" (yellow), "error" (red), or "not\_available".
    #
    # * **timestamp** - The time of the last refresh of the check.
    #
    # * **checkId** - The unique identifier for the check.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [required, String] :check_id
    #   The unique identifier for the Trusted Advisor check.
    #
    # @option params [String] :language
    #   The ISO 639-1 code for the language in which AWS provides support. AWS
    #   Support currently supports English ("en") and Japanese ("ja").
    #   Language parameters must be passed explicitly for operations that take
    #   them.
    #
    # @return [Types::DescribeTrustedAdvisorCheckResultResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrustedAdvisorCheckResultResponse#result #result} => Types::TrustedAdvisorCheckResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusted_advisor_check_result({
    #     check_id: "String", # required
    #     language: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.result.check_id #=> String
    #   resp.result.timestamp #=> String
    #   resp.result.status #=> String
    #   resp.result.resources_summary.resources_processed #=> Integer
    #   resp.result.resources_summary.resources_flagged #=> Integer
    #   resp.result.resources_summary.resources_ignored #=> Integer
    #   resp.result.resources_summary.resources_suppressed #=> Integer
    #   resp.result.category_specific_summary.cost_optimizing.estimated_monthly_savings #=> Float
    #   resp.result.category_specific_summary.cost_optimizing.estimated_percent_monthly_savings #=> Float
    #   resp.result.flagged_resources #=> Array
    #   resp.result.flagged_resources[0].status #=> String
    #   resp.result.flagged_resources[0].region #=> String
    #   resp.result.flagged_resources[0].resource_id #=> String
    #   resp.result.flagged_resources[0].is_suppressed #=> Boolean
    #   resp.result.flagged_resources[0].metadata #=> Array
    #   resp.result.flagged_resources[0].metadata[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckResult AWS API Documentation
    #
    # @overload describe_trusted_advisor_check_result(params = {})
    # @param [Hash] params ({})
    def describe_trusted_advisor_check_result(params = {}, options = {})
      req = build_request(:describe_trusted_advisor_check_result, params)
      req.send_request(options)
    end

    # Returns the results for the AWS Trusted Advisor check summaries for
    # the check IDs that you specified. You can get the check IDs by calling
    # the DescribeTrustedAdvisorChecks operation.
    #
    # The response contains an array of TrustedAdvisorCheckSummary objects.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [required, Array<String>] :check_ids
    #   The IDs of the Trusted Advisor checks.
    #
    # @return [Types::DescribeTrustedAdvisorCheckSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrustedAdvisorCheckSummariesResponse#summaries #summaries} => Array&lt;Types::TrustedAdvisorCheckSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusted_advisor_check_summaries({
    #     check_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].check_id #=> String
    #   resp.summaries[0].timestamp #=> String
    #   resp.summaries[0].status #=> String
    #   resp.summaries[0].has_flagged_resources #=> Boolean
    #   resp.summaries[0].resources_summary.resources_processed #=> Integer
    #   resp.summaries[0].resources_summary.resources_flagged #=> Integer
    #   resp.summaries[0].resources_summary.resources_ignored #=> Integer
    #   resp.summaries[0].resources_summary.resources_suppressed #=> Integer
    #   resp.summaries[0].category_specific_summary.cost_optimizing.estimated_monthly_savings #=> Float
    #   resp.summaries[0].category_specific_summary.cost_optimizing.estimated_percent_monthly_savings #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckSummaries AWS API Documentation
    #
    # @overload describe_trusted_advisor_check_summaries(params = {})
    # @param [Hash] params ({})
    def describe_trusted_advisor_check_summaries(params = {}, options = {})
      req = build_request(:describe_trusted_advisor_check_summaries, params)
      req.send_request(options)
    end

    # Returns information about all available AWS Trusted Advisor checks,
    # including the name, ID, category, description, and metadata. You must
    # specify a language code. The AWS Support API currently supports
    # English ("en") and Japanese ("ja"). The response contains a
    # TrustedAdvisorCheckDescription object for each check. You must set the
    # AWS Region to us-east-1.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [required, String] :language
    #   The ISO 639-1 code for the language in which AWS provides support. AWS
    #   Support currently supports English ("en") and Japanese ("ja").
    #   Language parameters must be passed explicitly for operations that take
    #   them.
    #
    # @return [Types::DescribeTrustedAdvisorChecksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrustedAdvisorChecksResponse#checks #checks} => Array&lt;Types::TrustedAdvisorCheckDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusted_advisor_checks({
    #     language: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.checks #=> Array
    #   resp.checks[0].id #=> String
    #   resp.checks[0].name #=> String
    #   resp.checks[0].description #=> String
    #   resp.checks[0].category #=> String
    #   resp.checks[0].metadata #=> Array
    #   resp.checks[0].metadata[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorChecks AWS API Documentation
    #
    # @overload describe_trusted_advisor_checks(params = {})
    # @param [Hash] params ({})
    def describe_trusted_advisor_checks(params = {}, options = {})
      req = build_request(:describe_trusted_advisor_checks, params)
      req.send_request(options)
    end

    # Refreshes the AWS Trusted Advisor check that you specify using the
    # check ID. You can get the check IDs by calling the
    # DescribeTrustedAdvisorChecks operation.
    #
    # <note markdown="1"> Some checks are refreshed automatically. If you call the
    # `RefreshTrustedAdvisorCheck` operation to refresh them, you might see
    # the `InvalidParameterValue` error.
    #
    #  </note>
    #
    # The response contains a TrustedAdvisorCheckRefreshStatus object.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [required, String] :check_id
    #   The unique identifier for the Trusted Advisor check to refresh.
    #   **Note:** Specifying the check ID of a check that is automatically
    #   refreshed causes an `InvalidParameterValue` error.
    #
    # @return [Types::RefreshTrustedAdvisorCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RefreshTrustedAdvisorCheckResponse#status #status} => Types::TrustedAdvisorCheckRefreshStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.refresh_trusted_advisor_check({
    #     check_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status.check_id #=> String
    #   resp.status.status #=> String
    #   resp.status.millis_until_next_refreshable #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/RefreshTrustedAdvisorCheck AWS API Documentation
    #
    # @overload refresh_trusted_advisor_check(params = {})
    # @param [Hash] params ({})
    def refresh_trusted_advisor_check(params = {}, options = {})
      req = build_request(:refresh_trusted_advisor_check, params)
      req.send_request(options)
    end

    # Resolves a support case. This operation takes a `caseId` and returns
    # the initial and final state of the case.
    #
    # <note markdown="1"> * You must have a Business or Enterprise support plan to use the AWS
    #   Support API.
    #
    # * If you call the AWS Support API from an account that does not have a
    #   Business or Enterprise support plan, the
    #   `SubscriptionRequiredException` error message appears. For
    #   information about changing your support plan, see [AWS Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    #
    # @option params [String] :case_id
    #   The AWS Support case ID requested or returned in the call. The case ID
    #   is an alphanumeric string formatted as shown in this example:
    #   case-*12345678910-2013-c4c1d2bf33c5cf47*
    #
    # @return [Types::ResolveCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveCaseResponse#initial_case_status #initial_case_status} => String
    #   * {Types::ResolveCaseResponse#final_case_status #final_case_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_case({
    #     case_id: "CaseId",
    #   })
    #
    # @example Response structure
    #
    #   resp.initial_case_status #=> String
    #   resp.final_case_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/ResolveCase AWS API Documentation
    #
    # @overload resolve_case(params = {})
    # @param [Hash] params ({})
    def resolve_case(params = {}, options = {})
      req = build_request(:resolve_case, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-support'
      context[:gem_version] = '1.28.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
