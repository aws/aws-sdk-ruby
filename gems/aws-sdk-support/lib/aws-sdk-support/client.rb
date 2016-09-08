# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Support
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :support

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Adds one or more attachments to an attachment set. If an
      # `AttachmentSetId` is not specified, a new attachment set is created,
      # and the ID of the set is returned in the response. If an
      # `AttachmentSetId` is specified, the attachments are added to the
      # specified set, if it exists.
      #
      # An attachment set is a temporary container for attachments that are to
      # be added to a case or case communication. The set is available for one
      # hour after it is created; the `ExpiryTime` returned in the response
      # indicates when the set expires. The maximum number of attachments in a
      # set is 3, and the maximum size of any attachment in the set is 5 MB.
      # @option params [String] :attachment_set_id
      #   The ID of the attachment set. If an `AttachmentSetId` is not
      #   specified, a new attachment set is created, and the ID of the set is
      #   returned in the response. If an `AttachmentSetId` is specified, the
      #   attachments are added to the specified set, if it exists.
      # @option params [required, Array<Types::Attachment>] :attachments
      #   One or more attachments to add to the set. The limit is 3 attachments
      #   per set, and the size limit is 5 MB per attachment.
      # @return [Types::AddAttachmentsToSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddAttachmentsToSetResponse#attachment_set_id #attachmentSetId} => String
      #   * {Types::AddAttachmentsToSetResponse#expiry_time #expiryTime} => String
      #
      # @example Request syntax with placeholder values
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
      #   resp.attachment_set_id #=> String
      #   resp.expiry_time #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_attachments_to_set(params = {}, options = {})
        req = build_request(:add_attachments_to_set, params)
        req.send_request(options)
      end

      # Adds additional customer communication to an AWS Support case. You use
      # the `CaseId` value to identify the case to add communication to. You
      # can list a set of email addresses to copy on the communication using
      # the `CcEmailAddresses` value. The `CommunicationBody` value contains
      # the text of the communication.
      #
      # The response indicates the success or failure of the request.
      #
      # This operation implements a subset of the features of the AWS Support
      # Center.
      # @option params [String] :case_id
      #   The AWS Support case ID requested or returned in the call. The case ID
      #   is an alphanumeric string formatted as shown in this example:
      #   case-*12345678910-2013-c4c1d2bf33c5cf47*
      # @option params [required, String] :communication_body
      #   The body of an email communication to add to the support case.
      # @option params [Array<String>] :cc_email_addresses
      #   The email addresses in the CC line of an email to be added to the
      #   support case.
      # @option params [String] :attachment_set_id
      #   The ID of a set of one or more attachments for the communication to
      #   add to the case. Create the set by calling AddAttachmentsToSet
      # @return [Types::AddCommunicationToCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddCommunicationToCaseResponse#result #result} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_communication_to_case({
      #     case_id: "CaseId",
      #     communication_body: "CommunicationBody", # required
      #     cc_email_addresses: ["CcEmailAddress"],
      #     attachment_set_id: "AttachmentSetId",
      #   })
      #
      # @example Response structure
      #   resp.result #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_communication_to_case(params = {}, options = {})
        req = build_request(:add_communication_to_case, params)
        req.send_request(options)
      end

      # Creates a new case in the AWS Support Center. This operation is
      # modeled on the behavior of the AWS Support Center [Create Case][1]
      # page. Its parameters require you to specify the following information:
      #
      # 1.  **IssueType.** The type of issue for the case. You can specify
      #     either \"customer-service\" or \"technical.\" If you do not
      #     indicate a value, the default is \"technical.\"
      # 2.  **ServiceCode.** The code for an AWS service. You obtain the
      #     `ServiceCode` by calling DescribeServices.
      # 3.  **CategoryCode.** The category for the service defined for the
      #     `ServiceCode` value. You also obtain the category code for a
      #     service by calling DescribeServices. Each AWS service defines its
      #     own set of category codes.
      # 4.  **SeverityCode.** A value that indicates the urgency of the case,
      #     which in turn determines the response time according to your
      #     service level agreement with AWS Support. You obtain the
      #     SeverityCode by calling DescribeSeverityLevels.
      # 5.  **Subject.** The **Subject** field on the AWS Support Center
      #     [Create Case][1] page.
      # 6.  **CommunicationBody.** The **Description** field on the AWS
      #     Support Center [Create Case][1] page.
      # 7.  **AttachmentSetId.** The ID of a set of attachments that has been
      #     created by using AddAttachmentsToSet.
      # 8.  **Language.** The human language in which AWS Support handles the
      #     case. English and Japanese are currently supported.
      # 9.  **CcEmailAddresses.** The AWS Support Center **CC** field on the
      #     [Create Case][1] page. You can list email addresses to be copied
      #     on any correspondence about the case. The account that opens the
      #     case is already identified by passing the AWS Credentials in the
      #     HTTP POST method or in a method or function call from one of the
      #     programming languages supported by an [AWS SDK][2].
      #
      # <note markdown="1">To add additional communication or attachments to an existing case,
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
      # @option params [required, String] :subject
      #   The title of the AWS Support case.
      # @option params [String] :service_code
      #   The code for the AWS service returned by the call to DescribeServices.
      # @option params [String] :severity_code
      #   The code for the severity level returned by the call to
      #   DescribeSeverityLevels.
      #
      #   <note markdown="1">The availability of severity levels depends on each customer\'s
      #   support subscription. In other words, your subscription may not
      #   necessarily require the urgent level of response time.
      #
      #   </note>
      # @option params [String] :category_code
      #   The category of problem for the AWS Support case.
      # @option params [required, String] :communication_body
      #   The communication body text when you create an AWS Support case by
      #   calling CreateCase.
      # @option params [Array<String>] :cc_email_addresses
      #   A list of email addresses that AWS Support copies on case
      #   correspondence.
      # @option params [String] :language
      #   The ISO 639-1 code for the language in which AWS provides support. AWS
      #   Support currently supports English (\"en\") and Japanese (\"ja\").
      #   Language parameters must be passed explicitly for operations that take
      #   them.
      # @option params [String] :issue_type
      #   The type of issue for the case. You can specify either
      #   \"customer-service\" or \"technical.\" If you do not indicate a value,
      #   the default is \"technical.\"
      # @option params [String] :attachment_set_id
      #   The ID of a set of one or more attachments for the case. Create the
      #   set by using AddAttachmentsToSet.
      # @return [Types::CreateCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateCaseResponse#case_id #caseId} => String
      #
      # @example Request syntax with placeholder values
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
      #   resp.case_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_case(params = {}, options = {})
        req = build_request(:create_case, params)
        req.send_request(options)
      end

      # Returns the attachment that has the specified ID. Attachment IDs are
      # generated by the case management system when you add an attachment to
      # a case or case communication. Attachment IDs are returned in the
      # AttachmentDetails objects that are returned by the
      # DescribeCommunications operation.
      # @option params [required, String] :attachment_id
      #   The ID of the attachment to return. Attachment IDs are returned by the
      #   DescribeCommunications operation.
      # @return [Types::DescribeAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAttachmentResponse#attachment #attachment} => Types::Attachment
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_attachment({
      #     attachment_id: "AttachmentId", # required
      #   })
      #
      # @example Response structure
      #   resp.attachment.file_name #=> String
      #   resp.attachment.data #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_attachment(params = {}, options = {})
        req = build_request(:describe_attachment, params)
        req.send_request(options)
      end

      # Returns a list of cases that you specify by passing one or more case
      # IDs. In addition, you can filter the cases by date by setting values
      # for the `AfterTime` and `BeforeTime` request parameters. You can set
      # values for the `IncludeResolvedCases` and `IncludeCommunications`
      # request parameters to control how much information is returned.
      #
      # Case data is available for 12 months after creation. If a case was
      # created more than 12 months ago, a request for data might cause an
      # error.
      #
      # The response returns the following in JSON format:
      #
      # 1.  One or more CaseDetails data types.
      # 2.  One or more `NextToken` values, which specify where to paginate
      #     the returned records represented by the `CaseDetails` objects.
      # @option params [Array<String>] :case_id_list
      #   A list of ID numbers of the support cases you want returned. The
      #   maximum number of cases is 100.
      # @option params [String] :display_id
      #   The ID displayed for a case in the AWS Support Center user interface.
      # @option params [String] :after_time
      #   The start date for a filtered date search on support case
      #   communications. Case communications are available for 12 months after
      #   creation.
      # @option params [String] :before_time
      #   The end date for a filtered date search on support case
      #   communications. Case communications are available for 12 months after
      #   creation.
      # @option params [Boolean] :include_resolved_cases
      #   Specifies whether resolved support cases should be included in the
      #   DescribeCases results. The default is *false*.
      # @option params [String] :next_token
      #   A resumption point for pagination.
      # @option params [Integer] :max_results
      #   The maximum number of results to return before paginating.
      # @option params [String] :language
      #   The ISO 639-1 code for the language in which AWS provides support. AWS
      #   Support currently supports English (\"en\") and Japanese (\"ja\").
      #   Language parameters must be passed explicitly for operations that take
      #   them.
      # @option params [Boolean] :include_communications
      #   Specifies whether communications should be included in the
      #   DescribeCases results. The default is *true*.
      # @return [Types::DescribeCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeCasesResponse#cases #cases} => Array&lt;Types::CaseDetails&gt;
      #   * {Types::DescribeCasesResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_cases(params = {}, options = {})
        req = build_request(:describe_cases, params)
        req.send_request(options)
      end

      # Returns communications (and attachments) for one or more support
      # cases. You can use the `AfterTime` and `BeforeTime` parameters to
      # filter by date. You can use the `CaseId` parameter to restrict the
      # results to a particular case.
      #
      # Case data is available for 12 months after creation. If a case was
      # created more than 12 months ago, a request for data might cause an
      # error.
      #
      # You can use the `MaxResults` and `NextToken` parameters to control the
      # pagination of the result set. Set `MaxResults` to the number of cases
      # you want displayed on each page, and use `NextToken` to specify the
      # resumption of pagination.
      # @option params [required, String] :case_id
      #   The AWS Support case ID requested or returned in the call. The case ID
      #   is an alphanumeric string formatted as shown in this example:
      #   case-*12345678910-2013-c4c1d2bf33c5cf47*
      # @option params [String] :before_time
      #   The end date for a filtered date search on support case
      #   communications. Case communications are available for 12 months after
      #   creation.
      # @option params [String] :after_time
      #   The start date for a filtered date search on support case
      #   communications. Case communications are available for 12 months after
      #   creation.
      # @option params [String] :next_token
      #   A resumption point for pagination.
      # @option params [Integer] :max_results
      #   The maximum number of results to return before paginating.
      # @return [Types::DescribeCommunicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeCommunicationsResponse#communications #communications} => Array&lt;Types::Communication&gt;
      #   * {Types::DescribeCommunicationsResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_communications({
      #     case_id: "CaseId", # required
      #     before_time: "BeforeTime",
      #     after_time: "AfterTime",
      #     next_token: "NextToken",
      #     max_results: 1,
      #   })
      #
      # @example Response structure
      #   resp.communications #=> Array
      #   resp.communications[0].case_id #=> String
      #   resp.communications[0].body #=> String
      #   resp.communications[0].submitted_by #=> String
      #   resp.communications[0].time_created #=> String
      #   resp.communications[0].attachment_set #=> Array
      #   resp.communications[0].attachment_set[0].attachment_id #=> String
      #   resp.communications[0].attachment_set[0].file_name #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @option params [Array<String>] :service_code_list
      #   A JSON-formatted list of service codes available for AWS services.
      # @option params [String] :language
      #   The ISO 639-1 code for the language in which AWS provides support. AWS
      #   Support currently supports English (\"en\") and Japanese (\"ja\").
      #   Language parameters must be passed explicitly for operations that take
      #   them.
      # @return [Types::DescribeServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeServicesResponse#services #services} => Array&lt;Types::Service&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_services({
      #     service_code_list: ["ServiceCode"],
      #     language: "Language",
      #   })
      #
      # @example Response structure
      #   resp.services #=> Array
      #   resp.services[0].code #=> String
      #   resp.services[0].name #=> String
      #   resp.services[0].categories #=> Array
      #   resp.services[0].categories[0].code #=> String
      #   resp.services[0].categories[0].name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_services(params = {}, options = {})
        req = build_request(:describe_services, params)
        req.send_request(options)
      end

      # Returns the list of severity levels that you can assign to an AWS
      # Support case. The severity level for a case is also a field in the
      # CaseDetails data type included in any CreateCase request.
      # @option params [String] :language
      #   The ISO 639-1 code for the language in which AWS provides support. AWS
      #   Support currently supports English (\"en\") and Japanese (\"ja\").
      #   Language parameters must be passed explicitly for operations that take
      #   them.
      # @return [Types::DescribeSeverityLevelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeSeverityLevelsResponse#severity_levels #severityLevels} => Array&lt;Types::SeverityLevel&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_severity_levels({
      #     language: "Language",
      #   })
      #
      # @example Response structure
      #   resp.severity_levels #=> Array
      #   resp.severity_levels[0].code #=> String
      #   resp.severity_levels[0].name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_severity_levels(params = {}, options = {})
        req = build_request(:describe_severity_levels, params)
        req.send_request(options)
      end

      # Returns the refresh status of the Trusted Advisor checks that have the
      # specified check IDs. Check IDs can be obtained by calling
      # DescribeTrustedAdvisorChecks.
      # @option params [required, Array<String>] :check_ids
      #   The IDs of the Trusted Advisor checks.
      # @return [Types::DescribeTrustedAdvisorCheckRefreshStatusesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTrustedAdvisorCheckRefreshStatusesResponse#statuses #statuses} => Array&lt;Types::TrustedAdvisorCheckRefreshStatus&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_trusted_advisor_check_refresh_statuses({
      #     check_ids: ["String"], # required
      #   })
      #
      # @example Response structure
      #   resp.statuses #=> Array
      #   resp.statuses[0].check_id #=> String
      #   resp.statuses[0].status #=> String
      #   resp.statuses[0].millis_until_next_refreshable #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # * TrustedAdvisorResourceDetail
      # * TrustedAdvisorResourcesSummary
      #
      # In addition, the response contains these fields:
      #
      # * **Status.** The alert status of the check: \"ok\" (green),
      #   \"warning\" (yellow), \"error\" (red), or \"not\_available\".
      # * **Timestamp.** The time of the last refresh of the check.
      # * **CheckId.** The unique identifier for the check.
      # @option params [required, String] :check_id
      #   The unique identifier for the Trusted Advisor check.
      # @option params [String] :language
      #   The ISO 639-1 code for the language in which AWS provides support. AWS
      #   Support currently supports English (\"en\") and Japanese (\"ja\").
      #   Language parameters must be passed explicitly for operations that take
      #   them.
      # @return [Types::DescribeTrustedAdvisorCheckResultResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTrustedAdvisorCheckResultResponse#result #result} => Types::TrustedAdvisorCheckResult
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_trusted_advisor_check_result({
      #     check_id: "String", # required
      #     language: "String",
      #   })
      #
      # @example Response structure
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_trusted_advisor_check_result(params = {}, options = {})
        req = build_request(:describe_trusted_advisor_check_result, params)
        req.send_request(options)
      end

      # Returns the summaries of the results of the Trusted Advisor checks
      # that have the specified check IDs. Check IDs can be obtained by
      # calling DescribeTrustedAdvisorChecks.
      #
      # The response contains an array of TrustedAdvisorCheckSummary objects.
      # @option params [required, Array<String>] :check_ids
      #   The IDs of the Trusted Advisor checks.
      # @return [Types::DescribeTrustedAdvisorCheckSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTrustedAdvisorCheckSummariesResponse#summaries #summaries} => Array&lt;Types::TrustedAdvisorCheckSummary&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_trusted_advisor_check_summaries({
      #     check_ids: ["String"], # required
      #   })
      #
      # @example Response structure
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_trusted_advisor_check_summaries(params = {}, options = {})
        req = build_request(:describe_trusted_advisor_check_summaries, params)
        req.send_request(options)
      end

      # Returns information about all available Trusted Advisor checks,
      # including name, ID, category, description, and metadata. You must
      # specify a language code; English (\"en\") and Japanese (\"ja\") are
      # currently supported. The response contains a
      # TrustedAdvisorCheckDescription for each check.
      # @option params [required, String] :language
      #   The ISO 639-1 code for the language in which AWS provides support. AWS
      #   Support currently supports English (\"en\") and Japanese (\"ja\").
      #   Language parameters must be passed explicitly for operations that take
      #   them.
      # @return [Types::DescribeTrustedAdvisorChecksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTrustedAdvisorChecksResponse#checks #checks} => Array&lt;Types::TrustedAdvisorCheckDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_trusted_advisor_checks({
      #     language: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.checks #=> Array
      #   resp.checks[0].id #=> String
      #   resp.checks[0].name #=> String
      #   resp.checks[0].description #=> String
      #   resp.checks[0].category #=> String
      #   resp.checks[0].metadata #=> Array
      #   resp.checks[0].metadata[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_trusted_advisor_checks(params = {}, options = {})
        req = build_request(:describe_trusted_advisor_checks, params)
        req.send_request(options)
      end

      # Requests a refresh of the Trusted Advisor check that has the specified
      # check ID. Check IDs can be obtained by calling
      # DescribeTrustedAdvisorChecks.
      #
      # The response contains a TrustedAdvisorCheckRefreshStatus object, which
      # contains these fields:
      #
      # * **Status.** The refresh status of the check: \"none\", \"enqueued\",
      #   \"processing\", \"success\", or \"abandoned\".
      # * **MillisUntilNextRefreshable.** The amount of time, in milliseconds,
      #   until the check is eligible for refresh.
      # * **CheckId.** The unique identifier for the check.
      # @option params [required, String] :check_id
      #   The unique identifier for the Trusted Advisor check.
      # @return [Types::RefreshTrustedAdvisorCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RefreshTrustedAdvisorCheckResponse#status #status} => Types::TrustedAdvisorCheckRefreshStatus
      #
      # @example Request syntax with placeholder values
      #   resp = client.refresh_trusted_advisor_check({
      #     check_id: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.status.check_id #=> String
      #   resp.status.status #=> String
      #   resp.status.millis_until_next_refreshable #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def refresh_trusted_advisor_check(params = {}, options = {})
        req = build_request(:refresh_trusted_advisor_check, params)
        req.send_request(options)
      end

      # Takes a `CaseId` and returns the initial state of the case along with
      # the state of the case after the call to ResolveCase completed.
      # @option params [String] :case_id
      #   The AWS Support case ID requested or returned in the call. The case ID
      #   is an alphanumeric string formatted as shown in this example:
      #   case-*12345678910-2013-c4c1d2bf33c5cf47*
      # @return [Types::ResolveCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ResolveCaseResponse#initial_case_status #initialCaseStatus} => String
      #   * {Types::ResolveCaseResponse#final_case_status #finalCaseStatus} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.resolve_case({
      #     case_id: "CaseId",
      #   })
      #
      # @example Response structure
      #   resp.initial_case_status #=> String
      #   resp.final_case_status #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def resolve_case(params = {}, options = {})
        req = build_request(:resolve_case, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
