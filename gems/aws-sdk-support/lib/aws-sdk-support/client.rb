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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:support)

module Aws::Support
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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds one or more attachments to an attachment set. If an
    # `attachmentSetId` is not specified, a new attachment set is created,
    # and the ID of the set is returned in the response. If an
    # `attachmentSetId` is specified, the attachments are added to the
    # specified set, if it exists.
    #
    # An attachment set is a temporary container for attachments that are to
    # be added to a case or case communication. The set is available for one
    # hour after it is created; the `expiryTime` returned in the response
    # indicates when the set expires. The maximum number of attachments in a
    # set is 3, and the maximum size of any attachment in the set is 5 MB.
    #
    # @option params [String] :attachment_set_id
    #   The ID of the attachment set. If an `attachmentSetId` is not
    #   specified, a new attachment set is created, and the ID of the set is
    #   returned in the response. If an `attachmentSetId` is specified, the
    #   attachments are added to the specified set, if it exists.
    #
    # @option params [required, Array<Types::Attachment>] :attachments
    #   One or more attachments to add to the set. The limit is 3 attachments
    #   per set, and the size limit is 5 MB per attachment.
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

    # Adds additional customer communication to an AWS Support case. You use
    # the `caseId` value to identify the case to add communication to. You
    # can list a set of email addresses to copy on the communication using
    # the `ccEmailAddresses` value. The `communicationBody` value contains
    # the text of the communication.
    #
    # The response indicates the success or failure of the request.
    #
    # This operation implements a subset of the features of the AWS Support
    # Center.
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

    # Creates a new case in the AWS Support Center. This operation is
    # modeled on the behavior of the AWS Support Center [Create Case][1]
    # page. Its parameters require you to specify the following information:
    #
    # * **issueType.** The type of issue for the case. You can specify
    #   either "customer-service" or "technical." If you do not indicate
    #   a value, the default is "technical."
    #
    # * **serviceCode.** The code for an AWS service. You obtain the
    #   `serviceCode` by calling DescribeServices.
    #
    # * **categoryCode.** The category for the service defined for the
    #   `serviceCode` value. You also obtain the category code for a service
    #   by calling DescribeServices. Each AWS service defines its own set of
    #   category codes.
    #
    # * **severityCode.** A value that indicates the urgency of the case,
    #   which in turn determines the response time according to your service
    #   level agreement with AWS Support. You obtain the SeverityCode by
    #   calling DescribeSeverityLevels.
    #
    # * **subject.** The **Subject** field on the AWS Support Center [Create
    #   Case][1] page.
    #
    # * **communicationBody.** The **Description** field on the AWS Support
    #   Center [Create Case][1] page.
    #
    # * **attachmentSetId.** The ID of a set of attachments that has been
    #   created by using AddAttachmentsToSet.
    #
    # * **language.** The human language in which AWS Support handles the
    #   case. English and Japanese are currently supported.
    #
    # * **ccEmailAddresses.** The AWS Support Center **CC** field on the
    #   [Create Case][1] page. You can list email addresses to be copied on
    #   any correspondence about the case. The account that opens the case
    #   is already identified by passing the AWS Credentials in the HTTP
    #   POST method or in a method or function call from one of the
    #   programming languages supported by an [AWS SDK][2].
    #
    # <note markdown="1"> To add additional communication or attachments to an existing case,
    # use AddCommunicationToCase.
    #
    #  </note>
    #
    # A successful CreateCase request returns an AWS Support case number.
    # Case numbers are used by the DescribeCases operation to retrieve
    # existing AWS Support cases.
    #
    #
    #
    # [1]: https://console.aws.amazon.com/support/home#/case/create
    # [2]: http://aws.amazon.com/tools/
    #
    # @option params [required, String] :subject
    #   The title of the AWS Support case.
    #
    # @option params [String] :service_code
    #   The code for the AWS service returned by the call to DescribeServices.
    #
    # @option params [String] :severity_code
    #   The code for the severity level returned by the call to
    #   DescribeSeverityLevels.
    #
    #   <note markdown="1"> The availability of severity levels depends on each customer's
    #   support subscription. In other words, your subscription may not
    #   necessarily require the urgent level of response time.
    #
    #    </note>
    #
    # @option params [String] :category_code
    #   The category of problem for the AWS Support case.
    #
    # @option params [required, String] :communication_body
    #   The communication body text when you create an AWS Support case by
    #   calling CreateCase.
    #
    # @option params [Array<String>] :cc_email_addresses
    #   A list of email addresses that AWS Support copies on case
    #   correspondence.
    #
    # @option params [String] :language
    #   The ISO 639-1 code for the language in which AWS provides support. AWS
    #   Support currently supports English ("en") and Japanese ("ja").
    #   Language parameters must be passed explicitly for operations that take
    #   them.
    #
    # @option params [String] :issue_type
    #   The type of issue for the case. You can specify either
    #   "customer-service" or "technical." If you do not indicate a value,
    #   the default is "technical."
    #
    # @option params [String] :attachment_set_id
    #   The ID of a set of one or more attachments for the case. Create the
    #   set by using AddAttachmentsToSet.
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

    # Returns the attachment that has the specified ID. Attachment IDs are
    # generated by the case management system when you add an attachment to
    # a case or case communication. Attachment IDs are returned in the
    # AttachmentDetails objects that are returned by the
    # DescribeCommunications operation.
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
    # IDs. In addition, you can filter the cases by date by setting values
    # for the `afterTime` and `beforeTime` request parameters. You can set
    # values for the `includeResolvedCases` and `includeCommunications`
    # request parameters to control how much information is returned.
    #
    # Case data is available for 12 months after creation. If a case was
    # created more than 12 months ago, a request for data might cause an
    # error.
    #
    # The response returns the following in JSON format:
    #
    # * One or more CaseDetails data types.
    #
    # * One or more `nextToken` values, which specify where to paginate the
    #   returned records represented by the `CaseDetails` objects.
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
    #   Specifies whether resolved support cases should be included in the
    #   DescribeCases results. The default is *false*.
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
    #   Specifies whether communications should be included in the
    #   DescribeCases results. The default is *true*.
    #
    # @return [Types::DescribeCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCasesResponse#cases #cases} => Array&lt;Types::CaseDetails&gt;
    #   * {Types::DescribeCasesResponse#next_token #next_token} => String
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

    # Returns communications (and attachments) for one or more support
    # cases. You can use the `afterTime` and `beforeTime` parameters to
    # filter by date. You can use the `caseId` parameter to restrict the
    # results to a particular case.
    #
    # Case data is available for 12 months after creation. If a case was
    # created more than 12 months ago, a request for data might cause an
    # error.
    #
    # You can use the `maxResults` and `nextToken` parameters to control the
    # pagination of the result set. Set `maxResults` to the number of cases
    # you want displayed on each page, and use `nextToken` to specify the
    # resumption of pagination.
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
    # categories that applies to each one. You then use service names and
    # categories in your CreateCase requests. Each AWS service has its own
    # set of categories.
    #
    # The service codes and category codes correspond to the values that are
    # displayed in the **Service** and **Category** drop-down lists on the
    # AWS Support Center [Create Case][1] page. The values in those fields,
    # however, do not necessarily match the service codes and categories
    # returned by the `DescribeServices` request. Always use the service
    # codes and categories obtained programmatically. This practice ensures
    # that you always have the most recent set of service and category
    # codes.
    #
    #
    #
    # [1]: https://console.aws.amazon.com/support/home#/case/create
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
    # CaseDetails data type included in any CreateCase request.
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

    # Returns the refresh status of the Trusted Advisor checks that have the
    # specified check IDs. Check IDs can be obtained by calling
    # DescribeTrustedAdvisorChecks.
    #
    # <note markdown="1"> Some checks are refreshed automatically, and their refresh statuses
    # cannot be retrieved by using this operation. Use of the
    # `DescribeTrustedAdvisorCheckRefreshStatuses` operation for these
    # checks causes an `InvalidParameterValue` error.
    #
    #  </note>
    #
    # @option params [required, Array<String>] :check_ids
    #   The IDs of the Trusted Advisor checks to get the status of. **Note:**
    #   Specifying the check ID of a check that is automatically refreshed
    #   causes an `InvalidParameterValue` error.
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

    # Returns the results of the Trusted Advisor check that has the
    # specified check ID. Check IDs can be obtained by calling
    # DescribeTrustedAdvisorChecks.
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
    # * **status.** The alert status of the check: "ok" (green),
    #   "warning" (yellow), "error" (red), or "not\_available".
    #
    # * **timestamp.** The time of the last refresh of the check.
    #
    # * **checkId.** The unique identifier for the check.
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

    # Returns the summaries of the results of the Trusted Advisor checks
    # that have the specified check IDs. Check IDs can be obtained by
    # calling DescribeTrustedAdvisorChecks.
    #
    # The response contains an array of TrustedAdvisorCheckSummary objects.
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

    # Returns information about all available Trusted Advisor checks,
    # including name, ID, category, description, and metadata. You must
    # specify a language code; English ("en") and Japanese ("ja") are
    # currently supported. The response contains a
    # TrustedAdvisorCheckDescription for each check.
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

    # Requests a refresh of the Trusted Advisor check that has the specified
    # check ID. Check IDs can be obtained by calling
    # DescribeTrustedAdvisorChecks.
    #
    # <note markdown="1"> Some checks are refreshed automatically, and they cannot be refreshed
    # by using this operation. Use of the `RefreshTrustedAdvisorCheck`
    # operation for these checks causes an `InvalidParameterValue` error.
    #
    #  </note>
    #
    # The response contains a TrustedAdvisorCheckRefreshStatus object, which
    # contains these fields:
    #
    # * **status.** The refresh status of the check: "none", "enqueued",
    #   "processing", "success", or "abandoned".
    #
    # * **millisUntilNextRefreshable.** The amount of time, in milliseconds,
    #   until the check is eligible for refresh.
    #
    # * **checkId.** The unique identifier for the check.
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

    # Takes a `caseId` and returns the initial state of the case along with
    # the state of the case after the call to ResolveCase completed.
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
      context[:gem_version] = '1.3.0'
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
