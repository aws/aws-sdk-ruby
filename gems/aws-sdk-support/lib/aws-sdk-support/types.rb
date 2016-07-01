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
    module Types

      # @note When making an API call, pass AddAttachmentsToSetRequest
      #   data as a hash:
      #
      #       {
      #         attachment_set_id: "AttachmentSetId",
      #         attachments: [ # required
      #           {
      #             file_name: "FileName",
      #             data: "data",
      #           },
      #         ],
      #       }
      class AddAttachmentsToSetRequest < Aws::Structure.new(
        :attachment_set_id,
        :attachments)

        # @!attribute [rw] attachment_set_id
        #   The ID of the attachment set. If an `AttachmentSetId` is not
        #   specified, a new attachment set is created, and the ID of the set is
        #   returned in the response. If an `AttachmentSetId` is specified, the
        #   attachments are added to the specified set, if it exists.
        #   @return [String]

        # @!attribute [rw] attachments
        #   One or more attachments to add to the set. The limit is 3
        #   attachments per set, and the size limit is 5 MB per attachment.
        #   @return [Array<Types::Attachment>]

      end

      # The ID and expiry time of the attachment set returned by the
      # AddAttachmentsToSet operation.
      class AddAttachmentsToSetResponse < Aws::Structure.new(
        :attachment_set_id,
        :expiry_time)

        # @!attribute [rw] attachment_set_id
        #   The ID of the attachment set. If an `AttachmentSetId` was not
        #   specified, a new attachment set is created, and the ID of the set is
        #   returned in the response. If an `AttachmentSetId` was specified, the
        #   attachments are added to the specified set, if it exists.
        #   @return [String]

        # @!attribute [rw] expiry_time
        #   The time and date when the attachment set expires.
        #   @return [String]

      end

      # To be written.
      # @note When making an API call, pass AddCommunicationToCaseRequest
      #   data as a hash:
      #
      #       {
      #         case_id: "CaseId",
      #         communication_body: "CommunicationBody", # required
      #         cc_email_addresses: ["CcEmailAddress"],
      #         attachment_set_id: "AttachmentSetId",
      #       }
      class AddCommunicationToCaseRequest < Aws::Structure.new(
        :case_id,
        :communication_body,
        :cc_email_addresses,
        :attachment_set_id)

        # @!attribute [rw] case_id
        #   The AWS Support case ID requested or returned in the call. The case
        #   ID is an alphanumeric string formatted as shown in this example:
        #   case-*12345678910-2013-c4c1d2bf33c5cf47*
        #   @return [String]

        # @!attribute [rw] communication_body
        #   The body of an email communication to add to the support case.
        #   @return [String]

        # @!attribute [rw] cc_email_addresses
        #   The email addresses in the CC line of an email to be added to the
        #   support case.
        #   @return [Array<String>]

        # @!attribute [rw] attachment_set_id
        #   The ID of a set of one or more attachments for the communication to
        #   add to the case. Create the set by calling AddAttachmentsToSet
        #   @return [String]

      end

      # The result of the AddCommunicationToCase operation.
      class AddCommunicationToCaseResponse < Aws::Structure.new(
        :result)

        # @!attribute [rw] result
        #   True if AddCommunicationToCase succeeds. Otherwise, returns an
        #   error.
        #   @return [Boolean]

      end

      # An attachment to a case communication. The attachment consists of the
      # file name and the content of the file.
      # @note When making an API call, pass Attachment
      #   data as a hash:
      #
      #       {
      #         file_name: "FileName",
      #         data: "data",
      #       }
      class Attachment < Aws::Structure.new(
        :file_name,
        :data)

        # @!attribute [rw] file_name
        #   The name of the attachment file.
        #   @return [String]

        # @!attribute [rw] data
        #   The content of the attachment file.
        #   @return [String]

      end

      # The file name and ID of an attachment to a case communication. You can
      # use the ID to retrieve the attachment with the DescribeAttachment
      # operation.
      class AttachmentDetails < Aws::Structure.new(
        :attachment_id,
        :file_name)

        # @!attribute [rw] attachment_id
        #   The ID of the attachment.
        #   @return [String]

        # @!attribute [rw] file_name
        #   The file name of the attachment.
        #   @return [String]

      end

      # A JSON-formatted object that contains the metadata for a support case.
      # It is contained the response from a DescribeCases request.
      # **CaseDetails** contains the following fields:
      #
      # 1.  **CaseID.** The AWS Support case ID requested or returned in the
      #     call. The case ID is an alphanumeric string formatted as shown in
      #     this example: case-*12345678910-2013-c4c1d2bf33c5cf47*.
      # 2.  **CategoryCode.** The category of problem for the AWS Support
      #     case. Corresponds to the CategoryCode values returned by a call to
      #     DescribeServices.
      # 3.  **DisplayId.** The identifier for the case on pages in the AWS
      #     Support Center.
      # 4.  **Language.** The ISO 639-1 code for the language in which AWS
      #     provides support. AWS Support currently supports English (\"en\")
      #     and Japanese (\"ja\"). Language parameters must be passed
      #     explicitly for operations that take them.
      # 5.  **RecentCommunications.** One or more Communication objects.
      #     Fields of these objects are `Attachments`, `Body`, `CaseId`,
      #     `SubmittedBy`, and `TimeCreated`.
      # 6.  **NextToken.** A resumption point for pagination.
      # 7.  **ServiceCode.** The identifier for the AWS service that
      #     corresponds to the service code defined in the call to
      #     DescribeServices.
      # 8.  <b>SeverityCode. </b>The severity code assigned to the case.
      #     Contains one of the values returned by the call to
      #     DescribeSeverityLevels.
      # 9.  **Status.** The status of the case in the AWS Support Center.
      # 10. **Subject.** The subject line of the case.
      # 11. **SubmittedBy.** The email address of the account that submitted
      #     the case.
      # 12. **TimeCreated.** The time the case was created, in ISO-8601
      #     format.
      class CaseDetails < Aws::Structure.new(
        :case_id,
        :display_id,
        :subject,
        :status,
        :service_code,
        :category_code,
        :severity_code,
        :submitted_by,
        :time_created,
        :recent_communications,
        :cc_email_addresses,
        :language)

        # @!attribute [rw] case_id
        #   The AWS Support case ID requested or returned in the call. The case
        #   ID is an alphanumeric string formatted as shown in this example:
        #   case-*12345678910-2013-c4c1d2bf33c5cf47*
        #   @return [String]

        # @!attribute [rw] display_id
        #   The ID displayed for the case in the AWS Support Center. This is a
        #   numeric string.
        #   @return [String]

        # @!attribute [rw] subject
        #   The subject line for the case in the AWS Support Center.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the case.
        #   @return [String]

        # @!attribute [rw] service_code
        #   The code for the AWS service returned by the call to
        #   DescribeServices.
        #   @return [String]

        # @!attribute [rw] category_code
        #   The category of problem for the AWS Support case.
        #   @return [String]

        # @!attribute [rw] severity_code
        #   The code for the severity level returned by the call to
        #   DescribeSeverityLevels.
        #   @return [String]

        # @!attribute [rw] submitted_by
        #   The email address of the account that submitted the case.
        #   @return [String]

        # @!attribute [rw] time_created
        #   The time that the case was case created in the AWS Support Center.
        #   @return [String]

        # @!attribute [rw] recent_communications
        #   The five most recent communications between you and AWS Support
        #   Center, including the IDs of any attachments to the communications.
        #   Also includes a `nextToken` that you can use to retrieve earlier
        #   communications.
        #   @return [Types::RecentCaseCommunications]

        # @!attribute [rw] cc_email_addresses
        #   The email addresses that receive copies of communication about the
        #   case.
        #   @return [Array<String>]

        # @!attribute [rw] language
        #   The ISO 639-1 code for the language in which AWS provides support.
        #   AWS Support currently supports English (\"en\") and Japanese
        #   (\"ja\"). Language parameters must be passed explicitly for
        #   operations that take them.
        #   @return [String]

      end

      # A JSON-formatted name/value pair that represents the category name and
      # category code of the problem, selected from the DescribeServices
      # response for each AWS service.
      class Category < Aws::Structure.new(
        :code,
        :name)

        # @!attribute [rw] code
        #   The category code for the support case.
        #   @return [String]

        # @!attribute [rw] name
        #   The category name for the support case.
        #   @return [String]

      end

      # A communication associated with an AWS Support case. The communication
      # consists of the case ID, the message body, attachment information, the
      # account email address, and the date and time of the communication.
      class Communication < Aws::Structure.new(
        :case_id,
        :body,
        :submitted_by,
        :time_created,
        :attachment_set)

        # @!attribute [rw] case_id
        #   The AWS Support case ID requested or returned in the call. The case
        #   ID is an alphanumeric string formatted as shown in this example:
        #   case-*12345678910-2013-c4c1d2bf33c5cf47*
        #   @return [String]

        # @!attribute [rw] body
        #   The text of the communication between the customer and AWS Support.
        #   @return [String]

        # @!attribute [rw] submitted_by
        #   The email address of the account that submitted the AWS Support
        #   case.
        #   @return [String]

        # @!attribute [rw] time_created
        #   The time the communication was created.
        #   @return [String]

        # @!attribute [rw] attachment_set
        #   Information about the attachments to the case communication.
        #   @return [Array<Types::AttachmentDetails>]

      end

      # @note When making an API call, pass CreateCaseRequest
      #   data as a hash:
      #
      #       {
      #         subject: "Subject", # required
      #         service_code: "ServiceCode",
      #         severity_code: "SeverityCode",
      #         category_code: "CategoryCode",
      #         communication_body: "CommunicationBody", # required
      #         cc_email_addresses: ["CcEmailAddress"],
      #         language: "Language",
      #         issue_type: "IssueType",
      #         attachment_set_id: "AttachmentSetId",
      #       }
      class CreateCaseRequest < Aws::Structure.new(
        :subject,
        :service_code,
        :severity_code,
        :category_code,
        :communication_body,
        :cc_email_addresses,
        :language,
        :issue_type,
        :attachment_set_id)

        # @!attribute [rw] subject
        #   The title of the AWS Support case.
        #   @return [String]

        # @!attribute [rw] service_code
        #   The code for the AWS service returned by the call to
        #   DescribeServices.
        #   @return [String]

        # @!attribute [rw] severity_code
        #   The code for the severity level returned by the call to
        #   DescribeSeverityLevels.
        #
        #   <note markdown="1">The availability of severity levels depends on each customer\'s
        #   support subscription. In other words, your subscription may not
        #   necessarily require the urgent level of response time.
        #
        #   </note>
        #   @return [String]

        # @!attribute [rw] category_code
        #   The category of problem for the AWS Support case.
        #   @return [String]

        # @!attribute [rw] communication_body
        #   The communication body text when you create an AWS Support case by
        #   calling CreateCase.
        #   @return [String]

        # @!attribute [rw] cc_email_addresses
        #   A list of email addresses that AWS Support copies on case
        #   correspondence.
        #   @return [Array<String>]

        # @!attribute [rw] language
        #   The ISO 639-1 code for the language in which AWS provides support.
        #   AWS Support currently supports English (\"en\") and Japanese
        #   (\"ja\"). Language parameters must be passed explicitly for
        #   operations that take them.
        #   @return [String]

        # @!attribute [rw] issue_type
        #   The type of issue for the case. You can specify either
        #   \"customer-service\" or \"technical.\" If you do not indicate a
        #   value, the default is \"technical.\"
        #   @return [String]

        # @!attribute [rw] attachment_set_id
        #   The ID of a set of one or more attachments for the case. Create the
        #   set by using AddAttachmentsToSet.
        #   @return [String]

      end

      # The AWS Support case ID returned by a successful completion of the
      # CreateCase operation.
      class CreateCaseResponse < Aws::Structure.new(
        :case_id)

        # @!attribute [rw] case_id
        #   The AWS Support case ID requested or returned in the call. The case
        #   ID is an alphanumeric string formatted as shown in this example:
        #   case-*12345678910-2013-c4c1d2bf33c5cf47*
        #   @return [String]

      end

      # @note When making an API call, pass DescribeAttachmentRequest
      #   data as a hash:
      #
      #       {
      #         attachment_id: "AttachmentId", # required
      #       }
      class DescribeAttachmentRequest < Aws::Structure.new(
        :attachment_id)

        # @!attribute [rw] attachment_id
        #   The ID of the attachment to return. Attachment IDs are returned by
        #   the DescribeCommunications operation.
        #   @return [String]

      end

      # The content and file name of the attachment returned by the
      # DescribeAttachment operation.
      class DescribeAttachmentResponse < Aws::Structure.new(
        :attachment)

        # @!attribute [rw] attachment
        #   The attachment content and file name.
        #   @return [Types::Attachment]

      end

      # @note When making an API call, pass DescribeCasesRequest
      #   data as a hash:
      #
      #       {
      #         case_id_list: ["CaseId"],
      #         display_id: "DisplayId",
      #         after_time: "AfterTime",
      #         before_time: "BeforeTime",
      #         include_resolved_cases: false,
      #         next_token: "NextToken",
      #         max_results: 1,
      #         language: "Language",
      #         include_communications: false,
      #       }
      class DescribeCasesRequest < Aws::Structure.new(
        :case_id_list,
        :display_id,
        :after_time,
        :before_time,
        :include_resolved_cases,
        :next_token,
        :max_results,
        :language,
        :include_communications)

        # @!attribute [rw] case_id_list
        #   A list of ID numbers of the support cases you want returned. The
        #   maximum number of cases is 100.
        #   @return [Array<String>]

        # @!attribute [rw] display_id
        #   The ID displayed for a case in the AWS Support Center user
        #   interface.
        #   @return [String]

        # @!attribute [rw] after_time
        #   The start date for a filtered date search on support case
        #   communications. Case communications are available for 12 months
        #   after creation.
        #   @return [String]

        # @!attribute [rw] before_time
        #   The end date for a filtered date search on support case
        #   communications. Case communications are available for 12 months
        #   after creation.
        #   @return [String]

        # @!attribute [rw] include_resolved_cases
        #   Specifies whether resolved support cases should be included in the
        #   DescribeCases results. The default is *false*.
        #   @return [Boolean]

        # @!attribute [rw] next_token
        #   A resumption point for pagination.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results to return before paginating.
        #   @return [Integer]

        # @!attribute [rw] language
        #   The ISO 639-1 code for the language in which AWS provides support.
        #   AWS Support currently supports English (\"en\") and Japanese
        #   (\"ja\"). Language parameters must be passed explicitly for
        #   operations that take them.
        #   @return [String]

        # @!attribute [rw] include_communications
        #   Specifies whether communications should be included in the
        #   DescribeCases results. The default is *true*.
        #   @return [Boolean]

      end

      # Returns an array of CaseDetails objects and a `NextToken` that defines
      # a point for pagination in the result set.
      class DescribeCasesResponse < Aws::Structure.new(
        :cases,
        :next_token)

        # @!attribute [rw] cases
        #   The details for the cases that match the request.
        #   @return [Array<Types::CaseDetails>]

        # @!attribute [rw] next_token
        #   A resumption point for pagination.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeCommunicationsRequest
      #   data as a hash:
      #
      #       {
      #         case_id: "CaseId", # required
      #         before_time: "BeforeTime",
      #         after_time: "AfterTime",
      #         next_token: "NextToken",
      #         max_results: 1,
      #       }
      class DescribeCommunicationsRequest < Aws::Structure.new(
        :case_id,
        :before_time,
        :after_time,
        :next_token,
        :max_results)

        # @!attribute [rw] case_id
        #   The AWS Support case ID requested or returned in the call. The case
        #   ID is an alphanumeric string formatted as shown in this example:
        #   case-*12345678910-2013-c4c1d2bf33c5cf47*
        #   @return [String]

        # @!attribute [rw] before_time
        #   The end date for a filtered date search on support case
        #   communications. Case communications are available for 12 months
        #   after creation.
        #   @return [String]

        # @!attribute [rw] after_time
        #   The start date for a filtered date search on support case
        #   communications. Case communications are available for 12 months
        #   after creation.
        #   @return [String]

        # @!attribute [rw] next_token
        #   A resumption point for pagination.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results to return before paginating.
        #   @return [Integer]

      end

      # The communications returned by the DescribeCommunications operation.
      class DescribeCommunicationsResponse < Aws::Structure.new(
        :communications,
        :next_token)

        # @!attribute [rw] communications
        #   The communications for the case.
        #   @return [Array<Types::Communication>]

        # @!attribute [rw] next_token
        #   A resumption point for pagination.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeServicesRequest
      #   data as a hash:
      #
      #       {
      #         service_code_list: ["ServiceCode"],
      #         language: "Language",
      #       }
      class DescribeServicesRequest < Aws::Structure.new(
        :service_code_list,
        :language)

        # @!attribute [rw] service_code_list
        #   A JSON-formatted list of service codes available for AWS services.
        #   @return [Array<String>]

        # @!attribute [rw] language
        #   The ISO 639-1 code for the language in which AWS provides support.
        #   AWS Support currently supports English (\"en\") and Japanese
        #   (\"ja\"). Language parameters must be passed explicitly for
        #   operations that take them.
        #   @return [String]

      end

      # The list of AWS services returned by the DescribeServices operation.
      class DescribeServicesResponse < Aws::Structure.new(
        :services)

        # @!attribute [rw] services
        #   A JSON-formatted list of AWS services.
        #   @return [Array<Types::Service>]

      end

      # @note When making an API call, pass DescribeSeverityLevelsRequest
      #   data as a hash:
      #
      #       {
      #         language: "Language",
      #       }
      class DescribeSeverityLevelsRequest < Aws::Structure.new(
        :language)

        # @!attribute [rw] language
        #   The ISO 639-1 code for the language in which AWS provides support.
        #   AWS Support currently supports English (\"en\") and Japanese
        #   (\"ja\"). Language parameters must be passed explicitly for
        #   operations that take them.
        #   @return [String]

      end

      # The list of severity levels returned by the DescribeSeverityLevels
      # operation.
      class DescribeSeverityLevelsResponse < Aws::Structure.new(
        :severity_levels)

        # @!attribute [rw] severity_levels
        #   The available severity levels for the support case. Available
        #   severity levels are defined by your service level agreement with
        #   AWS.
        #   @return [Array<Types::SeverityLevel>]

      end

      # @note When making an API call, pass DescribeTrustedAdvisorCheckRefreshStatusesRequest
      #   data as a hash:
      #
      #       {
      #         check_ids: ["String"], # required
      #       }
      class DescribeTrustedAdvisorCheckRefreshStatusesRequest < Aws::Structure.new(
        :check_ids)

        # @!attribute [rw] check_ids
        #   The IDs of the Trusted Advisor checks.
        #   @return [Array<String>]

      end

      # The statuses of the Trusted Advisor checks returned by the
      # DescribeTrustedAdvisorCheckRefreshStatuses operation.
      class DescribeTrustedAdvisorCheckRefreshStatusesResponse < Aws::Structure.new(
        :statuses)

        # @!attribute [rw] statuses
        #   The refresh status of the specified Trusted Advisor checks.
        #   @return [Array<Types::TrustedAdvisorCheckRefreshStatus>]

      end

      # @note When making an API call, pass DescribeTrustedAdvisorCheckResultRequest
      #   data as a hash:
      #
      #       {
      #         check_id: "String", # required
      #         language: "String",
      #       }
      class DescribeTrustedAdvisorCheckResultRequest < Aws::Structure.new(
        :check_id,
        :language)

        # @!attribute [rw] check_id
        #   The unique identifier for the Trusted Advisor check.
        #   @return [String]

        # @!attribute [rw] language
        #   The ISO 639-1 code for the language in which AWS provides support.
        #   AWS Support currently supports English (\"en\") and Japanese
        #   (\"ja\"). Language parameters must be passed explicitly for
        #   operations that take them.
        #   @return [String]

      end

      # The result of the Trusted Advisor check returned by the
      # DescribeTrustedAdvisorCheckResult operation.
      class DescribeTrustedAdvisorCheckResultResponse < Aws::Structure.new(
        :result)

        # @!attribute [rw] result
        #   The detailed results of the Trusted Advisor check.
        #   @return [Types::TrustedAdvisorCheckResult]

      end

      # @note When making an API call, pass DescribeTrustedAdvisorCheckSummariesRequest
      #   data as a hash:
      #
      #       {
      #         check_ids: ["String"], # required
      #       }
      class DescribeTrustedAdvisorCheckSummariesRequest < Aws::Structure.new(
        :check_ids)

        # @!attribute [rw] check_ids
        #   The IDs of the Trusted Advisor checks.
        #   @return [Array<String>]

      end

      # The summaries of the Trusted Advisor checks returned by the
      # DescribeTrustedAdvisorCheckSummaries operation.
      class DescribeTrustedAdvisorCheckSummariesResponse < Aws::Structure.new(
        :summaries)

        # @!attribute [rw] summaries
        #   The summary information for the requested Trusted Advisor checks.
        #   @return [Array<Types::TrustedAdvisorCheckSummary>]

      end

      # @note When making an API call, pass DescribeTrustedAdvisorChecksRequest
      #   data as a hash:
      #
      #       {
      #         language: "String", # required
      #       }
      class DescribeTrustedAdvisorChecksRequest < Aws::Structure.new(
        :language)

        # @!attribute [rw] language
        #   The ISO 639-1 code for the language in which AWS provides support.
        #   AWS Support currently supports English (\"en\") and Japanese
        #   (\"ja\"). Language parameters must be passed explicitly for
        #   operations that take them.
        #   @return [String]

      end

      # Information about the Trusted Advisor checks returned by the
      # DescribeTrustedAdvisorChecks operation.
      class DescribeTrustedAdvisorChecksResponse < Aws::Structure.new(
        :checks)

        # @!attribute [rw] checks
        #   Information about all available Trusted Advisor checks.
        #   @return [Array<Types::TrustedAdvisorCheckDescription>]

      end

      # The five most recent communications associated with the case.
      class RecentCaseCommunications < Aws::Structure.new(
        :communications,
        :next_token)

        # @!attribute [rw] communications
        #   The five most recent communications associated with the case.
        #   @return [Array<Types::Communication>]

        # @!attribute [rw] next_token
        #   A resumption point for pagination.
        #   @return [String]

      end

      # @note When making an API call, pass RefreshTrustedAdvisorCheckRequest
      #   data as a hash:
      #
      #       {
      #         check_id: "String", # required
      #       }
      class RefreshTrustedAdvisorCheckRequest < Aws::Structure.new(
        :check_id)

        # @!attribute [rw] check_id
        #   The unique identifier for the Trusted Advisor check.
        #   @return [String]

      end

      # The current refresh status of a Trusted Advisor check.
      class RefreshTrustedAdvisorCheckResponse < Aws::Structure.new(
        :status)

        # @!attribute [rw] status
        #   The current refresh status for a check, including the amount of time
        #   until the check is eligible for refresh.
        #   @return [Types::TrustedAdvisorCheckRefreshStatus]

      end

      # @note When making an API call, pass ResolveCaseRequest
      #   data as a hash:
      #
      #       {
      #         case_id: "CaseId",
      #       }
      class ResolveCaseRequest < Aws::Structure.new(
        :case_id)

        # @!attribute [rw] case_id
        #   The AWS Support case ID requested or returned in the call. The case
        #   ID is an alphanumeric string formatted as shown in this example:
        #   case-*12345678910-2013-c4c1d2bf33c5cf47*
        #   @return [String]

      end

      # The status of the case returned by the ResolveCase operation.
      class ResolveCaseResponse < Aws::Structure.new(
        :initial_case_status,
        :final_case_status)

        # @!attribute [rw] initial_case_status
        #   The status of the case when the ResolveCase request was sent.
        #   @return [String]

        # @!attribute [rw] final_case_status
        #   The status of the case after the ResolveCase request was processed.
        #   @return [String]

      end

      # Information about an AWS service returned by the DescribeServices
      # operation.
      class Service < Aws::Structure.new(
        :code,
        :name,
        :categories)

        # @!attribute [rw] code
        #   The code for an AWS service returned by the DescribeServices
        #   response. The `Name` element contains the corresponding friendly
        #   name.
        #   @return [String]

        # @!attribute [rw] name
        #   The friendly name for an AWS service. The `Code` element contains
        #   the corresponding code.
        #   @return [String]

        # @!attribute [rw] categories
        #   A list of categories that describe the type of support issue a case
        #   describes. Categories consist of a category name and a category
        #   code. Category names and codes are passed to AWS Support when you
        #   call CreateCase.
        #   @return [Array<Types::Category>]

      end

      # A code and name pair that represent a severity level that can be
      # applied to a support case.
      class SeverityLevel < Aws::Structure.new(
        :code,
        :name)

        # @!attribute [rw] code
        #   One of four values: \"low,\" \"medium,\" \"high,\" and \"urgent\".
        #   These values correspond to response times returned to the caller in
        #   `SeverityLevel.name`.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the severity level that corresponds to the severity
        #   level code.
        #   @return [String]

      end

      # The container for summary information that relates to the category of
      # the Trusted Advisor check.
      class TrustedAdvisorCategorySpecificSummary < Aws::Structure.new(
        :cost_optimizing)

        # @!attribute [rw] cost_optimizing
        #   The summary information about cost savings for a Trusted Advisor
        #   check that is in the Cost Optimizing category.
        #   @return [Types::TrustedAdvisorCostOptimizingSummary]

      end

      # The description and metadata for a Trusted Advisor check.
      class TrustedAdvisorCheckDescription < Aws::Structure.new(
        :id,
        :name,
        :description,
        :category,
        :metadata)

        # @!attribute [rw] id
        #   The unique identifier for the Trusted Advisor check.
        #   @return [String]

        # @!attribute [rw] name
        #   The display name for the Trusted Advisor check.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the Trusted Advisor check, which includes the
        #   alert criteria and recommended actions (contains HTML markup).
        #   @return [String]

        # @!attribute [rw] category
        #   The category of the Trusted Advisor check.
        #   @return [String]

        # @!attribute [rw] metadata
        #   The column headings for the data returned by the Trusted Advisor
        #   check. The order of the headings corresponds to the order of the
        #   data in the **Metadata** element of the TrustedAdvisorResourceDetail
        #   for the check. **Metadata** contains all the data that is shown in
        #   the Excel download, even in those cases where the UI shows just
        #   summary data.
        #   @return [Array<String>]

      end

      # The refresh status of a Trusted Advisor check.
      class TrustedAdvisorCheckRefreshStatus < Aws::Structure.new(
        :check_id,
        :status,
        :millis_until_next_refreshable)

        # @!attribute [rw] check_id
        #   The unique identifier for the Trusted Advisor check.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the Trusted Advisor check for which a refresh has been
        #   requested: \"none\", \"enqueued\", \"processing\", \"success\", or
        #   \"abandoned\".
        #   @return [String]

        # @!attribute [rw] millis_until_next_refreshable
        #   The amount of time, in milliseconds, until the Trusted Advisor check
        #   is eligible for refresh.
        #   @return [Integer]

      end

      # The results of a Trusted Advisor check returned by
      # DescribeTrustedAdvisorCheckResult.
      class TrustedAdvisorCheckResult < Aws::Structure.new(
        :check_id,
        :timestamp,
        :status,
        :resources_summary,
        :category_specific_summary,
        :flagged_resources)

        # @!attribute [rw] check_id
        #   The unique identifier for the Trusted Advisor check.
        #   @return [String]

        # @!attribute [rw] timestamp
        #   The time of the last refresh of the check.
        #   @return [String]

        # @!attribute [rw] status
        #   The alert status of the check: \"ok\" (green), \"warning\" (yellow),
        #   \"error\" (red), or \"not\_available\".
        #   @return [String]

        # @!attribute [rw] resources_summary
        #   Details about AWS resources that were analyzed in a call to Trusted
        #   Advisor DescribeTrustedAdvisorCheckSummaries.
        #   @return [Types::TrustedAdvisorResourcesSummary]

        # @!attribute [rw] category_specific_summary
        #   Summary information that relates to the category of the check. Cost
        #   Optimizing is the only category that is currently supported.
        #   @return [Types::TrustedAdvisorCategorySpecificSummary]

        # @!attribute [rw] flagged_resources
        #   The details about each resource listed in the check result.
        #   @return [Array<Types::TrustedAdvisorResourceDetail>]

      end

      # A summary of a Trusted Advisor check result, including the alert
      # status, last refresh, and number of resources examined.
      class TrustedAdvisorCheckSummary < Aws::Structure.new(
        :check_id,
        :timestamp,
        :status,
        :has_flagged_resources,
        :resources_summary,
        :category_specific_summary)

        # @!attribute [rw] check_id
        #   The unique identifier for the Trusted Advisor check.
        #   @return [String]

        # @!attribute [rw] timestamp
        #   The time of the last refresh of the check.
        #   @return [String]

        # @!attribute [rw] status
        #   The alert status of the check: \"ok\" (green), \"warning\" (yellow),
        #   \"error\" (red), or \"not\_available\".
        #   @return [String]

        # @!attribute [rw] has_flagged_resources
        #   Specifies whether the Trusted Advisor check has flagged resources.
        #   @return [Boolean]

        # @!attribute [rw] resources_summary
        #   Details about AWS resources that were analyzed in a call to Trusted
        #   Advisor DescribeTrustedAdvisorCheckSummaries.
        #   @return [Types::TrustedAdvisorResourcesSummary]

        # @!attribute [rw] category_specific_summary
        #   Summary information that relates to the category of the check. Cost
        #   Optimizing is the only category that is currently supported.
        #   @return [Types::TrustedAdvisorCategorySpecificSummary]

      end

      # The estimated cost savings that might be realized if the recommended
      # actions are taken.
      class TrustedAdvisorCostOptimizingSummary < Aws::Structure.new(
        :estimated_monthly_savings,
        :estimated_percent_monthly_savings)

        # @!attribute [rw] estimated_monthly_savings
        #   The estimated monthly savings that might be realized if the
        #   recommended actions are taken.
        #   @return [Float]

        # @!attribute [rw] estimated_percent_monthly_savings
        #   The estimated percentage of savings that might be realized if the
        #   recommended actions are taken.
        #   @return [Float]

      end

      # Contains information about a resource identified by a Trusted Advisor
      # check.
      class TrustedAdvisorResourceDetail < Aws::Structure.new(
        :status,
        :region,
        :resource_id,
        :is_suppressed,
        :metadata)

        # @!attribute [rw] status
        #   The status code for the resource identified in the Trusted Advisor
        #   check.
        #   @return [String]

        # @!attribute [rw] region
        #   The AWS region in which the identified resource is located.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The unique identifier for the identified resource.
        #   @return [String]

        # @!attribute [rw] is_suppressed
        #   Specifies whether the AWS resource was ignored by Trusted Advisor
        #   because it was marked as suppressed by the user.
        #   @return [Boolean]

        # @!attribute [rw] metadata
        #   Additional information about the identified resource. The exact
        #   metadata and its order can be obtained by inspecting the
        #   TrustedAdvisorCheckDescription object returned by the call to
        #   DescribeTrustedAdvisorChecks. **Metadata** contains all the data
        #   that is shown in the Excel download, even in those cases where the
        #   UI shows just summary data.
        #   @return [Array<String>]

      end

      # Details about AWS resources that were analyzed in a call to Trusted
      # Advisor DescribeTrustedAdvisorCheckSummaries.
      class TrustedAdvisorResourcesSummary < Aws::Structure.new(
        :resources_processed,
        :resources_flagged,
        :resources_ignored,
        :resources_suppressed)

        # @!attribute [rw] resources_processed
        #   The number of AWS resources that were analyzed by the Trusted
        #   Advisor check.
        #   @return [Integer]

        # @!attribute [rw] resources_flagged
        #   The number of AWS resources that were flagged (listed) by the
        #   Trusted Advisor check.
        #   @return [Integer]

        # @!attribute [rw] resources_ignored
        #   The number of AWS resources ignored by Trusted Advisor because
        #   information was unavailable.
        #   @return [Integer]

        # @!attribute [rw] resources_suppressed
        #   The number of AWS resources ignored by Trusted Advisor because they
        #   were marked as suppressed by the user.
        #   @return [Integer]

      end

    end
  end
end
